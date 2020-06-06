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
	<24.033625, 34.798668, 35.514519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255352, 35.114136, 35.408138>,  <24.388388, 35.303417, 35.344311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255352, 35.114136, 35.408138>,  <24.033625, 34.798668, 35.514519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255352, 35.114136, 35.408138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659849, -0.221666, 0.717958,
		0.507278, -0.573468, -0.643276,
		0.554319, 0.788669, -0.265956,
		24.421648, 35.350735, 35.328350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788055, 34.688881, 35.215736>,  <24.033625, 34.798668, 35.514519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788055, 34.688881, 35.215736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722433, 35.013531, 35.440006>,  <24.683060, 35.208321, 35.574570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722433, 35.013531, 35.440006>,  <24.788055, 34.688881, 35.215736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722433, 35.013531, 35.440006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621299, -0.356460, 0.697799,
		0.766208, 0.462822, -0.445782,
		-0.164054, 0.811623, 0.560673,
		24.673218, 35.257019, 35.608208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368710, 35.014820, 35.375175>,  <24.788055, 34.688881, 35.215736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368710, 35.014820, 35.375175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126181, 35.139835, 35.667667>,  <24.980663, 35.214844, 35.843163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126181, 35.139835, 35.667667>,  <25.368710, 35.014820, 35.375175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126181, 35.139835, 35.667667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684798, -0.262244, 0.679912,
		0.404257, 0.912989, -0.055020,
		-0.606324, 0.312537, 0.731227,
		24.944284, 35.233597, 35.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842196, 35.266357, 35.998531>,  <25.368710, 35.014820, 35.375175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842196, 35.266357, 35.998531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492935, 35.247444, 36.192593>,  <25.283379, 35.236095, 36.309029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492935, 35.247444, 36.192593>,  <25.842196, 35.266357, 35.998531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492935, 35.247444, 36.192593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486925, -0.130703, 0.863609,
		0.022579, 0.990293, 0.137146,
		-0.873152, -0.047281, 0.485150,
		25.230989, 35.233261, 36.338139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978079, 35.565807, 36.547386>,  <25.842196, 35.266357, 35.998531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978079, 35.565807, 36.547386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685175, 35.312145, 36.646702>,  <25.509434, 35.159946, 36.706291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685175, 35.312145, 36.646702>,  <25.978079, 35.565807, 36.547386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685175, 35.312145, 36.646702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435551, -0.155812, 0.886577,
		-0.523540, 0.757345, 0.390300,
		-0.732258, -0.634154, 0.248289,
		25.465498, 35.121899, 36.721188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665262, 35.717342, 37.132179>,  <25.978079, 35.565807, 36.547386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665262, 35.717342, 37.132179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579187, 35.327717, 37.104221>,  <25.527542, 35.093941, 37.087448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579187, 35.327717, 37.104221>,  <25.665262, 35.717342, 37.132179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579187, 35.327717, 37.104221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355314, -0.144755, 0.923470,
		-0.909640, 0.173887, 0.377250,
		-0.215188, -0.974068, -0.069890,
		25.514631, 35.035496, 37.083256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321112, 35.490921, 37.751377>,  <25.665262, 35.717342, 37.132179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321112, 35.490921, 37.751377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442572, 35.139206, 37.604603>,  <25.515448, 34.928177, 37.516537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442572, 35.139206, 37.604603>,  <25.321112, 35.490921, 37.751377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442572, 35.139206, 37.604603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279890, -0.285810, 0.916501,
		-0.910746, -0.380998, 0.159318,
		0.303650, -0.879291, -0.366938,
		25.533667, 34.875420, 37.494522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053064, 34.794956, 38.222355>,  <25.321112, 35.490921, 37.751377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053064, 34.794956, 38.222355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400761, 34.776878, 38.025429>,  <25.609379, 34.766029, 37.907272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400761, 34.776878, 38.025429>,  <25.053064, 34.794956, 38.222355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400761, 34.776878, 38.025429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458323, -0.299703, 0.836730,
		-0.185367, -0.952961, -0.239800,
		0.869240, -0.045197, -0.492320,
		25.661533, 34.763317, 37.877731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341444, 34.150291, 38.428852>,  <25.053064, 34.794956, 38.222355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341444, 34.150291, 38.428852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633612, 34.400322, 38.318745>,  <25.808912, 34.550339, 38.252678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633612, 34.400322, 38.318745>,  <25.341444, 34.150291, 38.428852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633612, 34.400322, 38.318745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528084, -0.261247, 0.808008,
		0.433150, -0.735550, -0.520910,
		0.730417, 0.625073, -0.275273,
		25.852737, 34.587845, 38.236164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015453, 33.821911, 38.646011>,  <25.341444, 34.150291, 38.428852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015453, 33.821911, 38.646011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082127, 34.212841, 38.593781>,  <26.122131, 34.447399, 38.562443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082127, 34.212841, 38.593781>,  <26.015453, 33.821911, 38.646011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082127, 34.212841, 38.593781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374192, 0.059826, 0.925419,
		0.912248, -0.203114, -0.355736,
		0.166684, 0.977326, -0.130580,
		26.132132, 34.506039, 38.554607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662834, 33.924965, 38.905880>,  <26.015453, 33.821911, 38.646011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662834, 33.924965, 38.905880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483311, 34.282352, 38.912594>,  <26.375597, 34.496784, 38.916622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483311, 34.282352, 38.912594>,  <26.662834, 33.924965, 38.905880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483311, 34.282352, 38.912594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339618, 0.153165, 0.928008,
		0.826576, 0.422200, -0.372181,
		-0.448811, 0.893469, 0.016785,
		26.348667, 34.550392, 38.917629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108706, 34.464771, 39.007206>,  <26.662834, 33.924965, 38.905880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108706, 34.464771, 39.007206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763954, 34.606388, 39.152431>,  <26.557102, 34.691357, 39.239567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763954, 34.606388, 39.152431>,  <27.108706, 34.464771, 39.007206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763954, 34.606388, 39.152431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469320, 0.285673, 0.835542,
		0.192097, 0.890531, -0.412374,
		-0.861880, 0.354041, 0.363067,
		26.505390, 34.712601, 39.261353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021835, 35.222530, 39.303394>,  <27.108706, 34.464771, 39.007206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021835, 35.222530, 39.303394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778721, 34.972622, 39.499454>,  <26.632853, 34.822678, 39.617092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778721, 34.972622, 39.499454>,  <27.021835, 35.222530, 39.303394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778721, 34.972622, 39.499454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302043, 0.388970, 0.870329,
		-0.734414, 0.677023, -0.047702,
		-0.607787, -0.624774, 0.490155,
		26.596384, 34.785191, 39.646500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403189, 35.594143, 39.575253>,  <27.021835, 35.222530, 39.303394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403189, 35.594143, 39.575253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588989, 35.287609, 39.752777>,  <26.700470, 35.103687, 39.859291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588989, 35.287609, 39.752777>,  <26.403189, 35.594143, 39.575253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588989, 35.287609, 39.752777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070855, 0.531707, 0.843959,
		-0.882733, -0.360574, 0.301277,
		0.464501, -0.766338, 0.443807,
		26.728340, 35.057709, 39.885918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975983, 35.438641, 40.115917>,  <26.403189, 35.594143, 39.575253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975983, 35.438641, 40.115917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367750, 35.367115, 40.153370>,  <26.602810, 35.324200, 40.175842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367750, 35.367115, 40.153370>,  <25.975983, 35.438641, 40.115917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367750, 35.367115, 40.153370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013242, 0.519801, 0.854185,
		-0.201414, -0.835363, 0.511469,
		0.979417, -0.178818, 0.093633,
		26.661575, 35.313469, 40.181461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557714, 35.569862, 39.411716>,  <25.975983, 35.438641, 40.115917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557714, 35.569862, 39.411716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885283, 35.345657, 39.362415>,  <26.081823, 35.211132, 39.332832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885283, 35.345657, 39.362415>,  <25.557714, 35.569862, 39.411716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885283, 35.345657, 39.362415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131351, 0.026015, -0.990995,
		0.558675, 0.827735, -0.052320,
		0.818920, -0.560516, -0.123257,
		26.130959, 35.177502, 39.325439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878202, 35.818272, 38.841290>,  <25.557714, 35.569862, 39.411716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878202, 35.818272, 38.841290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019156, 35.444675, 38.864941>,  <26.103727, 35.220520, 38.879131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019156, 35.444675, 38.864941>,  <25.878202, 35.818272, 38.841290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019156, 35.444675, 38.864941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003151, -0.064363, -0.997921,
		0.935851, 0.351465, -0.025624,
		0.352383, -0.933986, 0.059127,
		26.124870, 35.164478, 38.882679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446215, 35.745213, 38.406395>,  <25.878202, 35.818272, 38.841290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446215, 35.745213, 38.406395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341000, 35.362385, 38.455109>,  <26.277870, 35.132687, 38.484337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341000, 35.362385, 38.455109>,  <26.446215, 35.745213, 38.406395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341000, 35.362385, 38.455109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041583, -0.137361, -0.989648,
		0.963889, -0.255250, 0.075929,
		-0.263038, -0.957068, 0.121787,
		26.262089, 35.075264, 38.491646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824507, 35.413536, 37.841812>,  <26.446215, 35.745213, 38.406395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824507, 35.413536, 37.841812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532307, 35.178204, 37.980511>,  <26.356987, 35.037003, 38.063728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532307, 35.178204, 37.980511>,  <26.824507, 35.413536, 37.841812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532307, 35.178204, 37.980511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308511, -0.168677, -0.936146,
		0.609256, -0.790828, -0.058290,
		-0.730498, -0.588336, 0.346746,
		26.313158, 35.001701, 38.084534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753334, 34.895073, 37.193592>,  <26.824507, 35.413536, 37.841812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753334, 34.895073, 37.193592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424932, 34.834213, 37.413700>,  <26.227892, 34.797695, 37.545765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424932, 34.834213, 37.413700>,  <26.753334, 34.895073, 37.193592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424932, 34.834213, 37.413700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520029, -0.198500, -0.830764,
		0.235633, -0.968219, 0.083846,
		-0.821004, -0.152153, 0.550274,
		26.178631, 34.788567, 37.578781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529343, 34.256447, 37.486263>,  <26.753334, 34.895073, 37.193592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529343, 34.256447, 37.486263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165821, 34.339588, 37.630966>,  <25.947708, 34.389473, 37.717789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165821, 34.339588, 37.630966>,  <26.529343, 34.256447, 37.486263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165821, 34.339588, 37.630966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365654, 0.020773, -0.930519,
		-0.200931, -0.977938, 0.057125,
		-0.908804, 0.207859, 0.361761,
		25.893181, 34.401947, 37.739494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017353, 33.782703, 37.045212>,  <26.529343, 34.256447, 37.486263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017353, 33.782703, 37.045212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869299, 34.124386, 37.191269>,  <25.780466, 34.329395, 37.278904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869299, 34.124386, 37.191269>,  <26.017353, 33.782703, 37.045212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869299, 34.124386, 37.191269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545270, 0.118456, -0.829849,
		-0.752117, -0.506255, 0.421930,
		-0.370135, 0.854210, 0.365139,
		25.758259, 34.380650, 37.300812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364153, 33.767693, 36.843380>,  <26.017353, 33.782703, 37.045212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364153, 33.767693, 36.843380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421003, 34.158890, 36.904476>,  <25.455114, 34.393608, 36.941135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421003, 34.158890, 36.904476>,  <25.364153, 33.767693, 36.843380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421003, 34.158890, 36.904476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663709, 0.208637, -0.718305,
		-0.734364, 0.000716, 0.678755,
		0.142128, 0.977993, 0.152740,
		25.463642, 34.452286, 36.950298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800203, 34.030479, 36.713032>,  <25.364153, 33.767693, 36.843380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800203, 34.030479, 36.713032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000303, 34.376579, 36.699833>,  <25.120363, 34.584240, 36.691914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000303, 34.376579, 36.699833>,  <24.800203, 34.030479, 36.713032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000303, 34.376579, 36.699833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540460, 0.282245, -0.792616,
		-0.676500, 0.414340, 0.608827,
		0.500250, 0.865252, -0.032996,
		25.150379, 34.636154, 36.689934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.330465, 34.543571, 36.962658>,  <24.800203, 34.030479, 36.713032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.330465, 34.543571, 36.962658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668936, 34.748009, 36.902287>,  <24.872017, 34.870670, 36.866066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668936, 34.748009, 36.902287>,  <24.330465, 34.543571, 36.962658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668936, 34.748009, 36.902287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404668, 0.431965, -0.806008,
		-0.346747, 0.743098, 0.572339,
		0.846174, 0.511088, -0.150926,
		24.922789, 34.901337, 36.857010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.145508, 35.207355, 37.032825>,  <24.330465, 34.543571, 36.962658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.145508, 35.207355, 37.032825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466946, 35.197666, 36.794952>,  <24.659809, 35.191853, 36.652229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466946, 35.197666, 36.794952>,  <24.145508, 35.207355, 37.032825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466946, 35.197666, 36.794952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511192, 0.483648, -0.710470,
		0.304827, 0.874927, 0.376274,
		0.803594, -0.024222, -0.594685,
		24.708023, 35.190399, 36.616547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.162088, 35.767090, 36.794338>,  <24.145508, 35.207355, 37.032825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.162088, 35.767090, 36.794338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402658, 35.584549, 36.532032>,  <24.547001, 35.475025, 36.374649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402658, 35.584549, 36.532032>,  <24.162088, 35.767090, 36.794338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402658, 35.584549, 36.532032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457710, 0.475940, -0.750988,
		0.654820, 0.751815, 0.077366,
		0.601425, -0.456351, -0.655768,
		24.583086, 35.447643, 36.335300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455355, 36.294956, 36.387939>,  <24.162088, 35.767090, 36.794338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455355, 36.294956, 36.387939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414446, 35.950172, 36.189316>,  <24.389900, 35.743301, 36.070141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414446, 35.950172, 36.189316>,  <24.455355, 36.294956, 36.387939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414446, 35.950172, 36.189316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670193, 0.428589, -0.605931,
		0.735106, 0.270821, -0.621510,
		-0.102274, -0.861955, -0.496561,
		24.383764, 35.691586, 36.040348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.222895, 36.509678, 35.759918>,  <24.455355, 36.294956, 36.387939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.222895, 36.509678, 35.759918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199329, 36.114304, 35.704041>,  <24.185190, 35.877079, 35.670513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199329, 36.114304, 35.704041>,  <24.222895, 36.509678, 35.759918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.199329, 36.114304, 35.704041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681935, 0.142046, -0.717488,
		0.729037, 0.052993, -0.682420,
		-0.058913, -0.988440, -0.139695,
		24.181656, 35.817772, 35.662132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.395699, 36.232094, 35.059479>,  <24.222895, 36.509678, 35.759918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.395699, 36.232094, 35.059479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115419, 36.020283, 35.250736>,  <23.947252, 35.893196, 35.365490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115419, 36.020283, 35.250736>,  <24.395699, 36.232094, 35.059479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115419, 36.020283, 35.250736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631531, 0.148521, -0.760993,
		0.331951, -0.835191, -0.438481,
		-0.700698, -0.529526, 0.478147,
		23.905210, 35.861423, 35.394180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774054, 35.738503, 34.930931>,  <24.395699, 36.232094, 35.059479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774054, 35.738503, 34.930931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111080, 35.551582, 34.823811>,  <25.313295, 35.439430, 34.759541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111080, 35.551582, 34.823811>,  <24.774054, 35.738503, 34.930931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111080, 35.551582, 34.823811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291581, 0.022288, -0.956286,
		0.452838, 0.883820, -0.117476,
		0.842566, -0.467297, -0.267798,
		25.363850, 35.411392, 34.743469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198143, 36.056858, 34.417446>,  <24.774054, 35.738503, 34.930931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198143, 36.056858, 34.417446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288118, 35.670246, 34.368080>,  <25.342104, 35.438278, 34.338463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288118, 35.670246, 34.368080>,  <25.198143, 36.056858, 34.417446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288118, 35.670246, 34.368080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040575, 0.135840, -0.989900,
		0.973528, 0.217657, 0.069772,
		0.224936, -0.966526, -0.123413,
		25.355598, 35.380287, 34.331055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694010, 36.053371, 33.900494>,  <25.198143, 36.056858, 34.417446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694010, 36.053371, 33.900494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571390, 35.672646, 33.903957>,  <25.497818, 35.444210, 33.906036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571390, 35.672646, 33.903957>,  <25.694010, 36.053371, 33.900494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571390, 35.672646, 33.903957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014836, -0.013870, -0.999794,
		0.951740, -0.306357, 0.018373,
		-0.306548, -0.951816, 0.008656,
		25.479425, 35.387100, 33.906555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054157, 35.729927, 33.353008>,  <25.694010, 36.053371, 33.900494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054157, 35.729927, 33.353008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724133, 35.506065, 33.384140>,  <25.526117, 35.371746, 33.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724133, 35.506065, 33.384140>,  <26.054157, 35.729927, 33.353008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724133, 35.506065, 33.384140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092872, -0.001546, -0.995677,
		0.557358, -0.828723, -0.050701,
		-0.825062, -0.559657, 0.077827,
		25.476614, 35.338169, 33.407490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066872, 35.340134, 32.733856>,  <26.054157, 35.729927, 33.353008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066872, 35.340134, 32.733856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690619, 35.343975, 32.869572>,  <25.464867, 35.346279, 32.951000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690619, 35.343975, 32.869572>,  <26.066872, 35.340134, 32.733856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690619, 35.343975, 32.869572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338832, 0.032408, -0.940289,
		-0.020035, -0.999429, -0.027227,
		-0.940634, 0.009613, 0.339288,
		25.408428, 35.346855, 32.971359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701992, 34.869789, 32.312737>,  <26.066872, 35.340134, 32.733856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701992, 34.869789, 32.312737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455862, 35.159248, 32.437771>,  <25.308184, 35.332924, 32.512791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455862, 35.159248, 32.437771>,  <25.701992, 34.869789, 32.312737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455862, 35.159248, 32.437771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333101, 0.120696, -0.935134,
		-0.714434, -0.679536, 0.166780,
		-0.615328, 0.723647, 0.312583,
		25.271263, 35.376343, 32.531548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037432, 34.333195, 32.874596>,  <25.701992, 34.869789, 32.312737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037432, 34.333195, 32.874596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687241, 34.508854, 32.955284>,  <25.477125, 34.614250, 33.003696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687241, 34.508854, 32.955284>,  <26.037432, 34.333195, 32.874596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687241, 34.508854, 32.955284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291352, -0.146616, -0.945314,
		-0.385555, -0.886372, 0.256305,
		-0.875478, 0.439146, 0.201717,
		25.424597, 34.640598, 33.015800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560169, 33.883408, 32.631901>,  <26.037432, 34.333195, 32.874596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560169, 33.883408, 32.631901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374113, 34.237350, 32.642323>,  <25.262480, 34.449715, 32.648575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374113, 34.237350, 32.642323>,  <25.560169, 33.883408, 32.631901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374113, 34.237350, 32.642323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371100, -0.168188, -0.913235,
		-0.803698, -0.434449, 0.406600,
		-0.465139, 0.884855, 0.026051,
		25.234571, 34.502808, 32.650139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776588, 33.738022, 32.407806>,  <25.560169, 33.883408, 32.631901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776588, 33.738022, 32.407806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884239, 34.117481, 32.341312>,  <24.948830, 34.345158, 32.301414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884239, 34.117481, 32.341312>,  <24.776588, 33.738022, 32.407806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884239, 34.117481, 32.341312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317307, -0.075634, -0.945302,
		-0.909333, 0.307155, 0.280658,
		0.269127, 0.948649, -0.166239,
		24.964977, 34.402077, 32.291439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478497, 33.908543, 31.775000>,  <24.776588, 33.738022, 32.407806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478497, 33.908543, 31.775000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750967, 34.201267, 31.783579>,  <24.914450, 34.376900, 31.788727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750967, 34.201267, 31.783579>,  <24.478497, 33.908543, 31.775000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750967, 34.201267, 31.783579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106402, 0.127940, -0.986058,
		-0.724348, 0.669395, 0.165015,
		0.681174, 0.731807, 0.021448,
		24.955318, 34.420811, 31.790012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732624, 34.091473, 31.178347>,  <24.478497, 33.908543, 31.775000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732624, 34.091473, 31.178347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634974, 34.471230, 31.099291>,  <24.576384, 34.699081, 31.051857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634974, 34.471230, 31.099291>,  <24.732624, 34.091473, 31.178347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634974, 34.471230, 31.099291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390206, 0.282748, 0.876238,
		0.887774, 0.136792, -0.439483,
		-0.244125, 0.949390, -0.197639,
		24.561735, 34.756046, 31.039999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399639, 34.642078, 31.174997>,  <24.732624, 34.091473, 31.178347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399639, 34.642078, 31.174997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036478, 34.751060, 31.302423>,  <24.818581, 34.816448, 31.378880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036478, 34.751060, 31.302423>,  <25.399639, 34.642078, 31.174997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036478, 34.751060, 31.302423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381588, 0.222617, 0.897125,
		0.173506, 0.936062, -0.306078,
		-0.907902, 0.272452, 0.318564,
		24.764107, 34.832798, 31.397993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470329, 35.241570, 31.572922>,  <25.399639, 34.642078, 31.174997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470329, 35.241570, 31.572922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141159, 35.054787, 31.702377>,  <24.943657, 34.942715, 31.780050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141159, 35.054787, 31.702377>,  <25.470329, 35.241570, 31.572922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141159, 35.054787, 31.702377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303732, 0.119821, 0.945193,
		-0.480146, 0.876123, 0.043227,
		-0.822926, -0.466960, 0.323638,
		24.894281, 34.914700, 31.799469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174404, 35.681961, 32.074669>,  <25.470329, 35.241570, 31.572922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174404, 35.681961, 32.074669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092386, 35.294979, 32.133968>,  <25.043175, 35.062790, 32.169548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092386, 35.294979, 32.133968>,  <25.174404, 35.681961, 32.074669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092386, 35.294979, 32.133968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201658, 0.106462, 0.973653,
		-0.957753, 0.229540, 0.173266,
		-0.205046, -0.967459, 0.148253,
		25.030872, 35.004742, 32.178444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595451, 35.598652, 32.581657>,  <25.174404, 35.681961, 32.074669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595451, 35.598652, 32.581657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822588, 35.270752, 32.611488>,  <24.958870, 35.074013, 32.629387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822588, 35.270752, 32.611488>,  <24.595451, 35.598652, 32.581657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822588, 35.270752, 32.611488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011875, 0.082436, 0.996526,
		-0.823054, -0.566752, 0.037076,
		0.567840, -0.819754, 0.074579,
		24.992939, 35.024826, 32.633862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.317146, 35.344414, 33.224384>,  <24.595451, 35.598652, 32.581657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.317146, 35.344414, 33.224384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668966, 35.168159, 33.152569>,  <24.880058, 35.062408, 33.109482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668966, 35.168159, 33.152569>,  <24.317146, 35.344414, 33.224384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668966, 35.168159, 33.152569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163438, -0.074583, 0.983730,
		-0.446854, -0.894584, 0.006417,
		0.879551, -0.440633, -0.179537,
		24.932831, 35.035969, 33.098709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357012, 34.655052, 33.514771>,  <24.317146, 35.344414, 33.224384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357012, 34.655052, 33.514771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694315, 34.869381, 33.497738>,  <24.896696, 34.997978, 33.487518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694315, 34.869381, 33.497738>,  <24.357012, 34.655052, 33.514771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694315, 34.869381, 33.497738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073830, -0.036988, 0.996585,
		0.532417, -0.843521, -0.070750,
		0.843257, 0.535822, -0.042584,
		24.947292, 35.030128, 33.484962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987917, 34.200146, 33.768482>,  <24.357012, 34.655052, 33.514771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987917, 34.200146, 33.768482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115084, 34.576622, 33.814243>,  <25.191383, 34.802509, 33.841702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115084, 34.576622, 33.814243>,  <24.987917, 34.200146, 33.768482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115084, 34.576622, 33.814243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170332, -0.175396, 0.969651,
		0.932693, -0.288782, -0.216077,
		0.317917, 0.941192, 0.114402,
		25.210459, 34.858978, 33.848564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570581, 34.129192, 34.242393>,  <24.987917, 34.200146, 33.768482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570581, 34.129192, 34.242393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485970, 34.519863, 34.257160>,  <25.435204, 34.754265, 34.266022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485970, 34.519863, 34.257160>,  <25.570581, 34.129192, 34.242393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485970, 34.519863, 34.257160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226802, 0.012306, 0.973863,
		0.950693, 0.214374, -0.224115,
		-0.211529, 0.976674, 0.036921,
		25.422510, 34.812866, 34.268238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134672, 34.373493, 34.527813>,  <25.570581, 34.129192, 34.242393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134672, 34.373493, 34.527813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795561, 34.576042, 34.590874>,  <25.592094, 34.697571, 34.628708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795561, 34.576042, 34.590874>,  <26.134672, 34.373493, 34.527813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795561, 34.576042, 34.590874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190227, 0.012867, 0.981656,
		0.495057, 0.862218, -0.107235,
		-0.847781, 0.506375, 0.157647,
		25.541227, 34.727955, 34.638168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281603, 34.747215, 35.078117>,  <26.134672, 34.373493, 34.527813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281603, 34.747215, 35.078117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523314, 34.773155, 34.760464>,  <26.668339, 34.788719, 34.569874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523314, 34.773155, 34.760464>,  <26.281603, 34.747215, 35.078117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523314, 34.773155, 34.760464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789078, -0.186917, 0.585165,
		-0.110487, -0.980233, -0.164123,
		0.604276, 0.064853, -0.794132,
		26.704596, 34.792610, 34.522224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682236, 34.185509, 35.146736>,  <26.281603, 34.747215, 35.078117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682236, 34.185509, 35.146736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871824, 34.483639, 34.959187>,  <26.985577, 34.662518, 34.846657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871824, 34.483639, 34.959187>,  <26.682236, 34.185509, 35.146736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871824, 34.483639, 34.959187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799537, -0.141197, 0.583784,
		0.368905, -0.651579, -0.662838,
		0.473972, 0.745324, -0.468874,
		27.014015, 34.707237, 34.818523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280642, 34.102524, 34.733387>,  <26.682236, 34.185509, 35.146736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280642, 34.102524, 34.733387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307018, 34.471313, 34.886028>,  <27.322844, 34.692585, 34.977612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307018, 34.471313, 34.886028>,  <27.280642, 34.102524, 34.733387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307018, 34.471313, 34.886028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860948, -0.245890, 0.445317,
		0.504402, 0.299175, -0.809984,
		0.065940, 0.921972, 0.381602,
		27.326799, 34.747906, 35.000507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877840, 34.483639, 34.508430>,  <27.280642, 34.102524, 34.733387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877840, 34.483639, 34.508430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782734, 34.578892, 34.885101>,  <27.725670, 34.636044, 35.111103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782734, 34.578892, 34.885101>,  <27.877840, 34.483639, 34.508430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782734, 34.578892, 34.885101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968396, 0.133318, 0.210799,
		-0.075346, 0.962040, -0.262301,
		-0.237766, 0.238128, 0.941680,
		27.711405, 34.650330, 35.167606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237686, 35.097626, 34.734230>,  <27.877840, 34.483639, 34.508430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237686, 35.097626, 34.734230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174664, 34.852268, 35.043789>,  <28.136850, 34.705051, 35.229527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174664, 34.852268, 35.043789>,  <28.237686, 35.097626, 34.734230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174664, 34.852268, 35.043789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968243, 0.058095, 0.243168,
		-0.194118, 0.787634, 0.584765,
		-0.157555, -0.613398, 0.773899,
		28.127398, 34.668247, 35.275959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559170, 35.651001, 34.307579>,  <28.237686, 35.097626, 34.734230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559170, 35.651001, 34.307579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438734, 35.804386, 34.656818>,  <28.366472, 35.896420, 34.866364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438734, 35.804386, 34.656818>,  <28.559170, 35.651001, 34.307579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438734, 35.804386, 34.656818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846388, -0.314315, 0.429923,
		0.439288, 0.868424, -0.229923,
		-0.301087, 0.383465, 0.873099,
		28.348408, 35.919426, 34.918747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033052, 36.143913, 34.656235>,  <28.559170, 35.651001, 34.307579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033052, 36.143913, 34.656235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844500, 35.916298, 34.925751>,  <28.731367, 35.779728, 35.087463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844500, 35.916298, 34.925751>,  <29.033052, 36.143913, 34.656235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844500, 35.916298, 34.925751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869293, -0.170917, 0.463807,
		-0.148760, 0.804355, 0.575224,
		-0.471381, -0.569034, 0.673795,
		28.703085, 35.745586, 35.127888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386641, 36.900093, 34.555447>,  <29.033052, 36.143913, 34.656235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386641, 36.900093, 34.555447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012917, 36.974880, 34.434052>,  <28.788681, 37.019753, 34.361214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012917, 36.974880, 34.434052>,  <29.386641, 36.900093, 34.555447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012917, 36.974880, 34.434052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143440, 0.976630, 0.160061,
		0.326321, 0.106015, -0.939295,
		-0.934312, 0.186964, -0.303488,
		28.732622, 37.030968, 34.343006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478283, 37.481266, 34.162663>,  <29.386641, 36.900093, 34.555447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478283, 37.481266, 34.162663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084545, 37.471485, 34.232483>,  <28.848303, 37.465614, 34.274376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084545, 37.471485, 34.232483>,  <29.478283, 37.481266, 34.162663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084545, 37.471485, 34.232483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015423, 0.974577, 0.223520,
		-0.175578, 0.222713, -0.958943,
		-0.984345, -0.024456, 0.174549,
		28.789242, 37.464149, 34.284847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643473, 38.161919, 33.823174>,  <29.478283, 37.481266, 34.162663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643473, 38.161919, 33.823174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480772, 38.462440, 33.615288>,  <29.383152, 38.642754, 33.490559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480772, 38.462440, 33.615288>,  <29.643473, 38.161919, 33.823174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480772, 38.462440, 33.615288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487449, -0.302655, -0.819020,
		-0.772624, -0.586470, -0.243116,
		-0.406751, 0.751301, -0.519712,
		29.358747, 38.687832, 33.459373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214844, 37.734203, 33.901989>,  <29.643473, 38.161919, 33.823174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214844, 37.734203, 33.901989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593372, 37.738491, 33.772766>,  <30.820490, 37.741066, 33.695232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593372, 37.738491, 33.772766>,  <30.214844, 37.734203, 33.901989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593372, 37.738491, 33.772766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089801, -0.951382, -0.294632,
		-0.310506, 0.307827, -0.899349,
		0.946320, 0.010723, -0.323053,
		30.877268, 37.741707, 33.675850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273438, 37.195995, 33.384399>,  <30.214844, 37.734203, 33.901989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273438, 37.195995, 33.384399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637522, 37.295738, 33.516663>,  <30.855972, 37.355583, 33.596020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637522, 37.295738, 33.516663>,  <30.273438, 37.195995, 33.384399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637522, 37.295738, 33.516663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341009, -0.904326, -0.256724,
		0.235008, 0.346431, -0.908161,
		0.910211, 0.249359, 0.330660,
		30.910585, 37.370544, 33.615860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801487, 36.932983, 32.970905>,  <30.273438, 37.195995, 33.384399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801487, 36.932983, 32.970905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011173, 37.025440, 33.298752>,  <31.136984, 37.080914, 33.495461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011173, 37.025440, 33.298752>,  <30.801487, 36.932983, 32.970905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011173, 37.025440, 33.298752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662941, -0.714875, -0.222404,
		0.534517, 0.659946, -0.527980,
		0.524214, 0.231141, 0.819618,
		31.168438, 37.094784, 33.544636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430773, 37.186733, 32.876690>,  <30.801487, 36.932983, 32.970905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430773, 37.186733, 32.876690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452015, 36.964161, 33.208370>,  <31.464760, 36.830620, 33.407379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452015, 36.964161, 33.208370>,  <31.430773, 37.186733, 32.876690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452015, 36.964161, 33.208370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753336, -0.522744, -0.399029,
		0.655489, 0.645854, 0.391417,
		0.053104, -0.556427, 0.829198,
		31.467947, 36.797234, 33.457130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209877, 37.284355, 33.230507>,  <31.430773, 37.186733, 32.876690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209877, 37.284355, 33.230507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014835, 36.937225, 33.192287>,  <31.897810, 36.728947, 33.169357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014835, 36.937225, 33.192287>,  <32.209877, 37.284355, 33.230507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014835, 36.937225, 33.192287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804481, -0.404081, -0.435349,
		0.339197, -0.289143, 0.895177,
		-0.487603, -0.867822, -0.095547,
		31.868555, 36.676880, 33.163624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677635, 36.762657, 33.171104>,  <32.209877, 37.284355, 33.230507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677635, 36.762657, 33.171104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351276, 36.603451, 33.003345>,  <32.155460, 36.507927, 32.902691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351276, 36.603451, 33.003345>,  <32.677635, 36.762657, 33.171104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351276, 36.603451, 33.003345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563182, -0.382860, -0.732287,
		0.130892, -0.833669, 0.536530,
		-0.815901, -0.398014, -0.419394,
		32.106506, 36.484047, 32.877529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832539, 35.974361, 33.110138>,  <32.677635, 36.762657, 33.171104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832539, 35.974361, 33.110138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593655, 36.158756, 32.847588>,  <32.450325, 36.269394, 32.690056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593655, 36.158756, 32.847588>,  <32.832539, 35.974361, 33.110138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593655, 36.158756, 32.847588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469887, -0.462132, -0.752091,
		-0.650040, -0.757577, 0.059375,
		-0.597206, 0.460989, -0.656380,
		32.414494, 36.297054, 32.650673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514435, 35.551804, 32.578896>,  <32.832539, 35.974361, 33.110138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514435, 35.551804, 32.578896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552876, 35.923096, 32.435150>,  <32.575939, 36.145870, 32.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552876, 35.923096, 32.435150>,  <32.514435, 35.551804, 32.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552876, 35.923096, 32.435150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487367, -0.358680, -0.796130,
		-0.867893, -0.098633, -0.486861,
		0.096103, 0.928235, -0.359366,
		32.581707, 36.201565, 32.327339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379219, 35.526360, 31.864355>,  <32.514435, 35.551804, 32.578896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379219, 35.526360, 31.864355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563660, 35.879929, 31.895515>,  <32.674324, 36.092072, 31.914211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563660, 35.879929, 31.895515>,  <32.379219, 35.526360, 31.864355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563660, 35.879929, 31.895515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517458, -0.196535, -0.832833,
		-0.720849, 0.424330, -0.548015,
		0.461100, 0.883922, 0.077901,
		32.701988, 36.145103, 31.918886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170940, 35.886784, 31.325878>,  <32.379219, 35.526360, 31.864355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170940, 35.886784, 31.325878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527710, 36.027374, 31.439676>,  <32.741772, 36.111729, 31.507956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527710, 36.027374, 31.439676>,  <32.170940, 35.886784, 31.325878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527710, 36.027374, 31.439676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385012, -0.260321, -0.885437,
		-0.237150, 0.899276, -0.367509,
		0.891923, 0.351477, 0.284496,
		32.795288, 36.132816, 31.525024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345211, 36.286407, 30.773565>,  <32.170940, 35.886784, 31.325878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345211, 36.286407, 30.773565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698341, 36.211159, 30.945715>,  <32.910221, 36.166008, 31.049004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698341, 36.211159, 30.945715>,  <32.345211, 36.286407, 30.773565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698341, 36.211159, 30.945715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426323, -0.063613, -0.902331,
		0.197129, 0.980083, 0.024043,
		0.882830, -0.188126, 0.430372,
		32.963192, 36.154720, 31.074827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778378, 36.423809, 30.270315>,  <32.345211, 36.286407, 30.773565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778378, 36.423809, 30.270315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039024, 36.249454, 30.518637>,  <33.195412, 36.144840, 30.667629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039024, 36.249454, 30.518637>,  <32.778378, 36.423809, 30.270315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039024, 36.249454, 30.518637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629434, -0.146033, -0.763208,
		0.423333, 0.888073, 0.179207,
		0.651615, -0.435890, 0.620805,
		33.234509, 36.118687, 30.704878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537533, 36.679527, 30.187920>,  <32.778378, 36.423809, 30.270315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537533, 36.679527, 30.187920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568291, 36.307888, 30.332621>,  <33.586746, 36.084904, 30.419441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568291, 36.307888, 30.332621>,  <33.537533, 36.679527, 30.187920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568291, 36.307888, 30.332621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676011, -0.218113, -0.703872,
		0.732869, 0.298670, 0.611309,
		0.076891, -0.929098, 0.361752,
		33.591358, 36.029160, 30.441147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231102, 36.484978, 30.275276>,  <33.537533, 36.679527, 30.187920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231102, 36.484978, 30.275276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079838, 36.114689, 30.272732>,  <33.989079, 35.892517, 30.271206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079838, 36.114689, 30.272732>,  <34.231102, 36.484978, 30.275276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079838, 36.114689, 30.272732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730229, -0.294061, -0.616680,
		0.569002, -0.237847, 0.787189,
		-0.378157, -0.925720, -0.006362,
		33.966393, 35.836971, 30.270823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862858, 36.081413, 30.306553>,  <34.231102, 36.484978, 30.275276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862858, 36.081413, 30.306553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565472, 35.858467, 30.158712>,  <34.387039, 35.724701, 30.070009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565472, 35.858467, 30.158712>,  <34.862858, 36.081413, 30.306553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565472, 35.858467, 30.158712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567830, -0.234128, -0.789147,
		0.353307, -0.796575, 0.490554,
		-0.743467, -0.557362, -0.369600,
		34.342430, 35.691257, 30.047832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288944, 35.567898, 29.961178>,  <34.862858, 36.081413, 30.306553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288944, 35.567898, 29.961178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916336, 35.531445, 29.820345>,  <34.692772, 35.509575, 29.735846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916336, 35.531445, 29.820345>,  <35.288944, 35.567898, 29.961178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916336, 35.531445, 29.820345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362956, -0.294137, -0.884164,
		-0.022986, -0.951409, 0.307071,
		-0.931522, -0.091130, -0.352081,
		34.636879, 35.504105, 29.714720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201366, 34.865452, 29.727558>,  <35.288944, 35.567898, 29.961178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201366, 34.865452, 29.727558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931389, 35.089523, 29.535452>,  <34.769402, 35.223965, 29.420189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931389, 35.089523, 29.535452>,  <35.201366, 34.865452, 29.727558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931389, 35.089523, 29.535452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341117, -0.340268, -0.876274,
		-0.654286, -0.755263, 0.038577,
		-0.674944, 0.560175, -0.480266,
		34.728905, 35.257576, 29.391373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052223, 34.486900, 29.221298>,  <35.201366, 34.865452, 29.727558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052223, 34.486900, 29.221298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904137, 34.829098, 29.076485>,  <34.815285, 35.034416, 28.989595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904137, 34.829098, 29.076485>,  <35.052223, 34.486900, 29.221298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904137, 34.829098, 29.076485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259922, -0.278764, -0.924517,
		-0.891843, -0.436369, -0.119161,
		-0.370213, 0.855496, -0.362035,
		34.793072, 35.085747, 28.967875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644745, 34.338329, 28.683731>,  <35.052223, 34.486900, 29.221298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644745, 34.338329, 28.683731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744957, 34.719505, 28.615458>,  <34.805084, 34.948212, 28.574493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744957, 34.719505, 28.615458>,  <34.644745, 34.338329, 28.683731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744957, 34.719505, 28.615458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163255, -0.215368, -0.962790,
		-0.954244, 0.213343, -0.209529,
		0.250530, 0.952944, -0.170684,
		34.820114, 35.005390, 28.564253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349056, 34.475166, 28.054253>,  <34.644745, 34.338329, 28.683731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349056, 34.475166, 28.054253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640106, 34.747520, 28.087622>,  <34.814735, 34.910934, 28.107643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640106, 34.747520, 28.087622>,  <34.349056, 34.475166, 28.054253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640106, 34.747520, 28.087622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264908, -0.166723, -0.949751,
		-0.632764, 0.713159, -0.301684,
		0.727622, 0.680887, 0.083425,
		34.858391, 34.951786, 28.112650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183186, 34.915440, 27.481106>,  <34.349056, 34.475166, 28.054253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183186, 34.915440, 27.481106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561024, 34.989040, 27.589836>,  <34.787727, 35.033203, 27.655073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561024, 34.989040, 27.589836>,  <34.183186, 34.915440, 27.481106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561024, 34.989040, 27.589836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229948, 0.220021, -0.948006,
		-0.234246, 0.957984, 0.165518,
		0.944592, 0.184006, 0.271825,
		34.844402, 35.044243, 27.671383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368103, 35.432392, 27.045105>,  <34.183186, 34.915440, 27.481106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368103, 35.432392, 27.045105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725788, 35.284168, 27.145557>,  <34.940399, 35.195232, 27.205830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725788, 35.284168, 27.145557>,  <34.368103, 35.432392, 27.045105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725788, 35.284168, 27.145557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239301, -0.078402, -0.967775,
		0.378311, 0.925492, 0.018568,
		0.894212, -0.370563, 0.251131,
		34.994053, 35.173000, 27.220898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886658, 35.810734, 26.655128>,  <34.368103, 35.432392, 27.045105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886658, 35.810734, 26.655128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033932, 35.452950, 26.756618>,  <35.122295, 35.238277, 26.817513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033932, 35.452950, 26.756618>,  <34.886658, 35.810734, 26.655128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033932, 35.452950, 26.756618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282739, -0.152256, -0.947036,
		0.885719, 0.420424, 0.196840,
		0.368186, -0.894462, 0.253726,
		35.144386, 35.184612, 26.832737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602875, 35.792290, 26.309891>,  <34.886658, 35.810734, 26.655128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602875, 35.792290, 26.309891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483543, 35.421837, 26.402216>,  <35.411945, 35.199566, 26.457611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483543, 35.421837, 26.402216>,  <35.602875, 35.792290, 26.309891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483543, 35.421837, 26.402216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178988, -0.291822, -0.939576,
		0.937530, -0.238991, 0.252826,
		-0.298330, -0.926133, 0.230815,
		35.394043, 35.143997, 26.471460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016098, 35.377895, 25.935595>,  <35.602875, 35.792290, 26.309891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016098, 35.377895, 25.935595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707081, 35.135494, 26.011425>,  <35.521671, 34.990055, 26.056923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707081, 35.135494, 26.011425>,  <36.016098, 35.377895, 25.935595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707081, 35.135494, 26.011425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119110, -0.431575, -0.894179,
		0.623690, -0.668212, 0.405591,
		-0.772544, -0.606000, 0.189578,
		35.475319, 34.953693, 26.068298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210606, 34.789906, 25.436928>,  <36.016098, 35.377895, 25.935595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210606, 34.789906, 25.436928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835869, 34.719822, 25.558014>,  <35.611027, 34.677773, 25.630665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835869, 34.719822, 25.558014>,  <36.210606, 34.789906, 25.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835869, 34.719822, 25.558014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159950, -0.555075, -0.816276,
		0.311045, -0.813139, 0.491992,
		-0.936838, -0.175205, 0.302715,
		35.554817, 34.667259, 25.648829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001503, 34.003822, 25.509649>,  <36.210606, 34.789906, 25.436928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001503, 34.003822, 25.509649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653088, 34.199257, 25.489319>,  <35.444038, 34.316517, 25.477121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653088, 34.199257, 25.489319>,  <36.001503, 34.003822, 25.509649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653088, 34.199257, 25.489319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359625, -0.704748, -0.611556,
		-0.334614, -0.514410, 0.789568,
		-0.871036, 0.488583, -0.050824,
		35.391777, 34.345833, 25.474072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543118, 33.566193, 25.513891>,  <36.001503, 34.003822, 25.509649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543118, 33.566193, 25.513891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355976, 33.878010, 25.347313>,  <35.243690, 34.065098, 25.247366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355976, 33.878010, 25.347313>,  <35.543118, 33.566193, 25.513891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355976, 33.878010, 25.347313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205693, -0.554299, -0.806500,
		-0.859537, -0.291664, 0.419677,
		-0.467854, 0.779541, -0.416447,
		35.215618, 34.111874, 25.222380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947601, 33.318832, 25.264946>,  <35.543118, 33.566193, 25.513891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947601, 33.318832, 25.264946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991539, 33.637619, 25.027367>,  <35.017902, 33.828892, 24.884819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991539, 33.637619, 25.027367>,  <34.947601, 33.318832, 25.264946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991539, 33.637619, 25.027367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136159, -0.579864, -0.803255,
		-0.984579, 0.169102, 0.044822,
		0.109842, 0.796971, -0.593947,
		35.024490, 33.876709, 24.849182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386719, 33.331322, 24.816431>,  <34.947601, 33.318832, 25.264946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386719, 33.331322, 24.816431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639626, 33.581314, 24.633284>,  <34.791370, 33.731308, 24.523396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639626, 33.581314, 24.633284>,  <34.386719, 33.331322, 24.816431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639626, 33.581314, 24.633284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232476, -0.410707, -0.881632,
		-0.739051, 0.663868, -0.114383,
		0.632265, 0.624979, -0.457867,
		34.829304, 33.768806, 24.495924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067307, 33.546749, 24.187788>,  <34.386719, 33.331322, 24.816431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067307, 33.546749, 24.187788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460030, 33.608913, 24.144157>,  <34.695663, 33.646214, 24.117979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460030, 33.608913, 24.144157>,  <34.067307, 33.546749, 24.187788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460030, 33.608913, 24.144157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056035, -0.311728, -0.948517,
		-0.181415, 0.937375, -0.297349,
		0.981809, 0.155414, -0.109078,
		34.754574, 33.655537, 24.111435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199142, 33.913464, 23.562277>,  <34.067307, 33.546749, 24.187788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199142, 33.913464, 23.562277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548466, 33.724178, 23.608572>,  <34.758060, 33.610607, 23.636349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548466, 33.724178, 23.608572>,  <34.199142, 33.913464, 23.562277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548466, 33.724178, 23.608572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001499, -0.234966, -0.972003,
		0.487157, 0.849036, -0.204489,
		0.873313, -0.473212, 0.115738,
		34.810459, 33.582214, 23.643293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440666, 34.131374, 22.979918>,  <34.199142, 33.913464, 23.562277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440666, 34.131374, 22.979918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692802, 33.842648, 23.094212>,  <34.844086, 33.669411, 23.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692802, 33.842648, 23.094212>,  <34.440666, 34.131374, 22.979918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692802, 33.842648, 23.094212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153884, -0.244587, -0.957338,
		0.760911, 0.647423, -0.043097,
		0.630344, -0.721818, 0.285737,
		34.881905, 33.626102, 23.179934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926872, 34.083164, 22.514143>,  <34.440666, 34.131374, 22.979918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926872, 34.083164, 22.514143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962101, 33.726410, 22.691586>,  <34.983238, 33.512360, 22.798052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962101, 33.726410, 22.691586>,  <34.926872, 34.083164, 22.514143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962101, 33.726410, 22.691586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199280, -0.420558, -0.885110,
		0.975977, 0.166358, 0.140694,
		0.088075, -0.891884, 0.443606,
		34.988522, 33.458843, 22.824667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515175, 33.801411, 22.202156>,  <34.926872, 34.083164, 22.514143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515175, 33.801411, 22.202156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340012, 33.490414, 22.382711>,  <35.234913, 33.303818, 22.491045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340012, 33.490414, 22.382711>,  <35.515175, 33.801411, 22.202156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340012, 33.490414, 22.382711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295686, -0.598711, -0.744389,
		0.849004, -0.192504, 0.492071,
		-0.437906, -0.777488, 0.451387,
		35.208641, 33.257168, 22.518127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945763, 33.382256, 22.178408>,  <35.515175, 33.801411, 22.202156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945763, 33.382256, 22.178408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622986, 33.153053, 22.235697>,  <35.429321, 33.015530, 22.270069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622986, 33.153053, 22.235697>,  <35.945763, 33.382256, 22.178408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622986, 33.153053, 22.235697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201205, -0.494669, -0.845470,
		0.555308, -0.653426, 0.514459,
		-0.806939, -0.573008, 0.143221,
		35.380905, 32.981152, 22.278664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179455, 32.655594, 22.008125>,  <35.945763, 33.382256, 22.178408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179455, 32.655594, 22.008125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780457, 32.670124, 21.983858>,  <35.541058, 32.678841, 21.969297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780457, 32.670124, 21.983858>,  <36.179455, 32.655594, 22.008125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780457, 32.670124, 21.983858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039400, -0.426911, -0.903435,
		-0.058716, -0.903564, 0.424411,
		-0.997497, 0.036324, -0.060667,
		35.481209, 32.681023, 21.965658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004242, 32.070732, 21.714687>,  <36.179455, 32.655594, 22.008125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004242, 32.070732, 21.714687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699108, 32.322830, 21.656889>,  <35.516029, 32.474087, 21.622210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699108, 32.322830, 21.656889>,  <36.004242, 32.070732, 21.714687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699108, 32.322830, 21.656889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042883, -0.272290, -0.961259,
		-0.645171, -0.727085, 0.234739,
		-0.762834, 0.630242, -0.144494,
		35.470257, 32.511902, 21.613541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432453, 31.647005, 21.515057>,  <36.004242, 32.070732, 21.714687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432453, 31.647005, 21.515057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353558, 32.017063, 21.385317>,  <35.306221, 32.239098, 21.307472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353558, 32.017063, 21.385317>,  <35.432453, 31.647005, 21.515057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353558, 32.017063, 21.385317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029567, -0.336311, -0.941287,
		-0.979910, -0.176064, 0.093686,
		-0.197235, 0.925147, -0.324349,
		35.294388, 32.294605, 21.288012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033886, 31.559345, 20.944193>,  <35.432453, 31.647005, 21.515057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033886, 31.559345, 20.944193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120617, 31.939651, 20.855625>,  <35.172657, 32.167835, 20.802485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120617, 31.939651, 20.855625>,  <35.033886, 31.559345, 20.944193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120617, 31.939651, 20.855625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004926, -0.225748, -0.974173,
		-0.976197, 0.212319, -0.044265,
		0.216828, 0.950767, -0.221421,
		35.185665, 32.224880, 20.789200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578415, 31.767212, 20.366821>,  <35.033886, 31.559345, 20.944193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578415, 31.767212, 20.366821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900940, 32.003799, 20.368364>,  <35.094456, 32.145752, 20.369289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900940, 32.003799, 20.368364>,  <34.578415, 31.767212, 20.366821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900940, 32.003799, 20.368364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061056, -0.076744, -0.995180,
		-0.588324, 0.802666, -0.097993,
		0.806317, 0.591471, 0.003857,
		35.142834, 32.181240, 20.369522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492176, 32.180965, 19.785406>,  <34.578415, 31.767212, 20.366821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492176, 32.180965, 19.785406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881226, 32.201199, 19.876125>,  <35.114655, 32.213337, 19.930557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881226, 32.201199, 19.876125>,  <34.492176, 32.180965, 19.785406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881226, 32.201199, 19.876125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227910, -0.017376, -0.973527,
		-0.045301, 0.998569, -0.028429,
		0.972628, 0.050581, 0.226797,
		35.173016, 32.216373, 19.944164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792606, 32.676556, 19.315823>,  <34.492176, 32.180965, 19.785406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792606, 32.676556, 19.315823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079422, 32.427971, 19.442083>,  <35.251511, 32.278820, 19.517839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079422, 32.427971, 19.442083>,  <34.792606, 32.676556, 19.315823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079422, 32.427971, 19.442083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253579, -0.189247, -0.948622,
		0.649269, 0.760243, 0.021892,
		0.717041, -0.621462, 0.315654,
		35.294533, 32.241531, 19.536779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349586, 32.912205, 18.971813>,  <34.792606, 32.676556, 19.315823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349586, 32.912205, 18.971813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454773, 32.538101, 19.066586>,  <35.517887, 32.313641, 19.123449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454773, 32.538101, 19.066586>,  <35.349586, 32.912205, 18.971813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454773, 32.538101, 19.066586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472074, -0.089439, -0.877010,
		0.841423, 0.342475, 0.417993,
		0.262970, -0.935260, 0.236930,
		35.533665, 32.257523, 19.137665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979801, 32.824711, 18.648838>,  <35.349586, 32.912205, 18.971813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979801, 32.824711, 18.648838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892754, 32.442577, 18.728813>,  <35.840523, 32.213299, 18.776798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892754, 32.442577, 18.728813>,  <35.979801, 32.824711, 18.648838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892754, 32.442577, 18.728813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425282, -0.277193, -0.861568,
		0.878507, -0.102466, 0.466610,
		-0.217622, -0.955335, 0.199939,
		35.827465, 32.155975, 18.788795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586086, 32.501114, 18.455824>,  <35.979801, 32.824711, 18.648838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586086, 32.501114, 18.455824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286800, 32.236053, 18.442747>,  <36.107227, 32.077019, 18.434900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286800, 32.236053, 18.442747>,  <36.586086, 32.501114, 18.455824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286800, 32.236053, 18.442747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291887, -0.284527, -0.913152,
		0.595795, -0.692779, 0.406307,
		-0.748218, -0.662647, -0.032694,
		36.062336, 32.037258, 18.432940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875362, 31.948999, 18.132137>,  <36.586086, 32.501114, 18.455824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875362, 31.948999, 18.132137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490780, 31.868132, 18.057587>,  <36.260033, 31.819611, 18.012856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490780, 31.868132, 18.057587>,  <36.875362, 31.948999, 18.132137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490780, 31.868132, 18.057587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249966, -0.360194, -0.898764,
		0.114569, -0.910708, 0.396844,
		-0.961452, -0.202168, -0.186379,
		36.202343, 31.807482, 18.001673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916843, 31.469494, 17.743620>,  <36.875362, 31.948999, 18.132137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916843, 31.469494, 17.743620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533207, 31.557215, 17.672003>,  <36.303024, 31.609848, 17.629032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533207, 31.557215, 17.672003>,  <36.916843, 31.469494, 17.743620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533207, 31.557215, 17.672003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126593, -0.233458, -0.964091,
		-0.253236, -0.947312, 0.196143,
		-0.959086, 0.219312, -0.179043,
		36.245480, 31.623005, 17.618290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649239, 30.900095, 17.258982>,  <36.916843, 31.469494, 17.743620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649239, 30.900095, 17.258982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443954, 31.240540, 17.214767>,  <36.320782, 31.444807, 17.188238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443954, 31.240540, 17.214767>,  <36.649239, 30.900095, 17.258982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443954, 31.240540, 17.214767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074752, -0.172631, -0.982146,
		-0.854999, -0.495788, 0.152219,
		-0.513214, 0.851113, -0.110538,
		36.289989, 31.495872, 17.181606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137695, 30.656513, 16.738201>,  <36.649239, 30.900095, 17.258982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137695, 30.656513, 16.738201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121548, 31.055426, 16.713539>,  <36.111858, 31.294773, 16.698742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121548, 31.055426, 16.713539>,  <36.137695, 30.656513, 16.738201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121548, 31.055426, 16.713539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018052, -0.060967, -0.997976,
		-0.999022, -0.041396, -0.015542,
		-0.040365, 0.997281, -0.061655,
		36.109440, 31.354610, 16.695042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662907, 30.822285, 16.259480>,  <36.137695, 30.656513, 16.738201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662907, 30.822285, 16.259480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897724, 31.146103, 16.258299>,  <36.038616, 31.340395, 16.257591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897724, 31.146103, 16.258299>,  <35.662907, 30.822285, 16.259480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897724, 31.146103, 16.258299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118816, 0.082552, -0.989478,
		-0.800786, 0.581222, 0.144649,
		0.587048, 0.809547, -0.002952,
		36.073837, 31.388968, 16.257414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507702, 31.104753, 15.644212>,  <35.662907, 30.822285, 16.259480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507702, 31.104753, 15.644212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843033, 31.314768, 15.702922>,  <36.044231, 31.440777, 15.738148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843033, 31.314768, 15.702922>,  <35.507702, 31.104753, 15.644212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843033, 31.314768, 15.702922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230539, -0.097447, -0.968171,
		-0.494024, 0.845482, -0.202734,
		0.838327, 0.525038, 0.146775,
		36.094532, 31.472279, 15.746954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655716, 31.617413, 15.148273>,  <35.507702, 31.104753, 15.644212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655716, 31.617413, 15.148273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033241, 31.573828, 15.273069>,  <36.259758, 31.547676, 15.347947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033241, 31.573828, 15.273069>,  <35.655716, 31.617413, 15.148273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033241, 31.573828, 15.273069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325773, 0.148163, -0.933766,
		0.055521, 0.982942, 0.175336,
		0.943816, -0.108963, 0.311990,
		36.316387, 31.541140, 15.366667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015572, 32.172878, 14.870943>,  <35.655716, 31.617413, 15.148273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015572, 32.172878, 14.870943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272636, 31.872723, 14.932790>,  <36.426876, 31.692631, 14.969897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272636, 31.872723, 14.932790>,  <36.015572, 32.172878, 14.870943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272636, 31.872723, 14.932790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337003, 0.095631, -0.936634,
		0.688051, 0.654045, 0.314341,
		0.642662, -0.750386, 0.154616,
		36.465435, 31.647606, 14.979175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693024, 32.333229, 14.704184>,  <36.015572, 32.172878, 14.870943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693024, 32.333229, 14.704184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688770, 31.939407, 14.634286>,  <36.686218, 31.703114, 14.592347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688770, 31.939407, 14.634286>,  <36.693024, 32.333229, 14.704184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688770, 31.939407, 14.634286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529204, 0.142732, -0.836403,
		0.848428, -0.101371, 0.519513,
		-0.010636, -0.984556, -0.174744,
		36.685581, 31.644041, 14.581862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418629, 32.126270, 14.659060>,  <36.693024, 32.333229, 14.704184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418629, 32.126270, 14.659060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155209, 31.901657, 14.458662>,  <36.997154, 31.766890, 14.338424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155209, 31.901657, 14.458662>,  <37.418629, 32.126270, 14.659060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155209, 31.901657, 14.458662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629958, -0.047178, -0.775195,
		0.411658, -0.826111, 0.384809,
		-0.658552, -0.561529, -0.500994,
		36.957642, 31.733198, 14.308364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485420, 32.651550, 15.085345>,  <37.418629, 32.126270, 14.659060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485420, 32.651550, 15.085345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507034, 33.050964, 15.085941>,  <37.520004, 33.290615, 15.086299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507034, 33.050964, 15.085941>,  <37.485420, 32.651550, 15.085345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507034, 33.050964, 15.085941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600493, 0.031302, 0.799017,
		0.797803, -0.044069, 0.601306,
		0.054034, 0.998538, 0.001490,
		37.523243, 33.350525, 15.086389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636692, 33.073238, 15.684300>,  <37.485420, 32.651550, 15.085345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636692, 33.073238, 15.684300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364899, 33.301163, 15.499426>,  <37.201820, 33.437916, 15.388501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364899, 33.301163, 15.499426>,  <37.636692, 33.073238, 15.684300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364899, 33.301163, 15.499426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499179, 0.102629, 0.860399,
		0.537696, 0.815345, 0.214700,
		-0.679488, 0.569807, -0.462187,
		37.161053, 33.472103, 15.360770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483963, 33.655224, 16.149887>,  <37.636692, 33.073238, 15.684300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483963, 33.655224, 16.149887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164680, 33.579224, 15.921232>,  <36.973110, 33.533623, 15.784039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164680, 33.579224, 15.921232>,  <37.483963, 33.655224, 16.149887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164680, 33.579224, 15.921232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590599, 0.060016, 0.804730,
		-0.118595, 0.979947, -0.160122,
		-0.798203, -0.190005, -0.571638,
		36.925220, 33.522221, 15.749741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979946, 34.193192, 16.134203>,  <37.483963, 33.655224, 16.149887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979946, 34.193192, 16.134203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800266, 33.840370, 16.077353>,  <36.692459, 33.628677, 16.043242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800266, 33.840370, 16.077353>,  <36.979946, 34.193192, 16.134203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800266, 33.840370, 16.077353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622553, 0.194924, 0.757913,
		-0.640815, 0.428939, -0.636685,
		-0.449204, -0.882052, -0.142126,
		36.665504, 33.575756, 16.034714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160881, 34.163643, 15.974778>,  <36.979946, 34.193192, 16.134203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160881, 34.163643, 15.974778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298904, 33.838829, 16.163044>,  <36.381718, 33.643940, 16.276003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298904, 33.838829, 16.163044>,  <36.160881, 34.163643, 15.974778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298904, 33.838829, 16.163044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386528, 0.334022, 0.859666,
		-0.855294, -0.478564, -0.198617,
		0.345062, -0.812038, 0.470665,
		36.402424, 33.595219, 16.304243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610428, 33.907516, 16.234243>,  <36.160881, 34.163643, 15.974778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610428, 33.907516, 16.234243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894989, 33.761009, 16.474159>,  <36.065727, 33.673103, 16.618109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894989, 33.761009, 16.474159>,  <35.610428, 33.907516, 16.234243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894989, 33.761009, 16.474159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372067, 0.527744, 0.763579,
		-0.596210, -0.766378, 0.239164,
		0.711407, -0.366268, 0.599790,
		36.108410, 33.651131, 16.654097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322922, 33.691936, 16.820791>,  <35.610428, 33.907516, 16.234243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322922, 33.691936, 16.820791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699360, 33.762833, 16.935972>,  <35.925224, 33.805370, 17.005081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699360, 33.762833, 16.935972>,  <35.322922, 33.691936, 16.820791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699360, 33.762833, 16.935972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334265, 0.616079, 0.713241,
		-0.050986, -0.767484, 0.639038,
		0.941099, 0.177243, 0.287954,
		35.981689, 33.816006, 17.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318874, 33.699421, 17.531919>,  <35.322922, 33.691936, 16.820791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318874, 33.699421, 17.531919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683880, 33.854450, 17.479593>,  <35.902882, 33.947468, 17.448198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683880, 33.854450, 17.479593>,  <35.318874, 33.699421, 17.531919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683880, 33.854450, 17.479593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112148, 0.544588, 0.831172,
		0.393378, -0.743783, 0.540408,
		0.912511, 0.387570, -0.130815,
		35.957634, 33.970722, 17.440348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705894, 33.594730, 18.221512>,  <35.318874, 33.699421, 17.531919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705894, 33.594730, 18.221512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843960, 33.903557, 18.008053>,  <35.926800, 34.088852, 17.879978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843960, 33.903557, 18.008053>,  <35.705894, 33.594730, 18.221512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843960, 33.903557, 18.008053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158161, 0.608309, 0.777782,
		0.925121, -0.184058, 0.332075,
		0.345161, 0.772064, -0.533648,
		35.947510, 34.135178, 17.847958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269268, 33.896175, 18.642849>,  <35.705894, 33.594730, 18.221512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269268, 33.896175, 18.642849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153736, 34.161911, 18.367100>,  <36.084415, 34.321350, 18.201651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153736, 34.161911, 18.367100>,  <36.269268, 33.896175, 18.642849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153736, 34.161911, 18.367100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019948, 0.715728, 0.698094,
		0.957172, 0.215384, -0.193472,
		-0.288832, 0.664337, -0.689372,
		36.067085, 34.361214, 18.160288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755020, 34.480717, 18.701153>,  <36.269268, 33.896175, 18.642849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755020, 34.480717, 18.701153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410183, 34.603493, 18.539864>,  <36.203281, 34.677158, 18.443090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410183, 34.603493, 18.539864>,  <36.755020, 34.480717, 18.701153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410183, 34.603493, 18.539864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159032, 0.591630, 0.790368,
		0.481153, 0.745495, -0.461226,
		-0.862091, 0.306938, -0.403223,
		36.151554, 34.695576, 18.418898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702148, 35.195168, 18.928635>,  <36.755020, 34.480717, 18.701153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702148, 35.195168, 18.928635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341194, 35.161812, 18.759520>,  <36.124622, 35.141800, 18.658051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341194, 35.161812, 18.759520>,  <36.702148, 35.195168, 18.928635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341194, 35.161812, 18.759520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388455, 0.582141, 0.714293,
		0.186561, 0.808801, -0.557707,
		-0.902385, -0.083385, -0.422787,
		36.070480, 35.136795, 18.632683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306995, 35.898407, 18.788069>,  <36.702148, 35.195168, 18.928635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306995, 35.898407, 18.788069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038963, 35.604172, 18.827864>,  <35.878143, 35.427631, 18.851742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038963, 35.604172, 18.827864>,  <36.306995, 35.898407, 18.788069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038963, 35.604172, 18.827864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483609, 0.534308, 0.693280,
		-0.563128, 0.416440, -0.713768,
		-0.670082, -0.735590, 0.099489,
		35.837940, 35.383495, 18.857710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700256, 36.246536, 18.890120>,  <36.306995, 35.898407, 18.788069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700256, 36.246536, 18.890120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639645, 35.877686, 19.032515>,  <35.603275, 35.656376, 19.117952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639645, 35.877686, 19.032515>,  <35.700256, 36.246536, 18.890120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639645, 35.877686, 19.032515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393194, 0.386660, 0.834202,
		-0.906883, -0.013564, -0.421165,
		-0.151532, -0.922123, 0.355989,
		35.594185, 35.601048, 19.139311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027763, 36.286629, 19.114569>,  <35.700256, 36.246536, 18.890120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027763, 36.286629, 19.114569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183079, 35.982208, 19.322430>,  <35.276268, 35.799557, 19.447147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183079, 35.982208, 19.322430>,  <35.027763, 36.286629, 19.114569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183079, 35.982208, 19.322430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396795, 0.370876, 0.839646,
		-0.831737, -0.532220, -0.157974,
		0.388288, -0.761047, 0.519654,
		35.299564, 35.753895, 19.478325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434399, 35.938107, 19.466772>,  <35.027763, 36.286629, 19.114569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434399, 35.938107, 19.466772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760258, 35.815918, 19.663963>,  <34.955772, 35.742603, 19.782278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760258, 35.815918, 19.663963>,  <34.434399, 35.938107, 19.466772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760258, 35.815918, 19.663963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417870, 0.280266, 0.864197,
		-0.402153, -0.910021, 0.100672,
		0.814652, -0.305471, 0.492980,
		35.004654, 35.724277, 19.811857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205238, 35.522320, 19.980854>,  <34.434399, 35.938107, 19.466772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205238, 35.522320, 19.980854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570797, 35.607174, 20.119297>,  <34.790131, 35.658089, 20.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570797, 35.607174, 20.119297>,  <34.205238, 35.522320, 19.980854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570797, 35.607174, 20.119297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366530, 0.064724, 0.928152,
		0.174496, -0.975094, 0.136907,
		0.913897, 0.212139, 0.346107,
		34.844967, 35.670815, 20.223129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351433, 35.024796, 20.477133>,  <34.205238, 35.522320, 19.980854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351433, 35.024796, 20.477133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580418, 35.342949, 20.556784>,  <34.717808, 35.533840, 20.604574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580418, 35.342949, 20.556784>,  <34.351433, 35.024796, 20.477133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580418, 35.342949, 20.556784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442004, 0.094811, 0.891989,
		0.690592, -0.598647, 0.405837,
		0.572464, 0.795382, 0.199129,
		34.752155, 35.581562, 20.616522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596798, 34.862213, 21.169720>,  <34.351433, 35.024796, 20.477133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596798, 34.862213, 21.169720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674259, 35.248020, 21.097940>,  <34.720734, 35.479504, 21.054873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674259, 35.248020, 21.097940>,  <34.596798, 34.862213, 21.169720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674259, 35.248020, 21.097940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190112, 0.216337, 0.957630,
		0.962475, -0.151328, 0.225260,
		0.193649, 0.964519, -0.179450,
		34.732353, 35.537376, 21.044106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049530, 34.928841, 21.694616>,  <34.596798, 34.862213, 21.169720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049530, 34.928841, 21.694616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896080, 35.284828, 21.595997>,  <34.804008, 35.498421, 21.536825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896080, 35.284828, 21.595997>,  <35.049530, 34.928841, 21.694616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896080, 35.284828, 21.595997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245028, 0.159316, 0.956337,
		0.890390, 0.427286, 0.156951,
		-0.383624, 0.889969, -0.246550,
		34.780994, 35.551819, 21.522032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475464, 35.420719, 21.979334>,  <35.049530, 34.928841, 21.694616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475464, 35.420719, 21.979334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135475, 35.628365, 21.943426>,  <34.931480, 35.752953, 21.921881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135475, 35.628365, 21.943426>,  <35.475464, 35.420719, 21.979334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135475, 35.628365, 21.943426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180143, 0.446523, 0.876450,
		0.495066, 0.728790, -0.473049,
		-0.849976, 0.519117, -0.089772,
		34.880482, 35.784100, 21.916494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621410, 36.026535, 22.399445>,  <35.475464, 35.420719, 21.979334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621410, 36.026535, 22.399445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228939, 36.013958, 22.323231>,  <34.993458, 36.006413, 22.277502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228939, 36.013958, 22.323231>,  <35.621410, 36.026535, 22.399445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228939, 36.013958, 22.323231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177803, 0.532081, 0.827814,
		0.075349, 0.846110, -0.527656,
		-0.981177, -0.031444, -0.190533,
		34.934586, 36.004524, 22.266071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312836, 36.768829, 22.504103>,  <35.621410, 36.026535, 22.399445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312836, 36.768829, 22.504103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006748, 36.513817, 22.539862>,  <34.823097, 36.360809, 22.561317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006748, 36.513817, 22.539862>,  <35.312836, 36.768829, 22.504103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006748, 36.513817, 22.539862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396718, 0.576352, 0.714446,
		-0.507006, 0.511242, -0.693957,
		-0.765219, -0.637534, 0.089395,
		34.777184, 36.322556, 22.566681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823971, 37.192657, 22.513859>,  <35.312836, 36.768829, 22.504103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823971, 37.192657, 22.513859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677135, 36.851341, 22.661993>,  <34.589035, 36.646553, 22.750874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677135, 36.851341, 22.661993>,  <34.823971, 37.192657, 22.513859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677135, 36.851341, 22.661993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312011, 0.488015, 0.815163,
		-0.876298, 0.183685, -0.445378,
		-0.367084, -0.853289, 0.370335,
		34.567009, 36.595356, 22.773094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070553, 37.238354, 22.778408>,  <34.823971, 37.192657, 22.513859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070553, 37.238354, 22.778408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249134, 36.938347, 22.973614>,  <34.356281, 36.758343, 23.090736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249134, 36.938347, 22.973614>,  <34.070553, 37.238354, 22.778408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249134, 36.938347, 22.973614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230723, 0.430453, 0.872626,
		-0.864551, -0.502182, 0.019131,
		0.446452, -0.750016, 0.488013,
		34.383068, 36.713341, 23.120018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651829, 37.285172, 23.361391>,  <34.070553, 37.238354, 22.778408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651829, 37.285172, 23.361391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960983, 37.051155, 23.459675>,  <34.146477, 36.910748, 23.518646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960983, 37.051155, 23.459675>,  <33.651829, 37.285172, 23.361391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960983, 37.051155, 23.459675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164181, 0.189663, 0.968025,
		-0.612932, -0.788518, 0.050537,
		0.772890, -0.585037, 0.245711,
		34.192852, 36.875645, 23.533388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419525, 36.855568, 23.900507>,  <33.651829, 37.285172, 23.361391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419525, 36.855568, 23.900507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818295, 36.858562, 23.931700>,  <34.057556, 36.860359, 23.950415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818295, 36.858562, 23.931700>,  <33.419525, 36.855568, 23.900507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818295, 36.858562, 23.931700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078291, 0.129976, 0.988421,
		-0.002738, -0.991489, 0.130162,
		0.996927, 0.007484, 0.077980,
		34.117374, 36.860809, 23.955093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511284, 36.362755, 24.386681>,  <33.419525, 36.855568, 23.900507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511284, 36.362755, 24.386681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830704, 36.599770, 24.344332>,  <34.022358, 36.741978, 24.318922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830704, 36.599770, 24.344332>,  <33.511284, 36.362755, 24.386681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830704, 36.599770, 24.344332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089642, 0.290998, 0.952515,
		0.595211, -0.751144, 0.285494,
		0.798554, 0.592539, -0.105871,
		34.070271, 36.777531, 24.312571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841118, 36.294788, 24.991718>,  <33.511284, 36.362755, 24.386681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841118, 36.294788, 24.991718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054119, 36.602947, 24.851477>,  <34.181919, 36.787842, 24.767330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054119, 36.602947, 24.851477>,  <33.841118, 36.294788, 24.991718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054119, 36.602947, 24.851477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060237, 0.378677, 0.923567,
		0.844280, -0.512925, 0.155241,
		0.532507, 0.770397, -0.350607,
		34.213871, 36.834064, 24.746294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406197, 36.334656, 25.402617>,  <33.841118, 36.294788, 24.991718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406197, 36.334656, 25.402617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340714, 36.703873, 25.263363>,  <34.301422, 36.925404, 25.179811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340714, 36.703873, 25.263363>,  <34.406197, 36.334656, 25.402617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340714, 36.703873, 25.263363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276606, 0.381688, 0.881931,
		0.946936, 0.048086, -0.317805,
		-0.163711, 0.923040, -0.348133,
		34.291599, 36.980785, 25.158922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977268, 36.754543, 25.697512>,  <34.406197, 36.334656, 25.402617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977268, 36.754543, 25.697512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695370, 36.998737, 25.552931>,  <34.526230, 37.145252, 25.466183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695370, 36.998737, 25.552931>,  <34.977268, 36.754543, 25.697512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695370, 36.998737, 25.552931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031017, 0.535497, 0.843968,
		0.708784, 0.583570, -0.396323,
		-0.704744, 0.610483, -0.361451,
		34.483948, 37.181881, 25.444496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316986, 37.514545, 25.841162>,  <34.977268, 36.754543, 25.697512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316986, 37.514545, 25.841162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923473, 37.555122, 25.781992>,  <34.687366, 37.579468, 25.746490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923473, 37.555122, 25.781992>,  <35.316986, 37.514545, 25.841162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923473, 37.555122, 25.781992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052638, 0.625120, 0.778751,
		0.171470, 0.773908, -0.609643,
		-0.983782, 0.101442, -0.147927,
		34.628338, 37.585556, 25.737614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143547, 38.267479, 25.844172>,  <35.316986, 37.514545, 25.841162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143547, 38.267479, 25.844172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812218, 38.070705, 25.951408>,  <34.613419, 37.952641, 26.015751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812218, 38.070705, 25.951408>,  <35.143547, 38.267479, 25.844172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812218, 38.070705, 25.951408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010902, 0.492589, 0.870194,
		-0.560141, 0.717881, -0.413387,
		-0.828326, -0.491938, 0.268093,
		34.563721, 37.923122, 26.031836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682434, 38.750832, 26.199993>,  <35.143547, 38.267479, 25.844172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682434, 38.750832, 26.199993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531502, 38.400734, 26.321030>,  <34.440941, 38.190674, 26.393652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531502, 38.400734, 26.321030>,  <34.682434, 38.750832, 26.199993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531502, 38.400734, 26.321030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177520, 0.389050, 0.903951,
		-0.908903, 0.287375, -0.302176,
		-0.377334, -0.875246, 0.302594,
		34.418301, 38.138161, 26.411808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055092, 38.946228, 26.590816>,  <34.682434, 38.750832, 26.199993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055092, 38.946228, 26.590816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148888, 38.573277, 26.700855>,  <34.205166, 38.349506, 26.766878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148888, 38.573277, 26.700855>,  <34.055092, 38.946228, 26.590816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148888, 38.573277, 26.700855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394871, 0.167234, 0.903388,
		-0.888308, -0.320463, -0.328956,
		0.234490, -0.932382, 0.275097,
		34.219234, 38.293564, 26.783384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405220, 38.620579, 26.854271>,  <34.055092, 38.946228, 26.590816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405220, 38.620579, 26.854271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685970, 38.400459, 27.035179>,  <33.854420, 38.268387, 27.143724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685970, 38.400459, 27.035179>,  <33.405220, 38.620579, 26.854271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685970, 38.400459, 27.035179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489351, 0.088866, 0.867548,
		-0.517599, -0.830228, -0.206914,
		0.701874, -0.550295, 0.452270,
		33.896534, 38.235371, 27.170860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040440, 38.354149, 27.414398>,  <33.405220, 38.620579, 26.854271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040440, 38.354149, 27.414398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427570, 38.323639, 27.510317>,  <33.659847, 38.305332, 27.567867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427570, 38.323639, 27.510317>,  <33.040440, 38.354149, 27.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427570, 38.323639, 27.510317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238397, 0.027072, 0.970790,
		-0.080542, -0.996719, 0.008017,
		0.967822, -0.076278, 0.239795,
		33.717918, 38.300758, 27.582256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095875, 37.652382, 27.854189>,  <33.040440, 38.354149, 27.414398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095875, 37.652382, 27.854189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435123, 37.856045, 27.912766>,  <33.638672, 37.978241, 27.947912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435123, 37.856045, 27.912766>,  <33.095875, 37.652382, 27.854189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435123, 37.856045, 27.912766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101930, -0.114432, 0.988188,
		0.519901, -0.853032, -0.045153,
		0.848123, 0.509158, 0.146443,
		33.689560, 38.008793, 27.956697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529945, 37.258507, 28.353397>,  <33.095875, 37.652382, 27.854189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529945, 37.258507, 28.353397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666264, 37.634449, 28.362692>,  <33.748055, 37.860012, 28.368269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666264, 37.634449, 28.362692>,  <33.529945, 37.258507, 28.353397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666264, 37.634449, 28.362692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029167, -0.014135, 0.999475,
		0.939686, -0.341292, 0.022596,
		0.340793, 0.939851, 0.023237,
		33.768501, 37.916405, 28.369663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960304, 37.338486, 28.984573>,  <33.529945, 37.258507, 28.353397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960304, 37.338486, 28.984573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876915, 37.721268, 28.903791>,  <33.826881, 37.950935, 28.855322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876915, 37.721268, 28.903791>,  <33.960304, 37.338486, 28.984573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876915, 37.721268, 28.903791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352435, 0.119113, 0.928225,
		0.912321, 0.264683, 0.312431,
		-0.208471, 0.956951, -0.201953,
		33.814373, 38.008354, 28.843206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092430, 37.677437, 29.599915>,  <33.960304, 37.338486, 28.984573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092430, 37.677437, 29.599915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872559, 37.949810, 29.406343>,  <33.740635, 38.113235, 29.290201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872559, 37.949810, 29.406343>,  <34.092430, 37.677437, 29.599915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872559, 37.949810, 29.406343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299487, 0.380154, 0.875095,
		0.779848, 0.625949, -0.005031,
		-0.549677, 0.680934, -0.483926,
		33.707657, 38.154091, 29.261166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317806, 38.330914, 29.673218>,  <34.092430, 37.677437, 29.599915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317806, 38.330914, 29.673218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927834, 38.370510, 29.593515>,  <33.693848, 38.394268, 29.545694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927834, 38.370510, 29.593515>,  <34.317806, 38.330914, 29.673218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927834, 38.370510, 29.593515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135917, 0.444043, 0.885637,
		0.176149, 0.890520, -0.419459,
		-0.974935, 0.098992, -0.199255,
		33.635353, 38.400208, 29.533739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150421, 38.953613, 29.938869>,  <34.317806, 38.330914, 29.673218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150421, 38.953613, 29.938869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804920, 38.753788, 29.912445>,  <33.597618, 38.633892, 29.896589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804920, 38.753788, 29.912445>,  <34.150421, 38.953613, 29.938869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804920, 38.753788, 29.912445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235694, 0.284640, 0.929208,
		-0.445396, 0.818178, -0.363604,
		-0.863754, -0.499565, -0.066062,
		33.545795, 38.603920, 29.892626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661900, 39.349876, 30.028688>,  <34.150421, 38.953613, 29.938869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661900, 39.349876, 30.028688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757977, 39.730892, 30.103502>,  <34.815620, 39.959499, 30.148390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757977, 39.730892, 30.103502>,  <34.661900, 39.349876, 30.028688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757977, 39.730892, 30.103502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093317, 0.169125, -0.981167,
		-0.966231, 0.253118, -0.048267,
		0.240188, 0.952538, 0.187034,
		34.830032, 40.016655, 30.159613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193409, 39.798275, 29.678408>,  <34.661900, 39.349876, 30.028688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193409, 39.798275, 29.678408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545219, 39.976650, 29.744839>,  <34.756306, 40.083675, 29.784697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545219, 39.976650, 29.744839>,  <34.193409, 39.798275, 29.678408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545219, 39.976650, 29.744839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058400, 0.245210, -0.967709,
		-0.472260, 0.860821, 0.189625,
		0.879523, 0.445936, 0.166075,
		34.809074, 40.110432, 29.794661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134182, 40.394657, 29.268206>,  <34.193409, 39.798275, 29.678408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134182, 40.394657, 29.268206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523590, 40.350323, 29.348171>,  <34.757236, 40.323723, 29.396151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523590, 40.350323, 29.348171>,  <34.134182, 40.394657, 29.268206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523590, 40.350323, 29.348171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222007, 0.250173, -0.942404,
		0.054436, 0.961836, 0.268156,
		0.973524, -0.110833, 0.199916,
		34.815647, 40.317074, 29.408146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582504, 40.996571, 28.899754>,  <34.134182, 40.394657, 29.268206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582504, 40.996571, 28.899754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841782, 40.703392, 28.982344>,  <34.997349, 40.527485, 29.031898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841782, 40.703392, 28.982344>,  <34.582504, 40.996571, 28.899754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841782, 40.703392, 28.982344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521074, 0.229217, -0.822157,
		0.555269, 0.640507, 0.530496,
		0.648196, -0.732946, 0.206475,
		35.036240, 40.483509, 29.044287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305923, 41.240604, 28.807356>,  <34.582504, 40.996571, 28.899754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305923, 41.240604, 28.807356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301300, 40.846004, 28.742023>,  <35.298527, 40.609245, 28.702824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301300, 40.846004, 28.742023>,  <35.305923, 41.240604, 28.807356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301300, 40.846004, 28.742023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490859, 0.136709, -0.860446,
		0.871162, -0.090117, 0.482654,
		-0.011557, -0.986504, -0.163331,
		35.297832, 40.550053, 28.693024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905289, 41.209518, 28.419670>,  <35.305923, 41.240604, 28.807356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905289, 41.209518, 28.419670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730686, 40.852444, 28.374830>,  <35.625923, 40.638199, 28.347927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730686, 40.852444, 28.374830>,  <35.905289, 41.209518, 28.419670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730686, 40.852444, 28.374830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379580, -0.069761, -0.922525,
		0.815709, -0.445238, 0.369298,
		-0.436506, -0.892691, -0.112099,
		35.599735, 40.584637, 28.341200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501881, 40.768517, 28.090574>,  <35.905289, 41.209518, 28.419670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501881, 40.768517, 28.090574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156086, 40.594036, 27.990664>,  <35.948608, 40.489349, 27.930717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156086, 40.594036, 27.990664>,  <36.501881, 40.768517, 28.090574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156086, 40.594036, 27.990664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412423, -0.331481, -0.848544,
		0.287337, -0.836572, 0.466460,
		-0.864491, -0.436197, -0.249775,
		35.896740, 40.463177, 27.915731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672619, 40.109966, 27.914045>,  <36.501881, 40.768517, 28.090574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672619, 40.109966, 27.914045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313923, 40.172436, 27.748415>,  <36.098705, 40.209919, 27.649036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313923, 40.172436, 27.748415>,  <36.672619, 40.109966, 27.914045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313923, 40.172436, 27.748415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313227, -0.437006, -0.843157,
		-0.312632, -0.885796, 0.342966,
		-0.896745, 0.156172, -0.414078,
		36.044899, 40.219288, 27.624191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534786, 39.472931, 27.612974>,  <36.672619, 40.109966, 27.914045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534786, 39.472931, 27.612974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305134, 39.745747, 27.431774>,  <36.167343, 39.909435, 27.323055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305134, 39.745747, 27.431774>,  <36.534786, 39.472931, 27.612974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305134, 39.745747, 27.431774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245066, -0.384759, -0.889889,
		-0.781231, -0.621923, 0.053757,
		-0.574126, 0.682035, -0.452998,
		36.132896, 39.950356, 27.295876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332386, 39.110744, 27.080383>,  <36.534786, 39.472931, 27.612974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332386, 39.110744, 27.080383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193550, 39.467525, 26.964487>,  <36.110249, 39.681595, 26.894949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193550, 39.467525, 26.964487>,  <36.332386, 39.110744, 27.080383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193550, 39.467525, 26.964487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046489, -0.324930, -0.944595,
		-0.936679, -0.314389, 0.154246,
		-0.347089, 0.891953, -0.289740,
		36.089424, 39.735111, 26.877565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695190, 39.074184, 26.590778>,  <36.332386, 39.110744, 27.080383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695190, 39.074184, 26.590778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816597, 39.448879, 26.521034>,  <35.889442, 39.673695, 26.479187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816597, 39.448879, 26.521034>,  <35.695190, 39.074184, 26.590778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816597, 39.448879, 26.521034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092741, -0.211169, -0.973040,
		-0.948301, 0.279166, -0.150968,
		0.303519, 0.936736, -0.174362,
		35.907654, 39.729900, 26.468725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272610, 39.424194, 25.998713>,  <35.695190, 39.074184, 26.590778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272610, 39.424194, 25.998713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616447, 39.628437, 26.006510>,  <35.822750, 39.750984, 26.011189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616447, 39.628437, 26.006510>,  <35.272610, 39.424194, 25.998713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616447, 39.628437, 26.006510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084477, -0.104380, -0.990943,
		-0.503946, 0.853456, -0.132859,
		0.859594, 0.510606, 0.019495,
		35.874325, 39.781620, 26.012358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205704, 39.911751, 25.473421>,  <35.272610, 39.424194, 25.998713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205704, 39.911751, 25.473421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599194, 39.863686, 25.526855>,  <35.835289, 39.834846, 25.558916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599194, 39.863686, 25.526855>,  <35.205704, 39.911751, 25.473421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599194, 39.863686, 25.526855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111558, -0.174365, -0.978341,
		0.140849, 0.977322, -0.158123,
		0.983726, -0.120159, 0.133587,
		35.894310, 39.827637, 25.566931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586056, 40.344559, 25.043459>,  <35.205704, 39.911751, 25.473421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586056, 40.344559, 25.043459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856670, 40.055996, 25.102608>,  <36.019039, 39.882858, 25.138098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856670, 40.055996, 25.102608>,  <35.586056, 40.344559, 25.043459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856670, 40.055996, 25.102608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108286, -0.296077, -0.949006,
		0.728405, 0.626024, -0.278425,
		0.676536, -0.721410, 0.147874,
		36.059631, 39.839573, 25.146971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072758, 40.449986, 24.526247>,  <35.586056, 40.344559, 25.043459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072758, 40.449986, 24.526247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135151, 40.077610, 24.658318>,  <36.172585, 39.854183, 24.737560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135151, 40.077610, 24.658318>,  <36.072758, 40.449986, 24.526247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135151, 40.077610, 24.658318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106635, -0.316446, -0.942598,
		0.981987, 0.182235, 0.049912,
		0.155980, -0.930942, 0.330178,
		36.181946, 39.798328, 24.757372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707550, 40.257877, 24.238441>,  <36.072758, 40.449986, 24.526247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707550, 40.257877, 24.238441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563984, 39.896564, 24.332478>,  <36.477844, 39.679779, 24.388899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563984, 39.896564, 24.332478>,  <36.707550, 40.257877, 24.238441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563984, 39.896564, 24.332478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186637, -0.316241, -0.930139,
		0.914520, -0.289963, 0.282089,
		-0.358914, -0.903279, 0.235090,
		36.456310, 39.625580, 24.403006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165295, 39.629448, 23.997063>,  <36.707550, 40.257877, 24.238441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165295, 39.629448, 23.997063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795876, 39.480152, 24.032284>,  <36.574223, 39.390575, 24.053417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795876, 39.480152, 24.032284>,  <37.165295, 39.629448, 23.997063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795876, 39.480152, 24.032284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102243, -0.460959, -0.881512,
		0.369600, -0.805117, 0.463878,
		-0.923549, -0.373235, 0.088053,
		36.518810, 39.368183, 24.058701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151085, 38.799210, 24.060659>,  <37.165295, 39.629448, 23.997063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151085, 38.799210, 24.060659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803360, 38.917377, 23.902155>,  <36.594727, 38.988277, 23.807053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803360, 38.917377, 23.902155>,  <37.151085, 38.799210, 24.060659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803360, 38.917377, 23.902155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136475, -0.627088, -0.766900,
		-0.475048, -0.720756, 0.504817,
		-0.869312, 0.295419, -0.396262,
		36.542568, 39.006004, 23.783276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839184, 38.109295, 24.008631>,  <37.151085, 38.799210, 24.060659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839184, 38.109295, 24.008631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627804, 38.361889, 23.781660>,  <36.500977, 38.513443, 23.645477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627804, 38.361889, 23.781660>,  <36.839184, 38.109295, 24.008631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627804, 38.361889, 23.781660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071355, -0.632971, -0.770880,
		-0.845961, -0.447860, 0.289434,
		-0.528450, 0.631482, -0.567426,
		36.469269, 38.551334, 23.611433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425240, 37.686817, 23.498646>,  <36.839184, 38.109295, 24.008631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425240, 37.686817, 23.498646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428986, 38.053028, 23.337790>,  <36.431232, 38.272755, 23.241276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428986, 38.053028, 23.337790>,  <36.425240, 37.686817, 23.498646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428986, 38.053028, 23.337790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197945, -0.395895, -0.896708,
		-0.980168, -0.071206, -0.184932,
		0.009363, 0.915531, -0.402138,
		36.431793, 38.327686, 23.217148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973579, 37.585598, 22.991745>,  <36.425240, 37.686817, 23.498646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973579, 37.585598, 22.991745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196884, 37.902615, 22.893583>,  <36.330868, 38.092823, 22.834686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196884, 37.902615, 22.893583>,  <35.973579, 37.585598, 22.991745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196884, 37.902615, 22.893583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230602, -0.432357, -0.871717,
		-0.796973, 0.430056, -0.424130,
		0.558263, 0.792540, -0.245405,
		36.364365, 38.140377, 22.819962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794724, 37.821461, 22.368181>,  <35.973579, 37.585598, 22.991745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794724, 37.821461, 22.368181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172077, 37.944813, 22.417065>,  <36.398487, 38.018822, 22.446394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172077, 37.944813, 22.417065>,  <35.794724, 37.821461, 22.368181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172077, 37.944813, 22.417065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246875, -0.406659, -0.879591,
		-0.221548, 0.859961, -0.459765,
		0.943382, 0.308376, 0.122209,
		36.455093, 38.037327, 22.453728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864433, 38.296398, 21.745358>,  <35.794724, 37.821461, 22.368181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864433, 38.296398, 21.745358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219490, 38.174458, 21.883430>,  <36.432526, 38.101292, 21.966274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219490, 38.174458, 21.883430>,  <35.864433, 38.296398, 21.745358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219490, 38.174458, 21.883430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248231, -0.314616, -0.916187,
		0.387903, 0.898933, -0.203593,
		0.887644, -0.304854, 0.345183,
		36.485783, 38.083000, 21.986986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304413, 38.439407, 21.211422>,  <35.864433, 38.296398, 21.745358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304413, 38.439407, 21.211422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499947, 38.183609, 21.448767>,  <36.617268, 38.030128, 21.591173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499947, 38.183609, 21.448767>,  <36.304413, 38.439407, 21.211422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499947, 38.183609, 21.448767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349879, -0.479347, -0.804867,
		0.799138, 0.601055, -0.010575,
		0.488838, -0.639500, 0.593361,
		36.646599, 37.991760, 21.626776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895531, 38.336819, 20.850719>,  <36.304413, 38.439407, 21.211422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895531, 38.336819, 20.850719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897022, 38.003181, 21.071365>,  <36.897919, 37.803001, 21.203753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897022, 38.003181, 21.071365>,  <36.895531, 38.336819, 20.850719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897022, 38.003181, 21.071365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553023, -0.457869, -0.696075,
		0.833157, 0.307654, 0.459563,
		0.003731, -0.834089, 0.551617,
		36.898140, 37.752956, 21.236851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590771, 38.122135, 20.829292>,  <36.895531, 38.336819, 20.850719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590771, 38.122135, 20.829292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374111, 37.811180, 20.957222>,  <37.244118, 37.624607, 21.033979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374111, 37.811180, 20.957222>,  <37.590771, 38.122135, 20.829292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374111, 37.811180, 20.957222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523999, -0.609748, -0.594670,
		0.657302, -0.154512, 0.737618,
		-0.541645, -0.777389, 0.319824,
		37.211617, 37.577965, 21.053169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064701, 37.626255, 21.065186>,  <37.590771, 38.122135, 20.829292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064701, 37.626255, 21.065186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724113, 37.442108, 20.964737>,  <37.519760, 37.331619, 20.904469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724113, 37.442108, 20.964737>,  <38.064701, 37.626255, 21.065186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724113, 37.442108, 20.964737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506335, -0.597117, -0.622155,
		0.136473, -0.656896, 0.741527,
		-0.851469, -0.460368, -0.251120,
		37.468674, 37.303997, 20.889400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177067, 36.865685, 21.188578>,  <38.064701, 37.626255, 21.065186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177067, 36.865685, 21.188578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876755, 36.917267, 20.929440>,  <37.696568, 36.948215, 20.773956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876755, 36.917267, 20.929440>,  <38.177067, 36.865685, 21.188578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876755, 36.917267, 20.929440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405353, -0.684440, -0.605995,
		-0.521556, -0.717574, 0.461592,
		-0.750779, 0.128953, -0.647844,
		37.651520, 36.955952, 20.735086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971054, 36.285202, 21.145695>,  <38.177067, 36.865685, 21.188578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971054, 36.285202, 21.145695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836720, 36.477970, 20.821976>,  <37.756119, 36.593632, 20.627745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836720, 36.477970, 20.821976>,  <37.971054, 36.285202, 21.145695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836720, 36.477970, 20.821976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524585, -0.617917, -0.585652,
		-0.782318, -0.621231, -0.045289,
		-0.335841, 0.481924, -0.809296,
		37.735966, 36.622547, 20.579187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836990, 35.761059, 20.682199>,  <37.971054, 36.285202, 21.145695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836990, 35.761059, 20.682199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852505, 36.080170, 20.441515>,  <37.861813, 36.271637, 20.297104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852505, 36.080170, 20.441515>,  <37.836990, 35.761059, 20.682199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852505, 36.080170, 20.441515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467695, -0.546627, -0.694594,
		-0.883039, -0.254475, -0.394316,
		0.038786, 0.797773, -0.601709,
		37.864140, 36.319500, 20.261002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671436, 35.463779, 20.019033>,  <37.836990, 35.761059, 20.682199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671436, 35.463779, 20.019033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816406, 35.820103, 19.909410>,  <37.903389, 36.033897, 19.843637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816406, 35.820103, 19.909410>,  <37.671436, 35.463779, 20.019033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816406, 35.820103, 19.909410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441256, -0.423007, -0.791428,
		-0.820939, 0.165906, -0.546384,
		0.362426, 0.890809, -0.274056,
		37.925133, 36.087345, 19.827194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407280, 35.580429, 19.371098>,  <37.671436, 35.463779, 20.019033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407280, 35.580429, 19.371098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739204, 35.798954, 19.416632>,  <37.938358, 35.930069, 19.443953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739204, 35.798954, 19.416632>,  <37.407280, 35.580429, 19.371098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739204, 35.798954, 19.416632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317908, -0.295133, -0.901016,
		-0.458643, 0.783859, -0.418582,
		0.829807, 0.546316, 0.113835,
		37.988148, 35.962849, 19.450783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313805, 35.958294, 18.846474>,  <37.407280, 35.580429, 19.371098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313805, 35.958294, 18.846474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696785, 35.920990, 18.955721>,  <37.926571, 35.898609, 19.021269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696785, 35.920990, 18.955721>,  <37.313805, 35.958294, 18.846474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696785, 35.920990, 18.955721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255221, -0.168208, -0.952139,
		0.134738, 0.981330, -0.137249,
		0.957449, -0.093261, 0.273120,
		37.984020, 35.893013, 19.037657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733795, 36.268223, 18.340872>,  <37.313805, 35.958294, 18.846474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733795, 36.268223, 18.340872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049229, 36.102856, 18.522959>,  <38.238487, 36.003635, 18.632212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049229, 36.102856, 18.522959>,  <37.733795, 36.268223, 18.340872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049229, 36.102856, 18.522959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378686, -0.256768, -0.889195,
		0.484498, 0.873586, -0.045926,
		0.788580, -0.413422, 0.455218,
		38.285801, 35.978828, 18.659525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318676, 36.500839, 17.914362>,  <37.733795, 36.268223, 18.340872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318676, 36.500839, 17.914362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411068, 36.179123, 18.133368>,  <38.466503, 35.986095, 18.264771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411068, 36.179123, 18.133368>,  <38.318676, 36.500839, 17.914362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411068, 36.179123, 18.133368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357857, -0.453058, -0.816503,
		0.904759, 0.384523, 0.183175,
		0.230976, -0.804289, 0.547513,
		38.480362, 35.937836, 18.297621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925072, 36.438671, 17.755043>,  <38.318676, 36.500839, 17.914362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925072, 36.438671, 17.755043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802551, 36.083740, 17.892927>,  <38.729038, 35.870781, 17.975658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802551, 36.083740, 17.892927>,  <38.925072, 36.438671, 17.755043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802551, 36.083740, 17.892927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266434, -0.427555, -0.863834,
		0.913889, -0.172749, 0.367375,
		-0.306299, -0.887330, 0.344712,
		38.710663, 35.817543, 17.996340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466171, 35.922398, 17.584532>,  <38.925072, 36.438671, 17.755043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466171, 35.922398, 17.584532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115601, 35.738102, 17.640535>,  <38.905258, 35.627525, 17.674137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115601, 35.738102, 17.640535>,  <39.466171, 35.922398, 17.584532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115601, 35.738102, 17.640535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128266, -0.503612, -0.854355,
		0.464146, -0.730817, 0.500474,
		-0.876422, -0.460740, 0.140010,
		38.852673, 35.599880, 17.682539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593571, 35.218254, 17.431736>,  <39.466171, 35.922398, 17.584532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593571, 35.218254, 17.431736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201553, 35.275406, 17.376459>,  <38.966343, 35.309696, 17.343292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201553, 35.275406, 17.376459>,  <39.593571, 35.218254, 17.431736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201553, 35.275406, 17.376459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082711, -0.339052, -0.937125,
		-0.180750, -0.929855, 0.320468,
		-0.980045, 0.142879, -0.138193,
		38.907539, 35.318272, 17.335001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250675, 35.365440, 17.117666>,  <39.593571, 35.218254, 17.431736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250675, 35.365440, 17.117666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640621, 35.383217, 17.204987>,  <40.874588, 35.393883, 17.257380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640621, 35.383217, 17.204987>,  <40.250675, 35.365440, 17.117666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640621, 35.383217, 17.204987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221532, 0.296844, 0.928874,
		-0.023523, -0.953891, 0.299229,
		0.974870, 0.044439, 0.218301,
		40.933083, 35.396549, 17.270477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316582, 35.102551, 17.762161>,  <40.250675, 35.365440, 17.117666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316582, 35.102551, 17.762161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667103, 35.293652, 17.737364>,  <40.877415, 35.408314, 17.722485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667103, 35.293652, 17.737364>,  <40.316582, 35.102551, 17.762161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667103, 35.293652, 17.737364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162926, 0.414996, 0.895116,
		0.453378, -0.774290, 0.441501,
		0.876301, 0.477758, -0.061998,
		40.929993, 35.436977, 17.718765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601707, 35.166706, 18.468086>,  <40.316582, 35.102551, 17.762161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601707, 35.166706, 18.468086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809376, 35.449776, 18.276394>,  <40.933979, 35.619617, 18.161379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809376, 35.449776, 18.276394>,  <40.601707, 35.166706, 18.468086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809376, 35.449776, 18.276394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049550, 0.534853, 0.843491,
		0.853232, -0.461663, 0.242616,
		0.519173, 0.707672, -0.479229,
		40.965126, 35.662079, 18.132626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096676, 35.335167, 18.928291>,  <40.601707, 35.166706, 18.468086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096676, 35.335167, 18.928291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064297, 35.662487, 18.700668>,  <41.044868, 35.858879, 18.564095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064297, 35.662487, 18.700668>,  <41.096676, 35.335167, 18.928291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064297, 35.662487, 18.700668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175125, 0.573726, 0.800106,
		0.981213, -0.034889, -0.189747,
		-0.080948, 0.818304, -0.569058,
		41.040012, 35.907978, 18.529951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468342, 35.761055, 19.234707>,  <41.096676, 35.335167, 18.928291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468342, 35.761055, 19.234707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276257, 36.022396, 19.000605>,  <41.161003, 36.179199, 18.860144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276257, 36.022396, 19.000605>,  <41.468342, 35.761055, 19.234707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276257, 36.022396, 19.000605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042401, 0.649156, 0.759473,
		0.876124, 0.389527, -0.284034,
		-0.480217, 0.653349, -0.585257,
		41.132191, 36.218399, 18.825027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738686, 36.311901, 19.453289>,  <41.468342, 35.761055, 19.234707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738686, 36.311901, 19.453289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404453, 36.434719, 19.271067>,  <41.203915, 36.508411, 19.161734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404453, 36.434719, 19.271067>,  <41.738686, 36.311901, 19.453289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404453, 36.434719, 19.271067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175639, 0.636404, 0.751093,
		0.520539, 0.707611, -0.477836,
		-0.835578, 0.307046, -0.455557,
		41.153778, 36.526833, 19.134399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823841, 36.997185, 19.342707>,  <41.738686, 36.311901, 19.453289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823841, 36.997185, 19.342707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429726, 36.934914, 19.370890>,  <41.193256, 36.897552, 19.387800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429726, 36.934914, 19.370890>,  <41.823841, 36.997185, 19.342707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429726, 36.934914, 19.370890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049609, 0.655178, 0.753844,
		-0.163516, 0.739261, -0.653265,
		-0.985292, -0.155674, 0.070458,
		41.134136, 36.888210, 19.392027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604820, 37.579636, 19.651108>,  <41.823841, 36.997185, 19.342707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604820, 37.579636, 19.651108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267868, 37.364323, 19.661360>,  <41.065697, 37.235134, 19.667511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267868, 37.364323, 19.661360>,  <41.604820, 37.579636, 19.651108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267868, 37.364323, 19.661360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394511, 0.648394, 0.651111,
		-0.367099, 0.538369, -0.758549,
		-0.842377, -0.538279, 0.025632,
		41.015156, 37.202839, 19.669050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041958, 38.043705, 19.612232>,  <41.604820, 37.579636, 19.651108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041958, 38.043705, 19.612232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932301, 37.715359, 19.812639>,  <40.866508, 37.518349, 19.932884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932301, 37.715359, 19.812639>,  <41.041958, 38.043705, 19.612232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932301, 37.715359, 19.812639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436476, 0.570433, 0.695770,
		-0.856934, -0.027944, -0.514669,
		-0.274141, -0.820869, 0.501020,
		40.850060, 37.469097, 19.962946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364082, 38.163498, 19.823915>,  <41.041958, 38.043705, 19.612232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364082, 38.163498, 19.823915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507545, 37.876709, 20.063021>,  <40.593624, 37.704636, 20.206484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507545, 37.876709, 20.063021>,  <40.364082, 38.163498, 19.823915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507545, 37.876709, 20.063021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427207, 0.443296, 0.788025,
		-0.829975, -0.538000, -0.147303,
		0.358658, -0.716969, 0.597762,
		40.615143, 37.661617, 20.242350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853642, 37.949791, 20.225277>,  <40.364082, 38.163498, 19.823915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853642, 37.949791, 20.225277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184563, 37.844696, 20.423887>,  <40.383114, 37.781639, 20.543053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184563, 37.844696, 20.423887>,  <39.853642, 37.949791, 20.225277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184563, 37.844696, 20.423887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368431, 0.413457, 0.832654,
		-0.424063, -0.871792, 0.245253,
		0.827303, -0.262739, 0.496527,
		40.432755, 37.765873, 20.572845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593960, 37.621197, 20.785763>,  <39.853642, 37.949791, 20.225277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593960, 37.621197, 20.785763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968868, 37.715187, 20.888765>,  <40.193813, 37.771580, 20.950567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968868, 37.715187, 20.888765>,  <39.593960, 37.621197, 20.785763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968868, 37.715187, 20.888765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326299, 0.331397, 0.885271,
		0.122677, -0.913763, 0.387281,
		0.937272, 0.234972, 0.257506,
		40.250050, 37.785679, 20.966017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590488, 37.294518, 21.332420>,  <39.593960, 37.621197, 20.785763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590488, 37.294518, 21.332420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912971, 37.528717, 21.366402>,  <40.106461, 37.669235, 21.386789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912971, 37.528717, 21.366402>,  <39.590488, 37.294518, 21.332420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912971, 37.528717, 21.366402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368576, 0.384732, 0.846246,
		0.462791, -0.713565, 0.525976,
		0.806211, 0.585497, 0.084952,
		40.154835, 37.704365, 21.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819969, 37.132732, 21.928112>,  <39.590488, 37.294518, 21.332420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819969, 37.132732, 21.928112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971214, 37.495647, 21.854513>,  <40.061962, 37.713398, 21.810354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971214, 37.495647, 21.854513>,  <39.819969, 37.132732, 21.928112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971214, 37.495647, 21.854513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297658, 0.307348, 0.903845,
		0.876602, -0.286985, 0.386274,
		0.378111, 0.907291, -0.183999,
		40.084648, 37.767834, 21.799314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266716, 37.329201, 22.449619>,  <39.819969, 37.132732, 21.928112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266716, 37.329201, 22.449619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183483, 37.691277, 22.301390>,  <40.133541, 37.908524, 22.212452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183483, 37.691277, 22.301390>,  <40.266716, 37.329201, 22.449619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183483, 37.691277, 22.301390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205849, 0.329855, 0.921315,
		0.956204, 0.267995, 0.117695,
		-0.208086, 0.905193, -0.370575,
		40.121056, 37.962833, 22.190218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760941, 37.772835, 22.627537>,  <40.266716, 37.329201, 22.449619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760941, 37.772835, 22.627537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406116, 37.948124, 22.569462>,  <40.193222, 38.053299, 22.534616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406116, 37.948124, 22.569462>,  <40.760941, 37.772835, 22.627537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406116, 37.948124, 22.569462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048396, 0.224489, 0.973274,
		0.459106, 0.870381, -0.177927,
		-0.887062, 0.438225, -0.145187,
		40.139999, 38.079590, 22.525906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526165, 38.116917, 23.257799>,  <40.760941, 37.772835, 22.627537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526165, 38.116917, 23.257799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181747, 38.208855, 23.076349>,  <39.975098, 38.264015, 22.967480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181747, 38.208855, 23.076349>,  <40.526165, 38.116917, 23.257799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181747, 38.208855, 23.076349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379762, 0.302632, 0.874183,
		0.338205, 0.924979, -0.173294,
		-0.861045, 0.229843, -0.453623,
		39.923435, 38.277809, 22.940262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372936, 38.807774, 23.483149>,  <40.526165, 38.116917, 23.257799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372936, 38.807774, 23.483149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041756, 38.616428, 23.366070>,  <39.843048, 38.501621, 23.295822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041756, 38.616428, 23.366070>,  <40.372936, 38.807774, 23.483149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041756, 38.616428, 23.366070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457447, 0.274152, 0.845921,
		-0.324411, 0.834274, -0.445808,
		-0.827949, -0.478360, -0.292698,
		39.793369, 38.472919, 23.278261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804161, 39.297569, 23.474560>,  <40.372936, 38.807774, 23.483149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804161, 39.297569, 23.474560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612923, 38.946396, 23.464281>,  <39.498180, 38.735691, 23.458113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612923, 38.946396, 23.464281>,  <39.804161, 39.297569, 23.474560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612923, 38.946396, 23.464281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566017, 0.285598, 0.773343,
		-0.671603, 0.384277, -0.633467,
		-0.478095, -0.877932, -0.025699,
		39.469494, 38.683018, 23.456572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125137, 39.494740, 23.609278>,  <39.804161, 39.297569, 23.474560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125137, 39.494740, 23.609278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146458, 39.101353, 23.678493>,  <39.159248, 38.865318, 23.720022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146458, 39.101353, 23.678493>,  <39.125137, 39.494740, 23.609278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146458, 39.101353, 23.678493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675188, 0.092180, 0.731863,
		-0.735718, -0.155840, -0.659115,
		0.053297, -0.983472, 0.173040,
		39.162445, 38.806313, 23.730406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412140, 39.354210, 23.851427>,  <39.125137, 39.494740, 23.609278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412140, 39.354210, 23.851427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662113, 39.073509, 23.988249>,  <38.812099, 38.905090, 24.070341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662113, 39.073509, 23.988249>,  <38.412140, 39.354210, 23.851427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662113, 39.073509, 23.988249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428373, 0.058049, 0.901736,
		-0.652650, -0.710053, -0.264335,
		0.624935, -0.701752, 0.342053,
		38.849594, 38.862984, 24.090864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924320, 38.799725, 24.278122>,  <38.412140, 39.354210, 23.851427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924320, 38.799725, 24.278122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305893, 38.751732, 24.388113>,  <38.534836, 38.722935, 24.454107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305893, 38.751732, 24.388113>,  <37.924320, 38.799725, 24.278122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305893, 38.751732, 24.388113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280668, -0.033101, 0.959234,
		-0.105996, -0.992223, -0.065254,
		0.953934, -0.119990, 0.274976,
		38.592072, 38.715736, 24.470606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845085, 38.449650, 24.895893>,  <37.924320, 38.799725, 24.278122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845085, 38.449650, 24.895893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219479, 38.588905, 24.916821>,  <38.444115, 38.672459, 24.929377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219479, 38.588905, 24.916821>,  <37.845085, 38.449650, 24.895893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219479, 38.588905, 24.916821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079250, 0.063566, 0.994826,
		0.343012, -0.935285, 0.087087,
		0.935982, 0.348139, 0.052317,
		38.500275, 38.693348, 24.932516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224865, 37.982433, 25.438335>,  <37.845085, 38.449650, 24.895893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224865, 37.982433, 25.438335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391251, 38.344795, 25.406544>,  <38.491081, 38.562210, 25.387468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391251, 38.344795, 25.406544>,  <38.224865, 37.982433, 25.438335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391251, 38.344795, 25.406544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078267, 0.122737, 0.989348,
		0.906006, -0.405314, 0.121957,
		0.415965, 0.905901, -0.079478,
		38.516041, 38.616566, 25.382700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670460, 38.103088, 26.010838>,  <38.224865, 37.982433, 25.438335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670460, 38.103088, 26.010838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602913, 38.473454, 25.875677>,  <38.562386, 38.695671, 25.794580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602913, 38.473454, 25.875677>,  <38.670460, 38.103088, 26.010838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602913, 38.473454, 25.875677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099457, 0.325066, 0.940447,
		0.980608, 0.192416, 0.037195,
		-0.168866, 0.925909, -0.337899,
		38.552254, 38.751225, 25.774307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056702, 38.482914, 26.419647>,  <38.670460, 38.103088, 26.010838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056702, 38.482914, 26.419647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808144, 38.759995, 26.273201>,  <38.659008, 38.926243, 26.185333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808144, 38.759995, 26.273201>,  <39.056702, 38.482914, 26.419647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808144, 38.759995, 26.273201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038203, 0.493513, 0.868899,
		0.782569, 0.525939, -0.333128,
		-0.621391, 0.692700, -0.366115,
		38.621727, 38.967804, 26.163366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404610, 39.114113, 26.544146>,  <39.056702, 38.482914, 26.419647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404610, 39.114113, 26.544146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023926, 39.233852, 26.516933>,  <38.795513, 39.305698, 26.500607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023926, 39.233852, 26.516933>,  <39.404610, 39.114113, 26.544146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023926, 39.233852, 26.516933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156795, 0.664535, 0.730622,
		0.263922, 0.684676, -0.679385,
		-0.951714, 0.299351, -0.068031,
		38.738411, 39.323658, 26.496525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410866, 39.865631, 26.567669>,  <39.404610, 39.114113, 26.544146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410866, 39.865631, 26.567669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044205, 39.742725, 26.669910>,  <38.824207, 39.668980, 26.731256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044205, 39.742725, 26.669910>,  <39.410866, 39.865631, 26.567669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044205, 39.742725, 26.669910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027267, 0.589953, 0.806977,
		-0.398754, 0.746687, -0.532404,
		-0.916652, -0.307268, 0.255606,
		38.769211, 39.650543, 26.746592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967991, 40.409191, 26.671898>,  <39.410866, 39.865631, 26.567669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967991, 40.409191, 26.671898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755398, 40.146214, 26.885550>,  <38.627842, 39.988426, 27.013741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755398, 40.146214, 26.885550>,  <38.967991, 40.409191, 26.671898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755398, 40.146214, 26.885550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012165, 0.636419, 0.771248,
		-0.846983, 0.403406, -0.346242,
		-0.531481, -0.657445, 0.534128,
		38.595955, 39.948978, 27.045788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467300, 40.827217, 27.050762>,  <38.967991, 40.409191, 26.671898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467300, 40.827217, 27.050762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503029, 40.473270, 27.233643>,  <38.524467, 40.260902, 27.343370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503029, 40.473270, 27.233643>,  <38.467300, 40.827217, 27.050762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503029, 40.473270, 27.233643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087641, 0.464239, 0.881363,
		-0.992139, -0.038658, 0.119018,
		0.089324, -0.884866, 0.457201,
		38.529827, 40.207809, 27.370804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939411, 40.774563, 27.629671>,  <38.467300, 40.827217, 27.050762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939411, 40.774563, 27.629671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220215, 40.503006, 27.715733>,  <38.388699, 40.340073, 27.767368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220215, 40.503006, 27.715733>,  <37.939411, 40.774563, 27.629671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220215, 40.503006, 27.715733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076611, 0.372344, 0.924927,
		-0.708037, -0.632823, 0.313399,
		0.702008, -0.678892, 0.215152,
		38.430817, 40.299339, 27.780277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851444, 40.750900, 28.347589>,  <37.939411, 40.774563, 27.629671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851444, 40.750900, 28.347589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199665, 40.564659, 28.283907>,  <38.408600, 40.452915, 28.245697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199665, 40.564659, 28.283907>,  <37.851444, 40.750900, 28.347589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199665, 40.564659, 28.283907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258219, 0.156845, 0.953269,
		-0.418872, -0.870985, 0.256770,
		0.870557, -0.465601, -0.159207,
		38.460831, 40.424980, 28.236145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044315, 40.328331, 28.968491>,  <37.851444, 40.750900, 28.347589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044315, 40.328331, 28.968491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406609, 40.372505, 28.804804>,  <38.623985, 40.399010, 28.706591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406609, 40.372505, 28.804804>,  <38.044315, 40.328331, 28.968491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406609, 40.372505, 28.804804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413973, -0.023199, 0.909994,
		0.090998, -0.993613, -0.066727,
		0.905729, 0.110431, -0.409218,
		38.678326, 40.405636, 28.682039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469898, 39.921616, 29.241169>,  <38.044315, 40.328331, 28.968491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469898, 39.921616, 29.241169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748573, 40.179661, 29.115664>,  <38.915779, 40.334488, 29.040359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748573, 40.179661, 29.115664>,  <38.469898, 39.921616, 29.241169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748573, 40.179661, 29.115664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409762, 0.001140, 0.912192,
		0.588828, -0.764084, -0.263550,
		0.696690, 0.645116, -0.313763,
		38.957581, 40.373196, 29.021534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141735, 39.648705, 29.521744>,  <38.469898, 39.921616, 29.241169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141735, 39.648705, 29.521744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216110, 40.029541, 29.424633>,  <39.260735, 40.258045, 29.366367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216110, 40.029541, 29.424633>,  <39.141735, 39.648705, 29.521744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216110, 40.029541, 29.424633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566643, 0.097951, 0.818121,
		0.802709, -0.289688, -0.521286,
		0.185939, 0.952096, -0.242776,
		39.271893, 40.315170, 29.351801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858879, 39.739021, 29.555113>,  <39.141735, 39.648705, 29.521744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858879, 39.739021, 29.555113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731861, 40.118053, 29.569305>,  <39.655651, 40.345474, 29.577822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731861, 40.118053, 29.569305>,  <39.858879, 39.739021, 29.555113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731861, 40.118053, 29.569305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721019, 0.216979, 0.658067,
		0.615872, 0.234547, -0.752123,
		-0.317542, 0.947580, 0.035482,
		39.636597, 40.402328, 29.579950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514847, 40.096943, 29.522581>,  <39.858879, 39.739021, 29.555113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514847, 40.096943, 29.522581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231934, 40.331654, 29.680286>,  <40.062187, 40.472481, 29.774910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231934, 40.331654, 29.680286>,  <40.514847, 40.096943, 29.522581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231934, 40.331654, 29.680286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604479, 0.212807, 0.767671,
		0.366552, 0.781282, -0.505211,
		-0.707280, 0.586781, 0.394264,
		40.019749, 40.507687, 29.798565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850117, 40.563709, 29.654978>,  <40.514847, 40.096943, 29.522581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850117, 40.563709, 29.654978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535351, 40.602833, 29.898682>,  <40.346493, 40.626308, 30.044905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535351, 40.602833, 29.898682>,  <40.850117, 40.563709, 29.654978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535351, 40.602833, 29.898682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617006, 0.111466, 0.779024,
		0.008287, 0.988943, -0.148066,
		-0.786915, 0.097813, 0.609260,
		40.299278, 40.632175, 30.081459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114574, 40.947601, 30.211693>,  <40.850117, 40.563709, 29.654978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114574, 40.947601, 30.211693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767689, 40.820126, 30.364727>,  <40.559555, 40.743641, 30.456547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767689, 40.820126, 30.364727>,  <41.114574, 40.947601, 30.211693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767689, 40.820126, 30.364727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357611, 0.136020, 0.923912,
		-0.346478, 0.938050, -0.003993,
		-0.867218, -0.318687, 0.382585,
		40.507523, 40.724518, 30.479502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977837, 41.515427, 30.721727>,  <41.114574, 40.947601, 30.211693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977837, 41.515427, 30.721727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782627, 41.181732, 30.824398>,  <40.665501, 40.981514, 30.886002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782627, 41.181732, 30.824398>,  <40.977837, 41.515427, 30.721727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782627, 41.181732, 30.824398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217618, 0.168492, 0.961381,
		-0.845267, 0.525033, 0.099318,
		-0.488022, -0.834237, 0.256678,
		40.636219, 40.931461, 30.901402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633488, 41.659672, 31.354742>,  <40.977837, 41.515427, 30.721727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633488, 41.659672, 31.354742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631802, 41.259800, 31.364761>,  <40.630791, 41.019878, 31.370773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631802, 41.259800, 31.364761>,  <40.633488, 41.659672, 31.354742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631802, 41.259800, 31.364761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202739, 0.023672, 0.978946,
		-0.979224, 0.009202, 0.202574,
		-0.004213, -0.999677, 0.025046,
		40.630539, 40.959896, 31.372274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078255, 41.406670, 31.751320>,  <40.633488, 41.659672, 31.354742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078255, 41.406670, 31.751320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417439, 41.195385, 31.733654>,  <40.620949, 41.068615, 31.723055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417439, 41.195385, 31.733654>,  <40.078255, 41.406670, 31.751320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417439, 41.195385, 31.733654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180168, 0.208863, 0.961205,
		-0.498496, -0.823024, 0.272275,
		0.847963, -0.528212, -0.044165,
		40.671829, 41.036922, 31.720404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083252, 40.966515, 32.300488>,  <40.078255, 41.406670, 31.751320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083252, 40.966515, 32.300488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459869, 41.064117, 32.207577>,  <40.685841, 41.122677, 32.151829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459869, 41.064117, 32.207577>,  <40.083252, 40.966515, 32.300488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459869, 41.064117, 32.207577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146291, 0.324949, 0.934348,
		0.303465, -0.913712, 0.270259,
		0.941545, 0.244006, -0.232278,
		40.742332, 41.137318, 32.137894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669449, 40.694370, 32.700119>,  <40.083252, 40.966515, 32.300488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669449, 40.694370, 32.700119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779762, 41.045124, 32.542629>,  <40.845951, 41.255577, 32.448135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779762, 41.045124, 32.542629>,  <40.669449, 40.694370, 32.700119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779762, 41.045124, 32.542629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352471, 0.288817, 0.890140,
		0.894262, -0.384265, -0.229423,
		0.275788, 0.876884, -0.393720,
		40.862499, 41.308189, 32.424515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393677, 40.824120, 33.052898>,  <40.669449, 40.694370, 32.700119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393677, 40.824120, 33.052898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212608, 41.169239, 32.962860>,  <41.103966, 41.376312, 32.908836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212608, 41.169239, 32.962860>,  <41.393677, 40.824120, 33.052898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212608, 41.169239, 32.962860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332532, 0.397572, 0.855195,
		0.827352, 0.312272, -0.466878,
		-0.452671, 0.862799, -0.225091,
		41.076805, 41.428078, 32.895332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163837, 40.494591, 33.765610>,  <41.393677, 40.824120, 33.052898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163837, 40.494591, 33.765610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152687, 40.518913, 34.164715>,  <41.145996, 40.533508, 34.404179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152687, 40.518913, 34.164715>,  <41.163837, 40.494591, 33.765610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152687, 40.518913, 34.164715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037741, 0.997500, -0.059736,
		-0.998899, 0.035992, -0.030095,
		-0.027870, 0.060806, 0.997760,
		41.144325, 40.537155, 34.464043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525730, 40.830570, 34.044804>,  <41.163837, 40.494591, 33.765610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525730, 40.830570, 34.044804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875668, 40.884640, 34.230869>,  <41.085629, 40.917080, 34.342510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875668, 40.884640, 34.230869>,  <40.525730, 40.830570, 34.044804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875668, 40.884640, 34.230869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007636, 0.964007, -0.265768,
		-0.484349, 0.228953, 0.844386,
		0.874842, 0.135172, 0.465167,
		41.138119, 40.925190, 34.370419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368538, 41.379288, 34.491337>,  <40.525730, 40.830570, 34.044804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368538, 41.379288, 34.491337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764832, 41.367172, 34.438374>,  <41.002609, 41.359905, 34.406597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764832, 41.367172, 34.438374>,  <40.368538, 41.379288, 34.491337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764832, 41.367172, 34.438374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028006, 0.999426, -0.019034,
		0.132906, 0.015149, 0.991013,
		0.990733, -0.030284, -0.132406,
		41.062050, 41.358086, 34.398651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721741, 41.826210, 34.931210>,  <40.368538, 41.379288, 34.491337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721741, 41.826210, 34.931210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990299, 41.796864, 34.636227>,  <41.151436, 41.779255, 34.459236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990299, 41.796864, 34.636227>,  <40.721741, 41.826210, 34.931210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990299, 41.796864, 34.636227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033358, 0.997071, -0.068822,
		0.740346, 0.021607, 0.671879,
		0.671398, -0.073364, -0.737456,
		41.191719, 41.774853, 34.414989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293339, 42.354301, 35.095947>,  <40.721741, 41.826210, 34.931210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293339, 42.354301, 35.095947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308899, 42.278858, 34.703434>,  <41.318233, 42.233593, 34.467926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308899, 42.278858, 34.703434>,  <41.293339, 42.354301, 35.095947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308899, 42.278858, 34.703434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032695, 0.981740, -0.187398,
		0.998708, -0.024794, 0.044353,
		0.038897, -0.188606, -0.981282,
		41.320568, 42.222275, 34.409050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712029, 42.914616, 34.822498>,  <41.293339, 42.354301, 35.095947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712029, 42.914616, 34.822498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496555, 42.730129, 34.540474>,  <41.367271, 42.619438, 34.371262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496555, 42.730129, 34.540474>,  <41.712029, 42.914616, 34.822498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496555, 42.730129, 34.540474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316004, 0.886364, -0.338379,
		0.781001, 0.040521, -0.623214,
		-0.538683, -0.461212, -0.705056,
		41.334949, 42.591766, 34.328957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935955, 43.188377, 34.190353>,  <41.712029, 42.914616, 34.822498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935955, 43.188377, 34.190353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554699, 43.069241, 34.169151>,  <41.325947, 42.997757, 34.156429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554699, 43.069241, 34.169151>,  <41.935955, 43.188377, 34.190353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554699, 43.069241, 34.169151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238423, 0.847410, -0.474395,
		0.186216, -0.439527, -0.878715,
		-0.953141, -0.297846, -0.053008,
		41.268757, 42.979885, 34.153248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689342, 43.559368, 33.593788>,  <41.935955, 43.188377, 34.190353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689342, 43.559368, 33.593788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363228, 43.441837, 33.793377>,  <41.167561, 43.371319, 33.913132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363228, 43.441837, 33.793377>,  <41.689342, 43.559368, 33.593788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363228, 43.441837, 33.793377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487153, 0.813861, -0.316721,
		-0.313032, -0.501294, -0.806670,
		-0.815287, -0.293827, 0.498971,
		41.118641, 43.353687, 33.943069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158245, 43.937504, 33.253223>,  <41.689342, 43.559368, 33.593788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158245, 43.937504, 33.253223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983734, 43.792583, 33.582684>,  <40.879028, 43.705631, 33.780361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983734, 43.792583, 33.582684>,  <41.158245, 43.937504, 33.253223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983734, 43.792583, 33.582684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699468, 0.712376, -0.057145,
		-0.566045, -0.601048, -0.564212,
		-0.436278, -0.362301, 0.823650,
		40.852852, 43.683891, 33.829777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395321, 43.828430, 33.078342>,  <41.158245, 43.937504, 33.253223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395321, 43.828430, 33.078342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401035, 43.857529, 33.477242>,  <40.404465, 43.874989, 33.716579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401035, 43.857529, 33.477242>,  <40.395321, 43.828430, 33.078342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401035, 43.857529, 33.477242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762167, 0.646366, -0.036234,
		-0.647223, -0.759552, 0.064677,
		0.014284, 0.072747, 0.997248,
		40.405319, 43.879353, 33.776417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723507, 43.706974, 33.295654>,  <40.395321, 43.828430, 33.078342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723507, 43.706974, 33.295654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893223, 43.896503, 33.604321>,  <39.995052, 44.010223, 33.789520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893223, 43.896503, 33.604321>,  <39.723507, 43.706974, 33.295654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893223, 43.896503, 33.604321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776178, 0.629217, 0.040412,
		-0.466398, -0.616097, 0.634742,
		0.424288, 0.473825, 0.771667,
		40.020508, 44.038651, 33.835819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282356, 43.825932, 33.879070>,  <39.723507, 43.706974, 33.295654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282356, 43.825932, 33.879070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575050, 44.098164, 33.864208>,  <39.750668, 44.261501, 33.855293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575050, 44.098164, 33.864208>,  <39.282356, 43.825932, 33.879070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575050, 44.098164, 33.864208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675088, 0.731189, 0.098073,
		0.093910, -0.046683, 0.994486,
		0.731736, 0.680575, -0.037151,
		39.794571, 44.302338, 33.853062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245941, 44.167664, 34.525063>,  <39.282356, 43.825932, 33.879070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245941, 44.167664, 34.525063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422398, 44.408913, 34.259239>,  <39.528271, 44.553661, 34.099747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422398, 44.408913, 34.259239>,  <39.245941, 44.167664, 34.525063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422398, 44.408913, 34.259239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725709, 0.675375, 0.131210,
		0.527959, 0.424390, 0.735631,
		0.441142, 0.603127, -0.664554,
		39.554741, 44.589851, 34.059872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044456, 44.823311, 34.742325>,  <39.245941, 44.167664, 34.525063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044456, 44.823311, 34.742325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193798, 44.913376, 34.382347>,  <39.283405, 44.967415, 34.166359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193798, 44.913376, 34.382347>,  <39.044456, 44.823311, 34.742325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193798, 44.913376, 34.382347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625606, 0.777424, -0.065034,
		0.684999, 0.587294, 0.431119,
		0.373356, 0.225162, -0.899949,
		39.305805, 44.980923, 34.112362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212589, 45.553616, 34.844986>,  <39.044456, 44.823311, 34.742325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212589, 45.553616, 34.844986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190380, 45.474804, 34.453457>,  <39.177055, 45.427517, 34.218540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190380, 45.474804, 34.453457>,  <39.212589, 45.553616, 34.844986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190380, 45.474804, 34.453457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720469, 0.686621, -0.097343,
		0.691261, 0.699808, -0.180074,
		-0.055521, -0.197027, -0.978824,
		39.173725, 45.415695, 34.159809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518570, 45.476852, 35.109398>,  <39.212589, 45.553616, 34.844986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518570, 45.476852, 35.109398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515755, 45.825493, 34.913330>,  <38.514065, 46.034676, 34.795689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515755, 45.825493, 34.913330>,  <38.518570, 45.476852, 35.109398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515755, 45.825493, 34.913330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944537, -0.155152, -0.289444,
		-0.328330, -0.465020, -0.822165,
		-0.007037, 0.871599, -0.490169,
		38.513645, 46.086971, 34.766281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503658, 45.406731, 34.293560>,  <38.518570, 45.476852, 35.109398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503658, 45.406731, 34.293560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677174, 45.726158, 34.460472>,  <38.781281, 45.917812, 34.560619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677174, 45.726158, 34.460472>,  <38.503658, 45.406731, 34.293560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677174, 45.726158, 34.460472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887288, -0.298065, -0.351962,
		-0.156689, 0.522922, -0.837855,
		0.433784, 0.798567, 0.417279,
		38.807308, 45.965729, 34.585655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903481, 45.701374, 33.864540>,  <38.503658, 45.406731, 34.293560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903481, 45.701374, 33.864540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933163, 45.667374, 33.467094>,  <37.950970, 45.646973, 33.228626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933163, 45.667374, 33.467094>,  <37.903481, 45.701374, 33.864540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933163, 45.667374, 33.467094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902764, -0.417586, 0.103143,
		-0.423687, -0.904653, 0.045753,
		0.074202, -0.085005, -0.993614,
		37.955421, 45.641872, 33.169010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015743, 44.979504, 33.666729>,  <37.903481, 45.701374, 33.864540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015743, 44.979504, 33.666729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169182, 45.254704, 33.420311>,  <38.261246, 45.419823, 33.272461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169182, 45.254704, 33.420311>,  <38.015743, 44.979504, 33.666729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169182, 45.254704, 33.420311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923472, -0.280495, 0.261767,
		0.007299, -0.669310, -0.742947,
		0.383597, 0.688002, -0.616042,
		38.284260, 45.461105, 33.235500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452759, 44.720795, 33.098461>,  <38.015743, 44.979504, 33.666729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452759, 44.720795, 33.098461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576557, 45.063576, 33.263306>,  <38.650837, 45.269245, 33.362213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576557, 45.063576, 33.263306>,  <38.452759, 44.720795, 33.098461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576557, 45.063576, 33.263306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891062, -0.412680, 0.188955,
		0.331997, 0.308739, -0.891324,
		0.309494, 0.856957, 0.412114,
		38.669407, 45.320663, 33.386940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085808, 44.785965, 32.830429>,  <38.452759, 44.720795, 33.098461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085808, 44.785965, 32.830429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099964, 45.023411, 33.152020>,  <39.108459, 45.165878, 33.344975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099964, 45.023411, 33.152020>,  <39.085808, 44.785965, 32.830429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099964, 45.023411, 33.152020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867446, -0.417735, 0.270249,
		0.496270, 0.687838, -0.529712,
		0.035391, 0.593613, 0.803972,
		39.110580, 45.201496, 33.393211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709244, 45.287373, 32.868225>,  <39.085808, 44.785965, 32.830429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709244, 45.287373, 32.868225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603046, 45.208942, 33.245811>,  <39.539330, 45.161884, 33.472363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603046, 45.208942, 33.245811>,  <39.709244, 45.287373, 32.868225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603046, 45.208942, 33.245811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883487, -0.441438, 0.156789,
		0.385959, 0.875606, 0.290430,
		-0.265492, -0.196077, 0.943964,
		39.523399, 45.150120, 33.528999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228733, 45.394623, 33.299347>,  <39.709244, 45.287373, 32.868225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228733, 45.394623, 33.299347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017063, 45.156399, 33.541100>,  <39.890060, 45.013466, 33.686150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017063, 45.156399, 33.541100>,  <40.228733, 45.394623, 33.299347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017063, 45.156399, 33.541100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823615, -0.531802, 0.197092,
		0.204030, 0.602074, 0.771932,
		-0.529179, -0.595561, 0.604381,
		39.858311, 44.977730, 33.722412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738892, 45.183819, 33.849861>,  <40.228733, 45.394623, 33.299347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738892, 45.183819, 33.849861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439407, 44.920589, 33.881775>,  <40.259716, 44.762653, 33.900921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439407, 44.920589, 33.881775>,  <40.738892, 45.183819, 33.849861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439407, 44.920589, 33.881775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662446, -0.738359, 0.126457,
		-0.024311, 0.147531, 0.988759,
		-0.748715, -0.658073, 0.079781,
		40.214794, 44.723167, 33.905708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742191, 44.789867, 34.573212>,  <40.738892, 45.183819, 33.849861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742191, 44.789867, 34.573212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557590, 44.577133, 34.289192>,  <40.446831, 44.449493, 34.118782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557590, 44.577133, 34.289192>,  <40.742191, 44.789867, 34.573212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557590, 44.577133, 34.289192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398263, -0.839396, 0.369866,
		-0.792719, -0.112093, 0.599192,
		-0.461500, -0.531836, -0.710048,
		40.419140, 44.417583, 34.076180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471130, 44.142521, 35.042263>,  <40.742191, 44.789867, 34.573212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471130, 44.142521, 35.042263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505482, 44.078274, 34.648952>,  <40.526093, 44.039726, 34.412968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505482, 44.078274, 34.648952>,  <40.471130, 44.142521, 35.042263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505482, 44.078274, 34.648952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420793, -0.888727, 0.181925,
		-0.903082, -0.429379, -0.008737,
		0.085880, -0.160616, -0.983273,
		40.531246, 44.030090, 34.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490349, 43.428299, 35.052261>,  <40.471130, 44.142521, 35.042263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490349, 43.428299, 35.052261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607536, 43.535980, 34.685284>,  <40.677849, 43.600590, 34.465099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607536, 43.535980, 34.685284>,  <40.490349, 43.428299, 35.052261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607536, 43.535980, 34.685284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690428, -0.723354, 0.008223,
		-0.661421, -0.635837, -0.397785,
		0.292968, 0.269204, -0.917442,
		40.695427, 43.616741, 34.410049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543762, 42.976460, 34.472702>,  <40.490349, 43.428299, 35.052261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543762, 42.976460, 34.472702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819641, 43.246925, 34.369076>,  <40.985168, 43.409206, 34.306900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819641, 43.246925, 34.369076>,  <40.543762, 42.976460, 34.472702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819641, 43.246925, 34.369076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600634, -0.734054, -0.316866,
		-0.404424, 0.062937, -0.912403,
		0.689695, 0.676169, -0.259067,
		41.026550, 43.449776, 34.291355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731220, 43.016647, 33.664543>,  <40.543762, 42.976460, 34.472702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731220, 43.016647, 33.664543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054443, 43.125961, 33.873295>,  <41.248379, 43.191547, 33.998547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054443, 43.125961, 33.873295>,  <40.731220, 43.016647, 33.664543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054443, 43.125961, 33.873295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523708, -0.738910, -0.423959,
		0.269764, 0.615897, -0.740201,
		0.808058, 0.273280, 0.521882,
		41.296860, 43.207947, 34.029858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738392, 42.292976, 33.251369>,  <40.731220, 43.016647, 33.664543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738392, 42.292976, 33.251369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023792, 42.403271, 33.509014>,  <41.195034, 42.469448, 33.663601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023792, 42.403271, 33.509014>,  <40.738392, 42.292976, 33.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023792, 42.403271, 33.509014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130968, -0.955591, 0.263995,
		0.688302, -0.104003, -0.717930,
		0.713504, 0.275734, 0.644114,
		41.237843, 42.485992, 33.702248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368755, 41.845547, 33.111389>,  <40.738392, 42.292976, 33.251369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368755, 41.845547, 33.111389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366570, 41.985451, 33.486118>,  <41.365257, 42.069393, 33.710957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366570, 41.985451, 33.486118>,  <41.368755, 41.845547, 33.111389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366570, 41.985451, 33.486118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183305, -0.920614, 0.344774,
		0.983041, 0.173610, -0.059078,
		-0.005469, 0.349756, 0.936825,
		41.364929, 42.090378, 33.767166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987659, 41.682926, 33.419094>,  <41.368755, 41.845547, 33.111389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987659, 41.682926, 33.419094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708027, 41.717331, 33.703033>,  <41.540245, 41.737972, 33.873398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708027, 41.717331, 33.703033>,  <41.987659, 41.682926, 33.419094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708027, 41.717331, 33.703033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162701, -0.947563, 0.275049,
		0.696284, 0.307775, 0.648431,
		-0.699083, 0.086011, 0.709848,
		41.498302, 41.743134, 33.915989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327957, 41.953190, 34.018414>,  <41.987659, 41.682926, 33.419094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327957, 41.953190, 34.018414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963428, 41.870647, 34.160912>,  <41.744713, 41.821121, 34.246410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963428, 41.870647, 34.160912>,  <42.327957, 41.953190, 34.018414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963428, 41.870647, 34.160912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303706, -0.921168, 0.243336,
		0.277945, 0.329951, 0.902152,
		-0.911323, -0.206355, 0.356242,
		41.690033, 41.808743, 34.267784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323059, 41.332005, 34.102638>,  <42.327957, 41.953190, 34.018414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323059, 41.332005, 34.102638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939602, 41.333580, 34.216473>,  <41.709530, 41.334526, 34.284775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939602, 41.333580, 34.216473>,  <42.323059, 41.332005, 34.102638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939602, 41.333580, 34.216473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071835, -0.964186, 0.255314,
		0.275403, 0.265198, 0.924026,
		-0.958641, 0.003937, 0.284590,
		41.652008, 41.334763, 34.301849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282799, 41.189442, 34.936756>,  <42.323059, 41.332005, 34.102638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282799, 41.189442, 34.936756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947693, 41.107510, 34.734291>,  <41.746632, 41.058350, 34.612812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947693, 41.107510, 34.734291>,  <42.282799, 41.189442, 34.936756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947693, 41.107510, 34.734291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074697, -0.961254, 0.265352,
		-0.540904, 0.184492, 0.820601,
		-0.837761, -0.204826, -0.506165,
		41.696365, 41.046062, 34.582443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952293, 40.715027, 35.281021>,  <42.282799, 41.189442, 34.936756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952293, 40.715027, 35.281021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820148, 40.649422, 34.909222>,  <41.740864, 40.610058, 34.686142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820148, 40.649422, 34.909222>,  <41.952293, 40.715027, 35.281021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820148, 40.649422, 34.909222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107572, -0.984913, 0.135554,
		-0.937705, -0.055207, 0.343017,
		-0.330358, -0.164009, -0.929497,
		41.721043, 40.600220, 34.630371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362331, 40.139450, 35.259781>,  <41.952293, 40.715027, 35.281021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362331, 40.139450, 35.259781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549213, 40.176792, 34.908096>,  <41.661343, 40.199200, 34.697086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549213, 40.176792, 34.908096>,  <41.362331, 40.139450, 35.259781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549213, 40.176792, 34.908096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029573, -0.995503, -0.089994,
		-0.883655, 0.016045, -0.467864,
		0.467204, 0.093360, -0.879207,
		41.689373, 40.204800, 34.644333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999851, 40.029510, 34.585938>,  <41.362331, 40.139450, 35.259781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999851, 40.029510, 34.585938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387863, 39.939503, 34.549244>,  <41.620670, 39.885498, 34.527225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387863, 39.939503, 34.549244>,  <40.999851, 40.029510, 34.585938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387863, 39.939503, 34.549244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210897, -0.967110, 0.142198,
		-0.120717, -0.118589, -0.985578,
		0.970026, -0.225021, -0.091736,
		41.678871, 39.871998, 34.521725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886913, 39.465969, 34.209419>,  <40.999851, 40.029510, 34.585938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886913, 39.465969, 34.209419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856750, 39.419464, 33.813278>,  <40.838654, 39.391563, 33.575592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856750, 39.419464, 33.813278>,  <40.886913, 39.465969, 34.209419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856750, 39.419464, 33.813278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797653, -0.603033, 0.010055,
		-0.598384, -0.789199, 0.138207,
		-0.075408, -0.116258, -0.990352,
		40.834129, 39.384586, 33.516174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861511, 38.731705, 33.959709>,  <40.886913, 39.465969, 34.209419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861511, 38.731705, 33.959709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009487, 38.975559, 33.679283>,  <41.098270, 39.121872, 33.511028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009487, 38.975559, 33.679283>,  <40.861511, 38.731705, 33.959709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009487, 38.975559, 33.679283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883292, -0.464707, 0.061992,
		-0.287996, -0.642176, -0.710400,
		0.369938, 0.609637, -0.701063,
		41.120468, 39.158451, 33.468964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273594, 38.311016, 33.459705>,  <40.861511, 38.731705, 33.959709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273594, 38.311016, 33.459705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402748, 38.685184, 33.517296>,  <41.480240, 38.909687, 33.551849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402748, 38.685184, 33.517296>,  <41.273594, 38.311016, 33.459705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402748, 38.685184, 33.517296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901386, -0.350314, 0.254526,
		0.288526, 0.047595, -0.956288,
		0.322887, 0.935422, 0.143976,
		41.499615, 38.965813, 33.560490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955173, 38.154697, 33.540035>,  <41.273594, 38.311016, 33.459705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955173, 38.154697, 33.540035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972603, 38.536160, 33.659126>,  <41.983059, 38.765038, 33.730579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972603, 38.536160, 33.659126>,  <41.955173, 38.154697, 33.540035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972603, 38.536160, 33.659126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962974, -0.119451, 0.241687,
		0.266050, 0.276173, -0.923551,
		0.043571, 0.953656, 0.297727,
		41.985676, 38.822258, 33.748444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438004, 38.572769, 33.118732>,  <41.955173, 38.154697, 33.540035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438004, 38.572769, 33.118732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400242, 38.693077, 33.498337>,  <42.377586, 38.765263, 33.726101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400242, 38.693077, 33.498337>,  <42.438004, 38.572769, 33.118732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400242, 38.693077, 33.498337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991675, -0.055444, 0.116219,
		0.087572, 0.952085, -0.293028,
		-0.094404, 0.300766, 0.949014,
		42.371922, 38.783306, 33.783039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821983, 39.271355, 33.228378>,  <42.438004, 38.572769, 33.118732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821983, 39.271355, 33.228378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795956, 39.020473, 33.538830>,  <42.780338, 38.869946, 33.725101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795956, 39.020473, 33.538830>,  <42.821983, 39.271355, 33.228378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795956, 39.020473, 33.538830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997835, -0.048312, 0.044615,
		0.009514, 0.777355, 0.628990,
		-0.065069, -0.627204, 0.776132,
		42.776436, 38.832314, 33.771671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118244, 39.433720, 33.904457>,  <42.821983, 39.271355, 33.228378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118244, 39.433720, 33.904457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129349, 39.046078, 33.806423>,  <43.136013, 38.813492, 33.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129349, 39.046078, 33.806423>,  <43.118244, 39.433720, 33.904457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129349, 39.046078, 33.806423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999403, 0.031948, -0.013120,
		0.020545, -0.244574, 0.969413,
		0.027762, -0.969104, -0.245084,
		43.137676, 38.755348, 33.732899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561337, 39.175831, 34.376415>,  <43.118244, 39.433720, 33.904457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561337, 39.175831, 34.376415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558048, 38.930847, 34.060234>,  <43.556076, 38.783855, 33.870525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558048, 38.930847, 34.060234>,  <43.561337, 39.175831, 34.376415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558048, 38.930847, 34.060234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986382, -0.134819, 0.094205,
		-0.164266, -0.778918, 0.605230,
		-0.008219, -0.612463, -0.790457,
		43.555584, 38.747108, 33.823097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031643, 38.619747, 34.537674>,  <43.561337, 39.175831, 34.376415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031643, 38.619747, 34.537674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014809, 38.625656, 34.138073>,  <44.004707, 38.629200, 33.898312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014809, 38.625656, 34.138073>,  <44.031643, 38.619747, 34.537674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014809, 38.625656, 34.138073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906418, -0.420043, -0.044395,
		-0.420281, -0.907384, 0.004291,
		-0.042086, 0.014769, -0.999005,
		44.002182, 38.630089, 33.838371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203835, 37.834625, 34.394989>,  <44.031643, 38.619747, 34.537674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203835, 37.834625, 34.394989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309418, 38.122425, 34.138039>,  <44.372768, 38.295105, 33.983868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309418, 38.122425, 34.138039>,  <44.203835, 37.834625, 34.394989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309418, 38.122425, 34.138039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900679, -0.422162, -0.102747,
		-0.345114, -0.551455, -0.759470,
		0.263959, 0.719497, -0.642378,
		44.388607, 38.338276, 33.945324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311077, 37.501400, 33.656040>,  <44.203835, 37.834625, 34.394989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311077, 37.501400, 33.656040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513088, 37.827591, 33.769138>,  <44.634296, 38.023304, 33.836998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513088, 37.827591, 33.769138>,  <44.311077, 37.501400, 33.656040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513088, 37.827591, 33.769138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861744, -0.458028, -0.218190,
		-0.048424, 0.353845, -0.934049,
		0.505027, 0.815477, 0.282745,
		44.664597, 38.072235, 33.853962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005829, 37.155979, 33.425888>,  <44.311077, 37.501400, 33.656040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005829, 37.155979, 33.425888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008991, 37.158112, 33.825871>,  <45.010887, 37.159389, 34.065861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008991, 37.158112, 33.825871>,  <45.005829, 37.155979, 33.425888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008991, 37.158112, 33.825871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996702, 0.080717, -0.008310,
		-0.080757, 0.996723, -0.004668,
		0.007906, 0.005323, 0.999955,
		45.011364, 37.159710, 34.125858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181232, 36.414944, 33.575371>,  <45.005829, 37.155979, 33.425888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181232, 36.414944, 33.575371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815899, 36.258232, 33.619797>,  <44.596699, 36.164204, 33.646454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815899, 36.258232, 33.619797>,  <45.181232, 36.414944, 33.575371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815899, 36.258232, 33.619797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403975, -0.906068, 0.125874,
		0.051319, 0.159833, 0.985809,
		-0.913329, -0.391782, 0.111067,
		44.541901, 36.140697, 33.653118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074070, 36.088154, 34.267181>,  <45.181232, 36.414944, 33.575371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074070, 36.088154, 34.267181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850166, 35.937283, 33.972046>,  <44.715824, 35.846760, 33.794964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850166, 35.937283, 33.972046>,  <45.074070, 36.088154, 34.267181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850166, 35.937283, 33.972046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504955, -0.861249, 0.057185,
		-0.657031, -0.340564, 0.672553,
		-0.559760, -0.377181, -0.737836,
		44.682240, 35.824127, 33.750694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539673, 35.433678, 34.377647>,  <45.074070, 36.088154, 34.267181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539673, 35.433678, 34.377647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729980, 35.450619, 34.026230>,  <44.844166, 35.460785, 33.815380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729980, 35.450619, 34.026230>,  <44.539673, 35.433678, 34.377647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729980, 35.450619, 34.026230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531819, -0.809429, 0.248984,
		-0.700577, -0.585689, -0.407629,
		0.475773, 0.042352, -0.878548,
		44.872711, 35.463326, 33.762665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600586, 34.728958, 34.028847>,  <44.539673, 35.433678, 34.377647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600586, 34.728958, 34.028847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881161, 34.960464, 33.862469>,  <45.049507, 35.099369, 33.762642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881161, 34.960464, 33.862469>,  <44.600586, 34.728958, 34.028847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881161, 34.960464, 33.862469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624920, -0.780051, -0.031543,
		-0.342717, -0.237809, -0.908841,
		0.701441, 0.578763, -0.415949,
		45.091595, 35.134094, 33.737682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894630, 34.466927, 33.393051>,  <44.600586, 34.728958, 34.028847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894630, 34.466927, 33.393051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181297, 34.691494, 33.558552>,  <45.353298, 34.826237, 33.657852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181297, 34.691494, 33.558552>,  <44.894630, 34.466927, 33.393051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181297, 34.691494, 33.558552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622043, -0.782835, -0.015221,
		0.315355, 0.268281, -0.910262,
		0.716668, 0.561422, 0.413753,
		45.396297, 34.859921, 33.682678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449055, 34.208153, 33.089977>,  <44.894630, 34.466927, 33.393051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449055, 34.208153, 33.089977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575249, 34.422440, 33.403278>,  <45.650967, 34.551010, 33.591259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575249, 34.422440, 33.403278>,  <45.449055, 34.208153, 33.089977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575249, 34.422440, 33.403278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655356, -0.719946, 0.228445,
		0.686278, 0.441236, -0.578215,
		0.315485, 0.535713, 0.783250,
		45.669895, 34.583153, 33.638252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137333, 34.168663, 32.987537>,  <45.449055, 34.208153, 33.089977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137333, 34.168663, 32.987537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073307, 34.244362, 33.375057>,  <46.034893, 34.289780, 33.607567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073307, 34.244362, 33.375057>,  <46.137333, 34.168663, 32.987537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073307, 34.244362, 33.375057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715963, -0.653388, 0.245926,
		0.679540, 0.732987, -0.030908,
		-0.160066, 0.189246, 0.968796,
		46.025288, 34.301136, 33.665695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.724010, 34.326126, 33.357677>,  <46.137333, 34.168663, 32.987537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.724010, 34.326126, 33.357677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470871, 34.176609, 33.628906>,  <46.318989, 34.086899, 33.791645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470871, 34.176609, 33.628906>,  <46.724010, 34.326126, 33.357677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470871, 34.176609, 33.628906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704930, -0.640408, 0.304878,
		0.320284, 0.670937, 0.668777,
		-0.632844, -0.373793, 0.678076,
		46.281017, 34.064472, 33.832329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025883, 34.396992, 34.023518>,  <46.724010, 34.326126, 33.357677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025883, 34.396992, 34.023518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777317, 34.084152, 34.042122>,  <46.628178, 33.896450, 34.053284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777317, 34.084152, 34.042122>,  <47.025883, 34.396992, 34.023518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777317, 34.084152, 34.042122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747853, -0.574417, 0.332808,
		-0.233572, 0.241595, 0.941847,
		-0.621417, -0.782098, 0.046510,
		46.590893, 33.849522, 34.056076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882229, 34.272064, 34.752701>,  <47.025883, 34.396992, 34.023518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882229, 34.272064, 34.752701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810490, 33.946541, 34.531593>,  <46.767445, 33.751228, 34.398930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810490, 33.946541, 34.531593>,  <46.882229, 34.272064, 34.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810490, 33.946541, 34.531593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774848, -0.463062, 0.430330,
		-0.606171, -0.351129, 0.713628,
		-0.179353, -0.813807, -0.552767,
		46.756683, 33.702400, 34.365765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.346996, 34.428165, 35.259075>,  <46.882229, 34.272064, 34.752701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.346996, 34.428165, 35.259075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229416, 34.765423, 35.078987>,  <47.158867, 34.967777, 34.970936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229416, 34.765423, 35.078987>,  <47.346996, 34.428165, 35.259075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229416, 34.765423, 35.078987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877189, 0.425060, 0.223303,
		0.379647, -0.329287, -0.864545,
		-0.293952, 0.843146, -0.450219,
		47.141232, 35.018368, 34.943920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.032677, 34.820915, 34.987122>,  <47.346996, 34.428165, 35.259075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.032677, 34.820915, 34.987122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727283, 35.072800, 35.044468>,  <47.544048, 35.223930, 35.078876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727283, 35.072800, 35.044468>,  <48.032677, 34.820915, 34.987122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.727283, 35.072800, 35.044468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642413, 0.717710, 0.268697,
		0.066310, 0.297244, -0.952496,
		-0.763484, 0.629713, 0.143363,
		47.498238, 35.261715, 35.087475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.102058, 33.971241, 24.299843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774429, 33.742836, 24.321997>,  <38.577850, 33.605793, 24.335289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774429, 33.742836, 24.321997>,  <39.102058, 33.971241, 24.299843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774429, 33.742836, 24.321997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249773, 0.441853, 0.861615,
		-0.516462, 0.691892, -0.504533,
		-0.819073, -0.571010, 0.055384,
		38.528706, 33.571533, 24.338612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571815, 34.447567, 24.379862>,  <39.102058, 33.971241, 24.299843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571815, 34.447567, 24.379862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448608, 34.088562, 24.506096>,  <38.374683, 33.873158, 24.581837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448608, 34.088562, 24.506096>,  <38.571815, 34.447567, 24.379862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448608, 34.088562, 24.506096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222664, 0.390508, 0.893266,
		-0.924956, 0.204874, -0.320128,
		-0.308020, -0.897513, 0.315585,
		38.356201, 33.819309, 24.600771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906342, 34.540592, 24.771004>,  <38.571815, 34.447567, 24.379862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906342, 34.540592, 24.771004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046566, 34.197929, 24.922390>,  <38.130703, 33.992332, 25.013222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046566, 34.197929, 24.922390>,  <37.906342, 34.540592, 24.771004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046566, 34.197929, 24.922390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189416, 0.330906, 0.924458,
		-0.917184, -0.395768, -0.046262,
		0.350563, -0.856661, 0.378467,
		38.151733, 33.940929, 25.035931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391991, 34.361057, 25.311058>,  <37.906342, 34.540592, 24.771004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391991, 34.361057, 25.311058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709229, 34.128799, 25.384651>,  <37.899570, 33.989445, 25.428806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709229, 34.128799, 25.384651>,  <37.391991, 34.361057, 25.311058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709229, 34.128799, 25.384651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208958, 0.024354, 0.977621,
		-0.572131, -0.813792, -0.102016,
		0.793096, -0.580645, 0.183982,
		37.947159, 33.954605, 25.439846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118629, 33.785427, 25.591831>,  <37.391991, 34.361057, 25.311058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118629, 33.785427, 25.591831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495510, 33.844269, 25.712236>,  <37.721638, 33.879574, 25.784479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495510, 33.844269, 25.712236>,  <37.118629, 33.785427, 25.591831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495510, 33.844269, 25.712236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309328, 0.036824, 0.950242,
		0.128705, -0.988435, 0.080200,
		0.942206, 0.147109, 0.301011,
		37.778172, 33.888401, 25.802540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099834, 33.445972, 26.231655>,  <37.118629, 33.785427, 25.591831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099834, 33.445972, 26.231655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445995, 33.645844, 26.246592>,  <37.653694, 33.765766, 26.255554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445995, 33.645844, 26.246592>,  <37.099834, 33.445972, 26.231655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445995, 33.645844, 26.246592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135112, 0.160940, 0.977672,
		0.482510, -0.851129, 0.206791,
		0.865406, 0.499677, 0.037343,
		37.705616, 33.795746, 26.257795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464146, 33.256241, 26.898230>,  <37.099834, 33.445972, 26.231655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464146, 33.256241, 26.898230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652340, 33.595173, 26.799702>,  <37.765255, 33.798534, 26.740585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652340, 33.595173, 26.799702>,  <37.464146, 33.256241, 26.898230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652340, 33.595173, 26.799702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105418, 0.331117, 0.937683,
		0.876090, -0.415197, 0.245108,
		0.470482, 0.847333, -0.246319,
		37.793484, 33.849373, 26.725805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024200, 33.375927, 27.439936>,  <37.464146, 33.256241, 26.898230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024200, 33.375927, 27.439936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924397, 33.723167, 27.268286>,  <37.864513, 33.931511, 27.165297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924397, 33.723167, 27.268286>,  <38.024200, 33.375927, 27.439936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924397, 33.723167, 27.268286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157202, 0.400951, 0.902511,
		0.955527, 0.292646, 0.036426,
		-0.249511, 0.868100, -0.429124,
		37.849545, 33.983597, 27.139549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377296, 33.833366, 27.913187>,  <38.024200, 33.375927, 27.439936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377296, 33.833366, 27.913187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122784, 34.059464, 27.703176>,  <37.970078, 34.195122, 27.577169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122784, 34.059464, 27.703176>,  <38.377296, 33.833366, 27.913187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122784, 34.059464, 27.703176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137217, 0.586792, 0.798027,
		0.759159, 0.579809, -0.295802,
		-0.636278, 0.565240, -0.525028,
		37.931900, 34.229034, 27.545668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589161, 34.548439, 28.093588>,  <38.377296, 33.833366, 27.913187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589161, 34.548439, 28.093588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211555, 34.568554, 27.963169>,  <37.984993, 34.580624, 27.884918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211555, 34.568554, 27.963169>,  <38.589161, 34.548439, 28.093588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211555, 34.568554, 27.963169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226762, 0.618929, 0.752001,
		0.239615, 0.783835, -0.572876,
		-0.944015, 0.050284, -0.326049,
		37.928352, 34.583641, 27.865355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429279, 35.197292, 28.175907>,  <38.589161, 34.548439, 28.093588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429279, 35.197292, 28.175907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068623, 35.032543, 28.123146>,  <37.852226, 34.933693, 28.091490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068623, 35.032543, 28.123146>,  <38.429279, 35.197292, 28.175907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068623, 35.032543, 28.123146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401776, 0.684869, 0.607891,
		-0.160034, 0.601098, -0.782988,
		-0.901646, -0.411869, -0.131905,
		37.798130, 34.908981, 28.083574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997082, 35.804348, 28.021183>,  <38.429279, 35.197292, 28.175907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997082, 35.804348, 28.021183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762817, 35.511021, 28.159311>,  <37.622261, 35.335022, 28.242189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762817, 35.511021, 28.159311>,  <37.997082, 35.804348, 28.021183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762817, 35.511021, 28.159311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418124, 0.638292, 0.646340,
		-0.694391, 0.234146, -0.680439,
		-0.585656, -0.733321, 0.345322,
		37.587120, 35.291023, 28.262907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349682, 36.159767, 28.142742>,  <37.997082, 35.804348, 28.021183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349682, 36.159767, 28.142742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356892, 35.825249, 28.361937>,  <37.361217, 35.624538, 28.493454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356892, 35.825249, 28.361937>,  <37.349682, 36.159767, 28.142742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356892, 35.825249, 28.361937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268674, 0.523865, 0.808319,
		-0.963063, -0.161801, -0.215246,
		0.018027, -0.836293, 0.547986,
		37.362301, 35.574360, 28.526333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792233, 36.207817, 28.541656>,  <37.349682, 36.159767, 28.142742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792233, 36.207817, 28.541656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028679, 35.941135, 28.723244>,  <37.170547, 35.781128, 28.832197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028679, 35.941135, 28.723244>,  <36.792233, 36.207817, 28.541656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028679, 35.941135, 28.723244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031240, 0.581331, 0.813067,
		-0.805980, -0.466437, 0.364463,
		0.591118, -0.666702, 0.453969,
		37.206013, 35.741123, 28.859434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585712, 36.274017, 29.300653>,  <36.792233, 36.207817, 28.541656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585712, 36.274017, 29.300653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928932, 36.069107, 29.315264>,  <37.134865, 35.946163, 29.324030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928932, 36.069107, 29.315264>,  <36.585712, 36.274017, 29.300653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928932, 36.069107, 29.315264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222074, 0.434213, 0.873007,
		-0.463079, -0.740968, 0.486337,
		0.858045, -0.512274, 0.036525,
		37.186344, 35.915424, 29.326221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664768, 35.930756, 30.062534>,  <36.585712, 36.274017, 29.300653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664768, 35.930756, 30.062534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028809, 35.954239, 29.898449>,  <37.247231, 35.968327, 29.799997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028809, 35.954239, 29.898449>,  <36.664768, 35.930756, 30.062534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028809, 35.954239, 29.898449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322972, 0.519734, 0.790927,
		0.259632, -0.852309, 0.454050,
		0.910099, 0.058704, -0.410211,
		37.301838, 35.971851, 29.775385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200794, 35.768845, 30.660271>,  <36.664768, 35.930756, 30.062534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200794, 35.768845, 30.660271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393658, 35.963329, 30.368757>,  <37.509377, 36.080021, 30.193850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393658, 35.963329, 30.368757>,  <37.200794, 35.768845, 30.660271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393658, 35.963329, 30.368757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494986, 0.535176, 0.684526,
		0.722849, -0.690788, 0.017374,
		0.482161, 0.486209, -0.728781,
		37.538307, 36.109192, 30.150124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700603, 35.960526, 31.047794>,  <37.200794, 35.768845, 30.660271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700603, 35.960526, 31.047794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724369, 36.173199, 30.709850>,  <37.738628, 36.300800, 30.507084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724369, 36.173199, 30.709850>,  <37.700603, 35.960526, 31.047794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724369, 36.173199, 30.709850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181676, 0.826458, 0.532879,
		0.981562, -0.185153, -0.047488,
		0.059417, 0.531681, -0.844858,
		37.742195, 36.332703, 30.456392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388218, 36.186039, 31.028656>,  <37.700603, 35.960526, 31.047794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388218, 36.186039, 31.028656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151230, 36.420502, 30.807606>,  <38.009037, 36.561180, 30.674976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151230, 36.420502, 30.807606>,  <38.388218, 36.186039, 31.028656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151230, 36.420502, 30.807606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371367, 0.807476, 0.458333,
		0.714888, 0.066322, -0.696087,
		-0.592471, 0.586160, -0.552625,
		37.973488, 36.596352, 30.641819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802204, 36.736458, 31.053162>,  <38.388218, 36.186039, 31.028656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802204, 36.736458, 31.053162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455597, 36.887562, 30.922663>,  <38.247631, 36.978226, 30.844364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455597, 36.887562, 30.922663>,  <38.802204, 36.736458, 31.053162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455597, 36.887562, 30.922663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160606, 0.829871, 0.534340,
		0.472597, 0.410620, -0.779772,
		-0.866521, 0.377763, -0.326246,
		38.195641, 37.000893, 30.824789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964226, 37.368954, 30.931650>,  <38.802204, 36.736458, 31.053162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964226, 37.368954, 30.931650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567791, 37.349373, 30.981220>,  <38.329929, 37.337624, 31.010962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567791, 37.349373, 30.981220>,  <38.964226, 37.368954, 30.931650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567791, 37.349373, 30.981220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023423, 0.851558, 0.523736,
		-0.131169, 0.521969, -0.842818,
		-0.991083, -0.048956, 0.123924,
		38.270466, 37.334686, 31.018398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132431, 38.100288, 31.104967>,  <38.964226, 37.368954, 30.931650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132431, 38.100288, 31.104967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.464603, 38.321457, 31.077656>,  <39.663906, 38.454159, 31.061270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.464603, 38.321457, 31.077656>,  <39.132431, 38.100288, 31.104967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464603, 38.321457, 31.077656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366906, -0.634997, -0.679823,
		-0.419246, 0.539494, -0.730192,
		0.830429, 0.552925, -0.068276,
		39.713734, 38.487335, 31.057173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196644, 38.186779, 30.328362>,  <39.132431, 38.100288, 31.104967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196644, 38.186779, 30.328362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544750, 38.281296, 30.501244>,  <39.753613, 38.338005, 30.604973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544750, 38.281296, 30.501244>,  <39.196644, 38.186779, 30.328362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544750, 38.281296, 30.501244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492579, -0.418278, -0.763158,
		0.000455, 0.877047, -0.480405,
		0.870268, 0.236290, 0.432205,
		39.805832, 38.352184, 30.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544533, 38.496651, 29.872217>,  <39.196644, 38.186779, 30.328362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544533, 38.496651, 29.872217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842739, 38.401054, 30.121084>,  <40.021664, 38.343697, 30.270405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842739, 38.401054, 30.121084>,  <39.544533, 38.496651, 29.872217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842739, 38.401054, 30.121084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492642, -0.431145, -0.755922,
		0.448904, 0.870056, -0.203686,
		0.745512, -0.238992, 0.622169,
		40.066391, 38.329357, 30.307735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167896, 38.738476, 29.581629>,  <39.544533, 38.496651, 29.872217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167896, 38.738476, 29.581629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.289669, 38.432915, 29.809231>,  <40.362732, 38.249577, 29.945793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.289669, 38.432915, 29.809231>,  <40.167896, 38.738476, 29.581629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289669, 38.432915, 29.809231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400402, -0.439393, -0.804122,
		0.864290, 0.472633, 0.172104,
		0.304434, -0.763906, 0.569006,
		40.381001, 38.203743, 29.979933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894115, 38.627541, 29.559776>,  <40.167896, 38.738476, 29.581629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894115, 38.627541, 29.559776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751484, 38.272034, 29.674976>,  <40.665905, 38.058727, 29.744097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751484, 38.272034, 29.674976>,  <40.894115, 38.627541, 29.559776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751484, 38.272034, 29.674976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477683, -0.438358, -0.761354,
		0.802915, -0.133909, 0.580858,
		-0.356576, -0.888769, 0.287998,
		40.644512, 38.005402, 29.761375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402390, 38.187866, 29.392332>,  <40.894115, 38.627541, 29.559776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402390, 38.187866, 29.392332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092964, 37.941841, 29.453384>,  <40.907310, 37.794228, 29.490015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092964, 37.941841, 29.453384>,  <41.402390, 38.187866, 29.392332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092964, 37.941841, 29.453384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358903, -0.623707, -0.694390,
		0.522292, -0.482375, 0.703225,
		-0.773563, -0.615064, 0.152631,
		40.860893, 37.757320, 29.499174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735600, 37.435375, 29.182207>,  <41.402390, 38.187866, 29.392332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735600, 37.435375, 29.182207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.344959, 37.366112, 29.233212>,  <41.110573, 37.324554, 29.263815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.344959, 37.366112, 29.233212>,  <41.735600, 37.435375, 29.182207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344959, 37.366112, 29.233212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035957, -0.716113, -0.697057,
		0.212015, -0.676164, 0.705586,
		-0.976605, -0.173158, 0.127514,
		41.051979, 37.314163, 29.271465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718254, 36.744678, 29.335012>,  <41.735600, 37.435375, 29.182207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718254, 36.744678, 29.335012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381836, 36.873943, 29.161480>,  <41.179985, 36.951504, 29.057360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381836, 36.873943, 29.161480>,  <41.718254, 36.744678, 29.335012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381836, 36.873943, 29.161480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019954, -0.782881, -0.621851,
		-0.540598, -0.531661, 0.651990,
		-0.841044, 0.323162, -0.433832,
		41.129524, 36.970890, 29.031330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243881, 36.180077, 29.193850>,  <41.718254, 36.744678, 29.335012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243881, 36.180077, 29.193850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.115623, 36.459988, 28.938509>,  <41.038670, 36.627934, 28.785305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.115623, 36.459988, 28.938509>,  <41.243881, 36.180077, 29.193850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115623, 36.459988, 28.938509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018458, -0.678426, -0.734436,
		-0.947019, -0.223712, 0.230451,
		-0.320646, 0.699779, -0.638353,
		41.019428, 36.669922, 28.747004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714176, 35.794838, 28.830811>,  <41.243881, 36.180077, 29.193850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714176, 35.794838, 28.830811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.804356, 36.102074, 28.591074>,  <40.858463, 36.286415, 28.447231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.804356, 36.102074, 28.591074>,  <40.714176, 35.794838, 28.830811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804356, 36.102074, 28.591074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160872, -0.636085, -0.754663,
		-0.960881, 0.073723, -0.266970,
		0.225452, 0.768089, -0.599341,
		40.871990, 36.332500, 28.411272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436356, 35.667526, 28.148800>,  <40.714176, 35.794838, 28.830811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436356, 35.667526, 28.148800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706326, 35.942402, 28.041285>,  <40.868305, 36.107327, 27.976774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706326, 35.942402, 28.041285>,  <40.436356, 35.667526, 28.148800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706326, 35.942402, 28.041285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262692, -0.564171, -0.782754,
		-0.689545, 0.457690, -0.561291,
		0.674923, 0.687191, -0.268789,
		40.908802, 36.148560, 27.960648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286751, 35.910000, 27.507708>,  <40.436356, 35.667526, 28.148800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286751, 35.910000, 27.507708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674763, 35.996933, 27.551189>,  <40.907570, 36.049091, 27.577278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674763, 35.996933, 27.551189>,  <40.286751, 35.910000, 27.507708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674763, 35.996933, 27.551189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189741, -0.397927, -0.897581,
		-0.151813, 0.891304, -0.427236,
		0.970026, 0.217329, 0.108706,
		40.965771, 36.062130, 27.583801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472805, 36.268589, 26.924622>,  <40.286751, 35.910000, 27.507708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472805, 36.268589, 26.924622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818123, 36.114979, 27.055613>,  <41.025314, 36.022812, 27.134207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818123, 36.114979, 27.055613>,  <40.472805, 36.268589, 26.924622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818123, 36.114979, 27.055613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250782, -0.236677, -0.938665,
		0.437977, 0.892474, -0.108017,
		0.863299, -0.384025, 0.327475,
		41.077114, 35.999771, 27.153854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998264, 36.597183, 26.559122>,  <40.472805, 36.268589, 26.924622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998264, 36.597183, 26.559122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.146461, 36.251713, 26.695824>,  <41.235382, 36.044430, 26.777843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.146461, 36.251713, 26.695824>,  <40.998264, 36.597183, 26.559122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146461, 36.251713, 26.695824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447424, -0.156485, -0.880525,
		0.813968, 0.479139, 0.328453,
		0.370497, -0.863677, 0.341752,
		41.257610, 35.992611, 26.798349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503490, 36.522678, 26.065670>,  <40.998264, 36.597183, 26.559122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503490, 36.522678, 26.065670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.489883, 36.177982, 26.268152>,  <41.481720, 35.971165, 26.389641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.489883, 36.177982, 26.268152>,  <41.503490, 36.522678, 26.065670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489883, 36.177982, 26.268152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325095, -0.488492, -0.809746,
		0.945069, 0.137020, 0.296765,
		-0.034016, -0.861743, 0.506204,
		41.479679, 35.919460, 26.420013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039391, 36.156105, 25.815905>,  <41.503490, 36.522678, 26.065670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039391, 36.156105, 25.815905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.768368, 35.898220, 25.957476>,  <41.605755, 35.743488, 26.042418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.768368, 35.898220, 25.957476>,  <42.039391, 36.156105, 25.815905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768368, 35.898220, 25.957476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117440, -0.569890, -0.813286,
		0.726037, -0.509479, 0.461846,
		-0.677553, -0.644715, 0.353928,
		41.565102, 35.704807, 26.063654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253941, 35.453770, 25.482929>,  <42.039391, 36.156105, 25.815905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253941, 35.453770, 25.482929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.883137, 35.367466, 25.605631>,  <41.660656, 35.315681, 25.679251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.883137, 35.367466, 25.605631>,  <42.253941, 35.453770, 25.482929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883137, 35.367466, 25.605631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134908, -0.571331, -0.809556,
		0.349930, -0.791850, 0.500522,
		-0.927011, -0.215763, 0.306752,
		41.605034, 35.302738, 25.697657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268524, 34.693775, 25.389339>,  <42.253941, 35.453770, 25.482929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268524, 34.693775, 25.389339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.887871, 34.814262, 25.413559>,  <41.659481, 34.886555, 25.428091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.887871, 34.814262, 25.413559>,  <42.268524, 34.693775, 25.389339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887871, 34.814262, 25.413559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245372, -0.626499, -0.739791,
		-0.184905, -0.718865, 0.670107,
		-0.951632, 0.301217, 0.060546,
		41.602383, 34.904629, 25.431723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825050, 34.126316, 25.432878>,  <42.268524, 34.693775, 25.389339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825050, 34.126316, 25.432878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.575417, 34.410133, 25.301996>,  <41.425636, 34.580425, 25.223467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.575417, 34.410133, 25.301996>,  <41.825050, 34.126316, 25.432878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575417, 34.410133, 25.301996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172836, -0.533756, -0.827788,
		-0.762001, -0.460057, 0.455744,
		-0.624086, 0.709544, -0.327207,
		41.388191, 34.622997, 25.203835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.144318, 33.757935, 25.107220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.117615, 34.133404, 24.971907>,  <41.101593, 34.358685, 24.890718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.117615, 34.133404, 24.971907>,  <41.144318, 33.757935, 25.107220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117615, 34.133404, 24.971907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173303, -0.344793, -0.922542,
		-0.982604, -0.002957, 0.185690,
		-0.066753, 0.938674, -0.338282,
		41.097588, 34.415005, 24.870422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471081, 33.849941, 24.725296>,  <41.144318, 33.757935, 25.107220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471081, 33.849941, 24.725296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697926, 34.148464, 24.585918>,  <40.834030, 34.327579, 24.502291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697926, 34.148464, 24.585918>,  <40.471081, 33.849941, 24.725296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697926, 34.148464, 24.585918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147354, -0.324296, -0.934408,
		-0.810355, 0.581256, -0.073940,
		0.567109, 0.746307, -0.348445,
		40.868057, 34.372356, 24.481384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989315, 34.184994, 24.248348>,  <40.471081, 33.849941, 24.725296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989315, 34.184994, 24.248348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353371, 34.297909, 24.127045>,  <40.571804, 34.365658, 24.054262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353371, 34.297909, 24.127045>,  <39.989315, 34.184994, 24.248348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353371, 34.297909, 24.127045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251958, -0.203944, -0.946004,
		-0.328893, 0.937401, -0.114493,
		0.910136, 0.282287, -0.303261,
		40.626411, 34.382595, 24.036066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860481, 34.554062, 23.670193>,  <39.989315, 34.184994, 24.248348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860481, 34.554062, 23.670193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246605, 34.453350, 23.642540>,  <40.478279, 34.392921, 23.625948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246605, 34.453350, 23.642540>,  <39.860481, 34.554062, 23.670193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246605, 34.453350, 23.642540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105278, -0.133036, -0.985504,
		0.238931, 0.958597, -0.154928,
		0.965313, -0.251778, -0.069132,
		40.536198, 34.377815, 23.621799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163605, 34.893543, 23.115734>,  <39.860481, 34.554062, 23.670193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163605, 34.893543, 23.115734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.406857, 34.577522, 23.146673>,  <40.552807, 34.387909, 23.165237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.406857, 34.577522, 23.146673>,  <40.163605, 34.893543, 23.115734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406857, 34.577522, 23.146673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055135, -0.139237, -0.988723,
		0.791917, 0.597012, -0.128234,
		0.608134, -0.790057, 0.077348,
		40.589298, 34.340504, 23.169878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703011, 34.979595, 22.598097>,  <40.163605, 34.893543, 23.115734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703011, 34.979595, 22.598097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638817, 34.599499, 22.704901>,  <40.600300, 34.371441, 22.768984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638817, 34.599499, 22.704901>,  <40.703011, 34.979595, 22.598097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638817, 34.599499, 22.704901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161101, -0.241673, -0.956891,
		0.973803, -0.196578, -0.114301,
		-0.160481, -0.950237, 0.267011,
		40.590672, 34.314426, 22.785004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248135, 34.566566, 22.222376>,  <40.703011, 34.979595, 22.598097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248135, 34.566566, 22.222376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951679, 34.322330, 22.334013>,  <40.773808, 34.175789, 22.400995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951679, 34.322330, 22.334013>,  <41.248135, 34.566566, 22.222376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951679, 34.322330, 22.334013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095935, -0.315131, -0.944187,
		0.664464, -0.726547, 0.174978,
		-0.741137, -0.610592, 0.279094,
		40.729340, 34.139153, 22.417742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289131, 34.058895, 21.846170>,  <41.248135, 34.566566, 22.222376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289131, 34.058895, 21.846170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.924644, 33.947750, 21.967812>,  <40.705952, 33.881062, 22.040796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.924644, 33.947750, 21.967812>,  <41.289131, 34.058895, 21.846170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924644, 33.947750, 21.967812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207176, -0.328944, -0.921344,
		0.356042, -0.902545, 0.242172,
		-0.911215, -0.277865, 0.304103,
		40.651279, 33.864391, 22.059042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199066, 33.344765, 21.559813>,  <41.289131, 34.058895, 21.846170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199066, 33.344765, 21.559813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.836979, 33.492039, 21.644682>,  <40.619724, 33.580402, 21.695604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.836979, 33.492039, 21.644682>,  <41.199066, 33.344765, 21.559813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836979, 33.492039, 21.644682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314605, -0.245023, -0.917054,
		-0.285659, -0.896886, 0.337632,
		-0.905220, 0.368185, 0.212172,
		40.565414, 33.602493, 21.708334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711906, 32.801712, 21.394438>,  <41.199066, 33.344765, 21.559813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711906, 32.801712, 21.394438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.491463, 33.135349, 21.384930>,  <40.359196, 33.335533, 21.379225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.491463, 33.135349, 21.384930>,  <40.711906, 32.801712, 21.394438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491463, 33.135349, 21.384930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131328, -0.114835, -0.984665,
		-0.824031, -0.539540, 0.172827,
		-0.551113, 0.834092, -0.023771,
		40.326130, 33.385578, 21.377798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012012, 32.642403, 21.193897>,  <40.711906, 32.801712, 21.394438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012012, 32.642403, 21.193897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022972, 33.037617, 21.133184>,  <40.029549, 33.274746, 21.096756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022972, 33.037617, 21.133184>,  <40.012012, 32.642403, 21.193897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022972, 33.037617, 21.133184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247076, -0.140436, -0.958765,
		-0.968609, 0.063769, 0.240272,
		0.027397, 0.988034, -0.151783,
		40.031193, 33.334026, 21.087650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366821, 32.849632, 20.921993>,  <40.012012, 32.642403, 21.193897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366821, 32.849632, 20.921993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641083, 33.116447, 20.805408>,  <39.805637, 33.276535, 20.735458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641083, 33.116447, 20.805408>,  <39.366821, 32.849632, 20.921993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641083, 33.116447, 20.805408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275200, -0.133152, -0.952122,
		-0.673906, 0.733032, 0.092272,
		0.685650, 0.667034, -0.291462,
		39.846779, 33.316559, 20.717970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146004, 33.110817, 20.271383>,  <39.366821, 32.849632, 20.921993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146004, 33.110817, 20.271383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510170, 33.276184, 20.277473>,  <39.728668, 33.375404, 20.281128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510170, 33.276184, 20.277473>,  <39.146004, 33.110817, 20.271383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510170, 33.276184, 20.277473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021453, -0.010429, -0.999715,
		-0.413146, 0.910480, -0.018364,
		0.910412, 0.413422, 0.015224,
		39.783295, 33.400211, 20.282040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186623, 33.765247, 19.939274>,  <39.146004, 33.110817, 20.271383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186623, 33.765247, 19.939274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.537621, 33.576080, 19.907393>,  <39.748219, 33.462582, 19.888264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.537621, 33.576080, 19.907393>,  <39.186623, 33.765247, 19.939274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537621, 33.576080, 19.907393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029479, 0.112687, -0.993193,
		0.478677, 0.873873, 0.084941,
		0.877496, -0.472914, -0.079702,
		39.800869, 33.434208, 19.883482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529419, 34.187717, 19.445967>,  <39.186623, 33.765247, 19.939274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529419, 34.187717, 19.445967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757317, 33.860634, 19.478809>,  <39.894054, 33.664383, 19.498514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757317, 33.860634, 19.478809>,  <39.529419, 34.187717, 19.445967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757317, 33.860634, 19.478809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203488, 0.043570, -0.978107,
		0.796232, 0.573978, 0.191218,
		0.569744, -0.817711, 0.082106,
		39.928238, 33.615322, 19.503441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120502, 34.329311, 19.019789>,  <39.529419, 34.187717, 19.445967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120502, 34.329311, 19.019789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151814, 33.938541, 19.099270>,  <40.170601, 33.704079, 19.146959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151814, 33.938541, 19.099270>,  <40.120502, 34.329311, 19.019789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151814, 33.938541, 19.099270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475500, -0.138595, -0.868730,
		0.876226, 0.162485, 0.453681,
		0.078278, -0.976929, 0.198702,
		40.175297, 33.645462, 19.158880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845310, 34.185562, 18.847628>,  <40.120502, 34.329311, 19.019789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845310, 34.185562, 18.847628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.621738, 33.854393, 18.829123>,  <40.487595, 33.655689, 18.818020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.621738, 33.854393, 18.829123>,  <40.845310, 34.185562, 18.847628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621738, 33.854393, 18.829123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331844, -0.172198, -0.927484,
		0.759922, -0.533748, 0.370988,
		-0.558926, -0.827926, -0.046264,
		40.454060, 33.606014, 18.815243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308861, 33.621521, 18.612160>,  <40.845310, 34.185562, 18.847628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308861, 33.621521, 18.612160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.928707, 33.524895, 18.533766>,  <40.700615, 33.466919, 18.486729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.928707, 33.524895, 18.533766>,  <41.308861, 33.621521, 18.612160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928707, 33.524895, 18.533766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240860, -0.172768, -0.955059,
		0.196847, -0.954881, 0.222380,
		-0.950388, -0.241563, -0.195984,
		40.643589, 33.452427, 18.474970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353134, 32.950653, 18.321255>,  <41.308861, 33.621521, 18.612160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353134, 32.950653, 18.321255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998657, 33.103111, 18.215887>,  <40.785973, 33.194588, 18.152666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998657, 33.103111, 18.215887>,  <41.353134, 32.950653, 18.321255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998657, 33.103111, 18.215887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175144, -0.250775, -0.952069,
		-0.428942, -0.889851, 0.155478,
		-0.886191, 0.381151, -0.263420,
		40.732800, 33.217457, 18.136862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060440, 32.429916, 17.903372>,  <41.353134, 32.950653, 18.321255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060440, 32.429916, 17.903372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.888588, 32.778271, 17.807888>,  <40.785477, 32.987282, 17.750599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.888588, 32.778271, 17.807888>,  <41.060440, 32.429916, 17.903372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888588, 32.778271, 17.807888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074936, -0.229052, -0.970526,
		-0.899890, -0.434856, 0.033147,
		-0.429631, 0.870882, -0.238708,
		40.759697, 33.039536, 17.736275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747242, 32.177010, 17.282188>,  <41.060440, 32.429916, 17.903372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747242, 32.177010, 17.282188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706959, 32.574921, 17.275528>,  <40.682789, 32.813667, 17.271532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706959, 32.574921, 17.275528>,  <40.747242, 32.177010, 17.282188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706959, 32.574921, 17.275528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046857, -0.011977, -0.998830,
		-0.993812, -0.101368, -0.045407,
		-0.100706, 0.994777, -0.016653,
		40.676746, 32.873352, 17.270533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935871, 31.439714, 17.245562>,  <40.747242, 32.177010, 17.282188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935871, 31.439714, 17.245562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046070, 31.079132, 17.379112>,  <41.112190, 30.862782, 17.459242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046070, 31.079132, 17.379112>,  <40.935871, 31.439714, 17.245562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046070, 31.079132, 17.379112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958755, -0.282925, 0.027231,
		0.069914, -0.327607, -0.942224,
		0.275500, -0.901458, 0.333876,
		41.128719, 30.808695, 17.479275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654617, 30.990709, 16.829760>,  <40.935871, 31.439714, 17.245562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654617, 30.990709, 16.829760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693760, 30.833952, 17.195677>,  <40.717247, 30.739897, 17.415226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693760, 30.833952, 17.195677>,  <40.654617, 30.990709, 16.829760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693760, 30.833952, 17.195677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983717, -0.177327, 0.029263,
		0.150750, -0.902760, -0.402864,
		0.097856, -0.391893, 0.914792,
		40.723118, 30.716385, 17.470114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901855, 30.540192, 16.791771>,  <40.654617, 30.990709, 16.829760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901855, 30.540192, 16.791771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524433, 30.409597, 16.769489>,  <39.297977, 30.331242, 16.756121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524433, 30.409597, 16.769489>,  <39.901855, 30.540192, 16.791771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524433, 30.409597, 16.769489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277637, 0.687985, 0.670518,
		-0.180588, 0.648140, -0.739799,
		-0.943560, -0.326483, -0.055706,
		39.241364, 30.311653, 16.752777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444012, 31.130465, 16.688745>,  <39.901855, 30.540192, 16.791771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444012, 31.130465, 16.688745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237602, 30.835077, 16.862358>,  <39.113754, 30.657845, 16.966526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237602, 30.835077, 16.862358>,  <39.444012, 31.130465, 16.688745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237602, 30.835077, 16.862358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365338, 0.648051, 0.668250,
		-0.774754, 0.186268, -0.604202,
		-0.516028, -0.738467, 0.434029,
		39.082794, 30.613537, 16.992567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885258, 31.454847, 16.828959>,  <39.444012, 31.130465, 16.688745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885258, 31.454847, 16.828959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930721, 31.129719, 17.057484>,  <38.958000, 30.934641, 17.194599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930721, 31.129719, 17.057484>,  <38.885258, 31.454847, 16.828959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930721, 31.129719, 17.057484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359665, 0.502375, 0.786295,
		-0.926133, -0.294852, -0.235245,
		0.113660, -0.812823, 0.571314,
		38.964821, 30.885872, 17.228878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282761, 31.390921, 17.242334>,  <38.885258, 31.454847, 16.828959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282761, 31.390921, 17.242334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.555225, 31.171062, 17.435787>,  <38.718704, 31.039146, 17.551859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.555225, 31.171062, 17.435787>,  <38.282761, 31.390921, 17.242334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555225, 31.171062, 17.435787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384338, 0.293786, 0.875200,
		-0.623136, -0.782035, -0.011133,
		0.681166, -0.549647, 0.483634,
		38.759575, 31.006168, 17.580877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838909, 31.142553, 17.657919>,  <38.282761, 31.390921, 17.242334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838909, 31.142553, 17.657919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.210052, 31.087078, 17.796391>,  <38.432739, 31.053793, 17.879473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.210052, 31.087078, 17.796391>,  <37.838909, 31.142553, 17.657919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210052, 31.087078, 17.796391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291941, 0.307471, 0.905667,
		-0.232046, -0.941396, 0.244801,
		0.927861, -0.138689, 0.346179,
		38.488411, 31.045471, 17.900244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804276, 30.743773, 18.266706>,  <37.838909, 31.142553, 17.657919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804276, 30.743773, 18.266706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152893, 30.932108, 18.321438>,  <38.362064, 31.045109, 18.354277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152893, 30.932108, 18.321438>,  <37.804276, 30.743773, 18.266706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152893, 30.932108, 18.321438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312774, 0.318959, 0.894672,
		0.377602, -0.822543, 0.425253,
		0.871544, 0.470838, 0.136831,
		38.414356, 31.073360, 18.362488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085735, 30.514217, 18.902512>,  <37.804276, 30.743773, 18.266706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085735, 30.514217, 18.902512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269386, 30.863064, 18.834848>,  <38.379578, 31.072371, 18.794250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269386, 30.863064, 18.834848>,  <38.085735, 30.514217, 18.902512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269386, 30.863064, 18.834848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142481, 0.260240, 0.954973,
		0.876868, -0.414356, 0.243744,
		0.459132, 0.872114, -0.169159,
		38.407127, 31.124699, 18.784101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507328, 30.606754, 19.529848>,  <38.085735, 30.514217, 18.902512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507328, 30.606754, 19.529848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412373, 30.948610, 19.345137>,  <38.355400, 31.153723, 19.234310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412373, 30.948610, 19.345137>,  <38.507328, 30.606754, 19.529848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412373, 30.948610, 19.345137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255969, 0.403535, 0.878430,
		0.937085, 0.326729, 0.122967,
		-0.237387, 0.854639, -0.461779,
		38.341156, 31.205002, 19.206602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664314, 30.969425, 19.997503>,  <38.507328, 30.606754, 19.529848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664314, 30.969425, 19.997503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475319, 31.240597, 19.772234>,  <38.361919, 31.403299, 19.637074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475319, 31.240597, 19.772234>,  <38.664314, 30.969425, 19.997503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475319, 31.240597, 19.772234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229439, 0.522349, 0.821285,
		0.850946, 0.517264, -0.091262,
		-0.472492, 0.677930, -0.563171,
		38.333572, 31.443975, 19.603283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912624, 31.632341, 20.261900>,  <38.664314, 30.969425, 19.997503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912624, 31.632341, 20.261900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566868, 31.704378, 20.074112>,  <38.359413, 31.747601, 19.961439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566868, 31.704378, 20.074112>,  <38.912624, 31.632341, 20.261900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566868, 31.704378, 20.074112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293130, 0.578118, 0.761482,
		0.408544, 0.795831, -0.446928,
		-0.864388, 0.180091, -0.469469,
		38.307552, 31.758406, 19.933271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914913, 32.351852, 20.218443>,  <38.912624, 31.632341, 20.261900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914913, 32.351852, 20.218443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547771, 32.193661, 20.204967>,  <38.327484, 32.098747, 20.196882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547771, 32.193661, 20.204967>,  <38.914913, 32.351852, 20.218443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547771, 32.193661, 20.204967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230184, 0.461236, 0.856899,
		-0.323348, 0.794265, -0.514382,
		-0.917857, -0.395479, -0.033688,
		38.272415, 32.075016, 20.194860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441830, 32.847092, 20.207012>,  <38.914913, 32.351852, 20.218443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441830, 32.847092, 20.207012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227684, 32.544014, 20.356295>,  <38.099197, 32.362167, 20.445864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227684, 32.544014, 20.356295>,  <38.441830, 32.847092, 20.207012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227684, 32.544014, 20.356295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255592, 0.566480, 0.783437,
		-0.805019, 0.324038, -0.496935,
		-0.535367, -0.757694, 0.373205,
		38.067074, 32.316708, 20.468256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766182, 33.134369, 20.318693>,  <38.441830, 32.847092, 20.207012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766182, 33.134369, 20.318693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842648, 32.812115, 20.542982>,  <37.888527, 32.618763, 20.677555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842648, 32.812115, 20.542982>,  <37.766182, 33.134369, 20.318693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842648, 32.812115, 20.542982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140332, 0.542956, 0.827953,
		-0.971474, -0.236964, -0.009261,
		0.191167, -0.805635, 0.560721,
		37.899998, 32.570423, 20.711199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554920, 33.327484, 20.950277>,  <37.766182, 33.134369, 20.318693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554920, 33.327484, 20.950277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717049, 32.975910, 21.050835>,  <37.814323, 32.764965, 21.111170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717049, 32.975910, 21.050835>,  <37.554920, 33.327484, 20.950277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717049, 32.975910, 21.050835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130382, 0.327763, 0.935720,
		-0.904831, -0.346486, 0.247444,
		0.405317, -0.878930, 0.251394,
		37.838642, 32.712231, 21.126253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260387, 33.132957, 21.526539>,  <37.554920, 33.327484, 20.950277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260387, 33.132957, 21.526539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600960, 32.923340, 21.534851>,  <37.805305, 32.797569, 21.539839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600960, 32.923340, 21.534851>,  <37.260387, 33.132957, 21.526539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600960, 32.923340, 21.534851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121994, 0.236429, 0.963960,
		-0.510073, -0.818215, 0.265234,
		0.851436, -0.524047, 0.020778,
		37.856392, 32.766125, 21.541084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225292, 32.640587, 22.055735>,  <37.260387, 33.132957, 21.526539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225292, 32.640587, 22.055735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618546, 32.689106, 22.000988>,  <37.854496, 32.718220, 21.968140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618546, 32.689106, 22.000988>,  <37.225292, 32.640587, 22.055735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618546, 32.689106, 22.000988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115387, 0.169200, 0.978804,
		0.141886, -0.978089, 0.152350,
		0.983135, 0.121299, -0.136866,
		37.913486, 32.725498, 21.959929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474270, 32.443718, 22.670328>,  <37.225292, 32.640587, 22.055735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474270, 32.443718, 22.670328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809639, 32.612873, 22.532804>,  <38.010860, 32.714367, 22.450291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809639, 32.612873, 22.532804>,  <37.474270, 32.443718, 22.670328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809639, 32.612873, 22.532804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265583, 0.233847, 0.935297,
		0.475930, -0.875487, 0.083750,
		0.838425, 0.422894, -0.343809,
		38.061165, 32.739742, 22.429661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018345, 32.100960, 23.021545>,  <37.474270, 32.443718, 22.670328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018345, 32.100960, 23.021545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148521, 32.462551, 22.910620>,  <38.226627, 32.679508, 22.844065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148521, 32.462551, 22.910620>,  <38.018345, 32.100960, 23.021545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148521, 32.462551, 22.910620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314835, 0.172950, 0.933256,
		0.891609, -0.391029, -0.228320,
		0.325443, 0.903983, -0.277313,
		38.246155, 32.733746, 22.827425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692623, 32.193104, 23.364040>,  <38.018345, 32.100960, 23.021545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692623, 32.193104, 23.364040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566624, 32.561874, 23.273863>,  <38.491024, 32.783138, 23.219757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566624, 32.561874, 23.273863>,  <38.692623, 32.193104, 23.364040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566624, 32.561874, 23.273863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241982, 0.307698, 0.920199,
		0.917726, 0.235308, -0.320014,
		-0.314998, 0.921929, -0.225443,
		38.472126, 32.838451, 23.206230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248730, 32.747097, 23.538057>,  <38.692623, 32.193104, 23.364040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248730, 32.747097, 23.538057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900459, 32.943146, 23.554544>,  <38.691498, 33.060776, 23.564436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900459, 32.943146, 23.554544>,  <39.248730, 32.747097, 23.538057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900459, 32.943146, 23.554544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252773, 0.374001, 0.892317,
		0.421929, 0.787340, -0.449524,
		-0.870679, 0.490121, 0.041216,
		38.639256, 33.090183, 23.566910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376064, 33.305763, 24.069893>,  <39.248730, 32.747097, 23.538057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376064, 33.305763, 24.069893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.978558, 33.289043, 24.028561>,  <38.740051, 33.279011, 24.003761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.978558, 33.289043, 24.028561>,  <39.376064, 33.305763, 24.069893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978558, 33.289043, 24.028561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111013, 0.287954, 0.951188,
		-0.010003, 0.956731, -0.290800,
		-0.993769, -0.041798, -0.103330,
		38.680428, 33.276505, 23.997562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.244194, 35.629482, 27.553904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875992, 35.730949, 27.435028>,  <41.655071, 35.791828, 27.363703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875992, 35.730949, 27.435028>,  <42.244194, 35.629482, 27.553904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875992, 35.730949, 27.435028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109016, 0.563666, 0.818777,
		0.375213, 0.786088, -0.491204,
		-0.920506, 0.253667, -0.297191,
		41.599838, 35.807049, 27.345871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215836, 36.335491, 27.564278>,  <42.244194, 35.629482, 27.553904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215836, 36.335491, 27.564278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821217, 36.270187, 27.567577>,  <41.584446, 36.231007, 27.569557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821217, 36.270187, 27.567577>,  <42.215836, 36.335491, 27.564278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821217, 36.270187, 27.567577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119948, 0.757263, 0.642001,
		-0.111062, 0.632375, -0.766660,
		-0.986549, -0.163261, 0.008251,
		41.525253, 36.221210, 27.570053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854843, 36.991039, 27.769678>,  <42.215836, 36.335491, 27.564278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854843, 36.991039, 27.769678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.543949, 36.744724, 27.821388>,  <41.357414, 36.596935, 27.852415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.543949, 36.744724, 27.821388>,  <41.854843, 36.991039, 27.769678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543949, 36.744724, 27.821388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422561, 0.663069, 0.617885,
		-0.466204, 0.425615, -0.775568,
		-0.777236, -0.615786, 0.129277,
		41.310780, 36.559990, 27.860172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256462, 37.375664, 27.713158>,  <41.854843, 36.991039, 27.769678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256462, 37.375664, 27.713158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126984, 37.058510, 27.919674>,  <41.049297, 36.868217, 28.043583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126984, 37.058510, 27.919674>,  <41.256462, 37.375664, 27.713158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126984, 37.058510, 27.919674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375931, 0.608523, 0.698839,
		-0.868273, 0.032120, -0.495045,
		-0.323693, -0.792886, 0.516289,
		41.029877, 36.820644, 28.074560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471546, 37.437920, 27.897840>,  <41.256462, 37.375664, 27.713158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471546, 37.437920, 27.897840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667080, 37.219696, 28.170134>,  <40.784401, 37.088760, 28.333509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667080, 37.219696, 28.170134>,  <40.471546, 37.437920, 27.897840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667080, 37.219696, 28.170134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325554, 0.609868, 0.722548,
		-0.809353, -0.574825, 0.120518,
		0.488838, -0.545561, 0.680735,
		40.813732, 37.056026, 28.374353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044189, 37.484104, 28.572927>,  <40.471546, 37.437920, 27.897840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044189, 37.484104, 28.572927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366467, 37.295155, 28.715878>,  <40.559834, 37.181786, 28.801647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366467, 37.295155, 28.715878>,  <40.044189, 37.484104, 28.572927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366467, 37.295155, 28.715878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223528, 0.316260, 0.921962,
		-0.548533, -0.822705, 0.149221,
		0.805696, -0.472372, 0.357377,
		40.608177, 37.153442, 28.823092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801651, 37.057529, 29.151995>,  <40.044189, 37.484104, 28.572927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801651, 37.057529, 29.151995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188675, 37.149223, 29.194494>,  <40.420887, 37.204239, 29.219994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188675, 37.149223, 29.194494>,  <39.801651, 37.057529, 29.151995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188675, 37.149223, 29.194494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196613, 0.419007, 0.886440,
		0.158680, -0.878571, 0.450482,
		0.967556, 0.229231, 0.106251,
		40.478943, 37.217995, 29.226370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878471, 36.985302, 29.842972>,  <39.801651, 37.057529, 29.151995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878471, 36.985302, 29.842972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187042, 37.207748, 29.719267>,  <40.372185, 37.341217, 29.645044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187042, 37.207748, 29.719267>,  <39.878471, 36.985302, 29.842972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187042, 37.207748, 29.719267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114822, 0.356380, 0.927259,
		0.625877, -0.750819, 0.211065,
		0.771423, 0.556116, -0.309260,
		40.418468, 37.374584, 29.626490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444607, 36.849281, 30.315981>,  <39.878471, 36.985302, 29.842972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444607, 36.849281, 30.315981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483253, 37.207092, 30.141405>,  <40.506443, 37.421780, 30.036659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483253, 37.207092, 30.141405>,  <40.444607, 36.849281, 30.315981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483253, 37.207092, 30.141405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029638, 0.440881, 0.897076,
		0.994880, -0.073736, 0.069108,
		0.096616, 0.894532, -0.436439,
		40.512238, 37.475452, 30.010473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697727, 37.281826, 30.866455>,  <40.444607, 36.849281, 30.315981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697727, 37.281826, 30.866455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585026, 37.551552, 30.593424>,  <40.517406, 37.713387, 30.429605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585026, 37.551552, 30.593424>,  <40.697727, 37.281826, 30.866455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585026, 37.551552, 30.593424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329982, 0.599903, 0.728853,
		0.900958, 0.430596, 0.053487,
		-0.281754, 0.674317, -0.682577,
		40.500500, 37.753845, 30.388651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044777, 37.941269, 31.065441>,  <40.697727, 37.281826, 30.866455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044777, 37.941269, 31.065441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719452, 38.024586, 30.848135>,  <40.524258, 38.074577, 30.717751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719452, 38.024586, 30.848135>,  <41.044777, 37.941269, 31.065441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719452, 38.024586, 30.848135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269324, 0.692885, 0.668861,
		0.515741, 0.690307, -0.507432,
		-0.813311, 0.208295, -0.543266,
		40.475460, 38.087074, 30.685156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965927, 38.566185, 31.230034>,  <41.044777, 37.941269, 31.065441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965927, 38.566185, 31.230034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621559, 38.498989, 31.037954>,  <40.414936, 38.458672, 30.922707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621559, 38.498989, 31.037954>,  <40.965927, 38.566185, 31.230034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621559, 38.498989, 31.037954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445385, 0.705041, 0.551860,
		0.245851, 0.688982, -0.681807,
		-0.860924, -0.167990, -0.480197,
		40.363281, 38.448593, 30.893894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791492, 39.240608, 31.075640>,  <40.965927, 38.566185, 31.230034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791492, 39.240608, 31.075640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477642, 38.992714, 31.082535>,  <40.289333, 38.843979, 31.086672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477642, 38.992714, 31.082535>,  <40.791492, 39.240608, 31.075640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477642, 38.992714, 31.082535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451454, 0.590186, 0.669230,
		-0.424918, 0.517312, -0.742855,
		-0.784624, -0.619733, 0.017238,
		40.242256, 38.806793, 31.087706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272072, 39.575096, 30.805330>,  <40.791492, 39.240608, 31.075640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272072, 39.575096, 30.805330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112789, 39.307774, 31.056662>,  <40.017220, 39.147381, 31.207460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112789, 39.307774, 31.056662>,  <40.272072, 39.575096, 30.805330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112789, 39.307774, 31.056662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548300, 0.722556, 0.421046,
		-0.735390, -0.176849, -0.654160,
		-0.398206, -0.668310, 0.628326,
		39.993328, 39.107281, 31.245159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878769, 39.892250, 31.342897>,  <40.272072, 39.575096, 30.805330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878769, 39.892250, 31.342897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.091824, 40.201767, 31.205759>,  <40.219658, 40.387478, 31.123476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.091824, 40.201767, 31.205759>,  <39.878769, 39.892250, 31.342897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091824, 40.201767, 31.205759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576843, 0.035485, -0.816084,
		-0.619310, 0.632450, 0.465255,
		0.532641, 0.773788, -0.342848,
		40.251617, 40.433903, 31.102905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392994, 40.237717, 31.080025>,  <39.878769, 39.892250, 31.342897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392994, 40.237717, 31.080025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719791, 40.389606, 30.906437>,  <39.915871, 40.480740, 30.802284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719791, 40.389606, 30.906437>,  <39.392994, 40.237717, 31.080025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719791, 40.389606, 30.906437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530460, 0.199781, -0.823832,
		-0.226132, 0.903269, 0.364649,
		0.816992, 0.379727, -0.433972,
		39.964890, 40.503525, 30.776245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206558, 40.860268, 30.816423>,  <39.392994, 40.237717, 31.080025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206558, 40.860268, 30.816423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534588, 40.801525, 30.595184>,  <39.731403, 40.766281, 30.462440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534588, 40.801525, 30.595184>,  <39.206558, 40.860268, 30.816423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534588, 40.801525, 30.595184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542432, 0.108484, -0.833066,
		0.182344, 0.983191, 0.009305,
		0.820072, -0.146857, -0.553096,
		39.780609, 40.757469, 30.429256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140152, 41.322433, 30.307365>,  <39.206558, 40.860268, 30.816423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140152, 41.322433, 30.307365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396255, 41.051594, 30.162256>,  <39.549919, 40.889091, 30.075191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396255, 41.051594, 30.162256>,  <39.140152, 41.322433, 30.307365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396255, 41.051594, 30.162256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525601, -0.041754, -0.849706,
		0.560188, 0.734706, -0.382618,
		0.640260, -0.677100, -0.362772,
		39.588333, 40.848465, 30.053425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271915, 41.620785, 29.649908>,  <39.140152, 41.322433, 30.307365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271915, 41.620785, 29.649908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368282, 41.232998, 29.631601>,  <39.426102, 41.000324, 29.620617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368282, 41.232998, 29.631601>,  <39.271915, 41.620785, 29.649908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368282, 41.232998, 29.631601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359695, -0.045391, -0.931965,
		0.901431, 0.240988, -0.359648,
		0.240917, -0.969466, -0.045766,
		39.440556, 40.942158, 29.617872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653942, 41.511391, 28.974497>,  <39.271915, 41.620785, 29.649908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653942, 41.511391, 28.974497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525536, 41.150734, 29.090420>,  <39.448494, 40.934338, 29.159973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525536, 41.150734, 29.090420>,  <39.653942, 41.511391, 28.974497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525536, 41.150734, 29.090420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274851, -0.204142, -0.939565,
		0.906316, -0.381267, -0.182285,
		-0.321013, -0.901644, 0.289809,
		39.429234, 40.880241, 29.177362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737328, 41.135414, 28.380308>,  <39.653942, 41.511391, 28.974497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737328, 41.135414, 28.380308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475258, 40.938179, 28.609259>,  <39.318016, 40.819839, 28.746630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475258, 40.938179, 28.609259>,  <39.737328, 41.135414, 28.380308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475258, 40.938179, 28.609259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305773, -0.519731, -0.797736,
		0.690833, -0.697673, 0.189742,
		-0.655174, -0.493084, 0.572376,
		39.278706, 40.790253, 28.780972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859024, 40.439766, 28.109486>,  <39.737328, 41.135414, 28.380308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859024, 40.439766, 28.109486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493645, 40.443214, 28.272228>,  <39.274418, 40.445286, 28.369873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493645, 40.443214, 28.272228>,  <39.859024, 40.439766, 28.109486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493645, 40.443214, 28.272228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332568, -0.592006, -0.734117,
		0.234530, -0.805887, 0.543637,
		-0.913452, 0.008624, 0.406856,
		39.219608, 40.445801, 28.394285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665966, 39.838448, 28.004282>,  <39.859024, 40.439766, 28.109486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665966, 39.838448, 28.004282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310490, 40.013786, 28.058075>,  <39.097206, 40.118988, 28.090351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310490, 40.013786, 28.058075>,  <39.665966, 39.838448, 28.004282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310490, 40.013786, 28.058075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381483, -0.544153, -0.747241,
		-0.254372, -0.715366, 0.650804,
		-0.888687, 0.438348, 0.134483,
		39.043884, 40.145290, 28.098419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153332, 39.295666, 28.067743>,  <39.665966, 39.838448, 28.004282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153332, 39.295666, 28.067743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925869, 39.611069, 27.974030>,  <38.789391, 39.800312, 27.917801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925869, 39.611069, 27.974030>,  <39.153332, 39.295666, 28.067743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925869, 39.611069, 27.974030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448078, -0.535782, -0.715656,
		-0.689825, -0.301984, 0.657988,
		-0.568654, 0.788507, -0.234283,
		38.755272, 39.847622, 27.903744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450188, 39.104305, 28.045933>,  <39.153332, 39.295666, 28.067743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450188, 39.104305, 28.045933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470863, 39.435215, 27.822166>,  <38.483269, 39.633762, 27.687906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470863, 39.435215, 27.822166>,  <38.450188, 39.104305, 28.045933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470863, 39.435215, 27.822166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371139, -0.504130, -0.779813,
		-0.927137, 0.247930, 0.280976,
		0.051691, 0.827275, -0.559414,
		38.486370, 39.683399, 27.654343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883286, 39.035191, 27.626188>,  <38.450188, 39.104305, 28.045933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883286, 39.035191, 27.626188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114700, 39.316456, 27.460854>,  <38.253551, 39.485214, 27.361652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114700, 39.316456, 27.460854>,  <37.883286, 39.035191, 27.626188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114700, 39.316456, 27.460854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194874, -0.372921, -0.907168,
		-0.792031, 0.605384, -0.078722,
		0.578542, 0.703165, -0.413339,
		38.288261, 39.527405, 27.336851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497375, 39.407349, 26.923218>,  <37.883286, 39.035191, 27.626188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497375, 39.407349, 26.923218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.885593, 39.483372, 26.863991>,  <38.118523, 39.528984, 26.828455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.885593, 39.483372, 26.863991>,  <37.497375, 39.407349, 26.923218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885593, 39.483372, 26.863991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093903, -0.267561, -0.958954,
		-0.221870, 0.944611, -0.241833,
		0.970544, 0.190054, -0.148066,
		38.176758, 39.540386, 26.819571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498398, 39.645432, 26.298258>,  <37.497375, 39.407349, 26.923218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498398, 39.645432, 26.298258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.888340, 39.572460, 26.349451>,  <38.122303, 39.528675, 26.380167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.888340, 39.572460, 26.349451>,  <37.498398, 39.645432, 26.298258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888340, 39.572460, 26.349451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052501, -0.370125, -0.927497,
		0.216575, 0.910893, -0.351240,
		0.974853, -0.182432, 0.127982,
		38.180798, 39.517731, 26.387846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047432, 40.358978, 26.097298>,  <37.498398, 39.645432, 26.298258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047432, 40.358978, 26.097298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.680065, 40.203144, 26.069788>,  <36.459644, 40.109642, 26.053282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.680065, 40.203144, 26.069788>,  <37.047432, 40.358978, 26.097298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680065, 40.203144, 26.069788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213995, 0.343013, 0.914630,
		-0.332735, 0.854732, -0.398399,
		-0.918419, -0.389584, -0.068776,
		36.404541, 40.086269, 26.049154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481743, 40.880169, 26.236135>,  <37.047432, 40.358978, 26.097298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481743, 40.880169, 26.236135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295242, 40.530396, 26.289766>,  <36.183342, 40.320534, 26.321945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295242, 40.530396, 26.289766>,  <36.481743, 40.880169, 26.236135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295242, 40.530396, 26.289766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394808, 0.341309, 0.853015,
		-0.791665, 0.344788, -0.504369,
		-0.466255, -0.874431, 0.134077,
		36.155365, 40.268066, 26.329990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772087, 40.982929, 26.521343>,  <36.481743, 40.880169, 26.236135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772087, 40.982929, 26.521343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.839737, 40.597778, 26.605492>,  <35.880325, 40.366688, 26.655981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.839737, 40.597778, 26.605492>,  <35.772087, 40.982929, 26.521343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839737, 40.597778, 26.605492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520748, 0.093919, 0.848529,
		-0.836791, -0.253057, -0.485534,
		0.169126, -0.962882, 0.210369,
		35.890476, 40.308914, 26.668602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205395, 40.770428, 26.790113>,  <35.772087, 40.982929, 26.521343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205395, 40.770428, 26.790113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464531, 40.504124, 26.938204>,  <35.620010, 40.344341, 27.027058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464531, 40.504124, 26.938204>,  <35.205395, 40.770428, 26.790113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464531, 40.504124, 26.938204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309997, 0.213543, 0.926445,
		-0.695852, -0.714954, -0.068044,
		0.647836, -0.665763, 0.370228,
		35.658882, 40.304394, 27.049273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809914, 40.385807, 27.178640>,  <35.205395, 40.770428, 26.790113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809914, 40.385807, 27.178640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.187313, 40.339088, 27.302685>,  <35.413754, 40.311058, 27.377111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.187313, 40.339088, 27.302685>,  <34.809914, 40.385807, 27.178640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187313, 40.339088, 27.302685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310633, 0.014170, 0.950424,
		-0.115400, -0.993055, -0.022912,
		0.943499, -0.116796, 0.310111,
		35.470364, 40.304050, 27.395718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726940, 39.956421, 27.729988>,  <34.809914, 40.385807, 27.178640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726940, 39.956421, 27.729988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097664, 40.094543, 27.789024>,  <35.320099, 40.177418, 27.824446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097664, 40.094543, 27.789024>,  <34.726940, 39.956421, 27.729988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097664, 40.094543, 27.789024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207541, 0.143446, 0.967652,
		0.312965, -0.927463, 0.204613,
		0.926812, 0.345306, 0.147592,
		35.375706, 40.198135, 27.833302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175449, 39.441204, 28.093973>,  <34.726940, 39.956421, 27.729988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175449, 39.441204, 28.093973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.291756, 39.814110, 28.180077>,  <35.361542, 40.037853, 28.231739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.291756, 39.814110, 28.180077>,  <35.175449, 39.441204, 28.093973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291756, 39.814110, 28.180077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126882, -0.185420, 0.974433,
		0.948343, -0.310648, 0.064374,
		0.290769, 0.932265, 0.215258,
		35.378986, 40.093788, 28.244654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621269, 39.304531, 28.619268>,  <35.175449, 39.441204, 28.093973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621269, 39.304531, 28.619268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.504486, 39.684170, 28.666555>,  <35.434414, 39.911953, 28.694927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.504486, 39.684170, 28.666555>,  <35.621269, 39.304531, 28.619268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504486, 39.684170, 28.666555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049708, -0.138495, 0.989115,
		0.955138, 0.282907, 0.087612,
		-0.291961, 0.949096, 0.118219,
		35.416897, 39.968899, 28.702021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872944, 39.481171, 29.235214>,  <35.621269, 39.304531, 28.619268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872944, 39.481171, 29.235214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622837, 39.788120, 29.178392>,  <35.472771, 39.972290, 29.144299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622837, 39.788120, 29.178392>,  <35.872944, 39.481171, 29.235214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622837, 39.788120, 29.178392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066430, 0.129030, 0.989413,
		0.777575, 0.628088, -0.029702,
		-0.625271, 0.767370, -0.142054,
		35.435257, 40.018330, 29.135777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082298, 40.112862, 29.680691>,  <35.872944, 39.481171, 29.235214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082298, 40.112862, 29.680691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694862, 40.159340, 29.592749>,  <35.462402, 40.187225, 29.539984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694862, 40.159340, 29.592749>,  <36.082298, 40.112862, 29.680691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694862, 40.159340, 29.592749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219155, 0.018919, 0.975507,
		0.117507, 0.993046, 0.007140,
		-0.968588, 0.116194, -0.219854,
		35.404285, 40.194199, 29.526793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953003, 40.701004, 30.061316>,  <36.082298, 40.112862, 29.680691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953003, 40.701004, 30.061316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.594608, 40.541145, 29.983860>,  <35.379574, 40.445229, 29.937387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.594608, 40.541145, 29.983860>,  <35.953003, 40.701004, 30.061316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594608, 40.541145, 29.983860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306421, 0.240752, 0.920948,
		-0.321438, 0.884488, -0.338171,
		-0.895982, -0.399650, -0.193638,
		35.325813, 40.421249, 29.925768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485172, 41.121021, 30.430105>,  <35.953003, 40.701004, 30.061316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485172, 41.121021, 30.430105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269314, 40.796700, 30.339441>,  <35.139797, 40.602104, 30.285044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269314, 40.796700, 30.339441>,  <35.485172, 41.121021, 30.430105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269314, 40.796700, 30.339441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469850, 0.066655, 0.880226,
		-0.698585, 0.581507, -0.416927,
		-0.539648, -0.810806, -0.226658,
		35.107418, 40.553459, 30.271444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.214615, 39.156528, 22.607273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958252, 38.852966, 22.653416>,  <36.804436, 38.670830, 22.681101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958252, 38.852966, 22.653416>,  <37.214615, 39.156528, 22.607273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958252, 38.852966, 22.653416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464880, 0.503320, 0.728393,
		-0.610841, 0.413203, -0.675379,
		-0.640906, -0.758902, 0.115358,
		36.765980, 38.625298, 22.688023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573017, 39.439941, 22.560953>,  <37.214615, 39.156528, 22.607273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573017, 39.439941, 22.560953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491222, 39.101963, 22.758640>,  <36.442146, 38.899174, 22.877253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491222, 39.101963, 22.758640>,  <36.573017, 39.439941, 22.560953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491222, 39.101963, 22.758640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419480, 0.531814, 0.735670,
		-0.884434, -0.056882, -0.463186,
		-0.204483, -0.844948, 0.494215,
		36.429878, 38.848480, 22.906904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871815, 39.490822, 22.930025>,  <36.573017, 39.439941, 22.560953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871815, 39.490822, 22.930025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067337, 39.214729, 23.143433>,  <36.184650, 39.049072, 23.271477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067337, 39.214729, 23.143433>,  <35.871815, 39.490822, 22.930025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067337, 39.214729, 23.143433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426817, 0.344154, 0.836293,
		-0.760852, -0.636500, -0.126379,
		0.488807, -0.690235, 0.533519,
		36.213978, 39.007660, 23.303488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350861, 39.382172, 23.498848>,  <35.871815, 39.490822, 22.930025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350861, 39.382172, 23.498848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709324, 39.233303, 23.595503>,  <35.924400, 39.143982, 23.653496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709324, 39.233303, 23.595503>,  <35.350861, 39.382172, 23.498848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709324, 39.233303, 23.595503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205504, 0.134537, 0.969365,
		-0.393281, -0.918361, 0.044083,
		0.896157, -0.372174, 0.241638,
		35.978172, 39.121651, 23.667994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331093, 38.878792, 24.068310>,  <35.350861, 39.382172, 23.498848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331093, 38.878792, 24.068310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704784, 39.021465, 24.068836>,  <35.928997, 39.107067, 24.069153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704784, 39.021465, 24.068836>,  <35.331093, 38.878792, 24.068310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704784, 39.021465, 24.068836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124847, 0.323542, 0.937941,
		0.334139, -0.876406, 0.346792,
		0.934219, 0.356698, 0.001309,
		35.985054, 39.128468, 24.069231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747341, 38.559566, 24.675104>,  <35.331093, 38.878792, 24.068310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747341, 38.559566, 24.675104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967922, 38.882351, 24.590527>,  <36.100273, 39.076023, 24.539780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967922, 38.882351, 24.590527>,  <35.747341, 38.559566, 24.675104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967922, 38.882351, 24.590527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035087, 0.230810, 0.972366,
		0.833466, -0.543636, 0.098968,
		0.551456, 0.806962, -0.211446,
		36.133358, 39.124439, 24.527092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211578, 38.588341, 25.210941>,  <35.747341, 38.559566, 24.675104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211578, 38.588341, 25.210941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219154, 38.955986, 25.053526>,  <36.223701, 39.176575, 24.959076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219154, 38.955986, 25.053526>,  <36.211578, 38.588341, 25.210941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219154, 38.955986, 25.053526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068655, 0.391484, 0.917620,
		0.997461, -0.044399, -0.055687,
		0.018941, 0.919113, -0.393538,
		36.224838, 39.231720, 24.935465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823521, 38.887985, 25.448076>,  <36.211578, 38.588341, 25.210941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823521, 38.887985, 25.448076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572193, 39.180908, 25.343046>,  <36.421398, 39.356663, 25.280027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572193, 39.180908, 25.343046>,  <36.823521, 38.887985, 25.448076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572193, 39.180908, 25.343046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087263, 0.401734, 0.911589,
		0.773046, 0.549856, -0.316320,
		-0.628320, 0.732303, -0.262577,
		36.383698, 39.400600, 25.264273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141678, 39.491398, 25.690731>,  <36.823521, 38.887985, 25.448076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141678, 39.491398, 25.690731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755859, 39.593639, 25.664469>,  <36.524368, 39.654984, 25.648712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755859, 39.593639, 25.664469>,  <37.141678, 39.491398, 25.690731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755859, 39.593639, 25.664469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080950, 0.523361, 0.848257,
		0.251177, 0.812872, -0.525499,
		-0.964550, 0.255602, -0.065654,
		36.466496, 39.670319, 25.644772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843475, 39.902771, 25.737892>,  <37.141678, 39.491398, 25.690731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843475, 39.902771, 25.737892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089859, 39.612839, 25.861319>,  <38.237690, 39.438881, 25.935373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089859, 39.612839, 25.861319>,  <37.843475, 39.902771, 25.737892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089859, 39.612839, 25.861319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222189, -0.215940, -0.950790,
		0.755794, 0.654209, 0.028039,
		0.615961, -0.724832, 0.308564,
		38.274647, 39.395390, 25.953888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481209, 39.990410, 25.362228>,  <37.843475, 39.902771, 25.737892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481209, 39.990410, 25.362228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497540, 39.608551, 25.480202>,  <38.507339, 39.379436, 25.550985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497540, 39.608551, 25.480202>,  <38.481209, 39.990410, 25.362228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497540, 39.608551, 25.480202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481586, -0.239828, -0.842946,
		0.875448, 0.176450, 0.449952,
		0.040826, -0.954645, 0.294933,
		38.509789, 39.322159, 25.568682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140991, 39.790810, 25.192369>,  <38.481209, 39.990410, 25.362228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140991, 39.790810, 25.192369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974960, 39.433018, 25.258848>,  <38.875343, 39.218342, 25.298737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974960, 39.433018, 25.258848>,  <39.140991, 39.790810, 25.192369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974960, 39.433018, 25.258848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540587, -0.389414, -0.745736,
		0.731765, -0.219690, 0.645179,
		-0.415073, -0.894479, 0.166199,
		38.850437, 39.164673, 25.308708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672428, 39.228607, 25.119085>,  <39.140991, 39.790810, 25.192369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672428, 39.228607, 25.119085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316582, 39.057907, 25.054005>,  <39.103073, 38.955486, 25.014956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316582, 39.057907, 25.054005>,  <39.672428, 39.228607, 25.119085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316582, 39.057907, 25.054005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377671, -0.487076, -0.787478,
		0.256806, -0.762000, 0.594480,
		-0.889615, -0.426747, -0.162701,
		39.049698, 38.929882, 25.005194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804558, 38.523422, 24.916382>,  <39.672428, 39.228607, 25.119085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804558, 38.523422, 24.916382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436615, 38.600086, 24.779480>,  <39.215851, 38.646084, 24.697338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436615, 38.600086, 24.779480>,  <39.804558, 38.523422, 24.916382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436615, 38.600086, 24.779480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217438, -0.477073, -0.851541,
		-0.326482, -0.857712, 0.397165,
		-0.919853, 0.191654, -0.342255,
		39.160660, 38.657581, 24.676804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533726, 37.965836, 24.669794>,  <39.804558, 38.523422, 24.916382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533726, 37.965836, 24.669794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330273, 38.240528, 24.462065>,  <39.208199, 38.405342, 24.337427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330273, 38.240528, 24.462065>,  <39.533726, 37.965836, 24.669794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330273, 38.240528, 24.462065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263274, -0.450228, -0.853218,
		-0.819741, -0.570703, 0.048206,
		-0.508638, 0.686726, -0.519322,
		39.177681, 38.446545, 24.306269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191032, 37.570297, 24.130037>,  <39.533726, 37.965836, 24.669794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191032, 37.570297, 24.130037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212952, 37.954899, 24.022331>,  <39.226105, 38.185661, 23.957708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212952, 37.954899, 24.022331>,  <39.191032, 37.570297, 24.130037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212952, 37.954899, 24.022331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120791, -0.274072, -0.954093,
		-0.991164, 0.019760, -0.131161,
		0.054800, 0.961506, -0.269264,
		39.229393, 38.243351, 23.941551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799816, 37.538822, 23.497671>,  <39.191032, 37.570297, 24.130037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799816, 37.538822, 23.497671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997795, 37.886364, 23.493427>,  <39.116585, 38.094891, 23.490881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997795, 37.886364, 23.493427>,  <38.799816, 37.538822, 23.497671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997795, 37.886364, 23.493427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365721, -0.219380, -0.904500,
		-0.788209, 0.443802, -0.426341,
		0.494949, 0.868857, -0.010610,
		39.146278, 38.147022, 23.490244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635902, 37.885750, 22.947218>,  <38.799816, 37.538822, 23.497671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635902, 37.885750, 22.947218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987381, 38.044041, 23.054026>,  <39.198269, 38.139015, 23.118111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987381, 38.044041, 23.054026>,  <38.635902, 37.885750, 22.947218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987381, 38.044041, 23.054026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312020, -0.052747, -0.948610,
		-0.361305, 0.916853, -0.169823,
		0.878694, 0.395726, 0.267018,
		39.250988, 38.162758, 23.134130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804901, 38.414635, 22.331118>,  <38.635902, 37.885750, 22.947218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804901, 38.414635, 22.331118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149010, 38.352543, 22.525368>,  <39.355476, 38.315289, 22.641918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149010, 38.352543, 22.525368>,  <38.804901, 38.414635, 22.331118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149010, 38.352543, 22.525368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505065, 0.129547, -0.853303,
		0.069546, 0.979348, 0.189847,
		0.860275, -0.155229, 0.485625,
		39.407093, 38.305973, 22.671055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268192, 38.983002, 22.063023>,  <38.804901, 38.414635, 22.331118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268192, 38.983002, 22.063023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490398, 38.679447, 22.198957>,  <39.623722, 38.497314, 22.280518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490398, 38.679447, 22.198957>,  <39.268192, 38.983002, 22.063023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490398, 38.679447, 22.198957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622819, 0.108976, -0.774739,
		0.550907, 0.642036, 0.533189,
		0.555515, -0.758890, 0.339837,
		39.657055, 38.451778, 22.300909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881306, 39.172501, 21.736465>,  <39.268192, 38.983002, 22.063023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881306, 39.172501, 21.736465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961849, 38.803272, 21.867554>,  <40.010174, 38.581738, 21.946207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961849, 38.803272, 21.867554>,  <39.881306, 39.172501, 21.736465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961849, 38.803272, 21.867554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398794, -0.228334, -0.888159,
		0.894661, 0.309533, 0.322136,
		0.201360, -0.923067, 0.327722,
		40.022259, 38.526352, 21.965870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506378, 38.972370, 21.632631>,  <39.881306, 39.172501, 21.736465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506378, 38.972370, 21.632631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393112, 38.591904, 21.681787>,  <40.325153, 38.363625, 21.711281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393112, 38.591904, 21.681787>,  <40.506378, 38.972370, 21.632631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393112, 38.591904, 21.681787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533618, -0.262721, -0.803883,
		0.796913, -0.162053, 0.581953,
		-0.283163, -0.951165, 0.122892,
		40.308163, 38.306553, 21.718655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131176, 38.556267, 21.540356>,  <40.506378, 38.972370, 21.632631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131176, 38.556267, 21.540356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835854, 38.289349, 21.501125>,  <40.658661, 38.129196, 21.477587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835854, 38.289349, 21.501125>,  <41.131176, 38.556267, 21.540356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835854, 38.289349, 21.501125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477714, -0.414724, -0.774464,
		0.476124, -0.618643, 0.624970,
		-0.738306, -0.667297, -0.098074,
		40.614361, 38.089161, 21.471703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.669430, 32.155201, 23.010260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827168, 32.491825, 22.862600>,  <34.921810, 32.693798, 22.774004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827168, 32.491825, 22.862600>,  <34.669430, 32.155201, 23.010260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827168, 32.491825, 22.862600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206846, 0.310107, 0.927927,
		0.895383, -0.442275, -0.051786,
		0.394340, 0.841562, -0.369148,
		34.945469, 32.744293, 22.751856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225861, 32.335304, 23.384569>,  <34.669430, 32.155201, 23.010260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225861, 32.335304, 23.384569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.170612, 32.690731, 23.209585>,  <35.137463, 32.903988, 23.104595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.170612, 32.690731, 23.209585>,  <35.225861, 32.335304, 23.384569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170612, 32.690731, 23.209585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402721, 0.453916, 0.794843,
		0.904842, -0.066394, -0.420538,
		-0.138116, 0.888567, -0.437461,
		35.129177, 32.957302, 23.078346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867714, 32.796093, 23.443928>,  <35.225861, 32.335304, 23.384569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867714, 32.796093, 23.443928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550877, 33.034428, 23.390909>,  <35.360775, 33.177429, 23.359098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550877, 33.034428, 23.390909>,  <35.867714, 32.796093, 23.443928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550877, 33.034428, 23.390909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293840, 0.562538, 0.772793,
		0.535018, 0.573178, -0.620663,
		-0.792095, 0.595834, -0.132545,
		35.313248, 33.213177, 23.351145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986320, 33.284988, 23.942785>,  <35.867714, 32.796093, 23.443928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986320, 33.284988, 23.942785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620602, 33.400928, 23.829613>,  <35.401169, 33.470493, 23.761709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620602, 33.400928, 23.829613>,  <35.986320, 33.284988, 23.942785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620602, 33.400928, 23.829613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052894, 0.607097, 0.792866,
		0.401578, 0.739879, -0.539735,
		-0.914296, 0.289849, -0.282932,
		35.346313, 33.487885, 23.744734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003338, 33.948383, 23.767998>,  <35.986320, 33.284988, 23.942785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003338, 33.948383, 23.767998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626438, 33.865753, 23.873449>,  <35.400299, 33.816174, 23.936720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626438, 33.865753, 23.873449>,  <36.003338, 33.948383, 23.767998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626438, 33.865753, 23.873449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045054, 0.701804, 0.710944,
		-0.331881, 0.681761, -0.651964,
		-0.942245, -0.206575, 0.263631,
		35.343765, 33.803780, 23.952539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599117, 34.632027, 23.856972>,  <36.003338, 33.948383, 23.767998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599117, 34.632027, 23.856972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383167, 34.365055, 24.062132>,  <35.253597, 34.204872, 24.185228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383167, 34.365055, 24.062132>,  <35.599117, 34.632027, 23.856972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383167, 34.365055, 24.062132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036397, 0.627271, 0.777950,
		-0.840957, 0.401328, -0.362941,
		-0.539876, -0.667433, 0.512901,
		35.221203, 34.164825, 24.216002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200024, 35.000938, 24.213009>,  <35.599117, 34.632027, 23.856972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200024, 35.000938, 24.213009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.141514, 34.659184, 24.412457>,  <35.106407, 34.454128, 24.532125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.141514, 34.659184, 24.412457>,  <35.200024, 35.000938, 24.213009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141514, 34.659184, 24.412457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052198, 0.510004, 0.858587,
		-0.987866, 0.099565, -0.119200,
		-0.146278, -0.854390, 0.498619,
		35.097630, 34.402866, 24.562042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743710, 35.216114, 24.741806>,  <35.200024, 35.000938, 24.213009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743710, 35.216114, 24.741806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846882, 34.857552, 24.885990>,  <34.908787, 34.642414, 24.972500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846882, 34.857552, 24.885990>,  <34.743710, 35.216114, 24.741806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846882, 34.857552, 24.885990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072978, 0.390093, 0.917879,
		-0.963403, -0.210445, 0.166036,
		0.257933, -0.896404, 0.360459,
		34.924263, 34.588631, 24.994127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364662, 35.119370, 25.422991>,  <34.743710, 35.216114, 24.741806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364662, 35.119370, 25.422991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677559, 34.870590, 25.437265>,  <34.865299, 34.721321, 25.445829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677559, 34.870590, 25.437265>,  <34.364662, 35.119370, 25.422991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677559, 34.870590, 25.437265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166304, 0.263683, 0.950165,
		-0.600361, -0.737329, 0.309697,
		0.782246, -0.621947, 0.035684,
		34.912231, 34.684006, 25.447971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305283, 34.665497, 25.954733>,  <34.364662, 35.119370, 25.422991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305283, 34.665497, 25.954733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698277, 34.639595, 25.884846>,  <34.934074, 34.624054, 25.842913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698277, 34.639595, 25.884846>,  <34.305283, 34.665497, 25.954733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698277, 34.639595, 25.884846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184697, 0.214423, 0.959119,
		-0.024645, -0.974592, 0.222628,
		0.982486, -0.064756, -0.174719,
		34.993023, 34.620167, 25.832430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572872, 34.114498, 26.439402>,  <34.305283, 34.665497, 25.954733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572872, 34.114498, 26.439402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.868885, 34.360806, 26.331200>,  <35.046494, 34.508591, 26.266277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.868885, 34.360806, 26.331200>,  <34.572872, 34.114498, 26.439402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868885, 34.360806, 26.331200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113357, 0.282250, 0.952620,
		0.662945, -0.735638, 0.139073,
		0.740037, 0.615770, -0.270506,
		35.090897, 34.545536, 26.250048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045898, 33.908600, 26.780760>,  <34.572872, 34.114498, 26.439402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045898, 33.908600, 26.780760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157562, 34.280510, 26.684765>,  <35.224560, 34.503654, 26.627169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157562, 34.280510, 26.684765>,  <35.045898, 33.908600, 26.780760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157562, 34.280510, 26.684765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177370, 0.195695, 0.964491,
		0.943721, -0.311814, -0.110283,
		0.279160, 0.929772, -0.239988,
		35.241310, 34.559441, 26.612768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676987, 34.031216, 27.126984>,  <35.045898, 33.908600, 26.780760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676987, 34.031216, 27.126984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523098, 34.387283, 27.029335>,  <35.430767, 34.600922, 26.970745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523098, 34.387283, 27.029335>,  <35.676987, 34.031216, 27.126984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523098, 34.387283, 27.029335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123591, 0.311773, 0.942084,
		0.914723, 0.332266, -0.229961,
		-0.384718, 0.890167, -0.244121,
		35.407684, 34.654335, 26.956099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101654, 34.589787, 27.511412>,  <35.676987, 34.031216, 27.126984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101654, 34.589787, 27.511412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763142, 34.778423, 27.412289>,  <35.560032, 34.891605, 27.352814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763142, 34.778423, 27.412289>,  <36.101654, 34.589787, 27.511412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763142, 34.778423, 27.412289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084657, 0.340205, 0.936533,
		0.525965, 0.813550, -0.247986,
		-0.846283, 0.471589, -0.247809,
		35.509258, 34.919899, 27.337946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812515, 34.425285, 27.256292>,  <36.101654, 34.589787, 27.511412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812515, 34.425285, 27.256292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149479, 34.536900, 27.440680>,  <37.351658, 34.603867, 27.551311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149479, 34.536900, 27.440680>,  <36.812515, 34.425285, 27.256292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149479, 34.536900, 27.440680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502287, -0.096911, -0.859253,
		-0.195088, 0.955379, -0.221794,
		0.842406, 0.279034, 0.460968,
		37.402203, 34.620609, 27.578970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120163, 35.036678, 26.902996>,  <36.812515, 34.425285, 27.256292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120163, 35.036678, 26.902996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391525, 34.803638, 27.082037>,  <37.554344, 34.663815, 27.189461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391525, 34.803638, 27.082037>,  <37.120163, 35.036678, 26.902996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391525, 34.803638, 27.082037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437803, -0.168680, -0.883105,
		0.589996, 0.795064, 0.140629,
		0.678404, -0.582597, 0.447603,
		37.595047, 34.628860, 27.216318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706326, 35.208248, 26.612864>,  <37.120163, 35.036678, 26.902996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706326, 35.208248, 26.612864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758835, 34.835293, 26.747574>,  <37.790340, 34.611519, 26.828400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758835, 34.835293, 26.747574>,  <37.706326, 35.208248, 26.612864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758835, 34.835293, 26.747574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389005, -0.264022, -0.882591,
		0.911834, 0.246870, 0.328045,
		0.131274, -0.932388, 0.336778,
		37.798218, 34.555576, 26.848608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296883, 34.965588, 26.446907>,  <37.706326, 35.208248, 26.612864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296883, 34.965588, 26.446907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117912, 34.617119, 26.527767>,  <38.010529, 34.408035, 26.576283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117912, 34.617119, 26.527767>,  <38.296883, 34.965588, 26.446907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117912, 34.617119, 26.527767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451742, -0.415239, -0.789624,
		0.771840, -0.261979, 0.579336,
		-0.447428, -0.871173, 0.202151,
		37.983685, 34.355766, 26.588413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879433, 34.469021, 26.374859>,  <38.296883, 34.965588, 26.446907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879433, 34.469021, 26.374859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534294, 34.269241, 26.343765>,  <38.327209, 34.149372, 26.325109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534294, 34.269241, 26.343765>,  <38.879433, 34.469021, 26.374859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534294, 34.269241, 26.343765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335058, -0.450010, -0.827785,
		0.378457, -0.740298, 0.555635,
		-0.862848, -0.499451, -0.077734,
		38.275440, 34.119408, 26.320446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013321, 33.938084, 26.141722>,  <38.879433, 34.469021, 26.374859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013321, 33.938084, 26.141722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.629005, 33.897411, 26.038540>,  <38.398415, 33.873009, 25.976631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.629005, 33.897411, 26.038540>,  <39.013321, 33.938084, 26.141722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629005, 33.897411, 26.038540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276457, -0.422605, -0.863120,
		-0.021247, -0.900592, 0.434146,
		-0.960792, -0.101684, -0.257954,
		38.340767, 33.866905, 25.961153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968357, 33.259106, 25.791599>,  <39.013321, 33.938084, 26.141722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968357, 33.259106, 25.791599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648136, 33.469860, 25.677404>,  <38.456001, 33.596313, 25.608887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648136, 33.469860, 25.677404>,  <38.968357, 33.259106, 25.791599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648136, 33.469860, 25.677404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045582, -0.421484, -0.905690,
		-0.597525, -0.738066, 0.313404,
		-0.800554, 0.526887, -0.285489,
		38.407970, 33.627926, 25.591757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423283, 32.774357, 25.533207>,  <38.968357, 33.259106, 25.791599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423283, 32.774357, 25.533207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339069, 33.127930, 25.366196>,  <38.288540, 33.340073, 25.265989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339069, 33.127930, 25.366196>,  <38.423283, 32.774357, 25.533207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339069, 33.127930, 25.366196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090257, -0.442854, -0.892039,
		-0.973411, -0.150122, 0.173018,
		-0.210536, 0.883936, -0.417529,
		38.275909, 33.393112, 25.240936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047565, 32.625534, 25.040010>,  <38.423283, 32.774357, 25.533207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047565, 32.625534, 25.040010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125423, 33.002167, 24.930080>,  <38.172138, 33.228146, 24.864122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125423, 33.002167, 24.930080>,  <38.047565, 32.625534, 25.040010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125423, 33.002167, 24.930080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032814, -0.273778, -0.961233,
		-0.980325, 0.196118, -0.022393,
		0.194645, 0.941586, -0.274826,
		38.183819, 33.284641, 24.847633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586529, 32.757404, 24.382452>,  <38.047565, 32.625534, 25.040010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586529, 32.757404, 24.382452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877304, 33.031677, 24.397438>,  <38.051769, 33.196239, 24.406429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877304, 33.031677, 24.397438>,  <37.586529, 32.757404, 24.382452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877304, 33.031677, 24.397438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001318, 0.053165, -0.998585,
		-0.686703, 0.725958, 0.037744,
		0.726937, 0.685681, 0.037465,
		38.095387, 33.237381, 24.408678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364616, 33.147144, 23.842140>,  <37.586529, 32.757404, 24.382452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364616, 33.147144, 23.842140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755848, 33.219032, 23.884207>,  <37.990589, 33.262165, 23.909447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755848, 33.219032, 23.884207>,  <37.364616, 33.147144, 23.842140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755848, 33.219032, 23.884207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118379, -0.064411, -0.990877,
		-0.171303, 0.981607, -0.084274,
		0.978081, 0.179717, 0.105168,
		38.049271, 33.272949, 23.915756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559563, 33.769646, 23.437706>,  <37.364616, 33.147144, 23.842140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559563, 33.769646, 23.437706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888756, 33.547939, 23.487501>,  <38.086269, 33.414917, 23.517378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888756, 33.547939, 23.487501>,  <37.559563, 33.769646, 23.437706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888756, 33.547939, 23.487501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063809, -0.307951, -0.949260,
		0.564475, 0.773279, -0.288804,
		0.822980, -0.554262, 0.124488,
		38.135651, 33.381660, 23.524847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084610, 34.017223, 22.942820>,  <37.559563, 33.769646, 23.437706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084610, 34.017223, 22.942820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201164, 33.642784, 23.021627>,  <38.271095, 33.418121, 23.068913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201164, 33.642784, 23.021627>,  <38.084610, 34.017223, 22.942820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201164, 33.642784, 23.021627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080580, -0.181208, -0.980138,
		0.953207, 0.301470, 0.022630,
		0.291382, -0.936098, 0.197021,
		38.288578, 33.361954, 23.080734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709301, 33.836697, 22.426313>,  <38.084610, 34.017223, 22.942820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709301, 33.836697, 22.426313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556095, 33.492290, 22.560148>,  <38.464172, 33.285645, 22.640450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556095, 33.492290, 22.560148>,  <38.709301, 33.836697, 22.426313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556095, 33.492290, 22.560148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062816, -0.385644, -0.920507,
		0.921605, -0.331548, 0.201793,
		-0.383013, -0.861019, 0.334585,
		38.441193, 33.233986, 22.660524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477180, 33.696491, 22.585529>,  <38.709301, 33.836697, 22.426313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477180, 33.696491, 22.585529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835526, 33.740101, 22.413231>,  <40.050533, 33.766266, 22.309851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835526, 33.740101, 22.413231>,  <39.477180, 33.696491, 22.585529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835526, 33.740101, 22.413231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412468, 0.156433, 0.897440,
		0.165243, -0.981651, 0.095165,
		0.895860, 0.109043, -0.430749,
		40.104286, 33.772808, 22.284006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895691, 33.228825, 22.983337>,  <39.477180, 33.696491, 22.585529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895691, 33.228825, 22.983337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143009, 33.488026, 22.805437>,  <40.291401, 33.643547, 22.698698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143009, 33.488026, 22.805437>,  <39.895691, 33.228825, 22.983337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143009, 33.488026, 22.805437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451362, 0.170494, 0.875902,
		0.643413, -0.742311, -0.187067,
		0.618298, 0.648002, -0.444749,
		40.328499, 33.682426, 22.672012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636101, 33.028275, 23.135496>,  <39.895691, 33.228825, 22.983337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636101, 33.028275, 23.135496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634354, 33.411160, 23.019760>,  <40.633305, 33.640892, 22.950317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634354, 33.411160, 23.019760>,  <40.636101, 33.028275, 23.135496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634354, 33.411160, 23.019760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518321, 0.249611, 0.817947,
		0.855175, -0.146395, -0.497237,
		-0.004373, 0.957216, -0.289341,
		40.633041, 33.698326, 22.932959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322037, 33.299084, 23.404512>,  <40.636101, 33.028275, 23.135496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322037, 33.299084, 23.404512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.092209, 33.615498, 23.320480>,  <40.954311, 33.805344, 23.270061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.092209, 33.615498, 23.320480>,  <41.322037, 33.299084, 23.404512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092209, 33.615498, 23.320480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373182, 0.481649, 0.792937,
		0.728424, 0.377202, -0.571942,
		-0.574573, 0.791033, -0.210079,
		40.919838, 33.852806, 23.257456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713039, 33.935310, 23.438330>,  <41.322037, 33.299084, 23.404512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713039, 33.935310, 23.438330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341553, 34.063999, 23.512064>,  <41.118660, 34.141212, 23.556305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341553, 34.063999, 23.512064>,  <41.713039, 33.935310, 23.438330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341553, 34.063999, 23.512064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323911, 0.461981, 0.825624,
		0.180466, 0.826478, -0.533259,
		-0.928716, 0.321725, 0.184334,
		41.062939, 34.160519, 23.567364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832787, 34.687634, 23.686354>,  <41.713039, 33.935310, 23.438330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832787, 34.687634, 23.686354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.458420, 34.590096, 23.788027>,  <41.233799, 34.531574, 23.849030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.458420, 34.590096, 23.788027>,  <41.832787, 34.687634, 23.686354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458420, 34.590096, 23.788027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136544, 0.414036, 0.899961,
		-0.324689, 0.876992, -0.354206,
		-0.935913, -0.243843, 0.254181,
		41.177647, 34.516941, 23.864281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681232, 35.271675, 24.054924>,  <41.832787, 34.687634, 23.686354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681232, 35.271675, 24.054924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.418968, 35.000813, 24.188530>,  <41.261608, 34.838295, 24.268694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.418968, 35.000813, 24.188530>,  <41.681232, 35.271675, 24.054924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418968, 35.000813, 24.188530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074002, 0.382612, 0.920940,
		-0.751419, 0.628544, -0.200753,
		-0.655662, -0.677156, 0.334016,
		41.222271, 34.797665, 24.288734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207928, 35.615952, 24.357374>,  <41.681232, 35.271675, 24.054924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207928, 35.615952, 24.357374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.206535, 35.247311, 24.512617>,  <41.205700, 35.026127, 24.605762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.206535, 35.247311, 24.512617>,  <41.207928, 35.615952, 24.357374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206535, 35.247311, 24.512617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171677, 0.382900, 0.907698,
		-0.985147, -0.063474, -0.159550,
		-0.003476, -0.921607, 0.388110,
		41.205494, 34.970829, 24.629049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729496, 35.603676, 24.812233>,  <41.207928, 35.615952, 24.357374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729496, 35.603676, 24.812233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.925865, 35.280087, 24.941572>,  <41.043686, 35.085934, 25.019175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.925865, 35.280087, 24.941572>,  <40.729496, 35.603676, 24.812233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925865, 35.280087, 24.941572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002807, 0.369679, 0.929155,
		-0.871197, -0.457054, 0.179214,
		0.490925, -0.808974, 0.323346,
		41.073143, 35.037395, 25.038576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380825, 35.421341, 25.398836>,  <40.729496, 35.603676, 24.812233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380825, 35.421341, 25.398836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744141, 35.257523, 25.432993>,  <40.962128, 35.159233, 25.453487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744141, 35.257523, 25.432993>,  <40.380825, 35.421341, 25.398836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744141, 35.257523, 25.432993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091813, 0.394283, 0.914391,
		-0.408151, -0.822688, 0.395723,
		0.908286, -0.409542, 0.085393,
		41.016628, 35.134659, 25.458611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396191, 35.063236, 26.000954>,  <40.380825, 35.421341, 25.398836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396191, 35.063236, 26.000954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782082, 35.122177, 25.913698>,  <41.013618, 35.157539, 25.861345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782082, 35.122177, 25.913698>,  <40.396191, 35.063236, 26.000954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782082, 35.122177, 25.913698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171899, 0.274961, 0.945964,
		0.199364, -0.950098, 0.239934,
		0.964730, 0.147347, -0.218139,
		41.071499, 35.166382, 25.848257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657696, 34.921017, 26.680674>,  <40.396191, 35.063236, 26.000954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657696, 34.921017, 26.680674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.947266, 35.130531, 26.501081>,  <41.121006, 35.256241, 26.393326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.947266, 35.130531, 26.501081>,  <40.657696, 34.921017, 26.680674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947266, 35.130531, 26.501081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024640, 0.630764, 0.775584,
		0.689442, -0.572525, 0.443718,
		0.723922, 0.523787, -0.448982,
		41.164444, 35.287666, 26.366386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274727, 34.853065, 27.094542>,  <40.657696, 34.921017, 26.680674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274727, 34.853065, 27.094542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338333, 35.181862, 26.875799>,  <41.376499, 35.379139, 26.744555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338333, 35.181862, 26.875799>,  <41.274727, 34.853065, 27.094542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338333, 35.181862, 26.875799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041126, 0.547907, 0.835527,
		0.986419, -0.155354, 0.053322,
		0.159018, 0.821987, -0.546855,
		41.386040, 35.428459, 26.711742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978054, 34.988274, 27.253399>,  <41.274727, 34.853065, 27.094542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978054, 34.988274, 27.253399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762302, 35.296696, 27.118023>,  <41.632851, 35.481750, 27.036797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762302, 35.296696, 27.118023>,  <41.978054, 34.988274, 27.253399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762302, 35.296696, 27.118023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057553, 0.434735, 0.898718,
		0.840096, 0.465269, -0.278862,
		-0.539377, 0.771058, -0.338441,
		41.600491, 35.528011, 27.016491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.481239, 37.884079, 21.338825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.103256, 37.868206, 21.208914>,  <40.876465, 37.858681, 21.130966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.103256, 37.868206, 21.208914>,  <41.481239, 37.884079, 21.338825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103256, 37.868206, 21.208914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261961, -0.686496, -0.678306,
		-0.196043, -0.726050, 0.659105,
		-0.944957, -0.039682, -0.324779,
		40.819771, 37.856300, 21.111481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380013, 37.196102, 21.233921>,  <41.481239, 37.884079, 21.338825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380013, 37.196102, 21.233921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098316, 37.386654, 21.023355>,  <40.929298, 37.500984, 20.897017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098316, 37.386654, 21.023355>,  <41.380013, 37.196102, 21.233921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098316, 37.386654, 21.023355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093009, -0.673174, -0.733612,
		-0.703844, -0.565599, 0.429768,
		-0.704239, 0.476376, -0.526415,
		40.887043, 37.529568, 20.865431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943172, 36.585758, 21.012472>,  <41.380013, 37.196102, 21.233921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943172, 36.585758, 21.012472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.844814, 36.900024, 20.785398>,  <40.785801, 37.088585, 20.649155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.844814, 36.900024, 20.785398>,  <40.943172, 36.585758, 21.012472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844814, 36.900024, 20.785398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021272, -0.581153, -0.813516,
		-0.969063, -0.212115, 0.126190,
		-0.245895, 0.785664, -0.567686,
		40.771046, 37.135723, 20.615093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319019, 36.465965, 20.572426>,  <40.943172, 36.585758, 21.012472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319019, 36.465965, 20.572426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.512775, 36.765137, 20.390892>,  <40.629028, 36.944641, 20.281971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.512775, 36.765137, 20.390892>,  <40.319019, 36.465965, 20.572426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512775, 36.765137, 20.390892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154202, -0.583625, -0.797247,
		-0.861157, 0.316193, -0.398032,
		0.484386, 0.747933, -0.453835,
		40.658092, 36.989517, 20.254742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006348, 36.522217, 19.962282>,  <40.319019, 36.465965, 20.572426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006348, 36.522217, 19.962282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.343170, 36.711437, 19.858620>,  <40.545265, 36.824970, 19.796423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.343170, 36.711437, 19.858620>,  <40.006348, 36.522217, 19.962282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343170, 36.711437, 19.858620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001536, -0.478357, -0.878164,
		-0.539382, 0.739864, -0.402079,
		0.842060, 0.473048, -0.259154,
		40.595787, 36.853352, 19.780874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859642, 36.622982, 19.229666>,  <40.006348, 36.522217, 19.962282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859642, 36.622982, 19.229666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248192, 36.706589, 19.274834>,  <40.481319, 36.756752, 19.301935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248192, 36.706589, 19.274834>,  <39.859642, 36.622982, 19.229666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248192, 36.706589, 19.274834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196404, -0.439129, -0.876693,
		-0.133656, 0.873772, -0.467609,
		0.971371, 0.209015, 0.112920,
		40.539604, 36.769295, 19.308710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028336, 36.899113, 18.622446>,  <39.859642, 36.622982, 19.229666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028336, 36.899113, 18.622446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372475, 36.781776, 18.789183>,  <40.578957, 36.711376, 18.889225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372475, 36.781776, 18.789183>,  <40.028336, 36.899113, 18.622446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372475, 36.781776, 18.789183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237307, -0.493245, -0.836896,
		0.451102, 0.818939, -0.354748,
		0.860344, -0.293342, 0.416843,
		40.630577, 36.693775, 18.914236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460663, 37.060844, 18.065231>,  <40.028336, 36.899113, 18.622446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460663, 37.060844, 18.065231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.650379, 36.808651, 18.311008>,  <40.764210, 36.657337, 18.458475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.650379, 36.808651, 18.311008>,  <40.460663, 37.060844, 18.065231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650379, 36.808651, 18.311008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330328, -0.519496, -0.788040,
		0.816044, 0.576731, -0.038129,
		0.474295, -0.630480, 0.614442,
		40.792667, 36.619507, 18.495340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154629, 37.052788, 17.901365>,  <40.460663, 37.060844, 18.065231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154629, 37.052788, 17.901365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.086632, 36.697720, 18.072544>,  <41.045834, 36.484676, 18.175251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.086632, 36.697720, 18.072544>,  <41.154629, 37.052788, 17.901365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086632, 36.697720, 18.072544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306423, -0.460356, -0.833173,
		0.936593, -0.010500, 0.350261,
		-0.169993, -0.887672, 0.427949,
		41.035633, 36.431419, 18.200930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542034, 36.577057, 17.377575>,  <41.154629, 37.052788, 17.901365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542034, 36.577057, 17.377575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365257, 36.315792, 17.623526>,  <41.259193, 36.159035, 17.771097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365257, 36.315792, 17.623526>,  <41.542034, 36.577057, 17.377575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365257, 36.315792, 17.623526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133680, -0.725748, -0.674848,
		0.887029, -0.216044, 0.408050,
		-0.441938, -0.653158, 0.614878,
		41.232677, 36.119846, 17.807989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070103, 36.117195, 17.662981>,  <41.542034, 36.577057, 17.377575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070103, 36.117195, 17.662981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.727955, 35.910110, 17.670128>,  <41.522667, 35.785862, 17.674416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.727955, 35.910110, 17.670128>,  <42.070103, 36.117195, 17.662981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727955, 35.910110, 17.670128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349185, -0.601727, -0.718327,
		0.382635, -0.608197, 0.695476,
		-0.855371, -0.517707, 0.017869,
		41.471344, 35.754799, 17.675489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234169, 35.522438, 17.461000>,  <42.070103, 36.117195, 17.662981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234169, 35.522438, 17.461000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.840130, 35.479847, 17.406971>,  <41.603706, 35.454292, 17.374554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.840130, 35.479847, 17.406971>,  <42.234169, 35.522438, 17.461000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840130, 35.479847, 17.406971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171824, -0.574245, -0.800449,
		0.007661, -0.811730, 0.583983,
		-0.985098, -0.106475, -0.135075,
		41.544601, 35.447903, 17.366447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948669, 34.760109, 17.612547>,  <42.234169, 35.522438, 17.461000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948669, 34.760109, 17.612547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.759350, 34.974865, 17.333195>,  <41.645760, 35.103718, 17.165583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.759350, 34.974865, 17.333195>,  <41.948669, 34.760109, 17.612547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759350, 34.974865, 17.333195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223966, -0.693411, -0.684851,
		-0.851955, -0.480553, 0.207945,
		-0.473299, 0.536890, -0.698382,
		41.617359, 35.135933, 17.123680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360531, 34.434532, 17.260963>,  <41.948669, 34.760109, 17.612547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360531, 34.434532, 17.260963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453876, 34.721317, 16.998205>,  <41.509884, 34.893387, 16.840549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453876, 34.721317, 16.998205>,  <41.360531, 34.434532, 17.260963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453876, 34.721317, 16.998205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224170, -0.617684, -0.753799,
		-0.946197, 0.323166, 0.016575,
		0.233364, 0.716958, -0.656896,
		41.523888, 34.936405, 16.801136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342007, 33.838585, 16.936705>,  <41.360531, 34.434532, 17.260963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342007, 33.838585, 16.936705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.057159, 33.561798, 16.889261>,  <40.886250, 33.395725, 16.860796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.057159, 33.561798, 16.889261>,  <41.342007, 33.838585, 16.936705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057159, 33.561798, 16.889261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279665, 0.124633, 0.951974,
		-0.643954, 0.711087, -0.282273,
		-0.712117, -0.691969, -0.118608,
		40.843525, 33.354206, 16.853680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692474, 34.215137, 17.189234>,  <41.342007, 33.838585, 16.936705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692474, 34.215137, 17.189234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661289, 33.816364, 17.192131>,  <40.642578, 33.577103, 17.193871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661289, 33.816364, 17.192131>,  <40.692474, 34.215137, 17.189234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661289, 33.816364, 17.192131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423111, 0.039669, 0.905209,
		-0.902717, 0.067511, -0.424905,
		-0.077967, -0.996930, 0.007245,
		40.637897, 33.517284, 17.194305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052170, 34.051006, 17.418680>,  <40.692474, 34.215137, 17.189234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052170, 34.051006, 17.418680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240253, 33.713242, 17.521343>,  <40.353104, 33.510582, 17.582941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240253, 33.713242, 17.521343>,  <40.052170, 34.051006, 17.418680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240253, 33.713242, 17.521343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449482, 0.021142, 0.893039,
		-0.759519, -0.535277, -0.369607,
		0.470209, -0.844412, 0.256655,
		40.381317, 33.459919, 17.598339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589035, 33.590424, 17.754295>,  <40.052170, 34.051006, 17.418680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589035, 33.590424, 17.754295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947628, 33.453747, 17.867125>,  <40.162785, 33.371742, 17.934822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947628, 33.453747, 17.867125>,  <39.589035, 33.590424, 17.754295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947628, 33.453747, 17.867125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351420, -0.160592, 0.922342,
		-0.269856, -0.925990, -0.264044,
		0.896483, -0.341690, 0.282075,
		40.216572, 33.351242, 17.951748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472107, 33.054592, 18.143904>,  <39.589035, 33.590424, 17.754295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472107, 33.054592, 18.143904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836842, 33.168266, 18.262428>,  <40.055683, 33.236469, 18.333544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836842, 33.168266, 18.262428>,  <39.472107, 33.054592, 18.143904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836842, 33.168266, 18.262428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205431, -0.309074, 0.928586,
		0.355470, -0.907587, -0.223444,
		0.911833, 0.284183, 0.296313,
		40.110390, 33.253521, 18.351322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674408, 32.623859, 18.623728>,  <39.472107, 33.054592, 18.143904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674408, 32.623859, 18.623728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.895279, 32.951820, 18.684191>,  <40.027802, 33.148598, 18.720469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.895279, 32.951820, 18.684191>,  <39.674408, 32.623859, 18.623728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895279, 32.951820, 18.684191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062881, -0.139832, 0.988177,
		0.831349, -0.555158, -0.025656,
		0.552182, 0.819906, 0.151158,
		40.060932, 33.197792, 18.729538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041245, 32.390190, 19.206591>,  <39.674408, 32.623859, 18.623728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041245, 32.390190, 19.206591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114750, 32.782822, 19.185711>,  <40.158852, 33.018402, 19.173183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114750, 32.782822, 19.185711>,  <40.041245, 32.390190, 19.206591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114750, 32.782822, 19.185711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053182, 0.043096, 0.997654,
		0.981531, -0.186109, -0.044283,
		0.183764, 0.981584, -0.052198,
		40.169880, 33.077297, 19.170052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694820, 32.578861, 19.575399>,  <40.041245, 32.390190, 19.206591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694820, 32.578861, 19.575399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.486374, 32.919769, 19.557142>,  <40.361305, 33.124313, 19.546188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.486374, 32.919769, 19.557142>,  <40.694820, 32.578861, 19.575399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486374, 32.919769, 19.557142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143910, 0.140455, 0.979573,
		0.841267, 0.503901, -0.195842,
		-0.521115, 0.852265, -0.045644,
		40.330040, 33.175449, 19.543449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047398, 33.081547, 20.011824>,  <40.694820, 32.578861, 19.575399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047398, 33.081547, 20.011824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.670742, 33.201611, 19.950876>,  <40.444748, 33.273647, 19.914309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.670742, 33.201611, 19.950876>,  <41.047398, 33.081547, 20.011824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670742, 33.201611, 19.950876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010578, 0.426039, 0.904643,
		0.336449, 0.853461, -0.398001,
		-0.941642, 0.300157, -0.152368,
		40.388248, 33.291656, 19.905167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999969, 33.706551, 20.332312>,  <41.047398, 33.081547, 20.011824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999969, 33.706551, 20.332312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.611145, 33.615341, 20.310070>,  <40.377850, 33.560616, 20.296724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.611145, 33.615341, 20.310070>,  <40.999969, 33.706551, 20.332312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611145, 33.615341, 20.310070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166973, 0.505350, 0.846606,
		-0.164950, 0.832241, -0.529308,
		-0.972066, -0.228027, -0.055604,
		40.319527, 33.546932, 20.293388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671822, 34.324249, 20.464375>,  <40.999969, 33.706551, 20.332312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671822, 34.324249, 20.464375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.426189, 34.020817, 20.551508>,  <40.278809, 33.838757, 20.603788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.426189, 34.020817, 20.551508>,  <40.671822, 34.324249, 20.464375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426189, 34.020817, 20.551508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154585, 0.386265, 0.909342,
		-0.773955, 0.524736, -0.354464,
		-0.614082, -0.758585, 0.217836,
		40.241966, 33.793240, 20.616859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173447, 34.577744, 20.927301>,  <40.671822, 34.324249, 20.464375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173447, 34.577744, 20.927301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144585, 34.180882, 20.968149>,  <40.127266, 33.942764, 20.992657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144585, 34.180882, 20.968149>,  <40.173447, 34.577744, 20.927301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144585, 34.180882, 20.968149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109361, 0.109637, 0.987937,
		-0.991380, 0.060118, -0.116414,
		-0.072156, -0.992152, 0.102117,
		40.122936, 33.883236, 20.998785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525364, 34.422901, 21.306862>,  <40.173447, 34.577744, 20.927301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525364, 34.422901, 21.306862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.796829, 34.131275, 21.342384>,  <39.959709, 33.956299, 21.363697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.796829, 34.131275, 21.342384>,  <39.525364, 34.422901, 21.306862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796829, 34.131275, 21.342384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021720, 0.140783, 0.989802,
		-0.734128, -0.669814, 0.111379,
		0.678663, -0.729061, 0.088805,
		40.000427, 33.912556, 21.369026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372013, 34.132141, 21.941235>,  <39.525364, 34.422901, 21.306862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372013, 34.132141, 21.941235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.738289, 33.987003, 21.872122>,  <39.958054, 33.899921, 21.830654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.738289, 33.987003, 21.872122>,  <39.372013, 34.132141, 21.941235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738289, 33.987003, 21.872122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233698, 0.130989, 0.963446,
		-0.326946, -0.922598, 0.204741,
		0.915692, -0.362842, -0.172783,
		40.012997, 33.878151, 21.820288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079422, 33.395344, 21.953508>,  <39.372013, 34.132141, 21.941235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079422, 33.395344, 21.953508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788624, 33.172180, 22.113615>,  <38.614147, 33.038280, 22.209679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788624, 33.172180, 22.113615>,  <39.079422, 33.395344, 21.953508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788624, 33.172180, 22.113615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199031, -0.386689, -0.900477,
		0.657167, -0.734306, 0.170078,
		-0.726992, -0.557912, 0.400269,
		38.570526, 33.004807, 22.233696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219872, 32.711861, 21.768541>,  <39.079422, 33.395344, 21.953508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219872, 32.711861, 21.768541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825806, 32.714752, 21.837124>,  <38.589367, 32.716488, 21.878273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825806, 32.714752, 21.837124>,  <39.219872, 32.711861, 21.768541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825806, 32.714752, 21.837124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145584, -0.564179, -0.812716,
		0.090858, -0.825621, 0.556862,
		-0.985165, 0.007228, 0.171457,
		38.530254, 32.716919, 21.888561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963730, 32.044880, 21.532080>,  <39.219872, 32.711861, 21.768541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963730, 32.044880, 21.532080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632473, 32.268887, 21.541550>,  <38.433720, 32.403290, 21.547232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632473, 32.268887, 21.541550>,  <38.963730, 32.044880, 21.532080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632473, 32.268887, 21.541550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332608, -0.456981, -0.824948,
		-0.451179, -0.691040, 0.564713,
		-0.828135, 0.560028, 0.023665,
		38.384029, 32.436890, 21.548653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411324, 31.611923, 21.466043>,  <38.963730, 32.044880, 21.532080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411324, 31.611923, 21.466043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229218, 31.954685, 21.369333>,  <38.119953, 32.160343, 21.311308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229218, 31.954685, 21.369333>,  <38.411324, 31.611923, 21.466043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229218, 31.954685, 21.369333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336310, -0.416932, -0.844430,
		-0.824399, -0.303125, 0.477998,
		-0.455261, 0.856903, -0.241775,
		38.092640, 32.211758, 21.296801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715305, 31.421293, 21.304113>,  <38.411324, 31.611923, 21.466043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715305, 31.421293, 21.304113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800823, 31.768736, 21.125311>,  <37.852135, 31.977201, 21.018030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800823, 31.768736, 21.125311>,  <37.715305, 31.421293, 21.304113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800823, 31.768736, 21.125311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352544, -0.358144, -0.864549,
		-0.911045, 0.342428, 0.229651,
		0.213798, 0.868606, -0.447006,
		37.864964, 32.029316, 20.991209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097630, 31.638399, 20.879187>,  <37.715305, 31.421293, 21.304113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097630, 31.638399, 20.879187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.411861, 31.836327, 20.730581>,  <37.600399, 31.955082, 20.641418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.411861, 31.836327, 20.730581>,  <37.097630, 31.638399, 20.879187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411861, 31.836327, 20.730581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169814, -0.404950, -0.898431,
		-0.595003, 0.768877, -0.234094,
		0.785579, 0.494817, -0.371513,
		37.647533, 31.984772, 20.619127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966930, 31.882143, 20.163731>,  <37.097630, 31.638399, 20.879187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966930, 31.882143, 20.163731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.366844, 31.888296, 20.169226>,  <37.606792, 31.891989, 20.172523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.366844, 31.888296, 20.169226>,  <36.966930, 31.882143, 20.163731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366844, 31.888296, 20.169226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017335, -0.265796, -0.963873,
		-0.011176, 0.963907, -0.266006,
		0.999787, 0.015384, 0.013739,
		37.666779, 31.892912, 20.173347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433731, 32.380703, 20.100403>,  <36.966930, 31.882143, 20.163731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433731, 32.380703, 20.100403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038673, 32.336807, 20.055653>,  <35.801640, 32.310471, 20.028803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038673, 32.336807, 20.055653>,  <36.433731, 32.380703, 20.100403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038673, 32.336807, 20.055653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154118, 0.550816, 0.820274,
		-0.028390, 0.827381, -0.560923,
		-0.987645, -0.109736, -0.111877,
		35.742378, 32.303886, 20.022089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187927, 32.976151, 20.446064>,  <36.433731, 32.380703, 20.100403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187927, 32.976151, 20.446064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866421, 32.741318, 20.407495>,  <35.673515, 32.600418, 20.384354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866421, 32.741318, 20.407495>,  <36.187927, 32.976151, 20.446064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866421, 32.741318, 20.407495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404992, 0.421188, 0.811530,
		-0.435820, 0.691332, -0.576299,
		-0.803768, -0.587077, -0.096422,
		35.625290, 32.565193, 20.378569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596138, 33.416813, 20.550325>,  <36.187927, 32.976151, 20.446064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596138, 33.416813, 20.550325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464920, 33.047890, 20.632038>,  <35.386189, 32.826534, 20.681067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464920, 33.047890, 20.632038>,  <35.596138, 33.416813, 20.550325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464920, 33.047890, 20.632038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328284, 0.314074, 0.890835,
		-0.885785, 0.225174, -0.405810,
		-0.328047, -0.922309, 0.204281,
		35.366505, 32.771198, 20.693323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018646, 33.509342, 20.907639>,  <35.596138, 33.416813, 20.550325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018646, 33.509342, 20.907639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106121, 33.135620, 21.020248>,  <35.158607, 32.911388, 21.087814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106121, 33.135620, 21.020248>,  <35.018646, 33.509342, 20.907639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106121, 33.135620, 21.020248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207977, 0.237248, 0.948925,
		-0.953374, -0.266068, -0.142430,
		0.218687, -0.934302, 0.281522,
		35.171726, 32.855328, 21.104706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427788, 33.221931, 21.308702>,  <35.018646, 33.509342, 20.907639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427788, 33.221931, 21.308702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753963, 33.018486, 21.419245>,  <34.949669, 32.896420, 21.485571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753963, 33.018486, 21.419245>,  <34.427788, 33.221931, 21.308702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753963, 33.018486, 21.419245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231087, 0.151688, 0.961035,
		-0.530716, -0.847527, 0.006158,
		0.815438, -0.508614, 0.276356,
		34.998596, 32.865902, 21.502151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209011, 32.763981, 21.774395>,  <34.427788, 33.221931, 21.308702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209011, 32.763981, 21.774395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604450, 32.761173, 21.834572>,  <34.841713, 32.759487, 21.870678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604450, 32.761173, 21.834572>,  <34.209011, 32.763981, 21.774395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604450, 32.761173, 21.834572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149359, 0.082445, 0.985340,
		-0.019326, -0.996571, 0.080455,
		0.988594, -0.007026, 0.150440,
		34.901028, 32.759068, 21.879704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244316, 32.352489, 22.451738>,  <34.209011, 32.763981, 21.774395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244316, 32.352489, 22.451738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592415, 32.536346, 22.380867>,  <34.801273, 32.646660, 22.338345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592415, 32.536346, 22.380867>,  <34.244316, 32.352489, 22.451738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592415, 32.536346, 22.380867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023207, 0.397527, 0.917297,
		0.492066, -0.794165, 0.356615,
		0.870249, 0.459647, -0.177179,
		34.853489, 32.674240, 22.327713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.547333, 35.424164, 17.370316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945148, 35.383354, 17.361557>,  <38.183838, 35.358868, 17.356302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945148, 35.383354, 17.361557>,  <37.547333, 35.424164, 17.370316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945148, 35.383354, 17.361557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012651, -0.090389, 0.995826,
		-0.103598, -0.990665, -0.088605,
		0.994539, -0.102045, -0.021897,
		38.243511, 35.352745, 17.354988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774761, 34.914688, 17.871191>,  <37.547333, 35.424164, 17.370316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774761, 34.914688, 17.871191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105133, 35.134789, 17.822102>,  <38.303356, 35.266850, 17.792648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105133, 35.134789, 17.822102>,  <37.774761, 34.914688, 17.871191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105133, 35.134789, 17.822102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066507, 0.121067, 0.990414,
		0.559836, -0.826175, 0.063397,
		0.825930, 0.550253, -0.122724,
		38.352913, 35.299866, 17.785284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155178, 34.708160, 18.387396>,  <37.774761, 34.914688, 17.871191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155178, 34.708160, 18.387396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346371, 35.044689, 18.286428>,  <38.461086, 35.246605, 18.225847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346371, 35.044689, 18.286428>,  <38.155178, 34.708160, 18.387396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346371, 35.044689, 18.286428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192040, 0.180326, 0.964677,
		0.857121, -0.509570, -0.075375,
		0.477979, 0.841321, -0.252419,
		38.489765, 35.297085, 18.210703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712784, 34.812683, 18.911947>,  <38.155178, 34.708160, 18.387396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712784, 34.812683, 18.911947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.631390, 35.163013, 18.736897>,  <38.582554, 35.373211, 18.631866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.631390, 35.163013, 18.736897>,  <38.712784, 34.812683, 18.911947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631390, 35.163013, 18.736897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000568, 0.447084, 0.894492,
		0.979077, 0.181771, -0.091475,
		-0.203490, 0.875828, -0.437627,
		38.570343, 35.425762, 18.605608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029816, 35.224583, 19.351959>,  <38.712784, 34.812683, 18.911947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029816, 35.224583, 19.351959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.791767, 35.463272, 19.136644>,  <38.648937, 35.606487, 19.007456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.791767, 35.463272, 19.136644>,  <39.029816, 35.224583, 19.351959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791767, 35.463272, 19.136644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010549, 0.675556, 0.737233,
		0.803565, 0.433067, -0.408334,
		-0.595123, 0.596722, -0.538285,
		38.613232, 35.642288, 18.975159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322983, 35.910019, 19.438404>,  <39.029816, 35.224583, 19.351959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322983, 35.910019, 19.438404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936291, 35.914364, 19.336170>,  <38.704277, 35.916969, 19.274830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936291, 35.914364, 19.336170>,  <39.322983, 35.910019, 19.438404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936291, 35.914364, 19.336170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200075, 0.590481, 0.781858,
		0.159410, 0.806979, -0.568660,
		-0.966726, 0.010861, -0.255585,
		38.646275, 35.917622, 19.259495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103832, 36.622944, 19.632429>,  <39.322983, 35.910019, 19.438404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103832, 36.622944, 19.632429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753597, 36.454372, 19.537981>,  <38.543457, 36.353230, 19.481312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753597, 36.454372, 19.537981>,  <39.103832, 36.622944, 19.632429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753597, 36.454372, 19.537981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476394, 0.672345, 0.566569,
		-0.080016, 0.608563, -0.789461,
		-0.875583, -0.421429, -0.236118,
		38.490921, 36.327942, 19.467146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639675, 37.162823, 19.542479>,  <39.103832, 36.622944, 19.632429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639675, 37.162823, 19.542479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408886, 36.842777, 19.608105>,  <38.270412, 36.650749, 19.647480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408886, 36.842777, 19.608105>,  <38.639675, 37.162823, 19.542479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408886, 36.842777, 19.608105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697461, 0.587185, 0.410807,
		-0.425029, 0.122596, -0.896839,
		-0.576973, -0.800115, 0.164065,
		38.235794, 36.602741, 19.657324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861038, 37.243176, 19.358561>,  <38.639675, 37.162823, 19.542479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861038, 37.243176, 19.358561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.854633, 36.963028, 19.644003>,  <37.850792, 36.794941, 19.815268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.854633, 36.963028, 19.644003>,  <37.861038, 37.243176, 19.358561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854633, 36.963028, 19.644003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698628, 0.518413, 0.493120,
		-0.715306, -0.490647, -0.497596,
		-0.016012, -0.700367, 0.713604,
		37.849831, 36.752918, 19.858084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210281, 37.165997, 19.562735>,  <37.861038, 37.243176, 19.358561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210281, 37.165997, 19.562735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.383858, 36.997250, 19.881163>,  <37.488003, 36.896000, 20.072220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.383858, 36.997250, 19.881163>,  <37.210281, 37.165997, 19.562735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383858, 36.997250, 19.881163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633540, 0.485349, 0.602548,
		-0.640566, -0.765810, -0.056657,
		0.433939, -0.421866, 0.796069,
		37.514038, 36.870689, 20.119984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625267, 36.998493, 19.983927>,  <37.210281, 37.165997, 19.562735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625267, 36.998493, 19.983927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.955029, 36.997738, 20.210325>,  <37.152885, 36.997284, 20.346165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.955029, 36.997738, 20.210325>,  <36.625267, 36.998493, 19.983927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955029, 36.997738, 20.210325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535426, 0.321602, 0.780955,
		-0.183501, -0.946873, 0.264119,
		0.824406, -0.001890, 0.565995,
		37.202351, 36.997169, 20.380123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432850, 36.634495, 20.555702>,  <36.625267, 36.998493, 19.983927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432850, 36.634495, 20.555702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.739239, 36.871315, 20.655910>,  <36.923073, 37.013409, 20.716036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.739239, 36.871315, 20.655910>,  <36.432850, 36.634495, 20.555702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739239, 36.871315, 20.655910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453233, 0.220964, 0.863571,
		0.455926, -0.775013, 0.437591,
		0.765971, 0.592055, 0.250518,
		36.969028, 37.048931, 20.731066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116543, 35.964092, 20.604744>,  <36.432850, 36.634495, 20.555702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116543, 35.964092, 20.604744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.744003, 35.867397, 20.495815>,  <35.520481, 35.809380, 20.430458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.744003, 35.867397, 20.495815>,  <36.116543, 35.964092, 20.604744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744003, 35.867397, 20.495815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353592, -0.421717, -0.834942,
		0.086996, -0.873909, 0.478241,
		-0.931345, -0.241739, -0.272320,
		35.464600, 35.794876, 20.414120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007507, 35.157661, 20.475441>,  <36.116543, 35.964092, 20.604744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007507, 35.157661, 20.475441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721149, 35.355713, 20.278530>,  <35.549335, 35.474545, 20.160383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721149, 35.355713, 20.278530>,  <36.007507, 35.157661, 20.475441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721149, 35.355713, 20.278530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168910, -0.561301, -0.810192,
		-0.677469, -0.663163, 0.318200,
		-0.715895, 0.495132, -0.492279,
		35.506382, 35.504253, 20.130846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764481, 34.708939, 20.065474>,  <36.007507, 35.157661, 20.475441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764481, 34.708939, 20.065474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.583527, 35.018520, 19.888233>,  <35.474957, 35.204269, 19.781889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.583527, 35.018520, 19.888233>,  <35.764481, 34.708939, 20.065474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583527, 35.018520, 19.888233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082316, -0.458492, -0.884878,
		-0.888017, -0.436778, 0.143705,
		-0.452382, 0.773957, -0.443103,
		35.447811, 35.250706, 19.755302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286751, 34.421825, 19.600636>,  <35.764481, 34.708939, 20.065474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286751, 34.421825, 19.600636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.371181, 34.783813, 19.452866>,  <35.421841, 35.001007, 19.364204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.371181, 34.783813, 19.452866>,  <35.286751, 34.421825, 19.600636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371181, 34.783813, 19.452866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033171, -0.384353, -0.922590,
		-0.976907, 0.182482, -0.111146,
		0.211076, 0.904971, -0.369424,
		35.434505, 35.055305, 19.342039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864822, 34.538631, 19.024708>,  <35.286751, 34.421825, 19.600636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864822, 34.538631, 19.024708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.181709, 34.773514, 18.958277>,  <35.371841, 34.914444, 18.918419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.181709, 34.773514, 18.958277>,  <34.864822, 34.538631, 19.024708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181709, 34.773514, 18.958277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105494, -0.399837, -0.910495,
		-0.601051, 0.703790, -0.378704,
		0.792218, 0.587205, -0.166076,
		35.419376, 34.949677, 18.908453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864082, 34.736515, 18.384651>,  <34.864822, 34.538631, 19.024708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864082, 34.736515, 18.384651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231564, 34.881958, 18.446331>,  <35.452053, 34.969223, 18.483339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231564, 34.881958, 18.446331>,  <34.864082, 34.736515, 18.384651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231564, 34.881958, 18.446331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293098, -0.365983, -0.883261,
		-0.264722, 0.856650, -0.442801,
		0.918703, 0.363603, 0.154199,
		35.507175, 34.991039, 18.492590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148010, 35.248932, 17.751284>,  <34.864082, 34.736515, 18.384651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148010, 35.248932, 17.751284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450596, 35.072964, 17.944878>,  <35.632145, 34.967384, 18.061033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450596, 35.072964, 17.944878>,  <35.148010, 35.248932, 17.751284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450596, 35.072964, 17.944878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332495, -0.378571, -0.863789,
		0.563218, 0.814344, -0.140104,
		0.756461, -0.439918, 0.483983,
		35.677532, 34.940987, 18.090073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690659, 35.321857, 17.286192>,  <35.148010, 35.248932, 17.751284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690659, 35.321857, 17.286192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805023, 35.043209, 17.549397>,  <35.873642, 34.876022, 17.707319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805023, 35.043209, 17.549397>,  <35.690659, 35.321857, 17.286192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805023, 35.043209, 17.549397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513563, -0.468339, -0.718966,
		0.809017, 0.543491, 0.223853,
		0.285912, -0.696618, 0.658010,
		35.890797, 34.834225, 17.746799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366356, 35.120190, 17.146246>,  <35.690659, 35.321857, 17.286192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366356, 35.120190, 17.146246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.252380, 34.812515, 17.375038>,  <36.183994, 34.627911, 17.512314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.252380, 34.812515, 17.375038>,  <36.366356, 35.120190, 17.146246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252380, 34.812515, 17.375038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283457, -0.637646, -0.716282,
		0.915676, -0.041963, 0.399721,
		-0.284938, -0.769186, 0.571982,
		36.166901, 34.581760, 17.546633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006405, 34.720219, 17.205799>,  <36.366356, 35.120190, 17.146246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006405, 34.720219, 17.205799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.684326, 34.494297, 17.278082>,  <36.491077, 34.358746, 17.321451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.684326, 34.494297, 17.278082>,  <37.006405, 34.720219, 17.205799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684326, 34.494297, 17.278082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393385, -0.736771, -0.549924,
		0.443735, -0.371712, 0.815432,
		-0.805200, -0.564800, 0.180706,
		36.442764, 34.324856, 17.332294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223263, 34.004227, 17.350657>,  <37.006405, 34.720219, 17.205799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223263, 34.004227, 17.350657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844128, 33.958260, 17.231728>,  <36.616646, 33.930679, 17.160370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844128, 33.958260, 17.231728>,  <37.223263, 34.004227, 17.350657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844128, 33.958260, 17.231728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283949, -0.728239, -0.623732,
		-0.144845, -0.675620, 0.722881,
		-0.947836, -0.114917, -0.297323,
		36.559776, 33.923786, 17.142530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242935, 33.363686, 17.226870>,  <37.223263, 34.004227, 17.350657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242935, 33.363686, 17.226870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880325, 33.435001, 17.073811>,  <36.662758, 33.477791, 16.981976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880325, 33.435001, 17.073811>,  <37.242935, 33.363686, 17.226870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880325, 33.435001, 17.073811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161983, -0.690135, -0.705319,
		-0.389833, -0.701373, 0.596746,
		-0.906528, 0.178294, -0.382647,
		36.608368, 33.488491, 16.959017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875313, 32.695045, 17.080572>,  <37.242935, 33.363686, 17.226870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875313, 32.695045, 17.080572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732998, 32.978462, 16.836809>,  <36.647610, 33.148514, 16.690552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732998, 32.978462, 16.836809>,  <36.875313, 32.695045, 17.080572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732998, 32.978462, 16.836809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224614, -0.568131, -0.791692,
		-0.907173, -0.418556, 0.042985,
		-0.355789, 0.708546, -0.609407,
		36.626263, 33.191025, 16.653988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136883, 32.646542, 16.904259>,  <36.875313, 32.695045, 17.080572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136883, 32.646542, 16.904259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.111687, 32.254932, 16.826750>,  <36.096569, 32.019966, 16.780245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.111687, 32.254932, 16.826750>,  <36.136883, 32.646542, 16.904259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111687, 32.254932, 16.826750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177141, -0.180109, 0.967565,
		-0.982168, 0.095271, -0.162080,
		-0.062989, -0.979022, -0.193774,
		36.092789, 31.961226, 16.768618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374142, 32.476326, 17.087294>,  <36.136883, 32.646542, 16.904259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374142, 32.476326, 17.087294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.661079, 32.198814, 17.112839>,  <35.833244, 32.032307, 17.128166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.661079, 32.198814, 17.112839>,  <35.374142, 32.476326, 17.087294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661079, 32.198814, 17.112839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133000, -0.046382, 0.990030,
		-0.683905, -0.718688, -0.125545,
		0.717346, -0.693783, 0.063865,
		35.876282, 31.990679, 17.131998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032864, 32.007725, 17.446653>,  <35.374142, 32.476326, 17.087294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032864, 32.007725, 17.446653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.411907, 31.884365, 17.479940>,  <35.639332, 31.810350, 17.499912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.411907, 31.884365, 17.479940>,  <35.032864, 32.007725, 17.446653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411907, 31.884365, 17.479940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089801, -0.007183, 0.995934,
		-0.306547, -0.951230, -0.034502,
		0.947610, -0.308399, 0.083219,
		35.696190, 31.791845, 17.504906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942474, 31.519398, 17.918379>,  <35.032864, 32.007725, 17.446653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942474, 31.519398, 17.918379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.330032, 31.617699, 17.929981>,  <35.562569, 31.676680, 17.936943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.330032, 31.617699, 17.929981>,  <34.942474, 31.519398, 17.918379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330032, 31.617699, 17.929981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015060, -0.175565, 0.984353,
		0.246999, -0.953301, -0.173806,
		0.968899, 0.245752, 0.029008,
		35.620701, 31.691423, 17.938683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140324, 31.130043, 18.428415>,  <34.942474, 31.519398, 17.918379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140324, 31.130043, 18.428415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430832, 31.404997, 18.430786>,  <35.605137, 31.569969, 18.432209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430832, 31.404997, 18.430786>,  <35.140324, 31.130043, 18.428415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430832, 31.404997, 18.430786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024923, 0.017713, 0.999532,
		0.686958, -0.726077, 0.029996,
		0.726269, 0.687385, 0.005928,
		35.648712, 31.611212, 18.432564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443447, 30.932304, 18.956017>,  <35.140324, 31.130043, 18.428415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443447, 30.932304, 18.956017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.549530, 31.314220, 18.902294>,  <35.613178, 31.543371, 18.870060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.549530, 31.314220, 18.902294>,  <35.443447, 30.932304, 18.956017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549530, 31.314220, 18.902294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014150, 0.143133, 0.989602,
		0.964088, -0.260547, 0.051470,
		0.265205, 0.954793, -0.134306,
		35.629093, 31.600658, 18.862001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018677, 31.126616, 19.435556>,  <35.443447, 30.932304, 18.956017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018677, 31.126616, 19.435556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835651, 31.471083, 19.346989>,  <35.725838, 31.677763, 19.293848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835651, 31.471083, 19.346989>,  <36.018677, 31.126616, 19.435556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835651, 31.471083, 19.346989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037703, 0.267581, 0.962798,
		0.888377, 0.432194, -0.154904,
		-0.457564, 0.861167, -0.221418,
		35.698383, 31.729433, 19.280563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478588, 31.627758, 19.708164>,  <36.018677, 31.126616, 19.435556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478588, 31.627758, 19.708164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105755, 31.771139, 19.687271>,  <35.882053, 31.857168, 19.674736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105755, 31.771139, 19.687271>,  <36.478588, 31.627758, 19.708164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105755, 31.771139, 19.687271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101796, 0.397578, 0.911904,
		0.347639, 0.844657, -0.407066,
		-0.932086, 0.358451, -0.052231,
		35.826130, 31.878674, 19.671602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108059, 31.938534, 19.466969>,  <36.478588, 31.627758, 19.708164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108059, 31.938534, 19.466969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482178, 31.883591, 19.597420>,  <37.706650, 31.850624, 19.675690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482178, 31.883591, 19.597420>,  <37.108059, 31.938534, 19.466969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482178, 31.883591, 19.597420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289595, -0.232545, -0.928470,
		0.203373, 0.962837, -0.177720,
		0.935294, -0.137359, 0.326126,
		37.762764, 31.842382, 19.695257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583244, 32.282864, 18.978102>,  <37.108059, 31.938534, 19.466969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583244, 32.282864, 18.978102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811337, 32.013176, 19.165833>,  <37.948193, 31.851362, 19.278471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811337, 32.013176, 19.165833>,  <37.583244, 32.282864, 18.978102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811337, 32.013176, 19.165833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333988, -0.331690, -0.882289,
		0.750528, 0.659855, 0.036043,
		0.570227, -0.674221, 0.469326,
		37.982407, 31.810909, 19.306631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270088, 32.330669, 18.599451>,  <37.583244, 32.282864, 18.978102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270088, 32.330669, 18.599451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.283394, 31.978029, 18.787777>,  <38.291378, 31.766445, 18.900772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.283394, 31.978029, 18.787777>,  <38.270088, 32.330669, 18.599451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283394, 31.978029, 18.787777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639366, -0.343303, -0.688007,
		0.768182, 0.323910, 0.552248,
		0.033264, -0.881604, 0.470817,
		38.293373, 31.713549, 18.929022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037773, 32.224716, 18.616774>,  <38.270088, 32.330669, 18.599451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037773, 32.224716, 18.616774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.828300, 31.885180, 18.645685>,  <38.702618, 31.681458, 18.663033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.828300, 31.885180, 18.645685>,  <39.037773, 32.224716, 18.616774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828300, 31.885180, 18.645685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641572, -0.448775, -0.622083,
		0.560488, -0.279399, 0.779608,
		-0.523678, -0.848845, 0.072278,
		38.671196, 31.630526, 18.667368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544727, 31.662811, 18.529800>,  <39.037773, 32.224716, 18.616774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544727, 31.662811, 18.529800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.190918, 31.492069, 18.454533>,  <38.978630, 31.389624, 18.409372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.190918, 31.492069, 18.454533>,  <39.544727, 31.662811, 18.529800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190918, 31.492069, 18.454533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419555, -0.551597, -0.720912,
		0.203932, -0.716613, 0.666992,
		-0.884525, -0.426857, -0.188170,
		38.925560, 31.364012, 18.398081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673264, 30.955427, 18.366304>,  <39.544727, 31.662811, 18.529800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673264, 30.955427, 18.366304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.299690, 31.007460, 18.233130>,  <39.075546, 31.038679, 18.153225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.299690, 31.007460, 18.233130>,  <39.673264, 30.955427, 18.366304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299690, 31.007460, 18.233130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152898, -0.696537, -0.701041,
		-0.323098, -0.705631, 0.630629,
		-0.933933, 0.130083, -0.332939,
		39.019512, 31.046484, 18.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638409, 30.298702, 18.247581>,  <39.673264, 30.955427, 18.366304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638409, 30.298702, 18.247581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336975, 30.476183, 18.053574>,  <39.156116, 30.582670, 17.937168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336975, 30.476183, 18.053574>,  <39.638409, 30.298702, 18.247581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336975, 30.476183, 18.053574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007219, -0.732206, -0.681045,
		-0.657313, -0.516725, 0.548575,
		-0.753583, 0.443699, -0.485019,
		39.110901, 30.609293, 17.908068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119663, 29.719906, 17.895044>,  <39.638409, 30.298702, 18.247581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119663, 29.719906, 17.895044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057812, 30.070431, 17.712543>,  <39.020702, 30.280746, 17.603043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057812, 30.070431, 17.712543>,  <39.119663, 29.719906, 17.895044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057812, 30.070431, 17.712543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155103, -0.477614, -0.864771,
		-0.975722, -0.062952, 0.209772,
		-0.154629, 0.876312, -0.456254,
		39.011421, 30.333324, 17.575666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455639, 29.610121, 17.499962>,  <39.119663, 29.719906, 17.895044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455639, 29.610121, 17.499962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.676884, 29.905655, 17.345978>,  <38.809631, 30.082975, 17.253588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.676884, 29.905655, 17.345978>,  <38.455639, 29.610121, 17.499962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676884, 29.905655, 17.345978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096385, -0.515721, -0.851317,
		-0.827515, 0.433767, -0.356463,
		0.553108, 0.738836, -0.384958,
		38.842815, 30.127306, 17.230490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.327671, 37.283333, 31.871952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566269, 37.458488, 31.602898>,  <37.709427, 37.563583, 31.441465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566269, 37.458488, 31.602898>,  <37.327671, 37.283333, 31.871952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566269, 37.458488, 31.602898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201666, -0.729401, -0.653686,
		-0.776866, 0.525571, -0.346778,
		0.596498, 0.437893, -0.672636,
		37.745220, 37.589855, 31.401106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997379, 37.329597, 31.134050>,  <37.327671, 37.283333, 31.871952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997379, 37.329597, 31.134050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392540, 37.364525, 31.082800>,  <37.629639, 37.385483, 31.052050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392540, 37.364525, 31.082800>,  <36.997379, 37.329597, 31.134050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392540, 37.364525, 31.082800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049789, -0.603926, -0.795484,
		-0.146842, 0.792243, -0.592274,
		0.987906, 0.087322, -0.128127,
		37.688911, 37.390720, 31.044361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004570, 37.396679, 30.476631>,  <36.997379, 37.329597, 31.134050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004570, 37.396679, 30.476631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386360, 37.308014, 30.556482>,  <37.615433, 37.254814, 30.604393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386360, 37.308014, 30.556482>,  <37.004570, 37.396679, 30.476631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386360, 37.308014, 30.556482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001302, -0.666108, -0.745854,
		0.298302, 0.712156, -0.635492,
		0.954470, -0.221662, 0.199629,
		37.672703, 37.241516, 30.616371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277729, 37.396267, 29.793213>,  <37.004570, 37.396679, 30.476631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277729, 37.396267, 29.793213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506901, 37.175610, 30.035683>,  <37.644402, 37.043217, 30.181164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506901, 37.175610, 30.035683>,  <37.277729, 37.396267, 29.793213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506901, 37.175610, 30.035683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046820, -0.760410, -0.647753,
		0.818269, 0.342733, -0.461486,
		0.572925, -0.551643, 0.606174,
		37.678780, 37.010117, 30.217535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737129, 37.089500, 29.365591>,  <37.277729, 37.396267, 29.793213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737129, 37.089500, 29.365591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743084, 36.851006, 29.686661>,  <37.746658, 36.707909, 29.879303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743084, 36.851006, 29.686661>,  <37.737129, 37.089500, 29.365591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743084, 36.851006, 29.686661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036403, -0.802553, -0.595469,
		0.999226, -0.020355, -0.033653,
		0.014888, -0.596233, 0.802673,
		37.747551, 36.672134, 29.927464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282291, 36.668468, 29.274712>,  <37.737129, 37.089500, 29.365591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282291, 36.668468, 29.274712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032444, 36.500950, 29.538364>,  <37.882534, 36.400440, 29.696556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032444, 36.500950, 29.538364>,  <38.282291, 36.668468, 29.274712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032444, 36.500950, 29.538364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088185, -0.800814, -0.592386,
		0.775933, -0.428142, 0.463273,
		-0.624621, -0.418798, 0.659134,
		37.845058, 36.375309, 29.736105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481583, 35.982300, 29.239386>,  <38.282291, 36.668468, 29.274712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481583, 35.982300, 29.239386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112301, 35.995605, 29.392530>,  <37.890732, 36.003590, 29.484417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112301, 35.995605, 29.392530>,  <38.481583, 35.982300, 29.239386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112301, 35.995605, 29.392530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270698, -0.763450, -0.586401,
		0.272787, -0.645009, 0.713828,
		-0.923206, 0.033269, 0.382862,
		37.835339, 36.005585, 29.507389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289650, 35.294407, 29.359562>,  <38.481583, 35.982300, 29.239386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289650, 35.294407, 29.359562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937714, 35.484230, 29.369978>,  <37.726551, 35.598125, 29.376226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937714, 35.484230, 29.369978>,  <38.289650, 35.294407, 29.359562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937714, 35.484230, 29.369978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402412, -0.714686, -0.572092,
		-0.252881, -0.513827, 0.819776,
		-0.879839, 0.474559, 0.026039,
		37.673763, 35.626598, 29.377790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766609, 34.778591, 29.517344>,  <38.289650, 35.294407, 29.359562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766609, 34.778591, 29.517344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587025, 35.074085, 29.316267>,  <37.479275, 35.251381, 29.195621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587025, 35.074085, 29.316267>,  <37.766609, 34.778591, 29.517344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587025, 35.074085, 29.316267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288155, -0.652219, -0.701125,
		-0.845815, -0.169923, 0.505691,
		-0.448958, 0.738740, -0.502693,
		37.452335, 35.295708, 29.165459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244465, 34.488304, 29.246037>,  <37.766609, 34.778591, 29.517344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244465, 34.488304, 29.246037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296680, 34.810757, 29.015175>,  <37.328011, 35.004230, 28.876657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296680, 34.810757, 29.015175>,  <37.244465, 34.488304, 29.246037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296680, 34.810757, 29.015175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220261, -0.544006, -0.809656,
		-0.966667, 0.232815, 0.106547,
		0.130538, 0.806136, -0.577153,
		37.335842, 35.052597, 28.842030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734898, 34.421936, 28.732643>,  <37.244465, 34.488304, 29.246037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734898, 34.421936, 28.732643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999012, 34.675583, 28.571686>,  <37.157482, 34.827770, 28.475111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999012, 34.675583, 28.571686>,  <36.734898, 34.421936, 28.732643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999012, 34.675583, 28.571686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070652, -0.480976, -0.873882,
		-0.747682, 0.605444, -0.272782,
		0.660288, 0.634113, -0.402393,
		37.197098, 34.865818, 28.450968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551159, 34.570667, 28.083374>,  <36.734898, 34.421936, 28.732643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551159, 34.570667, 28.083374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948231, 34.618942, 28.085243>,  <37.186474, 34.647907, 28.086365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948231, 34.618942, 28.085243>,  <36.551159, 34.570667, 28.083374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948231, 34.618942, 28.085243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053663, -0.406048, -0.912275,
		-0.108202, 0.905847, -0.409552,
		0.992680, 0.120688, 0.004675,
		37.246033, 34.655148, 28.086645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121101, 35.214573, 27.978733>,  <36.551159, 34.570667, 28.083374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121101, 35.214573, 27.978733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736298, 35.159149, 27.884628>,  <35.505417, 35.125896, 27.828165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736298, 35.159149, 27.884628>,  <36.121101, 35.214573, 27.978733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736298, 35.159149, 27.884628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269346, 0.340535, 0.900826,
		-0.044701, 0.929966, -0.364917,
		-0.962005, -0.138557, -0.235260,
		35.447697, 35.117580, 27.814051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820393, 35.790829, 28.207428>,  <36.121101, 35.214573, 27.978733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820393, 35.790829, 28.207428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536453, 35.509636, 28.189852>,  <35.366089, 35.340919, 28.179306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536453, 35.509636, 28.189852>,  <35.820393, 35.790829, 28.207428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536453, 35.509636, 28.189852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306191, 0.251794, 0.918067,
		-0.634322, 0.665141, -0.393982,
		-0.709846, -0.702984, -0.043942,
		35.323498, 35.298740, 28.176670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220791, 36.258335, 28.428993>,  <35.820393, 35.790829, 28.207428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220791, 36.258335, 28.428993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115223, 35.874008, 28.462866>,  <35.051884, 35.643410, 28.483189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115223, 35.874008, 28.462866>,  <35.220791, 36.258335, 28.428993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115223, 35.874008, 28.462866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489972, 0.209169, 0.846272,
		-0.830828, 0.181853, -0.525979,
		-0.263916, -0.960822, 0.084680,
		35.036049, 35.585762, 28.488270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430500, 36.260841, 28.692472>,  <35.220791, 36.258335, 28.428993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430500, 36.260841, 28.692472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548126, 35.885635, 28.765846>,  <34.618702, 35.660511, 28.809872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548126, 35.885635, 28.765846>,  <34.430500, 36.260841, 28.692472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548126, 35.885635, 28.765846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461829, 0.028580, 0.886508,
		-0.836802, -0.345409, -0.424799,
		0.294068, -0.938017, 0.183436,
		34.636345, 35.604229, 28.820877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731052, 35.854324, 28.837828>,  <34.430500, 36.260841, 28.692472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731052, 35.854324, 28.837828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042244, 35.663479, 29.001345>,  <34.228958, 35.548973, 29.099455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042244, 35.663479, 29.001345>,  <33.731052, 35.854324, 28.837828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042244, 35.663479, 29.001345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461341, 0.007884, 0.887188,
		-0.426514, -0.878806, -0.213979,
		0.777978, -0.477115, 0.408792,
		34.275639, 35.520344, 29.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420044, 35.333950, 29.305439>,  <33.731052, 35.854324, 28.837828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420044, 35.333950, 29.305439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791752, 35.415447, 29.428690>,  <34.014778, 35.464348, 29.502640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791752, 35.415447, 29.428690>,  <33.420044, 35.333950, 29.305439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791752, 35.415447, 29.428690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306265, -0.041422, 0.951045,
		0.206536, -0.978147, 0.023909,
		0.929271, 0.203747, 0.308127,
		34.070534, 35.476570, 29.521128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553349, 34.768650, 29.696676>,  <33.420044, 35.333950, 29.305439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553349, 34.768650, 29.696676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781471, 35.078461, 29.806112>,  <33.918346, 35.264347, 29.871773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781471, 35.078461, 29.806112>,  <33.553349, 34.768650, 29.696676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781471, 35.078461, 29.806112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352244, -0.070290, 0.933265,
		0.742073, -0.628619, 0.232737,
		0.570308, 0.774531, 0.273588,
		33.952564, 35.310822, 29.888189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232933, 34.848297, 30.409431>,  <33.553349, 34.768650, 29.696676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232933, 34.848297, 30.409431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499008, 35.144413, 30.370451>,  <33.658653, 35.322083, 30.347063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499008, 35.144413, 30.370451>,  <33.232933, 34.848297, 30.409431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499008, 35.144413, 30.370451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324438, 0.404110, 0.855240,
		0.672503, -0.537282, 0.508987,
		0.665191, 0.740286, -0.097450,
		33.698566, 35.366497, 30.341215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754051, 34.906200, 31.037292>,  <33.232933, 34.848297, 30.409431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754051, 34.906200, 31.037292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698692, 35.248627, 30.838095>,  <33.665478, 35.454082, 30.718576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698692, 35.248627, 30.838095>,  <33.754051, 34.906200, 31.037292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698692, 35.248627, 30.838095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188716, 0.470826, 0.861806,
		0.972230, 0.213255, 0.096389,
		-0.138402, 0.856064, -0.497996,
		33.657173, 35.505447, 30.688696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872818, 35.405846, 31.503233>,  <33.754051, 34.906200, 31.037292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872818, 35.405846, 31.503233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717216, 35.673515, 31.249973>,  <33.623856, 35.834118, 31.098019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717216, 35.673515, 31.249973>,  <33.872818, 35.405846, 31.503233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717216, 35.673515, 31.249973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359203, 0.522705, 0.773145,
		0.848321, 0.528185, 0.037037,
		-0.389004, 0.669179, -0.633147,
		33.600517, 35.874268, 31.060030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111294, 36.164154, 31.639257>,  <33.872818, 35.405846, 31.503233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111294, 36.164154, 31.639257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752129, 36.172123, 31.463366>,  <33.536629, 36.176903, 31.357830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752129, 36.172123, 31.463366>,  <34.111294, 36.164154, 31.639257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752129, 36.172123, 31.463366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355621, 0.555891, 0.751345,
		0.259409, 0.831017, -0.492055,
		-0.897909, 0.019921, -0.439730,
		33.482758, 36.178101, 31.331446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865608, 36.724762, 31.949764>,  <34.111294, 36.164154, 31.639257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865608, 36.724762, 31.949764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538612, 36.558960, 31.789818>,  <33.342415, 36.459480, 31.693850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538612, 36.558960, 31.789818>,  <33.865608, 36.724762, 31.949764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538612, 36.558960, 31.789818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544658, 0.330704, 0.770703,
		-0.187221, 0.847834, -0.496110,
		-0.817494, -0.414502, -0.399865,
		33.293365, 36.434608, 31.669859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409431, 37.287666, 32.001873>,  <33.865608, 36.724762, 31.949764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409431, 37.287666, 32.001873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213127, 36.939930, 31.978529>,  <33.095345, 36.731289, 31.964523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213127, 36.939930, 31.978529>,  <33.409431, 37.287666, 32.001873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213127, 36.939930, 31.978529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656376, 0.324830, 0.680923,
		-0.572996, 0.372474, -0.730026,
		-0.490760, -0.869338, -0.058356,
		33.065899, 36.679127, 31.961021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753185, 37.401127, 31.805355>,  <33.409431, 37.287666, 32.001873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753185, 37.401127, 31.805355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712059, 37.042068, 31.976774>,  <32.687382, 36.826633, 32.079624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712059, 37.042068, 31.976774>,  <32.753185, 37.401127, 31.805355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712059, 37.042068, 31.976774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665298, 0.382343, 0.641243,
		-0.739464, -0.219180, -0.636516,
		-0.102820, -0.897649, 0.428549,
		32.681213, 36.772774, 32.105339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061863, 37.710499, 31.094248>,  <32.753185, 37.401127, 31.805355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061863, 37.710499, 31.094248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996399, 37.364128, 31.283300>,  <32.957119, 37.156303, 31.396732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996399, 37.364128, 31.283300>,  <33.061863, 37.710499, 31.094248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996399, 37.364128, 31.283300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280633, -0.418430, -0.863806,
		0.945759, -0.274009, -0.174527,
		-0.163663, -0.865930, 0.472630,
		32.947300, 37.104347, 31.425089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745655, 37.981743, 30.483164>,  <33.061863, 37.710499, 31.094248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745655, 37.981743, 30.483164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849075, 38.333969, 30.324286>,  <32.911129, 38.545303, 30.228958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849075, 38.333969, 30.324286>,  <32.745655, 37.981743, 30.483164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849075, 38.333969, 30.324286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062400, -0.395092, -0.916519,
		-0.963980, 0.261751, -0.047204,
		0.258550, 0.880561, -0.397195,
		32.926640, 38.598137, 30.205128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390182, 38.033970, 29.828390>,  <32.745655, 37.981743, 30.483164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390182, 38.033970, 29.828390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739525, 38.228798, 29.826729>,  <32.949131, 38.345695, 29.825731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739525, 38.228798, 29.826729>,  <32.390182, 38.033970, 29.828390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739525, 38.228798, 29.826729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195503, -0.358341, -0.912891,
		-0.446130, 0.796465, -0.408182,
		0.873354, 0.487069, -0.004155,
		33.001530, 38.374920, 29.825481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419807, 38.370186, 29.068411>,  <32.390182, 38.033970, 29.828390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419807, 38.370186, 29.068411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784885, 38.398064, 29.229473>,  <33.003933, 38.414791, 29.326111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784885, 38.398064, 29.229473>,  <32.419807, 38.370186, 29.068411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784885, 38.398064, 29.229473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408175, -0.202738, -0.890107,
		0.019596, 0.976749, -0.213487,
		0.912693, 0.069697, 0.402658,
		33.058693, 38.418972, 29.350271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793205, 38.817211, 28.608585>,  <32.419807, 38.370186, 29.068411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793205, 38.817211, 28.608585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086681, 38.638626, 28.813471>,  <33.262768, 38.531475, 28.936403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086681, 38.638626, 28.813471>,  <32.793205, 38.817211, 28.608585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086681, 38.638626, 28.813471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608462, 0.096166, -0.787735,
		0.302439, 0.889618, 0.342213,
		0.733693, -0.446465, 0.512215,
		33.306789, 38.504688, 28.967134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410946, 39.188927, 28.529428>,  <32.793205, 38.817211, 28.608585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410946, 39.188927, 28.529428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519466, 38.814945, 28.620869>,  <33.584579, 38.590557, 28.675734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519466, 38.814945, 28.620869>,  <33.410946, 39.188927, 28.529428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519466, 38.814945, 28.620869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576805, -0.032199, -0.816247,
		0.770512, 0.353311, 0.530549,
		0.271306, -0.934952, 0.228601,
		33.600857, 38.534458, 28.689449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107105, 39.173038, 28.427763>,  <33.410946, 39.188927, 28.529428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107105, 39.173038, 28.427763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982517, 38.794655, 28.391670>,  <33.907764, 38.567623, 28.370014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982517, 38.794655, 28.391670>,  <34.107105, 39.173038, 28.427763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982517, 38.794655, 28.391670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650113, -0.142871, -0.746285,
		0.693067, -0.291102, 0.659483,
		-0.311466, -0.945964, -0.090230,
		33.889076, 38.510864, 28.364601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683022, 38.717125, 28.368233>,  <34.107105, 39.173038, 28.427763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683022, 38.717125, 28.368233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366478, 38.530113, 28.210667>,  <34.176552, 38.417908, 28.116127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366478, 38.530113, 28.210667>,  <34.683022, 38.717125, 28.368233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366478, 38.530113, 28.210667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565661, -0.315539, -0.761882,
		0.231908, -0.825743, 0.514168,
		-0.791358, -0.467530, -0.393914,
		34.129070, 38.389854, 28.092493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957340, 38.099518, 28.048281>,  <34.683022, 38.717125, 28.368233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957340, 38.099518, 28.048281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593433, 38.157272, 27.892605>,  <34.375088, 38.191925, 27.799200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593433, 38.157272, 27.892605>,  <34.957340, 38.099518, 28.048281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593433, 38.157272, 27.892605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322786, -0.343443, -0.881961,
		-0.261009, -0.928008, 0.265848,
		-0.909771, 0.144388, -0.389190,
		34.320503, 38.200588, 27.775848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944561, 37.579227, 27.562050>,  <34.957340, 38.099518, 28.048281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944561, 37.579227, 27.562050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608288, 37.760952, 27.444160>,  <34.406525, 37.869987, 27.373426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608288, 37.760952, 27.444160>,  <34.944561, 37.579227, 27.562050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608288, 37.760952, 27.444160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165872, -0.302052, -0.938750,
		-0.515506, -0.838073, 0.178571,
		-0.840678, 0.454311, -0.294723,
		34.356083, 37.897243, 27.355743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564949, 37.058941, 27.181738>,  <34.944561, 37.579227, 27.562050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564949, 37.058941, 27.181738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478241, 37.434349, 27.074259>,  <34.426216, 37.659592, 27.009771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478241, 37.434349, 27.074259>,  <34.564949, 37.058941, 27.181738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478241, 37.434349, 27.074259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020950, -0.270705, -0.962434,
		-0.975998, -0.214256, 0.039019,
		-0.216770, 0.938516, -0.268696,
		34.413212, 37.715904, 26.993650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994061, 36.996742, 26.761667>,  <34.564949, 37.058941, 27.181738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994061, 36.996742, 26.761667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136494, 37.352852, 26.648098>,  <34.221954, 37.566517, 26.579956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136494, 37.352852, 26.648098>,  <33.994061, 36.996742, 26.761667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136494, 37.352852, 26.648098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150361, -0.245294, -0.957717,
		-0.922277, 0.383721, 0.046517,
		0.356086, 0.890275, -0.283925,
		34.243320, 37.619934, 26.562920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464317, 37.215851, 26.277290>,  <33.994061, 36.996742, 26.761667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464317, 37.215851, 26.277290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783390, 37.437500, 26.182079>,  <33.974834, 37.570488, 26.124952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783390, 37.437500, 26.182079>,  <33.464317, 37.215851, 26.277290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783390, 37.437500, 26.182079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077321, -0.297461, -0.951598,
		-0.598102, 0.777476, -0.194434,
		0.797681, 0.554119, -0.238027,
		34.022694, 37.603737, 26.110672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299358, 37.604965, 25.705984>,  <33.464317, 37.215851, 26.277290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299358, 37.604965, 25.705984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699127, 37.596527, 25.716637>,  <33.938988, 37.591465, 25.723028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699127, 37.596527, 25.716637>,  <33.299358, 37.604965, 25.705984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699127, 37.596527, 25.716637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022267, -0.185279, -0.982434,
		0.025660, 0.982460, -0.184703,
		0.999423, -0.021097, 0.026631,
		33.998955, 37.590199, 25.724627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631638, 38.080791, 25.154110>,  <33.299358, 37.604965, 25.705984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631638, 38.080791, 25.154110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878326, 37.782597, 25.255232>,  <34.026340, 37.603680, 25.315905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878326, 37.782597, 25.255232>,  <33.631638, 38.080791, 25.154110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878326, 37.782597, 25.255232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071144, -0.267051, -0.961053,
		0.783961, 0.610686, -0.111659,
		0.616720, -0.745484, 0.252804,
		34.063343, 37.558952, 25.331074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031906, 38.094341, 24.565857>,  <33.631638, 38.080791, 25.154110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031906, 38.094341, 24.565857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139488, 37.758858, 24.755270>,  <34.204037, 37.557568, 24.868917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139488, 37.758858, 24.755270>,  <34.031906, 38.094341, 24.565857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139488, 37.758858, 24.755270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254478, -0.412295, -0.874788,
		0.928926, 0.355783, 0.102543,
		0.268956, -0.838708, 0.473531,
		34.220177, 37.507244, 24.897329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709541, 37.936993, 24.289652>,  <34.031906, 38.094341, 24.565857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709541, 37.936993, 24.289652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555477, 37.597244, 24.433998>,  <34.463039, 37.393394, 24.520607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555477, 37.597244, 24.433998>,  <34.709541, 37.936993, 24.289652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555477, 37.597244, 24.433998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277122, -0.479438, -0.832672,
		0.880259, -0.220708, 0.420038,
		-0.385159, -0.849369, 0.360866,
		34.439930, 37.342434, 24.542257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160019, 37.478535, 24.152584>,  <34.709541, 37.936993, 24.289652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160019, 37.478535, 24.152584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805099, 37.295689, 24.177071>,  <34.592148, 37.185982, 24.191763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805099, 37.295689, 24.177071>,  <35.160019, 37.478535, 24.152584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805099, 37.295689, 24.177071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160673, -0.430800, -0.888029,
		0.432302, -0.778112, 0.455695,
		-0.887299, -0.457114, 0.061215,
		34.538910, 37.158554, 24.195435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383621, 36.845482, 24.031485>,  <35.160019, 37.478535, 24.152584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383621, 36.845482, 24.031485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985840, 36.864334, 23.993866>,  <34.747169, 36.875645, 23.971294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985840, 36.864334, 23.993866>,  <35.383621, 36.845482, 24.031485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985840, 36.864334, 23.993866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060865, -0.471391, -0.879822,
		-0.085795, -0.880665, 0.465907,
		-0.994452, 0.047127, -0.094045,
		34.687504, 36.878471, 23.965652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254841, 36.143173, 23.809784>,  <35.383621, 36.845482, 24.031485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254841, 36.143173, 23.809784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927204, 36.363514, 23.745720>,  <34.730621, 36.495716, 23.707281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927204, 36.363514, 23.745720>,  <35.254841, 36.143173, 23.809784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927204, 36.363514, 23.745720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182231, -0.514581, -0.837853,
		-0.543950, -0.657091, 0.521871,
		-0.819091, 0.550852, -0.160164,
		34.681477, 36.528770, 23.697672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765774, 35.635216, 23.673979>,  <35.254841, 36.143173, 23.809784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765774, 35.635216, 23.673979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675705, 35.985596, 23.503332>,  <34.621666, 36.195824, 23.400944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675705, 35.985596, 23.503332>,  <34.765774, 35.635216, 23.673979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675705, 35.985596, 23.503332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084170, -0.453714, -0.887163,
		-0.970677, -0.163852, 0.175891,
		-0.225168, 0.875954, -0.426618,
		34.608154, 36.248383, 23.375347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189873, 35.390911, 23.315172>,  <34.765774, 35.635216, 23.673979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189873, 35.390911, 23.315172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317463, 35.731598, 23.148882>,  <34.394016, 35.936012, 23.049109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317463, 35.731598, 23.148882>,  <34.189873, 35.390911, 23.315172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317463, 35.731598, 23.148882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125079, -0.396972, -0.909268,
		-0.939475, 0.342029, -0.020090,
		0.318971, 0.851721, -0.415726,
		34.413155, 35.987114, 23.024164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773376, 35.574497, 22.754776>,  <34.189873, 35.390911, 23.315172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773376, 35.574497, 22.754776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084728, 35.816299, 22.687014>,  <34.271538, 35.961380, 22.646357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084728, 35.816299, 22.687014>,  <33.773376, 35.574497, 22.754776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084728, 35.816299, 22.687014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110120, -0.134191, -0.984818,
		-0.618063, 0.785216, -0.037883,
		0.778378, 0.604507, -0.169406,
		34.318241, 35.997650, 22.636192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601555, 36.063122, 22.205980>,  <33.773376, 35.574497, 22.754776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601555, 36.063122, 22.205980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.999607, 36.023750, 22.207630>,  <34.238438, 36.000126, 22.208620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.999607, 36.023750, 22.207630>,  <33.601555, 36.063122, 22.205980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999607, 36.023750, 22.207630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013489, -0.177579, -0.984014,
		0.097591, 0.979171, -0.178043,
		0.995135, -0.098433, 0.004122,
		34.298149, 35.994221, 22.208866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774860, 36.359253, 21.585165>,  <33.601555, 36.063122, 22.205980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774860, 36.359253, 21.585165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124893, 36.203064, 21.699539>,  <34.334911, 36.109348, 21.768164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124893, 36.203064, 21.699539>,  <33.774860, 36.359253, 21.585165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124893, 36.203064, 21.699539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267689, -0.101694, -0.958124,
		0.403203, 0.914979, 0.015535,
		0.875083, -0.390477, 0.285933,
		34.387417, 36.085922, 21.785318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323647, 36.747932, 21.160187>,  <33.774860, 36.359253, 21.585165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323647, 36.747932, 21.160187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482044, 36.400772, 21.280140>,  <34.577084, 36.192474, 21.352112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482044, 36.400772, 21.280140>,  <34.323647, 36.747932, 21.160187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482044, 36.400772, 21.280140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439358, -0.107688, -0.891834,
		0.806321, 0.484918, 0.338677,
		0.395995, -0.867905, 0.299883,
		34.600842, 36.140400, 21.370106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027168, 36.785595, 21.070446>,  <34.323647, 36.747932, 21.160187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027168, 36.785595, 21.070446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930424, 36.397594, 21.060623>,  <34.872375, 36.164795, 21.054729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930424, 36.397594, 21.060623>,  <35.027168, 36.785595, 21.070446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930424, 36.397594, 21.060623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567909, -0.120995, -0.814149,
		0.786753, -0.210861, 0.580136,
		-0.241866, -0.969999, -0.024557,
		34.857864, 36.106594, 21.053257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702320, 36.406727, 20.973999>,  <35.027168, 36.785595, 21.070446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702320, 36.406727, 20.973999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394604, 36.180386, 20.855337>,  <35.209972, 36.044582, 20.784140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394604, 36.180386, 20.855337>,  <35.702320, 36.406727, 20.973999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394604, 36.180386, 20.855337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451019, -0.152109, -0.879457,
		0.452517, -0.810356, 0.372226,
		-0.769292, -0.565850, -0.296653,
		35.163815, 36.010632, 20.766340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420837, 36.589733, 21.334164>,  <35.702320, 36.406727, 20.973999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420837, 36.589733, 21.334164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690609, 36.873825, 21.253448>,  <36.852470, 37.044281, 21.205019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690609, 36.873825, 21.253448>,  <36.420837, 36.589733, 21.334164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690609, 36.873825, 21.253448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202719, 0.440914, 0.874357,
		0.709969, -0.548782, 0.441341,
		0.674425, 0.710235, -0.201787,
		36.892937, 37.086895, 21.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714104, 36.689617, 21.944443>,  <36.420837, 36.589733, 21.334164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714104, 36.689617, 21.944443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795677, 37.023464, 21.739769>,  <36.844624, 37.223774, 21.616964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795677, 37.023464, 21.739769>,  <36.714104, 36.689617, 21.944443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795677, 37.023464, 21.739769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148433, 0.542987, 0.826518,
		0.967666, -0.092608, 0.234621,
		0.203938, 0.834619, -0.511684,
		36.856857, 37.273849, 21.586264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240173, 37.021896, 22.313726>,  <36.714104, 36.689617, 21.944443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240173, 37.021896, 22.313726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054184, 37.309589, 22.107227>,  <36.942593, 37.482204, 21.983328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054184, 37.309589, 22.107227>,  <37.240173, 37.021896, 22.313726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054184, 37.309589, 22.107227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035045, 0.567705, 0.822486,
		0.884632, 0.400524, -0.238761,
		-0.464971, 0.719230, -0.516247,
		36.914692, 37.525360, 21.952353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681782, 37.676189, 22.414703>,  <37.240173, 37.021896, 22.313726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681782, 37.676189, 22.414703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303375, 37.773548, 22.329086>,  <37.076332, 37.831963, 22.277716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303375, 37.773548, 22.329086>,  <37.681782, 37.676189, 22.414703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303375, 37.773548, 22.329086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004280, 0.650939, 0.759118,
		0.324091, 0.719054, -0.614757,
		-0.946016, 0.243392, -0.214040,
		37.019569, 37.846565, 22.264874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624249, 38.421574, 22.579832>,  <37.681782, 37.676189, 22.414703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624249, 38.421574, 22.579832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243328, 38.333691, 22.495117>,  <37.014778, 38.280960, 22.444288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243328, 38.333691, 22.495117>,  <37.624249, 38.421574, 22.579832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243328, 38.333691, 22.495117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304070, 0.624389, 0.719499,
		-0.025842, 0.749577, -0.661412,
		-0.952299, -0.219709, -0.211789,
		36.957638, 38.267776, 22.431580>
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
