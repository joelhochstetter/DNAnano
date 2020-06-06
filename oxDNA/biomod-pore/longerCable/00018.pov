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
	<24.255686, 34.998390, 34.779766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279030, 35.248825, 35.090794>,  <24.293036, 35.399086, 35.277409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279030, 35.248825, 35.090794>,  <24.255686, 34.998390, 34.779766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279030, 35.248825, 35.090794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995818, -0.091350, -0.001188,
		0.070287, 0.774386, -0.628797,
		0.058360, 0.626084, 0.777568,
		24.296537, 35.436649, 35.324062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809519, 35.572800, 34.662903>,  <24.255686, 34.998390, 34.779766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809519, 35.572800, 34.662903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746349, 35.450409, 35.038445>,  <24.708447, 35.376976, 35.263767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746349, 35.450409, 35.038445>,  <24.809519, 35.572800, 34.662903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746349, 35.450409, 35.038445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981685, -0.151250, 0.115838,
		0.106557, 0.939948, 0.324257,
		-0.157926, -0.305975, 0.938850,
		24.698971, 35.358616, 35.320099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475294, 35.396137, 34.960503>,  <24.809519, 35.572800, 34.662903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475294, 35.396137, 34.960503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254992, 35.345482, 35.290504>,  <25.122810, 35.315086, 35.488506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254992, 35.345482, 35.290504>,  <25.475294, 35.396137, 34.960503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254992, 35.345482, 35.290504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777667, -0.436853, 0.452099,
		0.303150, 0.890574, 0.339086,
		-0.550758, -0.126642, 0.825001,
		25.089764, 35.307487, 35.538006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514973, 36.001404, 35.383114>,  <25.475294, 35.396137, 34.960503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514973, 36.001404, 35.383114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293152, 36.193115, 35.655224>,  <25.160059, 36.308140, 35.818489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293152, 36.193115, 35.655224>,  <25.514973, 36.001404, 35.383114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293152, 36.193115, 35.655224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480719, -0.482774, 0.732010,
		0.679252, 0.732956, 0.037326,
		-0.554551, 0.479276, 0.680271,
		25.126787, 36.336899, 35.859306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864882, 36.345211, 35.990837>,  <25.514973, 36.001404, 35.383114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864882, 36.345211, 35.990837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502308, 36.217796, 36.101768>,  <25.284763, 36.141346, 36.168327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502308, 36.217796, 36.101768>,  <25.864882, 36.345211, 35.990837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502308, 36.217796, 36.101768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416335, -0.784301, 0.459931,
		0.071001, 0.532358, 0.843536,
		-0.906435, -0.318538, 0.277326,
		25.230377, 36.122234, 36.184967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941959, 36.872036, 35.573963>,  <25.864882, 36.345211, 35.990837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941959, 36.872036, 35.573963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608006, 37.091881, 35.585899>,  <25.407633, 37.223789, 35.593060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608006, 37.091881, 35.585899>,  <25.941959, 36.872036, 35.573963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608006, 37.091881, 35.585899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524246, 0.777490, 0.347385,
		0.167728, 0.305670, -0.937248,
		-0.834885, 0.549615, 0.029839,
		25.357540, 37.256763, 35.594852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954302, 37.516750, 35.165916>,  <25.941959, 36.872036, 35.573963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954302, 37.516750, 35.165916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708235, 37.544212, 35.480076>,  <25.560595, 37.560692, 35.668571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708235, 37.544212, 35.480076>,  <25.954302, 37.516750, 35.165916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708235, 37.544212, 35.480076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587627, 0.704075, 0.398713,
		-0.525606, 0.706798, -0.473471,
		-0.615169, 0.068659, 0.785400,
		25.523684, 37.564812, 35.715694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804682, 38.251987, 35.242489>,  <25.954302, 37.516750, 35.165916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804682, 38.251987, 35.242489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741375, 38.054462, 35.584507>,  <25.703390, 37.935947, 35.789719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741375, 38.054462, 35.584507>,  <25.804682, 38.251987, 35.242489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741375, 38.054462, 35.584507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409407, 0.755192, 0.511929,
		-0.898519, 0.431082, 0.082649,
		-0.158268, -0.493815, 0.855042,
		25.693895, 37.906319, 35.841019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455120, 38.676758, 35.122993>,  <25.804682, 38.251987, 35.242489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455120, 38.676758, 35.122993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217989, 38.809059, 34.829285>,  <26.075710, 38.888439, 34.653057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217989, 38.809059, 34.829285>,  <26.455120, 38.676758, 35.122993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217989, 38.809059, 34.829285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394225, 0.914242, 0.093530,
		0.702239, -0.234022, -0.672379,
		-0.592829, 0.330750, -0.734274,
		26.040140, 38.908283, 34.609001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855810, 39.019840, 34.696091>,  <26.455120, 38.676758, 35.122993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855810, 39.019840, 34.696091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490044, 39.168896, 34.632866>,  <26.270584, 39.258331, 34.594933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490044, 39.168896, 34.632866>,  <26.855810, 39.019840, 34.696091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490044, 39.168896, 34.632866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319299, 0.904050, 0.284151,
		0.248783, 0.209363, -0.945661,
		-0.914415, 0.372641, -0.158063,
		26.215719, 39.280689, 34.585445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955351, 39.515053, 34.289520>,  <26.855810, 39.019840, 34.696091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955351, 39.515053, 34.289520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599421, 39.622108, 34.437344>,  <26.385862, 39.686344, 34.526039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599421, 39.622108, 34.437344>,  <26.955351, 39.515053, 34.289520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599421, 39.622108, 34.437344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369352, 0.898046, 0.238942,
		-0.267933, 0.349116, -0.897959,
		-0.889826, 0.267642, 0.369563,
		26.332472, 39.702400, 34.548214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880709, 40.242706, 34.018017>,  <26.955351, 39.515053, 34.289520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880709, 40.242706, 34.018017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649696, 40.176132, 34.337708>,  <26.511089, 40.136189, 34.529522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649696, 40.176132, 34.337708>,  <26.880709, 40.242706, 34.018017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649696, 40.176132, 34.337708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305892, 0.863557, 0.400873,
		-0.756895, 0.475992, -0.447819,
		-0.577529, -0.166434, 0.799224,
		26.476439, 40.126202, 34.577477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567387, 40.959110, 34.287239>,  <26.880709, 40.242706, 34.018017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567387, 40.959110, 34.287239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533413, 40.715488, 34.602665>,  <26.513029, 40.569317, 34.791920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533413, 40.715488, 34.602665>,  <26.567387, 40.959110, 34.287239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533413, 40.715488, 34.602665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274177, 0.746588, 0.606163,
		-0.957921, 0.267690, 0.103580,
		-0.084932, -0.609056, 0.788567,
		26.507933, 40.532772, 34.839233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094606, 41.222458, 34.779934>,  <26.567387, 40.959110, 34.287239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094606, 41.222458, 34.779934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382656, 40.992706, 34.935627>,  <26.555487, 40.854855, 35.029041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382656, 40.992706, 34.935627>,  <26.094606, 41.222458, 34.779934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382656, 40.992706, 34.935627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282495, 0.755097, 0.591630,
		-0.633731, -0.316091, 0.706025,
		0.720126, -0.574383, 0.389234,
		26.598694, 40.820393, 35.052399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661093, 40.700886, 35.142570>,  <26.094606, 41.222458, 34.779934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661093, 40.700886, 35.142570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970631, 40.699059, 35.395912>,  <26.156353, 40.697964, 35.547916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970631, 40.699059, 35.395912>,  <25.661093, 40.700886, 35.142570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970631, 40.699059, 35.395912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370513, 0.814288, -0.446828,
		-0.513695, 0.580443, 0.631825,
		0.773846, -0.004566, 0.633358,
		26.202784, 40.697689, 35.585918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677675, 40.013893, 35.641457>,  <25.661093, 40.700886, 35.142570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677675, 40.013893, 35.641457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857679, 40.083145, 35.291023>,  <25.965683, 40.124695, 35.080765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857679, 40.083145, 35.291023>,  <25.677675, 40.013893, 35.641457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857679, 40.083145, 35.291023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471130, -0.787368, -0.397604,
		-0.758634, 0.591674, -0.272758,
		0.450012, 0.173131, -0.876079,
		25.992683, 40.135086, 35.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161263, 39.809067, 35.153343>,  <25.677675, 40.013893, 35.641457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161263, 39.809067, 35.153343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510590, 39.801010, 34.958649>,  <25.720186, 39.796177, 34.841831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510590, 39.801010, 34.958649>,  <25.161263, 39.809067, 35.153343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510590, 39.801010, 34.958649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281856, -0.835818, -0.471132,
		-0.397335, 0.548637, -0.735611,
		0.873317, -0.020139, -0.486736,
		25.772585, 39.794968, 34.812630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992189, 39.735142, 34.437511>,  <25.161263, 39.809067, 35.153343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992189, 39.735142, 34.437511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362946, 39.594269, 34.489426>,  <25.585400, 39.509747, 34.520576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362946, 39.594269, 34.489426>,  <24.992189, 39.735142, 34.437511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362946, 39.594269, 34.489426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268317, -0.863529, -0.426993,
		0.262456, 0.360951, -0.894892,
		0.926889, -0.352181, 0.129789,
		25.641012, 39.488613, 34.528362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008444, 39.305630, 33.932381>,  <24.992189, 39.735142, 34.437511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008444, 39.305630, 33.932381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320667, 39.200001, 34.159004>,  <25.508001, 39.136623, 34.294979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320667, 39.200001, 34.159004>,  <25.008444, 39.305630, 33.932381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320667, 39.200001, 34.159004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069250, -0.937333, -0.341484,
		0.621233, 0.227315, -0.749932,
		0.780560, -0.264074, 0.566560,
		25.554836, 39.120777, 34.328972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474651, 39.018970, 33.484554>,  <25.008444, 39.305630, 33.932381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474651, 39.018970, 33.484554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465240, 38.888512, 33.862564>,  <25.459595, 38.810238, 34.089371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465240, 38.888512, 33.862564>,  <25.474651, 39.018970, 33.484554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465240, 38.888512, 33.862564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047946, -0.944569, -0.324793,
		0.998573, 0.037669, 0.037859,
		-0.023525, -0.326145, 0.945027,
		25.458183, 38.790668, 34.146072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787899, 39.769215, 33.257198>,  <25.474651, 39.018970, 33.484554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787899, 39.769215, 33.257198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053240, 40.068535, 33.256695>,  <26.212444, 40.248127, 33.256393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053240, 40.068535, 33.256695>,  <25.787899, 39.769215, 33.257198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053240, 40.068535, 33.256695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538652, -0.478673, -0.693343,
		-0.519437, 0.459252, -0.720606,
		0.663354, 0.748304, -0.001263,
		26.252247, 40.293026, 33.256317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918159, 39.846859, 32.558388>,  <25.787899, 39.769215, 33.257198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918159, 39.846859, 32.558388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210285, 40.041809, 32.749847>,  <26.385561, 40.158779, 32.864723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210285, 40.041809, 32.749847>,  <25.918159, 39.846859, 32.558388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210285, 40.041809, 32.749847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646240, -0.265829, -0.715339,
		-0.221400, 0.831745, -0.509100,
		0.730313, 0.487376, 0.478652,
		26.429379, 40.188023, 32.893444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650488, 39.669735, 31.774954>,  <25.918159, 39.846859, 32.558388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650488, 39.669735, 31.774954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704405, 40.032532, 31.934553>,  <25.736755, 40.250210, 32.030312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704405, 40.032532, 31.934553>,  <25.650488, 39.669735, 31.774954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704405, 40.032532, 31.934553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955373, -0.012142, -0.295152,
		-0.262856, 0.420974, -0.868152,
		0.134793, 0.906991, 0.398996,
		25.744843, 40.304630, 32.054253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891991, 40.151825, 31.275269>,  <25.650488, 39.669735, 31.774954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891991, 40.151825, 31.275269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004747, 40.293415, 31.631973>,  <26.072401, 40.378368, 31.845997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004747, 40.293415, 31.631973>,  <25.891991, 40.151825, 31.275269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004747, 40.293415, 31.631973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954920, -0.013333, -0.296565,
		-0.093086, 0.935161, -0.341774,
		0.281893, 0.353973, 0.891762,
		26.089315, 40.399609, 31.899502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146515, 40.831486, 31.301012>,  <25.891991, 40.151825, 31.275269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146515, 40.831486, 31.301012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310814, 40.614498, 31.594135>,  <26.409393, 40.484306, 31.770010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310814, 40.614498, 31.594135>,  <26.146515, 40.831486, 31.301012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310814, 40.614498, 31.594135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819391, -0.132858, -0.557627,
		0.399857, 0.829501, 0.389927,
		0.410747, -0.542474, 0.732809,
		26.434038, 40.451756, 31.813978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862463, 41.018288, 31.632973>,  <26.146515, 40.831486, 31.301012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862463, 41.018288, 31.632973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847363, 40.621971, 31.684996>,  <26.838303, 40.384182, 31.716209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847363, 40.621971, 31.684996>,  <26.862463, 41.018288, 31.632973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847363, 40.621971, 31.684996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887893, -0.092975, -0.450558,
		0.458499, 0.098466, 0.883223,
		-0.037752, -0.990788, 0.130056,
		26.836037, 40.324734, 31.724012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533045, 40.765530, 31.955154>,  <26.862463, 41.018288, 31.632973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533045, 40.765530, 31.955154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338345, 40.490299, 31.739889>,  <27.221525, 40.325161, 31.610729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338345, 40.490299, 31.739889>,  <27.533045, 40.765530, 31.955154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338345, 40.490299, 31.739889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821074, -0.150084, -0.550738,
		0.298182, -0.709944, 0.638018,
		-0.486750, -0.688080, -0.538164,
		27.192320, 40.283875, 31.578440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687481, 39.972313, 32.039078>,  <27.533045, 40.765530, 31.955154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687481, 39.972313, 32.039078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583683, 40.112312, 31.679043>,  <27.521404, 40.196312, 31.463022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583683, 40.112312, 31.679043>,  <27.687481, 39.972313, 32.039078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583683, 40.112312, 31.679043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849095, -0.361351, -0.385308,
		-0.460107, -0.864248, -0.203415,
		-0.259497, 0.350002, -0.900089,
		27.505835, 40.217312, 31.409016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303921, 40.035564, 32.659290>,  <27.687481, 39.972313, 32.039078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303921, 40.035564, 32.659290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134855, 39.677299, 32.714645>,  <28.033417, 39.462341, 32.747860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134855, 39.677299, 32.714645>,  <28.303921, 40.035564, 32.659290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134855, 39.677299, 32.714645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892461, -0.384765, 0.235520,
		-0.157699, 0.223052, 0.961966,
		-0.422664, -0.895658, 0.138388,
		28.008057, 39.408604, 32.756161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641247, 39.721249, 33.260902>,  <28.303921, 40.035564, 32.659290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641247, 39.721249, 33.260902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481058, 39.421097, 33.050545>,  <28.384945, 39.241005, 32.924332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481058, 39.421097, 33.050545>,  <28.641247, 39.721249, 33.260902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481058, 39.421097, 33.050545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870488, -0.490768, 0.037377,
		-0.286137, -0.442812, 0.849731,
		-0.400470, -0.750376, -0.525889,
		28.360918, 39.195984, 32.892776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721684, 39.026680, 33.578026>,  <28.641247, 39.721249, 33.260902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721684, 39.026680, 33.578026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721018, 39.007626, 33.178482>,  <28.720619, 38.996193, 32.938755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721018, 39.007626, 33.178482>,  <28.721684, 39.026680, 33.578026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721018, 39.007626, 33.178482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887465, -0.460421, 0.020481,
		-0.460873, -0.886422, 0.043044,
		-0.001664, -0.047639, -0.998863,
		28.720518, 38.993336, 32.878822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468430, 38.751957, 33.289120>,  <28.721684, 39.026680, 33.578026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468430, 38.751957, 33.289120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766621, 38.553844, 33.467541>,  <29.945536, 38.434978, 33.574593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766621, 38.553844, 33.467541>,  <29.468430, 38.751957, 33.289120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766621, 38.553844, 33.467541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494414, 0.037911, 0.868400,
		-0.447008, -0.867908, -0.216610,
		0.745479, -0.495277, 0.446052,
		29.990265, 38.405262, 33.601357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115503, 38.451649, 32.907063>,  <29.468430, 38.751957, 33.289120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115503, 38.451649, 32.907063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078598, 38.486828, 32.510326>,  <30.056456, 38.507935, 32.272285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078598, 38.486828, 32.510326>,  <30.115503, 38.451649, 32.907063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078598, 38.486828, 32.510326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948036, 0.296842, 0.114508,
		0.304492, 0.950868, 0.055990,
		-0.092262, 0.087947, -0.991843,
		30.050919, 38.513210, 32.212772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854822, 39.151016, 32.608788>,  <30.115503, 38.451649, 32.907063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854822, 39.151016, 32.608788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775572, 38.854691, 32.352058>,  <29.728022, 38.676895, 32.198021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775572, 38.854691, 32.352058>,  <29.854822, 39.151016, 32.608788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775572, 38.854691, 32.352058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939437, 0.330340, -0.091290,
		0.279650, 0.584868, -0.761397,
		-0.198128, -0.740814, -0.641826,
		29.716133, 38.632446, 32.159512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454556, 39.374027, 32.003490>,  <29.854822, 39.151016, 32.608788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454556, 39.374027, 32.003490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371466, 38.991245, 32.084564>,  <29.321611, 38.761574, 32.133209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371466, 38.991245, 32.084564>,  <29.454556, 39.374027, 32.003490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371466, 38.991245, 32.084564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974267, 0.220934, 0.044630,
		-0.087489, -0.188201, -0.978226,
		-0.207724, -0.956958, 0.202687,
		29.309149, 38.704159, 32.145370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864113, 39.220280, 31.555590>,  <29.454556, 39.374027, 32.003490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864113, 39.220280, 31.555590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864634, 38.955112, 31.855066>,  <28.864946, 38.796013, 32.034752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864634, 38.955112, 31.855066>,  <28.864113, 39.220280, 31.555590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864634, 38.955112, 31.855066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960105, 0.208533, 0.186313,
		-0.279637, -0.719066, -0.636198,
		0.001303, -0.662917, 0.748692,
		28.865025, 38.756237, 32.079674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280558, 38.670753, 31.489180>,  <28.864113, 39.220280, 31.555590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280558, 38.670753, 31.489180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410177, 38.749279, 31.859360>,  <28.487949, 38.796394, 32.081467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410177, 38.749279, 31.859360>,  <28.280558, 38.670753, 31.489180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410177, 38.749279, 31.859360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899123, 0.368150, 0.236736,
		-0.294231, -0.908806, 0.295804,
		0.324047, 0.196309, 0.925449,
		28.507391, 38.808170, 32.136993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820848, 38.405308, 31.953615>,  <28.280558, 38.670753, 31.489180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820848, 38.405308, 31.953615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996098, 38.657795, 32.209621>,  <28.101246, 38.809288, 32.363224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996098, 38.657795, 32.209621>,  <27.820848, 38.405308, 31.953615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996098, 38.657795, 32.209621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897248, 0.263730, 0.354108,
		0.054727, -0.729394, 0.681901,
		0.438122, 0.631214, 0.640014,
		28.127535, 38.847160, 32.401627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502804, 38.372715, 32.595104>,  <27.820848, 38.405308, 31.953615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502804, 38.372715, 32.595104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669657, 38.733391, 32.549568>,  <27.769770, 38.949795, 32.522247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669657, 38.733391, 32.549568>,  <27.502804, 38.372715, 32.595104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669657, 38.733391, 32.549568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883084, 0.431731, 0.183770,
		0.214852, 0.023875, 0.976355,
		0.417135, 0.901687, -0.113842,
		27.794798, 39.003899, 32.515415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498409, 38.811886, 33.256104>,  <27.502804, 38.372715, 32.595104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498409, 38.811886, 33.256104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458487, 39.007168, 32.909302>,  <27.434534, 39.124336, 32.701221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458487, 39.007168, 32.909302>,  <27.498409, 38.811886, 33.256104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458487, 39.007168, 32.909302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872081, 0.376618, 0.312464,
		0.479076, 0.787281, 0.388169,
		-0.099806, 0.488209, -0.867001,
		27.428545, 39.153629, 32.649200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822037, 38.976841, 34.044277>,  <27.498409, 38.811886, 33.256104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822037, 38.976841, 34.044277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989714, 38.617481, 34.096672>,  <28.090321, 38.401867, 34.128109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989714, 38.617481, 34.096672>,  <27.822037, 38.976841, 34.044277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989714, 38.617481, 34.096672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571373, -0.373171, -0.730942,
		0.705557, 0.231565, -0.669752,
		0.419192, -0.898399, 0.130983,
		28.115471, 38.347961, 34.135967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595865, 38.324062, 34.121151>,  <27.822037, 38.976841, 34.044277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595865, 38.324062, 34.121151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269457, 38.280422, 33.894096>,  <27.073612, 38.254238, 33.757866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269457, 38.280422, 33.894096>,  <27.595865, 38.324062, 34.121151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269457, 38.280422, 33.894096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355738, -0.679225, 0.641953,
		-0.455590, 0.725775, 0.515450,
		-0.816020, -0.109102, -0.567634,
		27.024651, 38.247692, 33.723804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966337, 38.284153, 34.596634>,  <27.595865, 38.324062, 34.121151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966337, 38.284153, 34.596634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913198, 38.095352, 34.248024>,  <26.881315, 37.982071, 34.038857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913198, 38.095352, 34.248024>,  <26.966337, 38.284153, 34.596634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913198, 38.095352, 34.248024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144637, -0.860678, 0.488174,
		-0.980526, 0.190908, 0.046071,
		-0.132849, -0.472004, -0.871529,
		26.873344, 37.953751, 33.986565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373465, 37.876053, 34.551765>,  <26.966337, 38.284153, 34.596634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373465, 37.876053, 34.551765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656687, 37.723694, 34.313915>,  <26.826620, 37.632278, 34.171204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656687, 37.723694, 34.313915>,  <26.373465, 37.876053, 34.551765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656687, 37.723694, 34.313915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243104, -0.922065, 0.301161,
		-0.662992, -0.068683, -0.745470,
		0.708056, -0.380893, -0.594624,
		26.869104, 37.609425, 34.135529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102901, 37.376957, 34.128429>,  <26.373465, 37.876053, 34.551765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102901, 37.376957, 34.128429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493097, 37.294483, 34.159172>,  <26.727215, 37.244999, 34.177620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493097, 37.294483, 34.159172>,  <26.102901, 37.376957, 34.128429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493097, 37.294483, 34.159172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213541, -0.971317, 0.104616,
		0.053086, -0.118464, -0.991538,
		0.975491, -0.206180, 0.076861,
		26.785744, 37.232628, 34.182232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511543, 36.823479, 34.550209>,  <26.102901, 37.376957, 34.128429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511543, 36.823479, 34.550209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675795, 36.502232, 34.377518>,  <26.774345, 36.309483, 34.273903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675795, 36.502232, 34.377518>,  <26.511543, 36.823479, 34.550209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675795, 36.502232, 34.377518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867604, 0.198517, 0.455910,
		-0.280442, -0.561781, 0.778302,
		0.410628, -0.803115, -0.431731,
		26.798983, 36.261299, 34.247997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694918, 36.451729, 35.001991>,  <26.511543, 36.823479, 34.550209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694918, 36.451729, 35.001991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954327, 36.329742, 34.723019>,  <27.109972, 36.256550, 34.555634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954327, 36.329742, 34.723019>,  <26.694918, 36.451729, 35.001991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954327, 36.329742, 34.723019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761159, 0.268693, 0.590290,
		0.007376, -0.913673, 0.406382,
		0.648524, -0.304968, -0.697432,
		27.148884, 36.238251, 34.513790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292063, 35.892315, 35.161201>,  <26.694918, 36.451729, 35.001991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292063, 35.892315, 35.161201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364079, 36.190693, 34.904716>,  <27.407288, 36.369720, 34.750824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364079, 36.190693, 34.904716>,  <27.292063, 35.892315, 35.161201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364079, 36.190693, 34.904716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859185, 0.198139, 0.471743,
		0.478944, -0.635850, -0.605233,
		0.180037, 0.745946, -0.641211,
		27.418089, 36.414478, 34.712353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937014, 35.841877, 35.266331>,  <27.292063, 35.892315, 35.161201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937014, 35.841877, 35.266331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800089, 36.193718, 35.134201>,  <27.717934, 36.404823, 35.054924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800089, 36.193718, 35.134201>,  <27.937014, 35.841877, 35.266331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800089, 36.193718, 35.134201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664313, 0.475196, 0.576955,
		0.664463, -0.021940, -0.746999,
		-0.342312, 0.879607, -0.330325,
		27.697395, 36.457600, 35.035103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363314, 36.434555, 35.547985>,  <27.937014, 35.841877, 35.266331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363314, 36.434555, 35.547985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394728, 36.806034, 35.403015>,  <28.413576, 37.028923, 35.316032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394728, 36.806034, 35.403015>,  <28.363314, 36.434555, 35.547985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394728, 36.806034, 35.403015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321301, 0.367730, 0.872663,
		0.943715, 0.047913, 0.327271,
		0.078536, 0.928698, -0.362426,
		28.418289, 37.084644, 35.294289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761414, 36.000896, 36.108097>,  <28.363314, 36.434555, 35.547985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761414, 36.000896, 36.108097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077541, 36.079082, 35.875824>,  <29.267218, 36.125992, 35.736462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077541, 36.079082, 35.875824>,  <28.761414, 36.000896, 36.108097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077541, 36.079082, 35.875824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513747, -0.305015, -0.801892,
		-0.333854, 0.932073, -0.140642,
		0.790320, 0.195460, -0.580680,
		29.314638, 36.137722, 35.701618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640717, 35.576359, 35.487244>,  <28.761414, 36.000896, 36.108097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640717, 35.576359, 35.487244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531361, 35.857834, 35.224922>,  <28.465748, 36.026718, 35.067528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531361, 35.857834, 35.224922>,  <28.640717, 35.576359, 35.487244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531361, 35.857834, 35.224922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837917, 0.509042, 0.196904,
		0.472391, -0.495680, -0.728799,
		-0.273388, 0.703689, -0.655806,
		28.449345, 36.068939, 35.028179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271244, 35.746670, 35.007133>,  <28.640717, 35.576359, 35.487244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271244, 35.746670, 35.007133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031116, 36.064442, 35.044029>,  <28.887041, 36.255104, 35.066166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031116, 36.064442, 35.044029>,  <29.271244, 35.746670, 35.007133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031116, 36.064442, 35.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783807, 0.561493, 0.265278,
		0.158953, 0.231547, -0.959750,
		-0.600317, 0.794425, 0.092237,
		28.851021, 36.302769, 35.071701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495022, 36.255589, 34.524052>,  <29.271244, 35.746670, 35.007133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495022, 36.255589, 34.524052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334885, 36.353241, 34.877350>,  <29.238802, 36.411831, 35.089329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334885, 36.353241, 34.877350>,  <29.495022, 36.255589, 34.524052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334885, 36.353241, 34.877350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894197, 0.314803, 0.318294,
		-0.200343, 0.917223, -0.344331,
		-0.400343, 0.244131, 0.883247,
		29.214783, 36.426479, 35.142323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748087, 36.970512, 34.661983>,  <29.495022, 36.255589, 34.524052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748087, 36.970512, 34.661983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658506, 36.833759, 35.027050>,  <29.604759, 36.751705, 35.246090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658506, 36.833759, 35.027050>,  <29.748087, 36.970512, 34.661983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658506, 36.833759, 35.027050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904455, 0.275935, 0.325302,
		-0.363053, 0.898317, 0.247426,
		-0.223951, -0.341887, 0.912666,
		29.591322, 36.731194, 35.300850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833166, 37.534420, 35.175598>,  <29.748087, 36.970512, 34.661983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833166, 37.534420, 35.175598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902063, 37.160759, 35.300625>,  <29.943401, 36.936562, 35.375641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902063, 37.160759, 35.300625>,  <29.833166, 37.534420, 35.175598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902063, 37.160759, 35.300625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917253, 0.267785, 0.294854,
		-0.359138, 0.235919, 0.902974,
		0.172241, -0.934149, 0.312569,
		29.953735, 36.880516, 35.394394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972305, 37.555729, 35.946671>,  <29.833166, 37.534420, 35.175598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972305, 37.555729, 35.946671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131550, 37.240749, 35.758442>,  <30.227097, 37.051762, 35.645504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131550, 37.240749, 35.758442>,  <29.972305, 37.555729, 35.946671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131550, 37.240749, 35.758442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917332, 0.339985, 0.207153,
		-0.003134, -0.514141, 0.857700,
		0.398111, -0.787445, -0.470573,
		30.250982, 37.004517, 35.617271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433451, 37.238750, 36.331413>,  <29.972305, 37.555729, 35.946671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433451, 37.238750, 36.331413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542725, 37.153229, 35.956253>,  <30.608290, 37.101917, 35.731155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542725, 37.153229, 35.956253>,  <30.433451, 37.238750, 36.331413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542725, 37.153229, 35.956253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925685, 0.323653, 0.195848,
		0.261682, -0.921704, 0.286330,
		0.273185, -0.213801, -0.937901,
		30.624680, 37.089088, 35.674881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062712, 37.317711, 36.073605>,  <30.433451, 37.238750, 36.331413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062712, 37.317711, 36.073605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139088, 37.698097, 36.170925>,  <31.184914, 37.926331, 36.229317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139088, 37.698097, 36.170925>,  <31.062712, 37.317711, 36.073605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139088, 37.698097, 36.170925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919850, -0.086819, -0.382542,
		-0.342663, 0.296846, -0.891327,
		0.190940, 0.950970, 0.243304,
		31.196369, 37.983387, 36.243916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071346, 37.817818, 35.475349>,  <31.062712, 37.317711, 36.073605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071346, 37.817818, 35.475349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312666, 37.925171, 35.775749>,  <31.457458, 37.989582, 35.955990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312666, 37.925171, 35.775749>,  <31.071346, 37.817818, 35.475349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312666, 37.925171, 35.775749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748695, 0.133809, -0.649270,
		-0.274744, 0.953973, -0.120211,
		0.603301, 0.268384, 0.750998,
		31.493656, 38.005688, 36.001049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637299, 37.328384, 35.121185>,  <31.071346, 37.817818, 35.475349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637299, 37.328384, 35.121185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948692, 37.448059, 34.900478>,  <31.135529, 37.519863, 34.768055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948692, 37.448059, 34.900478>,  <30.637299, 37.328384, 35.121185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948692, 37.448059, 34.900478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212931, -0.952838, -0.216238,
		-0.590440, 0.050850, -0.805478,
		0.778486, 0.299187, -0.551766,
		31.182238, 37.537815, 34.734947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664616, 36.893078, 34.553570>,  <30.637299, 37.328384, 35.121185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664616, 36.893078, 34.553570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037554, 37.036098, 34.575066>,  <31.261316, 37.121910, 34.587963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037554, 37.036098, 34.575066>,  <30.664616, 36.893078, 34.553570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037554, 37.036098, 34.575066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360622, -0.908853, -0.209614,
		-0.026102, 0.214814, -0.976306,
		0.932347, 0.357548, 0.053744,
		31.317257, 37.143364, 34.591190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072212, 36.814621, 33.921463>,  <30.664616, 36.893078, 34.553570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072212, 36.814621, 33.921463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326071, 36.835003, 34.229912>,  <31.478386, 36.847233, 34.414982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326071, 36.835003, 34.229912>,  <31.072212, 36.814621, 33.921463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326071, 36.835003, 34.229912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491822, -0.796299, -0.352164,
		0.596100, 0.602754, -0.530427,
		0.634647, 0.050950, 0.771121,
		31.516464, 36.850288, 34.461246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662752, 36.612560, 33.687641>,  <31.072212, 36.814621, 33.921463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662752, 36.612560, 33.687641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703428, 36.508636, 34.071758>,  <31.727833, 36.446281, 34.302227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703428, 36.508636, 34.071758>,  <31.662752, 36.612560, 33.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703428, 36.508636, 34.071758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329694, -0.901942, -0.278933,
		0.938596, 0.344966, -0.006061,
		0.101689, -0.259807, 0.960292,
		31.733934, 36.430695, 34.359844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327827, 36.376808, 33.753212>,  <31.662752, 36.612560, 33.687641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327827, 36.376808, 33.753212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088612, 36.203320, 34.022800>,  <31.945082, 36.099228, 34.184551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088612, 36.203320, 34.022800>,  <32.327827, 36.376808, 33.753212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088612, 36.203320, 34.022800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328437, -0.899692, -0.287547,
		0.731080, 0.049392, 0.680501,
		-0.598039, -0.433722, 0.673969,
		31.909201, 36.073204, 34.224991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582733, 36.121902, 34.333935>,  <32.327827, 36.376808, 33.753212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582733, 36.121902, 34.333935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270111, 35.931820, 34.172276>,  <32.082539, 35.817768, 34.075279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270111, 35.931820, 34.172276>,  <32.582733, 36.121902, 34.333935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270111, 35.931820, 34.172276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546824, -0.833681, -0.077203,
		-0.300247, -0.281339, 0.911428,
		-0.781560, -0.475211, -0.404153,
		32.035645, 35.789257, 34.051029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509022, 35.426338, 34.541584>,  <32.582733, 36.121902, 34.333935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509022, 35.426338, 34.541584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377956, 35.508877, 34.172791>,  <32.299316, 35.558399, 33.951515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377956, 35.508877, 34.172791>,  <32.509022, 35.426338, 34.541584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377956, 35.508877, 34.172791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472104, -0.809533, -0.348962,
		-0.818387, -0.549614, 0.167833,
		-0.327661, 0.206351, -0.921986,
		32.279659, 35.570782, 33.896194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315891, 34.791801, 34.356564>,  <32.509022, 35.426338, 34.541584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315891, 34.791801, 34.356564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398605, 34.995056, 34.022129>,  <32.448235, 35.117008, 33.821468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398605, 34.995056, 34.022129>,  <32.315891, 34.791801, 34.356564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398605, 34.995056, 34.022129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419658, -0.818020, -0.393359,
		-0.883813, -0.269527, -0.382400,
		0.206790, 0.508133, -0.836086,
		32.460644, 35.147495, 33.771305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118961, 34.332790, 33.780785>,  <32.315891, 34.791801, 34.356564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118961, 34.332790, 33.780785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353806, 34.616192, 33.624165>,  <32.494713, 34.786232, 33.530193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353806, 34.616192, 33.624165>,  <32.118961, 34.332790, 33.780785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353806, 34.616192, 33.624165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519194, -0.700683, -0.489369,
		-0.621075, 0.084025, -0.779234,
		0.587115, 0.708508, -0.391551,
		32.529942, 34.828743, 33.506699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081505, 34.214272, 32.961845>,  <32.118961, 34.332790, 33.780785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081505, 34.214272, 32.961845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399544, 34.426125, 33.080029>,  <32.590366, 34.553238, 33.150940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399544, 34.426125, 33.080029>,  <32.081505, 34.214272, 32.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399544, 34.426125, 33.080029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590215, -0.563689, -0.577842,
		-0.139498, 0.633830, -0.760789,
		0.795102, 0.529637, 0.295462,
		32.638073, 34.585014, 33.168667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525387, 34.516563, 32.339100>,  <32.081505, 34.214272, 32.961845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525387, 34.516563, 32.339100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764805, 34.474464, 32.656757>,  <32.908455, 34.449203, 32.847351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764805, 34.474464, 32.656757>,  <32.525387, 34.516563, 32.339100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764805, 34.474464, 32.656757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689593, -0.436807, -0.577635,
		0.407683, 0.893377, -0.188870,
		0.598545, -0.105249, 0.794145,
		32.944370, 34.442890, 32.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152306, 34.594883, 32.018738>,  <32.525387, 34.516563, 32.339100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152306, 34.594883, 32.018738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236557, 34.443092, 32.379101>,  <33.287106, 34.352020, 32.595318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236557, 34.443092, 32.379101>,  <33.152306, 34.594883, 32.018738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236557, 34.443092, 32.379101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728361, -0.553759, -0.403536,
		0.652018, 0.741182, 0.159758,
		0.210627, -0.379474, 0.900908,
		33.299744, 34.329250, 32.649372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942272, 34.498386, 32.073978>,  <33.152306, 34.594883, 32.018738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942272, 34.498386, 32.073978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778297, 34.255943, 32.346619>,  <33.679913, 34.110477, 32.510204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778297, 34.255943, 32.346619>,  <33.942272, 34.498386, 32.073978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778297, 34.255943, 32.346619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669762, -0.707304, -0.226141,
		0.619167, 0.363808, 0.695899,
		-0.409941, -0.606106, 0.681604,
		33.655315, 34.074112, 32.551102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525269, 34.201992, 32.443481>,  <33.942272, 34.498386, 32.073978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525269, 34.201992, 32.443481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220890, 33.943184, 32.462780>,  <34.038261, 33.787899, 32.474358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220890, 33.943184, 32.462780>,  <34.525269, 34.201992, 32.443481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220890, 33.943184, 32.462780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631676, -0.755774, -0.172604,
		0.148139, -0.100869, 0.983809,
		-0.760947, -0.647018, 0.048243,
		33.992607, 33.749077, 32.477253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793526, 33.632484, 32.848293>,  <34.525269, 34.201992, 32.443481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793526, 33.632484, 32.848293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456551, 33.492867, 32.684116>,  <34.254364, 33.409096, 32.585609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456551, 33.492867, 32.684116>,  <34.793526, 33.632484, 32.848293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456551, 33.492867, 32.684116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478504, -0.834840, -0.272170,
		-0.247652, -0.425685, 0.870322,
		-0.842438, -0.349049, -0.410442,
		34.203819, 33.388153, 32.560986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791866, 32.977348, 32.989952>,  <34.793526, 33.632484, 32.848293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791866, 32.977348, 32.989952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528397, 32.995045, 32.689503>,  <34.370316, 33.005661, 32.509232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528397, 32.995045, 32.689503>,  <34.791866, 32.977348, 32.989952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528397, 32.995045, 32.689503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397869, -0.826811, -0.397597,
		-0.638630, -0.560737, 0.526997,
		-0.658674, 0.044242, -0.751126,
		34.330795, 33.008316, 32.464165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508854, 32.278824, 32.925476>,  <34.791866, 32.977348, 32.989952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508854, 32.278824, 32.925476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441837, 32.453407, 32.571880>,  <34.401627, 32.558159, 32.359722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441837, 32.453407, 32.571880>,  <34.508854, 32.278824, 32.925476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441837, 32.453407, 32.571880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510425, -0.728723, -0.456540,
		-0.843442, -0.527700, -0.100685,
		-0.167545, 0.436458, -0.883987,
		34.391575, 32.584343, 32.306683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242439, 31.720482, 32.468201>,  <34.508854, 32.278824, 32.925476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242439, 31.720482, 32.468201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330334, 32.032558, 32.233929>,  <34.383072, 32.219803, 32.093365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330334, 32.032558, 32.233929>,  <34.242439, 31.720482, 32.468201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330334, 32.032558, 32.233929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493543, -0.606761, -0.623102,
		-0.841505, -0.152138, -0.518386,
		0.219739, 0.780189, -0.585678,
		34.396255, 32.266617, 32.058224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335148, 31.368841, 31.970058>,  <34.242439, 31.720482, 32.468201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335148, 31.368841, 31.970058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472267, 31.723619, 31.846241>,  <34.554539, 31.936487, 31.771950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472267, 31.723619, 31.846241>,  <34.335148, 31.368841, 31.970058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472267, 31.723619, 31.846241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407652, -0.437315, -0.801608,
		-0.846351, 0.148603, -0.511476,
		0.342797, 0.886946, -0.309544,
		34.575108, 31.989704, 31.753378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953926, 31.570757, 31.333179>,  <34.335148, 31.368841, 31.970058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953926, 31.570757, 31.333179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312492, 31.747873, 31.340921>,  <34.527634, 31.854143, 31.345566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312492, 31.747873, 31.340921>,  <33.953926, 31.570757, 31.333179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312492, 31.747873, 31.340921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311636, -0.598646, -0.737907,
		-0.315150, 0.667504, -0.674625,
		0.896417, 0.442789, 0.019355,
		34.581417, 31.880711, 31.346727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048389, 31.908993, 30.748896>,  <33.953926, 31.570757, 31.333179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048389, 31.908993, 30.748896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412388, 31.833681, 30.896656>,  <34.630787, 31.788494, 30.985312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412388, 31.833681, 30.896656>,  <34.048389, 31.908993, 30.748896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412388, 31.833681, 30.896656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245279, -0.473863, -0.845749,
		0.334281, 0.860236, -0.385034,
		0.909997, -0.188277, 0.369402,
		34.685387, 31.777199, 31.007477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429508, 32.141190, 30.318285>,  <34.048389, 31.908993, 30.748896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429508, 32.141190, 30.318285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638920, 31.861624, 30.513193>,  <34.764565, 31.693884, 30.630138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638920, 31.861624, 30.513193>,  <34.429508, 32.141190, 30.318285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638920, 31.861624, 30.513193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331261, -0.359939, -0.872187,
		0.784975, 0.618027, 0.043087,
		0.523527, -0.698918, 0.487271,
		34.795979, 31.651949, 30.659374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065159, 32.163525, 30.001745>,  <34.429508, 32.141190, 30.318285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065159, 32.163525, 30.001745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044464, 31.801392, 30.170362>,  <35.032047, 31.584112, 30.271532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044464, 31.801392, 30.170362>,  <35.065159, 32.163525, 30.001745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044464, 31.801392, 30.170362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282353, -0.418144, -0.863384,
		0.957915, 0.074358, 0.277255,
		-0.051734, -0.905332, 0.421541,
		35.028946, 31.529793, 30.296825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709763, 31.750547, 29.907278>,  <35.065159, 32.163525, 30.001745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709763, 31.750547, 29.907278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426884, 31.473608, 29.964592>,  <35.257156, 31.307444, 29.998980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426884, 31.473608, 29.964592>,  <35.709763, 31.750547, 29.907278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426884, 31.473608, 29.964592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380507, -0.543509, -0.748206,
		0.595896, -0.474606, 0.647809,
		-0.707193, -0.692349, 0.143284,
		35.214725, 31.265903, 30.007578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897530, 31.251968, 29.550100>,  <35.709763, 31.750547, 29.907278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897530, 31.251968, 29.550100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549049, 31.073879, 29.632832>,  <35.339962, 30.967026, 29.682470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549049, 31.073879, 29.632832>,  <35.897530, 31.251968, 29.550100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549049, 31.073879, 29.632832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225401, -0.737046, -0.637148,
		0.436116, -0.508467, 0.742472,
		-0.871205, -0.445224, 0.206828,
		35.287689, 30.940311, 29.694880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010593, 30.564421, 29.751814>,  <35.897530, 31.251968, 29.550100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010593, 30.564421, 29.751814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640743, 30.563328, 29.599468>,  <35.418831, 30.562672, 29.508060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640743, 30.563328, 29.599468>,  <36.010593, 30.564421, 29.751814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640743, 30.563328, 29.599468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312267, -0.577971, -0.753949,
		-0.218068, -0.816052, 0.535261,
		-0.924627, -0.002732, -0.380864,
		35.363354, 30.562508, 29.485209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974621, 29.934893, 29.492056>,  <36.010593, 30.564421, 29.751814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974621, 29.934893, 29.492056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674850, 30.129202, 29.312109>,  <35.494987, 30.245787, 29.204142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674850, 30.129202, 29.312109>,  <35.974621, 29.934893, 29.492056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674850, 30.129202, 29.312109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127106, -0.561272, -0.817813,
		-0.649772, -0.670072, 0.358887,
		-0.749427, 0.485775, -0.449869,
		35.450024, 30.274935, 29.177149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591560, 29.383171, 29.250299>,  <35.974621, 29.934893, 29.492056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591560, 29.383171, 29.250299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464657, 29.699438, 29.040848>,  <35.388515, 29.889198, 28.915176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464657, 29.699438, 29.040848>,  <35.591560, 29.383171, 29.250299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464657, 29.699438, 29.040848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034519, -0.561417, -0.826812,
		-0.947710, -0.244240, 0.205409,
		-0.317261, 0.790668, -0.523630,
		35.369480, 29.936638, 28.883759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030617, 29.093285, 28.827614>,  <35.591560, 29.383171, 29.250299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030617, 29.093285, 28.827614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148964, 29.427826, 28.643015>,  <35.219971, 29.628550, 28.532255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148964, 29.427826, 28.643015>,  <35.030617, 29.093285, 28.827614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148964, 29.427826, 28.643015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005473, -0.484605, -0.874716,
		-0.955215, 0.256271, -0.147954,
		0.295864, 0.836351, -0.461499,
		35.237724, 29.678732, 28.504564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722862, 29.079105, 28.169893>,  <35.030617, 29.093285, 28.827614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722862, 29.079105, 28.169893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995327, 29.369478, 28.131870>,  <35.158806, 29.543701, 28.109056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995327, 29.369478, 28.131870>,  <34.722862, 29.079105, 28.169893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995327, 29.369478, 28.131870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120429, -0.239164, -0.963482,
		-0.722156, 0.644844, -0.250334,
		0.681166, 0.725932, -0.095055,
		35.199677, 29.587257, 28.103354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570747, 29.428337, 27.545387>,  <34.722862, 29.079105, 28.169893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570747, 29.428337, 27.545387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958599, 29.490942, 27.620556>,  <35.191311, 29.528505, 27.665657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958599, 29.490942, 27.620556>,  <34.570747, 29.428337, 27.545387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958599, 29.490942, 27.620556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239646, -0.454768, -0.857762,
		-0.048792, 0.876749, -0.478467,
		0.969634, 0.156514, 0.187921,
		35.249489, 29.537897, 27.676931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855103, 29.759100, 26.875204>,  <34.570747, 29.428337, 27.545387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855103, 29.759100, 26.875204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131702, 29.568468, 27.092348>,  <35.297665, 29.454090, 27.222635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131702, 29.568468, 27.092348>,  <34.855103, 29.759100, 26.875204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131702, 29.568468, 27.092348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400124, -0.372988, -0.837127,
		0.601437, 0.796087, -0.067232,
		0.691502, -0.476578, 0.542862,
		35.339153, 29.425495, 27.255207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322166, 29.771397, 26.368113>,  <34.855103, 29.759100, 26.875204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322166, 29.771397, 26.368113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474815, 29.525618, 26.644320>,  <35.566406, 29.378149, 26.810043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474815, 29.525618, 26.644320>,  <35.322166, 29.771397, 26.368113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474815, 29.525618, 26.644320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551538, -0.448111, -0.703563,
		0.741732, 0.649345, 0.167881,
		0.381626, -0.614448, 0.690518,
		35.589302, 29.341284, 26.851475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948204, 29.692238, 26.193193>,  <35.322166, 29.771397, 26.368113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948204, 29.692238, 26.193193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911964, 29.359146, 26.411680>,  <35.890221, 29.159290, 26.542772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911964, 29.359146, 26.411680>,  <35.948204, 29.692238, 26.193193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911964, 29.359146, 26.411680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566604, -0.494152, -0.659374,
		0.818994, 0.249750, 0.516598,
		-0.090599, -0.832730, 0.546217,
		35.884785, 29.109327, 26.575546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568565, 29.466629, 26.296213>,  <35.948204, 29.692238, 26.193193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568565, 29.466629, 26.296213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364628, 29.129910, 26.367134>,  <36.242268, 28.927877, 26.409687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364628, 29.129910, 26.367134>,  <36.568565, 29.466629, 26.296213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364628, 29.129910, 26.367134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575240, -0.486845, -0.657329,
		0.639658, -0.233141, 0.732450,
		-0.509840, -0.841800, 0.177302,
		36.211678, 28.877369, 26.420324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085102, 28.936817, 26.318958>,  <36.568565, 29.466629, 26.296213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085102, 28.936817, 26.318958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737595, 28.753038, 26.245047>,  <36.529091, 28.642771, 26.200701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737595, 28.753038, 26.245047>,  <37.085102, 28.936817, 26.318958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737595, 28.753038, 26.245047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464582, -0.626987, -0.625340,
		0.171457, -0.629123, 0.758160,
		-0.868773, -0.459446, -0.184778,
		36.476963, 28.615204, 26.189613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235836, 28.307756, 26.108168>,  <37.085102, 28.936817, 26.318958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235836, 28.307756, 26.108168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864647, 28.325819, 25.960211>,  <36.641933, 28.336657, 25.871437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864647, 28.325819, 25.960211>,  <37.235836, 28.307756, 26.108168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864647, 28.325819, 25.960211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331496, -0.353347, -0.874789,
		-0.170203, -0.934402, 0.312929,
		-0.927977, 0.045157, -0.369891,
		36.586254, 28.339367, 25.849243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258659, 27.779051, 25.705267>,  <37.235836, 28.307756, 26.108168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258659, 27.779051, 25.705267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942856, 27.995125, 25.588734>,  <36.753372, 28.124769, 25.518814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942856, 27.995125, 25.588734>,  <37.258659, 27.779051, 25.705267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942856, 27.995125, 25.588734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111222, -0.340897, -0.933498,
		-0.603577, -0.769408, 0.209061,
		-0.789509, 0.540186, -0.291333,
		36.706001, 28.157181, 25.501333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691822, 27.280199, 25.396425>,  <37.258659, 27.779051, 25.705267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691822, 27.280199, 25.396425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685764, 27.645250, 25.233019>,  <36.682129, 27.864281, 25.134975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685764, 27.645250, 25.233019>,  <36.691822, 27.280199, 25.396425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685764, 27.645250, 25.233019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001075, -0.408545, -0.912737,
		-0.999885, -0.014264, 0.005207,
		-0.015147, 0.912627, -0.408514,
		36.681221, 27.919039, 25.110464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546101, 27.092281, 24.698160>,  <36.691822, 27.280199, 25.396425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546101, 27.092281, 24.698160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643085, 27.479677, 24.675394>,  <36.701275, 27.712114, 24.661734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643085, 27.479677, 24.675394>,  <36.546101, 27.092281, 24.698160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643085, 27.479677, 24.675394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184496, -0.103625, -0.977355,
		-0.952457, 0.226468, -0.203807,
		0.242459, 0.968491, -0.056916,
		36.715824, 27.770224, 24.658319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292412, 27.310799, 24.113022>,  <36.546101, 27.092281, 24.698160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292412, 27.310799, 24.113022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554367, 27.605465, 24.180477>,  <36.711540, 27.782265, 24.220951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554367, 27.605465, 24.180477>,  <36.292412, 27.310799, 24.113022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554367, 27.605465, 24.180477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161617, 0.081464, -0.983486,
		-0.738239, 0.671332, -0.065708,
		0.654892, 0.736666, 0.168638,
		36.750835, 27.826466, 24.231070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241886, 27.823751, 23.570511>,  <36.292412, 27.310799, 24.113022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241886, 27.823751, 23.570511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607590, 27.899792, 23.713619>,  <36.827011, 27.945415, 23.799484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607590, 27.899792, 23.713619>,  <36.241886, 27.823751, 23.570511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607590, 27.899792, 23.713619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344033, 0.102079, -0.933392,
		-0.213960, 0.976443, 0.027925,
		0.914255, 0.190102, 0.357770,
		36.881866, 27.956821, 23.820950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469849, 28.473970, 23.269934>,  <36.241886, 27.823751, 23.570511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469849, 28.473970, 23.269934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786758, 28.251719, 23.370790>,  <36.976906, 28.118368, 23.431305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786758, 28.251719, 23.370790>,  <36.469849, 28.473970, 23.269934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786758, 28.251719, 23.370790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382692, 0.130645, -0.914592,
		0.475232, 0.821102, 0.316141,
		0.792276, -0.555628, 0.252143,
		37.024441, 28.085030, 23.446434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059502, 28.811583, 22.883123>,  <36.469849, 28.473970, 23.269934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059502, 28.811583, 22.883123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224918, 28.456524, 22.964182>,  <37.324169, 28.243488, 23.012817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224918, 28.456524, 22.964182>,  <37.059502, 28.811583, 22.883123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224918, 28.456524, 22.964182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348675, -0.051208, -0.935844,
		0.841075, 0.457671, 0.288323,
		0.413544, -0.887646, 0.202648,
		37.348980, 28.190229, 23.024977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733543, 28.785847, 22.450691>,  <37.059502, 28.811583, 22.883123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733543, 28.785847, 22.450691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644524, 28.412560, 22.563528>,  <37.591114, 28.188587, 22.631231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644524, 28.412560, 22.563528>,  <37.733543, 28.785847, 22.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644524, 28.412560, 22.563528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239069, -0.332753, -0.912207,
		0.945156, -0.135567, 0.297156,
		-0.222545, -0.933219, 0.282093,
		37.577759, 28.132593, 22.648155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286987, 28.377020, 22.309731>,  <37.733543, 28.785847, 22.450691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286987, 28.377020, 22.309731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980198, 28.121260, 22.331316>,  <37.796124, 27.967804, 22.344267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980198, 28.121260, 22.331316>,  <38.286987, 28.377020, 22.309731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980198, 28.121260, 22.331316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271415, -0.399470, -0.875647,
		0.581449, -0.656953, 0.479927,
		-0.766976, -0.639403, 0.053964,
		37.750107, 27.929440, 22.347506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702751, 27.796551, 22.094707>,  <38.286987, 28.377020, 22.309731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702751, 27.796551, 22.094707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309372, 27.727190, 22.073662>,  <38.073345, 27.685574, 22.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309372, 27.727190, 22.073662>,  <38.702751, 27.796551, 22.094707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309372, 27.727190, 22.073662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130248, -0.474562, -0.870532,
		0.125985, -0.862973, 0.489291,
		-0.983445, -0.173403, -0.052613,
		38.014339, 27.675169, 22.057878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656929, 27.161613, 21.842424>,  <38.702751, 27.796551, 22.094707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656929, 27.161613, 21.842424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309532, 27.339075, 21.753981>,  <38.101093, 27.445553, 21.700914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309532, 27.339075, 21.753981>,  <38.656929, 27.161613, 21.842424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309532, 27.339075, 21.753981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063561, -0.342704, -0.937291,
		-0.491610, -0.828084, 0.269437,
		-0.868492, 0.443656, -0.221110,
		38.048985, 27.472172, 21.687647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290550, 26.683386, 21.499081>,  <38.656929, 27.161613, 21.842424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290550, 26.683386, 21.499081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107910, 27.019773, 21.382950>,  <37.998325, 27.221605, 21.313271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107910, 27.019773, 21.382950>,  <38.290550, 26.683386, 21.499081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107910, 27.019773, 21.382950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040924, -0.345837, -0.937402,
		-0.888732, -0.416134, 0.192324,
		-0.456598, 0.840969, -0.290327,
		37.970932, 27.272064, 21.295853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832870, 26.477903, 21.023430>,  <38.290550, 26.683386, 21.499081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832870, 26.477903, 21.023430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843918, 26.871120, 20.950916>,  <37.850544, 27.107050, 20.907408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843918, 26.871120, 20.950916>,  <37.832870, 26.477903, 21.023430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843918, 26.871120, 20.950916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045180, -0.182395, -0.982187,
		-0.998597, 0.018934, -0.049451,
		0.027616, 0.983043, -0.181284,
		37.852203, 27.166033, 20.896532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325981, 26.603157, 20.480289>,  <37.832870, 26.477903, 21.023430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325981, 26.603157, 20.480289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635117, 26.856976, 20.477112>,  <37.820599, 27.009268, 20.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635117, 26.856976, 20.477112>,  <37.325981, 26.603157, 20.480289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635117, 26.856976, 20.477112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168804, -0.217628, -0.961324,
		-0.611735, 0.741611, -0.275306,
		0.772843, 0.634548, -0.007944,
		37.866970, 27.047340, 20.474730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313862, 27.149500, 19.936398>,  <37.325981, 26.603157, 20.480289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313862, 27.149500, 19.936398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703339, 27.081461, 19.997046>,  <37.937023, 27.040638, 20.033434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703339, 27.081461, 19.997046>,  <37.313862, 27.149500, 19.936398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703339, 27.081461, 19.997046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117992, -0.192863, -0.974106,
		0.194937, 0.966370, -0.167719,
		0.973693, -0.170099, 0.151620,
		37.995445, 27.030432, 20.042532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178188, 27.744240, 19.562449>,  <37.313862, 27.149500, 19.936398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178188, 27.744240, 19.562449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181004, 28.081184, 19.346903>,  <37.182693, 28.283352, 19.217575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181004, 28.081184, 19.346903>,  <37.178188, 27.744240, 19.562449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181004, 28.081184, 19.346903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060638, -0.538245, -0.840604,
		-0.998135, -0.026756, -0.054870,
		0.007042, 0.842364, -0.538863,
		37.183117, 28.333893, 19.185244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574471, 27.720013, 19.102695>,  <37.178188, 27.744240, 19.562449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574471, 27.720013, 19.102695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886314, 27.939074, 18.981182>,  <37.073421, 28.070511, 18.908274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886314, 27.939074, 18.981182>,  <36.574471, 27.720013, 19.102695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886314, 27.939074, 18.981182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029498, -0.516645, -0.855691,
		-0.625571, 0.658144, -0.418936,
		0.779610, 0.547653, -0.303784,
		37.120197, 28.103369, 18.890047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393299, 27.946056, 18.379843>,  <36.574471, 27.720013, 19.102695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393299, 27.946056, 18.379843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791100, 27.937599, 18.420853>,  <37.029781, 27.932524, 18.445459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791100, 27.937599, 18.420853>,  <36.393299, 27.946056, 18.379843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791100, 27.937599, 18.420853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076661, -0.519813, -0.850834,
		0.071285, 0.854019, -0.515336,
		0.994506, -0.021145, 0.102525,
		37.089451, 27.931255, 18.451611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865234, 28.332403, 18.005323>,  <36.393299, 27.946056, 18.379843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865234, 28.332403, 18.005323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475624, 28.422886, 18.001095>,  <36.241859, 28.477175, 17.998558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475624, 28.422886, 18.001095>,  <36.865234, 28.332403, 18.005323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475624, 28.422886, 18.001095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119154, 0.551636, 0.825530,
		0.192572, 0.802825, -0.564259,
		-0.974022, 0.226208, -0.010570,
		36.183418, 28.490747, 17.997923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680126, 28.317261, 18.087297>,  <36.865234, 28.332403, 18.005323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680126, 28.317261, 18.087297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844723, 28.311924, 17.722771>,  <37.943481, 28.308722, 17.504055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844723, 28.311924, 17.722771>,  <37.680126, 28.317261, 18.087297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844723, 28.311924, 17.722771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906393, 0.098820, -0.410713,
		0.095537, 0.995016, 0.028569,
		0.411490, -0.013344, -0.911317,
		37.968170, 28.307920, 17.449375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588959, 28.955719, 17.592607>,  <37.680126, 28.317261, 18.087297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588959, 28.955719, 17.592607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605492, 28.586906, 17.438648>,  <37.615414, 28.365618, 17.346273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605492, 28.586906, 17.438648>,  <37.588959, 28.955719, 17.592607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605492, 28.586906, 17.438648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924885, 0.110429, -0.363858,
		0.377993, 0.371027, -0.848210,
		0.041335, -0.922033, -0.384898,
		37.617893, 28.310297, 17.323179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924732, 28.947622, 18.358042>,  <37.588959, 28.955719, 17.592607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924732, 28.947622, 18.358042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658764, 28.700636, 18.526146>,  <37.499184, 28.552444, 18.627008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658764, 28.700636, 18.526146>,  <37.924732, 28.947622, 18.358042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658764, 28.700636, 18.526146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409670, 0.771965, 0.486046,
		-0.624542, 0.151014, -0.766252,
		-0.664919, -0.617467, 0.420259,
		37.459290, 28.515396, 18.652224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276352, 29.418642, 18.516489>,  <37.924732, 28.947622, 18.358042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276352, 29.418642, 18.516489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239693, 29.072960, 18.714376>,  <37.217697, 28.865551, 18.833109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239693, 29.072960, 18.714376>,  <37.276352, 29.418642, 18.516489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239693, 29.072960, 18.714376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427295, 0.482877, 0.764362,
		-0.899455, -0.141339, -0.413526,
		-0.091649, -0.864207, 0.494719,
		37.212196, 28.813698, 18.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574131, 29.477137, 18.955904>,  <37.276352, 29.418642, 18.516489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574131, 29.477137, 18.955904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855991, 29.251705, 19.128344>,  <37.025108, 29.116447, 19.231808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855991, 29.251705, 19.128344>,  <36.574131, 29.477137, 18.955904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855991, 29.251705, 19.128344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178291, 0.447437, 0.876363,
		-0.686788, -0.694392, 0.214806,
		0.704652, -0.563578, 0.431099,
		37.067387, 29.082632, 19.257673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274940, 29.466763, 19.613256>,  <36.574131, 29.477137, 18.955904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274940, 29.466763, 19.613256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649017, 29.339420, 19.675304>,  <36.873463, 29.263016, 19.712534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649017, 29.339420, 19.675304>,  <36.274940, 29.466763, 19.613256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649017, 29.339420, 19.675304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104291, 0.171018, 0.979733,
		-0.338430, -0.932418, 0.126733,
		0.935194, -0.318354, 0.155121,
		36.929577, 29.243914, 19.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267509, 29.226727, 20.279654>,  <36.274940, 29.466763, 19.613256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267509, 29.226727, 20.279654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655262, 29.282341, 20.198687>,  <36.887913, 29.315710, 20.150106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655262, 29.282341, 20.198687>,  <36.267509, 29.226727, 20.279654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655262, 29.282341, 20.198687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141967, 0.355269, 0.923921,
		0.200371, -0.924366, 0.324652,
		0.969380, 0.139037, -0.202416,
		36.946075, 29.324053, 20.137962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641613, 29.012732, 20.918167>,  <36.267509, 29.226727, 20.279654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641613, 29.012732, 20.918167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894249, 29.241793, 20.709108>,  <37.045830, 29.379230, 20.583673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894249, 29.241793, 20.709108>,  <36.641613, 29.012732, 20.918167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894249, 29.241793, 20.709108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244943, 0.492211, 0.835303,
		0.735594, -0.655587, 0.170607,
		0.631589, 0.572654, -0.522649,
		37.083725, 29.413589, 20.552313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185570, 29.028801, 21.382635>,  <36.641613, 29.012732, 20.918167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185570, 29.028801, 21.382635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242001, 29.340206, 21.138006>,  <37.275860, 29.527048, 20.991230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242001, 29.340206, 21.138006>,  <37.185570, 29.028801, 21.382635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242001, 29.340206, 21.138006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227819, 0.575641, 0.785325,
		0.963430, -0.250116, -0.096152,
		0.141073, 0.778511, -0.611571,
		37.284321, 29.573759, 20.954535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577316, 29.429068, 21.811937>,  <37.185570, 29.028801, 21.382635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577316, 29.429068, 21.811937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457092, 29.668489, 21.514914>,  <37.384956, 29.812143, 21.336700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457092, 29.668489, 21.514914>,  <37.577316, 29.429068, 21.811937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457092, 29.668489, 21.514914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040054, 0.785792, 0.617192,
		0.952920, 0.155763, -0.260155,
		-0.300564, 0.598555, -0.742558,
		37.366924, 29.848057, 21.292147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057476, 29.987579, 21.769104>,  <37.577316, 29.429068, 21.811937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057476, 29.987579, 21.769104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699364, 30.107092, 21.636923>,  <37.484497, 30.178799, 21.557613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699364, 30.107092, 21.636923>,  <38.057476, 29.987579, 21.769104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699364, 30.107092, 21.636923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001982, 0.739080, 0.673614,
		0.445495, 0.603730, -0.661094,
		-0.895282, 0.298781, -0.330453,
		37.430779, 30.196726, 21.537786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183952, 30.707312, 21.758959>,  <38.057476, 29.987579, 21.769104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183952, 30.707312, 21.758959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786621, 30.661171, 21.759304>,  <37.548222, 30.633488, 21.759510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786621, 30.661171, 21.759304>,  <38.183952, 30.707312, 21.758959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786621, 30.661171, 21.759304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090621, 0.784957, 0.612886,
		-0.071373, 0.608717, -0.790171,
		-0.993325, -0.115349, 0.000862,
		37.488625, 30.626566, 21.759563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889763, 31.413143, 21.637058>,  <38.183952, 30.707312, 21.758959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889763, 31.413143, 21.637058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598747, 31.200380, 21.810385>,  <37.424137, 31.072723, 21.914381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598747, 31.200380, 21.810385>,  <37.889763, 31.413143, 21.637058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598747, 31.200380, 21.810385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149040, 0.739047, 0.656960,
		-0.669683, 0.413382, -0.616960,
		-0.727538, -0.531906, 0.433318,
		37.380486, 31.040808, 21.940380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354664, 31.958982, 21.802752>,  <37.889763, 31.413143, 21.637058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354664, 31.958982, 21.802752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275764, 31.624788, 22.007908>,  <37.228424, 31.424273, 22.131002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275764, 31.624788, 22.007908>,  <37.354664, 31.958982, 21.802752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275764, 31.624788, 22.007908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127458, 0.540584, 0.831579,
		-0.972033, 0.098654, -0.213117,
		-0.197246, -0.835486, 0.512891,
		37.216591, 31.374142, 22.161776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761803, 32.101582, 22.162788>,  <37.354664, 31.958982, 21.802752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761803, 32.101582, 22.162788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947582, 31.809458, 22.363161>,  <37.059052, 31.634184, 22.483385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947582, 31.809458, 22.363161>,  <36.761803, 32.101582, 22.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947582, 31.809458, 22.363161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087838, 0.524864, 0.846642,
		-0.881234, -0.437222, 0.179622,
		0.464447, -0.730312, 0.500933,
		37.086918, 31.590364, 22.513441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382298, 32.110188, 22.752468>,  <36.761803, 32.101582, 22.162788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382298, 32.110188, 22.752468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731888, 31.928122, 22.820581>,  <36.941643, 31.818882, 22.861448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731888, 31.928122, 22.820581>,  <36.382298, 32.110188, 22.752468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731888, 31.928122, 22.820581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021363, 0.386038, 0.922236,
		-0.485504, -0.802372, 0.347111,
		0.873974, -0.455164, 0.170282,
		36.994080, 31.791573, 22.871666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218994, 31.759289, 23.325586>,  <36.382298, 32.110188, 22.752468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218994, 31.759289, 23.325586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618454, 31.778561, 23.317757>,  <36.858128, 31.790125, 23.313059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618454, 31.778561, 23.317757>,  <36.218994, 31.759289, 23.325586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618454, 31.778561, 23.317757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005360, 0.279059, 0.960259,
		0.051728, -0.959064, 0.278424,
		0.998647, 0.048180, -0.019576,
		36.918049, 31.793015, 23.311884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471516, 31.554594, 23.923981>,  <36.218994, 31.759289, 23.325586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471516, 31.554594, 23.923981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803490, 31.747198, 23.811306>,  <37.002674, 31.862761, 23.743700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803490, 31.747198, 23.811306>,  <36.471516, 31.554594, 23.923981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803490, 31.747198, 23.811306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060313, 0.424540, 0.903398,
		0.554584, -0.766755, 0.323301,
		0.829939, 0.481511, -0.281688,
		37.052471, 31.891651, 23.726799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994659, 31.516598, 24.455946>,  <36.471516, 31.554594, 23.923981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994659, 31.516598, 24.455946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100410, 31.832830, 24.235008>,  <37.163860, 32.022572, 24.102446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100410, 31.832830, 24.235008>,  <36.994659, 31.516598, 24.455946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100410, 31.832830, 24.235008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190893, 0.518496, 0.833500,
		0.945339, -0.325796, -0.013838,
		0.264376, 0.790581, -0.552346,
		37.179722, 32.070004, 24.069304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646412, 31.775270, 24.750151>,  <36.994659, 31.516598, 24.455946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646412, 31.775270, 24.750151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456997, 32.065041, 24.549761>,  <37.343349, 32.238903, 24.429527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456997, 32.065041, 24.549761>,  <37.646412, 31.775270, 24.750151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456997, 32.065041, 24.549761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136046, 0.622120, 0.771011,
		0.870205, 0.296944, -0.393150,
		-0.473534, 0.724424, -0.500974,
		37.314938, 32.282368, 24.399469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107819, 32.282276, 24.755314>,  <37.646412, 31.775270, 24.750151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107819, 32.282276, 24.755314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775955, 32.489567, 24.672266>,  <37.576836, 32.613941, 24.622438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775955, 32.489567, 24.672266>,  <38.107819, 32.282276, 24.755314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775955, 32.489567, 24.672266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095084, 0.497637, 0.862158,
		0.550108, 0.695560, -0.462145,
		-0.829663, 0.518222, -0.207618,
		37.527058, 32.645035, 24.609982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265213, 32.921894, 24.839350>,  <38.107819, 32.282276, 24.755314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265213, 32.921894, 24.839350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866428, 32.950569, 24.851585>,  <37.627159, 32.967773, 24.858927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866428, 32.950569, 24.851585>,  <38.265213, 32.921894, 24.839350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866428, 32.950569, 24.851585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058963, 0.437065, 0.897495,
		0.050969, 0.896569, -0.439963,
		-0.996958, 0.071685, 0.030587,
		37.567341, 32.972076, 24.860762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063778, 33.577343, 25.192623>,  <38.265213, 32.921894, 24.839350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063778, 33.577343, 25.192623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688831, 33.438465, 25.203892>,  <37.463863, 33.355137, 25.210653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688831, 33.438465, 25.203892>,  <38.063778, 33.577343, 25.192623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688831, 33.438465, 25.203892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210938, 0.630128, 0.747291,
		-0.277207, 0.694546, -0.663899,
		-0.937369, -0.347196, 0.028170,
		37.407619, 33.334305, 25.212343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685455, 34.148502, 25.350981>,  <38.063778, 33.577343, 25.192623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685455, 34.148502, 25.350981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460167, 33.844662, 25.481087>,  <37.324993, 33.662357, 25.559151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460167, 33.844662, 25.481087>,  <37.685455, 34.148502, 25.350981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460167, 33.844662, 25.481087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239563, 0.526832, 0.815510,
		-0.790819, 0.381389, -0.478693,
		-0.563217, -0.759599, 0.325263,
		37.291203, 33.616783, 25.578665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013710, 34.442089, 25.601202>,  <37.685455, 34.148502, 25.350981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013710, 34.442089, 25.601202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016277, 34.070717, 25.749779>,  <37.017818, 33.847893, 25.838924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016277, 34.070717, 25.749779>,  <37.013710, 34.442089, 25.601202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016277, 34.070717, 25.749779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267243, 0.356347, 0.895320,
		-0.963608, -0.105013, -0.245829,
		0.006420, -0.928434, 0.371443,
		37.018204, 33.792187, 25.861212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275597, 34.293236, 25.926500>,  <37.013710, 34.442089, 25.601202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275597, 34.293236, 25.926500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565304, 34.059280, 26.072563>,  <36.739128, 33.918907, 26.160200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565304, 34.059280, 26.072563>,  <36.275597, 34.293236, 25.926500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565304, 34.059280, 26.072563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200210, 0.328378, 0.923084,
		-0.659810, -0.741670, 0.120734,
		0.724270, -0.584887, 0.365157,
		36.782585, 33.883816, 26.182110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971867, 33.746651, 26.362238>,  <36.275597, 34.293236, 25.926500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971867, 33.746651, 26.362238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345238, 33.800213, 26.495377>,  <36.569260, 33.832348, 26.575260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345238, 33.800213, 26.495377>,  <35.971867, 33.746651, 26.362238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345238, 33.800213, 26.495377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342726, 0.058440, 0.937616,
		0.106105, -0.989269, 0.100444,
		0.933424, 0.133911, 0.332847,
		36.625267, 33.840385, 26.595230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934734, 33.392727, 26.966684>,  <35.971867, 33.746651, 26.362238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934734, 33.392727, 26.966684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258995, 33.626362, 26.983156>,  <36.453552, 33.766541, 26.993040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258995, 33.626362, 26.983156>,  <35.934734, 33.392727, 26.966684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258995, 33.626362, 26.983156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181926, 0.184394, 0.965868,
		0.556554, -0.790471, 0.255739,
		0.810648, 0.584084, 0.041182,
		36.502190, 33.801586, 26.995510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229393, 33.067482, 27.509312>,  <35.934734, 33.392727, 26.966684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229393, 33.067482, 27.509312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369858, 33.438889, 27.461086>,  <36.454136, 33.661736, 27.432152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369858, 33.438889, 27.461086>,  <36.229393, 33.067482, 27.509312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369858, 33.438889, 27.461086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263310, 0.221498, 0.938939,
		0.898529, -0.297971, 0.322271,
		0.351159, 0.928521, -0.120564,
		36.475204, 33.717445, 27.424917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596191, 33.147869, 28.198589>,  <36.229393, 33.067482, 27.509312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596191, 33.147869, 28.198589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556175, 33.510498, 28.034584>,  <36.532166, 33.728077, 27.936180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556175, 33.510498, 28.034584>,  <36.596191, 33.147869, 28.198589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556175, 33.510498, 28.034584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346689, 0.354497, 0.868412,
		0.932630, 0.229025, 0.278835,
		-0.100042, 0.906576, -0.410015,
		36.526161, 33.782471, 27.911579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949547, 33.595665, 28.677580>,  <36.596191, 33.147869, 28.198589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949547, 33.595665, 28.677580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686447, 33.807449, 28.463278>,  <36.528587, 33.934521, 28.334698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686447, 33.807449, 28.463278>,  <36.949547, 33.595665, 28.677580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686447, 33.807449, 28.463278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376972, 0.384393, 0.842694,
		0.652116, 0.756248, -0.053242,
		-0.657751, 0.529464, -0.535753,
		36.489120, 33.966290, 28.302551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010002, 34.249012, 28.828041>,  <36.949547, 33.595665, 28.677580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010002, 34.249012, 28.828041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639935, 34.174622, 28.695690>,  <36.417892, 34.129990, 28.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639935, 34.174622, 28.695690>,  <37.010002, 34.249012, 28.828041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639935, 34.174622, 28.695690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374657, 0.307812, 0.874576,
		-0.060799, 0.933095, -0.354454,
		-0.925168, -0.185972, -0.330876,
		36.362385, 34.118832, 28.596428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653542, 34.848999, 29.039003>,  <37.010002, 34.249012, 28.828041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653542, 34.848999, 29.039003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364906, 34.587158, 28.948843>,  <36.191723, 34.430054, 28.894747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364906, 34.587158, 28.948843>,  <36.653542, 34.848999, 29.039003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364906, 34.587158, 28.948843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548939, 0.342584, 0.762432,
		-0.421870, 0.673894, -0.606541,
		-0.721590, -0.654601, -0.225401,
		36.148430, 34.390778, 28.881222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064953, 35.332310, 28.840284>,  <36.653542, 34.848999, 29.039003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064953, 35.332310, 28.840284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940197, 34.963402, 28.931629>,  <35.865345, 34.742058, 28.986437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940197, 34.963402, 28.931629>,  <36.064953, 35.332310, 28.840284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940197, 34.963402, 28.931629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663917, 0.383485, 0.641992,
		-0.679662, 0.048616, -0.731913,
		-0.311889, -0.922267, 0.228364,
		35.846630, 34.686722, 29.000137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335068, 35.413513, 28.822214>,  <36.064953, 35.332310, 28.840284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335068, 35.413513, 28.822214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390759, 35.081814, 29.038717>,  <35.424171, 34.882793, 29.168619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390759, 35.081814, 29.038717>,  <35.335068, 35.413513, 28.822214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390759, 35.081814, 29.038717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661698, 0.328738, 0.673860,
		-0.736731, -0.451966, -0.502946,
		0.139224, -0.829252, 0.541256,
		35.432526, 34.833038, 29.201094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616337, 35.187912, 29.100925>,  <35.335068, 35.413513, 28.822214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616337, 35.187912, 29.100925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883728, 34.974411, 29.308094>,  <35.044163, 34.846310, 29.432394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883728, 34.974411, 29.308094>,  <34.616337, 35.187912, 29.100925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883728, 34.974411, 29.308094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517775, 0.165912, 0.839275,
		-0.533898, -0.829203, -0.165457,
		0.668478, -0.533756, 0.517921,
		35.084270, 34.814285, 29.463470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247738, 34.845074, 29.554642>,  <34.616337, 35.187912, 29.100925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247738, 34.845074, 29.554642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618874, 34.888969, 29.697227>,  <34.841557, 34.915306, 29.782778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618874, 34.888969, 29.697227>,  <34.247738, 34.845074, 29.554642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618874, 34.888969, 29.697227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368303, 0.420302, 0.829276,
		-0.058821, -0.900724, 0.430390,
		0.927843, 0.109735, 0.356463,
		34.897228, 34.921890, 29.804167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222187, 34.659985, 30.249182>,  <34.247738, 34.845074, 29.554642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222187, 34.659985, 30.249182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573372, 34.851475, 30.248423>,  <34.784084, 34.966370, 30.247967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573372, 34.851475, 30.248423>,  <34.222187, 34.659985, 30.249182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573372, 34.851475, 30.248423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173027, 0.321018, 0.931133,
		0.446365, -0.817173, 0.364674,
		0.877964, 0.478724, -0.001898,
		34.836761, 34.995090, 30.247854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657124, 34.485268, 30.896605>,  <34.222187, 34.659985, 30.249182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657124, 34.485268, 30.896605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775330, 34.849018, 30.779501>,  <34.846252, 35.067268, 30.709238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775330, 34.849018, 30.779501>,  <34.657124, 34.485268, 30.896605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775330, 34.849018, 30.779501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069586, 0.326121, 0.942764,
		0.952801, -0.258228, 0.159653,
		0.295514, 0.909375, -0.292759,
		34.863983, 35.121830, 30.691673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946007, 34.682968, 31.423330>,  <34.657124, 34.485268, 30.896605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946007, 34.682968, 31.423330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937668, 35.031544, 31.227306>,  <34.932663, 35.240688, 31.109692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937668, 35.031544, 31.227306>,  <34.946007, 34.682968, 31.423330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937668, 35.031544, 31.227306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098809, 0.485971, 0.868371,
		0.994888, 0.066530, 0.075973,
		-0.020852, 0.871439, -0.490060,
		34.931412, 35.292976, 31.080288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505222, 35.071644, 31.713037>,  <34.946007, 34.682968, 31.423330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505222, 35.071644, 31.713037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239178, 35.319439, 31.546253>,  <35.079552, 35.468117, 31.446182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239178, 35.319439, 31.546253>,  <35.505222, 35.071644, 31.713037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239178, 35.319439, 31.546253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023252, 0.575286, 0.817621,
		0.746379, 0.534117, -0.397035,
		-0.665115, 0.619487, -0.416963,
		35.039642, 35.505283, 31.421164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700642, 35.779057, 32.016396>,  <35.505222, 35.071644, 31.713037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700642, 35.779057, 32.016396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321812, 35.818630, 31.894241>,  <35.094513, 35.842373, 31.820948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321812, 35.818630, 31.894241>,  <35.700642, 35.779057, 32.016396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321812, 35.818630, 31.894241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228513, 0.460380, 0.857806,
		0.225459, 0.882192, -0.413408,
		-0.947075, 0.098931, -0.305389,
		35.037689, 35.848309, 31.802624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765621, 36.410664, 31.636953>,  <35.700642, 35.779057, 32.016396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765621, 36.410664, 31.636953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025650, 36.699173, 31.732588>,  <36.181667, 36.872280, 31.789968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025650, 36.699173, 31.732588>,  <35.765621, 36.410664, 31.636953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025650, 36.699173, 31.732588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683108, -0.416912, -0.599623,
		-0.332817, 0.553121, -0.763734,
		0.650075, 0.721277, 0.239086,
		36.220673, 36.915558, 31.804314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957653, 36.763157, 31.040039>,  <35.765621, 36.410664, 31.636953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957653, 36.763157, 31.040039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242504, 36.788776, 31.319687>,  <36.413414, 36.804146, 31.487476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242504, 36.788776, 31.319687>,  <35.957653, 36.763157, 31.040039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242504, 36.788776, 31.319687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679704, -0.312133, -0.663758,
		0.175707, 0.947877, -0.265812,
		0.712130, 0.064046, 0.699120,
		36.456142, 36.807991, 31.529423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571003, 37.146667, 30.729143>,  <35.957653, 36.763157, 31.040039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571003, 37.146667, 30.729143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695633, 36.915272, 31.030680>,  <36.770412, 36.776436, 31.211601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695633, 36.915272, 31.030680>,  <36.571003, 37.146667, 30.729143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695633, 36.915272, 31.030680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733203, -0.358268, -0.577977,
		0.604428, 0.732801, 0.312521,
		0.311575, -0.578487, 0.753839,
		36.789104, 36.741726, 31.256832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276604, 37.332321, 30.737476>,  <36.571003, 37.146667, 30.729143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276604, 37.332321, 30.737476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233948, 36.987473, 30.935616>,  <37.208355, 36.780563, 31.054499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233948, 36.987473, 30.935616>,  <37.276604, 37.332321, 30.737476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233948, 36.987473, 30.935616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726943, -0.407493, -0.552723,
		0.678367, 0.301147, 0.670171,
		-0.106639, -0.862125, 0.495346,
		37.201958, 36.728836, 31.084219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949467, 37.108837, 30.820478>,  <37.276604, 37.332321, 30.737476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949467, 37.108837, 30.820478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743397, 36.769623, 30.870153>,  <37.619755, 36.566093, 30.899958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743397, 36.769623, 30.870153>,  <37.949467, 37.108837, 30.820478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743397, 36.769623, 30.870153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617391, -0.467687, -0.632532,
		0.594493, -0.249193, 0.764513,
		-0.515176, -0.848040, 0.124187,
		37.588844, 36.515209, 30.907410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474476, 36.646698, 30.827072>,  <37.949467, 37.108837, 30.820478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474476, 36.646698, 30.827072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137245, 36.447994, 30.744658>,  <37.934906, 36.328770, 30.695208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137245, 36.447994, 30.744658>,  <38.474476, 36.646698, 30.827072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137245, 36.447994, 30.744658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484956, -0.536625, -0.690545,
		0.232473, -0.682099, 0.693323,
		-0.843074, -0.496764, -0.206037,
		37.884323, 36.298965, 30.682846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676708, 35.982464, 30.675814>,  <38.474476, 36.646698, 30.827072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676708, 35.982464, 30.675814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306927, 35.945759, 30.527775>,  <38.085060, 35.923737, 30.438951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306927, 35.945759, 30.527775>,  <38.676708, 35.982464, 30.675814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306927, 35.945759, 30.527775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372195, -0.428010, -0.823576,
		-0.082833, -0.899104, 0.429827,
		-0.924451, -0.091760, -0.370096,
		38.029591, 35.918232, 30.416746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582348, 35.274029, 30.654589>,  <38.676708, 35.982464, 30.675814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582348, 35.274029, 30.654589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354763, 35.480858, 30.398802>,  <38.218212, 35.604958, 30.245329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354763, 35.480858, 30.398802>,  <38.582348, 35.274029, 30.654589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354763, 35.480858, 30.398802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401230, -0.504221, -0.764706,
		-0.717845, -0.691659, 0.079413,
		-0.568958, 0.517077, -0.639467,
		38.184074, 35.635983, 30.206963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313114, 34.705364, 30.161951>,  <38.582348, 35.274029, 30.654589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313114, 34.705364, 30.161951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278877, 35.066204, 29.992773>,  <38.258335, 35.282707, 29.891266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278877, 35.066204, 29.992773>,  <38.313114, 34.705364, 30.161951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278877, 35.066204, 29.992773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323274, -0.376394, -0.868229,
		-0.942427, -0.211039, -0.259412,
		-0.085589, 0.902103, -0.422947,
		38.253201, 35.336834, 29.865889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790497, 34.689358, 29.667404>,  <38.313114, 34.705364, 30.161951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790497, 34.689358, 29.667404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031155, 34.988602, 29.555437>,  <38.175549, 35.168148, 29.488256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031155, 34.988602, 29.555437>,  <37.790497, 34.689358, 29.667404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031155, 34.988602, 29.555437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139118, -0.443227, -0.885548,
		-0.786553, 0.493846, -0.370742,
		0.601648, 0.748108, -0.279919,
		38.211651, 35.213036, 29.471462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784431, 34.654785, 29.005901>,  <37.790497, 34.689358, 29.667404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784431, 34.654785, 29.005901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100784, 34.894829, 29.053864>,  <38.290596, 35.038853, 29.082642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100784, 34.894829, 29.053864>,  <37.784431, 34.654785, 29.005901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100784, 34.894829, 29.053864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364562, -0.304640, -0.879937,
		-0.491527, 0.739640, -0.459710,
		0.790883, 0.600106, 0.119907,
		38.338051, 35.074860, 29.089836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838245, 35.000385, 28.213112>,  <37.784431, 34.654785, 29.005901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838245, 35.000385, 28.213112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175625, 35.013058, 28.427620>,  <38.378052, 35.020660, 28.556324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175625, 35.013058, 28.427620>,  <37.838245, 35.000385, 28.213112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175625, 35.013058, 28.427620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520999, -0.291590, -0.802206,
		0.130953, 0.956019, -0.262450,
		0.843452, 0.031685, 0.536269,
		38.428661, 35.022564, 28.588501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347721, 35.402176, 27.762466>,  <37.838245, 35.000385, 28.213112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347721, 35.402176, 27.762466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579090, 35.225418, 28.036739>,  <38.717911, 35.119362, 28.201303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579090, 35.225418, 28.036739>,  <38.347721, 35.402176, 27.762466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579090, 35.225418, 28.036739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691779, -0.179719, -0.699388,
		0.432285, 0.878880, 0.201740,
		0.578421, -0.441895, 0.685680,
		38.752617, 35.092850, 28.242443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984512, 35.815659, 27.772093>,  <38.347721, 35.402176, 27.762466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984512, 35.815659, 27.772093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987034, 35.429173, 27.875156>,  <38.988548, 35.197281, 27.936995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987034, 35.429173, 27.875156>,  <38.984512, 35.815659, 27.772093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987034, 35.429173, 27.875156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598712, -0.202728, -0.774884,
		0.800939, 0.159150, 0.577207,
		0.006307, -0.966216, 0.257658,
		38.988926, 35.139309, 27.952454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730354, 35.663185, 27.793438>,  <38.984512, 35.815659, 27.772093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730354, 35.663185, 27.793438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561718, 35.301178, 27.770815>,  <39.460537, 35.083973, 27.757240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561718, 35.301178, 27.770815>,  <39.730354, 35.663185, 27.793438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561718, 35.301178, 27.770815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582105, -0.222285, -0.782140,
		0.695281, -0.362666, 0.620531,
		-0.421590, -0.905021, -0.056559,
		39.435242, 35.029671, 27.753847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282761, 35.099014, 27.713657>,  <39.730354, 35.663185, 27.793438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282761, 35.099014, 27.713657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939800, 34.954556, 27.566992>,  <39.734024, 34.867882, 27.478992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939800, 34.954556, 27.566992>,  <40.282761, 35.099014, 27.713657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939800, 34.954556, 27.566992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457112, -0.207045, -0.864975,
		0.236467, -0.909233, 0.342604,
		-0.857398, -0.361147, -0.366662,
		39.682579, 34.846210, 27.456993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536354, 34.547020, 27.365498>,  <40.282761, 35.099014, 27.713657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536354, 34.547020, 27.365498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163471, 34.593552, 27.228407>,  <39.939743, 34.621471, 27.146152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163471, 34.593552, 27.228407>,  <40.536354, 34.547020, 27.365498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163471, 34.593552, 27.228407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291361, -0.320562, -0.901304,
		-0.214714, -0.940057, 0.264935,
		-0.932206, 0.116331, -0.342725,
		39.883808, 34.628452, 27.125589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372196, 33.878235, 26.900839>,  <40.536354, 34.547020, 27.365498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372196, 33.878235, 26.900839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108536, 34.158966, 26.792799>,  <39.950340, 34.327404, 26.727976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108536, 34.158966, 26.792799>,  <40.372196, 33.878235, 26.900839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108536, 34.158966, 26.792799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057678, -0.310930, -0.948681,
		-0.749795, -0.640904, 0.164470,
		-0.659152, 0.701830, -0.270100,
		39.910789, 34.369514, 26.711769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766857, 33.539288, 26.604630>,  <40.372196, 33.878235, 26.900839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766857, 33.539288, 26.604630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741539, 33.906235, 26.447437>,  <39.726349, 34.126404, 26.353121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741539, 33.906235, 26.447437>,  <39.766857, 33.539288, 26.604630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741539, 33.906235, 26.447437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278276, -0.394377, -0.875802,
		-0.958414, 0.053925, 0.280242,
		-0.063293, 0.917365, -0.392982,
		39.722549, 34.181446, 26.329542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157482, 33.537033, 26.171120>,  <39.766857, 33.539288, 26.604630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157482, 33.537033, 26.171120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375313, 33.843231, 26.034031>,  <39.506012, 34.026951, 25.951778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375313, 33.843231, 26.034031>,  <39.157482, 33.537033, 26.171120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375313, 33.843231, 26.034031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382424, -0.137048, -0.913767,
		-0.746454, 0.628677, 0.218112,
		0.544572, 0.765496, -0.342721,
		39.538685, 34.072880, 25.931215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722290, 33.856060, 25.721531>,  <39.157482, 33.537033, 26.171120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722290, 33.856060, 25.721531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082306, 33.982571, 25.601595>,  <39.298313, 34.058475, 25.529634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082306, 33.982571, 25.601595>,  <38.722290, 33.856060, 25.721531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082306, 33.982571, 25.601595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246315, -0.198410, -0.948663,
		-0.359530, 0.927687, -0.100673,
		0.900037, 0.316275, -0.299838,
		39.352318, 34.077454, 25.511644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594044, 34.259018, 25.176897>,  <38.722290, 33.856060, 25.721531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594044, 34.259018, 25.176897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976974, 34.160202, 25.116899>,  <39.206734, 34.100910, 25.080900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976974, 34.160202, 25.116899>,  <38.594044, 34.259018, 25.176897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976974, 34.160202, 25.116899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229274, -0.333177, -0.914564,
		0.175962, 0.909924, -0.375599,
		0.957325, -0.247044, -0.149996,
		39.264172, 34.086090, 25.071901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717247, 34.312660, 24.498053>,  <38.594044, 34.259018, 25.176897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717247, 34.312660, 24.498053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019768, 34.077534, 24.612930>,  <39.201279, 33.936459, 24.681858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019768, 34.077534, 24.612930>,  <38.717247, 34.312660, 24.498053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019768, 34.077534, 24.612930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088724, -0.527088, -0.845167,
		0.648178, 0.613720, -0.450791,
		0.756302, -0.587814, 0.287195,
		39.246658, 33.901188, 24.699089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047375, 34.076687, 23.851841>,  <38.717247, 34.312660, 24.498053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047375, 34.076687, 23.851841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222656, 33.811867, 24.095043>,  <39.327827, 33.652977, 24.240965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222656, 33.811867, 24.095043>,  <39.047375, 34.076687, 23.851841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222656, 33.811867, 24.095043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070086, -0.649182, -0.757397,
		0.896138, 0.374509, -0.238075,
		0.438206, -0.662047, 0.608004,
		39.354118, 33.613255, 24.277445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601532, 33.800381, 23.449448>,  <39.047375, 34.076687, 23.851841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601532, 33.800381, 23.449448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531391, 33.540405, 23.745241>,  <39.489307, 33.384422, 23.922716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531391, 33.540405, 23.745241>,  <39.601532, 33.800381, 23.449448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531391, 33.540405, 23.745241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163518, -0.759915, -0.629120,
		0.970831, 0.010599, 0.239531,
		-0.175355, -0.649937, 0.739482,
		39.478783, 33.345425, 23.967085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174057, 33.308784, 23.398325>,  <39.601532, 33.800381, 23.449448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174057, 33.308784, 23.398325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899971, 33.100155, 23.601673>,  <39.735519, 32.974976, 23.723682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899971, 33.100155, 23.601673>,  <40.174057, 33.308784, 23.398325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899971, 33.100155, 23.601673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212273, -0.810694, -0.545633,
		0.696722, -0.265962, 0.666215,
		-0.685214, -0.521574, 0.508372,
		39.694408, 32.943684, 23.754185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517109, 32.724941, 23.682293>,  <40.174057, 33.308784, 23.398325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517109, 32.724941, 23.682293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128448, 32.631310, 23.695568>,  <39.895252, 32.575130, 23.703533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128448, 32.631310, 23.695568>,  <40.517109, 32.724941, 23.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128448, 32.631310, 23.695568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204155, -0.901519, -0.381555,
		0.119237, -0.363962, 0.923750,
		-0.971650, -0.234084, 0.033190,
		39.836952, 32.561085, 23.705524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365173, 32.068439, 24.129810>,  <40.517109, 32.724941, 23.682293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365173, 32.068439, 24.129810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083057, 32.123116, 23.851564>,  <39.913788, 32.155922, 23.684618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083057, 32.123116, 23.851564>,  <40.365173, 32.068439, 24.129810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083057, 32.123116, 23.851564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307969, -0.824729, -0.474318,
		-0.638527, -0.548761, 0.539579,
		-0.705293, 0.136691, -0.695613,
		39.871468, 32.164124, 23.642881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985054, 31.468380, 24.118212>,  <40.365173, 32.068439, 24.129810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985054, 31.468380, 24.118212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941025, 31.635836, 23.757629>,  <39.914608, 31.736309, 23.541281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941025, 31.635836, 23.757629>,  <39.985054, 31.468380, 24.118212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941025, 31.635836, 23.757629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322300, -0.842925, -0.430814,
		-0.940216, -0.337961, -0.042143,
		-0.110075, 0.418641, -0.901456,
		39.908001, 31.761429, 23.487192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752323, 30.954868, 23.724072>,  <39.985054, 31.468380, 24.118212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752323, 30.954868, 23.724072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805515, 31.215376, 23.425230>,  <39.837429, 31.371681, 23.245926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805515, 31.215376, 23.425230>,  <39.752323, 30.954868, 23.724072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805515, 31.215376, 23.425230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285364, -0.747037, -0.600419,
		-0.949149, -0.133353, -0.285190,
		0.132980, 0.651270, -0.747103,
		39.845409, 31.410757, 23.201099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546921, 30.577974, 23.129345>,  <39.752323, 30.954868, 23.724072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546921, 30.577974, 23.129345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792118, 30.854925, 22.977108>,  <39.939236, 31.021095, 22.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792118, 30.854925, 22.977108>,  <39.546921, 30.577974, 23.129345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792118, 30.854925, 22.977108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362691, -0.674553, -0.642987,
		-0.701919, 0.256111, -0.664618,
		0.612996, 0.692376, -0.380593,
		39.976017, 31.062637, 22.862930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520020, 30.428087, 22.432558>,  <39.546921, 30.577974, 23.129345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520020, 30.428087, 22.432558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826233, 30.685440, 22.434340>,  <40.009960, 30.839851, 22.435410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826233, 30.685440, 22.434340>,  <39.520020, 30.428087, 22.432558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826233, 30.685440, 22.434340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374588, -0.440057, -0.816109,
		-0.523108, 0.626427, -0.577882,
		0.765534, 0.643381, 0.004455,
		40.055893, 30.878454, 22.435677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579533, 30.744406, 21.826967>,  <39.520020, 30.428087, 22.432558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579533, 30.744406, 21.826967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953144, 30.747135, 21.969816>,  <40.177311, 30.748774, 22.055527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953144, 30.747135, 21.969816>,  <39.579533, 30.744406, 21.826967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953144, 30.747135, 21.969816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342312, -0.302645, -0.889510,
		0.102011, 0.953079, -0.285017,
		0.934032, 0.006825, 0.357124,
		40.233353, 30.749184, 22.076954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014431, 30.864380, 21.259371>,  <39.579533, 30.744406, 21.826967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014431, 30.864380, 21.259371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269093, 30.723610, 21.533834>,  <40.421890, 30.639149, 21.698513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269093, 30.723610, 21.533834>,  <40.014431, 30.864380, 21.259371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269093, 30.723610, 21.533834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509938, -0.475343, -0.716947,
		0.578473, 0.806349, -0.123170,
		0.636657, -0.351925, 0.686161,
		40.460091, 30.618032, 21.739683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735550, 30.921783, 20.968649>,  <40.014431, 30.864380, 21.259371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735550, 30.921783, 20.968649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780865, 30.635712, 21.244530>,  <40.808052, 30.464069, 21.410057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780865, 30.635712, 21.244530>,  <40.735550, 30.921783, 20.968649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780865, 30.635712, 21.244530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415700, -0.596373, -0.686682,
		0.902419, 0.364500, 0.229738,
		0.113286, -0.715177, 0.689701,
		40.814850, 30.421158, 21.451441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219219, 30.476524, 20.698492>,  <40.735550, 30.921783, 20.968649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219219, 30.476524, 20.698492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123447, 30.240801, 21.007137>,  <41.065983, 30.099367, 21.192326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123447, 30.240801, 21.007137>,  <41.219219, 30.476524, 20.698492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123447, 30.240801, 21.007137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458531, -0.769151, -0.445147,
		0.855817, 0.247227, 0.454374,
		-0.239430, -0.589309, 0.771614,
		41.051617, 30.064009, 21.238621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841217, 30.259066, 20.976732>,  <41.219219, 30.476524, 20.698492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841217, 30.259066, 20.976732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553799, 30.006277, 21.092873>,  <41.381348, 29.854605, 21.162558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553799, 30.006277, 21.092873>,  <41.841217, 30.259066, 20.976732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553799, 30.006277, 21.092873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366797, -0.699061, -0.613819,
		0.590888, -0.334558, 0.734113,
		-0.718548, -0.631969, 0.290352,
		41.338234, 29.816687, 21.179977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144337, 29.613327, 21.333155>,  <41.841217, 30.259066, 20.976732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144337, 29.613327, 21.333155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789402, 29.534597, 21.166355>,  <41.576439, 29.487360, 21.066277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789402, 29.534597, 21.166355>,  <42.144337, 29.613327, 21.333155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789402, 29.534597, 21.166355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406527, -0.760722, -0.506001,
		-0.217626, -0.618516, 0.755034,
		-0.887341, -0.196823, -0.416997,
		41.523201, 29.475550, 21.041256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057964, 28.970758, 21.422968>,  <42.144337, 29.613327, 21.333155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057964, 28.970758, 21.422968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808933, 29.055952, 21.121761>,  <41.659515, 29.107069, 20.941038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808933, 29.055952, 21.121761>,  <42.057964, 28.970758, 21.422968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808933, 29.055952, 21.121761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406471, -0.734253, -0.543740,
		-0.668713, -0.644600, 0.370558,
		-0.622579, 0.212985, -0.753016,
		41.622162, 29.119848, 20.895857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787346, 28.218800, 21.191483>,  <42.057964, 28.970758, 21.422968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787346, 28.218800, 21.191483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151382, 28.172501, 21.350647>,  <42.369804, 28.144722, 21.446146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151382, 28.172501, 21.350647>,  <41.787346, 28.218800, 21.191483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151382, 28.172501, 21.350647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364544, 0.233013, 0.901561,
		-0.197070, -0.965561, 0.169869,
		0.910094, -0.115746, 0.397910,
		42.424412, 28.137777, 21.470020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694984, 27.974869, 21.796268>,  <41.787346, 28.218800, 21.191483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694984, 27.974869, 21.796268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074478, 28.094666, 21.836687>,  <42.302174, 28.166544, 21.860937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074478, 28.094666, 21.836687>,  <41.694984, 27.974869, 21.796268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074478, 28.094666, 21.836687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182509, 0.258063, 0.948733,
		0.258063, -0.918536, 0.299493,
		-0.948733, -0.299493, -0.101045,
		42.359097, 28.184513, 21.867001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966953, 27.780148, 22.499371>,  <41.694984, 27.974869, 21.796268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966953, 27.780148, 22.499371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238850, 28.045195, 22.373583>,  <42.401985, 28.204224, 22.298111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238850, 28.045195, 22.373583>,  <41.966953, 27.780148, 22.499371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238850, 28.045195, 22.373583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101646, 0.339507, 0.935095,
		0.726377, -0.667585, 0.163424,
		0.679738, 0.662620, -0.314468,
		42.442772, 28.243980, 22.279243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587795, 27.786810, 23.038671>,  <41.966953, 27.780148, 22.499371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587795, 27.786810, 23.038671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582092, 28.131050, 22.835041>,  <42.578671, 28.337595, 22.712862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582092, 28.131050, 22.835041>,  <42.587795, 27.786810, 23.038671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582092, 28.131050, 22.835041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005057, 0.509186, 0.860642,
		0.999886, 0.009694, -0.011610,
		-0.014254, 0.860602, -0.509078,
		42.577816, 28.389231, 22.682318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898861, 28.191324, 23.461411>,  <42.587795, 27.786810, 23.038671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898861, 28.191324, 23.461411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756680, 28.467182, 23.209049>,  <42.671371, 28.632696, 23.057632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756680, 28.467182, 23.209049>,  <42.898861, 28.191324, 23.461411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756680, 28.467182, 23.209049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098024, 0.643759, 0.758924,
		0.929538, 0.331608, -0.161227,
		-0.355457, 0.689645, -0.630904,
		42.650043, 28.674076, 23.019777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289833, 28.701742, 23.523706>,  <42.898861, 28.191324, 23.461411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289833, 28.701742, 23.523706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936813, 28.842844, 23.399343>,  <42.725002, 28.927505, 23.324726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936813, 28.842844, 23.399343>,  <43.289833, 28.701742, 23.523706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936813, 28.842844, 23.399343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065730, 0.562159, 0.824413,
		0.465594, 0.748024, -0.472949,
		-0.882554, 0.352755, -0.310906,
		42.672047, 28.948671, 23.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295055, 29.423391, 23.646435>,  <43.289833, 28.701742, 23.523706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295055, 29.423391, 23.646435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905182, 29.359299, 23.584055>,  <42.671257, 29.320843, 23.546627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905182, 29.359299, 23.584055>,  <43.295055, 29.423391, 23.646435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905182, 29.359299, 23.584055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218915, 0.541934, 0.811409,
		-0.045501, 0.825005, -0.563291,
		-0.974682, -0.160233, -0.155947,
		42.612778, 29.311230, 23.537271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021366, 29.960432, 23.836790>,  <43.295055, 29.423391, 23.646435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021366, 29.960432, 23.836790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683224, 29.747301, 23.821503>,  <42.480339, 29.619423, 23.812330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683224, 29.747301, 23.821503>,  <43.021366, 29.960432, 23.836790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683224, 29.747301, 23.821503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329379, 0.463580, 0.822558,
		-0.420566, 0.707946, -0.567395,
		-0.845360, -0.532828, -0.038217,
		42.429615, 29.587452, 23.810038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416904, 30.444349, 23.862770>,  <43.021366, 29.960432, 23.836790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416904, 30.444349, 23.862770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304398, 30.084484, 23.996334>,  <42.236893, 29.868565, 24.076473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304398, 30.084484, 23.996334>,  <42.416904, 30.444349, 23.862770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304398, 30.084484, 23.996334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455007, 0.431388, 0.779021,
		-0.844899, 0.067186, -0.530689,
		-0.281272, -0.899662, 0.333909,
		42.220016, 29.814585, 24.096506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835999, 30.688389, 24.163467>,  <42.416904, 30.444349, 23.862770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835999, 30.688389, 24.163467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914585, 30.321558, 24.302244>,  <41.961735, 30.101460, 24.385511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914585, 30.321558, 24.302244>,  <41.835999, 30.688389, 24.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914585, 30.321558, 24.302244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456561, 0.227577, 0.860093,
		-0.867729, -0.327378, -0.373992,
		0.196463, -0.917078, 0.346943,
		41.973526, 30.046434, 24.406326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165836, 30.464701, 24.492947>,  <41.835999, 30.688389, 24.163467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165836, 30.464701, 24.492947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456989, 30.253067, 24.667419>,  <41.631680, 30.126087, 24.772102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456989, 30.253067, 24.667419>,  <41.165836, 30.464701, 24.492947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456989, 30.253067, 24.667419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371203, 0.230804, 0.899410,
		-0.576537, -0.816578, -0.028400,
		0.727883, -0.529085, 0.436182,
		41.675354, 30.094341, 24.798275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790215, 30.027800, 25.070717>,  <41.165836, 30.464701, 24.492947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790215, 30.027800, 25.070717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181137, 30.033533, 25.155260>,  <41.415691, 30.036974, 25.205986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181137, 30.033533, 25.155260>,  <40.790215, 30.027800, 25.070717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181137, 30.033533, 25.155260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211305, 0.137205, 0.967742,
		-0.015126, -0.990439, 0.137121,
		0.977303, 0.014336, 0.211360,
		41.474327, 30.037834, 25.218668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857513, 29.615669, 25.687456>,  <40.790215, 30.027800, 25.070717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857513, 29.615669, 25.687456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170444, 29.864790, 25.690893>,  <41.358204, 30.014263, 25.692955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170444, 29.864790, 25.690893>,  <40.857513, 29.615669, 25.687456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170444, 29.864790, 25.690893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063390, 0.065890, 0.995811,
		0.619628, -0.779599, 0.091027,
		0.782332, 0.622803, 0.008592,
		41.405144, 30.051630, 25.693470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288059, 29.378765, 26.251619>,  <40.857513, 29.615669, 25.687456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288059, 29.378765, 26.251619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391758, 29.756592, 26.171030>,  <41.453976, 29.983288, 26.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391758, 29.756592, 26.171030>,  <41.288059, 29.378765, 26.251619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391758, 29.756592, 26.171030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021990, 0.214323, 0.976515,
		0.965562, -0.248724, 0.076333,
		0.259242, 0.944564, -0.201473,
		41.469532, 30.039961, 26.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613255, 29.680273, 26.821272>,  <41.288059, 29.378765, 26.251619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613255, 29.680273, 26.821272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594250, 30.039091, 26.645523>,  <41.582848, 30.254383, 26.540073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594250, 30.039091, 26.645523>,  <41.613255, 29.680273, 26.821272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594250, 30.039091, 26.645523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021587, 0.438845, 0.898304,
		0.998637, 0.052168, -0.001488,
		-0.047516, 0.897047, -0.439373,
		41.579994, 30.308205, 26.513712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968544, 30.109215, 27.225843>,  <41.613255, 29.680273, 26.821272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968544, 30.109215, 27.225843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731354, 30.361675, 27.025831>,  <41.589039, 30.513151, 26.905823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731354, 30.361675, 27.025831>,  <41.968544, 30.109215, 27.225843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731354, 30.361675, 27.025831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035977, 0.599599, 0.799491,
		0.804419, 0.492066, -0.332839,
		-0.592972, 0.631151, -0.500033,
		41.553463, 30.551020, 26.875822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145290, 30.726921, 27.494967>,  <41.968544, 30.109215, 27.225843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145290, 30.726921, 27.494967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789856, 30.773294, 27.317440>,  <41.576595, 30.801119, 27.210924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789856, 30.773294, 27.317440>,  <42.145290, 30.726921, 27.494967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789856, 30.773294, 27.317440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267289, 0.655443, 0.706365,
		0.372789, 0.746293, -0.551429,
		-0.888586, 0.115935, -0.443818,
		41.523281, 30.808075, 27.184294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952538, 31.288649, 27.787901>,  <42.145290, 30.726921, 27.494967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952538, 31.288649, 27.787901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607697, 31.142002, 27.647974>,  <41.400791, 31.054014, 27.564018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607697, 31.142002, 27.647974>,  <41.952538, 31.288649, 27.787901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607697, 31.142002, 27.647974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506300, 0.594527, 0.624658,
		-0.021034, 0.715632, -0.698161,
		-0.862101, -0.366618, -0.349819,
		41.349068, 31.032017, 27.543028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534485, 31.830503, 27.541285>,  <41.952538, 31.288649, 27.787901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534485, 31.830503, 27.541285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258812, 31.547304, 27.602949>,  <41.093407, 31.377384, 27.639948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258812, 31.547304, 27.602949>,  <41.534485, 31.830503, 27.541285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258812, 31.547304, 27.602949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481471, 0.606459, 0.632766,
		-0.541488, 0.361870, -0.758842,
		-0.689185, -0.707996, 0.154160,
		41.052055, 31.334906, 27.649197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904530, 32.097885, 27.253613>,  <41.534485, 31.830503, 27.541285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904530, 32.097885, 27.253613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825142, 31.829927, 27.539787>,  <40.777508, 31.669151, 27.711493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825142, 31.829927, 27.539787>,  <40.904530, 32.097885, 27.253613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825142, 31.829927, 27.539787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525508, 0.688895, 0.499265,
		-0.827316, -0.276879, -0.488760,
		-0.198468, -0.669897, 0.715436,
		40.765602, 31.628958, 27.754417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294292, 32.334641, 27.576817>,  <40.904530, 32.097885, 27.253613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294292, 32.334641, 27.576817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411652, 32.065994, 27.848948>,  <40.482067, 31.904806, 28.012226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411652, 32.065994, 27.848948>,  <40.294292, 32.334641, 27.576817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411652, 32.065994, 27.848948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227031, 0.642338, 0.732024,
		-0.928641, -0.369231, 0.035984,
		0.293400, -0.671618, 0.680328,
		40.499672, 31.864510, 28.053045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741638, 32.050949, 27.954355>,  <40.294292, 32.334641, 27.576817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741638, 32.050949, 27.954355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069595, 32.021702, 28.181486>,  <40.266369, 32.004154, 28.317764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069595, 32.021702, 28.181486>,  <39.741638, 32.050949, 27.954355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069595, 32.021702, 28.181486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472137, 0.474629, 0.742842,
		-0.323826, -0.877143, 0.354622,
		0.819893, -0.073121, 0.567829,
		40.315563, 31.999765, 28.351835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426334, 32.141388, 28.612688>,  <39.741638, 32.050949, 27.954355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426334, 32.141388, 28.612688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816853, 32.151684, 28.698656>,  <40.051163, 32.157860, 28.750237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816853, 32.151684, 28.698656>,  <39.426334, 32.141388, 28.612688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816853, 32.151684, 28.698656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192423, 0.557908, 0.807287,
		-0.099126, -0.829504, 0.549634,
		0.976292, 0.025740, 0.214919,
		40.109741, 32.159405, 28.763132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483940, 31.977913, 29.316847>,  <39.426334, 32.141388, 28.612688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483940, 31.977913, 29.316847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791519, 32.213749, 29.217978>,  <39.976067, 32.355251, 29.158655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791519, 32.213749, 29.217978>,  <39.483940, 31.977913, 29.316847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791519, 32.213749, 29.217978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240963, 0.625402, 0.742166,
		0.592154, -0.511132, 0.622975,
		0.768954, 0.589590, -0.247171,
		40.022205, 32.390625, 29.143826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650974, 32.328423, 29.935879>,  <39.483940, 31.977913, 29.316847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650974, 32.328423, 29.935879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880917, 32.526627, 29.675415>,  <40.018883, 32.645550, 29.519136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880917, 32.526627, 29.675415>,  <39.650974, 32.328423, 29.935879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880917, 32.526627, 29.675415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087222, 0.754151, 0.650883,
		0.813593, -0.430959, 0.390308,
		0.574855, 0.495511, -0.651162,
		40.053371, 32.675282, 29.480066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248405, 32.467255, 30.339695>,  <39.650974, 32.328423, 29.935879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248405, 32.467255, 30.339695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218346, 32.738899, 30.047625>,  <40.200310, 32.901886, 29.872381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218346, 32.738899, 30.047625>,  <40.248405, 32.467255, 30.339695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218346, 32.738899, 30.047625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107707, 0.733492, 0.671110,
		0.991339, -0.028214, -0.128264,
		-0.075146, 0.679112, -0.730178,
		40.195801, 32.942635, 29.828571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801991, 33.020485, 30.459312>,  <40.248405, 32.467255, 30.339695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801991, 33.020485, 30.459312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505936, 33.163624, 30.231577>,  <40.328304, 33.249508, 30.094936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505936, 33.163624, 30.231577>,  <40.801991, 33.020485, 30.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505936, 33.163624, 30.231577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069477, 0.882815, 0.464555,
		0.668860, 0.304277, -0.678264,
		-0.740135, 0.357846, -0.569339,
		40.283894, 33.270977, 30.060776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073708, 33.726414, 30.241018>,  <40.801991, 33.020485, 30.459312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073708, 33.726414, 30.241018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674191, 33.708504, 30.233009>,  <40.434479, 33.697758, 30.228203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674191, 33.708504, 30.233009>,  <41.073708, 33.726414, 30.241018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674191, 33.708504, 30.233009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048745, 0.860932, 0.506379,
		-0.005433, 0.506746, -0.862079,
		-0.998796, -0.044773, -0.020024,
		40.374550, 33.695072, 30.227003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003723, 34.448566, 30.171907>,  <41.073708, 33.726414, 30.241018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003723, 34.448566, 30.171907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667030, 34.287659, 30.315943>,  <40.465015, 34.191116, 30.402365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667030, 34.287659, 30.315943>,  <41.003723, 34.448566, 30.171907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667030, 34.287659, 30.315943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219836, 0.864546, 0.451922,
		-0.493106, 0.301238, -0.816151,
		-0.841736, -0.402265, 0.360089,
		40.414509, 34.166981, 30.423969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515007, 34.992893, 30.173822>,  <41.003723, 34.448566, 30.171907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515007, 34.992893, 30.173822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353035, 34.716793, 30.413683>,  <40.255852, 34.551132, 30.557600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353035, 34.716793, 30.413683>,  <40.515007, 34.992893, 30.173822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353035, 34.716793, 30.413683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118591, 0.689935, 0.714091,
		-0.906624, 0.218044, -0.361233,
		-0.404931, -0.690252, 0.599653,
		40.231556, 34.509716, 30.593578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913418, 35.349148, 30.552767>,  <40.515007, 34.992893, 30.173822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913418, 35.349148, 30.552767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999603, 35.030636, 30.778868>,  <40.051315, 34.839527, 30.914528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999603, 35.030636, 30.778868>,  <39.913418, 35.349148, 30.552767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999603, 35.030636, 30.778868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007635, 0.577459, 0.816384,
		-0.976482, -0.180216, 0.118342,
		0.215463, -0.796281, 0.565254,
		40.064243, 34.791752, 30.948444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549622, 35.514877, 31.182945>,  <39.913418, 35.349148, 30.552767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549622, 35.514877, 31.182945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804405, 35.222805, 31.281832>,  <39.957275, 35.047562, 31.341164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804405, 35.222805, 31.281832>,  <39.549622, 35.514877, 31.182945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804405, 35.222805, 31.281832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220968, 0.480166, 0.848890,
		-0.738549, -0.486082, 0.467193,
		0.636960, -0.730182, 0.247218,
		39.995495, 35.003750, 31.355997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476192, 35.369282, 31.990681>,  <39.549622, 35.514877, 31.182945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476192, 35.369282, 31.990681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829678, 35.239025, 31.856215>,  <40.041767, 35.160870, 31.775536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829678, 35.239025, 31.856215>,  <39.476192, 35.369282, 31.990681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829678, 35.239025, 31.856215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457491, 0.449466, 0.767257,
		-0.098757, -0.831828, 0.546178,
		0.883714, -0.325643, -0.336166,
		40.094791, 35.141331, 31.755365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679173, 35.016197, 32.541676>,  <39.476192, 35.369282, 31.990681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679173, 35.016197, 32.541676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985394, 35.118622, 32.305588>,  <40.169125, 35.180077, 32.163933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985394, 35.118622, 32.305588>,  <39.679173, 35.016197, 32.541676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985394, 35.118622, 32.305588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491178, 0.359906, 0.793229,
		0.415546, -0.897160, 0.149750,
		0.765549, 0.256070, -0.590222,
		40.215057, 35.195442, 32.128521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224216, 34.766727, 32.990322>,  <39.679173, 35.016197, 32.541676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224216, 34.766727, 32.990322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372875, 35.049236, 32.749302>,  <40.462070, 35.218742, 32.604691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372875, 35.049236, 32.749302>,  <40.224216, 34.766727, 32.990322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372875, 35.049236, 32.749302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565004, 0.342931, 0.750446,
		0.736650, -0.619340, -0.271597,
		0.371642, 0.706269, -0.602550,
		40.484367, 35.261116, 32.568539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964279, 34.748901, 33.062588>,  <40.224216, 34.766727, 32.990322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964279, 34.748901, 33.062588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849674, 35.111347, 32.938087>,  <40.780910, 35.328815, 32.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849674, 35.111347, 32.938087>,  <40.964279, 34.748901, 33.062588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849674, 35.111347, 32.938087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571261, 0.422370, 0.703751,
		0.769139, 0.023826, -0.638638,
		-0.286509, 0.906110, -0.311250,
		40.763721, 35.383179, 32.844711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566517, 35.093468, 33.202114>,  <40.964279, 34.748901, 33.062588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566517, 35.093468, 33.202114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312908, 35.393665, 33.127518>,  <41.160744, 35.573784, 33.082760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312908, 35.393665, 33.127518>,  <41.566517, 35.093468, 33.202114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312908, 35.393665, 33.127518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386184, 0.516212, 0.764452,
		0.669983, 0.412660, -0.617118,
		-0.634022, 0.750491, -0.186491,
		41.122700, 35.618813, 33.071571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949692, 35.798481, 33.196636>,  <41.566517, 35.093468, 33.202114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949692, 35.798481, 33.196636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563744, 35.867519, 33.275864>,  <41.332172, 35.908943, 33.323399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563744, 35.867519, 33.275864>,  <41.949692, 35.798481, 33.196636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563744, 35.867519, 33.275864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260012, 0.735245, 0.625946,
		-0.037589, 0.655457, -0.754296,
		-0.964873, 0.172597, 0.198064,
		41.274281, 35.919300, 33.335281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868252, 36.527813, 33.020256>,  <41.949692, 35.798481, 33.196636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868252, 36.527813, 33.020256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586735, 36.402340, 33.275215>,  <41.417824, 36.327057, 33.428192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586735, 36.402340, 33.275215>,  <41.868252, 36.527813, 33.020256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586735, 36.402340, 33.275215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208533, 0.766488, 0.607462,
		-0.679106, 0.560448, -0.474039,
		-0.703796, -0.313679, 0.637398,
		41.375595, 36.308235, 33.466434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592354, 37.143650, 33.302589>,  <41.868252, 36.527813, 33.020256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592354, 37.143650, 33.302589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459522, 36.872555, 33.565010>,  <41.379822, 36.709900, 33.722462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459522, 36.872555, 33.565010>,  <41.592354, 37.143650, 33.302589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459522, 36.872555, 33.565010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210444, 0.624754, 0.751928,
		-0.919476, 0.387761, -0.064843,
		-0.332079, -0.677735, 0.656048,
		41.359898, 36.669235, 33.761826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105904, 37.518272, 33.732967>,  <41.592354, 37.143650, 33.302589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105904, 37.518272, 33.732967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241398, 37.211075, 33.950386>,  <41.322693, 37.026756, 34.080837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241398, 37.211075, 33.950386>,  <41.105904, 37.518272, 33.732967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241398, 37.211075, 33.950386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205323, 0.624109, 0.753877,
		-0.918206, -0.143761, 0.369094,
		0.338733, -0.767998, 0.543543,
		41.343018, 36.980675, 34.113449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731693, 37.518616, 34.372902>,  <41.105904, 37.518272, 33.732967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731693, 37.518616, 34.372902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057358, 37.296844, 34.441883>,  <41.252758, 37.163780, 34.483273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057358, 37.296844, 34.441883>,  <40.731693, 37.518616, 34.372902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057358, 37.296844, 34.441883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214247, 0.562911, 0.798266,
		-0.539660, -0.612973, 0.577088,
		0.814165, -0.554432, 0.172452,
		41.301609, 37.130516, 34.493618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742870, 37.509781, 35.010651>,  <40.731693, 37.518616, 34.372902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742870, 37.509781, 35.010651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115467, 37.405178, 34.909504>,  <41.339024, 37.342419, 34.848816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115467, 37.405178, 34.909504>,  <40.742870, 37.509781, 35.010651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115467, 37.405178, 34.909504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363635, 0.650444, 0.666852,
		-0.009907, -0.713118, 0.700974,
		0.931489, -0.261505, -0.252871,
		41.394913, 37.326725, 34.833641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984837, 37.698372, 35.565041>,  <40.742870, 37.509781, 35.010651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984837, 37.698372, 35.565041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304604, 37.652332, 35.329182>,  <41.496464, 37.624710, 35.187668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304604, 37.652332, 35.329182>,  <40.984837, 37.698372, 35.565041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304604, 37.652332, 35.329182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502721, 0.665546, 0.551652,
		0.328944, -0.737429, 0.589911,
		0.799417, -0.115098, -0.589648,
		41.544430, 37.617802, 35.152287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427353, 37.563145, 36.115875>,  <40.984837, 37.698372, 35.565041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427353, 37.563145, 36.115875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620224, 37.684433, 35.787106>,  <41.735947, 37.757206, 35.589844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620224, 37.684433, 35.787106>,  <41.427353, 37.563145, 36.115875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620224, 37.684433, 35.787106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491578, 0.682933, 0.540327,
		0.725157, -0.664575, 0.180242,
		0.482181, 0.303219, -0.821924,
		41.764877, 37.775398, 35.540527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212627, 37.536686, 36.276733>,  <41.427353, 37.563145, 36.115875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212627, 37.536686, 36.276733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155891, 37.800056, 35.981071>,  <42.121849, 37.958080, 35.803673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155891, 37.800056, 35.981071>,  <42.212627, 37.536686, 36.276733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155891, 37.800056, 35.981071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533535, 0.679812, 0.503185,
		0.833800, -0.322997, -0.447717,
		-0.141836, 0.658429, -0.739158,
		42.113342, 37.997585, 35.759323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877682, 37.867901, 36.079540>,  <42.212627, 37.536686, 36.276733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877682, 37.867901, 36.079540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619663, 38.141327, 35.942921>,  <42.464851, 38.305382, 35.860950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619663, 38.141327, 35.942921>,  <42.877682, 37.867901, 36.079540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619663, 38.141327, 35.942921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568660, 0.727978, 0.382979,
		0.510432, 0.052814, -0.858295,
		-0.645047, 0.683563, -0.341550,
		42.426147, 38.346397, 35.840454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383755, 38.426208, 35.691116>,  <42.877682, 37.867901, 36.079540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383755, 38.426208, 35.691116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029770, 38.585159, 35.788212>,  <42.817379, 38.680531, 35.846470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029770, 38.585159, 35.788212>,  <43.383755, 38.426208, 35.691116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029770, 38.585159, 35.788212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463776, 0.798955, 0.382861,
		-0.041798, 0.451396, -0.891344,
		-0.884966, 0.397381, 0.242741,
		42.764278, 38.704372, 35.861034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264767, 39.094379, 35.426647>,  <43.383755, 38.426208, 35.691116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264767, 39.094379, 35.426647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052578, 39.053329, 35.763233>,  <42.925262, 39.028702, 35.965187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052578, 39.053329, 35.763233>,  <43.264767, 39.094379, 35.426647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052578, 39.053329, 35.763233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524619, 0.739972, 0.420972,
		-0.665863, 0.664764, -0.338698,
		-0.530473, -0.102622, 0.841467,
		42.893436, 39.022541, 36.015675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906891, 39.747616, 35.573475>,  <43.264767, 39.094379, 35.426647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906891, 39.747616, 35.573475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914600, 39.568123, 35.930859>,  <42.919228, 39.460426, 36.145287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914600, 39.568123, 35.930859>,  <42.906891, 39.747616, 35.573475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914600, 39.568123, 35.930859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751337, 0.596078, 0.283169,
		-0.659638, 0.665829, 0.348640,
		0.019274, -0.448735, 0.893457,
		42.920383, 39.433502, 36.198895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878963, 40.282551, 36.117702>,  <42.906891, 39.747616, 35.573475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878963, 40.282551, 36.117702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075745, 39.960926, 36.251247>,  <43.193813, 39.767952, 36.331375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075745, 39.960926, 36.251247>,  <42.878963, 40.282551, 36.117702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075745, 39.960926, 36.251247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630040, 0.593452, 0.500864,
		-0.600856, -0.036058, 0.798544,
		0.491957, -0.804061, 0.333861,
		43.223331, 39.719707, 36.351406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599834, 39.979832, 36.739510>,  <42.878963, 40.282551, 36.117702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599834, 39.979832, 36.739510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828007, 39.712978, 36.931152>,  <42.964909, 39.552868, 37.046139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828007, 39.712978, 36.931152>,  <42.599834, 39.979832, 36.739510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828007, 39.712978, 36.931152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419323, 0.738116, 0.528539,
		-0.706242, -0.100594, 0.700788,
		0.570430, -0.667133, 0.479107,
		42.999134, 39.512840, 37.074883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666637, 40.317661, 37.397640>,  <42.599834, 39.979832, 36.739510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666637, 40.317661, 37.397640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975189, 40.080105, 37.306194>,  <43.160320, 39.937569, 37.251328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975189, 40.080105, 37.306194>,  <42.666637, 40.317661, 37.397640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975189, 40.080105, 37.306194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619808, 0.619686, 0.481485,
		-0.144279, -0.513106, 0.846113,
		0.771377, -0.593895, -0.228619,
		43.206604, 39.901936, 37.237610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039703, 40.234180, 37.974579>,  <42.666637, 40.317661, 37.397640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039703, 40.234180, 37.974579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308056, 40.172424, 37.684452>,  <43.469067, 40.135372, 37.510376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308056, 40.172424, 37.684452>,  <43.039703, 40.234180, 37.974579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308056, 40.172424, 37.684452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455935, 0.857253, 0.239248,
		0.584840, -0.491204, 0.645508,
		0.670884, -0.154388, -0.725313,
		43.509319, 40.126106, 37.466858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787624, 40.216499, 38.184052>,  <43.039703, 40.234180, 37.974579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787624, 40.216499, 38.184052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777699, 40.354145, 37.808613>,  <43.771744, 40.436733, 37.583351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777699, 40.354145, 37.808613>,  <43.787624, 40.216499, 38.184052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777699, 40.354145, 37.808613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431762, 0.850495, 0.300401,
		0.901646, -0.397795, -0.169685,
		-0.024819, 0.344119, -0.938598,
		43.770252, 40.457382, 37.527035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278034, 40.714039, 38.249077>,  <43.787624, 40.216499, 38.184052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278034, 40.714039, 38.249077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144855, 40.768471, 37.875847>,  <44.064949, 40.801128, 37.651909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144855, 40.768471, 37.875847>,  <44.278034, 40.714039, 38.249077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144855, 40.768471, 37.875847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452243, 0.891342, -0.031385,
		0.827418, -0.432426, -0.358312,
		-0.332950, 0.136075, -0.933074,
		44.044971, 40.809292, 37.595924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774975, 40.764801, 37.834808>,  <44.278034, 40.714039, 38.249077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774975, 40.764801, 37.834808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463013, 40.981102, 37.708736>,  <44.275837, 41.110882, 37.633095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463013, 40.981102, 37.708736>,  <44.774975, 40.764801, 37.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463013, 40.981102, 37.708736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553630, 0.830902, 0.055643,
		0.291971, -0.131096, -0.947400,
		-0.779902, 0.540756, -0.315178,
		44.229042, 41.143330, 37.614182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938404, 41.200703, 37.356903>,  <44.774975, 40.764801, 37.834808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938404, 41.200703, 37.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601219, 41.375809, 37.481976>,  <44.398907, 41.480873, 37.557018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601219, 41.375809, 37.481976>,  <44.938404, 41.200703, 37.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601219, 41.375809, 37.481976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500562, 0.851206, 0.157753,
		-0.197097, 0.289497, -0.936666,
		-0.842965, 0.437767, 0.312682,
		44.348331, 41.507137, 37.575779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994560, 41.892120, 37.040413>,  <44.938404, 41.200703, 37.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994560, 41.892120, 37.040413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721382, 41.904358, 37.332344>,  <44.557476, 41.911701, 37.507504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721382, 41.904358, 37.332344>,  <44.994560, 41.892120, 37.040413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721382, 41.904358, 37.332344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360822, 0.882851, 0.300633,
		-0.635135, 0.468655, -0.613975,
		-0.682942, 0.030593, 0.729831,
		44.516499, 41.913536, 37.551292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769745, 42.510387, 36.935017>,  <44.994560, 41.892120, 37.040413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769745, 42.510387, 36.935017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688213, 42.391483, 37.308132>,  <44.639294, 42.320141, 37.532001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688213, 42.391483, 37.308132>,  <44.769745, 42.510387, 36.935017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688213, 42.391483, 37.308132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447313, 0.819242, 0.358823,
		-0.870842, 0.490385, -0.034015,
		-0.203828, -0.297262, 0.932786,
		44.627064, 42.302303, 37.587967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478508, 43.140732, 37.269318>,  <44.769745, 42.510387, 36.935017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478508, 43.140732, 37.269318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636246, 42.865501, 37.512974>,  <44.730888, 42.700363, 37.659168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636246, 42.865501, 37.512974>,  <44.478508, 43.140732, 37.269318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636246, 42.865501, 37.512974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455972, 0.722008, 0.520379,
		-0.797860, 0.072541, 0.598462,
		0.394345, -0.688071, 0.609138,
		44.754551, 42.659081, 37.695717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116402, 43.270020, 37.953362>,  <44.478508, 43.140732, 37.269318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116402, 43.270020, 37.953362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498184, 43.151768, 37.937252>,  <44.727253, 43.080814, 37.927586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498184, 43.151768, 37.937252>,  <44.116402, 43.270020, 37.953362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498184, 43.151768, 37.937252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238303, 0.674122, 0.699121,
		-0.179535, -0.676875, 0.713868,
		0.954452, -0.295634, -0.040274,
		44.784519, 43.063076, 37.925171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363804, 43.095863, 38.611435>,  <44.116402, 43.270020, 37.953362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363804, 43.095863, 38.611435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665043, 43.230446, 38.385288>,  <44.845787, 43.311195, 38.249599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665043, 43.230446, 38.385288>,  <44.363804, 43.095863, 38.611435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665043, 43.230446, 38.385288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228324, 0.672274, 0.704213,
		0.617020, -0.659428, 0.429466,
		0.753097, 0.336457, -0.565370,
		44.890972, 43.331383, 38.215675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078484, 43.101997, 38.940197>,  <44.363804, 43.095863, 38.611435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078484, 43.101997, 38.940197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025898, 43.398708, 38.677143>,  <44.994347, 43.576736, 38.519310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025898, 43.398708, 38.677143>,  <45.078484, 43.101997, 38.940197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025898, 43.398708, 38.677143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258963, 0.666051, 0.699510,
		0.956899, -0.078344, -0.279653,
		-0.131461, 0.741781, -0.657632,
		44.986458, 43.621243, 38.479855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531422, 42.678616, 39.195683>,  <45.078484, 43.101997, 38.940197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531422, 42.678616, 39.195683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599178, 42.695087, 38.801807>,  <44.639832, 42.704971, 38.565483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599178, 42.695087, 38.801807>,  <44.531422, 42.678616, 39.195683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599178, 42.695087, 38.801807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503707, -0.855158, -0.122409,
		-0.847105, 0.516730, -0.124115,
		0.169390, 0.041176, -0.984689,
		44.649994, 42.707439, 38.506401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424255, 41.919113, 38.770321>,  <44.531422, 42.678616, 39.195683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424255, 41.919113, 38.770321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408611, 42.120426, 38.425026>,  <44.399223, 42.241215, 38.217850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408611, 42.120426, 38.425026>,  <44.424255, 41.919113, 38.770321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408611, 42.120426, 38.425026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468781, -0.772171, -0.428948,
		-0.882448, 0.387894, 0.266127,
		-0.039109, 0.503280, -0.863238,
		44.396877, 42.271412, 38.166054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699348, 42.003639, 38.545109>,  <44.424255, 41.919113, 38.770321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699348, 42.003639, 38.545109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956570, 41.981304, 38.239594>,  <44.110901, 41.967903, 38.056286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956570, 41.981304, 38.239594>,  <43.699348, 42.003639, 38.545109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956570, 41.981304, 38.239594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540732, -0.739354, -0.401205,
		-0.542306, 0.670998, -0.505635,
		0.643050, -0.055837, -0.763786,
		44.149487, 41.964554, 38.010456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264996, 42.112064, 38.000977>,  <43.699348, 42.003639, 38.545109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264996, 42.112064, 38.000977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586777, 41.913345, 37.870716>,  <43.779846, 41.794113, 37.792561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586777, 41.913345, 37.870716>,  <43.264996, 42.112064, 38.000977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586777, 41.913345, 37.870716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594006, -0.675630, -0.436671,
		-0.003082, 0.544719, -0.838613,
		0.804455, -0.496795, -0.325649,
		43.828114, 41.764305, 37.773022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047722, 41.685780, 37.429928>,  <43.264996, 42.112064, 38.000977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047722, 41.685780, 37.429928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419472, 41.542042, 37.463707>,  <43.642521, 41.455799, 37.483974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419472, 41.542042, 37.463707>,  <43.047722, 41.685780, 37.429928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419472, 41.542042, 37.463707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266991, -0.812352, -0.518459,
		0.254904, 0.459298, -0.850923,
		0.929376, -0.359346, 0.084443,
		43.698284, 41.434238, 37.489040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273849, 41.533047, 36.778767>,  <43.047722, 41.685780, 37.429928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273849, 41.533047, 36.778767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461933, 41.306038, 37.049122>,  <43.574783, 41.169830, 37.211334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461933, 41.306038, 37.049122>,  <43.273849, 41.533047, 36.778767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461933, 41.306038, 37.049122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259840, -0.820905, -0.508525,
		0.843437, 0.063492, -0.533463,
		0.470210, -0.567524, 0.675884,
		43.602997, 41.135780, 37.251888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756565, 41.079533, 36.401073>,  <43.273849, 41.533047, 36.778767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756565, 41.079533, 36.401073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657295, 40.906712, 36.747887>,  <43.597733, 40.803020, 36.955975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657295, 40.906712, 36.747887>,  <43.756565, 41.079533, 36.401073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657295, 40.906712, 36.747887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246894, -0.837263, -0.487887,
		0.936725, -0.335146, 0.101117,
		-0.248175, -0.432051, 0.867030,
		43.582844, 40.777096, 37.007996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305038, 40.652676, 36.597805>,  <43.756565, 41.079533, 36.401073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305038, 40.652676, 36.597805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180546, 40.481838, 36.937386>,  <44.105850, 40.379333, 37.141136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180546, 40.481838, 36.937386>,  <44.305038, 40.652676, 36.597805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180546, 40.481838, 36.937386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536056, -0.658742, -0.527923,
		0.784717, -0.619393, -0.023928,
		-0.311229, -0.427096, 0.848955,
		44.087177, 40.353710, 37.192074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379242, 39.908699, 36.518105>,  <44.305038, 40.652676, 36.597805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379242, 39.908699, 36.518105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106998, 39.990219, 36.799595>,  <43.943653, 40.039131, 36.968491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106998, 39.990219, 36.799595>,  <44.379242, 39.908699, 36.518105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106998, 39.990219, 36.799595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595831, -0.712906, -0.369798,
		0.426324, -0.670991, 0.606645,
		-0.680612, 0.203804, 0.703726,
		43.902813, 40.051361, 37.010712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189026, 39.242504, 36.740704>,  <44.379242, 39.908699, 36.518105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189026, 39.242504, 36.740704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883255, 39.463200, 36.874107>,  <43.699791, 39.595619, 36.954151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883255, 39.463200, 36.874107>,  <44.189026, 39.242504, 36.740704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883255, 39.463200, 36.874107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637021, -0.726044, -0.258968,
		0.099260, -0.410416, 0.906480,
		-0.764429, 0.551741, 0.333511,
		43.653927, 39.628723, 36.974159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716022, 38.818565, 37.001713>,  <44.189026, 39.242504, 36.740704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716022, 38.818565, 37.001713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486320, 39.124313, 36.884426>,  <43.348499, 39.307762, 36.814056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486320, 39.124313, 36.884426>,  <43.716022, 38.818565, 37.001713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486320, 39.124313, 36.884426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752524, -0.633875, -0.178630,
		-0.322400, 0.118072, 0.939211,
		-0.574252, 0.764370, -0.293213,
		43.314045, 39.353622, 36.796463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046913, 38.725414, 37.284252>,  <43.716022, 38.818565, 37.001713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046913, 38.725414, 37.284252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995865, 38.964638, 36.967762>,  <42.965237, 39.108173, 36.777866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995865, 38.964638, 36.967762>,  <43.046913, 38.725414, 37.284252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995865, 38.964638, 36.967762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746178, -0.583439, -0.320651,
		-0.653400, 0.549474, 0.520717,
		-0.127618, 0.598061, -0.791225,
		42.957581, 39.144054, 36.730396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343731, 38.881760, 37.155182>,  <43.046913, 38.725414, 37.284252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343731, 38.881760, 37.155182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550674, 38.908379, 36.813911>,  <42.674839, 38.924351, 36.609150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550674, 38.908379, 36.813911>,  <42.343731, 38.881760, 37.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550674, 38.908379, 36.813911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698178, -0.543693, -0.465773,
		-0.494864, 0.836641, -0.234820,
		0.517356, 0.066548, -0.853179,
		42.705879, 38.928345, 36.557957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103222, 39.313663, 36.615135>,  <42.343731, 38.881760, 37.155182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103222, 39.313663, 36.615135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287266, 38.993889, 36.460629>,  <42.397690, 38.802025, 36.367924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287266, 38.993889, 36.460629>,  <42.103222, 39.313663, 36.615135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287266, 38.993889, 36.460629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869266, -0.317028, -0.379302,
		0.180769, 0.510290, -0.840789,
		0.460108, -0.799436, -0.386269,
		42.425297, 38.754059, 36.344749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592163, 39.155560, 36.088375>,  <42.103222, 39.313663, 36.615135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592163, 39.155560, 36.088375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962513, 39.038242, 35.993103>,  <42.184723, 38.967854, 35.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962513, 39.038242, 35.993103>,  <41.592163, 39.155560, 36.088375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962513, 39.038242, 35.993103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374166, -0.624268, -0.685777,
		0.052445, 0.724064, -0.687735,
		0.925878, -0.293293, -0.238180,
		42.240276, 38.950256, 35.921650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593582, 39.159496, 35.392803>,  <41.592163, 39.155560, 36.088375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593582, 39.159496, 35.392803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888016, 38.914715, 35.508518>,  <42.064678, 38.767845, 35.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888016, 38.914715, 35.508518>,  <41.593582, 39.159496, 35.392803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888016, 38.914715, 35.508518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443770, -0.759008, -0.476419,
		0.511121, 0.222308, -0.830262,
		0.736087, -0.611953, 0.289291,
		42.108841, 38.731129, 35.595306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912174, 38.810993, 34.743649>,  <41.593582, 39.159496, 35.392803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912174, 38.810993, 34.743649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937706, 38.585659, 35.073151>,  <41.953026, 38.450459, 35.270851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937706, 38.585659, 35.073151>,  <41.912174, 38.810993, 34.743649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937706, 38.585659, 35.073151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203179, -0.815486, -0.541942,
		0.977059, -0.132780, -0.166507,
		0.063825, -0.563340, 0.823756,
		41.956852, 38.416656, 35.320278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375900, 38.396187, 34.538273>,  <41.912174, 38.810993, 34.743649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375900, 38.396187, 34.538273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168724, 38.216267, 34.829319>,  <42.044418, 38.108315, 35.003948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168724, 38.216267, 34.829319>,  <42.375900, 38.396187, 34.538273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168724, 38.216267, 34.829319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022812, -0.857556, -0.513884,
		0.855115, -0.249561, 0.454421,
		-0.517937, -0.449796, 0.727616,
		42.013344, 38.081329, 35.047604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543682, 37.746922, 34.408928>,  <42.375900, 38.396187, 34.538273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543682, 37.746922, 34.408928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255051, 37.675655, 34.676537>,  <42.081871, 37.632896, 34.837101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255051, 37.675655, 34.676537>,  <42.543682, 37.746922, 34.408928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255051, 37.675655, 34.676537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037717, -0.954771, -0.294940,
		0.691306, -0.238055, 0.682221,
		-0.721577, -0.178162, 0.669018,
		42.038578, 37.622208, 34.877243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663685, 37.051323, 34.637764>,  <42.543682, 37.746922, 34.408928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663685, 37.051323, 34.637764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280388, 37.133541, 34.717281>,  <42.050407, 37.182873, 34.764992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280388, 37.133541, 34.717281>,  <42.663685, 37.051323, 34.637764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280388, 37.133541, 34.717281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276211, -0.845238, -0.457471,
		0.073997, -0.493278, 0.866718,
		-0.958244, 0.205546, 0.198794,
		41.992916, 37.195206, 34.776920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365215, 36.433445, 34.619663>,  <42.663685, 37.051323, 34.637764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365215, 36.433445, 34.619663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032738, 36.654331, 34.593788>,  <41.833252, 36.786861, 34.578262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032738, 36.654331, 34.593788>,  <42.365215, 36.433445, 34.619663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032738, 36.654331, 34.593788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415455, -0.694197, -0.587782,
		-0.369487, -0.461684, 0.806429,
		-0.831190, 0.552212, -0.064688,
		41.783382, 36.819996, 34.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713867, 35.981262, 34.854362>,  <42.365215, 36.433445, 34.619663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713867, 35.981262, 34.854362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612278, 36.276737, 34.604614>,  <41.551323, 36.454021, 34.454765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612278, 36.276737, 34.604614>,  <41.713867, 35.981262, 34.854362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612278, 36.276737, 34.604614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294856, -0.673937, -0.677398,
		-0.921172, 0.012059, 0.388968,
		-0.253971, 0.738690, -0.624368,
		41.536087, 36.498344, 34.417305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203465, 35.316685, 35.004940>,  <41.713867, 35.981262, 34.854362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203465, 35.316685, 35.004940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585800, 35.206207, 35.045124>,  <42.815201, 35.139919, 35.069233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585800, 35.206207, 35.045124>,  <42.203465, 35.316685, 35.004940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585800, 35.206207, 35.045124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267746, -0.959290, -0.089858,
		0.121187, 0.058992, -0.990875,
		0.955838, -0.276192, 0.100458,
		42.872551, 35.123348, 35.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328625, 34.736477, 34.527187>,  <42.203465, 35.316685, 35.004940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328625, 34.736477, 34.527187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557251, 34.730286, 34.855350>,  <42.694427, 34.726570, 35.052250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557251, 34.730286, 34.855350>,  <42.328625, 34.736477, 34.527187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557251, 34.730286, 34.855350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067203, -0.997347, 0.027997,
		0.817801, -0.071136, -0.571087,
		0.571564, -0.015482, 0.820412,
		42.728722, 34.725639, 35.101475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932289, 34.360031, 34.218067>,  <42.328625, 34.736477, 34.527187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932289, 34.360031, 34.218067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005337, 34.112125, 34.523365>,  <43.049168, 33.963383, 34.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005337, 34.112125, 34.523365>,  <42.932289, 34.360031, 34.218067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005337, 34.112125, 34.523365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715097, -0.616496, -0.329497,
		0.674748, -0.485623, -0.555774,
		0.182622, -0.619760, 0.763247,
		43.060123, 33.926197, 34.752338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030010, 33.709946, 33.998425>,  <42.932289, 34.360031, 34.218067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030010, 33.709946, 33.998425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880627, 33.646564, 34.364029>,  <42.790997, 33.608536, 34.583393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880627, 33.646564, 34.364029>,  <43.030010, 33.709946, 33.998425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880627, 33.646564, 34.364029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480814, -0.809558, -0.336800,
		0.793314, -0.565251, 0.226149,
		-0.373458, -0.158453, 0.914014,
		42.768589, 33.599030, 34.638233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103210, 33.142014, 34.333843>,  <43.030010, 33.709946, 33.998425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103210, 33.142014, 34.333843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780342, 33.219769, 34.556801>,  <42.586620, 33.266422, 34.690575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780342, 33.219769, 34.556801>,  <43.103210, 33.142014, 34.333843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780342, 33.219769, 34.556801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314338, -0.940763, -0.127106,
		0.499671, -0.277807, 0.820458,
		-0.807168, 0.194390, 0.557398,
		42.538193, 33.278084, 34.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080578, 32.299450, 34.182739>,  <43.103210, 33.142014, 34.333843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080578, 32.299450, 34.182739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441624, 32.182880, 34.056026>,  <43.658253, 32.112938, 33.980000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441624, 32.182880, 34.056026>,  <43.080578, 32.299450, 34.182739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441624, 32.182880, 34.056026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054609, -0.652472, 0.755842,
		-0.426963, -0.699537, -0.573019,
		0.902619, -0.291425, -0.316782,
		43.712410, 32.095451, 33.960991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059418, 31.628145, 34.536255>,  <43.080578, 32.299450, 34.182739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059418, 31.628145, 34.536255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431396, 31.724810, 34.425404>,  <43.654583, 31.782808, 34.358894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431396, 31.724810, 34.425404>,  <43.059418, 31.628145, 34.536255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431396, 31.724810, 34.425404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358364, -0.426993, 0.830212,
		0.082299, -0.871365, -0.483683,
		0.929947, 0.241660, -0.277125,
		43.710381, 31.797308, 34.342266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423302, 30.992996, 34.579662>,  <43.059418, 31.628145, 34.536255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423302, 30.992996, 34.579662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618500, 31.337429, 34.636791>,  <43.735619, 31.544088, 34.671066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618500, 31.337429, 34.636791>,  <43.423302, 30.992996, 34.579662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618500, 31.337429, 34.636791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066908, -0.200046, 0.977499,
		0.870277, -0.467462, -0.155235,
		0.487998, 0.861081, 0.142819,
		43.764900, 31.595753, 34.679638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071228, 30.859228, 34.875362>,  <43.423302, 30.992996, 34.579662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071228, 30.859228, 34.875362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903103, 31.194073, 35.015411>,  <43.802227, 31.394979, 35.099442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903103, 31.194073, 35.015411>,  <44.071228, 30.859228, 34.875362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903103, 31.194073, 35.015411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182883, -0.299785, 0.936313,
		0.888759, 0.457573, -0.027091,
		-0.420310, 0.837112, 0.350120,
		43.777008, 31.445206, 35.120449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580288, 31.171894, 35.285152>,  <44.071228, 30.859228, 34.875362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580288, 31.171894, 35.285152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202850, 31.264561, 35.379772>,  <43.976387, 31.320160, 35.436543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202850, 31.264561, 35.379772>,  <44.580288, 31.171894, 35.285152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202850, 31.264561, 35.379772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126495, -0.407998, 0.904177,
		0.305977, 0.883102, 0.355682,
		-0.943598, 0.231666, 0.236547,
		43.919769, 31.334061, 35.450737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200466, 31.442783, 34.999779>,  <44.580288, 31.171894, 35.285152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200466, 31.442783, 34.999779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350800, 31.441860, 35.370453>,  <45.441002, 31.441307, 35.592857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350800, 31.441860, 35.370453>,  <45.200466, 31.442783, 34.999779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350800, 31.441860, 35.370453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822564, 0.461366, -0.332459,
		-0.426773, 0.887207, 0.175295,
		0.375835, -0.002307, 0.926684,
		45.463551, 31.441168, 35.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261143, 32.172546, 35.338497>,  <45.200466, 31.442783, 34.999779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261143, 32.172546, 35.338497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519901, 31.898451, 35.472351>,  <45.675156, 31.733994, 35.552662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519901, 31.898451, 35.472351>,  <45.261143, 32.172546, 35.338497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519901, 31.898451, 35.472351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751015, 0.496333, -0.435466,
		0.132309, 0.533013, 0.835698,
		0.646893, -0.685238, 0.334631,
		45.713970, 31.692879, 35.572739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710651, 32.532486, 35.638119>,  <45.261143, 32.172546, 35.338497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710651, 32.532486, 35.638119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897305, 32.207634, 35.498001>,  <46.009296, 32.012722, 35.413933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897305, 32.207634, 35.498001>,  <45.710651, 32.532486, 35.638119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897305, 32.207634, 35.498001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793829, 0.559206, -0.239008,
		0.389989, -0.166542, 0.905634,
		0.466631, -0.812128, -0.350290,
		46.037292, 31.963995, 35.392914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328419, 32.543648, 35.958191>,  <45.710651, 32.532486, 35.638119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328419, 32.543648, 35.958191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336102, 32.349113, 35.608765>,  <46.340710, 32.232395, 35.399109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336102, 32.349113, 35.608765>,  <46.328419, 32.543648, 35.958191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336102, 32.349113, 35.608765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762677, 0.572087, -0.301728,
		0.646494, -0.660453, 0.381899,
		0.019202, -0.486331, -0.873563,
		46.341862, 32.203213, 35.346695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009693, 32.216919, 35.804050>,  <46.328419, 32.543648, 35.958191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009693, 32.216919, 35.804050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868084, 32.247894, 35.431240>,  <46.783119, 32.266479, 35.207554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868084, 32.247894, 35.431240>,  <47.009693, 32.216919, 35.804050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868084, 32.247894, 35.431240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661958, 0.724738, -0.191221,
		0.660666, -0.684659, -0.307837,
		-0.354022, 0.077442, -0.932025,
		46.761879, 32.271126, 35.151634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.626766, 32.058319, 35.245720>,  <47.009693, 32.216919, 35.804050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.626766, 32.058319, 35.245720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339493, 32.322960, 35.159470>,  <47.167130, 32.481743, 35.107719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339493, 32.322960, 35.159470>,  <47.626766, 32.058319, 35.245720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.339493, 32.322960, 35.159470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657069, 0.746782, 0.102844,
		0.229066, -0.067819, -0.971045,
		-0.718184, 0.661602, -0.215624,
		47.124039, 32.521442, 35.094784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.983616, 32.579597, 34.887283>,  <47.626766, 32.058319, 35.245720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.983616, 32.579597, 34.887283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635941, 32.743984, 34.997276>,  <47.427334, 32.842617, 35.063271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635941, 32.743984, 34.997276>,  <47.983616, 32.579597, 34.887283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635941, 32.743984, 34.997276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481278, 0.830760, 0.279659,
		-0.113513, 0.375420, -0.919878,
		-0.869187, 0.410971, 0.274984,
		47.375183, 32.867275, 35.079773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822716, 33.316685, 34.506844>,  <47.983616, 32.579597, 34.887283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822716, 33.316685, 34.506844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694328, 33.260464, 34.881485>,  <47.617294, 33.226730, 35.106270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694328, 33.260464, 34.881485>,  <47.822716, 33.316685, 34.506844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694328, 33.260464, 34.881485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582143, 0.750776, 0.312162,
		-0.747052, 0.645431, -0.159159,
		-0.320972, -0.140549, 0.936602,
		47.598038, 33.218300, 35.162464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687714, 34.031021, 34.703186>,  <47.822716, 33.316685, 34.506844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687714, 34.031021, 34.703186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732033, 33.806423, 35.031197>,  <47.758625, 33.671665, 35.228004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732033, 33.806423, 35.031197>,  <47.687714, 34.031021, 34.703186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.732033, 33.806423, 35.031197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434293, 0.769513, 0.468229,
		-0.893932, 0.304255, 0.329113,
		0.110796, -0.561496, 0.820028,
		47.765270, 33.637974, 35.277206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365398, 34.325077, 35.368412>,  <47.687714, 34.031021, 34.703186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365398, 34.325077, 35.368412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693375, 34.110943, 35.449512>,  <47.890160, 33.982460, 35.498173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693375, 34.110943, 35.449512>,  <47.365398, 34.325077, 35.368412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.693375, 34.110943, 35.449512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362216, 0.759450, 0.540403,
		-0.443277, -0.369660, 0.816614,
		0.819942, -0.535339, 0.202750,
		47.939358, 33.950340, 35.510338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446796, 35.012726, 34.953411>,  <47.365398, 34.325077, 35.368412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446796, 35.012726, 34.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829346, 34.967052, 35.060982>,  <48.058876, 34.939648, 35.125523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829346, 34.967052, 35.060982>,  <47.446796, 35.012726, 34.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829346, 34.967052, 35.060982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044187, 0.966405, 0.253197,
		-0.288801, -0.230267, 0.929286,
		0.956369, -0.114186, 0.268923,
		48.116257, 34.932796, 35.141659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.280479, 29.064102, 28.729397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914593, 28.904453, 28.704113>,  <38.695061, 28.808664, 28.688942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914593, 28.904453, 28.704113>,  <39.280479, 29.064102, 28.729397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914593, 28.904453, 28.704113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311965, 0.598046, 0.738254,
		-0.256850, 0.695013, -0.671554,
		-0.914716, -0.399122, -0.063211,
		38.640179, 28.784718, 28.685150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808151, 29.562075, 28.951305>,  <39.280479, 29.064102, 28.729397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808151, 29.562075, 28.951305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.555771, 29.251932, 28.962111>,  <38.404343, 29.065847, 28.968594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.555771, 29.251932, 28.962111>,  <38.808151, 29.562075, 28.951305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555771, 29.251932, 28.962111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530517, 0.456594, 0.714195,
		-0.566088, 0.436289, -0.699425,
		-0.630948, -0.775354, 0.027014,
		38.366486, 29.019325, 28.970215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056988, 29.806992, 28.799850>,  <38.808151, 29.562075, 28.951305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056988, 29.806992, 28.799850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027771, 29.451336, 28.980558>,  <38.010242, 29.237942, 29.088984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027771, 29.451336, 28.980558>,  <38.056988, 29.806992, 28.799850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027771, 29.451336, 28.980558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716171, 0.362009, 0.596698,
		-0.694093, -0.279963, -0.663216,
		-0.073037, -0.889140, 0.451769,
		38.005859, 29.184593, 29.116089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257175, 29.807821, 29.005518>,  <38.056988, 29.806992, 28.799850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257175, 29.807821, 29.005518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466698, 29.541620, 29.218210>,  <37.592411, 29.381899, 29.345825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466698, 29.541620, 29.218210>,  <37.257175, 29.807821, 29.005518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466698, 29.541620, 29.218210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531883, 0.232062, 0.814400,
		-0.665380, -0.709403, -0.232415,
		0.523803, -0.665503, 0.531729,
		37.623840, 29.341969, 29.377729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802814, 29.335224, 29.316339>,  <37.257175, 29.807821, 29.005518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802814, 29.335224, 29.316339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124329, 29.310955, 29.553068>,  <37.317238, 29.296392, 29.695107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124329, 29.310955, 29.553068>,  <36.802814, 29.335224, 29.316339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124329, 29.310955, 29.553068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500012, 0.470147, 0.727289,
		-0.322372, -0.880500, 0.347557,
		0.803782, -0.060675, 0.591823,
		37.365463, 29.292753, 29.730616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628296, 29.098827, 29.961340>,  <36.802814, 29.335224, 29.316339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628296, 29.098827, 29.961340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955811, 29.315111, 30.038506>,  <37.152321, 29.444881, 30.084805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955811, 29.315111, 30.038506>,  <36.628296, 29.098827, 29.961340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955811, 29.315111, 30.038506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519495, 0.554815, 0.649850,
		0.244348, -0.632309, 0.735173,
		0.818791, 0.540708, 0.192913,
		37.201447, 29.477324, 30.096380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541035, 29.282145, 30.733870>,  <36.628296, 29.098827, 29.961340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541035, 29.282145, 30.733870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853992, 29.507053, 30.626760>,  <37.041767, 29.641998, 30.562494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853992, 29.507053, 30.626760>,  <36.541035, 29.282145, 30.733870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853992, 29.507053, 30.626760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257469, 0.683535, 0.683001,
		0.567064, -0.465437, 0.679565,
		0.782399, 0.562271, -0.267772,
		37.088711, 29.675735, 30.546429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868725, 29.367575, 31.420481>,  <36.541035, 29.282145, 30.733870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868725, 29.367575, 31.420481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052391, 29.646000, 31.199696>,  <37.162590, 29.813055, 31.067225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052391, 29.646000, 31.199696>,  <36.868725, 29.367575, 31.420481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052391, 29.646000, 31.199696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012282, 0.616299, 0.787417,
		0.888267, -0.368333, 0.274433,
		0.459164, 0.696065, -0.551961,
		37.190140, 29.854820, 31.034107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479530, 29.650438, 31.854200>,  <36.868725, 29.367575, 31.420481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479530, 29.650438, 31.854200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.387920, 29.925661, 31.578773>,  <37.332954, 30.090796, 31.413517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.387920, 29.925661, 31.578773>,  <37.479530, 29.650438, 31.854200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387920, 29.925661, 31.578773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104731, 0.720678, 0.685313,
		0.967770, 0.084839, -0.237114,
		-0.229024, 0.688059, -0.688566,
		37.319214, 30.132078, 31.372204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905533, 30.161234, 32.005344>,  <37.479530, 29.650438, 31.854200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905533, 30.161234, 32.005344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603771, 30.304510, 31.785316>,  <37.422714, 30.390476, 31.653299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603771, 30.304510, 31.785316>,  <37.905533, 30.161234, 32.005344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603771, 30.304510, 31.785316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094602, 0.769921, 0.631088,
		0.649562, 0.528131, -0.546943,
		-0.754400, 0.358189, -0.550074,
		37.377453, 30.411966, 31.620295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185528, 30.821609, 31.794239>,  <37.905533, 30.161234, 32.005344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185528, 30.821609, 31.794239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787556, 30.821051, 31.754004>,  <37.548775, 30.820715, 31.729862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787556, 30.821051, 31.754004>,  <38.185528, 30.821609, 31.794239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787556, 30.821051, 31.754004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057476, 0.828521, 0.557001,
		0.082561, 0.559956, -0.824398,
		-0.994927, -0.001397, -0.100587,
		37.489079, 30.820631, 31.723827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016865, 31.488621, 31.290106>,  <38.185528, 30.821609, 31.794239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016865, 31.488621, 31.290106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752689, 31.367548, 31.564976>,  <37.594185, 31.294905, 31.729897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752689, 31.367548, 31.564976>,  <38.016865, 31.488621, 31.290106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752689, 31.367548, 31.564976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145266, 0.846363, 0.512414,
		-0.736697, 0.438240, -0.514999,
		-0.660436, -0.302682, 0.687174,
		37.554558, 31.276743, 31.771128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670139, 32.051994, 31.439497>,  <38.016865, 31.488621, 31.290106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670139, 32.051994, 31.439497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569351, 31.824806, 31.752907>,  <37.508877, 31.688492, 31.940952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569351, 31.824806, 31.752907>,  <37.670139, 32.051994, 31.439497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569351, 31.824806, 31.752907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041218, 0.802618, 0.595068,
		-0.966856, 0.182238, -0.178829,
		-0.251975, -0.567974, 0.783527,
		37.493759, 31.654413, 31.987965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276569, 32.492935, 31.886532>,  <37.670139, 32.051994, 31.439497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276569, 32.492935, 31.886532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412163, 32.198780, 32.121239>,  <37.493519, 32.022285, 32.262062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412163, 32.198780, 32.121239>,  <37.276569, 32.492935, 31.886532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412163, 32.198780, 32.121239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042229, 0.634958, 0.771392,
		-0.939845, -0.236708, 0.246293,
		0.338980, -0.735390, 0.586766,
		37.513859, 31.978163, 32.297268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925625, 32.559662, 32.516407>,  <37.276569, 32.492935, 31.886532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925625, 32.559662, 32.516407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273006, 32.371304, 32.578430>,  <37.481434, 32.258289, 32.615643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273006, 32.371304, 32.578430>,  <36.925625, 32.559662, 32.516407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273006, 32.371304, 32.578430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163143, 0.566784, 0.807552,
		-0.468159, -0.676025, 0.569049,
		0.868453, -0.470899, 0.155057,
		37.533543, 32.230034, 32.624947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950012, 32.523323, 33.256248>,  <36.925625, 32.559662, 32.516407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950012, 32.523323, 33.256248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326641, 32.436176, 33.153500>,  <37.552616, 32.383888, 33.091850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326641, 32.436176, 33.153500>,  <36.950012, 32.523323, 33.256248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326641, 32.436176, 33.153500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335061, 0.528014, 0.780343,
		-0.034383, -0.820813, 0.570160,
		0.941569, -0.217869, -0.256868,
		37.609112, 32.370815, 33.076439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273277, 32.522610, 33.818043>,  <36.950012, 32.523323, 33.256248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273277, 32.522610, 33.818043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596035, 32.534645, 33.582073>,  <37.789692, 32.541866, 33.440491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596035, 32.534645, 33.582073>,  <37.273277, 32.522610, 33.818043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596035, 32.534645, 33.582073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508777, 0.471987, 0.719983,
		0.300101, -0.881092, 0.365535,
		0.806899, 0.030092, -0.589923,
		37.838104, 32.543674, 33.405098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776546, 32.173042, 34.265896>,  <37.273277, 32.522610, 33.818043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776546, 32.173042, 34.265896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919987, 32.421162, 33.986858>,  <38.006050, 32.570034, 33.819435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919987, 32.421162, 33.986858>,  <37.776546, 32.173042, 34.265896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919987, 32.421162, 33.986858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292447, 0.635024, 0.714996,
		0.886498, -0.460408, 0.046316,
		0.358602, 0.620298, -0.697593,
		38.027569, 32.607250, 33.777580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378784, 32.454536, 34.417648>,  <37.776546, 32.173042, 34.265896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378784, 32.454536, 34.417648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291775, 32.753056, 34.166023>,  <38.239571, 32.932167, 34.015049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291775, 32.753056, 34.166023>,  <38.378784, 32.454536, 34.417648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291775, 32.753056, 34.166023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337710, 0.662233, 0.668878,
		0.915770, -0.066944, -0.396085,
		-0.217524, 0.746301, -0.629061,
		38.226517, 32.976948, 33.977306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865166, 32.836739, 34.593498>,  <38.378784, 32.454536, 34.417648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865166, 32.836739, 34.593498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607853, 33.079330, 34.406574>,  <38.453465, 33.224884, 34.294418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607853, 33.079330, 34.406574>,  <38.865166, 32.836739, 34.593498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607853, 33.079330, 34.406574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196580, 0.720727, 0.664762,
		0.739966, 0.335763, -0.582849,
		-0.643278, 0.606478, -0.467310,
		38.414871, 33.261272, 34.266380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131611, 33.516567, 34.541294>,  <38.865166, 32.836739, 34.593498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131611, 33.516567, 34.541294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741547, 33.597275, 34.504730>,  <38.507507, 33.645699, 34.482792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741547, 33.597275, 34.504730>,  <39.131611, 33.516567, 34.541294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741547, 33.597275, 34.504730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128071, 0.850267, 0.510533,
		0.180733, 0.486143, -0.854986,
		-0.975158, 0.201769, -0.091411,
		38.448997, 33.657806, 34.477306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932659, 34.083569, 34.985447>,  <39.131611, 33.516567, 34.541294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932659, 34.083569, 34.985447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167706, 34.397129, 35.065659>,  <39.308735, 34.585266, 35.113785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167706, 34.397129, 35.065659>,  <38.932659, 34.083569, 34.985447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167706, 34.397129, 35.065659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634194, -0.292285, -0.715799,
		-0.502500, 0.547791, -0.668894,
		0.587615, 0.783897, 0.200533,
		39.343990, 34.632298, 35.125820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019508, 34.437473, 34.416412>,  <38.932659, 34.083569, 34.985447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019508, 34.437473, 34.416412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333729, 34.444279, 34.663837>,  <39.522263, 34.448360, 34.812290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333729, 34.444279, 34.663837>,  <39.019508, 34.437473, 34.416412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333729, 34.444279, 34.663837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571994, -0.401316, -0.715380,
		0.236065, 0.915782, -0.324988,
		0.785555, 0.017015, 0.618558,
		39.569397, 34.449383, 34.849403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530140, 34.719162, 34.027580>,  <39.019508, 34.437473, 34.416412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530140, 34.719162, 34.027580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723442, 34.516876, 34.313435>,  <39.839424, 34.395504, 34.484947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723442, 34.516876, 34.313435>,  <39.530140, 34.719162, 34.027580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723442, 34.516876, 34.313435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669342, -0.312726, -0.673932,
		0.564306, 0.804022, 0.187371,
		0.483260, -0.505719, 0.714639,
		39.868420, 34.365162, 34.527824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203850, 34.803146, 33.816471>,  <39.530140, 34.719162, 34.027580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203850, 34.803146, 33.816471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202938, 34.478989, 34.050823>,  <40.202393, 34.284496, 34.191437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202938, 34.478989, 34.050823>,  <40.203850, 34.803146, 33.816471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202938, 34.478989, 34.050823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618604, -0.461473, -0.635902,
		0.785699, 0.360983, 0.502363,
		-0.002277, -0.810392, 0.585884,
		40.202255, 34.235870, 34.226589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967415, 34.498119, 33.943672>,  <40.203850, 34.803146, 33.816471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967415, 34.498119, 33.943672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.707577, 34.208305, 34.035824>,  <40.551674, 34.034416, 34.091114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.707577, 34.208305, 34.035824>,  <40.967415, 34.498119, 33.943672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707577, 34.208305, 34.035824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491088, -0.631188, -0.600361,
		0.580399, -0.276851, 0.765827,
		-0.649592, -0.724537, 0.230383,
		40.512699, 33.990944, 34.104939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370506, 33.873001, 34.001225>,  <40.967415, 34.498119, 33.943672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370506, 33.873001, 34.001225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.003067, 33.721031, 33.957714>,  <40.782604, 33.629848, 33.931606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.003067, 33.721031, 33.957714>,  <41.370506, 33.873001, 34.001225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003067, 33.721031, 33.957714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378135, -0.765009, -0.521321,
		0.114849, -0.520017, 0.846400,
		-0.918599, -0.379926, -0.108776,
		40.727486, 33.607052, 33.925083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480232, 33.221725, 34.132931>,  <41.370506, 33.873001, 34.001225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480232, 33.221725, 34.132931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111946, 33.205154, 33.977718>,  <40.890976, 33.195213, 33.884590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111946, 33.205154, 33.977718>,  <41.480232, 33.221725, 34.132931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111946, 33.205154, 33.977718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262592, -0.801323, -0.537520,
		-0.288675, -0.596796, 0.748666,
		-0.920713, -0.041425, -0.388035,
		40.835732, 33.192726, 33.861309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360088, 32.489052, 34.002247>,  <41.480232, 33.221725, 34.132931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360088, 32.489052, 34.002247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.133461, 32.718975, 33.766079>,  <40.997486, 32.856930, 33.624378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.133461, 32.718975, 33.766079>,  <41.360088, 32.489052, 34.002247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133461, 32.718975, 33.766079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293578, -0.528686, -0.796432,
		-0.769944, -0.624566, 0.130784,
		-0.566568, 0.574812, -0.590416,
		40.963490, 32.891418, 33.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148750, 32.007919, 33.589878>,  <41.360088, 32.489052, 34.002247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148750, 32.007919, 33.589878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021130, 32.334137, 33.396755>,  <40.944557, 32.529865, 33.280884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021130, 32.334137, 33.396755>,  <41.148750, 32.007919, 33.589878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021130, 32.334137, 33.396755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119084, -0.470893, -0.874116,
		-0.940227, -0.336379, 0.053119,
		-0.319048, 0.815542, -0.482804,
		40.925415, 32.578800, 33.251915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673218, 31.750076, 33.105839>,  <41.148750, 32.007919, 33.589878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673218, 31.750076, 33.105839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788898, 32.106445, 32.965771>,  <40.858307, 32.320267, 32.881729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788898, 32.106445, 32.965771>,  <40.673218, 31.750076, 33.105839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788898, 32.106445, 32.965771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215623, -0.417031, -0.882945,
		-0.932667, 0.179846, -0.312711,
		0.289204, 0.890921, -0.350173,
		40.875660, 32.373722, 32.860718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297874, 31.887440, 32.506935>,  <40.673218, 31.750076, 33.105839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297874, 31.887440, 32.506935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.635532, 32.099873, 32.477623>,  <40.838127, 32.227333, 32.460037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.635532, 32.099873, 32.477623>,  <40.297874, 31.887440, 32.506935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635532, 32.099873, 32.477623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086891, -0.270412, -0.958816,
		-0.529026, 0.803013, -0.274413,
		0.844146, 0.531082, -0.073280,
		40.888775, 32.259197, 32.455639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265797, 32.231960, 31.825741>,  <40.297874, 31.887440, 32.506935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265797, 32.231960, 31.825741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.649918, 32.219666, 31.936646>,  <40.880390, 32.212288, 32.003189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.649918, 32.219666, 31.936646>,  <40.265797, 32.231960, 31.825741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649918, 32.219666, 31.936646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246689, -0.370484, -0.895481,
		0.130244, 0.928330, -0.348194,
		0.960302, -0.030735, 0.277263,
		40.938007, 32.210445, 32.019825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692722, 32.361717, 31.181530>,  <40.265797, 32.231960, 31.825741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692722, 32.361717, 31.181530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.981564, 32.176174, 31.386820>,  <41.154869, 32.064850, 31.509993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.981564, 32.176174, 31.386820>,  <40.692722, 32.361717, 31.181530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981564, 32.176174, 31.386820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200359, -0.569854, -0.796946,
		0.662132, 0.678309, -0.318557,
		0.722107, -0.463858, 0.513223,
		41.198196, 32.037018, 31.540787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270592, 32.161938, 30.722940>,  <40.692722, 32.361717, 31.181530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270592, 32.161938, 30.722940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.335667, 31.915960, 31.031582>,  <41.374710, 31.768373, 31.216766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.335667, 31.915960, 31.031582>,  <41.270592, 32.161938, 30.722940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335667, 31.915960, 31.031582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224734, -0.738373, -0.635847,
		0.960743, 0.276849, 0.018076,
		0.162686, -0.614948, 0.771604,
		41.384472, 31.731476, 31.263063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874023, 31.783424, 30.601799>,  <41.270592, 32.161938, 30.722940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874023, 31.783424, 30.601799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.661613, 31.575008, 30.869091>,  <41.534168, 31.449959, 31.029467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.661613, 31.575008, 30.869091>,  <41.874023, 31.783424, 30.601799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661613, 31.575008, 30.869091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175850, -0.839200, -0.514606,
		0.828909, -0.155760, 0.537260,
		-0.531024, -0.521039, 0.668231,
		41.502308, 31.418697, 31.069561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286209, 31.144245, 30.724714>,  <41.874023, 31.783424, 30.601799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286209, 31.144245, 30.724714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.926846, 31.042381, 30.867825>,  <41.711227, 30.981262, 30.953691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.926846, 31.042381, 30.867825>,  <42.286209, 31.144245, 30.724714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926846, 31.042381, 30.867825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098142, -0.910519, -0.401651,
		0.428048, -0.325734, 0.843014,
		-0.898411, -0.254661, 0.357778,
		41.657322, 30.965982, 30.975159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435265, 30.567059, 31.111605>,  <42.286209, 31.144245, 30.724714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435265, 30.567059, 31.111605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.045731, 30.539680, 31.024916>,  <41.812012, 30.523254, 30.972902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.045731, 30.539680, 31.024916>,  <42.435265, 30.567059, 31.111605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045731, 30.539680, 31.024916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169852, -0.852766, -0.493903,
		-0.151007, -0.517788, 0.842076,
		-0.973831, -0.068446, -0.216721,
		41.753582, 30.519146, 30.959900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225685, 29.820204, 31.190884>,  <42.435265, 30.567059, 31.111605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225685, 29.820204, 31.190884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.936653, 29.975367, 30.962006>,  <41.763233, 30.068464, 30.824678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.936653, 29.975367, 30.962006>,  <42.225685, 29.820204, 31.190884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936653, 29.975367, 30.962006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129549, -0.889043, -0.439112,
		-0.679042, -0.243165, 0.692656,
		-0.722578, 0.387909, -0.572196,
		41.719879, 30.091740, 30.790346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667347, 29.308634, 31.186769>,  <42.225685, 29.820204, 31.190884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667347, 29.308634, 31.186769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.604076, 29.545385, 30.870626>,  <41.566116, 29.687435, 30.680941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.604076, 29.545385, 30.870626>,  <41.667347, 29.308634, 31.186769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604076, 29.545385, 30.870626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077726, -0.790485, -0.607529,
		-0.984347, -0.157526, 0.079030,
		-0.158173, 0.591877, -0.790356,
		41.556625, 29.722948, 30.633520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.089470, 28.847282, 30.529024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.205822, 29.193369, 30.365664>,  <41.275635, 29.401020, 30.267647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.205822, 29.193369, 30.365664>,  <41.089470, 28.847282, 30.529024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205822, 29.193369, 30.365664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269421, -0.335511, -0.902687,
		-0.918042, 0.372606, 0.135514,
		0.290880, 0.865215, -0.408401,
		41.293087, 29.452934, 30.243143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496799, 29.155249, 30.195427>,  <41.089470, 28.847282, 30.529024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496799, 29.155249, 30.195427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.838566, 29.267900, 30.020773>,  <41.043625, 29.335491, 29.915981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.838566, 29.267900, 30.020773>,  <40.496799, 29.155249, 30.195427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838566, 29.267900, 30.020773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295846, -0.427131, -0.854420,
		-0.427131, 0.859211, -0.281630,
		0.854420, 0.281630, -0.436635,
		41.094891, 29.352390, 29.889782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325886, 29.333921, 29.438507>,  <40.496799, 29.155249, 30.195427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325886, 29.333921, 29.438507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717426, 29.252102, 29.439819>,  <40.952351, 29.203011, 29.440607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717426, 29.252102, 29.439819>,  <40.325886, 29.333921, 29.438507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717426, 29.252102, 29.439819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074536, -0.371532, -0.925423,
		0.190512, 0.905607, -0.378921,
		0.978851, -0.204547, 0.003281,
		41.011082, 29.190739, 29.440804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527248, 29.442205, 28.741669>,  <40.325886, 29.333921, 29.438507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527248, 29.442205, 28.741669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837254, 29.221237, 28.864424>,  <41.023258, 29.088655, 28.938078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837254, 29.221237, 28.864424>,  <40.527248, 29.442205, 28.741669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837254, 29.221237, 28.864424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160091, -0.298157, -0.940996,
		0.611327, 0.778417, -0.142639,
		0.775017, -0.552421, 0.306889,
		41.069759, 29.055511, 28.956490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099869, 29.516592, 28.256624>,  <40.527248, 29.442205, 28.741669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099869, 29.516592, 28.256624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197308, 29.176838, 28.443903>,  <41.255772, 28.972986, 28.556271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197308, 29.176838, 28.443903>,  <41.099869, 29.516592, 28.256624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197308, 29.176838, 28.443903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024142, -0.477279, -0.878420,
		0.969576, 0.225285, -0.095759,
		0.243599, -0.849383, 0.468196,
		41.270386, 28.922024, 28.584362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678806, 29.321556, 27.963430>,  <41.099869, 29.516592, 28.256624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678806, 29.321556, 27.963430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483009, 29.010925, 28.122089>,  <41.365532, 28.824547, 28.217285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483009, 29.010925, 28.122089>,  <41.678806, 29.321556, 27.963430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483009, 29.010925, 28.122089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045834, -0.477149, -0.877626,
		0.870803, -0.411410, 0.269153,
		-0.489490, -0.776576, 0.396646,
		41.336163, 28.777952, 28.241083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077839, 28.814264, 27.655876>,  <41.678806, 29.321556, 27.963430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077839, 28.814264, 27.655876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.783447, 28.588907, 27.806038>,  <41.606812, 28.453693, 27.896135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.783447, 28.588907, 27.806038>,  <42.077839, 28.814264, 27.655876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783447, 28.588907, 27.806038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130018, -0.661805, -0.738316,
		0.664406, -0.494573, 0.560324,
		-0.735976, -0.563393, 0.375403,
		41.562653, 28.419889, 27.918659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224453, 28.189617, 27.440104>,  <42.077839, 28.814264, 27.655876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224453, 28.189617, 27.440104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.837475, 28.125914, 27.518770>,  <41.605286, 28.087692, 27.565969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.837475, 28.125914, 27.518770>,  <42.224453, 28.189617, 27.440104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837475, 28.125914, 27.518770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078795, -0.548945, -0.832136,
		0.240483, -0.820547, 0.518528,
		-0.967450, -0.159258, 0.196667,
		41.547241, 28.078136, 27.577770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124531, 27.478355, 27.437574>,  <42.224453, 28.189617, 27.440104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124531, 27.478355, 27.437574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.767685, 27.645828, 27.369644>,  <41.553577, 27.746313, 27.328886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.767685, 27.645828, 27.369644>,  <42.124531, 27.478355, 27.437574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767685, 27.645828, 27.369644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072049, -0.502895, -0.861340,
		-0.446031, -0.756176, 0.478804,
		-0.892113, 0.418681, -0.169825,
		41.500053, 27.771433, 27.318697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649216, 26.921333, 27.358616>,  <42.124531, 27.478355, 27.437574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649216, 26.921333, 27.358616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511768, 27.255810, 27.187635>,  <41.429302, 27.456495, 27.085047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511768, 27.255810, 27.187635>,  <41.649216, 26.921333, 27.358616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511768, 27.255810, 27.187635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155430, -0.499527, -0.852241,
		-0.926159, -0.226405, 0.301615,
		-0.343616, 0.836190, -0.427451,
		41.408684, 27.506666, 27.059401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212101, 26.682842, 26.895628>,  <41.649216, 26.921333, 27.358616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212101, 26.682842, 26.895628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.275688, 27.053520, 26.759413>,  <41.313839, 27.275927, 26.677683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.275688, 27.053520, 26.759413>,  <41.212101, 26.682842, 26.895628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275688, 27.053520, 26.759413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264007, -0.372262, -0.889787,
		-0.951331, 0.051540, -0.303831,
		0.158964, 0.926695, -0.340538,
		41.323376, 27.331530, 26.657251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911896, 26.625746, 26.260319>,  <41.212101, 26.682842, 26.895628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911896, 26.625746, 26.260319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157135, 26.941175, 26.241274>,  <41.304279, 27.130432, 26.229847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157135, 26.941175, 26.241274>,  <40.911896, 26.625746, 26.260319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157135, 26.941175, 26.241274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300942, -0.288848, -0.908846,
		-0.730443, 0.542881, -0.414406,
		0.613096, 0.788573, -0.047611,
		41.341064, 27.177748, 26.226990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947430, 26.783131, 25.555998>,  <40.911896, 26.625746, 26.260319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947430, 26.783131, 25.555998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268627, 26.987650, 25.678490>,  <41.461346, 27.110361, 25.751986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268627, 26.987650, 25.678490>,  <40.947430, 26.783131, 25.555998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268627, 26.987650, 25.678490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443246, -0.168849, -0.880354,
		-0.398415, 0.842654, -0.362215,
		0.802993, 0.511297, 0.306231,
		41.509525, 27.141039, 25.770359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151703, 27.265833, 25.045616>,  <40.947430, 26.783131, 25.555998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151703, 27.265833, 25.045616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.487080, 27.202370, 25.254173>,  <41.688305, 27.164291, 25.379307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.487080, 27.202370, 25.254173>,  <41.151703, 27.265833, 25.045616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487080, 27.202370, 25.254173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535246, 0.059556, -0.842594,
		0.102634, 0.985535, 0.134856,
		0.838438, -0.158660, 0.521391,
		41.738609, 27.154772, 25.410591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695381, 27.773067, 24.727045>,  <41.151703, 27.265833, 25.045616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695381, 27.773067, 24.727045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.877258, 27.462269, 24.901188>,  <41.986385, 27.275789, 25.005672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.877258, 27.462269, 24.901188>,  <41.695381, 27.773067, 24.727045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877258, 27.462269, 24.901188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569212, -0.122445, -0.813022,
		0.685022, 0.617482, 0.386601,
		0.454689, -0.776996, 0.435356,
		42.013664, 27.229170, 25.031796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410034, 27.775646, 24.529009>,  <41.695381, 27.773067, 24.727045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410034, 27.775646, 24.529009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406685, 27.403818, 24.676428>,  <42.404675, 27.180721, 24.764879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406685, 27.403818, 24.676428>,  <42.410034, 27.775646, 24.529009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406685, 27.403818, 24.676428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556685, -0.310502, -0.770513,
		0.830681, 0.198714, 0.520078,
		-0.008373, -0.929570, 0.368549,
		42.404171, 27.124947, 24.786993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104527, 27.497978, 24.339249>,  <42.410034, 27.775646, 24.529009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104527, 27.497978, 24.339249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.867565, 27.184853, 24.415421>,  <42.725388, 26.996977, 24.461123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.867565, 27.184853, 24.415421>,  <43.104527, 27.497978, 24.339249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867565, 27.184853, 24.415421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282927, -0.423458, -0.860602,
		0.754330, -0.455944, 0.472336,
		-0.592401, -0.782814, 0.190428,
		42.689846, 26.950008, 24.472549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491390, 26.915537, 24.262220>,  <43.104527, 27.497978, 24.339249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491390, 26.915537, 24.262220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124050, 26.760843, 24.228605>,  <42.903645, 26.668028, 24.208435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124050, 26.760843, 24.228605>,  <43.491390, 26.915537, 24.262220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124050, 26.760843, 24.228605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333006, -0.640366, -0.692127,
		0.213852, -0.663603, 0.716867,
		-0.918354, -0.386733, -0.084040,
		42.848545, 26.644823, 24.203394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670643, 26.259558, 24.086512>,  <43.491390, 26.915537, 24.262220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670643, 26.259558, 24.086512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.274490, 26.261341, 24.031206>,  <43.036797, 26.262411, 23.998024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.274490, 26.261341, 24.031206>,  <43.670643, 26.259558, 24.086512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274490, 26.261341, 24.031206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097416, -0.687134, -0.719970,
		-0.098214, -0.726517, 0.680094,
		-0.990386, 0.004459, -0.138261,
		42.977375, 26.262678, 23.989727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497715, 25.579838, 23.889174>,  <43.670643, 26.259558, 24.086512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497715, 25.579838, 23.889174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.204926, 25.806578, 23.737965>,  <43.029251, 25.942621, 23.647240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.204926, 25.806578, 23.737965>,  <43.497715, 25.579838, 23.889174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204926, 25.806578, 23.737965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099874, -0.459562, -0.882512,
		-0.673977, -0.683727, 0.279772,
		-0.731970, 0.566851, -0.378021,
		42.985332, 25.976633, 23.624557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145535, 25.080681, 23.471678>,  <43.497715, 25.579838, 23.889174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145535, 25.080681, 23.471678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.041672, 25.439402, 23.328390>,  <42.979355, 25.654634, 23.242418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.041672, 25.439402, 23.328390>,  <43.145535, 25.080681, 23.471678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041672, 25.439402, 23.328390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173476, -0.321591, -0.930852,
		-0.949992, -0.303845, -0.072071,
		-0.259657, 0.896804, -0.358219,
		42.963776, 25.708443, 23.220924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701206, 24.995934, 22.936256>,  <43.145535, 25.080681, 23.471678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701206, 24.995934, 22.936256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.779350, 25.377836, 22.846565>,  <42.826237, 25.606977, 22.792751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.779350, 25.377836, 22.846565>,  <42.701206, 24.995934, 22.936256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779350, 25.377836, 22.846565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160789, -0.256718, -0.953018,
		-0.967461, 0.150129, -0.203666,
		0.195361, 0.954755, -0.224226,
		42.837959, 25.664263, 22.779297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279503, 25.219509, 22.429310>,  <42.701206, 24.995934, 22.936256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279503, 25.219509, 22.429310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.630932, 25.409029, 22.405205>,  <42.841789, 25.522741, 22.390741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.630932, 25.409029, 22.405205>,  <42.279503, 25.219509, 22.429310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630932, 25.409029, 22.405205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031290, -0.182996, -0.982616,
		-0.476591, 0.861409, -0.175600,
		0.878568, 0.473801, -0.060261,
		42.894501, 25.551168, 22.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574009, 25.405533, 22.446680>,  <42.279503, 25.219509, 22.429310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574009, 25.405533, 22.446680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.487316, 25.557552, 22.086992>,  <41.435303, 25.648764, 21.871180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.487316, 25.557552, 22.086992>,  <41.574009, 25.405533, 22.446680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487316, 25.557552, 22.086992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684289, 0.597806, 0.417584,
		0.696260, 0.705827, 0.130502,
		-0.216727, 0.380048, -0.899218,
		41.422298, 25.671566, 21.817226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553997, 26.093435, 22.516878>,  <41.574009, 25.405533, 22.446680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553997, 26.093435, 22.516878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.315380, 25.982689, 22.215551>,  <41.172211, 25.916241, 22.034756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.315380, 25.982689, 22.215551>,  <41.553997, 26.093435, 22.516878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315380, 25.982689, 22.215551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771644, 0.455955, 0.443475,
		0.220698, 0.845844, -0.485635,
		-0.596538, -0.276864, -0.753318,
		41.136417, 25.899630, 21.989555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312260, 26.705145, 22.068460>,  <41.553997, 26.093435, 22.516878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312260, 26.705145, 22.068460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055206, 26.399796, 22.094629>,  <40.900974, 26.216585, 22.110331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055206, 26.399796, 22.094629>,  <41.312260, 26.705145, 22.068460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055206, 26.399796, 22.094629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689140, 0.613227, 0.386055,
		-0.334822, 0.203008, -0.920153,
		-0.642636, -0.763374, 0.065421,
		40.862415, 26.170784, 22.114256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657497, 27.085543, 22.113688>,  <41.312260, 26.705145, 22.068460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657497, 27.085543, 22.113688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538280, 26.717850, 22.216595>,  <40.466751, 26.497234, 22.278339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538280, 26.717850, 22.216595>,  <40.657497, 27.085543, 22.113688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538280, 26.717850, 22.216595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782254, 0.389661, 0.486048,
		-0.547037, -0.056384, -0.835207,
		-0.298042, -0.919231, 0.257266,
		40.448868, 26.442080, 22.293774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936863, 26.988903, 22.043400>,  <40.657497, 27.085543, 22.113688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936863, 26.988903, 22.043400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058620, 26.724255, 22.317511>,  <40.131676, 26.565464, 22.481977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058620, 26.724255, 22.317511>,  <39.936863, 26.988903, 22.043400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058620, 26.724255, 22.317511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575248, 0.445733, 0.685866,
		-0.759234, -0.602973, -0.244922,
		0.304389, -0.661623, 0.685275,
		40.149937, 26.525768, 22.523092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328697, 26.647364, 22.334181>,  <39.936863, 26.988903, 22.043400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328697, 26.647364, 22.334181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598984, 26.581234, 22.621534>,  <39.761154, 26.541555, 22.793947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598984, 26.581234, 22.621534>,  <39.328697, 26.647364, 22.334181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598984, 26.581234, 22.621534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571134, 0.498723, 0.651982,
		-0.466064, -0.850849, 0.242572,
		0.675715, -0.165324, 0.718386,
		39.801697, 26.531637, 22.837049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956448, 26.348455, 22.913063>,  <39.328697, 26.647364, 22.334181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956448, 26.348455, 22.913063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288013, 26.531715, 23.041435>,  <39.486954, 26.641670, 23.118460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288013, 26.531715, 23.041435>,  <38.956448, 26.348455, 22.913063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288013, 26.531715, 23.041435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521023, 0.423595, 0.741015,
		0.203549, -0.781453, 0.589830,
		0.828917, 0.458148, 0.320933,
		39.536690, 26.669161, 23.137714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079605, 26.125917, 23.537838>,  <38.956448, 26.348455, 22.913063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079605, 26.125917, 23.537838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326908, 26.438799, 23.568604>,  <39.475288, 26.626528, 23.587063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326908, 26.438799, 23.568604>,  <39.079605, 26.125917, 23.537838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326908, 26.438799, 23.568604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252693, 0.105155, 0.961815,
		0.744247, -0.614085, 0.262670,
		0.618258, 0.782203, 0.076914,
		39.512386, 26.673460, 23.591677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594200, 25.977999, 24.165724>,  <39.079605, 26.125917, 23.537838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594200, 25.977999, 24.165724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.527271, 26.366659, 24.098913>,  <39.487114, 26.599855, 24.058826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.527271, 26.366659, 24.098913>,  <39.594200, 25.977999, 24.165724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527271, 26.366659, 24.098913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110834, 0.149805, 0.982484,
		0.979652, 0.182905, 0.082626,
		-0.167324, 0.971650, -0.167029,
		39.477074, 26.658154, 24.048805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937935, 26.196497, 24.758892>,  <39.594200, 25.977999, 24.165724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937935, 26.196497, 24.758892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698814, 26.489920, 24.629568>,  <39.555340, 26.665974, 24.551973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698814, 26.489920, 24.629568>,  <39.937935, 26.196497, 24.758892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698814, 26.489920, 24.629568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040169, 0.375390, 0.925996,
		0.800636, 0.566551, -0.194944,
		-0.597803, 0.733555, -0.323308,
		39.519474, 26.709986, 24.532576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247112, 26.773317, 25.032434>,  <39.937935, 26.196497, 24.758892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247112, 26.773317, 25.032434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887604, 26.891287, 24.902676>,  <39.671898, 26.962069, 24.824820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887604, 26.891287, 24.902676>,  <40.247112, 26.773317, 25.032434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887604, 26.891287, 24.902676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171130, 0.445232, 0.878910,
		0.403642, 0.845452, -0.349692,
		-0.898770, 0.294922, -0.324397,
		39.617973, 26.979763, 24.805357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198856, 27.393871, 25.182003>,  <40.247112, 26.773317, 25.032434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198856, 27.393871, 25.182003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810028, 27.303364, 25.157089>,  <39.576733, 27.249060, 25.142141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810028, 27.303364, 25.157089>,  <40.198856, 27.393871, 25.182003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810028, 27.303364, 25.157089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144593, 0.368390, 0.918358,
		-0.184849, 0.901716, -0.390818,
		-0.972072, -0.226267, -0.062286,
		39.518406, 27.235483, 25.138403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861450, 27.956451, 25.353052>,  <40.198856, 27.393871, 25.182003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861450, 27.956451, 25.353052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573212, 27.686644, 25.417259>,  <39.400269, 27.524759, 25.455784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573212, 27.686644, 25.417259>,  <39.861450, 27.956451, 25.353052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573212, 27.686644, 25.417259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196814, 0.420975, 0.885463,
		-0.664836, 0.606468, -0.436107,
		-0.720595, -0.674520, 0.160518,
		39.357033, 27.484287, 25.465414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206493, 28.328941, 25.615614>,  <39.861450, 27.956451, 25.353052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206493, 28.328941, 25.615614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186417, 27.949429, 25.740383>,  <39.174370, 27.721722, 25.815245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186417, 27.949429, 25.740383>,  <39.206493, 28.328941, 25.615614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186417, 27.949429, 25.740383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278032, 0.313244, 0.908062,
		-0.959260, -0.041152, -0.279512,
		-0.050187, -0.948781, 0.311924,
		39.171360, 27.664795, 25.833960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644108, 28.280827, 25.934362>,  <39.206493, 28.328941, 25.615614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644108, 28.280827, 25.934362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831318, 27.950842, 26.061098>,  <38.943645, 27.752851, 26.137140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831318, 27.950842, 26.061098>,  <38.644108, 28.280827, 25.934362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831318, 27.950842, 26.061098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415283, 0.111160, 0.902875,
		-0.780059, -0.554146, -0.290567,
		0.468025, -0.824964, 0.316839,
		38.971725, 27.703352, 26.156151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102802, 27.997025, 26.375877>,  <38.644108, 28.280827, 25.934362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102802, 27.997025, 26.375877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459049, 27.854069, 26.488359>,  <38.672798, 27.768295, 26.555849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459049, 27.854069, 26.488359>,  <38.102802, 27.997025, 26.375877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459049, 27.854069, 26.488359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238572, 0.159247, 0.957979,
		-0.387154, -0.920278, 0.056565,
		0.890615, -0.357391, 0.281205,
		38.726234, 27.746851, 26.572721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963306, 27.502272, 26.928501>,  <38.102802, 27.997025, 26.375877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963306, 27.502272, 26.928501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.353596, 27.576159, 26.975552>,  <38.587769, 27.620491, 27.003782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.353596, 27.576159, 26.975552>,  <37.963306, 27.502272, 26.928501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353596, 27.576159, 26.975552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160170, 0.235673, 0.958543,
		0.149336, -0.954117, 0.259538,
		0.975728, 0.184715, 0.117626,
		38.646313, 27.631575, 27.010839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279800, 27.048304, 27.437336>,  <37.963306, 27.502272, 26.928501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279800, 27.048304, 27.437336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516090, 27.370417, 27.417091>,  <38.657864, 27.563684, 27.404945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516090, 27.370417, 27.417091>,  <38.279800, 27.048304, 27.437336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516090, 27.370417, 27.417091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120798, 0.150284, 0.981235,
		0.797779, -0.573527, 0.186053,
		0.590725, 0.805284, -0.050612,
		38.693310, 27.612001, 27.401907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687946, 27.043646, 28.046730>,  <38.279800, 27.048304, 27.437336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687946, 27.043646, 28.046730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.704502, 27.424368, 27.925169>,  <38.714436, 27.652802, 27.852232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.704502, 27.424368, 27.925169>,  <38.687946, 27.043646, 28.046730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704502, 27.424368, 27.925169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027413, 0.305128, 0.951917,
		0.998767, -0.031064, 0.038720,
		0.041385, 0.951805, -0.303901,
		38.716919, 27.709909, 27.834000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051685, 27.340147, 28.553976>,  <38.687946, 27.043646, 28.046730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051685, 27.340147, 28.553976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.892170, 27.660334, 28.374989>,  <38.796463, 27.852446, 28.267597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.892170, 27.660334, 28.374989>,  <39.051685, 27.340147, 28.553976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892170, 27.660334, 28.374989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025369, 0.478128, 0.877924,
		0.916694, 0.361454, -0.170363,
		-0.398784, 0.800465, -0.447467,
		38.772533, 27.900473, 28.240749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403648, 27.887596, 28.803595>,  <39.051685, 27.340147, 28.553976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403648, 27.887596, 28.803595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053070, 28.035879, 28.680679>,  <38.842724, 28.124847, 28.606930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053070, 28.035879, 28.680679>,  <39.403648, 27.887596, 28.803595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053070, 28.035879, 28.680679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071652, 0.530666, 0.844547,
		0.476145, 0.762214, -0.438537,
		-0.876443, 0.370705, -0.307288,
		38.790138, 28.147091, 28.588493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.165150, 31.625830, 32.267487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855850, 31.762009, 32.053501>,  <41.670269, 31.843716, 31.925112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855850, 31.762009, 32.053501>,  <42.165150, 31.625830, 32.267487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855850, 31.762009, 32.053501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094169, 0.772641, 0.627821,
		0.627070, 0.535839, -0.565385,
		-0.773250, 0.340446, -0.534959,
		41.623875, 31.864141, 31.893013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226540, 32.414009, 32.290344>,  <42.165150, 31.625830, 32.267487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226540, 32.414009, 32.290344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841743, 32.340736, 32.209324>,  <41.610867, 32.296772, 32.160713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841743, 32.340736, 32.209324>,  <42.226540, 32.414009, 32.290344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841743, 32.340736, 32.209324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272751, 0.681556, 0.679035,
		0.013661, 0.708468, -0.705611,
		-0.961988, -0.183179, -0.202546,
		41.553146, 32.285782, 32.148560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907150, 33.089291, 32.293694>,  <42.226540, 32.414009, 32.290344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907150, 33.089291, 32.293694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601681, 32.835236, 32.339989>,  <41.418400, 32.682800, 32.367767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601681, 32.835236, 32.339989>,  <41.907150, 33.089291, 32.293694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601681, 32.835236, 32.339989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427026, 0.631398, 0.647291,
		-0.484201, 0.444894, -0.753405,
		-0.763674, -0.635142, 0.115743,
		41.372578, 32.644691, 32.374710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322662, 33.485725, 32.393543>,  <41.907150, 33.089291, 32.293694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322662, 33.485725, 32.393543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188435, 33.137211, 32.536789>,  <41.107899, 32.928101, 32.622738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188435, 33.137211, 32.536789>,  <41.322662, 33.485725, 32.393543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188435, 33.137211, 32.536789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455587, 0.482849, 0.747862,
		-0.824521, 0.087805, -0.558977,
		-0.335568, -0.871290, 0.358116,
		41.087765, 32.875824, 32.644222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633511, 33.679947, 32.525230>,  <41.322662, 33.485725, 32.393543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633511, 33.679947, 32.525230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.731140, 33.353027, 32.734016>,  <40.789719, 33.156876, 32.859287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.731140, 33.353027, 32.734016>,  <40.633511, 33.679947, 32.525230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731140, 33.353027, 32.734016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479278, 0.366255, 0.797590,
		-0.843044, -0.444836, -0.302322,
		0.244070, -0.817299, 0.521969,
		40.804359, 33.107838, 32.890606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091209, 33.305759, 32.752304>,  <40.633511, 33.679947, 32.525230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091209, 33.305759, 32.752304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370514, 33.205421, 33.020485>,  <40.538097, 33.145218, 33.181393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370514, 33.205421, 33.020485>,  <40.091209, 33.305759, 32.752304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370514, 33.205421, 33.020485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596237, 0.314516, 0.738635,
		-0.396149, -0.915510, 0.070054,
		0.698261, -0.250841, 0.670456,
		40.579990, 33.130169, 33.221622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715149, 33.259827, 33.296379>,  <40.091209, 33.305759, 32.752304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715149, 33.259827, 33.296379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.076851, 33.237076, 33.465656>,  <40.293873, 33.223427, 33.567223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.076851, 33.237076, 33.465656>,  <39.715149, 33.259827, 33.296379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076851, 33.237076, 33.465656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373701, 0.374080, 0.848771,
		-0.206582, -0.925651, 0.317009,
		0.904252, -0.056875, 0.423195,
		40.348125, 33.220013, 33.592613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509869, 33.124660, 34.017658>,  <39.715149, 33.259827, 33.296379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509869, 33.124660, 34.017658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883850, 33.263618, 33.988880>,  <40.108238, 33.346992, 33.971615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883850, 33.263618, 33.988880>,  <39.509869, 33.124660, 34.017658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883850, 33.263618, 33.988880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145432, 0.560276, 0.815438,
		0.323590, -0.751934, 0.574355,
		0.934954, 0.347398, -0.071944,
		40.164337, 33.367840, 33.967297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790157, 33.051178, 34.602818>,  <39.509869, 33.124660, 34.017658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790157, 33.051178, 34.602818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007568, 33.346237, 34.442585>,  <40.138016, 33.523273, 34.346447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007568, 33.346237, 34.442585>,  <39.790157, 33.051178, 34.602818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007568, 33.346237, 34.442585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217485, 0.584682, 0.781567,
		0.810729, -0.337681, 0.478215,
		0.543524, 0.737644, -0.400578,
		40.170628, 33.567532, 34.322411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260674, 33.201584, 35.008293>,  <39.790157, 33.051178, 34.602818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260674, 33.201584, 35.008293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.254704, 33.529339, 34.779072>,  <40.251122, 33.725990, 34.641541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.254704, 33.529339, 34.779072>,  <40.260674, 33.201584, 35.008293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254704, 33.529339, 34.779072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456893, 0.504192, 0.732829,
		0.889396, 0.272761, 0.366846,
		-0.014926, 0.819385, -0.573049,
		40.250225, 33.775154, 34.607159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342571, 33.738514, 35.551746>,  <40.260674, 33.201584, 35.008293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342571, 33.738514, 35.551746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.182114, 33.910656, 35.228294>,  <40.085838, 34.013943, 35.034225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.182114, 33.910656, 35.228294>,  <40.342571, 33.738514, 35.551746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182114, 33.910656, 35.228294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478352, 0.654420, 0.585589,
		0.781191, 0.621716, -0.056659,
		-0.401149, 0.430354, -0.808625,
		40.061768, 34.039761, 34.985706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605663, 34.351223, 35.667305>,  <40.342571, 33.738514, 35.551746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605663, 34.351223, 35.667305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.287010, 34.381557, 35.427429>,  <40.095818, 34.399757, 35.283504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.287010, 34.381557, 35.427429>,  <40.605663, 34.351223, 35.667305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287010, 34.381557, 35.427429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349550, 0.751592, 0.559397,
		0.493145, 0.655254, -0.572232,
		-0.796632, 0.075840, -0.599687,
		40.048019, 34.404308, 35.247524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528904, 35.004227, 35.381294>,  <40.605663, 34.351223, 35.667305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528904, 35.004227, 35.381294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146835, 34.894054, 35.337864>,  <39.917595, 34.827950, 35.311806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146835, 34.894054, 35.337864>,  <40.528904, 35.004227, 35.381294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146835, 34.894054, 35.337864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291421, 0.810020, 0.508863,
		-0.052209, 0.517691, -0.853973,
		-0.955169, -0.275433, -0.108576,
		39.860283, 34.811424, 35.305290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233925, 35.497192, 35.008377>,  <40.528904, 35.004227, 35.381294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233925, 35.497192, 35.008377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008949, 35.326962, 35.291939>,  <39.873962, 35.224823, 35.462074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008949, 35.326962, 35.291939>,  <40.233925, 35.497192, 35.008377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008949, 35.326962, 35.291939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207852, 0.902609, 0.376955,
		-0.800288, 0.064667, -0.596119,
		-0.562438, -0.425577, 0.708906,
		39.840218, 35.199287, 35.504612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926678, 35.818542, 34.624680>,  <40.233925, 35.497192, 35.008377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926678, 35.818542, 34.624680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.076099, 36.075314, 34.356834>,  <41.165752, 36.229378, 34.196125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.076099, 36.075314, 34.356834>,  <40.926678, 35.818542, 34.624680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076099, 36.075314, 34.356834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395052, -0.543043, -0.740971,
		-0.839281, 0.541325, 0.050739,
		0.373553, 0.641928, -0.669617,
		41.188164, 36.267891, 34.155949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336918, 35.953369, 34.201267>,  <40.926678, 35.818542, 34.624680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336918, 35.953369, 34.201267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.651711, 36.070461, 33.984024>,  <40.840588, 36.140717, 33.853680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.651711, 36.070461, 33.984024>,  <40.336918, 35.953369, 34.201267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651711, 36.070461, 33.984024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441752, -0.347174, -0.827240,
		-0.430712, 0.890943, -0.143905,
		0.786983, 0.292732, -0.543108,
		40.887806, 36.158279, 33.821091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045017, 36.144466, 33.624664>,  <40.336918, 35.953369, 34.201267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045017, 36.144466, 33.624664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.425987, 36.059647, 33.537094>,  <40.654568, 36.008755, 33.484550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.425987, 36.059647, 33.537094>,  <40.045017, 36.144466, 33.624664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425987, 36.059647, 33.537094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282762, -0.346673, -0.894351,
		0.113747, 0.913704, -0.390137,
		0.952422, -0.212046, -0.218928,
		40.711716, 35.996033, 33.471416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222378, 36.529121, 32.895329>,  <40.045017, 36.144466, 33.624664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222378, 36.529121, 32.895329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496960, 36.241016, 32.935329>,  <40.661709, 36.068153, 32.959332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496960, 36.241016, 32.935329>,  <40.222378, 36.529121, 32.895329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496960, 36.241016, 32.935329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140618, -0.266415, -0.953546,
		0.713448, 0.640502, -0.284164,
		0.686454, -0.720264, 0.100007,
		40.702896, 36.024937, 32.965332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691605, 36.571804, 32.269386>,  <40.222378, 36.529121, 32.895329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691605, 36.571804, 32.269386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684071, 36.198715, 32.413425>,  <40.679550, 35.974861, 32.499847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684071, 36.198715, 32.413425>,  <40.691605, 36.571804, 32.269386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684071, 36.198715, 32.413425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258233, -0.343403, -0.902990,
		0.965899, -0.109999, -0.234392,
		-0.018837, -0.932724, 0.360097,
		40.678421, 35.918900, 32.521454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808022, 36.165279, 31.674101>,  <40.691605, 36.571804, 32.269386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808022, 36.165279, 31.674101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676014, 35.920670, 31.961748>,  <40.596809, 35.773903, 32.134335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676014, 35.920670, 31.961748>,  <40.808022, 36.165279, 31.674101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676014, 35.920670, 31.961748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558285, -0.487845, -0.671063,
		0.761186, -0.622936, -0.180406,
		-0.330019, -0.611522, 0.719117,
		40.577007, 35.737213, 32.177483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274567, 35.519699, 31.553471>,  <40.808022, 36.165279, 31.674101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274567, 35.519699, 31.553471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926113, 35.406033, 31.713657>,  <40.717041, 35.337833, 31.809769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926113, 35.406033, 31.713657>,  <41.274567, 35.519699, 31.553471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926113, 35.406033, 31.713657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186318, -0.563273, -0.804990,
		0.454325, -0.775869, 0.437740,
		-0.871134, -0.284168, 0.400467,
		40.664772, 35.320782, 31.833797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256371, 34.827026, 31.395916>,  <41.274567, 35.519699, 31.553471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256371, 34.827026, 31.395916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879700, 34.916348, 31.496624>,  <40.653698, 34.969940, 31.557049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879700, 34.916348, 31.496624>,  <41.256371, 34.827026, 31.395916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879700, 34.916348, 31.496624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335953, -0.667566, -0.664448,
		0.019700, -0.710276, 0.703648,
		-0.941673, 0.223303, 0.251770,
		40.597198, 34.983337, 31.572155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843903, 34.144440, 31.690218>,  <41.256371, 34.827026, 31.395916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843903, 34.144440, 31.690218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.592484, 34.423569, 31.552834>,  <40.441631, 34.591045, 31.470404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.592484, 34.423569, 31.552834>,  <40.843903, 34.144440, 31.690218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592484, 34.423569, 31.552834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394512, -0.666618, -0.632440,
		-0.670322, -0.261985, 0.694285,
		-0.628514, 0.697842, -0.343493,
		40.403919, 34.632915, 31.449795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263657, 33.770676, 31.673458>,  <40.843903, 34.144440, 31.690218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263657, 33.770676, 31.673458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207050, 34.097095, 31.449301>,  <40.173088, 34.292946, 31.314806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207050, 34.097095, 31.449301>,  <40.263657, 33.770676, 31.673458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207050, 34.097095, 31.449301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373278, -0.568292, -0.733285,
		-0.916862, 0.105411, 0.385035,
		-0.141516, 0.816047, -0.560393,
		40.164597, 34.341911, 31.281183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554344, 33.800655, 31.458305>,  <40.263657, 33.770676, 31.673458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554344, 33.800655, 31.458305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757942, 34.006794, 31.182524>,  <39.880100, 34.130478, 31.017056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757942, 34.006794, 31.182524>,  <39.554344, 33.800655, 31.458305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757942, 34.006794, 31.182524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221439, -0.695620, -0.683431,
		-0.831801, 0.500532, -0.239947,
		0.508991, 0.515345, -0.689454,
		39.910641, 34.161396, 30.975687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241810, 33.758671, 30.854681>,  <39.554344, 33.800655, 31.458305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241810, 33.758671, 30.854681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.600986, 33.865818, 30.715000>,  <39.816494, 33.930107, 30.631191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.600986, 33.865818, 30.715000>,  <39.241810, 33.758671, 30.854681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600986, 33.865818, 30.715000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148930, -0.561702, -0.813825,
		-0.414143, 0.782777, -0.464484,
		0.897945, 0.267864, -0.349204,
		39.870369, 33.946178, 30.610239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122311, 33.952686, 30.158646>,  <39.241810, 33.758671, 30.854681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122311, 33.952686, 30.158646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.501087, 33.827099, 30.186155>,  <39.728352, 33.751747, 30.202662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.501087, 33.827099, 30.186155>,  <39.122311, 33.952686, 30.158646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501087, 33.827099, 30.186155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116788, -0.535450, -0.836453,
		0.299448, 0.784037, -0.543706,
		0.946938, -0.313973, 0.068773,
		39.785168, 33.732906, 30.206787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324368, 33.829208, 29.421061>,  <39.122311, 33.952686, 30.158646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324368, 33.829208, 29.421061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642071, 33.662842, 29.598221>,  <39.832695, 33.563023, 29.704517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642071, 33.662842, 29.598221>,  <39.324368, 33.829208, 29.421061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642071, 33.662842, 29.598221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123727, -0.602965, -0.788115,
		0.594843, 0.680769, -0.427452,
		0.794263, -0.415918, 0.442899,
		39.880348, 33.538067, 29.731091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459557, 34.388779, 29.013699>,  <39.324368, 33.829208, 29.421061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459557, 34.388779, 29.013699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230148, 34.615433, 28.777058>,  <39.092503, 34.751427, 28.635073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230148, 34.615433, 28.777058>,  <39.459557, 34.388779, 29.013699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230148, 34.615433, 28.777058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550474, 0.268250, 0.790582,
		0.606671, 0.779078, 0.158071,
		-0.573523, 0.566638, -0.591602,
		39.058090, 34.785423, 28.599577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512852, 35.182457, 29.293501>,  <39.459557, 34.388779, 29.013699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512852, 35.182457, 29.293501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.176712, 35.122601, 29.085106>,  <38.975029, 35.086685, 28.960070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.176712, 35.122601, 29.085106>,  <39.512852, 35.182457, 29.293501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176712, 35.122601, 29.085106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527480, 0.447095, 0.722406,
		0.124829, 0.881881, -0.454647,
		-0.840346, -0.149640, -0.520986,
		38.924606, 35.077709, 28.928810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319263, 35.870174, 29.238008>,  <39.512852, 35.182457, 29.293501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319263, 35.870174, 29.238008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009960, 35.622932, 29.181408>,  <38.824379, 35.474586, 29.147448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009960, 35.622932, 29.181408>,  <39.319263, 35.870174, 29.238008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009960, 35.622932, 29.181408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545542, 0.534752, 0.645309,
		-0.323201, 0.576184, -0.750702,
		-0.773256, -0.618104, -0.141500,
		38.777985, 35.437500, 29.138958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847664, 36.354458, 29.353100>,  <39.319263, 35.870174, 29.238008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847664, 36.354458, 29.353100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669125, 35.997799, 29.383410>,  <38.562000, 35.783806, 29.401596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669125, 35.997799, 29.383410>,  <38.847664, 36.354458, 29.353100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669125, 35.997799, 29.383410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479866, 0.309968, 0.820761,
		-0.755315, 0.329984, -0.566224,
		-0.446349, -0.891645, 0.075775,
		38.535221, 35.730305, 29.406141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112270, 36.513191, 29.324272>,  <38.847664, 36.354458, 29.353100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112270, 36.513191, 29.324272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.160358, 36.149456, 29.483593>,  <38.189213, 35.931213, 29.579185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.160358, 36.149456, 29.483593>,  <38.112270, 36.513191, 29.324272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160358, 36.149456, 29.483593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605604, 0.250736, 0.755232,
		-0.786632, -0.332010, -0.520556,
		0.120222, -0.909341, 0.398304,
		38.196426, 35.876656, 29.603085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457115, 36.274540, 29.354542>,  <38.112270, 36.513191, 29.324272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457115, 36.274540, 29.354542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692436, 36.094994, 29.623590>,  <37.833630, 35.987267, 29.785019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692436, 36.094994, 29.623590>,  <37.457115, 36.274540, 29.354542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692436, 36.094994, 29.623590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644814, 0.241541, 0.725171,
		-0.487967, -0.860338, -0.147333,
		0.588305, -0.448862, 0.672622,
		37.868927, 35.960335, 29.825377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918404, 36.035488, 29.754175>,  <37.457115, 36.274540, 29.354542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918404, 36.035488, 29.754175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252941, 36.005592, 29.971407>,  <37.453663, 35.987656, 30.101746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252941, 36.005592, 29.971407>,  <36.918404, 36.035488, 29.754175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252941, 36.005592, 29.971407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512321, 0.245948, 0.822823,
		-0.195064, -0.966397, 0.167409,
		0.836347, -0.074736, 0.543081,
		37.503845, 35.983173, 30.134331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770145, 35.687828, 30.354073>,  <36.918404, 36.035488, 29.754175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770145, 35.687828, 30.354073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116482, 35.850483, 30.470669>,  <37.324284, 35.948074, 30.540627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116482, 35.850483, 30.470669>,  <36.770145, 35.687828, 30.354073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116482, 35.850483, 30.470669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384743, 0.168717, 0.907473,
		0.319834, -0.897875, 0.302533,
		0.865840, 0.406638, 0.291489,
		37.376236, 35.972473, 30.558115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847363, 35.487118, 31.111294>,  <36.770145, 35.687828, 30.354073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847363, 35.487118, 31.111294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.078323, 35.808849, 31.055204>,  <37.216900, 36.001888, 31.021551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.078323, 35.808849, 31.055204>,  <36.847363, 35.487118, 31.111294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078323, 35.808849, 31.055204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337668, 0.391616, 0.855930,
		0.743364, -0.446865, 0.497716,
		0.577399, 0.804331, -0.140222,
		37.251545, 36.050148, 31.013138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078041, 35.611034, 31.754871>,  <36.847363, 35.487118, 31.111294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078041, 35.611034, 31.754871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.117699, 35.950523, 31.547085>,  <37.141491, 36.154217, 31.422413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.117699, 35.950523, 31.547085>,  <37.078041, 35.611034, 31.754871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117699, 35.950523, 31.547085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475400, 0.499007, 0.724559,
		0.874166, 0.175122, 0.452953,
		0.099140, 0.848719, -0.519468,
		37.147442, 36.205139, 31.391245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196644, 36.048763, 32.287720>,  <37.078041, 35.611034, 31.754871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196644, 36.048763, 32.287720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104042, 36.277485, 31.972902>,  <37.048481, 36.414719, 31.784012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104042, 36.277485, 31.972902>,  <37.196644, 36.048763, 32.287720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104042, 36.277485, 31.972902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419079, 0.671491, 0.611124,
		0.877940, 0.471313, 0.084178,
		-0.231506, 0.571808, -0.787046,
		37.034592, 36.449028, 31.736788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446148, 36.760700, 32.366791>,  <37.196644, 36.048763, 32.287720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446148, 36.760700, 32.366791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.136284, 36.753189, 32.113949>,  <36.950367, 36.748684, 31.962244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.136284, 36.753189, 32.113949>,  <37.446148, 36.760700, 32.366791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136284, 36.753189, 32.113949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556303, 0.495566, 0.667040,
		0.300724, 0.868367, -0.394339,
		-0.774656, -0.018777, -0.632104,
		36.903889, 36.747555, 31.924318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.541801, 33.839840, 24.845821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157055, 33.923710, 24.916075>,  <39.926208, 33.974033, 24.958227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157055, 33.923710, 24.916075>,  <40.541801, 33.839840, 24.845821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157055, 33.923710, 24.916075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257282, 0.475650, 0.841167,
		0.092832, 0.854279, -0.511458,
		-0.961867, 0.209676, 0.175635,
		39.868496, 33.986614, 24.968765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444473, 34.516956, 24.982473>,  <40.541801, 33.839840, 24.845821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444473, 34.516956, 24.982473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124973, 34.354301, 25.159853>,  <39.933273, 34.256710, 25.266281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124973, 34.354301, 25.159853>,  <40.444473, 34.516956, 24.982473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124973, 34.354301, 25.159853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192685, 0.525338, 0.828790,
		-0.569975, 0.747442, -0.341261,
		-0.798749, -0.406633, 0.443451,
		39.885349, 34.232311, 25.292889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225014, 35.042370, 25.408041>,  <40.444473, 34.516956, 24.982473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225014, 35.042370, 25.408041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993580, 34.759373, 25.570368>,  <39.854721, 34.589573, 25.667765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993580, 34.759373, 25.570368>,  <40.225014, 35.042370, 25.408041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993580, 34.759373, 25.570368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078974, 0.543813, 0.835482,
		-0.811789, 0.451349, -0.370516,
		-0.578586, -0.707497, 0.405817,
		39.820004, 34.547123, 25.692112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774326, 35.356617, 25.880520>,  <40.225014, 35.042370, 25.408041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774326, 35.356617, 25.880520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747478, 34.981487, 26.016741>,  <39.731369, 34.756409, 26.098473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747478, 34.981487, 26.016741>,  <39.774326, 35.356617, 25.880520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747478, 34.981487, 26.016741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086920, 0.345520, 0.934377,
		-0.993952, 0.033114, -0.104706,
		-0.067119, -0.937827, 0.340552,
		39.727345, 34.700138, 26.118906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121929, 35.296062, 26.225416>,  <39.774326, 35.356617, 25.880520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121929, 35.296062, 26.225416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344666, 34.999298, 26.374809>,  <39.478310, 34.821239, 26.464445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344666, 34.999298, 26.374809>,  <39.121929, 35.296062, 26.225416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344666, 34.999298, 26.374809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281920, 0.254139, 0.925167,
		-0.781311, -0.620465, -0.067645,
		0.556842, -0.741914, 0.373484,
		39.511719, 34.776726, 26.486855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715569, 34.765213, 26.556438>,  <39.121929, 35.296062, 26.225416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715569, 34.765213, 26.556438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071053, 34.735367, 26.737385>,  <39.284344, 34.717457, 26.845953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071053, 34.735367, 26.737385>,  <38.715569, 34.765213, 26.556438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071053, 34.735367, 26.737385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452104, 0.021301, 0.891711,
		-0.076180, -0.996984, -0.014808,
		0.888706, -0.074626, 0.452363,
		39.337666, 34.712982, 26.873095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634121, 34.230072, 27.037575>,  <38.715569, 34.765213, 26.556438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634121, 34.230072, 27.037575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960186, 34.432350, 27.150557>,  <39.155827, 34.553715, 27.218346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960186, 34.432350, 27.150557>,  <38.634121, 34.230072, 27.037575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960186, 34.432350, 27.150557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350473, 0.042368, 0.935614,
		0.461165, -0.861674, 0.211768,
		0.815166, 0.505691, 0.282455,
		39.204735, 34.584057, 27.235292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733551, 33.960670, 27.720604>,  <38.634121, 34.230072, 27.037575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733551, 33.960670, 27.720604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974178, 34.277843, 27.759342>,  <39.118553, 34.468147, 27.782585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974178, 34.277843, 27.759342>,  <38.733551, 33.960670, 27.720604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974178, 34.277843, 27.759342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422690, 0.213093, 0.880866,
		0.677829, -0.570834, 0.463353,
		0.601565, 0.792931, 0.096845,
		39.154648, 34.515724, 27.788395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170986, 33.945160, 28.439917>,  <38.733551, 33.960670, 27.720604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170986, 33.945160, 28.439917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109486, 34.305847, 28.278296>,  <39.072586, 34.522259, 28.181322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109486, 34.305847, 28.278296>,  <39.170986, 33.945160, 28.439917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109486, 34.305847, 28.278296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463207, 0.295425, 0.835561,
		0.872811, 0.315632, 0.372260,
		-0.153755, 0.901720, -0.404054,
		39.063358, 34.576363, 28.157080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831440, 33.663177, 28.726175>,  <39.170986, 33.945160, 28.439917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831440, 33.663177, 28.726175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951241, 33.466362, 29.053148>,  <40.023121, 33.348274, 29.249332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951241, 33.466362, 29.053148>,  <39.831440, 33.663177, 28.726175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951241, 33.466362, 29.053148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164802, -0.817206, -0.552282,
		0.939754, 0.300125, -0.163669,
		0.299505, -0.492036, 0.817433,
		40.041092, 33.318752, 29.298378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619949, 33.381153, 28.631523>,  <39.831440, 33.663177, 28.726175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619949, 33.381153, 28.631523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484020, 33.153149, 28.930752>,  <40.402462, 33.016346, 29.110289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484020, 33.153149, 28.930752>,  <40.619949, 33.381153, 28.631523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484020, 33.153149, 28.930752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259603, -0.821355, -0.507919,
		0.903950, 0.021597, 0.427093,
		-0.339825, -0.570008, 0.748071,
		40.382072, 32.982147, 29.155172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134499, 32.985497, 28.850555>,  <40.619949, 33.381153, 28.631523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134499, 32.985497, 28.850555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800770, 32.793663, 28.959297>,  <40.600533, 32.678562, 29.024542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800770, 32.793663, 28.959297>,  <41.134499, 32.985497, 28.850555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800770, 32.793663, 28.959297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299833, -0.808584, -0.506253,
		0.462608, -0.340868, 0.818415,
		-0.834322, -0.479585, 0.271854,
		40.550472, 32.649788, 29.040854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365425, 32.332954, 28.905058>,  <41.134499, 32.985497, 28.850555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365425, 32.332954, 28.905058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970066, 32.274410, 28.888857>,  <40.732849, 32.239285, 28.879137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970066, 32.274410, 28.888857>,  <41.365425, 32.332954, 28.905058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970066, 32.274410, 28.888857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145610, -0.837642, -0.526454,
		0.043126, -0.526246, 0.849238,
		-0.988401, -0.146362, -0.040502,
		40.673546, 32.230503, 28.876705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151653, 31.657007, 29.323202>,  <41.365425, 32.332954, 28.905058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151653, 31.657007, 29.323202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904396, 31.744963, 29.021330>,  <40.756042, 31.797735, 28.840206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904396, 31.744963, 29.021330>,  <41.151653, 31.657007, 29.323202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904396, 31.744963, 29.021330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242269, -0.860047, -0.449027,
		-0.747796, -0.460400, 0.478364,
		-0.618148, 0.219887, -0.754681,
		40.718952, 31.810928, 28.794926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962967, 31.068075, 28.929863>,  <41.151653, 31.657007, 29.323202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962967, 31.068075, 28.929863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782372, 31.285620, 28.646915>,  <40.674015, 31.416147, 28.477146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782372, 31.285620, 28.646915>,  <40.962967, 31.068075, 28.929863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782372, 31.285620, 28.646915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164668, -0.728366, -0.665107,
		-0.876950, -0.416771, 0.239294,
		-0.451491, 0.543861, -0.707369,
		40.646923, 31.448778, 28.434704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565708, 30.666401, 28.576418>,  <40.962967, 31.068075, 28.929863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565708, 30.666401, 28.576418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573124, 30.951263, 28.295708>,  <40.577576, 31.122181, 28.127281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573124, 30.951263, 28.295708>,  <40.565708, 30.666401, 28.576418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573124, 30.951263, 28.295708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313720, -0.670594, -0.672222,
		-0.949334, -0.207697, -0.235852,
		0.018542, 0.712155, -0.701777,
		40.578686, 31.164909, 28.085175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196693, 30.410492, 27.968773>,  <40.565708, 30.666401, 28.576418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196693, 30.410492, 27.968773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460468, 30.689592, 27.856853>,  <40.618732, 30.857052, 27.789701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460468, 30.689592, 27.856853>,  <40.196693, 30.410492, 27.968773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460468, 30.689592, 27.856853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320751, -0.597760, -0.734712,
		-0.679900, 0.394749, -0.617988,
		0.659436, 0.697751, -0.279801,
		40.658298, 30.898918, 27.772913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244926, 30.517611, 27.185150>,  <40.196693, 30.410492, 27.968773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244926, 30.517611, 27.185150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597843, 30.653114, 27.315878>,  <40.809593, 30.734417, 27.394314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597843, 30.653114, 27.315878>,  <40.244926, 30.517611, 27.185150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597843, 30.653114, 27.315878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444156, -0.369245, -0.816323,
		-0.155861, 0.865390, -0.476243,
		0.882288, 0.338759, 0.326817,
		40.862530, 30.754742, 27.413923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353764, 30.862507, 26.626789>,  <40.244926, 30.517611, 27.185150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353764, 30.862507, 26.626789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709641, 30.856750, 26.809324>,  <40.923164, 30.853296, 26.918846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709641, 30.856750, 26.809324>,  <40.353764, 30.862507, 26.626789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709641, 30.856750, 26.809324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439959, -0.240106, -0.865324,
		0.122021, 0.970640, -0.207289,
		0.889689, -0.014389, 0.456340,
		40.976547, 30.852434, 26.946226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760483, 31.375616, 26.268942>,  <40.353764, 30.862507, 26.626789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760483, 31.375616, 26.268942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015568, 31.128050, 26.452362>,  <41.168617, 30.979511, 26.562414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015568, 31.128050, 26.452362>,  <40.760483, 31.375616, 26.268942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015568, 31.128050, 26.452362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228041, -0.416923, -0.879871,
		0.735744, 0.665673, -0.124739,
		0.637713, -0.618914, 0.458550,
		41.206882, 30.942375, 26.589928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342808, 31.442780, 25.983604>,  <40.760483, 31.375616, 26.268942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342808, 31.442780, 25.983604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405243, 31.087105, 26.155645>,  <41.442703, 30.873701, 26.258869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405243, 31.087105, 26.155645>,  <41.342808, 31.442780, 25.983604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405243, 31.087105, 26.155645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499561, -0.304577, -0.810969,
		0.852101, 0.341442, 0.396662,
		0.156085, -0.889185, 0.430102,
		41.452068, 30.820349, 26.284676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916615, 31.188799, 25.662577>,  <41.342808, 31.442780, 25.983604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916615, 31.188799, 25.662577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799114, 30.842411, 25.824469>,  <41.728615, 30.634579, 25.921604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799114, 30.842411, 25.824469>,  <41.916615, 31.188799, 25.662577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799114, 30.842411, 25.824469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381316, -0.494421, -0.781118,
		0.876531, -0.075128, 0.475447,
		-0.293755, -0.865970, 0.404728,
		41.710987, 30.582621, 25.945887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465050, 30.741426, 25.687557>,  <41.916615, 31.188799, 25.662577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465050, 30.741426, 25.687557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148582, 30.496872, 25.681086>,  <41.958702, 30.350140, 25.677202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148582, 30.496872, 25.681086>,  <42.465050, 30.741426, 25.687557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148582, 30.496872, 25.681086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407622, -0.507398, -0.759205,
		0.455958, -0.607252, 0.650651,
		-0.791168, -0.611385, -0.016177,
		41.911232, 30.313456, 25.676233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.425861, 27.916132, 26.662840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688324, 28.214172, 26.615046>,  <35.845802, 28.392998, 26.586369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688324, 28.214172, 26.615046>,  <35.425861, 27.916132, 26.662840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688324, 28.214172, 26.615046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382136, 0.464619, 0.798813,
		0.650712, -0.478490, 0.589594,
		0.656160, 0.745102, -0.119485,
		35.885174, 28.437702, 26.579201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580681, 28.084427, 27.303209>,  <35.425861, 27.916132, 26.662840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580681, 28.084427, 27.303209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.696255, 28.405569, 27.094620>,  <35.765598, 28.598255, 26.969465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.696255, 28.405569, 27.094620>,  <35.580681, 28.084427, 27.303209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696255, 28.405569, 27.094620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361047, 0.595868, 0.717346,
		0.886657, -0.018989, 0.462037,
		0.288935, 0.802858, -0.521475,
		35.782936, 28.646427, 26.938177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087620, 28.455204, 27.688505>,  <35.580681, 28.084427, 27.303209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087620, 28.455204, 27.688505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933174, 28.731382, 27.443815>,  <35.840508, 28.897089, 27.297001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933174, 28.731382, 27.443815>,  <36.087620, 28.455204, 27.688505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933174, 28.731382, 27.443815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195646, 0.586768, 0.785764,
		0.901466, 0.423073, -0.091474,
		-0.386110, 0.690444, -0.611724,
		35.817341, 28.938515, 27.260298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431107, 29.064518, 27.910566>,  <36.087620, 28.455204, 27.688505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431107, 29.064518, 27.910566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.112209, 29.187355, 27.702681>,  <35.920872, 29.261057, 27.577950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.112209, 29.187355, 27.702681>,  <36.431107, 29.064518, 27.910566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112209, 29.187355, 27.702681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160673, 0.721928, 0.673056,
		0.581887, 0.620091, -0.526209,
		-0.797240, 0.307095, -0.519712,
		35.873035, 29.279484, 27.546766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519657, 29.809298, 27.746876>,  <36.431107, 29.064518, 27.910566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519657, 29.809298, 27.746876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130665, 29.716730, 27.736084>,  <35.897270, 29.661190, 27.729609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130665, 29.716730, 27.736084>,  <36.519657, 29.809298, 27.746876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130665, 29.716730, 27.736084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185500, 0.698987, 0.690657,
		-0.140973, 0.676655, -0.722679,
		-0.972479, -0.231421, -0.026981,
		35.838921, 29.647305, 27.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117191, 30.495064, 27.870556>,  <36.519657, 29.809298, 27.746876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117191, 30.495064, 27.870556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844978, 30.208008, 27.929716>,  <35.681652, 30.035774, 27.965212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844978, 30.208008, 27.929716>,  <36.117191, 30.495064, 27.870556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844978, 30.208008, 27.929716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488110, 0.594553, 0.638949,
		-0.546470, 0.362631, -0.754897,
		-0.680529, -0.717639, 0.147902,
		35.640820, 29.992716, 27.974087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554466, 30.787493, 27.872934>,  <36.117191, 30.495064, 27.870556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554466, 30.787493, 27.872934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.469589, 30.448858, 28.068184>,  <35.418663, 30.245678, 28.185333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.469589, 30.448858, 28.068184>,  <35.554466, 30.787493, 27.872934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469589, 30.448858, 28.068184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466726, 0.526643, 0.710502,
		-0.858569, -0.077057, -0.506874,
		-0.212193, -0.846587, 0.488124,
		35.405930, 30.194881, 28.214621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937477, 30.954893, 28.182819>,  <35.554466, 30.787493, 27.872934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937477, 30.954893, 28.182819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103916, 30.660463, 28.396383>,  <35.203777, 30.483805, 28.524521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103916, 30.660463, 28.396383>,  <34.937477, 30.954893, 28.182819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103916, 30.660463, 28.396383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427771, 0.359676, 0.829244,
		-0.802420, -0.573435, -0.165212,
		0.416094, -0.736075, 0.533909,
		35.228745, 30.439640, 28.556557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430489, 30.830820, 28.689304>,  <34.937477, 30.954893, 28.182819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430489, 30.830820, 28.689304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.749020, 30.644655, 28.843836>,  <34.940140, 30.532957, 28.936554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.749020, 30.644655, 28.843836>,  <34.430489, 30.830820, 28.689304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749020, 30.644655, 28.843836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342399, 0.179660, 0.922218,
		-0.498620, -0.866668, -0.016288,
		0.796330, -0.465413, 0.386328,
		34.987919, 30.505032, 28.959734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145554, 30.426208, 29.187862>,  <34.430489, 30.830820, 28.689304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145554, 30.426208, 29.187862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532909, 30.475599, 29.274557>,  <34.765324, 30.505234, 29.326574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532909, 30.475599, 29.274557>,  <34.145554, 30.426208, 29.187862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532909, 30.475599, 29.274557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245629, 0.320694, 0.914779,
		0.043446, -0.939100, 0.340886,
		0.968390, 0.123476, 0.216738,
		34.823425, 30.512642, 29.339579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136429, 30.408600, 29.937300>,  <34.145554, 30.426208, 29.187862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136429, 30.408600, 29.937300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503521, 30.552801, 29.870600>,  <34.723778, 30.639322, 29.830580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503521, 30.552801, 29.870600>,  <34.136429, 30.408600, 29.937300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503521, 30.552801, 29.870600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105586, 0.626122, 0.772543,
		0.382909, -0.691382, 0.612676,
		0.917732, 0.360503, -0.166747,
		34.778839, 30.660952, 29.820576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564762, 30.236973, 30.463762>,  <34.136429, 30.408600, 29.937300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564762, 30.236973, 30.463762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731861, 30.566505, 30.310511>,  <34.832119, 30.764225, 30.218559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731861, 30.566505, 30.310511>,  <34.564762, 30.236973, 30.463762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731861, 30.566505, 30.310511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055826, 0.397617, 0.915852,
		0.906846, -0.403984, 0.120113,
		0.417748, 0.823831, -0.383130,
		34.857185, 30.813654, 30.195572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150391, 30.357300, 30.892267>,  <34.564762, 30.236973, 30.463762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150391, 30.357300, 30.892267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.085888, 30.713373, 30.721825>,  <35.047188, 30.927017, 30.619558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.085888, 30.713373, 30.721825>,  <35.150391, 30.357300, 30.892267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085888, 30.713373, 30.721825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012715, 0.429847, 0.902812,
		0.986831, 0.151001, -0.057996,
		-0.161255, 0.890185, -0.426106,
		35.037510, 30.980429, 30.593992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655445, 30.945702, 31.246241>,  <35.150391, 30.357300, 30.892267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655445, 30.945702, 31.246241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.381916, 31.173454, 31.063728>,  <35.217800, 31.310106, 30.954220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.381916, 31.173454, 31.063728>,  <35.655445, 30.945702, 31.246241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381916, 31.173454, 31.063728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074159, 0.567872, 0.819770,
		0.725870, 0.594414, -0.346098,
		-0.683822, 0.569380, -0.456282,
		35.176769, 31.344269, 30.926844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403374, 30.950733, 31.002081>,  <35.655445, 30.945702, 31.246241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403374, 30.950733, 31.002081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702000, 30.783983, 31.209488>,  <36.881176, 30.683933, 31.333933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702000, 30.783983, 31.209488>,  <36.403374, 30.950733, 31.002081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702000, 30.783983, 31.209488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142696, -0.660888, -0.736793,
		0.649833, 0.624052, -0.433907,
		0.746561, -0.416876, 0.518517,
		36.925968, 30.658920, 31.365044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991966, 31.053858, 30.497469>,  <36.403374, 30.950733, 31.002081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991966, 31.053858, 30.497469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095043, 30.764652, 30.753859>,  <37.156891, 30.591129, 30.907692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095043, 30.764652, 30.753859>,  <36.991966, 31.053858, 30.497469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095043, 30.764652, 30.753859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327719, -0.558651, -0.761911,
		0.908952, 0.406398, 0.092985,
		0.257693, -0.723014, 0.640972,
		37.172352, 30.547749, 30.946150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546650, 30.843596, 30.203711>,  <36.991966, 31.053858, 30.497469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546650, 30.843596, 30.203711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449440, 30.551720, 30.459364>,  <37.391113, 30.376595, 30.612755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449440, 30.551720, 30.459364>,  <37.546650, 30.843596, 30.203711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449440, 30.551720, 30.459364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183567, -0.681575, -0.708349,
		0.952493, -0.054822, 0.299586,
		-0.243024, -0.729692, 0.639132,
		37.376534, 30.332811, 30.651104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165195, 30.436050, 30.226051>,  <37.546650, 30.843596, 30.203711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165195, 30.436050, 30.226051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.838696, 30.221304, 30.311392>,  <37.642796, 30.092457, 30.362597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.838696, 30.221304, 30.311392>,  <38.165195, 30.436050, 30.226051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838696, 30.221304, 30.311392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360600, -0.762005, -0.537882,
		0.451344, -0.362109, 0.815577,
		-0.816245, -0.536866, 0.213350,
		37.593822, 30.060244, 30.375397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324989, 29.878139, 30.583942>,  <38.165195, 30.436050, 30.226051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324989, 29.878139, 30.583942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986500, 29.789190, 30.390257>,  <37.783405, 29.735821, 30.274046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986500, 29.789190, 30.390257>,  <38.324989, 29.878139, 30.583942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986500, 29.789190, 30.390257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464605, -0.752860, -0.466202,
		-0.260872, -0.619476, 0.740402,
		-0.846220, -0.222375, -0.484212,
		37.732635, 29.722477, 30.244993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312870, 29.155083, 30.518713>,  <38.324989, 29.878139, 30.583942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312870, 29.155083, 30.518713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029346, 29.227179, 30.245920>,  <37.859234, 29.270437, 30.082245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029346, 29.227179, 30.245920>,  <38.312870, 29.155083, 30.518713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029346, 29.227179, 30.245920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442605, -0.639167, -0.628941,
		-0.549262, -0.747649, 0.373273,
		-0.708811, 0.180241, -0.681983,
		37.816704, 29.281252, 30.041325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107681, 28.540922, 30.255957>,  <38.312870, 29.155083, 30.518713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107681, 28.540922, 30.255957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981483, 28.783384, 29.963919>,  <37.905766, 28.928862, 29.788696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981483, 28.783384, 29.963919>,  <38.107681, 28.540922, 30.255957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981483, 28.783384, 29.963919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352211, -0.639628, -0.683244,
		-0.881141, -0.472709, -0.011694,
		-0.315496, 0.606154, -0.730096,
		37.886833, 28.965231, 29.744890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904243, 28.103525, 29.837179>,  <38.107681, 28.540922, 30.255957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904243, 28.103525, 29.837179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942902, 28.443218, 29.629539>,  <37.966095, 28.647034, 29.504955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942902, 28.443218, 29.629539>,  <37.904243, 28.103525, 29.837179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942902, 28.443218, 29.629539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283568, -0.523419, -0.803506,
		-0.954070, -0.069546, -0.291400,
		0.096644, 0.849233, -0.519099,
		37.971893, 28.697989, 29.473810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572590, 28.042557, 29.232002>,  <37.904243, 28.103525, 29.837179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572590, 28.042557, 29.232002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826748, 28.341122, 29.152868>,  <37.979244, 28.520262, 29.105387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826748, 28.341122, 29.152868>,  <37.572590, 28.042557, 29.232002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826748, 28.341122, 29.152868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140576, -0.363734, -0.920834,
		-0.759284, 0.557282, -0.336043,
		0.635394, 0.746415, -0.197837,
		38.017365, 28.565046, 29.093517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483601, 28.278292, 28.545849>,  <37.572590, 28.042557, 29.232002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483601, 28.278292, 28.545849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855995, 28.408241, 28.612440>,  <38.079433, 28.486210, 28.652395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855995, 28.408241, 28.612440>,  <37.483601, 28.278292, 28.545849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855995, 28.408241, 28.612440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270228, -0.306724, -0.912632,
		-0.245425, 0.894639, -0.373346,
		0.930990, 0.324872, 0.166479,
		38.135292, 28.505703, 28.662384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791393, 28.573086, 27.855314>,  <37.483601, 28.278292, 28.545849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791393, 28.573086, 27.855314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.098206, 28.477867, 28.093639>,  <38.282295, 28.420736, 28.236635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.098206, 28.477867, 28.093639>,  <37.791393, 28.573086, 27.855314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098206, 28.477867, 28.093639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575160, -0.156439, -0.802944,
		0.284346, 0.958572, 0.016921,
		0.767032, -0.238046, 0.595815,
		38.328316, 28.406454, 28.272385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333538, 28.922031, 27.582804>,  <37.791393, 28.573086, 27.855314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333538, 28.922031, 27.582804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461357, 28.605114, 27.790710>,  <38.538048, 28.414963, 27.915455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461357, 28.605114, 27.790710>,  <38.333538, 28.922031, 27.582804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461357, 28.605114, 27.790710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555723, -0.287593, -0.780040,
		0.767504, 0.538105, 0.348397,
		0.319547, -0.792296, 0.519766,
		38.557220, 28.367426, 27.946640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076603, 28.885618, 27.457941>,  <38.333538, 28.922031, 27.582804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076603, 28.885618, 27.457941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.973537, 28.520874, 27.585770>,  <38.911697, 28.302029, 27.662466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.973537, 28.520874, 27.585770>,  <39.076603, 28.885618, 27.457941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973537, 28.520874, 27.585770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601806, -0.410202, -0.685247,
		0.755937, 0.015759, 0.654455,
		-0.257660, -0.911858, 0.319571,
		38.896240, 28.247316, 27.681641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651524, 28.436234, 27.484293>,  <39.076603, 28.885618, 27.457941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651524, 28.436234, 27.484293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344200, 28.181805, 27.455687>,  <39.159805, 28.029146, 27.438522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344200, 28.181805, 27.455687>,  <39.651524, 28.436234, 27.484293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344200, 28.181805, 27.455687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417719, -0.413602, -0.808977,
		0.484990, -0.651417, 0.583473,
		-0.768307, -0.636073, -0.071516,
		39.113708, 27.990982, 27.434231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267235, 28.017696, 27.804049>,  <39.651524, 28.436234, 27.484293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267235, 28.017696, 27.804049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659874, 28.043123, 27.732027>,  <40.895458, 28.058378, 27.688814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659874, 28.043123, 27.732027>,  <40.267235, 28.017696, 27.804049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659874, 28.043123, 27.732027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175124, 0.076098, 0.981601,
		0.076098, -0.995072, 0.063566,
		-0.981601, -0.063566, 0.180052,
		40.954353, 28.062193, 27.678011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567799, 27.685677, 28.279272>,  <40.267235, 28.017696, 27.804049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567799, 27.685677, 28.279272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891624, 27.901012, 28.185640>,  <41.085918, 28.030214, 28.129461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891624, 27.901012, 28.185640>,  <40.567799, 27.685677, 28.279272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891624, 27.901012, 28.185640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089905, 0.280347, 0.955679,
		0.580105, -0.794730, 0.178559,
		0.809565, 0.538340, -0.234081,
		41.134495, 28.062515, 28.115416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073246, 27.633295, 28.793600>,  <40.567799, 27.685677, 28.279272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073246, 27.633295, 28.793600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.168217, 27.986174, 28.630941>,  <41.225201, 28.197901, 28.533346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.168217, 27.986174, 28.630941>,  <41.073246, 27.633295, 28.793600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168217, 27.986174, 28.630941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140568, 0.383008, 0.912987,
		0.961181, -0.273930, -0.033071,
		0.237428, 0.882195, -0.406645,
		41.239445, 28.250832, 28.508947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703674, 27.804449, 29.129030>,  <41.073246, 27.633295, 28.793600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703674, 27.804449, 29.129030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.560722, 28.146559, 28.978943>,  <41.474953, 28.351824, 28.888891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.560722, 28.146559, 28.978943>,  <41.703674, 27.804449, 29.129030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560722, 28.146559, 28.978943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217310, 0.466870, 0.857210,
		0.908326, 0.224812, -0.352709,
		-0.357380, 0.855273, -0.375216,
		41.453506, 28.403141, 28.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974644, 28.350586, 29.564787>,  <41.703674, 27.804449, 29.129030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974644, 28.350586, 29.564787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.723515, 28.585388, 29.360332>,  <41.572838, 28.726269, 29.237659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.723515, 28.585388, 29.360332>,  <41.974644, 28.350586, 29.564787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723515, 28.585388, 29.360332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022607, 0.642661, 0.765817,
		0.778027, 0.492354, -0.390208,
		-0.627825, 0.587005, -0.511138,
		41.535168, 28.761490, 29.206991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293056, 29.071941, 29.426180>,  <41.974644, 28.350586, 29.564787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293056, 29.071941, 29.426180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.896667, 29.114574, 29.393660>,  <41.658833, 29.140154, 29.374147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.896667, 29.114574, 29.393660>,  <42.293056, 29.071941, 29.426180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896667, 29.114574, 29.393660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044500, 0.833662, 0.550479,
		0.126450, 0.541892, -0.830881,
		-0.990974, 0.106582, -0.081302,
		41.599377, 29.146549, 29.369268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256031, 29.798874, 29.454023>,  <42.293056, 29.071941, 29.426180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256031, 29.798874, 29.454023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.897430, 29.660915, 29.565258>,  <41.682270, 29.578140, 29.632000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.897430, 29.660915, 29.565258>,  <42.256031, 29.798874, 29.454023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897430, 29.660915, 29.565258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085659, 0.750770, 0.654986,
		-0.434683, 0.563375, -0.702609,
		-0.896500, -0.344896, 0.278089,
		41.628479, 29.557446, 29.648685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764458, 30.286299, 29.419947>,  <42.256031, 29.798874, 29.454023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764458, 30.286299, 29.419947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.648624, 30.030602, 29.704905>,  <41.579124, 29.877184, 29.875879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.648624, 30.030602, 29.704905>,  <41.764458, 30.286299, 29.419947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648624, 30.030602, 29.704905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240601, 0.769006, 0.592234,
		-0.926418, 0.000100, -0.376496,
		-0.289587, -0.639242, 0.712397,
		41.561749, 29.838829, 29.918623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109795, 30.401035, 29.637072>,  <41.764458, 30.286299, 29.419947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109795, 30.401035, 29.637072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.238182, 30.206966, 29.962423>,  <41.315216, 30.090525, 30.157635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.238182, 30.206966, 29.962423>,  <41.109795, 30.401035, 29.637072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238182, 30.206966, 29.962423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189334, 0.808612, 0.557045,
		-0.927971, -0.332795, 0.167680,
		0.320969, -0.485175, 0.813378,
		41.334473, 30.061415, 30.206436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728569, 30.627884, 30.177551>,  <41.109795, 30.401035, 29.637072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728569, 30.627884, 30.177551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016823, 30.437408, 30.379118>,  <41.189774, 30.323122, 30.500059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016823, 30.437408, 30.379118>,  <40.728569, 30.627884, 30.177551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016823, 30.437408, 30.379118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124657, 0.625985, 0.769807,
		-0.682021, -0.617564, 0.391744,
		0.720631, -0.476191, 0.503919,
		41.233013, 30.294552, 30.530294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420319, 30.359159, 30.876141>,  <40.728569, 30.627884, 30.177551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420319, 30.359159, 30.876141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810013, 30.448238, 30.861835>,  <41.043827, 30.501686, 30.853252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810013, 30.448238, 30.861835>,  <40.420319, 30.359159, 30.876141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810013, 30.448238, 30.861835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126024, 0.668946, 0.732549,
		0.187060, -0.709166, 0.679774,
		0.974231, 0.222699, -0.035761,
		41.102283, 30.515049, 30.851107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554634, 30.649370, 31.537535>,  <40.420319, 30.359159, 30.876141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554634, 30.649370, 31.537535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.895805, 30.746571, 31.352724>,  <41.100506, 30.804892, 31.241838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.895805, 30.746571, 31.352724>,  <40.554634, 30.649370, 31.537535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895805, 30.746571, 31.352724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113480, 0.777579, 0.618461,
		0.509548, -0.579932, 0.635641,
		0.852926, 0.243003, -0.462024,
		41.151684, 30.819471, 31.214117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021439, 30.684063, 32.087360>,  <40.554634, 30.649370, 31.537535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021439, 30.684063, 32.087360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173641, 30.902342, 31.788717>,  <41.264965, 31.033308, 31.609531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173641, 30.902342, 31.788717>,  <41.021439, 30.684063, 32.087360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173641, 30.902342, 31.788717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120842, 0.771080, 0.625167,
		0.916848, -0.328104, 0.227459,
		0.380509, 0.545696, -0.746612,
		41.287792, 31.066051, 31.564734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610264, 31.003162, 32.303352>,  <41.021439, 30.684063, 32.087360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610264, 31.003162, 32.303352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.532352, 31.233809, 31.985968>,  <41.485603, 31.372196, 31.795538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.532352, 31.233809, 31.985968>,  <41.610264, 31.003162, 32.303352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532352, 31.233809, 31.985968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001976, 0.809180, 0.587557,
		0.980844, 0.112878, -0.158753,
		-0.194782, 0.576616, -0.793457,
		41.473919, 31.406794, 31.747931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.791946, 30.059361, 25.475037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401585, 30.068968, 25.388290>,  <42.167366, 30.074732, 25.336243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401585, 30.068968, 25.388290>,  <42.791946, 30.059361, 25.475037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401585, 30.068968, 25.388290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186142, -0.426922, -0.884923,
		-0.113837, -0.903970, 0.412165,
		-0.975906, 0.024016, -0.216866,
		42.108814, 30.076174, 25.323231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731319, 29.444824, 25.195307>,  <42.791946, 30.059361, 25.475037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731319, 29.444824, 25.195307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.409775, 29.654963, 25.083725>,  <42.216846, 29.781046, 25.016775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.409775, 29.654963, 25.083725>,  <42.731319, 29.444824, 25.195307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409775, 29.654963, 25.083725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069601, -0.382677, -0.921257,
		-0.590730, -0.759979, 0.271054,
		-0.803862, 0.525348, -0.278954,
		42.168617, 29.812567, 25.000038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235119, 28.954927, 25.025385>,  <42.731319, 29.444824, 25.195307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235119, 28.954927, 25.025385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.158546, 29.293629, 24.826845>,  <42.112602, 29.496849, 24.707722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.158546, 29.293629, 24.826845>,  <42.235119, 28.954927, 25.025385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158546, 29.293629, 24.826845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074436, -0.491720, -0.867566,
		-0.978679, -0.203026, 0.031102,
		-0.191432, 0.846753, -0.496349,
		42.101116, 29.547655, 24.677940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948372, 28.633575, 24.466866>,  <42.235119, 28.954927, 25.025385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948372, 28.633575, 24.466866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.016567, 29.010509, 24.351665>,  <42.057484, 29.236670, 24.282545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.016567, 29.010509, 24.351665>,  <41.948372, 28.633575, 24.466866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016567, 29.010509, 24.351665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027397, -0.296698, -0.954578,
		-0.984979, 0.154852, -0.076400,
		0.170486, 0.942333, -0.287999,
		42.067715, 29.293209, 24.265266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452618, 28.801397, 23.920341>,  <41.948372, 28.633575, 24.466866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452618, 28.801397, 23.920341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758648, 29.055536, 23.878414>,  <41.942268, 29.208019, 23.853258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758648, 29.055536, 23.878414>,  <41.452618, 28.801397, 23.920341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758648, 29.055536, 23.878414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172512, -0.359062, -0.917232,
		-0.620396, 0.683674, -0.384316,
		0.765080, 0.635346, -0.104818,
		41.988171, 29.246140, 23.846968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339870, 29.209620, 23.355179>,  <41.452618, 28.801397, 23.920341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339870, 29.209620, 23.355179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.733051, 29.208395, 23.428719>,  <41.968960, 29.207661, 23.472841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.733051, 29.208395, 23.428719>,  <41.339870, 29.209620, 23.355179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733051, 29.208395, 23.428719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167629, -0.395982, -0.902828,
		0.075565, 0.918254, -0.388717,
		0.982950, -0.003062, 0.183848,
		42.027935, 29.207476, 23.483873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584339, 29.383808, 22.754948>,  <41.339870, 29.209620, 23.355179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584339, 29.383808, 22.754948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.909508, 29.243446, 22.940865>,  <42.104607, 29.159229, 23.052414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.909508, 29.243446, 22.940865>,  <41.584339, 29.383808, 22.754948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909508, 29.243446, 22.940865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263509, -0.490099, -0.830882,
		0.519354, 0.797916, -0.305944,
		0.812917, -0.350903, 0.464793,
		42.153381, 29.138176, 23.080303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116199, 29.525387, 22.239103>,  <41.584339, 29.383808, 22.754948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116199, 29.525387, 22.239103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.269180, 29.261860, 22.498238>,  <42.360970, 29.103743, 22.653717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.269180, 29.261860, 22.498238>,  <42.116199, 29.525387, 22.239103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269180, 29.261860, 22.498238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476899, -0.459779, -0.749113,
		0.791391, 0.595450, 0.138348,
		0.382450, -0.658819, 0.647835,
		42.383915, 29.064215, 22.692589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819458, 29.550232, 22.112446>,  <42.116199, 29.525387, 22.239103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819458, 29.550232, 22.112446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.737190, 29.189167, 22.263655>,  <42.687828, 28.972528, 22.354380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.737190, 29.189167, 22.263655>,  <42.819458, 29.550232, 22.112446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737190, 29.189167, 22.263655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408984, -0.430211, -0.804767,
		0.889062, -0.010914, 0.457657,
		-0.205672, -0.902662, 0.378021,
		42.675488, 28.918367, 22.377062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331902, 29.174465, 21.940863>,  <42.819458, 29.550232, 22.112446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331902, 29.174465, 21.940863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.064556, 28.896004, 22.045677>,  <42.904148, 28.728928, 22.108566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.064556, 28.896004, 22.045677>,  <43.331902, 29.174465, 21.940863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064556, 28.896004, 22.045677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306465, -0.578706, -0.755763,
		0.677771, -0.424817, 0.600131,
		-0.668361, -0.696154, 0.262038,
		42.864048, 28.687157, 22.124289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613663, 28.482965, 21.972834>,  <43.331902, 29.174465, 21.940863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613663, 28.482965, 21.972834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225109, 28.393801, 21.940035>,  <42.991978, 28.340302, 21.920355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225109, 28.393801, 21.940035>,  <43.613663, 28.482965, 21.972834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225109, 28.393801, 21.940035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202534, -0.597054, -0.776213,
		0.124070, -0.770608, 0.625116,
		-0.971384, -0.222912, -0.081998,
		42.933693, 28.326927, 21.915436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619640, 27.799582, 21.910067>,  <43.613663, 28.482965, 21.972834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619640, 27.799582, 21.910067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265560, 27.912348, 21.762047>,  <43.053112, 27.980007, 21.673235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265560, 27.912348, 21.762047>,  <43.619640, 27.799582, 21.910067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265560, 27.912348, 21.762047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157133, -0.567517, -0.808229,
		-0.437861, -0.773595, 0.458071,
		-0.885205, 0.281914, -0.370050,
		43.000000, 27.996922, 21.651031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321419, 27.222010, 21.819616>,  <43.619640, 27.799582, 21.910067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321419, 27.222010, 21.819616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168667, 27.505529, 21.582375>,  <43.077015, 27.675640, 21.440029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168667, 27.505529, 21.582375>,  <43.321419, 27.222010, 21.819616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168667, 27.505529, 21.582375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190892, -0.567412, -0.801002,
		-0.904284, -0.419105, 0.081379,
		-0.381879, 0.708798, -0.593105,
		43.054104, 27.718168, 21.404444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782318, 26.657425, 22.214956>,  <43.321419, 27.222010, 21.819616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782318, 26.657425, 22.214956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.488274, 26.387228, 22.237997>,  <43.311848, 26.225109, 22.251822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.488274, 26.387228, 22.237997>,  <43.782318, 26.657425, 22.214956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488274, 26.387228, 22.237997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381797, 0.482710, 0.788177,
		-0.560213, 0.557407, -0.612747,
		-0.735114, -0.675492, 0.057604,
		43.267738, 26.184580, 22.255278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337399, 26.827095, 22.754078>,  <43.782318, 26.657425, 22.214956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337399, 26.827095, 22.754078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.172127, 26.463263, 22.736441>,  <43.072964, 26.244963, 22.725859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.172127, 26.463263, 22.736441>,  <43.337399, 26.827095, 22.754078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172127, 26.463263, 22.736441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517140, 0.194506, 0.833507,
		-0.749567, 0.367189, -0.550747,
		-0.413178, -0.909582, -0.044093,
		43.048172, 26.190388, 22.723213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542965, 26.889631, 22.792307>,  <43.337399, 26.827095, 22.754078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542965, 26.889631, 22.792307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.656311, 26.529564, 22.924608>,  <42.724319, 26.313522, 23.003988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.656311, 26.529564, 22.924608>,  <42.542965, 26.889631, 22.792307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656311, 26.529564, 22.924608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385943, 0.208688, 0.898608,
		-0.877925, -0.382287, -0.288280,
		0.283366, -0.900170, 0.330753,
		42.741322, 26.259514, 23.023834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942715, 26.608635, 23.147419>,  <42.542965, 26.889631, 22.792307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942715, 26.608635, 23.147419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.276070, 26.439945, 23.290310>,  <42.476082, 26.338732, 23.376045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.276070, 26.439945, 23.290310>,  <41.942715, 26.608635, 23.147419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276070, 26.439945, 23.290310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225138, 0.331254, 0.916288,
		-0.504754, -0.844050, 0.181117,
		0.833388, -0.421724, 0.357229,
		42.526085, 26.313429, 23.397478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941982, 25.975117, 23.400230>,  <41.942715, 26.608635, 23.147419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941982, 25.975117, 23.400230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250896, 26.130507, 23.601292>,  <42.436245, 26.223740, 23.721928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250896, 26.130507, 23.601292>,  <41.941982, 25.975117, 23.400230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250896, 26.130507, 23.601292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627490, 0.343012, 0.698998,
		0.099126, -0.855237, 0.508668,
		0.772289, 0.388473, 0.502652,
		42.482582, 26.247049, 23.752087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676746, 26.059692, 24.099184>,  <41.941982, 25.975117, 23.400230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676746, 26.059692, 24.099184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.025620, 26.254919, 24.112337>,  <42.234943, 26.372055, 24.120228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.025620, 26.254919, 24.112337>,  <41.676746, 26.059692, 24.099184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025620, 26.254919, 24.112337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338566, 0.553775, 0.760728,
		0.353076, -0.674629, 0.648238,
		0.872187, 0.488066, 0.032882,
		42.287277, 26.401339, 24.122202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984486, 25.865431, 24.708279>,  <41.676746, 26.059692, 24.099184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984486, 25.865431, 24.708279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.193577, 26.202682, 24.657867>,  <42.319031, 26.405033, 24.627621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.193577, 26.202682, 24.657867>,  <41.984486, 25.865431, 24.708279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193577, 26.202682, 24.657867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109033, 0.212742, 0.971006,
		0.845497, -0.493833, 0.203136,
		0.522730, 0.843131, -0.126029,
		42.350395, 26.455622, 24.620058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427563, 25.929651, 25.289906>,  <41.984486, 25.865431, 24.708279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427563, 25.929651, 25.289906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420700, 26.299854, 25.138571>,  <42.416584, 26.521976, 25.047770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420700, 26.299854, 25.138571>,  <42.427563, 25.929651, 25.289906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420700, 26.299854, 25.138571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020721, 0.378640, 0.925312,
		0.999638, 0.008033, -0.025673,
		-0.017154, 0.925509, -0.378336,
		42.415554, 26.577507, 25.025070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705780, 26.383226, 25.744246>,  <42.427563, 25.929651, 25.289906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705780, 26.383226, 25.744246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.497417, 26.643364, 25.523081>,  <42.372402, 26.799446, 25.390383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.497417, 26.643364, 25.523081>,  <42.705780, 26.383226, 25.744246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497417, 26.643364, 25.523081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253227, 0.500842, 0.827667,
		0.815189, 0.571148, -0.096206,
		-0.520905, 0.650344, -0.552912,
		42.341145, 26.838467, 25.357208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867752, 27.100885, 25.997595>,  <42.705780, 26.383226, 25.744246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867752, 27.100885, 25.997595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518017, 27.110668, 25.803717>,  <42.308174, 27.116537, 25.687389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518017, 27.110668, 25.803717>,  <42.867752, 27.100885, 25.997595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518017, 27.110668, 25.803717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372417, 0.606574, 0.702406,
		0.311183, 0.794650, -0.521244,
		-0.874340, 0.024457, -0.484697,
		42.255714, 27.118006, 25.658308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597813, 27.762484, 26.145975>,  <42.867752, 27.100885, 25.997595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597813, 27.762484, 26.145975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258587, 27.583925, 26.031763>,  <42.055054, 27.476791, 25.963236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258587, 27.583925, 26.031763>,  <42.597813, 27.762484, 26.145975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258587, 27.583925, 26.031763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490092, 0.455841, 0.742979,
		-0.201505, 0.770027, -0.605355,
		-0.848060, -0.446394, -0.285529,
		42.004169, 27.450006, 25.946104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046055, 28.232706, 26.161177>,  <42.597813, 27.762484, 26.145975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046055, 28.232706, 26.161177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826534, 27.898748, 26.178005>,  <41.694824, 27.698374, 26.188103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826534, 27.898748, 26.178005>,  <42.046055, 28.232706, 26.161177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826534, 27.898748, 26.178005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522928, 0.382128, 0.761922,
		-0.652200, 0.396143, -0.646301,
		-0.548799, -0.834895, 0.042070,
		41.661896, 27.648279, 26.190626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441364, 28.523594, 26.271725>,  <42.046055, 28.232706, 26.161177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441364, 28.523594, 26.271725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.412933, 28.137596, 26.372705>,  <41.395874, 27.905996, 26.433294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.412933, 28.137596, 26.372705>,  <41.441364, 28.523594, 26.271725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412933, 28.137596, 26.372705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435729, 0.257704, 0.862397,
		-0.897267, -0.048702, -0.438794,
		-0.071079, -0.964996, 0.252450,
		41.391609, 27.848097, 26.448441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790089, 28.573906, 26.621696>,  <41.441364, 28.523594, 26.271725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790089, 28.573906, 26.621696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.974979, 28.237413, 26.733892>,  <41.085915, 28.035519, 26.801210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.974979, 28.237413, 26.733892>,  <40.790089, 28.573906, 26.621696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974979, 28.237413, 26.733892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158761, 0.232693, 0.959504,
		-0.872433, -0.488042, -0.025997,
		0.462230, -0.841230, 0.280491,
		41.113647, 27.985044, 26.818039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411900, 28.408773, 27.229706>,  <40.790089, 28.573906, 26.621696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411900, 28.408773, 27.229706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759441, 28.211098, 27.241455>,  <40.967968, 28.092491, 27.248505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759441, 28.211098, 27.241455>,  <40.411900, 28.408773, 27.229706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759441, 28.211098, 27.241455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064139, 0.171196, 0.983147,
		-0.490891, -0.852330, 0.180441,
		0.868857, -0.494192, 0.029371,
		41.020100, 28.062840, 27.250267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903206, 27.814976, 27.215685>,  <40.411900, 28.408773, 27.229706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903206, 27.814976, 27.215685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514145, 27.734062, 27.170015>,  <39.280708, 27.685514, 27.142614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514145, 27.734062, 27.170015>,  <39.903206, 27.814976, 27.215685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514145, 27.734062, 27.170015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199321, -0.474464, -0.857412,
		0.119271, -0.856717, 0.501807,
		-0.972649, -0.202285, -0.114171,
		39.222351, 27.673376, 27.135763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823978, 27.180759, 27.067301>,  <39.903206, 27.814976, 27.215685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823978, 27.180759, 27.067301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.497425, 27.345959, 26.905836>,  <39.301491, 27.445078, 26.808958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.497425, 27.345959, 26.905836>,  <39.823978, 27.180759, 27.067301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497425, 27.345959, 26.905836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158096, -0.512443, -0.844043,
		-0.555448, -0.752881, 0.353056,
		-0.816384, 0.413005, -0.403662,
		39.252510, 27.469858, 26.784739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493378, 26.634163, 26.732456>,  <39.823978, 27.180759, 27.067301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493378, 26.634163, 26.732456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348259, 26.959602, 26.550714>,  <39.261189, 27.154865, 26.441669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348259, 26.959602, 26.550714>,  <39.493378, 26.634163, 26.732456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348259, 26.959602, 26.550714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113882, -0.445209, -0.888155,
		-0.924882, -0.373965, 0.068868,
		-0.362800, 0.813596, -0.454354,
		39.239418, 27.203682, 26.414408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113857, 26.383793, 26.132881>,  <39.493378, 26.634163, 26.732456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113857, 26.383793, 26.132881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139549, 26.771564, 26.038158>,  <39.154964, 27.004229, 25.981325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139549, 26.771564, 26.038158>,  <39.113857, 26.383793, 26.132881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139549, 26.771564, 26.038158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040281, -0.239622, -0.970030,
		-0.997121, 0.052771, -0.054441,
		0.064235, 0.969431, -0.236807,
		39.158821, 27.062393, 25.967117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557785, 26.421898, 25.612625>,  <39.113857, 26.383793, 26.132881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557785, 26.421898, 25.612625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778244, 26.753923, 25.578611>,  <38.910519, 26.953138, 25.558203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778244, 26.753923, 25.578611>,  <38.557785, 26.421898, 25.612625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778244, 26.753923, 25.578611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008055, -0.096610, -0.995290,
		-0.834370, 0.549235, -0.046561,
		0.551146, 0.830065, -0.085033,
		38.943588, 27.002943, 25.553102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214779, 26.966204, 25.083315>,  <38.557785, 26.421898, 25.612625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214779, 26.966204, 25.083315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605522, 27.050308, 25.098965>,  <38.839970, 27.100771, 25.108355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605522, 27.050308, 25.098965>,  <38.214779, 26.966204, 25.083315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605522, 27.050308, 25.098965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052556, -0.058677, -0.996893,
		-0.207310, 0.975883, -0.068370,
		0.976862, 0.210259, 0.039125,
		38.898582, 27.113386, 25.110703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403439, 27.469938, 24.533821>,  <38.214779, 26.966204, 25.083315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403439, 27.469938, 24.533821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.763950, 27.321955, 24.623999>,  <38.980259, 27.233164, 24.678104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.763950, 27.321955, 24.623999>,  <38.403439, 27.469938, 24.533821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763950, 27.321955, 24.623999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246133, 0.009018, -0.969194,
		0.356528, 0.929005, 0.099187,
		0.901280, -0.369958, 0.225443,
		39.034336, 27.210968, 24.691631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039112, 28.054710, 24.426197>,  <38.403439, 27.469938, 24.533821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039112, 28.054710, 24.426197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701603, 28.028378, 24.213139>,  <37.499096, 28.012577, 24.085302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701603, 28.028378, 24.213139>,  <38.039112, 28.054710, 24.426197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701603, 28.028378, 24.213139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534301, 0.196790, 0.822068,
		0.050701, 0.978233, -0.201221,
		-0.843772, -0.065832, -0.532648,
		37.448471, 28.008627, 24.053345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629509, 28.710482, 24.368744>,  <38.039112, 28.054710, 24.426197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629509, 28.710482, 24.368744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.375557, 28.402519, 24.342888>,  <37.223186, 28.217741, 24.327374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.375557, 28.402519, 24.342888>,  <37.629509, 28.710482, 24.368744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375557, 28.402519, 24.342888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558018, 0.399064, 0.727574,
		-0.534367, 0.497989, -0.682977,
		-0.634876, -0.769906, -0.064640,
		37.185093, 28.171547, 24.323496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053707, 29.076103, 24.501999>,  <37.629509, 28.710482, 24.368744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053707, 29.076103, 24.501999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.961075, 28.692541, 24.567566>,  <36.905495, 28.462404, 24.606907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.961075, 28.692541, 24.567566>,  <37.053707, 29.076103, 24.501999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961075, 28.692541, 24.567566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598830, 0.273306, 0.752799,
		-0.766664, 0.076176, -0.637514,
		-0.231582, -0.958906, 0.163917,
		36.891602, 28.404869, 24.616741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309467, 29.072294, 24.615376>,  <37.053707, 29.076103, 24.501999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309467, 29.072294, 24.615376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.434345, 28.725426, 24.770576>,  <36.509274, 28.517305, 24.863697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.434345, 28.725426, 24.770576>,  <36.309467, 29.072294, 24.615376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434345, 28.725426, 24.770576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506609, 0.193537, 0.840173,
		-0.803668, -0.458864, -0.378895,
		0.312195, -0.867172, 0.388004,
		36.528004, 28.465275, 24.886978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760536, 29.014666, 25.143717>,  <36.309467, 29.072294, 24.615376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760536, 29.014666, 25.143717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006081, 28.706139, 25.210936>,  <36.153408, 28.521023, 25.251266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006081, 28.706139, 25.210936>,  <35.760536, 29.014666, 25.143717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006081, 28.706139, 25.210936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433017, -0.151012, 0.888646,
		-0.660052, -0.618274, -0.426695,
		0.613862, -0.771319, 0.168048,
		36.190239, 28.474743, 25.261351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401756, 28.465218, 25.427454>,  <35.760536, 29.014666, 25.143717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401756, 28.465218, 25.427454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769573, 28.426208, 25.579735>,  <35.990261, 28.402803, 25.671104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769573, 28.426208, 25.579735>,  <35.401756, 28.465218, 25.427454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769573, 28.426208, 25.579735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375033, 0.071768, 0.924229,
		-0.117457, -0.992642, 0.029418,
		0.919540, -0.097525, 0.380703,
		36.045437, 28.396952, 25.693945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318035, 28.052015, 25.965954>,  <35.401756, 28.465218, 25.427454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318035, 28.052015, 25.965954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666752, 28.234295, 26.037857>,  <35.875984, 28.343662, 26.080999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666752, 28.234295, 26.037857>,  <35.318035, 28.052015, 25.965954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666752, 28.234295, 26.037857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311651, 0.232828, 0.921230,
		0.377954, -0.859143, 0.344998,
		0.871793, 0.455702, 0.179755,
		35.928291, 28.371004, 26.091784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.677380, 29.437597, 20.050962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961304, 29.310219, 20.302284>,  <41.131657, 29.233791, 20.453077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961304, 29.310219, 20.302284>,  <40.677380, 29.437597, 20.050962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961304, 29.310219, 20.302284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457821, 0.469320, 0.755075,
		-0.535327, -0.823608, 0.187335,
		0.709806, -0.318446, 0.628305,
		41.174244, 29.214685, 20.490776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259758, 29.180550, 20.637474>,  <40.677380, 29.437597, 20.050962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259758, 29.180550, 20.637474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639496, 29.229136, 20.753393>,  <40.867340, 29.258287, 20.822945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639496, 29.229136, 20.753393>,  <40.259758, 29.180550, 20.637474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639496, 29.229136, 20.753393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312949, 0.448502, 0.837203,
		-0.028283, -0.885490, 0.463797,
		0.949349, 0.121466, 0.289799,
		40.924301, 29.265575, 20.840332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283524, 29.090124, 21.333282>,  <40.259758, 29.180550, 20.637474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283524, 29.090124, 21.333282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627666, 29.292860, 21.311768>,  <40.834152, 29.414501, 21.298859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627666, 29.292860, 21.311768>,  <40.283524, 29.090124, 21.333282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627666, 29.292860, 21.311768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331686, 0.636888, 0.695958,
		0.386995, -0.580935, 0.716066,
		0.860360, 0.506842, -0.053784,
		40.885773, 29.444912, 21.295631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502281, 29.244942, 22.006861>,  <40.283524, 29.090124, 21.333282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502281, 29.244942, 22.006861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.680771, 29.512211, 21.768724>,  <40.787865, 29.672571, 21.625843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.680771, 29.512211, 21.768724>,  <40.502281, 29.244942, 22.006861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680771, 29.512211, 21.768724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317338, 0.740154, 0.592847,
		0.836767, -0.075619, 0.542312,
		0.446225, 0.668172, -0.595340,
		40.814640, 29.712662, 21.590122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944157, 29.659206, 22.470579>,  <40.502281, 29.244942, 22.006861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944157, 29.659206, 22.470579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892445, 29.875532, 22.138121>,  <40.861416, 30.005327, 21.938644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892445, 29.875532, 22.138121>,  <40.944157, 29.659206, 22.470579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892445, 29.875532, 22.138121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246507, 0.794342, 0.555207,
		0.960479, 0.276661, 0.030621,
		-0.129281, 0.540813, -0.831148,
		40.853661, 30.037777, 21.888777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328094, 30.223579, 22.569031>,  <40.944157, 29.659206, 22.470579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328094, 30.223579, 22.569031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028481, 30.315851, 22.320599>,  <40.848713, 30.371214, 22.171539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028481, 30.315851, 22.320599>,  <41.328094, 30.223579, 22.569031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028481, 30.315851, 22.320599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266935, 0.752900, 0.601570,
		0.606380, 0.616383, -0.502370,
		-0.749032, 0.230680, -0.621078,
		40.803772, 30.385056, 22.134275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420704, 30.918556, 22.607042>,  <41.328094, 30.223579, 22.569031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420704, 30.918556, 22.607042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.051876, 30.876469, 22.458065>,  <40.830578, 30.851215, 22.368679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.051876, 30.876469, 22.458065>,  <41.420704, 30.918556, 22.607042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051876, 30.876469, 22.458065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302767, 0.795549, 0.524818,
		0.241074, 0.596683, -0.765410,
		-0.922071, -0.105221, -0.372442,
		40.775253, 30.844902, 22.346333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121307, 31.598391, 22.666765>,  <41.420704, 30.918556, 22.607042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121307, 31.598391, 22.666765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796417, 31.383690, 22.575380>,  <40.601482, 31.254869, 22.520550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796417, 31.383690, 22.575380>,  <41.121307, 31.598391, 22.666765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796417, 31.383690, 22.575380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570767, 0.650324, 0.501303,
		-0.120501, 0.537567, -0.834566,
		-0.812222, -0.536750, -0.228461,
		40.552750, 31.222666, 22.506842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609642, 32.010170, 22.370546>,  <41.121307, 31.598391, 22.666765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609642, 32.010170, 22.370546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.387909, 31.705097, 22.503838>,  <40.254871, 31.522055, 22.583813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.387909, 31.705097, 22.503838>,  <40.609642, 32.010170, 22.370546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387909, 31.705097, 22.503838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690137, 0.644990, 0.328175,
		-0.465220, -0.048056, -0.883890,
		-0.554329, -0.762679, 0.333228,
		40.221611, 31.476294, 22.603806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010063, 32.179333, 22.134550>,  <40.609642, 32.010170, 22.370546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010063, 32.179333, 22.134550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.975266, 31.950569, 22.460827>,  <39.954388, 31.813311, 22.656593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.975266, 31.950569, 22.460827>,  <40.010063, 32.179333, 22.134550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975266, 31.950569, 22.460827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414663, 0.765281, 0.492341,
		-0.905807, -0.295404, -0.303729,
		-0.086999, -0.571911, 0.815690,
		39.949165, 31.778996, 22.705534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314274, 32.234585, 22.404154>,  <40.010063, 32.179333, 22.134550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314274, 32.234585, 22.404154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.514904, 32.111420, 22.727539>,  <39.635284, 32.037521, 22.921570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.514904, 32.111420, 22.727539>,  <39.314274, 32.234585, 22.404154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514904, 32.111420, 22.727539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590927, 0.560589, 0.580126,
		-0.631843, -0.768719, 0.099223,
		0.501577, -0.307915, 0.808461,
		39.665379, 32.019047, 22.970078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788094, 32.159222, 22.963619>,  <39.314274, 32.234585, 22.404154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788094, 32.159222, 22.963619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.142761, 32.218613, 23.138788>,  <39.355560, 32.254246, 23.243889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.142761, 32.218613, 23.138788>,  <38.788094, 32.159222, 22.963619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142761, 32.218613, 23.138788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426191, 0.629815, 0.649380,
		-0.179393, -0.762422, 0.621716,
		0.886667, 0.148476, 0.437922,
		39.408760, 32.263157, 23.270164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217087, 31.731741, 23.216814>,  <38.788094, 32.159222, 22.963619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217087, 31.731741, 23.216814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819069, 31.744465, 23.254492>,  <37.580257, 31.752098, 23.277098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819069, 31.744465, 23.254492>,  <38.217087, 31.731741, 23.216814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819069, 31.744465, 23.254492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089316, -0.702143, -0.706412,
		0.043668, -0.711325, 0.701505,
		-0.995046, 0.031808, 0.094194,
		37.520554, 31.754007, 23.282749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045494, 31.038000, 23.267330>,  <38.217087, 31.731741, 23.216814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045494, 31.038000, 23.267330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727100, 31.250284, 23.150881>,  <37.536064, 31.377655, 23.081011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727100, 31.250284, 23.150881>,  <38.045494, 31.038000, 23.267330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727100, 31.250284, 23.150881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252907, -0.728539, -0.636607,
		-0.549948, -0.433104, 0.714128,
		-0.795987, 0.530709, -0.291124,
		37.488304, 31.409496, 23.063543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461651, 30.663731, 23.305162>,  <38.045494, 31.038000, 23.267330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461651, 30.663731, 23.305162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.357670, 30.941763, 23.037046>,  <37.295280, 31.108582, 22.876177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.357670, 30.941763, 23.037046>,  <37.461651, 30.663731, 23.305162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357670, 30.941763, 23.037046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338715, -0.715685, -0.610792,
		-0.904265, 0.068259, 0.421480,
		-0.259955, 0.695079, -0.670290,
		37.279682, 31.150288, 22.835960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896790, 30.383320, 22.919792>,  <37.461651, 30.663731, 23.305162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896790, 30.383320, 22.919792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.008835, 30.682373, 22.678932>,  <37.076061, 30.861805, 22.534416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.008835, 30.682373, 22.678932>,  <36.896790, 30.383320, 22.919792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008835, 30.682373, 22.678932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149068, -0.585774, -0.796647,
		-0.948323, 0.312910, -0.052633,
		0.280110, 0.747633, -0.602149,
		37.092869, 30.906664, 22.498287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425629, 30.290327, 22.342665>,  <36.896790, 30.383320, 22.919792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425629, 30.290327, 22.342665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.747978, 30.503315, 22.239094>,  <36.941387, 30.631107, 22.176950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.747978, 30.503315, 22.239094>,  <36.425629, 30.290327, 22.342665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747978, 30.503315, 22.239094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011432, -0.451224, -0.892338,
		-0.591978, 0.716150, -0.369716,
		0.805873, 0.532471, -0.258928,
		36.989738, 30.663055, 22.161415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197468, 30.448500, 21.723740>,  <36.425629, 30.290327, 22.342665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197468, 30.448500, 21.723740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593235, 30.505816, 21.732882>,  <36.830696, 30.540205, 21.738367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593235, 30.505816, 21.732882>,  <36.197468, 30.448500, 21.723740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593235, 30.505816, 21.732882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071538, -0.344685, -0.935989,
		-0.126240, 0.927718, -0.351288,
		0.989417, 0.143289, 0.022854,
		36.890060, 30.548801, 21.739738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306583, 30.695412, 21.089495>,  <36.197468, 30.448500, 21.723740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306583, 30.695412, 21.089495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.649330, 30.527763, 21.209568>,  <36.854980, 30.427174, 21.281612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.649330, 30.527763, 21.209568>,  <36.306583, 30.695412, 21.089495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649330, 30.527763, 21.209568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098388, -0.438628, -0.893267,
		0.506055, 0.794949, -0.334611,
		0.856871, -0.419120, 0.300184,
		36.906391, 30.402027, 21.299623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778313, 30.721220, 20.435011>,  <36.306583, 30.695412, 21.089495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778313, 30.721220, 20.435011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970947, 30.474506, 20.684057>,  <37.086529, 30.326477, 20.833485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970947, 30.474506, 20.684057>,  <36.778313, 30.721220, 20.435011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970947, 30.474506, 20.684057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359131, -0.509154, -0.782168,
		0.799438, 0.600281, -0.023693,
		0.481584, -0.616786, 0.622617,
		37.115421, 30.289471, 20.870842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385277, 30.622730, 20.113098>,  <36.778313, 30.721220, 20.435011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385277, 30.622730, 20.113098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.359375, 30.308128, 20.358770>,  <37.343834, 30.119368, 20.506174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.359375, 30.308128, 20.358770>,  <37.385277, 30.622730, 20.113098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359375, 30.308128, 20.358770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305086, -0.601605, -0.738237,
		0.950121, 0.139573, 0.278909,
		-0.064756, -0.786506, 0.614179,
		37.339947, 30.072176, 20.543024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920464, 30.207687, 20.020401>,  <37.385277, 30.622730, 20.113098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920464, 30.207687, 20.020401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.673244, 29.944218, 20.192057>,  <37.524914, 29.786137, 20.295050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.673244, 29.944218, 20.192057>,  <37.920464, 30.207687, 20.020401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673244, 29.944218, 20.192057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011353, -0.553304, -0.832902,
		0.786055, -0.509905, 0.349449,
		-0.618052, -0.658675, 0.429138,
		37.487827, 29.746614, 20.320799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230110, 29.557320, 20.070461>,  <37.920464, 30.207687, 20.020401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230110, 29.557320, 20.070461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.843346, 29.455481, 20.076935>,  <37.611286, 29.394377, 20.080820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.843346, 29.455481, 20.076935>,  <38.230110, 29.557320, 20.070461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843346, 29.455481, 20.076935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111717, -0.479605, -0.870344,
		0.229351, -0.839737, 0.492179,
		-0.966911, -0.254598, 0.016185,
		37.553272, 29.379101, 20.081791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135845, 28.844955, 19.881340>,  <38.230110, 29.557320, 20.070461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135845, 28.844955, 19.881340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748787, 28.939274, 19.845415>,  <37.516552, 28.995865, 19.823860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748787, 28.939274, 19.845415>,  <38.135845, 28.844955, 19.881340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748787, 28.939274, 19.845415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074781, -0.607954, -0.790442,
		-0.240982, -0.758151, 0.605917,
		-0.967644, 0.235794, -0.089811,
		37.458492, 29.010012, 19.818472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789822, 28.242559, 19.894903>,  <38.135845, 28.844955, 19.881340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789822, 28.242559, 19.894903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580914, 28.508017, 19.680683>,  <37.455570, 28.667290, 19.552151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580914, 28.508017, 19.680683>,  <37.789822, 28.242559, 19.894903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580914, 28.508017, 19.680683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069128, -0.658885, -0.749060,
		-0.849974, -0.354190, 0.389993,
		-0.522270, 0.663641, -0.535551,
		37.424232, 28.707109, 19.520018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978718, 28.405497, 20.641903>,  <37.789822, 28.242559, 19.894903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978718, 28.405497, 20.641903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.901501, 28.021049, 20.720884>,  <37.855171, 27.790380, 20.768272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.901501, 28.021049, 20.720884>,  <37.978718, 28.405497, 20.641903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901501, 28.021049, 20.720884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238414, 0.241153, 0.940746,
		-0.951783, 0.134533, -0.275698,
		-0.193047, -0.961117, 0.197451,
		37.843586, 27.732714, 20.780119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385147, 28.394930, 21.031429>,  <37.978718, 28.405497, 20.641903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385147, 28.394930, 21.031429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571465, 28.049847, 21.110195>,  <37.683254, 27.842796, 21.157454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571465, 28.049847, 21.110195>,  <37.385147, 28.394930, 21.031429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571465, 28.049847, 21.110195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369477, 0.012591, 0.929155,
		-0.804067, -0.505549, -0.312885,
		0.465793, -0.862706, 0.196913,
		37.711205, 27.791035, 21.169270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888065, 27.940638, 21.430218>,  <37.385147, 28.394930, 21.031429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888065, 27.940638, 21.430218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256104, 27.803156, 21.505363>,  <37.476925, 27.720667, 21.550451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256104, 27.803156, 21.505363>,  <36.888065, 27.940638, 21.430218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256104, 27.803156, 21.505363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239001, -0.112649, 0.964463,
		-0.310329, -0.932296, -0.185794,
		0.920095, -0.343706, 0.187862,
		37.532131, 27.700045, 21.561722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737278, 27.448025, 21.855659>,  <36.888065, 27.940638, 21.430218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737278, 27.448025, 21.855659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.124008, 27.521917, 21.926235>,  <37.356045, 27.566254, 21.968580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.124008, 27.521917, 21.926235>,  <36.737278, 27.448025, 21.855659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124008, 27.521917, 21.926235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168723, -0.056812, 0.984025,
		0.191806, -0.981145, -0.023758,
		0.966821, 0.184734, 0.176439,
		37.414055, 27.577337, 21.979166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869530, 26.979277, 22.424648>,  <36.737278, 27.448025, 21.855659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869530, 26.979277, 22.424648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141163, 27.271669, 22.397795>,  <37.304142, 27.447105, 22.381683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141163, 27.271669, 22.397795>,  <36.869530, 26.979277, 22.424648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141163, 27.271669, 22.397795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003016, 0.094231, 0.995546,
		0.734052, -0.675859, 0.066196,
		0.679087, 0.730982, -0.067132,
		37.344891, 27.490963, 22.377655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290630, 26.907995, 23.063990>,  <36.869530, 26.979277, 22.424648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290630, 26.907995, 23.063990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367226, 27.275707, 22.926437>,  <37.413181, 27.496334, 22.843906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367226, 27.275707, 22.926437>,  <37.290630, 26.907995, 23.063990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367226, 27.275707, 22.926437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142926, 0.320514, 0.936399,
		0.971032, -0.228460, -0.070014,
		0.191489, 0.919281, -0.343882,
		37.424671, 27.551491, 22.823273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799900, 27.039404, 23.471291>,  <37.290630, 26.907995, 23.063990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799900, 27.039404, 23.471291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649509, 27.386036, 23.340034>,  <37.559277, 27.594015, 23.261280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649509, 27.386036, 23.340034>,  <37.799900, 27.039404, 23.471291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649509, 27.386036, 23.340034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039030, 0.339000, 0.939976,
		0.925807, 0.366216, -0.093633,
		-0.375977, 0.866582, -0.328142,
		37.536716, 27.646011, 23.241592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115978, 27.486855, 23.852343>,  <37.799900, 27.039404, 23.471291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115978, 27.486855, 23.852343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.782326, 27.670948, 23.730745>,  <37.582134, 27.781404, 23.657787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.782326, 27.670948, 23.730745>,  <38.115978, 27.486855, 23.852343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782326, 27.670948, 23.730745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191313, 0.275518, 0.942066,
		0.517325, 0.843964, -0.141769,
		-0.834130, 0.460232, -0.303994,
		37.532085, 27.809017, 23.639547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860451, 27.740160, 24.021063>,  <38.115978, 27.486855, 23.852343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860451, 27.740160, 24.021063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.067966, 27.448868, 24.200191>,  <39.192474, 27.274094, 24.307669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.067966, 27.448868, 24.200191>,  <38.860451, 27.740160, 24.021063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067966, 27.448868, 24.200191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495072, -0.171144, -0.851829,
		0.696968, 0.663621, 0.271739,
		0.518786, -0.728229, 0.447822,
		39.223602, 27.230400, 24.334538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654274, 27.889721, 23.936117>,  <38.860451, 27.740160, 24.021063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654274, 27.889721, 23.936117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575668, 27.498039, 23.956289>,  <39.528503, 27.263031, 23.968391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575668, 27.498039, 23.956289>,  <39.654274, 27.889721, 23.936117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575668, 27.498039, 23.956289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534480, -0.150099, -0.831746,
		0.822017, -0.136497, 0.552862,
		-0.196515, -0.979203, 0.050429,
		39.516712, 27.204279, 23.971418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326599, 27.546434, 23.972942>,  <39.654274, 27.889721, 23.936117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326599, 27.546434, 23.972942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068249, 27.271866, 23.839272>,  <39.913239, 27.107124, 23.759069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068249, 27.271866, 23.839272>,  <40.326599, 27.546434, 23.972942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068249, 27.271866, 23.839272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602086, -0.188843, -0.775778,
		0.469403, -0.702257, 0.535253,
		-0.645874, -0.686421, -0.334176,
		39.874485, 27.065939, 23.739019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666592, 26.989309, 23.750082>,  <40.326599, 27.546434, 23.972942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666592, 26.989309, 23.750082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.322556, 26.894043, 23.569626>,  <40.116135, 26.836884, 23.461351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.322556, 26.894043, 23.569626>,  <40.666592, 26.989309, 23.750082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322556, 26.894043, 23.569626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499748, -0.571010, -0.651306,
		-0.102487, -0.785637, 0.610141,
		-0.860086, -0.238166, -0.451141,
		40.064529, 26.822594, 23.434284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708561, 26.197897, 23.711201>,  <40.666592, 26.989309, 23.750082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708561, 26.197897, 23.711201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431614, 26.317389, 23.448481>,  <40.265446, 26.389084, 23.290850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431614, 26.317389, 23.448481>,  <40.708561, 26.197897, 23.711201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431614, 26.317389, 23.448481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421081, -0.571901, -0.704002,
		-0.585934, -0.763994, 0.270174,
		-0.692367, 0.298733, -0.656800,
		40.223904, 26.407007, 23.251442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674522, 25.544571, 23.286795>,  <40.708561, 26.197897, 23.711201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674522, 25.544571, 23.286795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492455, 25.830372, 23.074263>,  <40.383213, 26.001852, 22.946743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492455, 25.830372, 23.074263>,  <40.674522, 25.544571, 23.286795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492455, 25.830372, 23.074263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238233, -0.477250, -0.845859,
		-0.857945, -0.511587, 0.047010,
		-0.455165, 0.714501, -0.531331,
		40.355904, 26.044722, 22.914864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235500, 25.213991, 22.708187>,  <40.674522, 25.544571, 23.286795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235500, 25.213991, 22.708187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.304401, 25.578089, 22.557571>,  <40.345741, 25.796547, 22.467201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.304401, 25.578089, 22.557571>,  <40.235500, 25.213991, 22.708187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304401, 25.578089, 22.557571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460275, -0.412331, -0.786212,
		-0.870905, -0.037885, -0.489988,
		0.172252, 0.910246, -0.376539,
		40.356075, 25.851162, 22.444611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201817, 25.091349, 21.954863>,  <40.235500, 25.213991, 22.708187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201817, 25.091349, 21.954863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.385025, 25.445368, 21.988106>,  <40.494949, 25.657780, 22.008051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.385025, 25.445368, 21.988106>,  <40.201817, 25.091349, 21.954863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385025, 25.445368, 21.988106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610340, -0.245128, -0.753258,
		-0.646296, 0.395735, -0.652454,
		0.458025, 0.885046, 0.083108,
		40.522434, 25.710882, 22.013039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290863, 25.328335, 21.246351>,  <40.201817, 25.091349, 21.954863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290863, 25.328335, 21.246351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564545, 25.482761, 21.493841>,  <40.728752, 25.575418, 21.642336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564545, 25.482761, 21.493841>,  <40.290863, 25.328335, 21.246351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564545, 25.482761, 21.493841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728431, -0.403019, -0.554044,
		0.035459, 0.829776, -0.556970,
		0.684201, 0.386068, 0.618725,
		40.769806, 25.598581, 21.679459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.706470, 33.871246, 34.894531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960361, 34.110077, 34.698318>,  <38.112698, 34.253376, 34.580593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960361, 34.110077, 34.698318>,  <37.706470, 33.871246, 34.894531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960361, 34.110077, 34.698318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107989, -0.697107, -0.708788,
		-0.765152, 0.396916, -0.506951,
		0.634729, 0.597076, -0.490530,
		38.150780, 34.289200, 34.551159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420769, 34.079067, 34.243675>,  <37.706470, 33.871246, 34.894531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420769, 34.079067, 34.243675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816189, 34.021255, 34.261021>,  <38.053440, 33.986568, 34.271427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816189, 34.021255, 34.261021>,  <37.420769, 34.079067, 34.243675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816189, 34.021255, 34.261021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058184, -0.630224, -0.774230,
		0.139230, 0.762842, -0.631417,
		0.988549, -0.144534, 0.043361,
		38.112755, 33.977894, 34.274029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702549, 34.115253, 33.584396>,  <37.420769, 34.079067, 34.243675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702549, 34.115253, 33.584396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962132, 33.879784, 33.777191>,  <38.117882, 33.738503, 33.892868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962132, 33.879784, 33.777191>,  <37.702549, 34.115253, 33.584396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962132, 33.879784, 33.777191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007992, -0.628194, -0.778015,
		0.760781, 0.508752, -0.402968,
		0.648959, -0.588679, 0.481984,
		38.156818, 33.703178, 33.921787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002457, 33.708698, 32.987137>,  <37.702549, 34.115253, 33.584396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002457, 33.708698, 32.987137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119663, 33.484581, 33.297031>,  <38.189987, 33.350109, 33.482967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119663, 33.484581, 33.297031>,  <38.002457, 33.708698, 32.987137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119663, 33.484581, 33.297031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021388, -0.806257, -0.591179,
		0.955867, 0.189797, -0.224266,
		0.293020, -0.560292, 0.774734,
		38.207569, 33.316494, 33.529453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652798, 33.363106, 32.913788>,  <38.002457, 33.708698, 32.987137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652798, 33.363106, 32.913788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426331, 33.134789, 33.151661>,  <38.290451, 32.997799, 33.294384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426331, 33.134789, 33.151661>,  <38.652798, 33.363106, 32.913788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426331, 33.134789, 33.151661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065955, -0.750510, -0.657560,
		0.821645, -0.333069, 0.462563,
		-0.566171, -0.570788, 0.594685,
		38.256477, 32.963551, 33.330067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878067, 32.711971, 32.673149>,  <38.652798, 33.363106, 32.913788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878067, 32.711971, 32.673149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543655, 32.658562, 32.886021>,  <38.343006, 32.626514, 33.013744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543655, 32.658562, 32.886021>,  <38.878067, 32.711971, 32.673149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543655, 32.658562, 32.886021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157914, -0.870340, -0.466445,
		0.525463, -0.474003, 0.706548,
		-0.836033, -0.133526, 0.532183,
		38.292847, 32.618504, 33.045677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792011, 32.036327, 32.745174>,  <38.878067, 32.711971, 32.673149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792011, 32.036327, 32.745174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429947, 32.116802, 32.894951>,  <38.212708, 32.165085, 32.984818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429947, 32.116802, 32.894951>,  <38.792011, 32.036327, 32.745174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429947, 32.116802, 32.894951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307214, -0.918438, -0.249181,
		0.293772, -0.340583, 0.893141,
		-0.905161, 0.201183, 0.374444,
		38.158398, 32.177158, 33.007282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534599, 31.412703, 33.076889>,  <38.792011, 32.036327, 32.745174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534599, 31.412703, 33.076889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.234283, 31.657337, 32.977070>,  <38.054092, 31.804119, 32.917179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.234283, 31.657337, 32.977070>,  <38.534599, 31.412703, 33.076889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234283, 31.657337, 32.977070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507656, -0.775964, -0.374388,
		-0.422613, -0.154401, 0.893061,
		-0.750789, 0.611589, -0.249549,
		38.009048, 31.840815, 32.902206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892990, 31.014908, 33.113651>,  <38.534599, 31.412703, 33.076889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892990, 31.014908, 33.113651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781082, 31.294062, 32.849930>,  <37.713940, 31.461554, 32.691696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781082, 31.294062, 32.849930>,  <37.892990, 31.014908, 33.113651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781082, 31.294062, 32.849930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502564, -0.691582, -0.518791,
		-0.818022, 0.186203, 0.544214,
		-0.279768, 0.697885, -0.659308,
		37.697151, 31.503428, 32.652138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110203, 30.881428, 32.934837>,  <37.892990, 31.014908, 33.113651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110203, 30.881428, 32.934837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243713, 31.125525, 32.647449>,  <37.323822, 31.271982, 32.475018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243713, 31.125525, 32.647449>,  <37.110203, 30.881428, 32.934837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243713, 31.125525, 32.647449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528537, -0.509951, -0.678674,
		-0.780539, 0.606265, 0.152324,
		0.333779, 0.610240, -0.718470,
		37.343845, 31.308596, 32.431908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549068, 30.952488, 32.530319>,  <37.110203, 30.881428, 32.934837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549068, 30.952488, 32.530319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859367, 31.039621, 32.293419>,  <37.045547, 31.091902, 32.151279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859367, 31.039621, 32.293419>,  <36.549068, 30.952488, 32.530319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859367, 31.039621, 32.293419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386645, -0.577659, -0.718899,
		-0.498720, 0.786676, -0.363894,
		0.775748, 0.217832, -0.592254,
		37.092091, 31.104971, 32.115742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217350, 30.968634, 31.763432>,  <36.549068, 30.952488, 32.530319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217350, 30.968634, 31.763432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611515, 30.901537, 31.751881>,  <36.848015, 30.861279, 31.744949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611515, 30.901537, 31.751881>,  <36.217350, 30.968634, 31.763432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611515, 30.901537, 31.751881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126791, -0.610207, -0.782030,
		0.113556, 0.774280, -0.622571,
		0.985408, -0.167741, -0.028880,
		36.907139, 30.851215, 31.743217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895493, 31.677624, 31.382452>,  <36.217350, 30.968634, 31.763432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895493, 31.677624, 31.382452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511131, 31.699924, 31.273968>,  <35.280514, 31.713305, 31.208878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511131, 31.699924, 31.273968>,  <35.895493, 31.677624, 31.382452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511131, 31.699924, 31.273968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158860, 0.691248, 0.704939,
		0.226777, 0.720464, -0.655366,
		-0.960904, 0.055752, -0.271212,
		35.222858, 31.716650, 31.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811172, 32.394032, 31.443710>,  <35.895493, 31.677624, 31.382452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811172, 32.394032, 31.443710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444508, 32.235748, 31.421242>,  <35.224510, 32.140778, 31.407761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444508, 32.235748, 31.421242>,  <35.811172, 32.394032, 31.443710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444508, 32.235748, 31.421242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361824, 0.761921, 0.537178,
		-0.169767, 0.512733, -0.841596,
		-0.916658, -0.395705, -0.056170,
		35.169510, 32.117039, 31.404390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310696, 32.929916, 31.348322>,  <35.811172, 32.394032, 31.443710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310696, 32.929916, 31.348322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073372, 32.637547, 31.483225>,  <34.930977, 32.462124, 31.564167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073372, 32.637547, 31.483225>,  <35.310696, 32.929916, 31.348322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073372, 32.637547, 31.483225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523795, 0.668680, 0.527737,
		-0.611250, 0.136457, -0.779585,
		-0.593306, -0.730922, 0.337255,
		34.895382, 32.418270, 31.584402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628590, 33.274498, 31.267122>,  <35.310696, 32.929916, 31.348322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628590, 33.274498, 31.267122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573086, 32.959946, 31.507904>,  <34.539783, 32.771214, 31.652374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573086, 32.959946, 31.507904>,  <34.628590, 33.274498, 31.267122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573086, 32.959946, 31.507904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743198, 0.484418, 0.461515,
		-0.654525, -0.383333, -0.651653,
		-0.138759, -0.786380, 0.601956,
		34.531460, 32.724033, 31.688492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942928, 33.071213, 31.152592>,  <34.628590, 33.274498, 31.267122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942928, 33.071213, 31.152592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052925, 32.936581, 31.512835>,  <34.118923, 32.855801, 31.728981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052925, 32.936581, 31.512835>,  <33.942928, 33.071213, 31.152592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052925, 32.936581, 31.512835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784252, 0.463342, 0.412630,
		-0.556171, -0.819774, -0.136544,
		0.274996, -0.336578, 0.900607,
		34.135426, 32.835606, 31.783016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377151, 32.940147, 31.532990>,  <33.942928, 33.071213, 31.152592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377151, 32.940147, 31.532990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644066, 32.961880, 31.830116>,  <33.804214, 32.974918, 32.008392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644066, 32.961880, 31.830116>,  <33.377151, 32.940147, 31.532990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644066, 32.961880, 31.830116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564376, 0.687685, 0.456694,
		-0.486010, -0.723973, 0.489547,
		0.667289, 0.054331, 0.742815,
		33.844254, 32.978180, 32.052959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078812, 32.692390, 32.255527>,  <33.377151, 32.940147, 31.532990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078812, 32.692390, 32.255527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396000, 32.917011, 32.350063>,  <33.586311, 33.051785, 32.406784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396000, 32.917011, 32.350063>,  <33.078812, 32.692390, 32.255527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396000, 32.917011, 32.350063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606558, 0.691128, 0.392974,
		0.057337, -0.454969, 0.888659,
		0.792969, 0.561556, 0.236339,
		33.633892, 33.085480, 32.420963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964863, 33.031239, 32.825043>,  <33.078812, 32.692390, 32.255527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964863, 33.031239, 32.825043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270309, 33.261250, 32.707581>,  <33.453575, 33.399258, 32.637104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270309, 33.261250, 32.707581>,  <32.964863, 33.031239, 32.825043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270309, 33.261250, 32.707581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434979, 0.794262, 0.424194,
		0.477166, -0.196186, 0.856635,
		0.763614, 0.575030, -0.293658,
		33.499393, 33.433758, 32.619484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157368, 33.360741, 33.476799>,  <32.964863, 33.031239, 32.825043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157368, 33.360741, 33.476799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332767, 33.584072, 33.195095>,  <33.438007, 33.718071, 33.026073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332767, 33.584072, 33.195095>,  <33.157368, 33.360741, 33.476799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332767, 33.584072, 33.195095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301418, 0.829595, 0.470020,
		0.846678, 0.006173, 0.532070,
		0.438501, 0.558331, -0.704261,
		33.464317, 33.751572, 32.983818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552185, 33.781689, 33.807388>,  <33.157368, 33.360741, 33.476799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552185, 33.781689, 33.807388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477009, 33.957493, 33.456047>,  <33.431904, 34.062977, 33.245243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477009, 33.957493, 33.456047>,  <33.552185, 33.781689, 33.807388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477009, 33.957493, 33.456047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286808, 0.830755, 0.477061,
		0.939372, 0.341579, -0.030078,
		-0.187941, 0.439511, -0.878355,
		33.420628, 34.089348, 33.192539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847668, 34.531040, 33.824825>,  <33.552185, 33.781689, 33.807388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847668, 34.531040, 33.824825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555962, 34.488407, 33.554474>,  <33.380939, 34.462826, 33.392262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555962, 34.488407, 33.554474>,  <33.847668, 34.531040, 33.824825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555962, 34.488407, 33.554474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420898, 0.848672, 0.320313,
		0.539459, 0.518069, -0.663768,
		-0.729265, -0.106583, -0.675879,
		33.337181, 34.456432, 33.351711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723724, 35.155289, 33.621887>,  <33.847668, 34.531040, 33.824825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723724, 35.155289, 33.621887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395271, 34.980698, 33.474789>,  <33.198200, 34.875942, 33.386532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395271, 34.980698, 33.474789>,  <33.723724, 35.155289, 33.621887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395271, 34.980698, 33.474789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531203, 0.820104, 0.212727,
		0.208737, 0.370023, -0.905269,
		-0.821129, -0.436477, -0.367743,
		33.148933, 34.849754, 33.364464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400436, 35.652637, 33.099533>,  <33.723724, 35.155289, 33.621887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400436, 35.652637, 33.099533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124924, 35.393063, 33.228817>,  <32.959618, 35.237316, 33.306385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124924, 35.393063, 33.228817>,  <33.400436, 35.652637, 33.099533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124924, 35.393063, 33.228817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622465, 0.757909, 0.195221,
		-0.371647, -0.066720, -0.925974,
		-0.688779, -0.648940, 0.323206,
		32.918289, 35.198380, 33.325779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724857, 35.869102, 32.728218>,  <33.400436, 35.652637, 33.099533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724857, 35.869102, 32.728218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693573, 35.662563, 33.069340>,  <32.674805, 35.538639, 33.274014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693573, 35.662563, 33.069340>,  <32.724857, 35.869102, 32.728218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693573, 35.662563, 33.069340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523339, 0.749344, 0.405710,
		-0.848528, -0.414575, -0.328827,
		-0.078207, -0.516345, 0.852803,
		32.670113, 35.507660, 33.325180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516315, 35.980083, 32.460030>,  <32.724857, 35.869102, 32.728218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516315, 35.980083, 32.460030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231075, 36.191063, 32.275295>,  <33.059933, 36.317650, 32.164455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231075, 36.191063, 32.275295>,  <33.516315, 35.980083, 32.460030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231075, 36.191063, 32.275295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569397, 0.051425, -0.820452,
		-0.408993, -0.848031, -0.336997,
		-0.713099, 0.527445, -0.461834,
		33.017147, 36.349297, 32.136745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307335, 35.619869, 31.747065>,  <33.516315, 35.980083, 32.460030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307335, 35.619869, 31.747065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300533, 36.015514, 31.805525>,  <33.296452, 36.252903, 31.840601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300533, 36.015514, 31.805525>,  <33.307335, 35.619869, 31.747065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300533, 36.015514, 31.805525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786809, 0.103435, -0.608468,
		-0.616963, 0.104646, -0.780004,
		-0.017006, 0.989116, 0.146152,
		33.295433, 36.312248, 31.849371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935364, 35.536022, 31.905945>,  <33.307335, 35.619869, 31.747065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935364, 35.536022, 31.905945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204964, 35.831387, 31.914663>,  <34.366722, 36.008606, 31.919893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204964, 35.831387, 31.914663>,  <33.935364, 35.536022, 31.905945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204964, 35.831387, 31.914663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325208, -0.270091, -0.906251,
		-0.663299, 0.617900, -0.422178,
		0.673999, 0.738411, 0.021795,
		34.407162, 36.052910, 31.921202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898651, 35.962738, 31.292404>,  <33.935364, 35.536022, 31.905945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898651, 35.962738, 31.292404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267197, 35.983059, 31.446548>,  <34.488323, 35.995251, 31.539036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267197, 35.983059, 31.446548>,  <33.898651, 35.962738, 31.292404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267197, 35.983059, 31.446548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367151, -0.439229, -0.819925,
		0.127607, 0.896937, -0.423343,
		0.921367, 0.050802, 0.385360,
		34.543606, 35.998299, 31.562157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386147, 36.437210, 30.835087>,  <33.898651, 35.962738, 31.292404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386147, 36.437210, 30.835087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566463, 36.132874, 31.021809>,  <34.674656, 35.950272, 31.133842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566463, 36.132874, 31.021809>,  <34.386147, 36.437210, 30.835087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566463, 36.132874, 31.021809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290264, -0.369589, -0.882695,
		0.844115, 0.533412, 0.054235,
		0.450796, -0.760839, 0.466806,
		34.701702, 35.904621, 31.161850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918064, 36.434719, 30.417879>,  <34.386147, 36.437210, 30.835087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918064, 36.434719, 30.417879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897774, 36.094654, 30.627508>,  <34.885597, 35.890614, 30.753284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897774, 36.094654, 30.627508>,  <34.918064, 36.434719, 30.417879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897774, 36.094654, 30.627508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301640, -0.513283, -0.803464,
		0.952071, 0.117322, 0.282481,
		-0.050729, -0.850162, 0.524071,
		34.882553, 35.839607, 30.784729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478535, 36.165146, 30.301723>,  <34.918064, 36.434719, 30.417879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478535, 36.165146, 30.301723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291248, 35.830112, 30.414307>,  <35.178875, 35.629093, 30.481857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291248, 35.830112, 30.414307>,  <35.478535, 36.165146, 30.301723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291248, 35.830112, 30.414307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429378, -0.494068, -0.755997,
		0.772273, -0.233120, 0.590974,
		-0.468219, -0.837587, 0.281458,
		35.150784, 35.578835, 30.498745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948952, 35.645126, 30.121792>,  <35.478535, 36.165146, 30.301723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948952, 35.645126, 30.121792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607559, 35.445072, 30.180365>,  <35.402725, 35.325039, 30.215508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607559, 35.445072, 30.180365>,  <35.948952, 35.645126, 30.121792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607559, 35.445072, 30.180365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232938, -0.617477, -0.751307,
		0.466173, -0.607113, 0.643503,
		-0.853477, -0.500135, 0.146431,
		35.351517, 35.295033, 30.224295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115475, 34.966301, 30.218470>,  <35.948952, 35.645126, 30.121792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115475, 34.966301, 30.218470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734947, 34.955826, 30.095638>,  <35.506630, 34.949539, 30.021938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734947, 34.955826, 30.095638>,  <36.115475, 34.966301, 30.218470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734947, 34.955826, 30.095638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224265, -0.742273, -0.631455,
		-0.211399, -0.669585, 0.712015,
		-0.951323, -0.026191, -0.307081,
		35.449551, 34.947968, 30.003513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988747, 34.306232, 30.253294>,  <36.115475, 34.966301, 30.218470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988747, 34.306232, 30.253294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729431, 34.469982, 29.996502>,  <35.573841, 34.568230, 29.842426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729431, 34.469982, 29.996502>,  <35.988747, 34.306232, 30.253294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729431, 34.469982, 29.996502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378436, -0.558399, -0.738225,
		-0.660690, -0.721530, 0.207081,
		-0.648286, 0.409371, -0.641982,
		35.534946, 34.592793, 29.803907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823631, 33.780014, 29.838116>,  <35.988747, 34.306232, 30.253294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823631, 33.780014, 29.838116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685566, 34.107128, 29.653902>,  <35.602726, 34.303398, 29.543375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685566, 34.107128, 29.653902>,  <35.823631, 33.780014, 29.838116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685566, 34.107128, 29.653902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341259, -0.347748, -0.873277,
		-0.874303, -0.458583, -0.159047,
		-0.345162, 0.817785, -0.460533,
		35.582016, 34.352463, 29.515741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329071, 33.525455, 29.227583>,  <35.823631, 33.780014, 29.838116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329071, 33.525455, 29.227583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494942, 33.881824, 29.153507>,  <35.594463, 34.095646, 29.109062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494942, 33.881824, 29.153507>,  <35.329071, 33.525455, 29.227583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494942, 33.881824, 29.153507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264173, -0.312614, -0.912406,
		-0.870777, 0.329436, -0.364993,
		0.414681, 0.890923, -0.185189,
		35.619347, 34.149101, 29.097950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153736, 33.609310, 28.566326>,  <35.329071, 33.525455, 29.227583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153736, 33.609310, 28.566326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457264, 33.854469, 28.654455>,  <35.639381, 34.001564, 28.707333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457264, 33.854469, 28.654455>,  <35.153736, 33.609310, 28.566326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457264, 33.854469, 28.654455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286550, -0.010391, -0.958009,
		-0.584873, 0.790094, -0.183511,
		0.758823, 0.612898, 0.220324,
		35.684910, 34.038338, 28.720552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187847, 34.214611, 28.032827>,  <35.153736, 33.609310, 28.566326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187847, 34.214611, 28.032827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544930, 34.192520, 28.211725>,  <35.759178, 34.179268, 28.319063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544930, 34.192520, 28.211725>,  <35.187847, 34.214611, 28.032827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544930, 34.192520, 28.211725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449898, 0.166192, -0.877480,
		-0.025870, 0.984546, 0.173206,
		0.892705, -0.055224, 0.447245,
		35.812740, 34.175953, 28.345900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638874, 34.750492, 27.677935>,  <35.187847, 34.214611, 28.032827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638874, 34.750492, 27.677935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893681, 34.507240, 27.867413>,  <36.046566, 34.361290, 27.981098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893681, 34.507240, 27.867413>,  <35.638874, 34.750492, 27.677935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893681, 34.507240, 27.867413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629337, 0.055441, -0.775153,
		0.445131, 0.791899, 0.418035,
		0.637019, -0.608130, 0.473693,
		36.084785, 34.324802, 28.009520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382423, 35.052635, 27.663229>,  <35.638874, 34.750492, 27.677935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382423, 35.052635, 27.663229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367985, 34.653042, 27.674023>,  <36.359322, 34.413284, 27.680498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367985, 34.653042, 27.674023>,  <36.382423, 35.052635, 27.663229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367985, 34.653042, 27.674023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587272, -0.043054, -0.808244,
		0.808584, -0.013330, 0.588229,
		-0.036100, -0.998984, 0.026984,
		36.357155, 34.353348, 27.682117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934494, 34.946701, 27.419022>,  <36.382423, 35.052635, 27.663229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934494, 34.946701, 27.419022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781124, 34.577396, 27.409420>,  <36.689102, 34.355816, 27.403660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781124, 34.577396, 27.409420>,  <36.934494, 34.946701, 27.419022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781124, 34.577396, 27.409420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591685, -0.225603, -0.773959,
		0.709150, -0.310958, 0.632781,
		-0.383426, -0.923260, -0.024002,
		36.666096, 34.300419, 27.402220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561344, 34.513142, 27.141373>,  <36.934494, 34.946701, 27.419022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561344, 34.513142, 27.141373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234383, 34.285007, 27.108934>,  <37.038208, 34.148129, 27.089472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234383, 34.285007, 27.108934>,  <37.561344, 34.513142, 27.141373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234383, 34.285007, 27.108934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362124, -0.399226, -0.842309,
		0.448021, -0.717871, 0.532859,
		-0.817401, -0.570333, -0.081096,
		36.989162, 34.113907, 27.084606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808517, 33.713356, 27.093456>,  <37.561344, 34.513142, 27.141373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808517, 33.713356, 27.093456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448444, 33.758808, 26.925287>,  <37.232399, 33.786079, 26.824385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448444, 33.758808, 26.925287>,  <37.808517, 33.713356, 27.093456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448444, 33.758808, 26.925287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343217, -0.409149, -0.845458,
		-0.268088, -0.905364, 0.329309,
		-0.900184, 0.113633, -0.420424,
		37.178391, 33.792900, 26.799160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740505, 33.086430, 26.639498>,  <37.808517, 33.713356, 27.093456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740505, 33.086430, 26.639498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447201, 33.326649, 26.511953>,  <37.271217, 33.470779, 26.435427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447201, 33.326649, 26.511953>,  <37.740505, 33.086430, 26.639498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447201, 33.326649, 26.511953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139857, -0.325713, -0.935068,
		-0.665408, -0.730244, 0.154842,
		-0.733261, 0.600546, -0.318862,
		37.227222, 33.506813, 26.416294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225254, 32.569374, 26.405956>,  <37.740505, 33.086430, 26.639498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225254, 32.569374, 26.405956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172729, 32.935680, 26.254101>,  <37.141212, 33.155464, 26.162987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172729, 32.935680, 26.254101>,  <37.225254, 32.569374, 26.405956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172729, 32.935680, 26.254101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084575, -0.371211, -0.924689,
		-0.987726, -0.153534, -0.028706,
		-0.131315, 0.915767, -0.379640,
		37.133335, 33.210411, 26.140209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603153, 32.589901, 25.985846>,  <37.225254, 32.569374, 26.405956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603153, 32.589901, 25.985846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840504, 32.886448, 25.860449>,  <36.982914, 33.064377, 25.785212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840504, 32.886448, 25.860449>,  <36.603153, 32.589901, 25.985846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840504, 32.886448, 25.860449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033577, -0.366330, -0.929879,
		-0.804221, 0.562298, -0.192480,
		0.593381, 0.741365, -0.313491,
		37.018517, 33.108856, 25.766401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430622, 32.542801, 25.279415>,  <36.603153, 32.589901, 25.985846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430622, 32.542801, 25.279415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736580, 32.799984, 25.263758>,  <36.920155, 32.954296, 25.254364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736580, 32.799984, 25.263758>,  <36.430622, 32.542801, 25.279415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736580, 32.799984, 25.263758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030099, -0.096376, -0.994890,
		-0.643448, 0.759811, -0.093070,
		0.764898, 0.642962, -0.039143,
		36.966049, 32.992874, 25.252014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255997, 33.028351, 24.808958>,  <36.430622, 32.542801, 25.279415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255997, 33.028351, 24.808958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655022, 33.005920, 24.825583>,  <36.894436, 32.992462, 24.835558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655022, 33.005920, 24.825583>,  <36.255997, 33.028351, 24.808958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655022, 33.005920, 24.825583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030232, -0.189550, -0.981405,
		0.062915, 0.980268, -0.187392,
		0.997561, -0.056080, 0.041561,
		36.954288, 32.989098, 24.838051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538609, 33.338276, 24.196590>,  <36.255997, 33.028351, 24.808958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538609, 33.338276, 24.196590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835011, 33.106873, 24.332962>,  <37.012852, 32.968029, 24.414785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835011, 33.106873, 24.332962>,  <36.538609, 33.338276, 24.196590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835011, 33.106873, 24.332962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212219, -0.279933, -0.936270,
		0.637079, 0.766135, -0.084662,
		0.741008, -0.578511, 0.340928,
		37.057312, 32.933319, 24.435240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781391, 33.176231, 23.584328>,  <36.538609, 33.338276, 24.196590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781391, 33.176231, 23.584328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990269, 32.942856, 23.833136>,  <37.115593, 32.802830, 23.982420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990269, 32.942856, 23.833136>,  <36.781391, 33.176231, 23.584328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990269, 32.942856, 23.833136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238607, -0.600282, -0.763366,
		0.818769, 0.547042, -0.174249,
		0.522192, -0.583443, 0.622021,
		37.146927, 32.767822, 24.019741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522396, 33.110386, 23.351915>,  <36.781391, 33.176231, 23.584328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522396, 33.110386, 23.351915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402405, 32.791874, 23.562040>,  <37.330410, 32.600765, 23.688116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402405, 32.791874, 23.562040>,  <37.522396, 33.110386, 23.351915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402405, 32.791874, 23.562040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317914, -0.602641, -0.731953,
		0.899414, -0.052562, 0.433925,
		-0.299974, -0.796280, 0.525314,
		37.312412, 32.552990, 23.719635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961853, 32.531166, 23.141947>,  <37.522396, 33.110386, 23.351915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961853, 32.531166, 23.141947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668991, 32.333981, 23.329962>,  <37.493275, 32.215672, 23.442772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668991, 32.333981, 23.329962>,  <37.961853, 32.531166, 23.141947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668991, 32.333981, 23.329962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166965, -0.798916, -0.577802,
		0.660356, -0.344561, 0.667239,
		-0.732156, -0.492961, 0.470040,
		37.449345, 32.186092, 23.470974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554390, 32.355900, 23.700249>,  <37.961853, 32.531166, 23.141947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554390, 32.355900, 23.700249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949581, 32.417175, 23.691938>,  <39.186695, 32.453941, 23.686953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949581, 32.417175, 23.691938>,  <38.554390, 32.355900, 23.700249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949581, 32.417175, 23.691938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072336, 0.576891, 0.813612,
		0.136621, -0.802328, 0.581037,
		0.987979, 0.153186, -0.020778,
		39.245975, 32.463131, 23.685705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719769, 32.347198, 24.372274>,  <38.554390, 32.355900, 23.700249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719769, 32.347198, 24.372274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.028084, 32.523804, 24.188560>,  <39.213074, 32.629768, 24.078331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.028084, 32.523804, 24.188560>,  <38.719769, 32.347198, 24.372274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028084, 32.523804, 24.188560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066511, 0.661208, 0.747249,
		0.633610, -0.606519, 0.480285,
		0.770789, 0.441520, -0.459288,
		39.259319, 32.656258, 24.050776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281368, 32.429085, 24.866482>,  <38.719769, 32.347198, 24.372274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281368, 32.429085, 24.866482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.339035, 32.707020, 24.584654>,  <39.373634, 32.873779, 24.415558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.339035, 32.707020, 24.584654>,  <39.281368, 32.429085, 24.866482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339035, 32.707020, 24.584654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087707, 0.700233, 0.708507,
		0.985659, -0.163939, 0.040008,
		0.144167, 0.694837, -0.704569,
		39.382286, 32.915470, 24.373283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776112, 32.770504, 25.122276>,  <39.281368, 32.429085, 24.866482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776112, 32.770504, 25.122276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.682972, 33.046867, 24.848507>,  <39.627090, 33.212685, 24.684246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.682972, 33.046867, 24.848507>,  <39.776112, 32.770504, 25.122276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682972, 33.046867, 24.848507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206159, 0.722839, 0.659547,
		0.950411, 0.012473, -0.310746,
		-0.232846, 0.690904, -0.684422,
		39.613117, 33.254139, 24.643181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216125, 33.278984, 25.181534>,  <39.776112, 32.770504, 25.122276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216125, 33.278984, 25.181534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.912071, 33.454208, 24.989580>,  <39.729637, 33.559345, 24.874407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.912071, 33.454208, 24.989580>,  <40.216125, 33.278984, 25.181534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912071, 33.454208, 24.989580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062044, 0.784116, 0.617505,
		0.646793, 0.439615, -0.623215,
		-0.760137, 0.438065, -0.479886,
		39.684029, 33.585629, 24.845613>
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
