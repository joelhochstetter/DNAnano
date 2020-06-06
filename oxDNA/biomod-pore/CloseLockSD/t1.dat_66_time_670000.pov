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
	<4.666214, 14.963975, 15.017731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267632, 14.939410, 15.040734>,  <4.028482, 14.924671, 15.054537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267632, 14.939410, 15.040734>,  <4.666214, 14.963975, 15.017731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.267632, 14.939410, 15.040734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041967, 0.955224, 0.292892,
		-0.072921, 0.289440, -0.954414,
		-0.996454, -0.061411, 0.057509,
		3.968695, 14.920987, 15.057987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.291676, 15.547688, 14.641293>,  <4.666214, 14.963975, 15.017731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.291676, 15.547688, 14.641293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.050775, 15.399543, 14.924170>,  <3.906235, 15.310656, 15.093896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.050775, 15.399543, 14.924170>,  <4.291676, 15.547688, 14.641293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.050775, 15.399543, 14.924170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262148, 0.928495, 0.263014,
		-0.754036, -0.026988, -0.656278,
		-0.602253, -0.370364, 0.707193,
		3.870099, 15.288434, 15.136328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.666020, 15.967540, 14.815216>,  <4.291676, 15.547688, 14.641293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.666020, 15.967540, 14.815216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647137, 15.778274, 15.167099>,  <3.635807, 15.664714, 15.378229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647137, 15.778274, 15.167099>,  <3.666020, 15.967540, 14.815216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.647137, 15.778274, 15.167099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204638, 0.866591, 0.455130,
		-0.977699, -0.158535, -0.137738,
		-0.047209, -0.473166, 0.879707,
		3.632974, 15.636324, 15.431011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.016845, 15.973851, 15.234444>,  <3.666020, 15.967540, 14.815216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.016845, 15.973851, 15.234444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351119, 15.955791, 15.453382>,  <3.551684, 15.944954, 15.584745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351119, 15.955791, 15.453382>,  <3.016845, 15.973851, 15.234444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.351119, 15.955791, 15.453382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123360, 0.955717, 0.267185,
		-0.535173, -0.290804, 0.793110,
		0.835687, -0.045152, 0.547347,
		3.601825, 15.942245, 15.617587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.933892, 16.216291, 15.862879>,  <3.016845, 15.973851, 15.234444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.933892, 16.216291, 15.862879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.303509, 16.273794, 15.721185>,  <3.525278, 16.308296, 15.636168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.303509, 16.273794, 15.721185>,  <2.933892, 16.216291, 15.862879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.303509, 16.273794, 15.721185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072453, 0.975665, 0.206948,
		0.375365, -0.165563, 0.911970,
		0.924041, 0.143756, -0.354235,
		3.580721, 16.316921, 15.614914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.274256, 16.561289, 16.309387>,  <2.933892, 16.216291, 15.862879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.274256, 16.561289, 16.309387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.516064, 16.635796, 15.999585>,  <3.661148, 16.680500, 15.813704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.516064, 16.635796, 15.999585>,  <3.274256, 16.561289, 16.309387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.516064, 16.635796, 15.999585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151414, 0.927684, 0.341286,
		0.782068, -0.323585, 0.532600,
		0.604519, 0.186266, -0.774507,
		3.697419, 16.691675, 15.767233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.887396, 16.743622, 16.502964>,  <3.274256, 16.561289, 16.309387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.887396, 16.743622, 16.502964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.862930, 16.922958, 16.146257>,  <3.848251, 17.030561, 15.932234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.862930, 16.922958, 16.146257>,  <3.887396, 16.743622, 16.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.862930, 16.922958, 16.146257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300449, 0.860272, 0.411901,
		0.951834, -0.242737, -0.187323,
		-0.061165, 0.448342, -0.891767,
		3.844581, 17.057461, 15.878727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.376342, 17.272942, 16.462917>,  <3.887396, 16.743622, 16.502964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.376342, 17.272942, 16.462917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.169272, 17.373133, 16.135681>,  <4.045031, 17.433247, 15.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.169272, 17.373133, 16.135681>,  <4.376342, 17.272942, 16.462917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.169272, 17.373133, 16.135681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350178, 0.934459, 0.064519,
		0.780633, -0.253078, -0.571457,
		-0.517675, 0.250477, -0.818092,
		4.013970, 17.448277, 15.890253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.805609, 17.644894, 16.023020>,  <4.376342, 17.272942, 16.462917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.805609, 17.644894, 16.023020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455256, 17.774889, 15.880352>,  <4.245044, 17.852886, 15.794751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455256, 17.774889, 15.880352>,  <4.805609, 17.644894, 16.023020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.455256, 17.774889, 15.880352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309932, 0.945448, 0.100356,
		0.369825, -0.022643, -0.928825,
		-0.875883, 0.324986, -0.356668,
		4.192491, 17.872385, 15.773352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.978588, 18.238686, 15.476446>,  <4.805609, 17.644894, 16.023020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.978588, 18.238686, 15.476446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.591247, 18.310263, 15.546041>,  <4.358842, 18.353209, 15.587799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.591247, 18.310263, 15.546041>,  <4.978588, 18.238686, 15.476446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.591247, 18.310263, 15.546041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220763, 0.939302, 0.262632,
		-0.116432, 0.292731, -0.949080,
		-0.968353, 0.178943, 0.173989,
		4.300741, 18.363945, 15.598238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.818350, 18.748821, 15.018126>,  <4.978588, 18.238686, 15.476446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.818350, 18.748821, 15.018126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.541659, 18.763992, 15.306591>,  <4.375644, 18.773094, 15.479670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.541659, 18.763992, 15.306591>,  <4.818350, 18.748821, 15.018126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.541659, 18.763992, 15.306591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247215, 0.950720, 0.187126,
		-0.678525, 0.307722, -0.667016,
		-0.691728, 0.037927, 0.721161,
		4.334140, 18.775370, 15.522940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.455617, 19.382977, 15.002892>,  <4.818350, 18.748821, 15.018126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.455617, 19.382977, 15.002892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345920, 19.270624, 15.370782>,  <4.280101, 19.203213, 15.591516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345920, 19.270624, 15.370782>,  <4.455617, 19.382977, 15.002892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.345920, 19.270624, 15.370782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171762, 0.926708, 0.334229,
		-0.946196, 0.249635, -0.205900,
		-0.274245, -0.280881, 0.919726,
		4.263646, 19.186359, 15.646700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.178856, 19.939415, 15.313650>,  <4.455617, 19.382977, 15.002892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.178856, 19.939415, 15.313650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.264267, 19.720737, 15.637509>,  <4.315514, 19.589531, 15.831825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.264267, 19.720737, 15.637509>,  <4.178856, 19.939415, 15.313650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.264267, 19.720737, 15.637509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312352, 0.823464, 0.473648,
		-0.925658, 0.151759, 0.346593,
		0.213527, -0.546695, 0.809648,
		4.328325, 19.556728, 15.880404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.880883, 20.268360, 15.911910>,  <4.178856, 19.939415, 15.313650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.880883, 20.268360, 15.911910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179182, 20.035164, 16.040895>,  <4.358161, 19.895247, 16.118286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179182, 20.035164, 16.040895>,  <3.880883, 20.268360, 15.911910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.179182, 20.035164, 16.040895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320546, 0.738286, 0.593451,
		-0.584047, -0.339200, 0.737450,
		0.745748, -0.582990, 0.322464,
		4.402906, 19.860268, 16.137634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.890910, 20.423021, 16.581356>,  <3.880883, 20.268360, 15.911910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.890910, 20.423021, 16.581356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.250827, 20.259399, 16.520630>,  <4.466777, 20.161226, 16.484194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.250827, 20.259399, 16.520630>,  <3.890910, 20.423021, 16.581356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.250827, 20.259399, 16.520630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396370, 0.620891, 0.676303,
		-0.182386, -0.668706, 0.720810,
		0.899792, -0.409055, -0.151813,
		4.520765, 20.136683, 16.475086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.182693, 20.198376, 17.273306>,  <3.890910, 20.423021, 16.581356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.182693, 20.198376, 17.273306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.490033, 20.234463, 17.019850>,  <4.674437, 20.256115, 16.867777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.490033, 20.234463, 17.019850>,  <4.182693, 20.198376, 17.273306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.490033, 20.234463, 17.019850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455029, 0.619218, 0.639935,
		0.450094, -0.780019, 0.434725,
		0.768351, 0.090219, -0.633638,
		4.720538, 20.261528, 16.829758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.806171, 20.189917, 17.684616>,  <4.182693, 20.198376, 17.273306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.806171, 20.189917, 17.684616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.933511, 20.356367, 17.343912>,  <5.009914, 20.456238, 17.139490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.933511, 20.356367, 17.343912>,  <4.806171, 20.189917, 17.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.933511, 20.356367, 17.343912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612656, 0.595336, 0.519834,
		0.723400, -0.687323, -0.065418,
		0.318349, 0.416127, -0.851758,
		5.029016, 20.481205, 17.088385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.459301, 20.067554, 17.701323>,  <4.806171, 20.189917, 17.684616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.459301, 20.067554, 17.701323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.412288, 20.392111, 17.472298>,  <5.384081, 20.586845, 17.334883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.412288, 20.392111, 17.472298>,  <5.459301, 20.067554, 17.701323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.412288, 20.392111, 17.472298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550540, 0.533085, 0.642438,
		0.826494, -0.239712, -0.509359,
		-0.117531, 0.811393, -0.572562,
		5.377029, 20.635529, 17.300529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.145770, 20.362972, 17.639717>,  <5.459301, 20.067554, 17.701323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.145770, 20.362972, 17.639717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.921158, 20.671616, 17.520182>,  <5.786391, 20.856802, 17.448462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.921158, 20.671616, 17.520182>,  <6.145770, 20.362972, 17.639717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.921158, 20.671616, 17.520182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403056, 0.570471, 0.715618,
		0.722655, 0.281393, -0.631338,
		-0.561529, 0.771610, -0.298837,
		5.752699, 20.903099, 17.430531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.570271, 20.936066, 17.626705>,  <6.145770, 20.362972, 17.639717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.570271, 20.936066, 17.626705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.205722, 21.099861, 17.643276>,  <5.986993, 21.198139, 17.653219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.205722, 21.099861, 17.643276>,  <6.570271, 20.936066, 17.626705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.205722, 21.099861, 17.643276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358951, 0.741544, 0.566804,
		0.201379, 0.531442, -0.822810,
		-0.911373, 0.409490, 0.041430,
		5.932311, 21.222708, 17.655704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.689344, 21.613113, 17.479095>,  <6.570271, 20.936066, 17.626705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.689344, 21.613113, 17.479095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.327623, 21.630339, 17.648983>,  <6.110591, 21.640673, 17.750916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.327623, 21.630339, 17.648983>,  <6.689344, 21.613113, 17.479095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.327623, 21.630339, 17.648983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273451, 0.822425, 0.498841,
		-0.327818, 0.567242, -0.755494,
		-0.904301, 0.043062, 0.424718,
		6.056333, 21.643257, 17.776398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.433300, 22.275215, 17.369467>,  <6.689344, 21.613113, 17.479095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.433300, 22.275215, 17.369467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.223333, 22.151226, 17.686548>,  <6.097353, 22.076832, 17.876797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.223333, 22.151226, 17.686548>,  <6.433300, 22.275215, 17.369467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.223333, 22.151226, 17.686548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187888, 0.866155, 0.463113,
		-0.830157, 0.392035, -0.396419,
		-0.524917, -0.309974, 0.792703,
		6.065858, 22.058233, 17.924358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.969770, 22.844452, 17.512861>,  <6.433300, 22.275215, 17.369467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.969770, 22.844452, 17.512861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.988555, 22.636150, 17.853827>,  <5.999825, 22.511169, 18.058407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.988555, 22.636150, 17.853827>,  <5.969770, 22.844452, 17.512861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.988555, 22.636150, 17.853827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017480, 0.853655, 0.520546,
		-0.998744, -0.009545, 0.049191,
		0.046961, -0.520752, 0.852415,
		6.002643, 22.479925, 18.109550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.595571, 23.232353, 18.063148>,  <5.969770, 22.844452, 17.512861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.595571, 23.232353, 18.063148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.827851, 22.965931, 18.250404>,  <5.967219, 22.806078, 18.362759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.827851, 22.965931, 18.250404>,  <5.595571, 23.232353, 18.063148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.827851, 22.965931, 18.250404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299461, 0.709468, 0.637948,
		-0.757040, -0.230267, 0.611447,
		0.580700, -0.666057, 0.468140,
		6.002061, 22.766113, 18.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.434301, 23.301426, 18.820118>,  <5.595571, 23.232353, 18.063148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.434301, 23.301426, 18.820118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.804648, 23.172209, 18.741718>,  <6.026856, 23.094679, 18.694679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.804648, 23.172209, 18.741718>,  <5.434301, 23.301426, 18.820118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.804648, 23.172209, 18.741718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376436, 0.743725, 0.552421,
		-0.032688, -0.585248, 0.810196,
		0.925866, -0.323044, -0.195997,
		6.082408, 23.075296, 18.682919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.939517, 23.270664, 19.506666>,  <5.434301, 23.301426, 18.820118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.939517, 23.270664, 19.506666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.122618, 23.317129, 19.154083>,  <6.232479, 23.345007, 18.942533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.122618, 23.317129, 19.154083>,  <5.939517, 23.270664, 19.506666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.122618, 23.317129, 19.154083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415150, 0.848780, 0.327449,
		0.786200, -0.515829, 0.340308,
		0.457754, 0.116161, -0.881458,
		6.259944, 23.351978, 18.889647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.170033, 24.023075, 19.653505>,  <5.939517, 23.270664, 19.506666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.170033, 24.023075, 19.653505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.334116, 23.865938, 19.324287>,  <6.432565, 23.771656, 19.126757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.334116, 23.865938, 19.324287>,  <6.170033, 24.023075, 19.653505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.334116, 23.865938, 19.324287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568253, 0.815966, -0.106244,
		0.713315, -0.424116, 0.557949,
		0.410207, -0.392842, -0.823046,
		6.457178, 23.748085, 19.077374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.948580, 24.075895, 19.781380>,  <6.170033, 24.023075, 19.653505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.948580, 24.075895, 19.781380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.870821, 24.067019, 19.389111>,  <6.824166, 24.061693, 19.153749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.870821, 24.067019, 19.389111>,  <6.948580, 24.075895, 19.781380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.870821, 24.067019, 19.389111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619387, 0.772455, -0.140260,
		0.760638, -0.634681, -0.136417,
		-0.194397, -0.022192, -0.980672,
		6.812503, 24.060360, 19.094910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.717844, 23.853054, 19.873230>,  <6.948580, 24.075895, 19.781380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.717844, 23.853054, 19.873230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072451, 23.962259, 20.022657>,  <8.285214, 24.027782, 20.112314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072451, 23.962259, 20.022657>,  <7.717844, 23.853054, 19.873230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.072451, 23.962259, 20.022657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445862, -0.288243, -0.847421,
		-0.123679, 0.917812, -0.377259,
		0.886516, 0.273014, 0.373568,
		8.338406, 24.044163, 20.134727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.050650, 24.333920, 19.447920>,  <7.717844, 23.853054, 19.873230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.050650, 24.333920, 19.447920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.341818, 24.150299, 19.651646>,  <8.516519, 24.040127, 19.773882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.341818, 24.150299, 19.651646>,  <8.050650, 24.333920, 19.447920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.341818, 24.150299, 19.651646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357613, -0.379598, -0.853240,
		0.585017, 0.803229, -0.112154,
		0.727920, -0.459052, 0.509316,
		8.560194, 24.012583, 19.804441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.749763, 24.490637, 19.239870>,  <8.050650, 24.333920, 19.447920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.749763, 24.490637, 19.239870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.712153, 24.117725, 19.379593>,  <8.689589, 23.893978, 19.463427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.712153, 24.117725, 19.379593>,  <8.749763, 24.490637, 19.239870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.712153, 24.117725, 19.379593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379226, -0.357947, -0.853265,
		0.920515, 0.052241, 0.387200,
		-0.094021, -0.932279, 0.349307,
		8.683947, 23.838041, 19.484385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.437869, 23.999308, 19.241770>,  <8.749763, 24.490637, 19.239870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.437869, 23.999308, 19.241770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.087228, 23.818813, 19.174894>,  <8.876843, 23.710516, 19.134769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.087228, 23.818813, 19.174894>,  <9.437869, 23.999308, 19.241770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.087228, 23.818813, 19.174894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329476, -0.309579, -0.891968,
		0.350732, -0.836986, 0.420049,
		-0.876603, -0.451238, -0.167188,
		8.824247, 23.683441, 19.124739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.836319, 23.839027, 18.707233>,  <9.437869, 23.999308, 19.241770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.836319, 23.839027, 18.707233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508828, 23.690849, 18.882713>,  <9.312333, 23.601942, 18.988001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508828, 23.690849, 18.882713>,  <9.836319, 23.839027, 18.707233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.508828, 23.690849, 18.882713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318774, -0.342220, -0.883894,
		0.477565, -0.863514, 0.162097,
		-0.818728, -0.370444, 0.438698,
		9.263210, 23.579716, 19.014322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.600599, 23.217073, 18.315725>,  <9.836319, 23.839027, 18.707233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.600599, 23.217073, 18.315725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.282721, 23.326252, 18.532597>,  <9.091993, 23.391758, 18.662720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.282721, 23.326252, 18.532597>,  <9.600599, 23.217073, 18.315725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.282721, 23.326252, 18.532597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553711, -0.691951, -0.463258,
		0.248717, -0.668360, 0.701024,
		-0.794698, 0.272944, 0.542178,
		9.044312, 23.408134, 18.695250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.356269, 22.651512, 18.651674>,  <9.600599, 23.217073, 18.315725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.356269, 22.651512, 18.651674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.038138, 22.893364, 18.634352>,  <8.847260, 23.038475, 18.623959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.038138, 22.893364, 18.634352>,  <9.356269, 22.651512, 18.651674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.038138, 22.893364, 18.634352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543000, -0.742369, -0.392479,
		-0.269456, -0.288634, 0.918741,
		-0.795327, 0.604632, -0.043307,
		8.799541, 23.074753, 18.621359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.722064, 22.334700, 19.021372>,  <9.356269, 22.651512, 18.651674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.722064, 22.334700, 19.021372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.631773, 22.585531, 18.723158>,  <8.577599, 22.736031, 18.544230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.631773, 22.585531, 18.723158>,  <8.722064, 22.334700, 19.021372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.631773, 22.585531, 18.723158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437013, -0.749143, -0.497800,
		-0.870670, 0.213442, 0.443143,
		-0.225726, 0.627079, -0.745533,
		8.564055, 22.773655, 18.499498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.112525, 22.097523, 18.858704>,  <8.722064, 22.334700, 19.021372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.112525, 22.097523, 18.858704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.197337, 22.337223, 18.549915>,  <8.248224, 22.481043, 18.364643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.197337, 22.337223, 18.549915>,  <8.112525, 22.097523, 18.858704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.197337, 22.337223, 18.549915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278821, -0.720004, -0.635494,
		-0.936644, 0.349985, 0.014422,
		0.212030, 0.599253, -0.771971,
		8.260946, 22.516998, 18.318323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.616594, 21.810696, 18.428003>,  <8.112525, 22.097523, 18.858704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.616594, 21.810696, 18.428003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863072, 22.034136, 18.205915>,  <8.010960, 22.168200, 18.072662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863072, 22.034136, 18.205915>,  <7.616594, 21.810696, 18.428003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.863072, 22.034136, 18.205915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191337, -0.577663, -0.793533,
		-0.763997, 0.595206, -0.249073,
		0.616197, 0.558600, -0.555218,
		8.047932, 22.201715, 18.039351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.174749, 22.016340, 17.900087>,  <7.616594, 21.810696, 18.428003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.174749, 22.016340, 17.900087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.558766, 22.037619, 17.790188>,  <7.789177, 22.050386, 17.724249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.558766, 22.037619, 17.790188>,  <7.174749, 22.016340, 17.900087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.558766, 22.037619, 17.790188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198433, -0.562881, -0.802365,
		-0.197332, 0.824825, -0.529835,
		0.960044, 0.053195, -0.274747,
		7.846780, 22.053577, 17.707764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.191328, 22.297447, 17.307993>,  <7.174749, 22.016340, 17.900087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.191328, 22.297447, 17.307993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.519448, 22.069971, 17.332325>,  <7.716320, 21.933485, 17.346924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.519448, 22.069971, 17.332325>,  <7.191328, 22.297447, 17.307993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.519448, 22.069971, 17.332325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247684, -0.449097, -0.858466,
		0.515521, 0.689132, -0.509249,
		0.820299, -0.568690, 0.060832,
		7.765538, 21.899364, 17.350574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.206296, 22.112906, 16.625231>,  <7.191328, 22.297447, 17.307993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.206296, 22.112906, 16.625231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.461063, 21.861561, 16.803892>,  <7.613924, 21.710754, 16.911089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.461063, 21.861561, 16.803892>,  <7.206296, 22.112906, 16.625231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.461063, 21.861561, 16.803892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158786, -0.673867, -0.721589,
		0.754403, 0.388670, -0.528972,
		0.636917, -0.628362, 0.446651,
		7.652139, 21.673052, 16.937887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.579724, 21.826050, 16.121269>,  <7.206296, 22.112906, 16.625231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.579724, 21.826050, 16.121269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.664908, 21.555761, 16.403561>,  <7.716018, 21.393589, 16.572935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.664908, 21.555761, 16.403561>,  <7.579724, 21.826050, 16.121269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.664908, 21.555761, 16.403561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232450, -0.736596, -0.635132,
		0.949007, -0.028788, -0.313936,
		0.212960, -0.675719, 0.705727,
		7.728796, 21.353046, 16.615278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.886066, 21.253841, 15.711745>,  <7.579724, 21.826050, 16.121269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.886066, 21.253841, 15.711745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.808992, 21.087055, 16.067051>,  <7.762748, 20.986984, 16.280235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.808992, 21.087055, 16.067051>,  <7.886066, 21.253841, 15.711745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.808992, 21.087055, 16.067051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254321, -0.853075, -0.455614,
		0.947731, -0.313694, 0.058331,
		-0.192685, -0.416965, 0.888264,
		7.751187, 20.961966, 16.333530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.258982, 20.617920, 15.655629>,  <7.886066, 21.253841, 15.711745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.258982, 20.617920, 15.655629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984389, 20.563335, 15.941320>,  <7.819633, 20.530584, 16.112736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984389, 20.563335, 15.941320>,  <8.258982, 20.617920, 15.655629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.984389, 20.563335, 15.941320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253100, -0.875969, -0.410632,
		0.681676, -0.462662, 0.566799,
		-0.686482, -0.136461, 0.714227,
		7.778444, 20.522398, 16.155588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.422325, 20.012197, 16.010254>,  <8.258982, 20.617920, 15.655629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.422325, 20.012197, 16.010254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.034451, 20.087755, 16.072256>,  <7.801726, 20.133089, 16.109457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.034451, 20.087755, 16.072256>,  <8.422325, 20.012197, 16.010254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.034451, 20.087755, 16.072256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236352, -0.886045, -0.398825,
		0.062007, -0.423371, 0.903832,
		-0.969687, 0.188893, 0.155006,
		7.743545, 20.144423, 16.118757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.224838, 19.445974, 16.284224>,  <8.422325, 20.012197, 16.010254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.224838, 19.445974, 16.284224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.859499, 19.576944, 16.187401>,  <7.640296, 19.655525, 16.129307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.859499, 19.576944, 16.187401>,  <8.224838, 19.445974, 16.284224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.859499, 19.576944, 16.187401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262561, -0.927954, -0.264505,
		-0.311222, -0.178030, 0.933513,
		-0.913347, 0.327424, -0.242056,
		7.585495, 19.675171, 16.114784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.729152, 19.016962, 16.656567>,  <8.224838, 19.445974, 16.284224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.729152, 19.016962, 16.656567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.555658, 19.185104, 16.337774>,  <7.451561, 19.285990, 16.146500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.555658, 19.185104, 16.337774>,  <7.729152, 19.016962, 16.656567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.555658, 19.185104, 16.337774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261172, -0.905189, -0.335293,
		-0.862359, 0.062720, 0.502398,
		-0.433736, 0.420355, -0.796978,
		7.425538, 19.311211, 16.098680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.978484, 18.977825, 16.721121>,  <7.729152, 19.016962, 16.656567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.978484, 18.977825, 16.721121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.051589, 19.024624, 16.330652>,  <7.095451, 19.052704, 16.096371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.051589, 19.024624, 16.330652>,  <6.978484, 18.977825, 16.721121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.051589, 19.024624, 16.330652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524684, -0.828075, -0.197481,
		-0.831448, 0.548273, -0.089952,
		0.182761, 0.116999, -0.976171,
		7.106417, 19.059723, 16.037802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.373950, 18.891647, 16.404320>,  <6.978484, 18.977825, 16.721121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.373950, 18.891647, 16.404320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.619868, 18.858902, 16.090549>,  <6.767419, 18.839254, 15.902287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.619868, 18.858902, 16.090549>,  <6.373950, 18.891647, 16.404320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.619868, 18.858902, 16.090549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470474, -0.836324, -0.281455,
		-0.632994, 0.542089, -0.552682,
		0.614795, -0.081863, -0.784427,
		6.804307, 18.834343, 15.855222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.975920, 18.711124, 15.815866>,  <6.373950, 18.891647, 16.404320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.975920, 18.711124, 15.815866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.337943, 18.594175, 15.692327>,  <6.555157, 18.524006, 15.618204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.337943, 18.594175, 15.692327>,  <5.975920, 18.711124, 15.815866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.337943, 18.594175, 15.692327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377771, -0.886247, -0.268058,
		-0.195340, 0.359281, -0.912556,
		0.905059, -0.292375, -0.308846,
		6.609461, 18.506462, 15.599673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.873873, 18.375631, 15.148841>,  <5.975920, 18.711124, 15.815866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.873873, 18.375631, 15.148841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225307, 18.249067, 15.291934>,  <6.436168, 18.173130, 15.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225307, 18.249067, 15.291934>,  <5.873873, 18.375631, 15.148841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.225307, 18.249067, 15.291934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230801, -0.937069, -0.261979,
		0.418113, 0.147606, -0.896323,
		0.878586, -0.316409, 0.357733,
		6.488883, 18.154144, 15.399254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.041738, 18.016947, 14.603578>,  <5.873873, 18.375631, 15.148841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.041738, 18.016947, 14.603578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.277783, 17.890293, 14.900632>,  <6.419411, 17.814301, 15.078864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.277783, 17.890293, 14.900632>,  <6.041738, 18.016947, 14.603578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.277783, 17.890293, 14.900632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053612, -0.933216, -0.355293,
		0.805537, 0.169849, -0.567680,
		0.590114, -0.316636, 0.742635,
		6.454818, 17.795301, 15.123423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.535681, 17.563606, 14.295774>,  <6.041738, 18.016947, 14.603578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.535681, 17.563606, 14.295774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.545893, 17.467754, 14.683985>,  <6.552021, 17.410244, 14.916912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.545893, 17.467754, 14.683985>,  <6.535681, 17.563606, 14.295774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.545893, 17.467754, 14.683985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219529, -0.945803, -0.239298,
		0.975272, 0.219169, 0.028458,
		0.025531, -0.239628, 0.970529,
		6.553553, 17.395866, 14.975143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.142344, 17.143158, 14.408813>,  <6.535681, 17.563606, 14.295774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.142344, 17.143158, 14.408813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.897069, 17.049692, 14.710649>,  <6.749904, 16.993612, 14.891749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.897069, 17.049692, 14.710649>,  <7.142344, 17.143158, 14.408813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.897069, 17.049692, 14.710649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053968, -0.965410, -0.255092,
		0.788092, -0.115695, 0.604587,
		-0.613187, -0.233665, 0.754588,
		6.713113, 16.979593, 14.937025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.446778, 16.607628, 14.828550>,  <7.142344, 17.143158, 14.408813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.446778, 16.607628, 14.828550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.067262, 16.584839, 14.952842>,  <6.839552, 16.571165, 15.027416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.067262, 16.584839, 14.952842>,  <7.446778, 16.607628, 14.828550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.067262, 16.584839, 14.952842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017258, -0.991483, -0.129090,
		0.315435, -0.117116, 0.941692,
		-0.948790, -0.056971, 0.310728,
		6.782625, 16.567747, 15.046060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.321470, 15.894318, 15.027149>,  <7.446778, 16.607628, 14.828550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.321470, 15.894318, 15.027149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.951293, 16.043552, 15.000733>,  <6.729186, 16.133093, 14.984884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.951293, 16.043552, 15.000733>,  <7.321470, 15.894318, 15.027149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.951293, 16.043552, 15.000733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359607, -0.919800, -0.157007,
		-0.119320, -0.121553, 0.985387,
		-0.925444, 0.373086, -0.066039,
		6.673659, 16.155478, 14.980922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.684444, 15.325797, 15.123456>,  <7.321470, 15.894318, 15.027149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.684444, 15.325797, 15.123456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.718751, 15.350958, 15.521187>,  <7.739335, 15.366055, 15.759826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.718751, 15.350958, 15.521187>,  <7.684444, 15.325797, 15.123456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.718751, 15.350958, 15.521187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011698, 0.997873, -0.064136,
		-0.996247, 0.017132, 0.084848,
		0.085766, 0.062903, 0.994328,
		7.744481, 15.369828, 15.819485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.105052, 14.758560, 14.870067>,  <7.684444, 15.325797, 15.123456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.105052, 14.758560, 14.870067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.034314, 14.994436, 14.554854>,  <7.991871, 15.135962, 14.365727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.034314, 14.994436, 14.554854>,  <8.105052, 14.758560, 14.870067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.034314, 14.994436, 14.554854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730673, 0.615081, 0.296297,
		0.659426, -0.523394, -0.539644,
		-0.176845, 0.589689, -0.788030,
		7.981261, 15.171343, 14.318445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.473210, 14.304918, 14.429510>,  <8.105052, 14.758560, 14.870067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.473210, 14.304918, 14.429510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.861513, 14.382785, 14.373319>,  <9.094495, 14.429505, 14.339603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.861513, 14.382785, 14.373319>,  <8.473210, 14.304918, 14.429510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.861513, 14.382785, 14.373319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215181, -0.446174, 0.868692,
		0.106429, -0.873518, -0.475016,
		0.970757, 0.194668, -0.140478,
		9.152740, 14.441185, 14.331175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.824732, 13.723306, 14.603404>,  <8.473210, 14.304918, 14.429510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.824732, 13.723306, 14.603404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.107009, 14.003263, 14.647496>,  <9.276375, 14.171236, 14.673951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.107009, 14.003263, 14.647496>,  <8.824732, 13.723306, 14.603404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.107009, 14.003263, 14.647496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316939, -0.450975, 0.834369,
		0.633678, -0.553872, -0.540072,
		0.705692, 0.699891, 0.110230,
		9.318717, 14.213230, 14.680565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.428877, 13.375817, 14.828666>,  <8.824732, 13.723306, 14.603404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.428877, 13.375817, 14.828666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508853, 13.752046, 14.938467>,  <9.556838, 13.977782, 15.004348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508853, 13.752046, 14.938467>,  <9.428877, 13.375817, 14.828666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.508853, 13.752046, 14.938467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391872, -0.333541, 0.857430,
		0.898032, -0.063863, -0.435271,
		0.199939, 0.940570, 0.274504,
		9.568834, 14.034217, 15.020819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.888238, 13.324413, 15.422281>,  <9.428877, 13.375817, 14.828666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.888238, 13.324413, 15.422281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834875, 13.720560, 15.407434>,  <9.802857, 13.958248, 15.398525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834875, 13.720560, 15.407434>,  <9.888238, 13.324413, 15.422281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.834875, 13.720560, 15.407434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320903, 0.078603, 0.943845,
		0.937669, 0.114004, -0.328298,
		-0.133407, 0.990366, -0.037119,
		9.794853, 14.017670, 15.396297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.502425, 13.618657, 15.702379>,  <9.888238, 13.324413, 15.422281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.502425, 13.618657, 15.702379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.198554, 13.861199, 15.796379>,  <10.016232, 14.006724, 15.852778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.198554, 13.861199, 15.796379>,  <10.502425, 13.618657, 15.702379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.198554, 13.861199, 15.796379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348083, 0.073906, 0.934546,
		0.549298, 0.791753, -0.267206,
		-0.759677, 0.606355, 0.234999,
		9.970651, 14.043106, 15.866879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.911826, 14.112241, 16.036034>,  <10.502425, 13.618657, 15.702379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.911826, 14.112241, 16.036034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.533181, 14.123447, 16.164497>,  <10.305994, 14.130172, 16.241575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.533181, 14.123447, 16.164497>,  <10.911826, 14.112241, 16.036034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.533181, 14.123447, 16.164497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320837, 0.179141, 0.930039,
		-0.031476, 0.983424, -0.178566,
		-0.946611, 0.028017, 0.321157,
		10.249198, 14.131852, 16.260845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.891661, 14.838056, 16.168255>,  <10.911826, 14.112241, 16.036034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.891661, 14.838056, 16.168255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.002544, 14.503741, 16.357830>,  <11.069075, 14.303153, 16.471575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.002544, 14.503741, 16.357830>,  <10.891661, 14.838056, 16.168255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.002544, 14.503741, 16.357830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059708, 0.477332, 0.876692,
		-0.958953, -0.271324, 0.082417,
		0.277208, -0.835786, 0.473939,
		11.085707, 14.253006, 16.500011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.359869, 14.611669, 16.581766>,  <10.891661, 14.838056, 16.168255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.359869, 14.611669, 16.581766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724416, 14.519938, 16.718483>,  <10.943144, 14.464900, 16.800512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724416, 14.519938, 16.718483>,  <10.359869, 14.611669, 16.581766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724416, 14.519938, 16.718483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146392, 0.595502, 0.789903,
		-0.384681, -0.769927, 0.509150,
		0.911367, -0.229325, 0.341790,
		10.997826, 14.451141, 16.821020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.439803, 14.318386, 17.318781>,  <10.359869, 14.611669, 16.581766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.439803, 14.318386, 17.318781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.800247, 14.483290, 17.265049>,  <11.016514, 14.582232, 17.232809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.800247, 14.483290, 17.265049>,  <10.439803, 14.318386, 17.318781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.800247, 14.483290, 17.265049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114577, 0.525201, 0.843229,
		0.418178, -0.744451, 0.520499,
		0.901110, 0.412257, -0.134331,
		11.070580, 14.606967, 17.224749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.628553, 14.385674, 17.975834>,  <10.439803, 14.318386, 17.318781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.628553, 14.385674, 17.975834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896789, 14.615788, 17.788492>,  <11.057730, 14.753858, 17.676086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896789, 14.615788, 17.788492>,  <10.628553, 14.385674, 17.975834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.896789, 14.615788, 17.788492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230565, 0.761714, 0.605501,
		0.705091, -0.298055, 0.643436,
		0.670587, 0.575287, -0.468357,
		11.097964, 14.788375, 17.647985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.262074, 14.419802, 18.441057>,  <10.628553, 14.385674, 17.975834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.262074, 14.419802, 18.441057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255678, 14.738831, 18.199852>,  <11.251841, 14.930247, 18.055128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255678, 14.738831, 18.199852>,  <11.262074, 14.419802, 18.441057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.255678, 14.738831, 18.199852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017951, 0.602764, 0.797718,
		0.999711, 0.023581, 0.004679,
		-0.015990, 0.797571, -0.603013,
		11.250881, 14.978102, 18.018948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.755206, 14.839201, 18.631901>,  <11.262074, 14.419802, 18.441057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.755206, 14.839201, 18.631901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.528398, 15.095592, 18.424969>,  <11.392313, 15.249428, 18.300810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.528398, 15.095592, 18.424969>,  <11.755206, 14.839201, 18.631901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.528398, 15.095592, 18.424969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151165, 0.698365, 0.699596,
		0.809714, 0.318483, -0.492882,
		-0.567021, 0.640979, -0.517332,
		11.358292, 15.287887, 18.269770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.055773, 15.462935, 18.692081>,  <11.755206, 14.839201, 18.631901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.055773, 15.462935, 18.692081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.697311, 15.569628, 18.550228>,  <11.482235, 15.633643, 18.465117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.697311, 15.569628, 18.550228>,  <12.055773, 15.462935, 18.692081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.697311, 15.569628, 18.550228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041262, 0.745630, 0.665082,
		0.441823, 0.610648, -0.657192,
		-0.896153, 0.266731, -0.354633,
		11.428466, 15.649647, 18.443838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.073011, 16.173252, 18.749598>,  <12.055773, 15.462935, 18.692081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.073011, 16.173252, 18.749598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687101, 16.070267, 18.727980>,  <11.455555, 16.008474, 18.715010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687101, 16.070267, 18.727980>,  <12.073011, 16.173252, 18.749598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.687101, 16.070267, 18.727980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192818, 0.552278, 0.811055,
		-0.178971, 0.792906, -0.582468,
		-0.964775, -0.257466, -0.054044,
		11.397669, 15.993027, 18.711767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.809979, 16.753965, 18.780884>,  <12.073011, 16.173252, 18.749598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.809979, 16.753965, 18.780884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.528180, 16.489662, 18.884485>,  <11.359100, 16.331081, 18.946646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.528180, 16.489662, 18.884485>,  <11.809979, 16.753965, 18.780884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.528180, 16.489662, 18.884485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260909, 0.580520, 0.771312,
		-0.660005, 0.475813, -0.581374,
		-0.704499, -0.660756, 0.259002,
		11.316831, 16.291435, 18.962187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.181398, 17.203802, 19.011889>,  <11.809979, 16.753965, 18.780884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.181398, 17.203802, 19.011889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.121679, 16.842674, 19.173197>,  <11.085848, 16.625998, 19.269981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.121679, 16.842674, 19.173197>,  <11.181398, 17.203802, 19.011889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121679, 16.842674, 19.173197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135985, 0.422716, 0.896002,
		-0.979397, 0.078932, -0.185880,
		-0.149298, -0.902818, 0.403273,
		11.076890, 16.571829, 19.294178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.652577, 17.383553, 19.480354>,  <11.181398, 17.203802, 19.011889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.652577, 17.383553, 19.480354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814998, 17.037071, 19.596846>,  <10.912450, 16.829182, 19.666740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814998, 17.037071, 19.596846>,  <10.652577, 17.383553, 19.480354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.814998, 17.037071, 19.596846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059567, 0.343093, 0.937411,
		-0.911908, -0.363288, 0.190910,
		0.406050, -0.866204, 0.291229,
		10.936812, 16.777210, 19.684214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.183681, 17.088251, 19.987875>,  <10.652577, 17.383553, 19.480354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.183681, 17.088251, 19.987875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.537025, 16.917494, 20.065269>,  <10.749032, 16.815039, 20.111706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.537025, 16.917494, 20.065269>,  <10.183681, 17.088251, 19.987875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.537025, 16.917494, 20.065269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083460, 0.262956, 0.961191,
		-0.461205, -0.865226, 0.196656,
		0.883360, -0.426893, 0.193489,
		10.802033, 16.789427, 20.123316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.060412, 16.638588, 20.539886>,  <10.183681, 17.088251, 19.987875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.060412, 16.638588, 20.539886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.456451, 16.693945, 20.549313>,  <10.694075, 16.727160, 20.554968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.456451, 16.693945, 20.549313>,  <10.060412, 16.638588, 20.539886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.456451, 16.693945, 20.549313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014290, -0.067620, 0.997609,
		0.139657, -0.988066, -0.064972,
		0.990097, 0.138395, 0.023563,
		10.753481, 16.735462, 20.556381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.365728, 16.108843, 20.997997>,  <10.060412, 16.638588, 20.539886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.365728, 16.108843, 20.997997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.631186, 16.405890, 20.962000>,  <10.790460, 16.584118, 20.940401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.631186, 16.405890, 20.962000>,  <10.365728, 16.108843, 20.997997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.631186, 16.405890, 20.962000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162288, -0.025493, 0.986414,
		0.730234, -0.669231, -0.137436,
		0.663642, 0.742617, -0.089992,
		10.830278, 16.628675, 20.935001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.997375, 15.960232, 21.320986>,  <10.365728, 16.108843, 20.997997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.997375, 15.960232, 21.320986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.997869, 16.360142, 21.329454>,  <10.998167, 16.600088, 21.334536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.997869, 16.360142, 21.329454>,  <10.997375, 15.960232, 21.320986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.997869, 16.360142, 21.329454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065402, -0.021207, 0.997633,
		0.997858, 0.000150, -0.065414,
		0.001238, 0.999775, 0.021171,
		10.998240, 16.660074, 21.335806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618103, 16.168795, 21.844551>,  <10.997375, 15.960232, 21.320986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618103, 16.168795, 21.844551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.442232, 16.527540, 21.825293>,  <11.336709, 16.742788, 21.813738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.442232, 16.527540, 21.825293>,  <11.618103, 16.168795, 21.844551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.442232, 16.527540, 21.825293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039791, 0.073006, 0.996537,
		0.897274, 0.436240, -0.067786,
		-0.439678, 0.896864, -0.048148,
		11.310328, 16.796600, 21.810848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970519, 16.616133, 22.319643>,  <11.618103, 16.168795, 21.844551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970519, 16.616133, 22.319643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.618986, 16.802074, 22.276630>,  <11.408066, 16.913639, 22.250822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.618986, 16.802074, 22.276630>,  <11.970519, 16.616133, 22.319643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.618986, 16.802074, 22.276630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004579, 0.233580, 0.972327,
		0.477108, 0.854020, -0.207406,
		-0.878833, 0.464855, -0.107532,
		11.355336, 16.941530, 22.244371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.043223, 17.276484, 22.559294>,  <11.970519, 16.616133, 22.319643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.043223, 17.276484, 22.559294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651193, 17.211451, 22.604933>,  <11.415975, 17.172430, 22.632317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651193, 17.211451, 22.604933>,  <12.043223, 17.276484, 22.559294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651193, 17.211451, 22.604933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068721, 0.261410, 0.962778,
		-0.186357, 0.951437, -0.245029,
		-0.980076, -0.162582, 0.114100,
		11.357170, 17.162676, 22.639162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628067, 17.779135, 22.971664>,  <12.043223, 17.276484, 22.559294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.628067, 17.779135, 22.971664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.378043, 17.470560, 23.019302>,  <11.228028, 17.285416, 23.047886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.378043, 17.470560, 23.019302>,  <11.628067, 17.779135, 22.971664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.378043, 17.470560, 23.019302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021019, 0.135883, 0.990502,
		-0.780293, 0.621626, -0.068720,
		-0.625060, -0.771438, 0.119094,
		11.190525, 17.239128, 23.055031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101930, 18.006529, 23.430841>,  <11.628067, 17.779135, 22.971664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101930, 18.006529, 23.430841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.008748, 17.618689, 23.460789>,  <10.952839, 17.385984, 23.478756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.008748, 17.618689, 23.460789>,  <11.101930, 18.006529, 23.430841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.008748, 17.618689, 23.460789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069746, 0.093444, 0.993179,
		-0.969983, 0.226145, -0.089394,
		-0.232955, -0.969602, 0.074867,
		10.938862, 17.327808, 23.483250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.463072, 17.922962, 23.857430>,  <11.101930, 18.006529, 23.430841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.463072, 17.922962, 23.857430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651389, 17.570379, 23.872347>,  <10.764380, 17.358829, 23.881296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651389, 17.570379, 23.872347>,  <10.463072, 17.922962, 23.857430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.651389, 17.570379, 23.872347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004153, 0.044482, 0.999002,
		-0.882234, -0.470167, 0.024602,
		0.470792, -0.881456, 0.037291,
		10.792626, 17.305943, 23.883533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.108433, 17.535872, 24.420328>,  <10.463072, 17.922962, 23.857430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.108433, 17.535872, 24.420328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.462918, 17.362431, 24.355076>,  <10.675610, 17.258366, 24.315924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.462918, 17.362431, 24.355076>,  <10.108433, 17.535872, 24.420328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.462918, 17.362431, 24.355076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121793, -0.121679, 0.985069,
		-0.446980, -0.892850, -0.055024,
		0.886214, -0.433605, -0.163131,
		10.728783, 17.232349, 24.306137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.121550, 16.967552, 24.813070>,  <10.108433, 17.535872, 24.420328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.121550, 16.967552, 24.813070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.508120, 17.044271, 24.744678>,  <10.740062, 17.090303, 24.703644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.508120, 17.044271, 24.744678>,  <10.121550, 16.967552, 24.813070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.508120, 17.044271, 24.744678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178887, -0.024572, 0.983563,
		0.184446, -0.981127, -0.058057,
		0.966426, 0.191800, -0.170979,
		10.798047, 17.101810, 24.693384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.465373, 16.541294, 25.314434>,  <10.121550, 16.967552, 24.813070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.465373, 16.541294, 25.314434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.737960, 16.815691, 25.212442>,  <10.901512, 16.980330, 25.151247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.737960, 16.815691, 25.212442>,  <10.465373, 16.541294, 25.314434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.737960, 16.815691, 25.212442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273780, 0.084145, 0.958104,
		0.678710, -0.722725, -0.130470,
		0.681467, 0.685994, -0.254977,
		10.942400, 17.021490, 25.135948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.024174, 16.470789, 25.838921>,  <10.465373, 16.541294, 25.314434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.024174, 16.470789, 25.838921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.133369, 16.815676, 25.668247>,  <11.198887, 17.022608, 25.565844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.133369, 16.815676, 25.668247>,  <11.024174, 16.470789, 25.838921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.133369, 16.815676, 25.668247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470953, 0.266972, 0.840791,
		0.838856, -0.430475, -0.333183,
		0.272989, 0.862216, -0.426685,
		11.215266, 17.074341, 25.540241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.766994, 16.535059, 25.899422>,  <11.024174, 16.470789, 25.838921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.766994, 16.535059, 25.899422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608632, 16.899916, 25.856985>,  <11.513615, 17.118830, 25.831524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608632, 16.899916, 25.856985>,  <11.766994, 16.535059, 25.899422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.608632, 16.899916, 25.856985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424860, 0.284368, 0.859435,
		0.814096, 0.295181, -0.500115,
		-0.395905, 0.912142, -0.106092,
		11.489861, 17.173559, 25.825157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.323472, 17.060266, 26.140467>,  <11.766994, 16.535059, 25.899422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.323472, 17.060266, 26.140467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963583, 17.231527, 26.174381>,  <11.747650, 17.334284, 26.194729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963583, 17.231527, 26.174381>,  <12.323472, 17.060266, 26.140467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963583, 17.231527, 26.174381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240713, 0.324710, 0.914670,
		0.364086, 0.843357, -0.395210,
		-0.899722, 0.428150, 0.084785,
		11.693666, 17.359972, 26.199816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.492571, 17.589512, 26.565548>,  <12.323472, 17.060266, 26.140467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.492571, 17.589512, 26.565548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094149, 17.563372, 26.589556>,  <11.855095, 17.547688, 26.603960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094149, 17.563372, 26.589556>,  <12.492571, 17.589512, 26.565548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.094149, 17.563372, 26.589556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044193, 0.221195, 0.974228,
		-0.076945, 0.973037, -0.217434,
		-0.996055, -0.065353, 0.060021,
		11.795332, 17.543766, 26.607561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.345448, 18.165770, 27.010361>,  <12.492571, 17.589512, 26.565548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.345448, 18.165770, 27.010361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001276, 17.962402, 27.024035>,  <11.794773, 17.840382, 27.032240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001276, 17.962402, 27.024035>,  <12.345448, 18.165770, 27.010361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.001276, 17.962402, 27.024035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134829, 0.291849, 0.946914,
		-0.491407, 0.810144, -0.319665,
		-0.860431, -0.508420, 0.034185,
		11.743147, 17.809875, 27.034290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.766204, 18.616884, 27.298439>,  <12.345448, 18.165770, 27.010361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.766204, 18.616884, 27.298439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667991, 18.232759, 27.351379>,  <11.609063, 18.002285, 27.383144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667991, 18.232759, 27.351379>,  <11.766204, 18.616884, 27.298439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.667991, 18.232759, 27.351379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194441, 0.182544, 0.963779,
		-0.949687, 0.210905, -0.231544,
		-0.245533, -0.960311, 0.132351,
		11.594331, 17.944666, 27.391085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.138318, 18.624199, 27.656412>,  <11.766204, 18.616884, 27.298439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.138318, 18.624199, 27.656412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258026, 18.248960, 27.726175>,  <11.329851, 18.023817, 27.768032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258026, 18.248960, 27.726175>,  <11.138318, 18.624199, 27.656412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258026, 18.248960, 27.726175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418847, 0.035077, 0.907379,
		-0.857325, -0.344600, -0.382421,
		0.299269, -0.938094, 0.174407,
		11.347807, 17.967533, 27.778498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.625652, 18.312122, 28.046980>,  <11.138318, 18.624199, 27.656412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.625652, 18.312122, 28.046980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.962900, 18.105200, 28.105688>,  <11.165249, 17.981047, 28.140913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.962900, 18.105200, 28.105688>,  <10.625652, 18.312122, 28.046980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.962900, 18.105200, 28.105688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093208, 0.128219, 0.987356,
		-0.529586, -0.846140, 0.059887,
		0.843120, -0.517308, 0.146770,
		11.215837, 17.950006, 28.149719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498285, 17.997114, 28.654293>,  <10.625652, 18.312122, 28.046980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498285, 17.997114, 28.654293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894666, 17.951246, 28.626389>,  <11.132494, 17.923725, 28.609646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894666, 17.951246, 28.626389>,  <10.498285, 17.997114, 28.654293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.894666, 17.951246, 28.626389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077446, 0.063992, 0.994941,
		-0.109625, -0.991341, 0.072293,
		0.990951, -0.114669, -0.069760,
		11.191951, 17.916845, 28.605461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.707039, 17.621613, 29.141748>,  <10.498285, 17.997114, 28.654293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.707039, 17.621613, 29.141748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058022, 17.800737, 29.073006>,  <11.268611, 17.908213, 29.031759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058022, 17.800737, 29.073006>,  <10.707039, 17.621613, 29.141748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.058022, 17.800737, 29.073006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192846, -0.001302, 0.981228,
		0.439183, -0.894126, -0.087501,
		0.877456, 0.447813, -0.171857,
		11.321259, 17.935081, 29.021448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302215, 17.149296, 29.328447>,  <10.707039, 17.621613, 29.141748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302215, 17.149296, 29.328447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.439727, 17.524569, 29.344593>,  <11.522234, 17.749733, 29.354280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.439727, 17.524569, 29.344593>,  <11.302215, 17.149296, 29.328447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.439727, 17.524569, 29.344593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159113, -0.100557, 0.982126,
		0.925472, -0.331213, -0.183847,
		0.343780, 0.938183, 0.040362,
		11.542861, 17.806023, 29.356701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.834330, 17.196724, 29.815372>,  <11.302215, 17.149296, 29.328447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.834330, 17.196724, 29.815372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739213, 17.581562, 29.761965>,  <11.682143, 17.812466, 29.729919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739213, 17.581562, 29.761965>,  <11.834330, 17.196724, 29.815372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739213, 17.581562, 29.761965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060189, 0.122604, 0.990629,
		0.969450, 0.243599, 0.028753,
		-0.237791, 0.962095, -0.133520,
		11.667875, 17.870192, 29.721909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293521, 17.583862, 30.317205>,  <11.834330, 17.196724, 29.815372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293521, 17.583862, 30.317205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.988948, 17.817207, 30.204134>,  <11.806204, 17.957214, 30.136292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.988948, 17.817207, 30.204134>,  <12.293521, 17.583862, 30.317205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.988948, 17.817207, 30.204134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225238, 0.170809, 0.959214,
		0.607856, 0.794046, 0.001337,
		-0.761432, 0.583365, -0.282677,
		11.760518, 17.992216, 30.119331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392218, 18.164068, 30.677977>,  <12.293521, 17.583862, 30.317205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.392218, 18.164068, 30.677977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004145, 18.131636, 30.586615>,  <11.771300, 18.112175, 30.531797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004145, 18.131636, 30.586615>,  <12.392218, 18.164068, 30.677977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004145, 18.131636, 30.586615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241777, 0.257794, 0.935460,
		-0.016968, 0.962792, -0.269711,
		-0.970183, -0.081083, -0.228407,
		11.713090, 18.107311, 30.518093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.239477, 18.830713, 30.934387>,  <12.392218, 18.164068, 30.677977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.239477, 18.830713, 30.934387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917473, 18.593744, 30.921778>,  <11.724271, 18.451563, 30.914211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917473, 18.593744, 30.921778>,  <12.239477, 18.830713, 30.934387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.917473, 18.593744, 30.921778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162138, 0.168583, 0.972261,
		-0.570675, 0.787791, -0.231765,
		-0.805010, -0.592423, -0.031525,
		11.675970, 18.416018, 30.912321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654163, 19.153687, 31.142561>,  <12.239477, 18.830713, 30.934387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654163, 19.153687, 31.142561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552071, 18.769724, 31.188932>,  <11.490815, 18.539347, 31.216755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552071, 18.769724, 31.188932>,  <11.654163, 19.153687, 31.142561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.552071, 18.769724, 31.188932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198299, 0.169321, 0.965406,
		-0.946327, 0.223413, -0.233564,
		-0.255232, -0.959905, 0.115930,
		11.475501, 18.481752, 31.223711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.857781, 19.147364, 31.392620>,  <11.654163, 19.153687, 31.142561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.857781, 19.147364, 31.392620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.097452, 18.837124, 31.472048>,  <11.241255, 18.650980, 31.519705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.097452, 18.837124, 31.472048>,  <10.857781, 19.147364, 31.392620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.097452, 18.837124, 31.472048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180135, 0.111062, 0.977352,
		-0.780089, -0.621376, -0.073167,
		0.599177, -0.775601, 0.198570,
		11.277205, 18.604445, 31.531618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.615389, 18.947300, 32.036930>,  <10.857781, 19.147364, 31.392620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.615389, 18.947300, 32.036930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.981273, 18.785675, 32.034344>,  <11.200803, 18.688700, 32.032791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.981273, 18.785675, 32.034344>,  <10.615389, 18.947300, 32.036930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.981273, 18.785675, 32.034344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062023, 0.124555, 0.990272,
		-0.399326, -0.906212, 0.138993,
		0.914709, -0.404062, -0.006468,
		11.255686, 18.664457, 32.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.656488, 18.467953, 32.564987>,  <10.615389, 18.947300, 32.036930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.656488, 18.467953, 32.564987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028597, 18.609877, 32.527660>,  <11.251862, 18.695030, 32.505264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028597, 18.609877, 32.527660>,  <10.656488, 18.467953, 32.564987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028597, 18.609877, 32.527660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054762, 0.117205, 0.991597,
		0.362766, -0.927562, 0.089602,
		0.930270, 0.354811, -0.093313,
		11.307678, 18.716320, 32.499668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294376, 18.017286, 32.776905>,  <10.656488, 18.467953, 32.564987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294376, 18.017286, 32.776905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.339519, 18.411947, 32.823860>,  <11.366604, 18.648745, 32.852032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.339519, 18.411947, 32.823860>,  <11.294376, 18.017286, 32.776905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.339519, 18.411947, 32.823860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097897, -0.128609, 0.986851,
		0.988777, -0.099879, -0.111105,
		0.112855, 0.986653, 0.117388,
		11.373375, 18.707943, 32.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.923018, 18.180666, 33.089218>,  <11.294376, 18.017286, 32.776905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.923018, 18.180666, 33.089218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651146, 18.461422, 33.174435>,  <11.488023, 18.629875, 33.225563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651146, 18.461422, 33.174435>,  <11.923018, 18.180666, 33.089218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651146, 18.461422, 33.174435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050123, -0.334204, 0.941167,
		0.731795, 0.629014, 0.262332,
		-0.679679, 0.701890, 0.213041,
		11.447242, 18.671989, 33.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.591339, 17.988686, 33.563717>,  <11.923018, 18.180666, 33.089218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.591339, 17.988686, 33.563717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490423, 17.673906, 33.338486>,  <12.429873, 17.485039, 33.203346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490423, 17.673906, 33.338486>,  <12.591339, 17.988686, 33.563717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.490423, 17.673906, 33.338486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966513, -0.176718, -0.186073,
		0.046923, -0.591169, 0.805182,
		-0.252291, -0.786950, -0.563080,
		12.414736, 17.437820, 33.169563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157593, 17.557013, 33.537277>,  <12.591339, 17.988686, 33.563717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157593, 17.557013, 33.537277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971093, 17.439379, 33.203541>,  <12.859194, 17.368797, 33.003300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971093, 17.439379, 33.203541>,  <13.157593, 17.557013, 33.537277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.971093, 17.439379, 33.203541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883482, -0.203312, -0.422047,
		-0.045513, -0.933904, 0.354614,
		-0.466249, -0.294087, -0.834341,
		12.831219, 17.351152, 32.953239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.555431, 17.048731, 33.294300>,  <13.157593, 17.557013, 33.537277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.555431, 17.048731, 33.294300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364417, 17.201096, 32.977600>,  <13.249808, 17.292515, 32.787579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364417, 17.201096, 32.977600>,  <13.555431, 17.048731, 33.294300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.364417, 17.201096, 32.977600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854163, -0.009837, -0.519912,
		-0.205828, -0.924560, -0.320662,
		-0.477536, 0.380910, -0.791750,
		13.221156, 17.315369, 32.740074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.619974, 16.518087, 32.784740>,  <13.555431, 17.048731, 33.294300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.619974, 16.518087, 32.784740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601281, 16.891726, 32.643162>,  <13.590065, 17.115910, 32.558216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601281, 16.891726, 32.643162>,  <13.619974, 16.518087, 32.784740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601281, 16.891726, 32.643162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748514, -0.201890, -0.631639,
		-0.661470, -0.294452, -0.689750,
		-0.046733, 0.934098, -0.353945,
		13.587261, 17.171955, 32.536980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.944948, 16.385014, 32.728275>,  <13.619974, 16.518087, 32.784740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.944948, 16.385014, 32.728275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581189, 16.230366, 32.666927>,  <12.362933, 16.137577, 32.630119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581189, 16.230366, 32.666927>,  <12.944948, 16.385014, 32.728275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581189, 16.230366, 32.666927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310332, -0.385196, -0.869090,
		0.276928, -0.837944, 0.470276,
		-0.909398, -0.386617, -0.153369,
		12.308370, 16.114380, 32.620918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993495, 15.685217, 32.480598>,  <12.944948, 16.385014, 32.728275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993495, 15.685217, 32.480598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.641282, 15.835814, 32.365417>,  <12.429955, 15.926171, 32.296307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.641282, 15.835814, 32.365417>,  <12.993495, 15.685217, 32.480598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.641282, 15.835814, 32.365417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128966, -0.394295, -0.909890,
		-0.456109, -0.838322, 0.298633,
		-0.880530, 0.376495, -0.287957,
		12.377123, 15.948761, 32.279030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.432628, 15.200115, 32.280487>,  <12.993495, 15.685217, 32.480598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.432628, 15.200115, 32.280487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342805, 15.533318, 32.078228>,  <12.288911, 15.733239, 31.956873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342805, 15.533318, 32.078228>,  <12.432628, 15.200115, 32.280487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342805, 15.533318, 32.078228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010469, -0.516805, -0.856039,
		-0.974405, -0.197522, 0.107331,
		-0.224556, 0.833005, -0.505645,
		12.275438, 15.783219, 31.926535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.922260, 15.000003, 31.753826>,  <12.432628, 15.200115, 32.280487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.922260, 15.000003, 31.753826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117227, 15.328319, 31.634676>,  <12.234206, 15.525309, 31.563187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117227, 15.328319, 31.634676>,  <11.922260, 15.000003, 31.753826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117227, 15.328319, 31.634676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047348, -0.365483, -0.929613,
		-0.871885, 0.439005, -0.217005,
		0.487417, 0.820790, -0.297873,
		12.263452, 15.574555, 31.545315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.472314, 15.304925, 31.149454>,  <11.922260, 15.000003, 31.753826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.472314, 15.304925, 31.149454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838662, 15.464452, 31.131002>,  <12.058471, 15.560167, 31.119932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838662, 15.464452, 31.131002>,  <11.472314, 15.304925, 31.149454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838662, 15.464452, 31.131002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018210, -0.073513, -0.997128,
		-0.401062, 0.914080, -0.060066,
		0.915870, 0.398816, -0.046129,
		12.113423, 15.584097, 31.117165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.485933, 15.901806, 30.840441>,  <11.472314, 15.304925, 31.149454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.485933, 15.901806, 30.840441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852048, 15.746891, 30.796152>,  <12.071716, 15.653942, 30.769579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852048, 15.746891, 30.796152>,  <11.485933, 15.901806, 30.840441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852048, 15.746891, 30.796152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103085, 0.040509, -0.993847,
		0.389389, 0.921069, -0.002846,
		0.915286, -0.387287, -0.110722,
		12.126634, 15.630705, 30.762936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.421045, 15.845120, 30.164536>,  <11.485933, 15.901806, 30.840441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.421045, 15.845120, 30.164536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809653, 15.763674, 30.213017>,  <12.042818, 15.714806, 30.242105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809653, 15.763674, 30.213017>,  <11.421045, 15.845120, 30.164536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.809653, 15.763674, 30.213017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115699, -0.038759, -0.992528,
		0.206793, 0.978283, -0.014096,
		0.971520, -0.203616, 0.121202,
		12.101110, 15.702589, 30.249376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.830966, 16.276119, 29.657675>,  <11.421045, 15.845120, 30.164536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.830966, 16.276119, 29.657675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.082616, 15.981374, 29.756657>,  <12.233605, 15.804526, 29.816046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.082616, 15.981374, 29.756657>,  <11.830966, 16.276119, 29.657675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.082616, 15.981374, 29.756657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275159, -0.086620, -0.957489,
		0.726973, 0.670469, 0.148260,
		0.629124, -0.736864, 0.247456,
		12.271353, 15.760315, 29.830893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.594048, 16.369158, 29.434776>,  <11.830966, 16.276119, 29.657675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.594048, 16.369158, 29.434776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508644, 15.979580, 29.465357>,  <12.457402, 15.745833, 29.483706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508644, 15.979580, 29.465357>,  <12.594048, 16.369158, 29.434776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508644, 15.979580, 29.465357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193421, -0.118848, -0.973891,
		0.957602, -0.193147, 0.213757,
		-0.213508, -0.973945, 0.076450,
		12.444592, 15.687396, 29.488293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099595, 16.105974, 29.085613>,  <12.594048, 16.369158, 29.434776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099595, 16.105974, 29.085613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865748, 15.783086, 29.118151>,  <12.725440, 15.589353, 29.137672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865748, 15.783086, 29.118151>,  <13.099595, 16.105974, 29.085613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865748, 15.783086, 29.118151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170634, -0.220356, -0.960379,
		0.793162, -0.547574, 0.266563,
		-0.584618, -0.807221, 0.081343,
		12.690363, 15.540919, 29.142553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481526, 15.474902, 29.069828>,  <13.099595, 16.105974, 29.085613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481526, 15.474902, 29.069828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.109461, 15.446726, 28.925697>,  <12.886222, 15.429820, 28.839218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.109461, 15.446726, 28.925697>,  <13.481526, 15.474902, 29.069828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109461, 15.446726, 28.925697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366883, -0.141098, -0.919504,
		0.013930, -0.987486, 0.157088,
		-0.930163, -0.070441, -0.360326,
		12.830412, 15.425593, 28.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558288, 14.952333, 28.628344>,  <13.481526, 15.474902, 29.069828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558288, 14.952333, 28.628344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.204405, 15.104268, 28.520256>,  <12.992075, 15.195429, 28.455402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.204405, 15.104268, 28.520256>,  <13.558288, 14.952333, 28.628344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.204405, 15.104268, 28.520256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250192, -0.102196, -0.962787,
		-0.393317, -0.919391, -0.004619,
		-0.884706, 0.379836, -0.270220,
		12.938993, 15.218219, 28.439190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.236713, 14.444240, 28.096775>,  <13.558288, 14.952333, 28.628344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.236713, 14.444240, 28.096775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054790, 14.798559, 28.059868>,  <12.945637, 15.011150, 28.037724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054790, 14.798559, 28.059868>,  <13.236713, 14.444240, 28.096775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054790, 14.798559, 28.059868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050942, -0.077557, -0.995686,
		-0.889132, -0.457544, -0.009851,
		-0.454806, 0.885798, -0.092266,
		12.918348, 15.064299, 28.032188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.699100, 14.312338, 27.754871>,  <13.236713, 14.444240, 28.096775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.699100, 14.312338, 27.754871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747575, 14.697858, 27.659876>,  <12.776659, 14.929170, 27.602879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747575, 14.697858, 27.659876>,  <12.699100, 14.312338, 27.754871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747575, 14.697858, 27.659876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070942, -0.230233, -0.970546,
		-0.990092, 0.134465, 0.040473,
		0.121186, 0.963801, -0.237491,
		12.783931, 14.986999, 27.588629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.331608, 14.360342, 27.215115>,  <12.699100, 14.312338, 27.754871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.331608, 14.360342, 27.215115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512111, 14.712837, 27.158850>,  <12.620413, 14.924335, 27.125090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512111, 14.712837, 27.158850>,  <12.331608, 14.360342, 27.215115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.512111, 14.712837, 27.158850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148319, -0.081370, -0.985586,
		-0.879981, 0.465617, 0.093985,
		0.451258, 0.881238, -0.140664,
		12.647489, 14.977208, 27.116650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.877012, 14.700691, 26.705196>,  <12.331608, 14.360342, 27.215115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.877012, 14.700691, 26.705196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215597, 14.913465, 26.695854>,  <12.418748, 15.041130, 26.690248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215597, 14.913465, 26.695854>,  <11.877012, 14.700691, 26.705196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215597, 14.913465, 26.695854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096641, 0.110348, -0.989183,
		-0.523605, 0.839563, 0.144813,
		0.846462, 0.531937, -0.023357,
		12.469536, 15.073047, 26.688847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.769831, 15.354310, 26.398926>,  <11.877012, 14.700691, 26.705196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.769831, 15.354310, 26.398926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.159944, 15.280140, 26.350853>,  <12.394011, 15.235638, 26.322010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.159944, 15.280140, 26.350853>,  <11.769831, 15.354310, 26.398926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.159944, 15.280140, 26.350853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086885, 0.178268, -0.980138,
		0.203168, 0.966353, 0.157751,
		0.975281, -0.185426, -0.120180,
		12.452528, 15.224512, 26.314798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905115, 15.755530, 25.834911>,  <11.769831, 15.354310, 26.398926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905115, 15.755530, 25.834911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.212238, 15.499670, 25.849445>,  <12.396512, 15.346154, 25.858166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.212238, 15.499670, 25.849445>,  <11.905115, 15.755530, 25.834911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.212238, 15.499670, 25.849445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017741, -0.035462, -0.999214,
		0.640435, 0.767848, -0.015880,
		0.767807, -0.639650, 0.036333,
		12.442580, 15.307775, 25.860346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.407056, 16.006409, 25.421124>,  <11.905115, 15.755530, 25.834911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.407056, 16.006409, 25.421124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.426123, 15.607533, 25.444227>,  <12.437563, 15.368206, 25.458090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.426123, 15.607533, 25.444227>,  <12.407056, 16.006409, 25.421124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.426123, 15.607533, 25.444227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065554, -0.054576, -0.996355,
		0.996710, 0.051280, 0.062769,
		0.047668, -0.997192, 0.057758,
		12.440423, 15.308375, 25.461555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847910, 15.932229, 24.982136>,  <12.407056, 16.006409, 25.421124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847910, 15.932229, 24.982136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687112, 15.569322, 25.031555>,  <12.590633, 15.351577, 25.061207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687112, 15.569322, 25.031555>,  <12.847910, 15.932229, 24.982136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.687112, 15.569322, 25.031555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171802, -0.207273, -0.963079,
		0.899380, -0.365926, 0.239193,
		-0.401994, -0.907268, 0.123551,
		12.566514, 15.297141, 25.068621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275340, 15.500369, 24.525368>,  <12.847910, 15.932229, 24.982136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275340, 15.500369, 24.525368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943133, 15.287422, 24.590885>,  <12.743810, 15.159654, 24.630196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943133, 15.287422, 24.590885>,  <13.275340, 15.500369, 24.525368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943133, 15.287422, 24.590885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013374, -0.313042, -0.949645,
		0.556834, -0.786505, 0.267106,
		-0.830516, -0.532367, 0.163794,
		12.693978, 15.127712, 24.640024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.509660, 14.922014, 24.320162>,  <13.275340, 15.500369, 24.525368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.509660, 14.922014, 24.320162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.110254, 14.900727, 24.315493>,  <12.870611, 14.887955, 24.312691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.110254, 14.900727, 24.315493>,  <13.509660, 14.922014, 24.320162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.110254, 14.900727, 24.315493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035098, -0.464432, -0.884913,
		0.041672, -0.884008, 0.465610,
		-0.998515, -0.053218, -0.011673,
		12.810699, 14.884762, 24.311991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.307920, 14.212042, 24.154739>,  <13.509660, 14.922014, 24.320162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.307920, 14.212042, 24.154739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.005164, 14.452768, 24.052811>,  <12.823510, 14.597204, 23.991653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.005164, 14.452768, 24.052811>,  <13.307920, 14.212042, 24.154739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005164, 14.452768, 24.052811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109023, -0.500713, -0.858720,
		-0.644385, -0.622175, 0.444596,
		-0.756889, 0.601817, -0.254820,
		12.778097, 14.633313, 23.976364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.883677, 13.828965, 23.701582>,  <13.307920, 14.212042, 24.154739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.883677, 13.828965, 23.701582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.730014, 14.196361, 23.664051>,  <12.637815, 14.416798, 23.641533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.730014, 14.196361, 23.664051>,  <12.883677, 13.828965, 23.701582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.730014, 14.196361, 23.664051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086778, -0.137095, -0.986749,
		-0.919180, -0.370926, 0.132370,
		-0.384158, 0.918487, -0.093827,
		12.614766, 14.471907, 23.635902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.219407, 13.766890, 23.383453>,  <12.883677, 13.828965, 23.701582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.219407, 13.766890, 23.383453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317502, 14.142273, 23.286165>,  <12.376359, 14.367503, 23.227793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317502, 14.142273, 23.286165>,  <12.219407, 13.766890, 23.383453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317502, 14.142273, 23.286165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095243, -0.226345, -0.969380,
		-0.964773, 0.260894, 0.033874,
		0.245238, 0.938457, -0.243220,
		12.391073, 14.423810, 23.213200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.714920, 14.047176, 22.968857>,  <12.219407, 13.766890, 23.383453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.714920, 14.047176, 22.968857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044562, 14.257779, 22.885296>,  <12.242348, 14.384141, 22.835159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044562, 14.257779, 22.885296>,  <11.714920, 14.047176, 22.968857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044562, 14.257779, 22.885296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091408, -0.240354, -0.966372,
		-0.559012, 0.815488, -0.149950,
		0.824105, 0.526507, -0.208903,
		12.291794, 14.415731, 22.822624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.503160, 14.375730, 22.392256>,  <11.714920, 14.047176, 22.968857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.503160, 14.375730, 22.392256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901101, 14.416252, 22.391617>,  <12.139866, 14.440565, 22.391233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901101, 14.416252, 22.391617>,  <11.503160, 14.375730, 22.392256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901101, 14.416252, 22.391617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022435, -0.235624, -0.971585,
		-0.098803, 0.966550, -0.236684,
		0.994854, 0.101306, -0.001596,
		12.199557, 14.446644, 22.391138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.684812, 14.915475, 21.902632>,  <11.503160, 14.375730, 22.392256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.684812, 14.915475, 21.902632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.000325, 14.670446, 21.922930>,  <12.189633, 14.523429, 21.935108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.000325, 14.670446, 21.922930>,  <11.684812, 14.915475, 21.902632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.000325, 14.670446, 21.922930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002572, -0.085842, -0.996305,
		0.614664, 0.785740, -0.069287,
		0.788785, -0.612571, 0.050743,
		12.236960, 14.486675, 21.938152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.048082, 15.092552, 21.330759>,  <11.684812, 14.915475, 21.902632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.048082, 15.092552, 21.330759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.246778, 14.758851, 21.426489>,  <12.365994, 14.558631, 21.483927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.246778, 14.758851, 21.426489>,  <12.048082, 15.092552, 21.330759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.246778, 14.758851, 21.426489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200009, -0.158292, -0.966923,
		0.844540, 0.528174, 0.088229,
		0.496738, -0.834252, 0.239324,
		12.395799, 14.508575, 21.498285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.715858, 15.215063, 21.098389>,  <12.048082, 15.092552, 21.330759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.715858, 15.215063, 21.098389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.671622, 14.817648, 21.108622>,  <12.645081, 14.579199, 21.114761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.671622, 14.817648, 21.108622>,  <12.715858, 15.215063, 21.098389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.671622, 14.817648, 21.108622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267876, -0.054585, -0.961906,
		0.957085, -0.099525, 0.272182,
		-0.110591, -0.993537, 0.025582,
		12.638445, 14.519587, 21.116297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386744, 14.993191, 20.805210>,  <12.715858, 15.215063, 21.098389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386744, 14.993191, 20.805210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.115920, 14.699133, 20.791628>,  <12.953425, 14.522698, 20.783480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.115920, 14.699133, 20.791628>,  <13.386744, 14.993191, 20.805210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.115920, 14.699133, 20.791628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415333, -0.343614, -0.842276,
		0.607527, -0.584373, 0.537977,
		-0.677060, -0.735145, -0.033954,
		12.912803, 14.478589, 20.781443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.771093, 14.360538, 20.669744>,  <13.386744, 14.993191, 20.805210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.771093, 14.360538, 20.669744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.401789, 14.264298, 20.549946>,  <13.180205, 14.206554, 20.478067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.401789, 14.264298, 20.549946>,  <13.771093, 14.360538, 20.669744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.401789, 14.264298, 20.549946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370018, -0.347279, -0.861675,
		0.103311, -0.906371, 0.409656,
		-0.923262, -0.240601, -0.299496,
		13.124810, 14.192119, 20.460096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724792, 13.650949, 20.476908>,  <13.771093, 14.360538, 20.669744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724792, 13.650949, 20.476908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447539, 13.850704, 20.268991>,  <13.281188, 13.970557, 20.144241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447539, 13.850704, 20.268991>,  <13.724792, 13.650949, 20.476908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447539, 13.850704, 20.268991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380809, -0.358570, -0.852298,
		-0.612007, -0.788695, 0.058365,
		-0.693131, 0.499387, -0.519789,
		13.239600, 14.000521, 20.113054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.452180, 13.231192, 20.022276>,  <13.724792, 13.650949, 20.476908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.452180, 13.231192, 20.022276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305592, 13.552501, 19.834467>,  <13.217639, 13.745286, 19.721781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305592, 13.552501, 19.834467>,  <13.452180, 13.231192, 20.022276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.305592, 13.552501, 19.834467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439469, -0.295354, -0.848312,
		-0.820102, -0.517222, -0.244775,
		-0.366470, 0.803273, -0.469523,
		13.195650, 13.793483, 19.693609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.007989, 12.902486, 19.476070>,  <13.452180, 13.231192, 20.022276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.007989, 12.902486, 19.476070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098516, 13.277602, 19.370750>,  <13.152833, 13.502672, 19.307558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098516, 13.277602, 19.370750>,  <13.007989, 12.902486, 19.476070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.098516, 13.277602, 19.370750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382805, -0.334198, -0.861262,
		-0.895679, 0.094126, -0.434626,
		0.226318, 0.937791, -0.263302,
		13.166412, 13.558940, 19.291759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605694, 13.174135, 18.876476>,  <13.007989, 12.902486, 19.476070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605694, 13.174135, 18.876476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943716, 13.388001, 18.877924>,  <13.146529, 13.516321, 18.878792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943716, 13.388001, 18.877924>,  <12.605694, 13.174135, 18.876476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943716, 13.388001, 18.877924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184415, -0.285107, -0.940587,
		-0.501868, 0.795516, -0.339532,
		0.845056, 0.534666, 0.003619,
		13.197233, 13.548401, 18.879009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.681882, 13.186166, 18.244499>,  <12.605694, 13.174135, 18.876476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.681882, 13.186166, 18.244499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.033398, 13.339293, 18.358467>,  <13.244308, 13.431169, 18.426847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.033398, 13.339293, 18.358467>,  <12.681882, 13.186166, 18.244499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.033398, 13.339293, 18.358467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377578, -0.192670, -0.905711,
		-0.291827, 0.903509, -0.313860,
		0.878790, 0.382818, 0.284919,
		13.297034, 13.454138, 18.443943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837874, 13.692129, 17.793427>,  <12.681882, 13.186166, 18.244499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837874, 13.692129, 17.793427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.173996, 13.543458, 17.951284>,  <13.375669, 13.454255, 18.046000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.173996, 13.543458, 17.951284>,  <12.837874, 13.692129, 17.793427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.173996, 13.543458, 17.951284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332749, -0.221084, -0.916733,
		0.427980, 0.901652, -0.062102,
		0.840304, -0.371679, 0.394644,
		13.426087, 13.431954, 18.069677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304727, 13.834518, 17.279037>,  <12.837874, 13.692129, 17.793427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304727, 13.834518, 17.279037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498952, 13.568843, 17.506399>,  <13.615487, 13.409437, 17.642817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498952, 13.568843, 17.506399>,  <13.304727, 13.834518, 17.279037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498952, 13.568843, 17.506399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505381, -0.317263, -0.802455,
		0.713315, 0.676902, 0.181618,
		0.485563, -0.664189, 0.568402,
		13.644621, 13.369586, 17.676920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003861, 13.884044, 16.981667>,  <13.304727, 13.834518, 17.279037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.003861, 13.884044, 16.981667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997837, 13.537427, 17.181217>,  <13.994223, 13.329457, 17.300947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997837, 13.537427, 17.181217>,  <14.003861, 13.884044, 16.981667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997837, 13.537427, 17.181217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648767, -0.388120, -0.654571,
		0.760838, 0.313799, 0.568029,
		-0.015060, -0.866541, 0.498879,
		13.993320, 13.277465, 17.330881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715405, 13.652034, 17.053865>,  <14.003861, 13.884044, 16.981667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715405, 13.652034, 17.053865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487500, 13.325699, 17.093430>,  <14.350758, 13.129898, 17.117168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487500, 13.325699, 17.093430>,  <14.715405, 13.652034, 17.053865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.487500, 13.325699, 17.093430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419173, -0.392023, -0.818909,
		0.706872, -0.425120, 0.565336,
		-0.569759, -0.815838, 0.098911,
		14.316572, 13.080948, 17.123102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107944, 13.075686, 16.833033>,  <14.715405, 13.652034, 17.053865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.107944, 13.075686, 16.833033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736238, 12.937438, 16.780865>,  <14.513213, 12.854488, 16.749563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736238, 12.937438, 16.780865>,  <15.107944, 13.075686, 16.833033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736238, 12.937438, 16.780865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307115, -0.526615, -0.792690,
		0.205291, -0.776674, 0.595511,
		-0.929266, -0.345622, -0.130419,
		14.457458, 12.833752, 16.741739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703739, 13.104715, 17.321264>,  <15.107944, 13.075686, 16.833033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.703739, 13.104715, 17.321264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098438, 13.097297, 17.385746>,  <16.335257, 13.092845, 17.424435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098438, 13.097297, 17.385746>,  <15.703739, 13.104715, 17.321264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098438, 13.097297, 17.385746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162268, -0.111842, 0.980388,
		-0.000152, -0.993553, -0.113369,
		0.986747, -0.018546, 0.161205,
		16.394463, 13.091733, 17.434107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.690915, 12.788820, 17.839333>,  <15.703739, 13.104715, 17.321264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.690915, 12.788820, 17.839333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060726, 12.940053, 17.858521>,  <16.282614, 13.030793, 17.870033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060726, 12.940053, 17.858521>,  <15.690915, 12.788820, 17.839333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060726, 12.940053, 17.858521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024181, -0.067421, 0.997432,
		0.380346, -0.923313, -0.053191,
		0.924528, 0.378083, 0.047970,
		16.338085, 13.053478, 17.872911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090532, 12.341791, 18.329868>,  <15.690915, 12.788820, 17.839333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090532, 12.341791, 18.329868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269188, 12.698616, 18.302334>,  <16.376381, 12.912711, 18.285814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269188, 12.698616, 18.302334>,  <16.090532, 12.341791, 18.329868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269188, 12.698616, 18.302334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016312, 0.085040, 0.996244,
		0.894566, -0.443837, 0.052533,
		0.446637, 0.892063, -0.068835,
		16.403179, 12.966235, 18.281683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537237, 12.355368, 18.947195>,  <16.090532, 12.341791, 18.329868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537237, 12.355368, 18.947195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494793, 12.736426, 18.833208>,  <16.469326, 12.965061, 18.764816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494793, 12.736426, 18.833208>,  <16.537237, 12.355368, 18.947195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494793, 12.736426, 18.833208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130537, 0.270758, 0.953756,
		0.985749, 0.138404, 0.095624,
		-0.106113, 0.952646, -0.284966,
		16.462959, 13.022221, 18.747719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090813, 12.749995, 19.235212>,  <16.537237, 12.355368, 18.947195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090813, 12.749995, 19.235212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.774837, 12.981352, 19.153767>,  <16.585253, 13.120166, 19.104898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.774837, 12.981352, 19.153767>,  <17.090813, 12.749995, 19.235212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774837, 12.981352, 19.153767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185183, 0.541583, 0.819996,
		0.584555, 0.610040, -0.534926,
		-0.789938, 0.578392, -0.203616,
		16.537855, 13.154870, 19.092682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306078, 13.343399, 19.515614>,  <17.090813, 12.749995, 19.235212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306078, 13.343399, 19.515614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933823, 13.466753, 19.436813>,  <16.710468, 13.540766, 19.389534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933823, 13.466753, 19.436813>,  <17.306078, 13.343399, 19.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933823, 13.466753, 19.436813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014476, 0.568943, 0.822250,
		0.365651, 0.762366, -0.533944,
		-0.930639, 0.308386, -0.196999,
		16.654631, 13.559269, 19.377714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302326, 14.025114, 19.606857>,  <17.306078, 13.343399, 19.515614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302326, 14.025114, 19.606857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917948, 13.935669, 19.672071>,  <16.687321, 13.882002, 19.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917948, 13.935669, 19.672071>,  <17.302326, 14.025114, 19.606857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917948, 13.935669, 19.672071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005884, 0.605510, 0.795816,
		-0.276674, 0.763776, -0.583179,
		-0.960946, -0.223613, 0.163035,
		16.629663, 13.868585, 19.720982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098831, 14.619442, 19.899361>,  <17.302326, 14.025114, 19.606857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098831, 14.619442, 19.899361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817883, 14.351863, 19.996668>,  <16.649313, 14.191316, 20.055052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817883, 14.351863, 19.996668>,  <17.098831, 14.619442, 19.899361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817883, 14.351863, 19.996668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110862, 0.440397, 0.890932,
		-0.703122, 0.598798, -0.383484,
		-0.702374, -0.668948, 0.243269,
		16.607170, 14.151178, 20.069649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594065, 15.102736, 20.264368>,  <17.098831, 14.619442, 19.899361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594065, 15.102736, 20.264368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524464, 14.722788, 20.368267>,  <16.482704, 14.494819, 20.430607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524464, 14.722788, 20.368267>,  <16.594065, 15.102736, 20.264368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.524464, 14.722788, 20.368267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084646, 0.277220, 0.957071,
		-0.981101, 0.144544, -0.128639,
		-0.174000, -0.949871, 0.259746,
		16.472263, 14.437826, 20.446190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077230, 15.109242, 20.729694>,  <16.594065, 15.102736, 20.264368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077230, 15.109242, 20.729694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246517, 14.753417, 20.798471>,  <16.348089, 14.539922, 20.839737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246517, 14.753417, 20.798471>,  <16.077230, 15.109242, 20.729694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246517, 14.753417, 20.798471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082539, 0.151131, 0.985062,
		-0.902261, -0.431087, -0.009462,
		0.423218, -0.889563, 0.171941,
		16.373482, 14.486548, 20.850054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711078, 14.900833, 21.324820>,  <16.077230, 15.109242, 20.729694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711078, 14.900833, 21.324820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043316, 14.680988, 21.288956>,  <16.242659, 14.549082, 21.267437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043316, 14.680988, 21.288956>,  <15.711078, 14.900833, 21.324820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043316, 14.680988, 21.288956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006331, -0.151679, 0.988410,
		-0.556842, -0.821535, -0.122504,
		0.830594, -0.549613, -0.089662,
		16.292494, 14.516105, 21.262056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600166, 14.215858, 21.685196>,  <15.711078, 14.900833, 21.324820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600166, 14.215858, 21.685196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993183, 14.278536, 21.645077>,  <16.228992, 14.316142, 21.621004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993183, 14.278536, 21.645077>,  <15.600166, 14.215858, 21.685196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993183, 14.278536, 21.645077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126814, -0.169600, 0.977320,
		0.136130, -0.972976, -0.186510,
		0.982541, 0.156695, -0.100299,
		16.287945, 14.325544, 21.614986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857764, 13.807247, 22.120834>,  <15.600166, 14.215858, 21.685196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857764, 13.807247, 22.120834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177036, 14.046644, 22.093367>,  <16.368599, 14.190283, 22.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177036, 14.046644, 22.093367>,  <15.857764, 13.807247, 22.120834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177036, 14.046644, 22.093367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146189, -0.081848, 0.985865,
		0.584413, -0.796936, -0.152822,
		0.798179, 0.598493, -0.068670,
		16.416491, 14.226192, 22.072765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480577, 13.473131, 22.424137>,  <15.857764, 13.807247, 22.120834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480577, 13.473131, 22.424137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499901, 13.871800, 22.450392>,  <16.511494, 14.111002, 22.466145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499901, 13.871800, 22.450392>,  <16.480577, 13.473131, 22.424137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499901, 13.871800, 22.450392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038080, -0.067501, 0.996992,
		0.998106, -0.045662, -0.041214,
		0.048307, 0.996674, 0.065635,
		16.514393, 14.170802, 22.470081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966928, 13.588073, 22.951715>,  <16.480577, 13.473131, 22.424137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.966928, 13.588073, 22.951715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783161, 13.941863, 22.919130>,  <16.672901, 14.154138, 22.899578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783161, 13.941863, 22.919130>,  <16.966928, 13.588073, 22.951715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783161, 13.941863, 22.919130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110281, 0.147808, 0.982848,
		0.881346, 0.442556, -0.165447,
		-0.459420, 0.884476, -0.081464,
		16.645334, 14.207206, 22.894691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376190, 14.059836, 23.330790>,  <16.966928, 13.588073, 22.951715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376190, 14.059836, 23.330790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.013519, 14.222713, 23.286732>,  <16.795918, 14.320439, 23.260298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.013519, 14.222713, 23.286732>,  <17.376190, 14.059836, 23.330790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.013519, 14.222713, 23.286732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047449, 0.161002, 0.985813,
		0.419148, 0.899040, -0.126655,
		-0.906677, 0.407192, -0.110142,
		16.741516, 14.344872, 23.253689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286573, 14.522666, 23.931797>,  <17.376190, 14.059836, 23.330790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286573, 14.522666, 23.931797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911383, 14.503836, 23.794401>,  <16.686268, 14.492537, 23.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911383, 14.503836, 23.794401>,  <17.286573, 14.522666, 23.931797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911383, 14.503836, 23.794401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346279, 0.078464, 0.934845,
		-0.017057, 0.995805, -0.089899,
		-0.937977, -0.047076, -0.343488,
		16.629990, 14.489713, 23.691355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992542, 15.133317, 24.113548>,  <17.286573, 14.522666, 23.931797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992542, 15.133317, 24.113548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690975, 14.878330, 24.049992>,  <16.510035, 14.725338, 24.011858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690975, 14.878330, 24.049992>,  <16.992542, 15.133317, 24.113548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690975, 14.878330, 24.049992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507675, 0.411790, 0.756766,
		-0.416984, 0.651204, -0.634081,
		-0.753917, -0.637466, -0.158890,
		16.464800, 14.687090, 24.002325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345652, 15.541544, 24.150661>,  <16.992542, 15.133317, 24.113548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345652, 15.541544, 24.150661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239378, 15.162511, 24.221657>,  <16.175613, 14.935091, 24.264254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239378, 15.162511, 24.221657>,  <16.345652, 15.541544, 24.150661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239378, 15.162511, 24.221657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556823, 0.301119, 0.774128,
		-0.786995, 0.106844, -0.607638,
		-0.265682, -0.947582, 0.177486,
		16.159674, 14.878236, 24.274902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680401, 15.650557, 24.364264>,  <16.345652, 15.541544, 24.150661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680401, 15.650557, 24.364264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773501, 15.275347, 24.466978>,  <15.829362, 15.050221, 24.528606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773501, 15.275347, 24.466978>,  <15.680401, 15.650557, 24.364264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773501, 15.275347, 24.466978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479121, 0.119175, 0.869620,
		-0.846327, -0.325436, -0.421689,
		0.232751, -0.938024, 0.256784,
		15.843327, 14.993939, 24.544014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060897, 15.521625, 24.641623>,  <15.680401, 15.650557, 24.364264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060897, 15.521625, 24.641623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307641, 15.241750, 24.785801>,  <15.455688, 15.073825, 24.872307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307641, 15.241750, 24.785801>,  <15.060897, 15.521625, 24.641623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307641, 15.241750, 24.785801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425566, 0.088739, 0.900566,
		-0.662100, -0.708917, -0.243023,
		0.616861, -0.699687, 0.360445,
		15.492700, 15.031844, 24.893934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673928, 15.161798, 25.082039>,  <15.060897, 15.521625, 24.641623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.673928, 15.161798, 25.082039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.034184, 15.060173, 25.223064>,  <15.250337, 14.999198, 25.307680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.034184, 15.060173, 25.223064>,  <14.673928, 15.161798, 25.082039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034184, 15.060173, 25.223064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318009, 0.167618, 0.933153,
		-0.296176, -0.952553, 0.070169,
		0.900639, -0.254063, 0.352565,
		15.304376, 14.983954, 25.328835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556993, 14.856194, 25.656435>,  <14.673928, 15.161798, 25.082039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.556993, 14.856194, 25.656435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945482, 14.939274, 25.703060>,  <15.178576, 14.989121, 25.731035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945482, 14.939274, 25.703060>,  <14.556993, 14.856194, 25.656435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945482, 14.939274, 25.703060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137695, 0.090322, 0.986348,
		0.194338, -0.974013, 0.116323,
		0.971222, 0.207702, 0.116564,
		15.236849, 15.001584, 25.738029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891078, 14.535936, 26.292841>,  <14.556993, 14.856194, 25.656435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891078, 14.535936, 26.292841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104550, 14.863628, 26.208891>,  <15.232634, 15.060244, 26.158520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104550, 14.863628, 26.208891>,  <14.891078, 14.535936, 26.292841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104550, 14.863628, 26.208891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002061, 0.246912, 0.969036,
		0.845684, -0.517588, 0.130083,
		0.533680, 0.819230, -0.209876,
		15.264654, 15.109397, 26.145927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000199, 14.668324, 26.952869>,  <14.891078, 14.535936, 26.292841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000199, 14.668324, 26.952869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157040, 15.013563, 26.825548>,  <15.251143, 15.220707, 26.749155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157040, 15.013563, 26.825548>,  <15.000199, 14.668324, 26.952869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157040, 15.013563, 26.825548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319704, 0.452295, 0.832598,
		0.862582, -0.224699, 0.453281,
		0.392100, 0.863099, -0.318304,
		15.274670, 15.272492, 26.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443110, 14.920314, 27.528605>,  <15.000199, 14.668324, 26.952869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443110, 14.920314, 27.528605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.331622, 15.212479, 27.279184>,  <15.264729, 15.387777, 27.129532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.331622, 15.212479, 27.279184>,  <15.443110, 14.920314, 27.528605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331622, 15.212479, 27.279184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179038, 0.598378, 0.780954,
		0.943537, 0.329305, -0.036007,
		-0.278719, 0.730412, -0.623549,
		15.248007, 15.431602, 27.092119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599484, 15.558203, 27.902466>,  <15.443110, 14.920314, 27.528605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599484, 15.558203, 27.902466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.402420, 15.723355, 27.596050>,  <15.284182, 15.822447, 27.412201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.402420, 15.723355, 27.596050>,  <15.599484, 15.558203, 27.902466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.402420, 15.723355, 27.596050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284293, 0.755616, 0.590102,
		0.822473, 0.508500, -0.254884,
		-0.492662, 0.412881, -0.766037,
		15.254622, 15.847219, 27.366240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861345, 16.241365, 27.642859>,  <15.599484, 15.558203, 27.902466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861345, 16.241365, 27.642859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472201, 16.211409, 27.555285>,  <15.238715, 16.193434, 27.502741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472201, 16.211409, 27.555285>,  <15.861345, 16.241365, 27.642859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472201, 16.211409, 27.555285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189185, 0.802241, 0.566231,
		0.133232, 0.592284, -0.794638,
		-0.972861, -0.074893, -0.218936,
		15.180343, 16.188940, 27.489603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586938, 16.976315, 27.684044>,  <15.861345, 16.241365, 27.642859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586938, 16.976315, 27.684044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281721, 16.725132, 27.745277>,  <15.098591, 16.574423, 27.782019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281721, 16.725132, 27.745277>,  <15.586938, 16.976315, 27.684044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281721, 16.725132, 27.745277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382776, 0.629874, 0.675827,
		-0.520815, 0.457087, -0.720987,
		-0.763043, -0.627958, 0.153086,
		15.052809, 16.536745, 27.791203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971087, 17.425222, 27.602936>,  <15.586938, 16.976315, 27.684044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971087, 17.425222, 27.602936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912350, 17.099127, 27.827017>,  <14.877107, 16.903469, 27.961466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912350, 17.099127, 27.827017>,  <14.971087, 17.425222, 27.602936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912350, 17.099127, 27.827017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453152, 0.558860, 0.694500,
		-0.879255, -0.151872, -0.451492,
		-0.146845, -0.815237, 0.560201,
		14.868296, 16.854555, 27.995077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.214030, 17.624531, 27.732635>,  <14.971087, 17.425222, 27.602936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.214030, 17.624531, 27.732635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338563, 17.370806, 28.015682>,  <14.413282, 17.218571, 28.185511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338563, 17.370806, 28.015682>,  <14.214030, 17.624531, 27.732635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338563, 17.370806, 28.015682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550411, 0.486646, 0.678397,
		-0.774674, -0.600687, -0.197623,
		0.311332, -0.634311, 0.707617,
		14.431962, 17.180513, 28.227968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.685557, 17.623707, 28.313587>,  <14.214030, 17.624531, 27.732635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.685557, 17.623707, 28.313587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.967904, 17.421610, 28.512175>,  <14.137312, 17.300352, 28.631327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.967904, 17.421610, 28.512175>,  <13.685557, 17.623707, 28.313587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.967904, 17.421610, 28.512175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418134, 0.268544, 0.867783,
		-0.571766, -0.820130, -0.021703,
		0.705866, -0.505244, 0.496469,
		14.179664, 17.270037, 28.661116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355947, 17.312449, 28.862459>,  <13.685557, 17.623707, 28.313587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355947, 17.312449, 28.862459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741669, 17.328928, 28.967091>,  <13.973102, 17.338816, 29.029869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741669, 17.328928, 28.967091>,  <13.355947, 17.312449, 28.862459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741669, 17.328928, 28.967091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259562, 0.342640, 0.902898,
		-0.052432, -0.938563, 0.341102,
		0.964302, 0.041197, 0.261581,
		14.030959, 17.341288, 29.045565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462218, 16.959385, 29.479685>,  <13.355947, 17.312449, 28.862459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462218, 16.959385, 29.479685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797140, 17.177256, 29.498659>,  <13.998093, 17.307978, 29.510044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797140, 17.177256, 29.498659>,  <13.462218, 16.959385, 29.479685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797140, 17.177256, 29.498659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225328, 0.264726, 0.937629,
		0.498147, -0.795768, 0.344387,
		0.837303, 0.544677, 0.047436,
		14.048331, 17.340658, 29.512890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.857072, 16.792679, 30.135406>,  <13.462218, 16.959385, 29.479685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.857072, 16.792679, 30.135406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982255, 17.157640, 30.029898>,  <14.057365, 17.376617, 29.966593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982255, 17.157640, 30.029898>,  <13.857072, 16.792679, 30.135406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982255, 17.157640, 30.029898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097126, 0.307014, 0.946736,
		0.944788, -0.270669, 0.184701,
		0.312958, 0.912404, -0.263774,
		14.076142, 17.431362, 29.950766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501355, 17.327024, 30.197218>,  <13.857072, 16.792679, 30.135406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501355, 17.327024, 30.197218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735624, 17.030827, 30.329069>,  <14.876185, 16.853107, 30.408180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735624, 17.030827, 30.329069>,  <14.501355, 17.327024, 30.197218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735624, 17.030827, 30.329069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642797, 0.176588, -0.745405,
		0.493760, 0.648447, 0.579411,
		0.585673, -0.740495, 0.329628,
		14.911326, 16.808678, 30.427958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129093, 17.627125, 30.184734>,  <14.501355, 17.327024, 30.197218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129093, 17.627125, 30.184734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.143044, 17.228889, 30.149885>,  <15.151414, 16.989948, 30.128975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.143044, 17.228889, 30.149885>,  <15.129093, 17.627125, 30.184734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.143044, 17.228889, 30.149885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503226, 0.092812, -0.859156,
		0.863451, -0.013880, 0.504242,
		0.034875, -0.995587, -0.087123,
		15.153506, 16.930214, 30.123749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.774278, 17.289103, 30.264902>,  <15.129093, 17.627125, 30.184734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.774278, 17.289103, 30.264902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608616, 17.020267, 30.019375>,  <15.509218, 16.858967, 29.872059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608616, 17.020267, 30.019375>,  <15.774278, 17.289103, 30.264902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608616, 17.020267, 30.019375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717779, 0.173527, -0.674301,
		0.559704, -0.719851, 0.410544,
		-0.414155, -0.672089, -0.613818,
		15.484369, 16.818642, 29.835230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.820451, 18.021856, 30.257368>,  <15.774278, 17.289103, 30.264902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.820451, 18.021856, 30.257368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.036091, 18.338844, 30.371466>,  <16.165476, 18.529037, 30.439924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.036091, 18.338844, 30.371466>,  <15.820451, 18.021856, 30.257368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036091, 18.338844, 30.371466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610639, -0.134505, -0.780402,
		-0.580077, 0.594897, -0.556424,
		0.539101, 0.792468, 0.285244,
		16.197821, 18.576584, 30.457039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935981, 18.441336, 29.672344>,  <15.820451, 18.021856, 30.257368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935981, 18.441336, 29.672344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.226919, 18.545279, 29.926413>,  <16.401482, 18.607645, 30.078854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.226919, 18.545279, 29.926413>,  <15.935981, 18.441336, 29.672344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226919, 18.545279, 29.926413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679222, -0.140261, -0.720406,
		-0.098114, 0.955406, -0.278519,
		0.727346, 0.259858, 0.635171,
		16.445124, 18.623236, 30.116964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286512, 18.911303, 29.316803>,  <15.935981, 18.441336, 29.672344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286512, 18.911303, 29.316803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536480, 18.748425, 29.583237>,  <16.686460, 18.650698, 29.743097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536480, 18.748425, 29.583237>,  <16.286512, 18.911303, 29.316803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536480, 18.748425, 29.583237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718852, -0.032669, -0.694396,
		0.304513, 0.912758, 0.272296,
		0.624919, -0.407193, 0.666085,
		16.723955, 18.626266, 29.783062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986338, 19.260809, 29.068172>,  <16.286512, 18.911303, 29.316803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986338, 19.260809, 29.068172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030188, 18.941284, 29.304775>,  <17.056498, 18.749569, 29.446737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030188, 18.941284, 29.304775>,  <16.986338, 19.260809, 29.068172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030188, 18.941284, 29.304775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621829, -0.409143, -0.667780,
		0.775443, 0.441020, 0.451874,
		0.109623, -0.798814, 0.591506,
		17.063074, 18.701639, 29.482227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671055, 19.064672, 29.042805>,  <16.986338, 19.260809, 29.068172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671055, 19.064672, 29.042805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.522503, 18.730793, 29.205460>,  <17.433372, 18.530466, 29.303053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.522503, 18.730793, 29.205460>,  <17.671055, 19.064672, 29.042805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522503, 18.730793, 29.205460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571036, -0.550672, -0.608833,
		0.732116, 0.006097, 0.681152,
		-0.371380, -0.834699, 0.406638,
		17.411089, 18.480383, 29.327452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222599, 18.651781, 29.218126>,  <17.671055, 19.064672, 29.042805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222599, 18.651781, 29.218126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.919266, 18.395178, 29.171822>,  <17.737267, 18.241217, 29.144039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.919266, 18.395178, 29.171822>,  <18.222599, 18.651781, 29.218126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.919266, 18.395178, 29.171822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589342, -0.598799, -0.542325,
		0.278588, -0.479486, 0.832155,
		-0.758331, -0.641509, -0.115763,
		17.691767, 18.202724, 29.137093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548267, 18.002865, 29.250488>,  <18.222599, 18.651781, 29.218126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548267, 18.002865, 29.250488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185114, 17.915373, 29.107431>,  <17.967222, 17.862877, 29.021597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185114, 17.915373, 29.107431>,  <18.548267, 18.002865, 29.250488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185114, 17.915373, 29.107431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400743, -0.703321, -0.587150,
		-0.123108, -0.676384, 0.726188,
		-0.907882, -0.218731, -0.357641,
		17.912750, 17.849754, 29.000139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325172, 17.353252, 29.398798>,  <18.548267, 18.002865, 29.250488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.325172, 17.353252, 29.398798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126301, 17.436785, 29.061941>,  <18.006977, 17.486904, 28.859827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126301, 17.436785, 29.061941>,  <18.325172, 17.353252, 29.398798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126301, 17.436785, 29.061941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521784, -0.703515, -0.482502,
		-0.693220, -0.679306, 0.240810,
		-0.497180, 0.208829, -0.842142,
		17.977146, 17.499434, 28.809299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350325, 16.720543, 29.148539>,  <18.325172, 17.353252, 29.398798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350325, 16.720543, 29.148539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237476, 16.961004, 28.849468>,  <18.169767, 17.105282, 28.670025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237476, 16.961004, 28.849468>,  <18.350325, 16.720543, 29.148539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237476, 16.961004, 28.849468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461327, -0.598313, -0.655134,
		-0.841182, -0.529749, -0.108534,
		-0.282119, 0.601156, -0.747677,
		18.152840, 17.141352, 28.625166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171509, 16.297579, 28.556435>,  <18.350325, 16.720543, 29.148539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171509, 16.297579, 28.556435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215981, 16.654736, 28.381903>,  <18.242664, 16.869030, 28.277184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215981, 16.654736, 28.381903>,  <18.171509, 16.297579, 28.556435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215981, 16.654736, 28.381903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177115, -0.449825, -0.875379,
		-0.977890, 0.020046, -0.208157,
		0.111182, 0.892892, -0.436329,
		18.249334, 16.922604, 28.251003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757387, 16.361954, 28.061373>,  <18.171509, 16.297579, 28.556435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757387, 16.361954, 28.061373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001604, 16.652000, 27.933969>,  <18.148134, 16.826029, 27.857529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001604, 16.652000, 27.933969>,  <17.757387, 16.361954, 28.061373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001604, 16.652000, 27.933969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099625, -0.328651, -0.939182,
		-0.785694, 0.605140, -0.128415,
		0.610541, 0.725117, -0.318506,
		18.184767, 16.869535, 27.838417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413576, 16.738609, 27.520710>,  <17.757387, 16.361954, 28.061373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413576, 16.738609, 27.520710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809874, 16.759052, 27.470409>,  <18.047653, 16.771318, 27.440229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809874, 16.759052, 27.470409>,  <17.413576, 16.738609, 27.520710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809874, 16.759052, 27.470409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104573, -0.303296, -0.947141,
		-0.086545, 0.951525, -0.295145,
		0.990744, 0.051106, -0.125752,
		18.107098, 16.774384, 27.432684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409599, 17.170397, 27.048653>,  <17.413576, 16.738609, 27.520710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409599, 17.170397, 27.048653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747593, 16.957939, 27.023703>,  <17.950388, 16.830465, 27.008734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747593, 16.957939, 27.023703>,  <17.409599, 17.170397, 27.048653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.747593, 16.957939, 27.023703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203683, -0.211787, -0.955855,
		0.494486, 0.820386, -0.287141,
		0.844983, -0.531143, -0.062374,
		18.001087, 16.798595, 27.004990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613186, 17.327221, 26.319775>,  <17.409599, 17.170397, 27.048653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.613186, 17.327221, 26.319775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780449, 16.989384, 26.453526>,  <17.880808, 16.786682, 26.533775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780449, 16.989384, 26.453526>,  <17.613186, 17.327221, 26.319775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780449, 16.989384, 26.453526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323075, -0.205754, -0.923736,
		0.848979, 0.494297, 0.186829,
		0.418159, -0.844592, 0.334376,
		17.905897, 16.736006, 26.553839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364004, 17.297569, 26.130800>,  <17.613186, 17.327221, 26.319775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364004, 17.297569, 26.130800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234402, 16.921757, 26.175159>,  <18.156641, 16.696268, 26.201775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234402, 16.921757, 26.175159>,  <18.364004, 17.297569, 26.130800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234402, 16.921757, 26.175159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290754, -0.210441, -0.933368,
		0.900267, -0.270173, 0.341358,
		-0.324007, -0.939532, 0.110899,
		18.137199, 16.639896, 26.208429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930265, 16.911131, 25.870579>,  <18.364004, 17.297569, 26.130800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930265, 16.911131, 25.870579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.620071, 16.658712, 25.878656>,  <18.433956, 16.507261, 25.883503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.620071, 16.658712, 25.878656>,  <18.930265, 16.911131, 25.870579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.620071, 16.658712, 25.878656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288634, -0.382779, -0.877593,
		0.561530, -0.674731, 0.478980,
		-0.775483, -0.631046, 0.020192,
		18.387426, 16.469398, 25.884714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244619, 16.307333, 25.678679>,  <18.930265, 16.911131, 25.870579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244619, 16.307333, 25.678679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.856380, 16.255333, 25.597645>,  <18.623438, 16.224133, 25.549025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.856380, 16.255333, 25.597645>,  <19.244619, 16.307333, 25.678679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.856380, 16.255333, 25.597645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234568, -0.321935, -0.917244,
		0.054022, -0.937794, 0.342963,
		-0.970598, -0.129999, -0.202585,
		18.565201, 16.216333, 25.536869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.154625, 15.585343, 25.393345>,  <19.244619, 16.307333, 25.678679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.154625, 15.585343, 25.393345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.836033, 15.797169, 25.276600>,  <18.644878, 15.924264, 25.206553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.836033, 15.797169, 25.276600>,  <19.154625, 15.585343, 25.393345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836033, 15.797169, 25.276600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098573, -0.362515, -0.926750,
		-0.596579, -0.766906, 0.236535,
		-0.796478, 0.529564, -0.291865,
		18.597090, 15.956038, 25.189041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.924080, 15.223989, 24.915287>,  <19.154625, 15.585343, 25.393345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.924080, 15.223989, 24.915287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746681, 15.577132, 24.853487>,  <18.640242, 15.789019, 24.816406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746681, 15.577132, 24.853487>,  <18.924080, 15.223989, 24.915287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746681, 15.577132, 24.853487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057465, -0.144018, -0.987905,
		-0.894433, -0.447009, 0.013138,
		-0.443495, 0.882860, -0.154502,
		18.613632, 15.841990, 24.807137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484520, 15.146167, 24.344786>,  <18.924080, 15.223989, 24.915287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484520, 15.146167, 24.344786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511038, 15.543894, 24.378099>,  <18.526949, 15.782530, 24.398087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511038, 15.543894, 24.378099>,  <18.484520, 15.146167, 24.344786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511038, 15.543894, 24.378099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094931, 0.089374, -0.991464,
		-0.993274, 0.057822, 0.100317,
		0.066294, 0.994318, 0.083283,
		18.530926, 15.842190, 24.403084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896650, 15.507077, 24.082590>,  <18.484520, 15.146167, 24.344786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896650, 15.507077, 24.082590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193384, 15.774665, 24.063995>,  <18.371426, 15.935217, 24.052839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193384, 15.774665, 24.063995>,  <17.896650, 15.507077, 24.082590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.193384, 15.774665, 24.063995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121332, 0.065725, -0.990434,
		-0.659514, 0.740379, 0.129924,
		0.741836, 0.668968, -0.046486,
		18.415936, 15.975355, 24.050049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730656, 16.027525, 23.634489>,  <17.896650, 15.507077, 24.082590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730656, 16.027525, 23.634489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.130341, 16.040586, 23.643509>,  <18.370152, 16.048424, 23.648920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.130341, 16.040586, 23.643509>,  <17.730656, 16.027525, 23.634489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.130341, 16.040586, 23.643509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026495, -0.125925, -0.991686,
		-0.029541, 0.991502, -0.126691,
		0.999212, 0.032652, 0.022550,
		18.430105, 16.050383, 23.650274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.864975, 16.382956, 23.096111>,  <17.730656, 16.027525, 23.634489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.864975, 16.382956, 23.096111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204447, 16.184650, 23.169827>,  <18.408131, 16.065668, 23.214056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204447, 16.184650, 23.169827>,  <17.864975, 16.382956, 23.096111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204447, 16.184650, 23.169827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026992, -0.307383, -0.951203,
		0.528216, 0.812242, -0.247489,
		0.848681, -0.495761, 0.184289,
		18.459051, 16.035923, 23.225113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327124, 16.662851, 22.548855>,  <17.864975, 16.382956, 23.096111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327124, 16.662851, 22.548855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447422, 16.308884, 22.691103>,  <18.519602, 16.096502, 22.776451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447422, 16.308884, 22.691103>,  <18.327124, 16.662851, 22.548855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447422, 16.308884, 22.691103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102231, -0.340822, -0.934553,
		0.948209, 0.317420, -0.012035,
		0.300748, -0.884921, 0.355621,
		18.537647, 16.043407, 22.797789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978460, 16.543098, 22.237381>,  <18.327124, 16.662851, 22.548855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978460, 16.543098, 22.237381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.881363, 16.171572, 22.349360>,  <18.823105, 15.948655, 22.416548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.881363, 16.171572, 22.349360>,  <18.978460, 16.543098, 22.237381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.881363, 16.171572, 22.349360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288977, -0.344711, -0.893121,
		0.926049, -0.135902, 0.352084,
		-0.242744, -0.928819, 0.279947,
		18.808540, 15.892926, 22.433344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499113, 16.176708, 22.062502>,  <18.978460, 16.543098, 22.237381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499113, 16.176708, 22.062502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195078, 15.917237, 22.077911>,  <19.012657, 15.761556, 22.087156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195078, 15.917237, 22.077911>,  <19.499113, 16.176708, 22.062502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195078, 15.917237, 22.077911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424295, -0.540326, -0.726651,
		0.492176, -0.535975, 0.685925,
		-0.760090, -0.648675, 0.038524,
		18.967051, 15.722634, 22.089468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798117, 15.462612, 22.079033>,  <19.499113, 16.176708, 22.062502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798117, 15.462612, 22.079033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.425659, 15.418400, 21.940035>,  <19.202185, 15.391872, 21.856636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.425659, 15.418400, 21.940035>,  <19.798117, 15.462612, 22.079033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425659, 15.418400, 21.940035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358007, -0.458193, -0.813566,
		-0.069295, -0.881953, 0.466215,
		-0.931144, -0.110533, -0.347496,
		19.146317, 15.385241, 21.835787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763426, 14.753176, 21.821712>,  <19.798117, 15.462612, 22.079033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763426, 14.753176, 21.821712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.473873, 14.959899, 21.638887>,  <19.300142, 15.083933, 21.529192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.473873, 14.959899, 21.638887>,  <19.763426, 14.753176, 21.821712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.473873, 14.959899, 21.638887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151055, -0.527687, -0.835900,
		-0.673187, -0.674133, 0.303916,
		-0.723880, 0.516809, -0.457062,
		19.256708, 15.114942, 21.501768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.338209, 14.322859, 21.404293>,  <19.763426, 14.753176, 21.821712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.338209, 14.322859, 21.404293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.238113, 14.666888, 21.226460>,  <19.178057, 14.873306, 21.119761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.238113, 14.666888, 21.226460>,  <19.338209, 14.322859, 21.404293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238113, 14.666888, 21.226460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161398, -0.415710, -0.895062,
		-0.954637, -0.295733, -0.034788,
		-0.250238, 0.860074, -0.444583,
		19.163042, 14.924911, 21.093084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.030731, 14.116989, 20.787046>,  <19.338209, 14.322859, 21.404293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.030731, 14.116989, 20.787046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057232, 14.507175, 20.703068>,  <19.073132, 14.741287, 20.652681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057232, 14.507175, 20.703068>,  <19.030731, 14.116989, 20.787046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057232, 14.507175, 20.703068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015949, -0.209347, -0.977711,
		-0.997675, 0.068124, 0.001688,
		0.066252, 0.975465, -0.209947,
		19.077108, 14.799815, 20.640083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677338, 14.162348, 20.215179>,  <19.030731, 14.116989, 20.787046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677338, 14.162348, 20.215179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845749, 14.524998, 20.204117>,  <18.946796, 14.742588, 20.197479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845749, 14.524998, 20.204117>,  <18.677338, 14.162348, 20.215179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845749, 14.524998, 20.204117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001392, -0.031138, -0.999514,
		-0.907047, 0.420785, -0.014372,
		0.421028, 0.906626, -0.027658,
		18.972057, 14.796986, 20.195820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172379, 14.615230, 19.922928>,  <18.677338, 14.162348, 20.215179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172379, 14.615230, 19.922928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545677, 14.749872, 19.872734>,  <18.769657, 14.830658, 19.842617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545677, 14.749872, 19.872734>,  <18.172379, 14.615230, 19.922928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545677, 14.749872, 19.872734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103360, -0.082939, -0.991180,
		-0.344045, 0.937986, -0.042611,
		0.933247, 0.336606, -0.125485,
		18.825651, 14.850854, 19.835089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142588, 15.167222, 19.462055>,  <18.172379, 14.615230, 19.922928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142588, 15.167222, 19.462055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517763, 15.028600, 19.456905>,  <18.742868, 14.945426, 19.453815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517763, 15.028600, 19.456905>,  <18.142588, 15.167222, 19.462055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517763, 15.028600, 19.456905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039663, -0.070315, -0.996736,
		0.344520, 0.935390, -0.079697,
		0.937941, -0.346556, -0.012875,
		18.799145, 14.924633, 19.453043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463755, 15.645332, 19.023563>,  <18.142588, 15.167222, 19.462055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463755, 15.645332, 19.023563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.705183, 15.326703, 19.037260>,  <18.850040, 15.135526, 19.045479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.705183, 15.326703, 19.037260>,  <18.463755, 15.645332, 19.023563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705183, 15.326703, 19.037260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063055, 0.004876, -0.997998,
		0.794813, 0.604521, 0.053171,
		0.603570, -0.796574, 0.034242,
		18.886253, 15.087730, 19.047533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939848, 15.773649, 18.532684>,  <18.463755, 15.645332, 19.023563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939848, 15.773649, 18.532684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977064, 15.381664, 18.603130>,  <18.999393, 15.146473, 18.645399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977064, 15.381664, 18.603130>,  <18.939848, 15.773649, 18.532684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977064, 15.381664, 18.603130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128453, -0.163592, -0.978130,
		0.987342, 0.113630, 0.110658,
		0.093042, -0.979962, 0.176117,
		19.004976, 15.087675, 18.655966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455545, 15.572272, 18.036757>,  <18.939848, 15.773649, 18.532684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455545, 15.572272, 18.036757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.251577, 15.236274, 18.110931>,  <19.129196, 15.034675, 18.155437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.251577, 15.236274, 18.110931>,  <19.455545, 15.572272, 18.036757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251577, 15.236274, 18.110931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015317, -0.206671, -0.978291,
		0.860085, -0.501691, 0.092519,
		-0.509920, -0.839996, 0.185439,
		19.098600, 14.984275, 18.166563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.810892, 15.152155, 17.736250>,  <19.455545, 15.572272, 18.036757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.810892, 15.152155, 17.736250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440302, 15.004353, 17.764828>,  <19.217947, 14.915671, 17.781975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440302, 15.004353, 17.764828>,  <19.810892, 15.152155, 17.736250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440302, 15.004353, 17.764828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011453, -0.162070, -0.986713,
		0.376176, -0.914986, 0.145922,
		-0.926478, -0.369506, 0.071446,
		19.162359, 14.893500, 17.786263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784426, 14.541577, 17.331591>,  <19.810892, 15.152155, 17.736250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784426, 14.541577, 17.331591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.388741, 14.573558, 17.380690>,  <19.151329, 14.592747, 17.410149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.388741, 14.573558, 17.380690>,  <19.784426, 14.541577, 17.331591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.388741, 14.573558, 17.380690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137293, -0.213756, -0.967191,
		-0.051089, -0.973610, 0.222427,
		-0.989212, 0.079951, 0.122749,
		19.091976, 14.597544, 17.417515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375978, 13.922465, 17.007586>,  <19.784426, 14.541577, 17.331591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.375978, 13.922465, 17.007586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139931, 14.244966, 16.991009>,  <18.998302, 14.438466, 16.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139931, 14.244966, 16.991009>,  <19.375978, 13.922465, 17.007586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139931, 14.244966, 16.991009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145572, -0.156759, -0.976850,
		-0.794082, -0.570427, 0.209874,
		-0.590121, 0.806250, -0.041441,
		18.962894, 14.486840, 16.978577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809702, 13.652452, 16.716951>,  <19.375978, 13.922465, 17.007586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809702, 13.652452, 16.716951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805958, 14.050243, 16.675148>,  <18.803711, 14.288918, 16.650066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805958, 14.050243, 16.675148>,  <18.809702, 13.652452, 16.716951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805958, 14.050243, 16.675148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180543, -0.104478, -0.978003,
		-0.983523, 0.009712, 0.180524,
		-0.009362, 0.994480, -0.104510,
		18.803148, 14.348587, 16.643795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115065, 13.853923, 16.410992>,  <18.809702, 13.652452, 16.716951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115065, 13.853923, 16.410992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.419558, 14.091956, 16.307920>,  <18.602253, 14.234776, 16.246078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.419558, 14.091956, 16.307920>,  <18.115065, 13.853923, 16.410992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.419558, 14.091956, 16.307920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169763, -0.200629, -0.964846,
		-0.625863, 0.778218, -0.051702,
		0.761233, 0.595084, -0.257679,
		18.647928, 14.270481, 16.230618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866739, 14.262255, 15.826414>,  <18.115065, 13.853923, 16.410992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866739, 14.262255, 15.826414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.262394, 14.204896, 15.813472>,  <18.499786, 14.170481, 15.805707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.262394, 14.204896, 15.813472>,  <17.866739, 14.262255, 15.826414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.262394, 14.204896, 15.813472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028182, 0.031037, -0.999121,
		0.144274, 0.989179, 0.026658,
		0.989136, -0.143396, -0.032355,
		18.559135, 14.161877, 15.803765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392801, 14.700990, 15.507438>,  <17.866739, 14.262255, 15.826414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392801, 14.700990, 15.507438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.560930, 14.344159, 15.441072>,  <18.661808, 14.130060, 15.401254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.560930, 14.344159, 15.441072>,  <18.392801, 14.700990, 15.507438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.560930, 14.344159, 15.441072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051784, 0.158967, -0.985925,
		0.905895, 0.422999, 0.020622,
		0.420323, -0.892077, -0.165912,
		18.687027, 14.076536, 15.391299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.057232, 14.792556, 15.056241>,  <18.392801, 14.700990, 15.507438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.057232, 14.792556, 15.056241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.866846, 14.443069, 15.016092>,  <18.752615, 14.233376, 14.992003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.866846, 14.443069, 15.016092>,  <19.057232, 14.792556, 15.056241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866846, 14.443069, 15.016092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194029, 0.006994, -0.980971,
		0.857795, -0.486380, 0.166198,
		-0.475962, -0.873720, -0.100371,
		18.724058, 14.180953, 14.985981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598730, 15.251234, 14.841909>,  <19.057232, 14.792556, 15.056241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.598730, 15.251234, 14.841909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985262, 15.152711, 14.812144>,  <20.217182, 15.093596, 14.794285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985262, 15.152711, 14.812144>,  <19.598730, 15.251234, 14.841909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985262, 15.152711, 14.812144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249402, 0.967750, 0.035482,
		0.063274, -0.052847, 0.996596,
		0.966331, -0.246308, -0.074414,
		20.275162, 15.078818, 14.789820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956621, 15.462714, 15.469692>,  <19.598730, 15.251234, 14.841909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956621, 15.462714, 15.469692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229570, 15.476165, 15.177601>,  <20.393341, 15.484235, 15.002346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229570, 15.476165, 15.177601>,  <19.956621, 15.462714, 15.469692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229570, 15.476165, 15.177601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117704, 0.980853, 0.155159,
		0.721464, -0.191827, 0.665352,
		0.682375, 0.033627, -0.730228,
		20.434282, 15.486253, 14.958532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.570759, 15.655463, 15.663815>,  <19.956621, 15.462714, 15.469692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.570759, 15.655463, 15.663815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564255, 15.772156, 15.281270>,  <20.560352, 15.842172, 15.051744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564255, 15.772156, 15.281270>,  <20.570759, 15.655463, 15.663815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.564255, 15.772156, 15.281270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151973, 0.946096, 0.286017,
		0.988251, -0.140691, -0.059718,
		-0.016259, 0.291732, -0.956362,
		20.559378, 15.859675, 14.994362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.204369, 16.068344, 15.425315>,  <20.570759, 15.655463, 15.663815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.204369, 16.068344, 15.425315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897604, 16.183107, 15.195696>,  <20.713545, 16.251965, 15.057924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897604, 16.183107, 15.195696>,  <21.204369, 16.068344, 15.425315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897604, 16.183107, 15.195696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231478, 0.957954, 0.169536,
		0.598553, -0.002861, -0.801078,
		-0.766911, 0.286909, -0.574048,
		20.667530, 16.269180, 15.023481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473280, 16.622084, 14.995723>,  <21.204369, 16.068344, 15.425315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473280, 16.622084, 14.995723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076506, 16.671333, 14.983711>,  <20.838440, 16.700884, 14.976504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076506, 16.671333, 14.983711>,  <21.473280, 16.622084, 14.995723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076506, 16.671333, 14.983711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123971, 0.991885, -0.028202,
		0.026313, -0.031697, -0.999151,
		-0.991937, 0.123124, -0.030029,
		20.778925, 16.708271, 14.974703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.209242, 17.017937, 14.382038>,  <21.473280, 16.622084, 14.995723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.209242, 17.017937, 14.382038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930487, 17.072405, 14.663692>,  <20.763233, 17.105085, 14.832684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930487, 17.072405, 14.663692>,  <21.209242, 17.017937, 14.382038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930487, 17.072405, 14.663692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077545, 0.990360, -0.114775,
		-0.712974, -0.025383, -0.700731,
		-0.696889, 0.136170, 0.704133,
		20.721420, 17.113256, 14.874931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.025517, 17.658440, 14.214391>,  <21.209242, 17.017937, 14.382038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.025517, 17.658440, 14.214391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834990, 17.624586, 14.564467>,  <20.720673, 17.604275, 14.774513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834990, 17.624586, 14.564467>,  <21.025517, 17.658440, 14.214391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.834990, 17.624586, 14.564467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006987, 0.995690, 0.092484,
		-0.879246, 0.037936, -0.474855,
		-0.476317, -0.084634, 0.875191,
		20.692095, 17.599195, 14.827024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.329937, 18.068182, 14.192221>,  <21.025517, 17.658440, 14.214391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.329937, 18.068182, 14.192221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.475279, 18.039202, 14.563753>,  <20.562483, 18.021812, 14.786673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.475279, 18.039202, 14.563753>,  <20.329937, 18.068182, 14.192221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.475279, 18.039202, 14.563753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201430, 0.967281, 0.154250,
		-0.909616, -0.243141, 0.336870,
		0.363353, -0.072453, 0.928830,
		20.584284, 18.017466, 14.842402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843550, 18.379131, 14.564929>,  <20.329937, 18.068182, 14.192221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843550, 18.379131, 14.564929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180147, 18.355642, 14.779757>,  <20.382105, 18.341549, 14.908653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180147, 18.355642, 14.779757>,  <19.843550, 18.379131, 14.564929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180147, 18.355642, 14.779757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104341, 0.957697, 0.268197,
		-0.530098, -0.281724, 0.799767,
		0.841492, -0.058722, 0.537068,
		20.432594, 18.338026, 14.940877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758621, 18.839298, 15.043383>,  <19.843550, 18.379131, 14.564929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758621, 18.839298, 15.043383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.153269, 18.783857, 15.077732>,  <20.390057, 18.750593, 15.098342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.153269, 18.783857, 15.077732>,  <19.758621, 18.839298, 15.043383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153269, 18.783857, 15.077732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119345, 0.972739, 0.198837,
		-0.111092, -0.185928, 0.976263,
		0.986618, -0.138601, 0.085874,
		20.449255, 18.742277, 15.103495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999161, 19.291492, 15.578689>,  <19.758621, 18.839298, 15.043383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999161, 19.291492, 15.578689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.339485, 19.215500, 15.382718>,  <20.543680, 19.169905, 15.265136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.339485, 19.215500, 15.382718>,  <19.999161, 19.291492, 15.578689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.339485, 19.215500, 15.382718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294592, 0.944507, 0.145337,
		0.435127, -0.267982, 0.859563,
		0.850811, -0.189981, -0.489926,
		20.594728, 19.158506, 15.235740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.570549, 19.618048, 15.975190>,  <19.999161, 19.291492, 15.578689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.570549, 19.618048, 15.975190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683880, 19.559629, 15.596055>,  <20.751879, 19.524578, 15.368574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683880, 19.559629, 15.596055>,  <20.570549, 19.618048, 15.975190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683880, 19.559629, 15.596055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371702, 0.927805, -0.031852,
		0.884061, -0.343289, 0.317159,
		0.283327, -0.146048, -0.947837,
		20.768877, 19.515816, 15.311704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095606, 20.070864, 15.923071>,  <20.570549, 19.618048, 15.975190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095606, 20.070864, 15.923071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995176, 19.988272, 15.544795>,  <20.934919, 19.938717, 15.317830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995176, 19.988272, 15.544795>,  <21.095606, 20.070864, 15.923071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995176, 19.988272, 15.544795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307237, 0.909465, -0.280141,
		0.917914, -0.360887, -0.164905,
		-0.251075, -0.206480, -0.945688,
		20.919855, 19.926327, 15.261088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502295, 20.470423, 15.636485>,  <21.095606, 20.070864, 15.923071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502295, 20.470423, 15.636485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274813, 20.392799, 15.316756>,  <21.138325, 20.346226, 15.124919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274813, 20.392799, 15.316756>,  <21.502295, 20.470423, 15.636485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274813, 20.392799, 15.316756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181363, 0.918271, -0.351974,
		0.802299, -0.345136, -0.487029,
		-0.568704, -0.194059, -0.799323,
		21.104202, 20.334581, 15.076960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879911, 20.616745, 15.100354>,  <21.502295, 20.470423, 15.636485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879911, 20.616745, 15.100354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.508989, 20.626308, 14.950936>,  <21.286436, 20.632048, 14.861285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.508989, 20.626308, 14.950936>,  <21.879911, 20.616745, 15.100354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.508989, 20.626308, 14.950936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193108, 0.885455, -0.422705,
		0.320650, -0.464110, -0.825703,
		-0.927304, 0.023910, -0.373545,
		21.230799, 20.633482, 14.838873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.911802, 20.867561, 14.385830>,  <21.879911, 20.616745, 15.100354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.911802, 20.867561, 14.385830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534845, 20.942846, 14.496445>,  <21.308672, 20.988016, 14.562814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534845, 20.942846, 14.496445>,  <21.911802, 20.867561, 14.385830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534845, 20.942846, 14.496445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036032, 0.879001, -0.475457,
		-0.332563, -0.438103, -0.835145,
		-0.942392, 0.188212, 0.276537,
		21.252127, 20.999310, 14.579406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.569223, 20.949350, 13.787243>,  <21.911802, 20.867561, 14.385830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.569223, 20.949350, 13.787243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344330, 21.141222, 14.056702>,  <21.209394, 21.256346, 14.218377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344330, 21.141222, 14.056702>,  <21.569223, 20.949350, 13.787243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.344330, 21.141222, 14.056702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008459, 0.817881, -0.575325,
		-0.826935, -0.317769, -0.463898,
		-0.562233, 0.479681, 0.673647,
		21.175659, 21.285126, 14.258796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946604, 21.316305, 13.446525>,  <21.569223, 20.949350, 13.787243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946604, 21.316305, 13.446525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052677, 21.485033, 13.793337>,  <21.116322, 21.586269, 14.001425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052677, 21.485033, 13.793337>,  <20.946604, 21.316305, 13.446525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052677, 21.485033, 13.793337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098031, 0.882771, -0.459462,
		-0.959201, 0.206838, 0.192746,
		0.265185, 0.421822, 0.867031,
		21.132233, 21.611580, 14.053447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.624569, 21.938200, 13.453546>,  <20.946604, 21.316305, 13.446525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.624569, 21.938200, 13.453546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890713, 22.002628, 13.745122>,  <21.050398, 22.041285, 13.920068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890713, 22.002628, 13.745122>,  <20.624569, 21.938200, 13.453546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.890713, 22.002628, 13.745122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104168, 0.946862, -0.304306,
		-0.739221, 0.278405, 0.613224,
		0.665358, 0.161071, 0.728941,
		21.090321, 22.050949, 13.963804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.628660, 22.561008, 13.566320>,  <20.624569, 21.938200, 13.453546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.628660, 22.561008, 13.566320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.971296, 22.504404, 13.764805>,  <21.176878, 22.470442, 13.883895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.971296, 22.504404, 13.764805>,  <20.628660, 22.561008, 13.566320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.971296, 22.504404, 13.764805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344039, 0.873338, -0.344846,
		-0.384560, 0.466108, 0.796779,
		0.856592, -0.141510, 0.496210,
		21.228273, 22.461950, 13.913668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.951153, 23.226032, 13.848496>,  <20.628660, 22.561008, 13.566320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.951153, 23.226032, 13.848496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235134, 22.944883, 13.830894>,  <21.405523, 22.776194, 13.820333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235134, 22.944883, 13.830894>,  <20.951153, 23.226032, 13.848496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.235134, 22.944883, 13.830894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627355, 0.659594, -0.413957,
		0.319984, 0.266284, 0.909232,
		0.709955, -0.702871, -0.044005,
		21.448120, 22.734022, 13.817693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.581127, 23.548180, 14.100921>,  <20.951153, 23.226032, 13.848496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.581127, 23.548180, 14.100921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.718918, 23.247412, 13.876081>,  <21.801592, 23.066952, 13.741179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.718918, 23.247412, 13.876081>,  <21.581127, 23.548180, 14.100921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.718918, 23.247412, 13.876081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608218, 0.634843, -0.476492,
		0.715128, -0.177738, 0.676019,
		0.344475, -0.751920, -0.562097,
		21.822260, 23.021835, 13.707452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418520, 23.511026, 13.980367>,  <21.581127, 23.548180, 14.100921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418520, 23.511026, 13.980367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257696, 23.301483, 13.679988>,  <22.161201, 23.175756, 13.499761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257696, 23.301483, 13.679988>,  <22.418520, 23.511026, 13.980367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.257696, 23.301483, 13.679988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508325, 0.554445, -0.658936,
		0.761548, -0.646655, 0.043371,
		-0.402057, -0.523858, -0.750948,
		22.137079, 23.144325, 13.454703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.946003, 23.381195, 13.563608>,  <22.418520, 23.511026, 13.980367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.946003, 23.381195, 13.563608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633530, 23.357040, 13.315059>,  <22.446045, 23.342546, 13.165929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633530, 23.357040, 13.315059>,  <22.946003, 23.381195, 13.563608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633530, 23.357040, 13.315059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557143, 0.381642, -0.737524,
		0.281679, -0.922335, -0.264488,
		-0.781184, -0.060387, -0.621373,
		22.399174, 23.338924, 13.128647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.301414, 23.039450, 12.914480>,  <22.946003, 23.381195, 13.563608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.301414, 23.039450, 12.914480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955650, 23.228176, 12.844979>,  <22.748192, 23.341412, 12.803279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955650, 23.228176, 12.844979>,  <23.301414, 23.039450, 12.914480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.955650, 23.228176, 12.844979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449980, 0.571782, -0.685991,
		-0.224312, -0.671161, -0.706560,
		-0.864408, 0.471814, -0.173751,
		22.696327, 23.369720, 12.792854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.149488, 22.924398, 12.304502>,  <23.301414, 23.039450, 12.914480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.149488, 22.924398, 12.304502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.000900, 23.270275, 12.439745>,  <22.911747, 23.477802, 12.520890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.000900, 23.270275, 12.439745>,  <23.149488, 22.924398, 12.304502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000900, 23.270275, 12.439745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533630, 0.496848, -0.684383,
		-0.759769, -0.073804, -0.645991,
		-0.371469, 0.864694, 0.338106,
		22.889460, 23.529684, 12.541177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.600157, 22.249027, 12.432514>,  <23.149488, 22.924398, 12.304502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.600157, 22.249027, 12.432514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.601048, 22.025616, 12.764307>,  <23.601582, 21.891569, 12.963383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.601048, 22.025616, 12.764307>,  <23.600157, 22.249027, 12.432514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.601048, 22.025616, 12.764307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391469, -0.762796, -0.514679,
		0.920188, 0.325863, 0.216948,
		0.002227, -0.558530, 0.829481,
		23.601715, 21.858057, 13.013151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.125332, 22.079782, 12.950408>,  <23.600157, 22.249027, 12.432514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.125332, 22.079782, 12.950408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.907099, 21.864227, 12.693679>,  <23.776159, 21.734894, 12.539641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.907099, 21.864227, 12.693679>,  <24.125332, 22.079782, 12.950408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.907099, 21.864227, 12.693679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533997, 0.366708, -0.761822,
		0.645899, -0.758369, 0.087695,
		-0.545584, -0.538889, -0.641824,
		23.743423, 21.702560, 12.501132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644625, 21.742409, 12.546986>,  <24.125332, 22.079782, 12.950408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644625, 21.742409, 12.546986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299297, 21.804949, 12.355054>,  <24.092100, 21.842472, 12.239895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299297, 21.804949, 12.355054>,  <24.644625, 21.742409, 12.546986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299297, 21.804949, 12.355054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497735, 0.420758, -0.758435,
		0.083312, -0.893599, -0.441068,
		-0.863319, 0.156348, -0.479829,
		24.040302, 21.851852, 12.211105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685432, 21.417900, 11.974324>,  <24.644625, 21.742409, 12.546986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685432, 21.417900, 11.974324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440954, 21.731400, 11.930182>,  <24.294268, 21.919498, 11.903696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440954, 21.731400, 11.930182>,  <24.685432, 21.417900, 11.974324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440954, 21.731400, 11.930182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514409, 0.287390, -0.807955,
		-0.601518, -0.550586, -0.578818,
		-0.611195, 0.783749, -0.110356,
		24.257595, 21.966524, 11.897075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360804, 21.591599, 11.310328>,  <24.685432, 21.417900, 11.974324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360804, 21.591599, 11.310328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418512, 21.943365, 11.491794>,  <24.453136, 22.154425, 11.600673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418512, 21.943365, 11.491794>,  <24.360804, 21.591599, 11.310328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418512, 21.943365, 11.491794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673129, 0.248825, -0.696407,
		-0.725316, 0.405843, -0.556064,
		0.144270, 0.879419, 0.453662,
		24.461794, 22.207191, 11.627892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.044050, 21.057388, 10.808640>,  <24.360804, 21.591599, 11.310328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.044050, 21.057388, 10.808640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.751833, 21.060055, 11.081774>,  <23.576504, 21.061655, 11.245654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.751833, 21.060055, 11.081774>,  <24.044050, 21.057388, 10.808640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.751833, 21.060055, 11.081774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676610, 0.127996, -0.725132,
		-0.092234, -0.991752, -0.088996,
		-0.730542, 0.006666, 0.682835,
		23.532671, 21.062054, 11.286624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.380262, 20.727587, 10.591988>,  <24.044050, 21.057388, 10.808640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.380262, 20.727587, 10.591988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.195532, 20.395294, 10.467663>,  <23.084694, 20.195919, 10.393068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.195532, 20.395294, 10.467663>,  <23.380262, 20.727587, 10.591988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.195532, 20.395294, 10.467663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585812, -0.548793, 0.596365,
		-0.665990, 0.093338, 0.740098,
		-0.461824, -0.830731, -0.310812,
		23.056984, 20.146074, 10.374419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.027191, 20.423258, 11.236645>,  <23.380262, 20.727587, 10.591988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.027191, 20.423258, 11.236645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.137211, 20.154341, 10.961729>,  <23.203222, 19.992990, 10.796780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.137211, 20.154341, 10.961729>,  <23.027191, 20.423258, 11.236645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.137211, 20.154341, 10.961729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386085, -0.577454, 0.719365,
		-0.880503, -0.463213, 0.100734,
		0.275050, -0.672295, -0.687290,
		23.219727, 19.952652, 10.755542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.810659, 19.851244, 11.456398>,  <23.027191, 20.423258, 11.236645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.810659, 19.851244, 11.456398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058859, 19.684265, 11.190850>,  <23.207779, 19.584078, 11.031522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058859, 19.684265, 11.190850>,  <22.810659, 19.851244, 11.456398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.058859, 19.684265, 11.190850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042058, -0.827615, 0.559719,
		-0.783078, -0.375226, -0.495977,
		0.620499, -0.417444, -0.663868,
		23.245008, 19.559032, 10.991689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.501734, 19.216984, 11.256350>,  <22.810659, 19.851244, 11.456398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.501734, 19.216984, 11.256350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892431, 19.177113, 11.180418>,  <23.126850, 19.153191, 11.134859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892431, 19.177113, 11.180418>,  <22.501734, 19.216984, 11.256350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.892431, 19.177113, 11.180418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018204, -0.920722, 0.389794,
		-0.213632, -0.377274, -0.901125,
		0.976744, -0.099677, -0.189828,
		23.185455, 19.147209, 11.123469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471249, 18.576777, 10.963230>,  <22.501734, 19.216984, 11.256350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471249, 18.576777, 10.963230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834625, 18.677410, 11.096760>,  <23.052652, 18.737789, 11.176877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834625, 18.677410, 11.096760>,  <22.471249, 18.576777, 10.963230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834625, 18.677410, 11.096760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064603, -0.873507, 0.482505,
		0.412988, -0.416762, -0.809784,
		0.908442, 0.251583, 0.333823,
		23.107159, 18.752886, 11.196907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947123, 18.062489, 10.701183>,  <22.471249, 18.576777, 10.963230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947123, 18.062489, 10.701183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.079660, 18.246191, 11.030861>,  <23.159184, 18.356413, 11.228667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.079660, 18.246191, 11.030861>,  <22.947123, 18.062489, 10.701183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.079660, 18.246191, 11.030861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022504, -0.877138, 0.479712,
		0.943241, -0.140402, -0.300970,
		0.331345, 0.459257, 0.824193,
		23.179064, 18.383968, 11.278119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.500450, 17.616562, 11.044613>,  <22.947123, 18.062489, 10.701183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.500450, 17.616562, 11.044613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.377949, 17.877859, 11.321591>,  <23.304447, 18.034637, 11.487779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.377949, 17.877859, 11.321591>,  <23.500450, 17.616562, 11.044613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.377949, 17.877859, 11.321591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034058, -0.719414, 0.693746,
		0.951340, 0.236047, 0.198075,
		-0.306255, 0.653243, 0.692446,
		23.286072, 18.073832, 11.529325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729637, 17.373671, 11.541853>,  <23.500450, 17.616562, 11.044613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729637, 17.373671, 11.541853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.490196, 17.640823, 11.718763>,  <23.346533, 17.801115, 11.824910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.490196, 17.640823, 11.718763>,  <23.729637, 17.373671, 11.541853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.490196, 17.640823, 11.718763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135848, -0.628765, 0.765637,
		0.789444, 0.398229, 0.467110,
		-0.598601, 0.667884, 0.442277,
		23.310616, 17.841188, 11.851446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.956972, 17.395384, 12.215042>,  <23.729637, 17.373671, 11.541853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.956972, 17.395384, 12.215042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.581108, 17.530188, 12.238593>,  <23.355591, 17.611071, 12.252724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.581108, 17.530188, 12.238593>,  <23.956972, 17.395384, 12.215042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.581108, 17.530188, 12.238593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152199, -0.565929, 0.810284,
		0.306394, 0.752429, 0.583073,
		-0.939659, 0.337009, 0.058878,
		23.299210, 17.631290, 12.256256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.825041, 17.536749, 12.945531>,  <23.956972, 17.395384, 12.215042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.825041, 17.536749, 12.945531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454920, 17.507353, 12.796717>,  <23.232847, 17.489716, 12.707428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454920, 17.507353, 12.796717>,  <23.825041, 17.536749, 12.945531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.454920, 17.507353, 12.796717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233418, -0.662816, 0.711471,
		-0.298878, 0.745167, 0.596152,
		-0.925304, -0.073491, -0.372037,
		23.177328, 17.485306, 12.685105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.348522, 17.546158, 13.573781>,  <23.825041, 17.536749, 12.945531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.348522, 17.546158, 13.573781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.136936, 17.404802, 13.265156>,  <23.009985, 17.319990, 13.079981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.136936, 17.404802, 13.265156>,  <23.348522, 17.546158, 13.573781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.136936, 17.404802, 13.265156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435366, -0.667416, 0.604163,
		-0.728458, 0.655495, 0.199188,
		-0.528967, -0.353388, -0.771564,
		22.978247, 17.298786, 13.033687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.750744, 17.415401, 13.919806>,  <23.348522, 17.546158, 13.573781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.750744, 17.415401, 13.919806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752436, 17.184504, 13.593182>,  <22.753450, 17.045965, 13.397207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752436, 17.184504, 13.593182>,  <22.750744, 17.415401, 13.919806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752436, 17.184504, 13.593182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264738, -0.788078, 0.555740,
		-0.964311, 0.213823, -0.156152,
		0.004230, -0.577245, -0.816560,
		22.753704, 17.011330, 13.348214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.239897, 16.964617, 13.943276>,  <22.750744, 17.415401, 13.919806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.239897, 16.964617, 13.943276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455101, 16.763271, 13.672820>,  <22.584225, 16.642464, 13.510547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455101, 16.763271, 13.672820>,  <22.239897, 16.964617, 13.943276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.455101, 16.763271, 13.672820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236805, -0.860078, 0.451872,
		-0.808991, -0.083000, -0.581932,
		0.538013, -0.503365, -0.676140,
		22.616505, 16.612263, 13.469977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.849846, 16.325823, 13.830587>,  <22.239897, 16.964617, 13.943276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.849846, 16.325823, 13.830587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220911, 16.245461, 13.704682>,  <22.443550, 16.197243, 13.629140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220911, 16.245461, 13.704682>,  <21.849846, 16.325823, 13.830587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220911, 16.245461, 13.704682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092995, -0.940670, 0.326333,
		-0.361649, -0.273456, -0.891309,
		0.927665, -0.200905, -0.314762,
		22.499210, 16.185188, 13.610253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.863451, 15.615410, 13.550710>,  <21.849846, 16.325823, 13.830587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.863451, 15.615410, 13.550710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.249241, 15.680103, 13.634263>,  <22.480715, 15.718920, 13.684395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.249241, 15.680103, 13.634263>,  <21.863451, 15.615410, 13.550710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.249241, 15.680103, 13.634263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096733, -0.951986, 0.290457,
		0.245830, -0.259932, -0.933811,
		0.964474, 0.161733, 0.208883,
		22.538584, 15.728623, 13.696928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.191107, 14.952911, 13.342759>,  <21.863451, 15.615410, 13.550710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.191107, 14.952911, 13.342759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434259, 15.164439, 13.579682>,  <22.580151, 15.291356, 13.721836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434259, 15.164439, 13.579682>,  <22.191107, 14.952911, 13.342759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.434259, 15.164439, 13.579682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340238, -0.847479, 0.407452,
		0.717437, -0.046157, -0.695092,
		0.607883, 0.528818, 0.592309,
		22.616625, 15.323085, 13.757375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778484, 14.523085, 13.465411>,  <22.191107, 14.952911, 13.342759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778484, 14.523085, 13.465411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792789, 14.785301, 13.767137>,  <22.801373, 14.942631, 13.948172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792789, 14.785301, 13.767137>,  <22.778484, 14.523085, 13.465411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.792789, 14.785301, 13.767137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174330, -0.747315, 0.641194,
		0.984038, 0.108570, -0.141005,
		0.035761, 0.655541, 0.754313,
		22.803518, 14.981963, 13.993430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.293768, 14.386833, 13.866129>,  <22.778484, 14.523085, 13.465411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.293768, 14.386833, 13.866129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.061657, 14.588243, 14.122172>,  <22.922390, 14.709089, 14.275799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.061657, 14.588243, 14.122172>,  <23.293768, 14.386833, 13.866129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.061657, 14.588243, 14.122172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030834, -0.771824, 0.635089,
		0.813834, 0.388265, 0.432347,
		-0.580278, 0.503526, 0.640108,
		22.887573, 14.739302, 14.314205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.668152, 14.394956, 14.522453>,  <23.293768, 14.386833, 13.866129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.668152, 14.394956, 14.522453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.276541, 14.441322, 14.589466>,  <23.041574, 14.469143, 14.629674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.276541, 14.441322, 14.589466>,  <23.668152, 14.394956, 14.522453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.276541, 14.441322, 14.589466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032933, -0.721473, 0.691659,
		0.201045, 0.682671, 0.702525,
		-0.979028, 0.115918, 0.167531,
		22.982832, 14.476098, 14.639726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.541161, 14.408340, 15.302675>,  <23.668152, 14.394956, 14.522453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.541161, 14.408340, 15.302675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241573, 14.289561, 15.065739>,  <23.061821, 14.218294, 14.923576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241573, 14.289561, 15.065739>,  <23.541161, 14.408340, 15.302675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.241573, 14.289561, 15.065739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106246, -0.828573, 0.549708,
		-0.654032, 0.474648, 0.589026,
		-0.748969, -0.296945, -0.592342,
		23.016882, 14.200478, 14.888036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379192, 14.315684, 15.335236>,  <23.541161, 14.408340, 15.302675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379192, 14.315684, 15.335236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718105, 14.203547, 15.515688>,  <24.921453, 14.136266, 15.623960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718105, 14.203547, 15.515688>,  <24.379192, 14.315684, 15.335236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718105, 14.203547, 15.515688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176642, 0.949742, 0.258432,
		-0.500907, -0.139277, 0.854221,
		0.847283, -0.280342, 0.451131,
		24.972290, 14.119445, 15.651027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549995, 14.688728, 16.048193>,  <24.379192, 14.315684, 15.335236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549995, 14.688728, 16.048193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894651, 14.591569, 15.869944>,  <25.101444, 14.533273, 15.762994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894651, 14.591569, 15.869944>,  <24.549995, 14.688728, 16.048193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894651, 14.591569, 15.869944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370515, 0.901102, 0.225241,
		0.346842, -0.359186, 0.866421,
		0.861638, -0.242899, -0.445624,
		25.153143, 14.518700, 15.736257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166092, 14.630258, 16.438465>,  <24.549995, 14.688728, 16.048193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166092, 14.630258, 16.438465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290329, 14.747671, 16.076832>,  <25.364872, 14.818119, 15.859852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290329, 14.747671, 16.076832>,  <25.166092, 14.630258, 16.438465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290329, 14.747671, 16.076832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356245, 0.845855, 0.397013,
		0.881262, -0.445385, 0.158146,
		0.310592, 0.293534, -0.904085,
		25.383507, 14.835732, 15.805606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696526, 14.202576, 16.758350>,  <25.166092, 14.630258, 16.438465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696526, 14.202576, 16.758350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618626, 14.590722, 16.701136>,  <25.571886, 14.823610, 16.666807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618626, 14.590722, 16.701136>,  <25.696526, 14.202576, 16.758350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618626, 14.590722, 16.701136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978395, 0.202504, 0.041657,
		0.069388, -0.131834, -0.988840,
		-0.194752, 0.970367, -0.143037,
		25.560200, 14.881832, 16.658224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170166, 14.462034, 16.221582>,  <25.696526, 14.202576, 16.758350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170166, 14.462034, 16.221582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065018, 14.759537, 16.467421>,  <26.001928, 14.938038, 16.614923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065018, 14.759537, 16.467421>,  <26.170166, 14.462034, 16.221582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065018, 14.759537, 16.467421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963555, 0.235118, 0.127597,
		-0.049601, 0.625737, -0.778456,
		-0.262872, 0.743756, 0.614594,
		25.986156, 14.982663, 16.651798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397591, 15.093681, 15.961368>,  <26.170166, 14.462034, 16.221582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397591, 15.093681, 15.961368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370356, 15.072866, 16.359896>,  <26.354013, 15.060378, 16.599012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370356, 15.072866, 16.359896>,  <26.397591, 15.093681, 15.961368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370356, 15.072866, 16.359896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911611, 0.402520, 0.083323,
		-0.405375, 0.913931, 0.020030,
		-0.068088, -0.052037, 0.996321,
		26.349930, 15.057256, 16.658792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704056, 15.212497, 15.264412>,  <26.397591, 15.093681, 15.961368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704056, 15.212497, 15.264412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754665, 14.847148, 15.109624>,  <26.785030, 14.627939, 15.016751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754665, 14.847148, 15.109624>,  <26.704056, 15.212497, 15.264412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754665, 14.847148, 15.109624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837439, -0.307443, 0.451858,
		-0.531685, 0.266893, -0.803791,
		0.126522, -0.913371, -0.386969,
		26.792622, 14.573136, 14.993533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.204052, 20.170000, 23.898315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.920430, 19.891365, 23.942148>,  <12.750257, 19.724184, 23.968449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.920430, 19.891365, 23.942148>,  <13.204052, 20.170000, 23.898315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920430, 19.891365, 23.942148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213013, -0.359732, -0.908415,
		0.672211, -0.620773, 0.403451,
		-0.709054, -0.696587, 0.109583,
		12.707714, 19.682388, 23.975023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454395, 19.505812, 23.672768>,  <13.204052, 20.170000, 23.898315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454395, 19.505812, 23.672768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.068136, 19.405239, 23.646519>,  <12.836381, 19.344894, 23.630770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.068136, 19.405239, 23.646519>,  <13.454395, 19.505812, 23.672768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068136, 19.405239, 23.646519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143470, -0.305319, -0.941380,
		0.216660, -0.918456, 0.330904,
		-0.965647, -0.251434, -0.065620,
		12.778442, 19.329809, 23.626833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.422118, 18.811012, 23.445347>,  <13.454395, 19.505812, 23.672768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.422118, 18.811012, 23.445347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.066241, 18.979280, 23.374374>,  <12.852715, 19.080242, 23.331791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.066241, 18.979280, 23.374374>,  <13.422118, 18.811012, 23.445347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.066241, 18.979280, 23.374374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022429, -0.428429, -0.903297,
		-0.456014, -0.799675, 0.390604,
		-0.889690, 0.420677, -0.177434,
		12.799334, 19.105482, 23.321146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958082, 18.245535, 23.194323>,  <13.422118, 18.811012, 23.445347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.958082, 18.245535, 23.194323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.794517, 18.598318, 23.100565>,  <12.696377, 18.809988, 23.044310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.794517, 18.598318, 23.100565>,  <12.958082, 18.245535, 23.194323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794517, 18.598318, 23.100565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170859, -0.326301, -0.929696,
		-0.896435, -0.340118, 0.284119,
		-0.408914, 0.881957, -0.234395,
		12.671843, 18.862906, 23.030247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.373075, 18.123232, 22.826975>,  <12.958082, 18.245535, 23.194323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.373075, 18.123232, 22.826975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.439065, 18.494701, 22.694101>,  <12.478659, 18.717583, 22.614376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.439065, 18.494701, 22.694101>,  <12.373075, 18.123232, 22.826975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.439065, 18.494701, 22.694101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089274, -0.321357, -0.942740,
		-0.982249, 0.185183, 0.029891,
		0.164973, 0.928675, -0.332185,
		12.488557, 18.773304, 22.594446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.907389, 18.207617, 22.203846>,  <12.373075, 18.123232, 22.826975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.907389, 18.207617, 22.203846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177280, 18.499830, 22.161774>,  <12.339215, 18.675158, 22.136530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177280, 18.499830, 22.161774>,  <11.907389, 18.207617, 22.203846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177280, 18.499830, 22.161774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058331, -0.194845, -0.979098,
		-0.735756, 0.654491, -0.174080,
		0.674730, 0.730532, -0.105181,
		12.379700, 18.718990, 22.130219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.605824, 18.547758, 21.577557>,  <11.907389, 18.207617, 22.203846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.605824, 18.547758, 21.577557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.983749, 18.641104, 21.669527>,  <12.210505, 18.697111, 21.724709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.983749, 18.641104, 21.669527>,  <11.605824, 18.547758, 21.577557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.983749, 18.641104, 21.669527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269546, -0.154857, -0.950455,
		-0.186198, 0.959979, -0.209214,
		0.944815, 0.233366, 0.229925,
		12.267194, 18.711113, 21.738504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.676234, 19.176285, 21.174805>,  <11.605824, 18.547758, 21.577557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.676234, 19.176285, 21.174805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.016393, 18.986986, 21.266771>,  <12.220488, 18.873407, 21.321951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.016393, 18.986986, 21.266771>,  <11.676234, 19.176285, 21.174805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.016393, 18.986986, 21.266771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176274, -0.155466, -0.971987,
		0.495734, 0.867103, -0.048787,
		0.850397, -0.473247, 0.229918,
		12.271512, 18.845013, 21.335747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.173951, 19.444410, 20.673019>,  <11.676234, 19.176285, 21.174805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.173951, 19.444410, 20.673019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313214, 19.091860, 20.800745>,  <12.396772, 18.880329, 20.877380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313214, 19.091860, 20.800745>,  <12.173951, 19.444410, 20.673019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313214, 19.091860, 20.800745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402028, -0.167331, -0.900208,
		0.846853, 0.441789, 0.296080,
		0.348159, -0.881376, 0.319316,
		12.417662, 18.827448, 20.896540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921779, 19.337168, 20.374722>,  <12.173951, 19.444410, 20.673019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921779, 19.337168, 20.374722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.834220, 18.977776, 20.526943>,  <12.781685, 18.762140, 20.618277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.834220, 18.977776, 20.526943>,  <12.921779, 19.337168, 20.374722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834220, 18.977776, 20.526943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630353, -0.427916, -0.647721,
		0.744809, 0.098099, 0.660028,
		-0.218896, -0.898479, 0.380553,
		12.768551, 18.708231, 20.641109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552794, 18.953602, 20.579027>,  <12.921779, 19.337168, 20.374722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552794, 18.953602, 20.579027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.273831, 18.678091, 20.499821>,  <13.106454, 18.512785, 20.452297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.273831, 18.678091, 20.499821>,  <13.552794, 18.953602, 20.579027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273831, 18.678091, 20.499821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610169, -0.425722, -0.668173,
		0.375923, -0.586810, 0.717172,
		-0.697406, -0.688778, -0.198015,
		13.064610, 18.471458, 20.440416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.984987, 18.382261, 20.563250>,  <13.552794, 18.953602, 20.579027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.984987, 18.382261, 20.563250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.647012, 18.291567, 20.369478>,  <13.444226, 18.237150, 20.253216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.647012, 18.291567, 20.369478>,  <13.984987, 18.382261, 20.563250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.647012, 18.291567, 20.369478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524874, -0.525703, -0.669435,
		-0.102881, -0.819895, 0.563194,
		-0.844939, -0.226734, -0.484427,
		13.393530, 18.223547, 20.224150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.956743, 17.605749, 20.591867>,  <13.984987, 18.382261, 20.563250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.956743, 17.605749, 20.591867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.727106, 17.762583, 20.304344>,  <13.589324, 17.856684, 20.131830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.727106, 17.762583, 20.304344>,  <13.956743, 17.605749, 20.591867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.727106, 17.762583, 20.304344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567123, -0.442802, -0.694477,
		-0.590585, -0.806347, 0.031849,
		-0.574091, 0.392085, -0.718810,
		13.554878, 17.880209, 20.088701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064799, 17.111332, 20.005360>,  <13.956743, 17.605749, 20.591867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064799, 17.111332, 20.005360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.889340, 17.416994, 19.816193>,  <13.784065, 17.600391, 19.702692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.889340, 17.416994, 19.816193>,  <14.064799, 17.111332, 20.005360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.889340, 17.416994, 19.816193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414940, -0.294569, -0.860845,
		-0.797128, -0.573840, -0.187868,
		-0.438647, 0.764157, -0.472919,
		13.757746, 17.646242, 19.674316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692641, 16.791821, 19.486347>,  <14.064799, 17.111332, 20.005360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692641, 16.791821, 19.486347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.710818, 17.172644, 19.365339>,  <13.721725, 17.401138, 19.292734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.710818, 17.172644, 19.365339>,  <13.692641, 16.791821, 19.486347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710818, 17.172644, 19.365339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293372, -0.302198, -0.906978,
		-0.954918, -0.047534, -0.293041,
		0.045444, 0.952059, -0.302520,
		13.724451, 17.458261, 19.274584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303621, 16.867546, 18.890396>,  <13.692641, 16.791821, 19.486347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303621, 16.867546, 18.890396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.585773, 17.150600, 18.906847>,  <13.755063, 17.320433, 18.916718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.585773, 17.150600, 18.906847>,  <13.303621, 16.867546, 18.890396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585773, 17.150600, 18.906847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323130, -0.269374, -0.907207,
		-0.630894, 0.653214, -0.418669,
		0.705379, 0.707636, 0.041127,
		13.797386, 17.362892, 18.919186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315679, 17.228233, 18.200600>,  <13.303621, 16.867546, 18.890396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315679, 17.228233, 18.200600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.671872, 17.343929, 18.341101>,  <13.885589, 17.413347, 18.425402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.671872, 17.343929, 18.341101>,  <13.315679, 17.228233, 18.200600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671872, 17.343929, 18.341101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413167, -0.190610, -0.890484,
		-0.190610, 0.938088, -0.289239,
		0.890484, 0.289239, 0.351254,
		13.939017, 17.430700, 18.446478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531767, 17.683012, 17.701941>,  <13.315679, 17.228233, 18.200600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531767, 17.683012, 17.701941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.851186, 17.539068, 17.894947>,  <14.042837, 17.452702, 18.010752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.851186, 17.539068, 17.894947>,  <13.531767, 17.683012, 17.701941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851186, 17.539068, 17.894947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441343, -0.195064, -0.875880,
		0.409316, 0.912387, 0.003054,
		0.798547, -0.359860, 0.482518,
		14.090750, 17.431110, 18.039703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091364, 17.952177, 17.277914>,  <13.531767, 17.683012, 17.701941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091364, 17.952177, 17.277914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.243563, 17.651184, 17.492947>,  <14.334882, 17.470589, 17.621965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.243563, 17.651184, 17.492947>,  <14.091364, 17.952177, 17.277914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243563, 17.651184, 17.492947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277898, -0.461401, -0.842545,
		0.882040, 0.469979, 0.033552,
		0.380497, -0.752482, 0.537580,
		14.357712, 17.425440, 17.654221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738070, 17.991911, 17.248848>,  <14.091364, 17.952177, 17.277914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738070, 17.991911, 17.248848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.673733, 17.607838, 17.340214>,  <14.635130, 17.377394, 17.395033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.673733, 17.607838, 17.340214>,  <14.738070, 17.991911, 17.248848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673733, 17.607838, 17.340214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410414, -0.275540, -0.869274,
		0.897602, -0.046073, 0.438393,
		-0.160845, -0.960185, 0.228416,
		14.625480, 17.319782, 17.408739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374132, 17.639448, 17.163265>,  <14.738070, 17.991911, 17.248848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374132, 17.639448, 17.163265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.094337, 17.353626, 17.167736>,  <14.926459, 17.182133, 17.170418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.094337, 17.353626, 17.167736>,  <15.374132, 17.639448, 17.163265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.094337, 17.353626, 17.167736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345395, -0.351720, -0.870055,
		0.625634, -0.604733, 0.492829,
		-0.699489, -0.714556, 0.011176,
		14.884490, 17.139259, 17.171089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.757934, 17.025492, 16.984539>,  <15.374132, 17.639448, 17.163265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.757934, 17.025492, 16.984539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.368162, 16.972494, 16.911945>,  <15.134299, 16.940695, 16.868389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.368162, 16.972494, 16.911945>,  <15.757934, 17.025492, 16.984539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.368162, 16.972494, 16.911945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215068, -0.315979, -0.924069,
		0.065090, -0.939469, 0.336394,
		-0.974427, -0.132495, -0.181483,
		15.075834, 16.932745, 16.857500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158688, 16.546724, 16.627831>,  <15.757934, 17.025492, 16.984539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158688, 16.546724, 16.627831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.543962, 16.649940, 16.657993>,  <16.775127, 16.711870, 16.676092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.543962, 16.649940, 16.657993>,  <16.158688, 16.546724, 16.627831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543962, 16.649940, 16.657993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132344, 0.210972, 0.968492,
		0.234015, -0.942814, 0.237356,
		0.963183, 0.258054, 0.075406,
		16.832918, 16.727354, 16.680616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412674, 16.295048, 17.225145>,  <16.158688, 16.546724, 16.627831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412674, 16.295048, 17.225145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.702129, 16.567417, 17.180082>,  <16.875803, 16.730839, 17.153046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.702129, 16.567417, 17.180082>,  <16.412674, 16.295048, 17.225145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702129, 16.567417, 17.180082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038851, 0.203157, 0.978375,
		0.689084, -0.703615, 0.173466,
		0.723640, 0.680921, -0.112656,
		16.919222, 16.771694, 17.146286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922197, 16.104353, 17.766325>,  <16.412674, 16.295048, 17.225145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.922197, 16.104353, 17.766325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975258, 16.485823, 17.658321>,  <17.007093, 16.714705, 17.593519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975258, 16.485823, 17.658321>,  <16.922197, 16.104353, 17.766325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975258, 16.485823, 17.658321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097687, 0.283671, 0.953933,
		0.986337, -0.100164, 0.130791,
		0.132651, 0.953676, -0.270010,
		17.015053, 16.771925, 17.577318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329197, 16.402271, 18.349865>,  <16.922197, 16.104353, 17.766325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329197, 16.402271, 18.349865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.205681, 16.728668, 18.154394>,  <17.131571, 16.924507, 18.037111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.205681, 16.728668, 18.154394>,  <17.329197, 16.402271, 18.349865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205681, 16.728668, 18.154394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174676, 0.456392, 0.872464,
		0.934952, 0.354770, 0.001604,
		-0.308792, 0.815993, -0.488675,
		17.113043, 16.973467, 18.007792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617125, 16.973804, 18.720772>,  <17.329197, 16.402271, 18.349865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617125, 16.973804, 18.720772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.301638, 17.113705, 18.518543>,  <17.112347, 17.197645, 18.397207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.301638, 17.113705, 18.518543>,  <17.617125, 16.973804, 18.720772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.301638, 17.113705, 18.518543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339995, 0.437001, 0.832727,
		0.512183, 0.828676, -0.225755,
		-0.788716, 0.349753, -0.505570,
		17.065023, 17.218630, 18.366873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578915, 17.668392, 18.831272>,  <17.617125, 16.973804, 18.720772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.578915, 17.668392, 18.831272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.207603, 17.601511, 18.698399>,  <16.984818, 17.561382, 18.618675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.207603, 17.601511, 18.698399>,  <17.578915, 17.668392, 18.831272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207603, 17.601511, 18.698399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370679, 0.488092, 0.790167,
		0.030017, 0.856627, -0.515063,
		-0.928276, -0.167204, -0.332184,
		16.929121, 17.551350, 18.598743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226326, 18.219038, 18.989223>,  <17.578915, 17.668392, 18.831272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226326, 18.219038, 18.989223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.930162, 17.954624, 18.940516>,  <16.752464, 17.795977, 18.911291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.930162, 17.954624, 18.940516>,  <17.226326, 18.219038, 18.989223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930162, 17.954624, 18.940516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405494, 0.294793, 0.865258,
		-0.536067, 0.690023, -0.486313,
		-0.740410, -0.661033, -0.121771,
		16.708040, 17.756313, 18.903984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630610, 18.558140, 19.227158>,  <17.226326, 18.219038, 18.989223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630610, 18.558140, 19.227158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.500069, 18.180248, 19.239725>,  <16.421745, 17.953514, 19.247265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.500069, 18.180248, 19.239725>,  <16.630610, 18.558140, 19.227158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500069, 18.180248, 19.239725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372039, 0.158933, 0.914509,
		-0.868955, 0.286761, -0.403343,
		-0.326350, -0.944727, 0.031419,
		16.402164, 17.896830, 19.249151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970563, 18.599531, 19.386372>,  <16.630610, 18.558140, 19.227158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970563, 18.599531, 19.386372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.105465, 18.245876, 19.515717>,  <16.186405, 18.033684, 19.593323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.105465, 18.245876, 19.515717>,  <15.970563, 18.599531, 19.386372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105465, 18.245876, 19.515717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335968, 0.207832, 0.918657,
		-0.879423, -0.418460, -0.226949,
		0.337254, -0.884136, 0.323362,
		16.206642, 17.980635, 19.612724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441556, 18.405556, 19.787663>,  <15.970563, 18.599531, 19.386372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441556, 18.405556, 19.787663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.748418, 18.183802, 19.916739>,  <15.932535, 18.050749, 19.994184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.748418, 18.183802, 19.916739>,  <15.441556, 18.405556, 19.787663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748418, 18.183802, 19.916739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345299, 0.067046, 0.936095,
		-0.540594, -0.829554, -0.139995,
		0.767155, -0.554387, 0.322689,
		15.978564, 18.017485, 20.013546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205849, 17.947544, 20.268820>,  <15.441556, 18.405556, 19.787663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205849, 17.947544, 20.268820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.595716, 17.983225, 20.350857>,  <15.829637, 18.004633, 20.400080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.595716, 17.983225, 20.350857>,  <15.205849, 17.947544, 20.268820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.595716, 17.983225, 20.350857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219755, 0.211494, 0.952354,
		0.041575, -0.973300, 0.225739,
		0.974669, 0.089201, 0.205095,
		15.888117, 18.009985, 20.412386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364324, 17.553585, 20.871723>,  <15.205849, 17.947544, 20.268820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364324, 17.553585, 20.871723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.654256, 17.826878, 20.836361>,  <15.828216, 17.990852, 20.815144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.654256, 17.826878, 20.836361>,  <15.364324, 17.553585, 20.871723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.654256, 17.826878, 20.836361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254948, 0.385229, 0.886905,
		0.640017, -0.620317, 0.453414,
		0.724831, 0.683232, -0.088404,
		15.871705, 18.031847, 20.809839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662009, 17.505413, 21.495718>,  <15.364324, 17.553585, 20.871723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662009, 17.505413, 21.495718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.767479, 17.870121, 21.369762>,  <15.830761, 18.088945, 21.294189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.767479, 17.870121, 21.369762>,  <15.662009, 17.505413, 21.495718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767479, 17.870121, 21.369762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255126, 0.380734, 0.888793,
		0.930262, -0.154015, 0.333005,
		0.263674, 0.911768, -0.314889,
		15.846581, 18.143652, 21.275295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069042, 17.827576, 21.945320>,  <15.662009, 17.505413, 21.495718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069042, 17.827576, 21.945320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.941065, 18.148012, 21.742979>,  <15.864278, 18.340275, 21.621574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.941065, 18.148012, 21.742979>,  <16.069042, 17.827576, 21.945320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941065, 18.148012, 21.742979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072181, 0.511755, 0.856094,
		0.944682, 0.310416, -0.105910,
		-0.319945, 0.801092, -0.505852,
		15.845081, 18.388340, 21.591223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341232, 18.375469, 22.310030>,  <16.069042, 17.827576, 21.945320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341232, 18.375469, 22.310030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.059860, 18.545006, 22.081804>,  <15.891037, 18.646729, 21.944870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.059860, 18.545006, 22.081804>,  <16.341232, 18.375469, 22.310030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059860, 18.545006, 22.081804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212220, 0.640883, 0.737720,
		0.678341, 0.640020, -0.360870,
		-0.703432, 0.423842, -0.570563,
		15.848831, 18.672159, 21.910635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396626, 19.046806, 22.495144>,  <16.341232, 18.375469, 22.310030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396626, 19.046806, 22.495144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.030561, 19.042877, 22.333954>,  <15.810924, 19.040520, 22.237240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.030561, 19.042877, 22.333954>,  <16.396626, 19.046806, 22.495144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030561, 19.042877, 22.333954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278541, 0.738043, 0.614579,
		0.291374, 0.674682, -0.678164,
		-0.915159, -0.009825, -0.402973,
		15.756014, 19.039930, 22.213062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270254, 19.688057, 22.301453>,  <16.396626, 19.046806, 22.495144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270254, 19.688057, 22.301453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.927603, 19.486923, 22.347666>,  <15.722013, 19.366243, 22.375395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.927603, 19.486923, 22.347666>,  <16.270254, 19.688057, 22.301453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927603, 19.486923, 22.347666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286479, 0.649809, 0.704044,
		-0.429094, 0.570004, -0.700695,
		-0.856626, -0.502835, 0.115535,
		15.670615, 19.336073, 22.382326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645480, 20.216982, 22.354156>,  <16.270254, 19.688057, 22.301453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645480, 20.216982, 22.354156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.500494, 19.895798, 22.543417>,  <15.413503, 19.703087, 22.656973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.500494, 19.895798, 22.543417>,  <15.645480, 20.216982, 22.354156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.500494, 19.895798, 22.543417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186121, 0.559809, 0.807448,
		-0.913224, 0.204609, -0.352360,
		-0.362465, -0.802963, 0.473149,
		15.391754, 19.654909, 22.685362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.831225, 20.306013, 22.668083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.976944, 19.985321, 22.857616>,  <15.064375, 19.792906, 22.971336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.976944, 19.985321, 22.857616>,  <14.831225, 20.306013, 22.668083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976944, 19.985321, 22.857616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350266, 0.353484, 0.867389,
		-0.862903, -0.481955, -0.152046,
		0.364296, -0.801729, 0.473835,
		15.086233, 19.744802, 22.999767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.310580, 20.137466, 23.134886>,  <14.831225, 20.306013, 22.668083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.310580, 20.137466, 23.134886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.613505, 19.912825, 23.268198>,  <14.795260, 19.778040, 23.348185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.613505, 19.912825, 23.268198>,  <14.310580, 20.137466, 23.134886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.613505, 19.912825, 23.268198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158015, 0.337593, 0.927934,
		-0.633647, -0.755400, 0.166921,
		0.757313, -0.561607, 0.333279,
		14.840699, 19.744343, 23.368181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.115686, 19.814234, 23.796413>,  <14.310580, 20.137466, 23.134886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.115686, 19.814234, 23.796413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.515465, 19.827272, 23.793674>,  <14.755332, 19.835096, 23.792030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.515465, 19.827272, 23.793674>,  <14.115686, 19.814234, 23.796413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515465, 19.827272, 23.793674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003717, 0.313513, 0.949577,
		0.033102, -0.949024, 0.313460,
		0.999445, 0.032598, -0.006850,
		14.815298, 19.837051, 23.791620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315580, 19.520744, 24.420248>,  <14.115686, 19.814234, 23.796413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315580, 19.520744, 24.420248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.649339, 19.717010, 24.319824>,  <14.849594, 19.834770, 24.259569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.649339, 19.717010, 24.319824>,  <14.315580, 19.520744, 24.420248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649339, 19.717010, 24.319824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217299, 0.125760, 0.967970,
		0.506522, -0.862225, -0.001688,
		0.834396, 0.490665, -0.251061,
		14.899657, 19.864210, 24.244507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.784180, 19.213430, 24.738958>,  <14.315580, 19.520744, 24.420248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.784180, 19.213430, 24.738958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.922503, 19.586252, 24.695702>,  <15.005496, 19.809944, 24.669746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.922503, 19.586252, 24.695702>,  <14.784180, 19.213430, 24.738958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922503, 19.586252, 24.695702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167242, 0.052183, 0.984534,
		0.923281, -0.358544, -0.137833,
		0.345806, 0.932053, -0.108143,
		15.026244, 19.865868, 24.663260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.327742, 19.264503, 25.310757>,  <14.784180, 19.213430, 24.738958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.327742, 19.264503, 25.310757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.227088, 19.634083, 25.195517>,  <15.166696, 19.855831, 25.126373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.227088, 19.634083, 25.195517>,  <15.327742, 19.264503, 25.310757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.227088, 19.634083, 25.195517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004679, 0.298837, 0.954293,
		0.967811, 0.238784, -0.079520,
		-0.251634, 0.923947, -0.288100,
		15.151598, 19.911266, 25.109087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689166, 19.604418, 25.787418>,  <15.327742, 19.264503, 25.310757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689166, 19.604418, 25.787418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.426221, 19.872526, 25.649658>,  <15.268454, 20.033392, 25.567001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.426221, 19.872526, 25.649658>,  <15.689166, 19.604418, 25.787418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426221, 19.872526, 25.649658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140136, 0.340323, 0.929808,
		0.740431, 0.659483, -0.129787,
		-0.657362, 0.670270, -0.344403,
		15.229012, 20.073606, 25.546337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913882, 20.229458, 26.001257>,  <15.689166, 19.604418, 25.787418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913882, 20.229458, 26.001257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.523317, 20.274319, 25.927458>,  <15.288979, 20.301235, 25.883179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.523317, 20.274319, 25.927458>,  <15.913882, 20.229458, 26.001257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523317, 20.274319, 25.927458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106165, 0.494700, 0.862555,
		0.188007, 0.861797, -0.471125,
		-0.976413, 0.112150, -0.184500,
		15.230393, 20.307964, 25.872108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810280, 20.806467, 26.280279>,  <15.913882, 20.229458, 26.001257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810280, 20.806467, 26.280279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.433943, 20.674049, 26.251371>,  <15.208140, 20.594599, 26.234026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.433943, 20.674049, 26.251371>,  <15.810280, 20.806467, 26.280279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433943, 20.674049, 26.251371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181766, 0.313087, 0.932168,
		-0.285964, 0.890160, -0.354739,
		-0.940843, -0.331046, -0.072270,
		15.151690, 20.574736, 26.229691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414080, 21.350075, 26.512903>,  <15.810280, 20.806467, 26.280279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.414080, 21.350075, 26.512903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.184040, 21.029228, 26.577238>,  <15.046017, 20.836720, 26.615839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.184040, 21.029228, 26.577238>,  <15.414080, 21.350075, 26.512903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184040, 21.029228, 26.577238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207909, 0.333449, 0.919557,
		-0.791224, 0.495397, -0.358534,
		-0.575099, -0.802118, 0.160836,
		15.011510, 20.788593, 26.625488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.781002, 21.591484, 26.760300>,  <15.414080, 21.350075, 26.512903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.781002, 21.591484, 26.760300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.780941, 21.207834, 26.873493>,  <14.780905, 20.977644, 26.941410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.780941, 21.207834, 26.873493>,  <14.781002, 21.591484, 26.760300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.780941, 21.207834, 26.873493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291829, 0.270710, 0.917362,
		-0.956471, -0.082443, -0.279941,
		-0.000153, -0.959125, 0.282985,
		14.780895, 20.920097, 26.958389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117856, 21.526165, 27.089705>,  <14.781002, 21.591484, 26.760300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117856, 21.526165, 27.089705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.381524, 21.252338, 27.214195>,  <14.539725, 21.088043, 27.288889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.381524, 21.252338, 27.214195>,  <14.117856, 21.526165, 27.089705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.381524, 21.252338, 27.214195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230614, 0.209905, 0.950135,
		-0.715760, -0.698074, -0.019507,
		0.659170, -0.684567, 0.311227,
		14.579275, 21.046968, 27.307564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797807, 21.210190, 27.765482>,  <14.117856, 21.526165, 27.089705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797807, 21.210190, 27.765482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.186587, 21.116194, 27.761683>,  <14.419856, 21.059797, 27.759403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.186587, 21.116194, 27.761683>,  <13.797807, 21.210190, 27.765482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186587, 21.116194, 27.761683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018153, 0.034702, 0.999233,
		-0.234480, -0.971378, 0.037995,
		0.971952, -0.234990, -0.009497,
		14.478173, 21.045696, 27.758833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.906857, 20.574852, 28.240967>,  <13.797807, 21.210190, 27.765482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.906857, 20.574852, 28.240967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.244544, 20.785385, 28.200422>,  <14.447156, 20.911705, 28.176096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.244544, 20.785385, 28.200422>,  <13.906857, 20.574852, 28.240967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244544, 20.785385, 28.200422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150974, -0.052045, 0.987167,
		0.514303, -0.848684, -0.123400,
		0.844215, 0.526333, -0.101362,
		14.497808, 20.943285, 28.170013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236120, 20.184759, 28.750616>,  <13.906857, 20.574852, 28.240967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236120, 20.184759, 28.750616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.455728, 20.514160, 28.693455>,  <14.587492, 20.711802, 28.659159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.455728, 20.514160, 28.693455>,  <14.236120, 20.184759, 28.750616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455728, 20.514160, 28.693455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259601, -0.005496, 0.965700,
		0.794472, -0.567285, -0.216800,
		0.549019, 0.823503, -0.142901,
		14.620433, 20.761211, 28.650585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.862189, 20.097153, 29.103998>,  <14.236120, 20.184759, 28.750616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.862189, 20.097153, 29.103998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.828173, 20.494558, 29.073812>,  <14.807762, 20.733002, 29.055700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.828173, 20.494558, 29.073812>,  <14.862189, 20.097153, 29.103998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.828173, 20.494558, 29.073812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365142, 0.101545, 0.925397,
		0.927059, 0.051143, -0.371410,
		-0.085042, 0.993515, -0.075464,
		14.802660, 20.792612, 29.051174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367023, 20.338850, 29.528961>,  <14.862189, 20.097153, 29.103998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367023, 20.338850, 29.528961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.147608, 20.672775, 29.510227>,  <15.015959, 20.873131, 29.498987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.147608, 20.672775, 29.510227>,  <15.367023, 20.338850, 29.528961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147608, 20.672775, 29.510227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164879, 0.162911, 0.972767,
		0.819708, 0.525877, -0.227006,
		-0.548538, 0.834813, -0.046834,
		14.983047, 20.923220, 29.496178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771238, 20.825966, 29.888094>,  <15.367023, 20.338850, 29.528961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.771238, 20.825966, 29.888094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.389441, 20.945177, 29.892490>,  <15.160362, 21.016703, 29.895128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.389441, 20.945177, 29.892490>,  <15.771238, 20.825966, 29.888094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.389441, 20.945177, 29.892490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104048, 0.298247, 0.948801,
		0.279489, 0.906769, -0.315684,
		-0.954495, 0.298026, 0.010991,
		15.103092, 21.034584, 29.895788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792289, 21.377840, 30.285826>,  <15.771238, 20.825966, 29.888094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.792289, 21.377840, 30.285826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.398617, 21.307734, 30.296194>,  <15.162414, 21.265669, 30.302414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.398617, 21.307734, 30.296194>,  <15.792289, 21.377840, 30.285826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398617, 21.307734, 30.296194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015031, 0.228369, 0.973459,
		-0.176533, 0.957669, -0.227391,
		-0.984180, -0.175266, 0.025920,
		15.103363, 21.255154, 30.303970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579620, 21.929123, 30.791090>,  <15.792289, 21.377840, 30.285826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579620, 21.929123, 30.791090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.311103, 21.632727, 30.784231>,  <15.149992, 21.454889, 30.780115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.311103, 21.632727, 30.784231>,  <15.579620, 21.929123, 30.791090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.311103, 21.632727, 30.784231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033137, 0.006889, 0.999427,
		-0.740450, 0.671478, -0.029179,
		-0.671294, -0.740993, -0.017149,
		15.109715, 21.410429, 30.779087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.055606, 22.046806, 31.352287>,  <15.579620, 21.929123, 30.791090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.055606, 22.046806, 31.352287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.033055, 21.661909, 31.245773>,  <15.019526, 21.430971, 31.181866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.033055, 21.661909, 31.245773>,  <15.055606, 22.046806, 31.352287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033055, 21.661909, 31.245773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271095, -0.241936, 0.931652,
		-0.960901, 0.124711, -0.247220,
		-0.056376, -0.962245, -0.266285,
		15.016143, 21.373236, 31.165888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.400426, 21.833361, 31.536982>,  <15.055606, 22.046806, 31.352287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.400426, 21.833361, 31.536982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.658463, 21.527719, 31.536682>,  <14.813286, 21.344336, 31.536503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.658463, 21.527719, 31.536682>,  <14.400426, 21.833361, 31.536982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658463, 21.527719, 31.536682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105664, -0.090178, 0.990305,
		-0.756762, -0.638760, -0.138911,
		0.645094, -0.764103, -0.000749,
		14.851992, 21.298489, 31.536457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151305, 21.265690, 31.868372>,  <14.400426, 21.833361, 31.536982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151305, 21.265690, 31.868372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.549297, 21.228655, 31.883556>,  <14.788093, 21.206434, 31.892668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.549297, 21.228655, 31.883556>,  <14.151305, 21.265690, 31.868372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.549297, 21.228655, 31.883556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048993, -0.119943, 0.991571,
		-0.087248, -0.988455, -0.123877,
		0.994981, -0.092582, 0.037963,
		14.847792, 21.200878, 31.894945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.391275, 21.422922, 31.841566>,  <14.151305, 21.265690, 31.868372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.391275, 21.422922, 31.841566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.280209, 21.062492, 31.974813>,  <13.213569, 20.846235, 32.054764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.280209, 21.062492, 31.974813>,  <13.391275, 21.422922, 31.841566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280209, 21.062492, 31.974813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336200, -0.233685, -0.912338,
		0.899928, -0.365322, -0.238054,
		-0.277667, -0.901072, 0.333120,
		13.196908, 20.792171, 32.074749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.631093, 20.899635, 31.399609>,  <13.391275, 21.422922, 31.841566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.631093, 20.899635, 31.399609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.299026, 20.767010, 31.578892>,  <13.099787, 20.687435, 31.686460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.299026, 20.767010, 31.578892>,  <13.631093, 20.899635, 31.399609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299026, 20.767010, 31.578892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389636, -0.229958, -0.891798,
		0.398758, -0.914978, 0.061714,
		-0.830166, -0.331565, 0.448206,
		13.049976, 20.667540, 31.713354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587925, 20.296480, 31.130375>,  <13.631093, 20.899635, 31.399609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587925, 20.296480, 31.130375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.226032, 20.392389, 31.271214>,  <13.008897, 20.449934, 31.355717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.226032, 20.392389, 31.271214>,  <13.587925, 20.296480, 31.130375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.226032, 20.392389, 31.271214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408847, -0.256678, -0.875763,
		-0.119610, -0.936282, 0.330256,
		-0.904731, 0.239774, 0.352095,
		12.954613, 20.464321, 31.376842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.204942, 19.732922, 30.829679>,  <13.587925, 20.296480, 31.130375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.204942, 19.732922, 30.829679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.931767, 20.008131, 30.927839>,  <12.767861, 20.173256, 30.986734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.931767, 20.008131, 30.927839>,  <13.204942, 19.732922, 30.829679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931767, 20.008131, 30.927839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590417, -0.322100, -0.740040,
		-0.430123, -0.650287, 0.626195,
		-0.682936, 0.688025, 0.245398,
		12.726885, 20.214539, 31.001459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.590284, 19.412401, 30.579731>,  <13.204942, 19.732922, 30.829679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.590284, 19.412401, 30.579731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.494976, 19.799923, 30.606997>,  <12.437791, 20.032436, 30.623356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.494976, 19.799923, 30.606997>,  <12.590284, 19.412401, 30.579731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.494976, 19.799923, 30.606997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602598, -0.092432, -0.792674,
		-0.761645, -0.229947, 0.605823,
		-0.238271, 0.968804, 0.068165,
		12.423494, 20.090565, 30.627445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.875868, 19.527733, 30.498190>,  <12.590284, 19.412401, 30.579731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.875868, 19.527733, 30.498190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.026111, 19.882660, 30.391169>,  <12.116257, 20.095615, 30.326956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.026111, 19.882660, 30.391169>,  <11.875868, 19.527733, 30.498190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.026111, 19.882660, 30.391169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354843, -0.129006, -0.925982,
		-0.856157, 0.442745, 0.266403,
		0.375607, 0.887318, -0.267554,
		12.138793, 20.148855, 30.310902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.452269, 19.826235, 30.051674>,  <11.875868, 19.527733, 30.498190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.452269, 19.826235, 30.051674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.780223, 20.035994, 29.959764>,  <11.976995, 20.161850, 29.904619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.780223, 20.035994, 29.959764>,  <11.452269, 19.826235, 30.051674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.780223, 20.035994, 29.959764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117049, -0.239323, -0.963859,
		-0.560436, 0.817148, -0.134837,
		0.819885, 0.524398, -0.229772,
		12.026188, 20.193314, 29.890833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273936, 20.300947, 29.459375>,  <11.452269, 19.826235, 30.051674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273936, 20.300947, 29.459375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.673783, 20.295053, 29.468740>,  <11.913692, 20.291517, 29.474360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.673783, 20.295053, 29.468740>,  <11.273936, 20.300947, 29.459375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673783, 20.295053, 29.468740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023521, 0.007352, -0.999696,
		0.014559, 0.999864, 0.007696,
		0.999617, -0.014736, 0.023411,
		11.973668, 20.290632, 29.475763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.440052, 20.699139, 28.981531>,  <11.273936, 20.300947, 29.459375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.440052, 20.699139, 28.981531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.790412, 20.511894, 29.028303>,  <12.000628, 20.399548, 29.056366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.790412, 20.511894, 29.028303>,  <11.440052, 20.699139, 28.981531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.790412, 20.511894, 29.028303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112461, -0.037602, -0.992944,
		0.469205, 0.882869, 0.019708,
		0.875899, -0.468111, 0.116932,
		12.053182, 20.371462, 29.063383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920171, 21.064558, 28.619762>,  <11.440052, 20.699139, 28.981531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920171, 21.064558, 28.619762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.047406, 20.685482, 28.630398>,  <12.123748, 20.458036, 28.636778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.047406, 20.685482, 28.630398>,  <11.920171, 21.064558, 28.619762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047406, 20.685482, 28.630398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293586, 0.071799, -0.953233,
		0.901459, 0.311018, 0.301066,
		0.318088, -0.947688, 0.026587,
		12.142833, 20.401176, 28.638374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.592765, 21.046162, 28.221922>,  <11.920171, 21.064558, 28.619762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.592765, 21.046162, 28.221922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.479762, 20.664476, 28.261250>,  <12.411961, 20.435465, 28.284845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.479762, 20.664476, 28.261250>,  <12.592765, 21.046162, 28.221922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.479762, 20.664476, 28.261250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327431, -0.192259, -0.925108,
		0.901654, -0.229156, 0.366753,
		-0.282506, -0.954214, 0.098319,
		12.395010, 20.378212, 28.290745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.121404, 20.763220, 27.901466>,  <12.592765, 21.046162, 28.221922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.121404, 20.763220, 27.901466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.856049, 20.463911, 27.902569>,  <12.696836, 20.284327, 27.903231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.856049, 20.463911, 27.902569>,  <13.121404, 20.763220, 27.901466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.856049, 20.463911, 27.902569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273535, -0.245933, -0.929890,
		0.696488, -0.616123, 0.367827,
		-0.663387, -0.748272, 0.002758,
		12.657032, 20.239429, 27.903397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433190, 20.205330, 27.702299>,  <13.121404, 20.763220, 27.901466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433190, 20.205330, 27.702299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.048960, 20.115276, 27.637054>,  <12.818421, 20.061245, 27.597908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.048960, 20.115276, 27.637054>,  <13.433190, 20.205330, 27.702299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.048960, 20.115276, 27.637054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263513, -0.550311, -0.792287,
		0.088609, -0.804035, 0.587942,
		-0.960578, -0.225135, -0.163111,
		12.760786, 20.047735, 27.588121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420646, 19.507093, 27.403227>,  <13.433190, 20.205330, 27.702299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420646, 19.507093, 27.403227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.068921, 19.674038, 27.311466>,  <12.857886, 19.774204, 27.256411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.068921, 19.674038, 27.311466>,  <13.420646, 19.507093, 27.403227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068921, 19.674038, 27.311466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016863, -0.454093, -0.890795,
		-0.475957, -0.787150, 0.392249,
		-0.879307, 0.417365, -0.229403,
		12.805128, 19.799246, 27.242647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.077403, 18.985868, 27.008526>,  <13.420646, 19.507093, 27.403227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.077403, 18.985868, 27.008526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.892563, 19.333363, 26.937241>,  <12.781659, 19.541859, 26.894470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.892563, 19.333363, 26.937241>,  <13.077403, 18.985868, 27.008526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892563, 19.333363, 26.937241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120197, -0.260456, -0.957975,
		-0.878645, -0.421260, 0.224776,
		-0.462100, 0.868737, -0.178214,
		12.753933, 19.593983, 26.883776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.573248, 18.765694, 26.561489>,  <13.077403, 18.985868, 27.008526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.573248, 18.765694, 26.561489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.624718, 19.156643, 26.494341>,  <12.655600, 19.391212, 26.454052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.624718, 19.156643, 26.494341>,  <12.573248, 18.765694, 26.561489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.624718, 19.156643, 26.494341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168979, -0.145195, -0.974866,
		-0.977184, 0.153808, 0.146473,
		0.128675, 0.977375, -0.167873,
		12.663321, 19.449856, 26.443979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.961758, 19.024490, 26.187798>,  <12.573248, 18.765694, 26.561489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.961758, 19.024490, 26.187798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.241484, 19.302378, 26.120476>,  <12.409320, 19.469110, 26.080082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.241484, 19.302378, 26.120476>,  <11.961758, 19.024490, 26.187798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241484, 19.302378, 26.120476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192548, -0.043672, -0.980315,
		-0.688391, 0.717957, 0.103226,
		0.699316, 0.694716, -0.168304,
		12.451279, 19.510792, 26.069984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.681770, 19.562994, 25.686371>,  <11.961758, 19.024490, 26.187798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.681770, 19.562994, 25.686371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.074424, 19.631859, 25.653496>,  <12.310016, 19.673178, 25.633772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.074424, 19.631859, 25.653496>,  <11.681770, 19.562994, 25.686371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074424, 19.631859, 25.653496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106708, 0.138391, -0.984612,
		-0.158141, 0.975299, 0.154220,
		0.981634, 0.172164, -0.082187,
		12.368914, 19.683508, 25.628839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.692334, 20.170702, 25.271536>,  <11.681770, 19.562994, 25.686371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.692334, 20.170702, 25.271536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.052961, 20.000479, 25.240360>,  <12.269338, 19.898344, 25.221655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.052961, 20.000479, 25.240360>,  <11.692334, 20.170702, 25.271536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.052961, 20.000479, 25.240360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041294, 0.094687, -0.994650,
		0.430661, 0.899964, 0.067794,
		0.901568, -0.425558, -0.077941,
		12.323432, 19.872812, 25.216978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013174, 20.526518, 24.767029>,  <11.692334, 20.170702, 25.271536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.013174, 20.526518, 24.767029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.187653, 20.167040, 24.785273>,  <12.292339, 19.951353, 24.796219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.187653, 20.167040, 24.785273>,  <12.013174, 20.526518, 24.767029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.187653, 20.167040, 24.785273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056201, -0.077795, -0.995384,
		0.898095, 0.431619, -0.084442,
		0.436195, -0.898695, 0.045610,
		12.318511, 19.897430, 24.798956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.591806, 20.556879, 24.230003>,  <12.013174, 20.526518, 24.767029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.591806, 20.556879, 24.230003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.535840, 20.165981, 24.293776>,  <12.502260, 19.931442, 24.332039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.535840, 20.165981, 24.293776>,  <12.591806, 20.556879, 24.230003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535840, 20.165981, 24.293776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242689, -0.189948, -0.951326,
		0.959961, -0.094414, 0.263743,
		-0.139916, -0.977244, 0.159430,
		12.493865, 19.872808, 24.341604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.378319, 24.244709, 10.773134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.048161, 24.469940, 10.789453>,  <21.850065, 24.605080, 10.799244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.048161, 24.469940, 10.789453>,  <22.378319, 24.244709, 10.773134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.048161, 24.469940, 10.789453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042208, 0.010513, -0.999054,
		-0.562974, -0.826337, 0.015089,
		-0.825396, 0.563078, 0.040797,
		21.800541, 24.638863, 10.801691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.465872, 24.879210, 10.380758>,  <22.378319, 24.244709, 10.773134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.465872, 24.879210, 10.380758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.640778, 25.210203, 10.521653>,  <22.745720, 25.408800, 10.606190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.640778, 25.210203, 10.521653>,  <22.465872, 24.879210, 10.380758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.640778, 25.210203, 10.521653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590905, -0.559604, 0.581097,
		0.677962, -0.045954, -0.733659,
		0.437263, 0.827485, 0.352236,
		22.771955, 25.458448, 10.627324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.224445, 24.814186, 10.393746>,  <22.465872, 24.879210, 10.380758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.224445, 24.814186, 10.393746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.140240, 25.084127, 10.676661>,  <23.089716, 25.246092, 10.846411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.140240, 25.084127, 10.676661>,  <23.224445, 24.814186, 10.393746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.140240, 25.084127, 10.676661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700168, -0.400831, 0.590846,
		0.682238, 0.619601, -0.388131,
		-0.210514, 0.674855, 0.707287,
		23.077085, 25.286583, 10.888847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.385942, 24.184603, 10.567856>,  <23.224445, 24.814186, 10.393746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.385942, 24.184603, 10.567856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.080832, 23.982206, 10.406786>,  <22.897766, 23.860769, 10.310143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.080832, 23.982206, 10.406786>,  <23.385942, 24.184603, 10.567856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.080832, 23.982206, 10.406786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340593, -0.843680, 0.414971,
		-0.549701, 0.179381, 0.815875,
		-0.762775, -0.505991, -0.402675,
		22.851999, 23.830410, 10.285983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.314121, 24.292826, 11.211089>,  <23.385942, 24.184603, 10.567856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.314121, 24.292826, 11.211089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.431274, 24.520195, 11.518625>,  <23.501566, 24.656616, 11.703147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.431274, 24.520195, 11.518625>,  <23.314121, 24.292826, 11.211089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.431274, 24.520195, 11.518625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597150, -0.519256, 0.611379,
		0.746747, -0.638176, 0.187352,
		0.292884, 0.568423, 0.768840,
		23.519140, 24.690722, 11.749277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.592188, 23.864578, 11.846650>,  <23.314121, 24.292826, 11.211089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.592188, 23.864578, 11.846650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.392136, 24.207628, 11.894558>,  <23.272104, 24.413458, 11.923303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.392136, 24.207628, 11.894558>,  <23.592188, 23.864578, 11.846650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.392136, 24.207628, 11.894558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707976, -0.484607, 0.513737,
		0.498637, 0.172141, 0.849546,
		-0.500131, 0.857627, 0.119770,
		23.242096, 24.464916, 11.930490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.387848, 23.988270, 12.614427>,  <23.592188, 23.864578, 11.846650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.387848, 23.988270, 12.614427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134558, 24.171417, 12.364824>,  <22.982584, 24.281305, 12.215063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134558, 24.171417, 12.364824>,  <23.387848, 23.988270, 12.614427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.134558, 24.171417, 12.364824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752602, -0.552403, 0.358388,
		-0.180608, 0.696568, 0.694388,
		-0.633223, 0.457869, -0.624006,
		22.944592, 24.308779, 12.177623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.739050, 24.333185, 12.926559>,  <23.387848, 23.988270, 12.614427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.739050, 24.333185, 12.926559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.699799, 24.167179, 12.564756>,  <22.676249, 24.067575, 12.347674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.699799, 24.167179, 12.564756>,  <22.739050, 24.333185, 12.926559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699799, 24.167179, 12.564756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668555, -0.645758, 0.368823,
		-0.737160, 0.640905, -0.214092,
		-0.098129, -0.415014, -0.904507,
		22.670361, 24.042675, 12.293405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.043821, 24.345346, 12.538963>,  <22.739050, 24.333185, 12.926559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.043821, 24.345346, 12.538963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.246393, 24.018436, 12.428987>,  <22.367937, 23.822290, 12.363000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.246393, 24.018436, 12.428987>,  <22.043821, 24.345346, 12.538963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.246393, 24.018436, 12.428987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567112, -0.555878, 0.607769,
		-0.649549, -0.151868, -0.744998,
		0.506429, -0.817273, -0.274943,
		22.398323, 23.773254, 12.346503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.525389, 23.877312, 12.280692>,  <22.043821, 24.345346, 12.538963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.525389, 23.877312, 12.280692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860487, 23.710049, 12.421163>,  <22.061546, 23.609692, 12.505445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860487, 23.710049, 12.421163>,  <21.525389, 23.877312, 12.280692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860487, 23.710049, 12.421163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535023, -0.499912, 0.681057,
		-0.109230, -0.758442, -0.642523,
		0.837747, -0.418156, 0.351178,
		22.111811, 23.584602, 12.526516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.455353, 23.171576, 12.325233>,  <21.525389, 23.877312, 12.280692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.455353, 23.171576, 12.325233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763643, 23.198675, 12.578655>,  <21.948618, 23.214935, 12.730708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763643, 23.198675, 12.578655>,  <21.455353, 23.171576, 12.325233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763643, 23.198675, 12.578655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459516, -0.629712, 0.626345,
		0.441392, -0.773869, -0.454203,
		0.770726, 0.067750, 0.633555,
		21.994862, 23.219000, 12.768722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.609467, 22.405949, 12.543709>,  <21.455353, 23.171576, 12.325233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.609467, 22.405949, 12.543709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.774811, 22.641020, 12.821921>,  <21.874018, 22.782063, 12.988849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.774811, 22.641020, 12.821921>,  <21.609467, 22.405949, 12.543709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.774811, 22.641020, 12.821921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353268, -0.600513, 0.717347,
		0.839246, -0.542233, -0.040621,
		0.413362, 0.587680, 0.695531,
		21.898819, 22.817324, 13.030581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.006565, 21.921764, 12.964995>,  <21.609467, 22.405949, 12.543709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.006565, 21.921764, 12.964995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.956774, 22.254435, 13.181446>,  <21.926899, 22.454037, 13.311316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.956774, 22.254435, 13.181446>,  <22.006565, 21.921764, 12.964995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956774, 22.254435, 13.181446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137561, -0.554567, 0.820690,
		0.982640, 0.027721, 0.183438,
		-0.124479, 0.831677, 0.541126,
		21.919430, 22.503939, 13.343784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.427752, 21.933153, 13.621049>,  <22.006565, 21.921764, 12.964995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.427752, 21.933153, 13.621049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114025, 22.171783, 13.689103>,  <21.925789, 22.314960, 13.729936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114025, 22.171783, 13.689103>,  <22.427752, 21.933153, 13.621049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114025, 22.171783, 13.689103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214496, -0.518124, 0.827973,
		0.582098, 0.612900, 0.534336,
		-0.784317, 0.596575, 0.170134,
		21.878731, 22.350756, 13.740144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.410326, 21.951696, 14.370512>,  <22.427752, 21.933153, 13.621049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.410326, 21.951696, 14.370512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.064394, 22.084343, 14.219728>,  <21.856834, 22.163931, 14.129258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.064394, 22.084343, 14.219728>,  <22.410326, 21.951696, 14.370512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.064394, 22.084343, 14.219728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499636, -0.494700, 0.711081,
		0.049325, 0.803307, 0.593520,
		-0.864830, 0.331618, -0.376960,
		21.804945, 22.183828, 14.106641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.931271, 22.152769, 14.946130>,  <22.410326, 21.951696, 14.370512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.931271, 22.152769, 14.946130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.688551, 22.113260, 14.630651>,  <21.542919, 22.089556, 14.441364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.688551, 22.113260, 14.630651>,  <21.931271, 22.152769, 14.946130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.688551, 22.113260, 14.630651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610825, -0.576980, 0.542205,
		-0.508615, 0.810764, 0.289779,
		-0.606797, -0.098770, -0.788696,
		21.506512, 22.083630, 14.394043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224497, 22.149393, 15.232156>,  <21.931271, 22.152769, 14.946130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224497, 22.149393, 15.232156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218779, 21.972727, 14.873329>,  <21.215347, 21.866728, 14.658033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218779, 21.972727, 14.873329>,  <21.224497, 22.149393, 15.232156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218779, 21.972727, 14.873329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371198, -0.830702, 0.414907,
		-0.928444, 0.338920, -0.152070,
		-0.014296, -0.441666, -0.897066,
		21.214491, 21.840227, 14.604210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494925, 21.839563, 15.196558>,  <21.224497, 22.149393, 15.232156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494925, 21.839563, 15.196558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.676088, 21.666624, 14.884675>,  <20.784786, 21.562860, 14.697545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.676088, 21.666624, 14.884675>,  <20.494925, 21.839563, 15.196558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676088, 21.666624, 14.884675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243059, -0.901298, 0.358586,
		-0.857785, 0.027107, -0.513294,
		0.452911, -0.432350, -0.779708,
		20.811962, 21.536919, 14.650763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020151, 21.292477, 14.834987>,  <20.494925, 21.839563, 15.196558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020151, 21.292477, 14.834987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.402481, 21.182571, 14.793223>,  <20.631880, 21.116629, 14.768166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.402481, 21.182571, 14.793223>,  <20.020151, 21.292477, 14.834987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.402481, 21.182571, 14.793223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262130, -0.957525, 0.120137,
		-0.132982, -0.087462, -0.987252,
		0.955826, -0.274764, -0.104408,
		20.689228, 21.100142, 14.761901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.944511, 20.675760, 14.538149>,  <20.020151, 21.292477, 14.834987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.944511, 20.675760, 14.538149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.337793, 20.657652, 14.608872>,  <20.573763, 20.646788, 14.651307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.337793, 20.657652, 14.608872>,  <19.944511, 20.675760, 14.538149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337793, 20.657652, 14.608872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057835, -0.996104, 0.066567,
		0.173108, -0.075674, -0.981992,
		0.983204, -0.045271, 0.176810,
		20.632755, 20.644072, 14.661916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.179842, 20.224428, 14.121725>,  <19.944511, 20.675760, 14.538149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.179842, 20.224428, 14.121725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.465948, 20.229691, 14.401217>,  <20.637611, 20.232849, 14.568912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.465948, 20.229691, 14.401217>,  <20.179842, 20.224428, 14.121725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465948, 20.229691, 14.401217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062076, -0.994674, 0.082276,
		0.696090, -0.102223, -0.710640,
		0.715266, 0.013158, 0.698728,
		20.680529, 20.233639, 14.610835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808308, 19.840860, 13.940392>,  <20.179842, 20.224428, 14.121725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808308, 19.840860, 13.940392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792904, 19.854734, 14.339854>,  <20.783661, 19.863060, 14.579532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792904, 19.854734, 14.339854>,  <20.808308, 19.840860, 13.940392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792904, 19.854734, 14.339854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052970, -0.998063, 0.032623,
		0.997853, -0.051642, 0.040272,
		-0.038509, 0.034687, 0.998656,
		20.781351, 19.865141, 14.639451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.215971, 19.362394, 14.099788>,  <20.808308, 19.840860, 13.940392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.215971, 19.362394, 14.099788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.041973, 19.405264, 14.457400>,  <20.937574, 19.430986, 14.671968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.041973, 19.405264, 14.457400>,  <21.215971, 19.362394, 14.099788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041973, 19.405264, 14.457400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045168, -0.989044, 0.140540,
		0.899299, 0.101516, 0.425389,
		-0.434996, 0.107173, 0.894032,
		20.911474, 19.437416, 14.725610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.624434, 18.912830, 14.442574>,  <21.215971, 19.362394, 14.099788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.624434, 18.912830, 14.442574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323675, 18.975981, 14.698613>,  <21.143221, 19.013870, 14.852237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323675, 18.975981, 14.698613>,  <21.624434, 18.912830, 14.442574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323675, 18.975981, 14.698613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047962, -0.981431, 0.185722,
		0.657534, 0.108943, 0.745507,
		-0.751897, 0.157874, 0.640100,
		21.098106, 19.023342, 14.890643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715132, 18.496716, 15.059164>,  <21.624434, 18.912830, 14.442574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.715132, 18.496716, 15.059164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.321596, 18.568085, 15.065143>,  <21.085474, 18.610907, 15.068730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.321596, 18.568085, 15.065143>,  <21.715132, 18.496716, 15.059164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.321596, 18.568085, 15.065143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176034, -0.979150, 0.101377,
		0.032724, 0.097108, 0.994736,
		-0.983840, 0.178425, 0.014947,
		21.026443, 18.621613, 15.069627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464098, 18.298515, 15.748757>,  <21.715132, 18.496716, 15.059164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464098, 18.298515, 15.748757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142212, 18.304441, 15.511367>,  <20.949080, 18.307997, 15.368933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142212, 18.304441, 15.511367>,  <21.464098, 18.298515, 15.748757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142212, 18.304441, 15.511367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077045, -0.993841, 0.079655,
		-0.588640, 0.109824, 0.800901,
		-0.804716, 0.014817, -0.593475,
		20.900797, 18.308887, 15.333324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894077, 17.927504, 16.070780>,  <21.464098, 18.298515, 15.748757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894077, 17.927504, 16.070780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785007, 17.946501, 15.686406>,  <20.719566, 17.957899, 15.455782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785007, 17.946501, 15.686406>,  <20.894077, 17.927504, 16.070780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785007, 17.946501, 15.686406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272464, -0.961705, 0.029784,
		-0.922720, 0.269941, 0.275172,
		-0.272674, 0.047492, -0.960934,
		20.703205, 17.960749, 15.398126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.240206, 17.524584, 16.041887>,  <20.894077, 17.927504, 16.070780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.240206, 17.524584, 16.041887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.391582, 17.537275, 15.671855>,  <20.482409, 17.544889, 15.449836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.391582, 17.537275, 15.671855>,  <20.240206, 17.524584, 16.041887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.391582, 17.537275, 15.671855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355851, -0.917619, -0.177049,
		-0.854488, 0.396194, -0.335977,
		0.378444, 0.031729, -0.925080,
		20.505116, 17.546793, 15.394331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692673, 17.184261, 15.629261>,  <20.240206, 17.524584, 16.041887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692673, 17.184261, 15.629261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013430, 17.175501, 15.390433>,  <20.205883, 17.170244, 15.247136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013430, 17.175501, 15.390433>,  <19.692673, 17.184261, 15.629261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013430, 17.175501, 15.390433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222470, -0.938414, -0.264361,
		-0.554508, 0.344819, -0.757378,
		0.801890, -0.021903, -0.597070,
		20.253996, 17.168930, 15.211312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451925, 16.913673, 15.075344>,  <19.692673, 17.184261, 15.629261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451925, 16.913673, 15.075344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.844614, 16.840790, 15.053367>,  <20.080227, 16.797060, 15.040180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.844614, 16.840790, 15.053367>,  <19.451925, 16.913673, 15.075344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.844614, 16.840790, 15.053367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189513, -0.909496, -0.370003,
		0.017448, 0.373654, -0.927404,
		0.981723, -0.182211, -0.054944,
		20.139132, 16.786127, 15.036883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610615, 16.521255, 14.363145>,  <19.451925, 16.913673, 15.075344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610615, 16.521255, 14.363145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.950468, 16.452551, 14.562594>,  <20.154379, 16.411327, 14.682264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.950468, 16.452551, 14.562594>,  <19.610615, 16.521255, 14.363145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950468, 16.452551, 14.562594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056249, -0.910568, -0.409515,
		0.524370, 0.375984, -0.763985,
		0.849631, -0.171764, 0.498623,
		20.205357, 16.401022, 14.712181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.953651, 16.090195, 13.876934>,  <19.610615, 16.521255, 14.363145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.953651, 16.090195, 13.876934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.090868, 16.008371, 14.243645>,  <20.173197, 15.959277, 14.463671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.090868, 16.008371, 14.243645>,  <19.953651, 16.090195, 13.876934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090868, 16.008371, 14.243645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074779, -0.966955, -0.243735,
		0.936339, 0.152166, -0.316408,
		0.343040, -0.204559, 0.916777,
		20.193781, 15.947003, 14.518678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.585245, 15.818410, 13.699194>,  <19.953651, 16.090195, 13.876934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.585245, 15.818410, 13.699194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.448086, 15.709250, 14.058737>,  <20.365789, 15.643755, 14.274463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.448086, 15.709250, 14.058737>,  <20.585245, 15.818410, 13.699194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448086, 15.709250, 14.058737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023037, -0.959026, -0.282379,
		0.939090, -0.076121, 0.335136,
		-0.342899, -0.272900, 0.898858,
		20.345217, 15.627380, 14.328394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.980566, 15.264009, 13.799583>,  <20.585245, 15.818410, 13.699194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.980566, 15.264009, 13.799583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.650177, 15.255668, 14.024913>,  <20.451944, 15.250663, 14.160110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.650177, 15.255668, 14.024913>,  <20.980566, 15.264009, 13.799583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.650177, 15.255668, 14.024913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012793, -0.998365, -0.055716,
		0.563565, -0.053226, 0.824355,
		-0.825973, -0.020853, 0.563324,
		20.402386, 15.249412, 14.193910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564888, 15.283371, 14.175596>,  <20.980566, 15.264009, 13.799583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564888, 15.283371, 14.175596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.548309, 15.287037, 14.575235>,  <21.538363, 15.289236, 14.815019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.548309, 15.287037, 14.575235>,  <21.564888, 15.283371, 14.175596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.548309, 15.287037, 14.575235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458849, -0.888098, 0.027181,
		0.887547, 0.459562, 0.032603,
		-0.041446, 0.009165, 0.999099,
		21.535875, 15.289786, 14.874965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731237, 14.819885, 14.704837>,  <21.564888, 15.283371, 14.175596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731237, 14.819885, 14.704837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.118687, 14.738729, 14.762251>,  <22.351156, 14.690034, 14.796700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.118687, 14.738729, 14.762251>,  <21.731237, 14.819885, 14.704837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.118687, 14.738729, 14.762251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235738, 0.932954, -0.272073,
		-0.078710, 0.297373, 0.951511,
		0.968624, -0.202893, 0.143535,
		22.409273, 14.677860, 14.805311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167055, 15.354810, 15.142901>,  <21.731237, 14.819885, 14.704837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167055, 15.354810, 15.142901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383675, 15.161442, 14.867793>,  <22.513647, 15.045421, 14.702728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383675, 15.161442, 14.867793>,  <22.167055, 15.354810, 15.142901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.383675, 15.161442, 14.867793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160568, 0.862542, -0.479833,
		0.825191, 0.149421, 0.544732,
		0.541551, -0.483420, -0.687770,
		22.546141, 15.016416, 14.661462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717529, 15.823361, 14.961588>,  <22.167055, 15.354810, 15.142901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717529, 15.823361, 14.961588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.775768, 15.553617, 14.672026>,  <22.810711, 15.391771, 14.498288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.775768, 15.553617, 14.672026>,  <22.717529, 15.823361, 14.961588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.775768, 15.553617, 14.672026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421963, 0.704141, -0.571080,
		0.894846, -0.222314, 0.387076,
		0.145597, -0.674361, -0.723906,
		22.819447, 15.351310, 14.454854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.307280, 16.053177, 14.612495>,  <22.717529, 15.823361, 14.961588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.307280, 16.053177, 14.612495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126499, 15.801922, 14.359139>,  <23.018030, 15.651169, 14.207126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126499, 15.801922, 14.359139>,  <23.307280, 16.053177, 14.612495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126499, 15.801922, 14.359139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153289, 0.644794, -0.748828,
		0.878773, -0.435525, -0.195128,
		-0.451951, -0.628139, -0.633389,
		22.990913, 15.613481, 14.169123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.758110, 15.984557, 14.020568>,  <23.307280, 16.053177, 14.612495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.758110, 15.984557, 14.020568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.382679, 15.906365, 13.906822>,  <23.157421, 15.859450, 13.838574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.382679, 15.906365, 13.906822>,  <23.758110, 15.984557, 14.020568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.382679, 15.906365, 13.906822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086598, 0.664268, -0.742461,
		0.334029, -0.721482, -0.606538,
		-0.938576, -0.195479, -0.284364,
		23.101107, 15.847722, 13.821513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.752935, 15.916281, 13.253175>,  <23.758110, 15.984557, 14.020568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.752935, 15.916281, 13.253175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.371540, 15.993093, 13.346111>,  <23.142702, 16.039179, 13.401873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.371540, 15.993093, 13.346111>,  <23.752935, 15.916281, 13.253175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.371540, 15.993093, 13.346111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020084, 0.728616, -0.684628,
		-0.300756, -0.657452, -0.690871,
		-0.953490, 0.192030, 0.232341,
		23.085493, 16.050701, 13.415813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.377659, 16.010967, 12.628946>,  <23.752935, 15.916281, 13.253175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.377659, 16.010967, 12.628946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156853, 16.197903, 12.905170>,  <23.024368, 16.310064, 13.070905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156853, 16.197903, 12.905170>,  <23.377659, 16.010967, 12.628946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.156853, 16.197903, 12.905170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052411, 0.807092, -0.588095,
		-0.832184, -0.360832, -0.421035,
		-0.552018, 0.467337, 0.690560,
		22.991247, 16.338104, 13.112338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.822285, 16.226366, 12.289384>,  <23.377659, 16.010967, 12.628946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.822285, 16.226366, 12.289384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.798342, 16.475821, 12.601151>,  <22.783976, 16.625494, 12.788212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.798342, 16.475821, 12.601151>,  <22.822285, 16.226366, 12.289384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.798342, 16.475821, 12.601151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069551, 0.781527, -0.619983,
		-0.995781, 0.017100, -0.090154,
		-0.059856, 0.623637, 0.779419,
		22.780386, 16.662912, 12.834977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140789, 16.725515, 12.225953>,  <22.822285, 16.226366, 12.289384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140789, 16.725515, 12.225953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.433580, 16.876766, 12.452662>,  <22.609255, 16.967518, 12.588687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.433580, 16.876766, 12.452662>,  <22.140789, 16.725515, 12.225953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.433580, 16.876766, 12.452662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014321, 0.840216, -0.542063,
		-0.681180, 0.388660, 0.620433,
		0.731976, 0.378128, 0.566772,
		22.653173, 16.990204, 12.622693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.055248, 17.392340, 12.025112>,  <22.140789, 16.725515, 12.225953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.055248, 17.392340, 12.025112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.392244, 17.430733, 12.237147>,  <22.594442, 17.453770, 12.364368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.392244, 17.430733, 12.237147>,  <22.055248, 17.392340, 12.025112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.392244, 17.430733, 12.237147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214331, 0.843042, -0.493298,
		-0.494235, 0.529214, 0.689684,
		0.842492, 0.095984, 0.530088,
		22.644993, 17.459528, 12.396173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.046867, 18.086481, 12.203804>,  <22.055248, 17.392340, 12.025112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.046867, 18.086481, 12.203804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.422668, 17.952755, 12.233656>,  <22.648149, 17.872519, 12.251567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.422668, 17.952755, 12.233656>,  <22.046867, 18.086481, 12.203804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.422668, 17.952755, 12.233656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319274, 0.775714, -0.544363,
		0.124097, 0.535258, 0.835523,
		0.939502, -0.334315, 0.074630,
		22.704519, 17.852461, 12.256045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412277, 18.638943, 12.397976>,  <22.046867, 18.086481, 12.203804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412277, 18.638943, 12.397976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.679899, 18.386953, 12.240244>,  <22.840473, 18.235760, 12.145604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.679899, 18.386953, 12.240244>,  <22.412277, 18.638943, 12.397976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.679899, 18.386953, 12.240244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296659, 0.712844, -0.635489,
		0.681439, 0.308196, 0.663819,
		0.669055, -0.629975, -0.394331,
		22.880615, 18.197960, 12.121944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048725, 19.033039, 12.400707>,  <22.412277, 18.638943, 12.397976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048725, 19.033039, 12.400707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.109344, 18.742733, 12.132290>,  <23.145716, 18.568550, 11.971239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.109344, 18.742733, 12.132290>,  <23.048725, 19.033039, 12.400707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.109344, 18.742733, 12.132290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401074, 0.665636, -0.629339,
		0.903423, -0.173763, 0.391961,
		0.151547, -0.725765, -0.671043,
		23.154808, 18.525003, 11.930977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.839325, 19.048874, 12.226230>,  <23.048725, 19.033039, 12.400707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.839325, 19.048874, 12.226230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.636646, 18.854549, 11.941345>,  <23.515039, 18.737955, 11.770414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.636646, 18.854549, 11.941345>,  <23.839325, 19.048874, 12.226230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.636646, 18.854549, 11.941345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326682, 0.656312, -0.680098,
		0.797832, -0.577270, -0.173846,
		-0.506698, -0.485812, -0.712210,
		23.484636, 18.708805, 11.727682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.318163, 19.044992, 11.621870>,  <23.839325, 19.048874, 12.226230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.318163, 19.044992, 11.621870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.940289, 18.969957, 11.514256>,  <23.713564, 18.924936, 11.449688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.940289, 18.969957, 11.514256>,  <24.318163, 19.044992, 11.621870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.940289, 18.969957, 11.514256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105813, 0.602101, -0.791377,
		0.310438, -0.776070, -0.548947,
		-0.944686, -0.187587, -0.269033,
		23.656883, 18.913681, 11.433546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.442875, 19.070053, 10.913637>,  <24.318163, 19.044992, 11.621870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.442875, 19.070053, 10.913637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.048002, 19.093670, 10.972953>,  <23.811079, 19.107840, 11.008542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.048002, 19.093670, 10.972953>,  <24.442875, 19.070053, 10.913637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.048002, 19.093670, 10.972953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074553, 0.650919, -0.755477,
		-0.141131, -0.756848, -0.638172,
		-0.987180, 0.059043, 0.148290,
		23.751848, 19.111383, 11.017440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167480, 19.042219, 10.273170>,  <24.442875, 19.070053, 10.913637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167480, 19.042219, 10.273170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.884573, 19.227440, 10.486845>,  <23.714828, 19.338572, 10.615050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.884573, 19.227440, 10.486845>,  <24.167480, 19.042219, 10.273170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884573, 19.227440, 10.486845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077411, 0.700356, -0.709584,
		-0.702695, -0.543218, -0.459494,
		-0.707268, 0.463051, 0.534187,
		23.672392, 19.366356, 10.647101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.900589, 18.773411, 20.731850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572357, 18.546776, 20.761858>,  <16.375418, 18.410795, 20.779863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572357, 18.546776, 20.761858>,  <16.900589, 18.773411, 20.731850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572357, 18.546776, 20.761858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273708, -0.504807, -0.818691,
		0.501730, -0.651267, 0.569313,
		-0.820580, -0.566587, 0.075020,
		16.326183, 18.376801, 20.784365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139139, 17.979849, 20.782156>,  <16.900589, 18.773411, 20.731850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139139, 17.979849, 20.782156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778019, 18.042652, 20.622007>,  <16.561346, 18.080334, 20.525919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778019, 18.042652, 20.622007>,  <17.139139, 17.979849, 20.782156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778019, 18.042652, 20.622007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283639, -0.482395, -0.828760,
		-0.323259, -0.861768, 0.390974,
		-0.902803, 0.157009, -0.400369,
		16.507177, 18.089754, 20.501896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992666, 17.337553, 20.431753>,  <17.139139, 17.979849, 20.782156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992666, 17.337553, 20.431753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690830, 17.562643, 20.296738>,  <16.509727, 17.697697, 20.215729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690830, 17.562643, 20.296738>,  <16.992666, 17.337553, 20.431753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690830, 17.562643, 20.296738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025679, -0.488674, -0.872088,
		-0.655692, -0.666738, 0.354299,
		-0.754591, 0.562723, -0.337541,
		16.464453, 17.731461, 20.195475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637564, 16.849506, 20.077394>,  <16.992666, 17.337553, 20.431753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637564, 16.849506, 20.077394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514692, 17.202068, 19.933859>,  <16.440969, 17.413605, 19.847738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514692, 17.202068, 19.933859>,  <16.637564, 16.849506, 20.077394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514692, 17.202068, 19.933859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005635, -0.378748, -0.925483,
		-0.951635, -0.282267, 0.121310,
		-0.307179, 0.881405, -0.358840,
		16.422539, 17.466490, 19.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225676, 16.657349, 19.375969>,  <16.637564, 16.849506, 20.077394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225676, 16.657349, 19.375969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281824, 17.052525, 19.349823>,  <16.315514, 17.289629, 19.334135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281824, 17.052525, 19.349823>,  <16.225676, 16.657349, 19.375969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.281824, 17.052525, 19.349823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203537, -0.093403, -0.974601,
		-0.968952, 0.123502, -0.214194,
		0.140372, 0.987939, -0.065366,
		16.323936, 17.348906, 19.330214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895832, 16.794157, 18.727751>,  <16.225676, 16.657349, 19.375969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895832, 16.794157, 18.727751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144218, 17.101694, 18.788784>,  <16.293251, 17.286217, 18.825403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144218, 17.101694, 18.788784>,  <15.895832, 16.794157, 18.727751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.144218, 17.101694, 18.788784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298869, -0.052285, -0.952861,
		-0.724622, 0.637297, -0.262251,
		0.620967, 0.768843, 0.152581,
		16.330509, 17.332348, 18.834558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746894, 17.281273, 18.201286>,  <15.895832, 16.794157, 18.727751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746894, 17.281273, 18.201286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114260, 17.387848, 18.318264>,  <16.334679, 17.451794, 18.388451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114260, 17.387848, 18.318264>,  <15.746894, 17.281273, 18.201286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.114260, 17.387848, 18.318264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304164, -0.002857, -0.952615,
		-0.252977, 0.963848, -0.083664,
		0.918415, 0.266438, 0.292445,
		16.389784, 17.467779, 18.405998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059589, 17.762848, 17.694618>,  <15.746894, 17.281273, 18.201286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059589, 17.762848, 17.694618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356882, 17.586355, 17.895784>,  <16.535257, 17.480459, 18.016483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356882, 17.586355, 17.895784>,  <16.059589, 17.762848, 17.694618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.356882, 17.586355, 17.895784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460539, -0.207852, -0.862961,
		0.485296, 0.872991, 0.048722,
		0.743230, -0.441230, 0.502916,
		16.579851, 17.453987, 18.046659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701353, 18.018013, 17.441595>,  <16.059589, 17.762848, 17.694618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701353, 18.018013, 17.441595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790161, 17.664228, 17.605759>,  <16.843445, 17.451958, 17.704256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790161, 17.664228, 17.605759>,  <16.701353, 18.018013, 17.441595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.790161, 17.664228, 17.605759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519856, -0.248721, -0.817244,
		0.824899, 0.394796, 0.404572,
		0.222019, -0.884462, 0.410407,
		16.856768, 17.398890, 17.728880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.398230, 17.972931, 17.440815>,  <16.701353, 18.018013, 17.441595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.398230, 17.972931, 17.440815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253220, 17.600803, 17.463005>,  <17.166214, 17.377527, 17.476318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253220, 17.600803, 17.463005>,  <17.398230, 17.972931, 17.440815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253220, 17.600803, 17.463005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354805, -0.192810, -0.914843,
		0.861794, -0.311973, 0.399981,
		-0.362527, -0.930321, 0.055473,
		17.144461, 17.321707, 17.479647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860010, 17.574099, 17.040064>,  <17.398230, 17.972931, 17.440815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.860010, 17.574099, 17.040064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580139, 17.289917, 17.070267>,  <17.412216, 17.119408, 17.088388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580139, 17.289917, 17.070267>,  <17.860010, 17.574099, 17.040064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.580139, 17.289917, 17.070267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224379, -0.318848, -0.920864,
		0.678309, -0.627366, 0.382503,
		-0.699678, -0.710456, 0.075510,
		17.370235, 17.076780, 17.092920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171898, 16.890244, 16.818308>,  <17.860010, 17.574099, 17.040064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171898, 16.890244, 16.818308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773872, 16.877199, 16.780825>,  <17.535057, 16.869371, 16.758335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773872, 16.877199, 16.780825>,  <18.171898, 16.890244, 16.818308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773872, 16.877199, 16.780825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097244, -0.508181, -0.855743,
		-0.019713, -0.860632, 0.508845,
		-0.995065, -0.032613, -0.093709,
		17.475353, 16.867416, 16.752712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400028, 16.225775, 16.856232>,  <18.171898, 16.890244, 16.818308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400028, 16.225775, 16.856232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611820, 15.936262, 17.033224>,  <18.738895, 15.762555, 17.139420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611820, 15.936262, 17.033224>,  <18.400028, 16.225775, 16.856232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611820, 15.936262, 17.033224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268349, -0.351912, -0.896742,
		0.804760, 0.593548, 0.007895,
		0.529481, -0.723780, 0.442483,
		18.770664, 15.719128, 17.165970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106060, 16.152664, 16.574125>,  <18.400028, 16.225775, 16.856232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106060, 16.152664, 16.574125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033863, 15.794039, 16.735912>,  <18.990545, 15.578863, 16.832985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033863, 15.794039, 16.735912>,  <19.106060, 16.152664, 16.574125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033863, 15.794039, 16.735912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133821, -0.429782, -0.892961,
		0.974431, -0.107045, 0.197551,
		-0.180491, -0.896565, 0.404468,
		18.979715, 15.525069, 16.857252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600773, 15.612183, 16.536129>,  <19.106060, 16.152664, 16.574125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600773, 15.612183, 16.536129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644749, 15.215734, 16.566040>,  <18.671133, 14.977865, 16.583986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644749, 15.215734, 16.566040>,  <18.600773, 15.612183, 16.536129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.644749, 15.215734, 16.566040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027776, 0.072143, 0.997007,
		-0.993550, -0.111686, -0.019598,
		0.109938, -0.991121, 0.074780,
		18.677731, 14.918398, 16.588474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092762, 15.428910, 17.037020>,  <18.600773, 15.612183, 16.536129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092762, 15.428910, 17.037020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363556, 15.135655, 17.011093>,  <18.526031, 14.959702, 16.995537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363556, 15.135655, 17.011093>,  <18.092762, 15.428910, 17.037020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363556, 15.135655, 17.011093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033674, -0.118830, 0.992343,
		-0.735227, -0.669619, -0.105134,
		0.676985, -0.733137, -0.064818,
		18.566650, 14.915714, 16.991648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938219, 15.051033, 17.730700>,  <18.092762, 15.428910, 17.037020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938219, 15.051033, 17.730700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283012, 14.898588, 17.596989>,  <18.489889, 14.807121, 17.516762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283012, 14.898588, 17.596989>,  <17.938219, 15.051033, 17.730700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.283012, 14.898588, 17.596989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265000, -0.223377, 0.938018,
		-0.432159, -0.897138, -0.091553,
		0.861982, -0.381112, -0.334276,
		18.541607, 14.784255, 17.496706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035385, 14.310609, 17.967485>,  <17.938219, 15.051033, 17.730700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.035385, 14.310609, 17.967485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381430, 14.504604, 17.916306>,  <18.589056, 14.621001, 17.885597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381430, 14.504604, 17.916306>,  <18.035385, 14.310609, 17.967485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381430, 14.504604, 17.916306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290282, -0.276075, 0.916253,
		0.409048, -0.829801, -0.379618,
		0.865110, 0.484988, -0.127948,
		18.640963, 14.650101, 17.877920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629421, 13.848773, 18.143236>,  <18.035385, 14.310609, 17.967485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629421, 13.848773, 18.143236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.743711, 14.228736, 18.193892>,  <18.812286, 14.456714, 18.224285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.743711, 14.228736, 18.193892>,  <18.629421, 13.848773, 18.143236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743711, 14.228736, 18.193892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383412, -0.234425, 0.893331,
		0.878268, -0.206695, -0.431187,
		0.285728, 0.949907, 0.126638,
		18.829430, 14.513708, 18.231882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242620, 13.831336, 18.628759>,  <18.629421, 13.848773, 18.143236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242620, 13.831336, 18.628759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142857, 14.218211, 18.648113>,  <19.082998, 14.450336, 18.659725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142857, 14.218211, 18.648113>,  <19.242620, 13.831336, 18.628759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142857, 14.218211, 18.648113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210304, 0.005326, 0.977621,
		0.945287, 0.254004, -0.204732,
		-0.249410, 0.967188, 0.048383,
		19.068033, 14.508368, 18.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755646, 14.079295, 18.984272>,  <19.242620, 13.831336, 18.628759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.755646, 14.079295, 18.984272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499710, 14.385683, 19.009241>,  <19.346149, 14.569515, 19.024223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499710, 14.385683, 19.009241>,  <19.755646, 14.079295, 18.984272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.499710, 14.385683, 19.009241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224191, 0.108345, 0.968504,
		0.735081, 0.633682, -0.241047,
		-0.639839, 0.765969, 0.062423,
		19.307758, 14.615474, 19.027967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023451, 14.508504, 19.441294>,  <19.755646, 14.079295, 18.984272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023451, 14.508504, 19.441294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649063, 14.649204, 19.435200>,  <19.424431, 14.733624, 19.431543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649063, 14.649204, 19.435200>,  <20.023451, 14.508504, 19.441294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649063, 14.649204, 19.435200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117988, 0.354140, 0.927719,
		0.331722, 0.866519, -0.372967,
		-0.935970, 0.351751, -0.015237,
		19.368273, 14.754729, 19.430628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.057224, 15.266690, 19.671017>,  <20.023451, 14.508504, 19.441294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.057224, 15.266690, 19.671017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687641, 15.128250, 19.736153>,  <19.465891, 15.045186, 19.775234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687641, 15.128250, 19.736153>,  <20.057224, 15.266690, 19.671017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687641, 15.128250, 19.736153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015713, 0.391024, 0.920246,
		-0.382172, 0.852827, -0.355852,
		-0.923958, -0.346101, 0.162839,
		19.410454, 15.024420, 19.785004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.814816, 15.775272, 20.052385>,  <20.057224, 15.266690, 19.671017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.814816, 15.775272, 20.052385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.583487, 15.457862, 20.128132>,  <19.444689, 15.267416, 20.173580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.583487, 15.457862, 20.128132>,  <19.814816, 15.775272, 20.052385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.583487, 15.457862, 20.128132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277411, 0.409574, 0.869076,
		-0.767194, 0.450073, -0.456999,
		-0.578322, -0.793526, 0.189367,
		19.409990, 15.219804, 20.184942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280708, 16.017321, 20.350416>,  <19.814816, 15.775272, 20.052385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280708, 16.017321, 20.350416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199274, 15.637496, 20.445824>,  <19.150414, 15.409602, 20.503067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199274, 15.637496, 20.445824>,  <19.280708, 16.017321, 20.350416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.199274, 15.637496, 20.445824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334751, 0.296447, 0.894461,
		-0.920052, 0.102254, -0.378218,
		-0.203584, -0.949559, 0.238517,
		19.138199, 15.352628, 20.517380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650122, 16.008833, 20.648104>,  <19.280708, 16.017321, 20.350416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650122, 16.008833, 20.648104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841795, 15.685745, 20.785496>,  <18.956799, 15.491893, 20.867931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841795, 15.685745, 20.785496>,  <18.650122, 16.008833, 20.648104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.841795, 15.685745, 20.785496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414428, 0.136753, 0.899749,
		-0.773715, -0.573490, -0.269211,
		0.479181, -0.807718, 0.343478,
		18.985550, 15.443430, 20.888538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207712, 15.784930, 21.107979>,  <18.650122, 16.008833, 20.648104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207712, 15.784930, 21.107979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513660, 15.551441, 21.216967>,  <18.697229, 15.411347, 21.282358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513660, 15.551441, 21.216967>,  <18.207712, 15.784930, 21.107979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.513660, 15.551441, 21.216967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306327, 0.042505, 0.950977,
		-0.566689, -0.810839, -0.146299,
		0.764871, -0.583723, 0.272468,
		18.743122, 15.376324, 21.298708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.893818, 15.207768, 21.478041>,  <18.207712, 15.784930, 21.107979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.893818, 15.207768, 21.478041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.274483, 15.260475, 21.589022>,  <18.502882, 15.292099, 21.655611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.274483, 15.260475, 21.589022>,  <17.893818, 15.207768, 21.478041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274483, 15.260475, 21.589022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291626, 0.104029, 0.950859,
		0.096365, -0.985816, 0.137408,
		0.951666, 0.131701, 0.277465,
		18.559980, 15.300005, 21.672258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.555664, 14.514142, 21.418846>,  <17.893818, 15.207768, 21.478041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.555664, 14.514142, 21.418846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162212, 14.477357, 21.480831>,  <16.926142, 14.455286, 21.518023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162212, 14.477357, 21.480831>,  <17.555664, 14.514142, 21.418846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162212, 14.477357, 21.480831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115516, -0.338217, -0.933951,
		0.138301, -0.936564, 0.322057,
		-0.983630, -0.091964, 0.154964,
		16.867123, 14.449768, 21.527321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394808, 13.814937, 21.284691>,  <17.555664, 14.514142, 21.418846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394808, 13.814937, 21.284691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.064444, 14.038537, 21.255322>,  <16.866226, 14.172697, 21.237700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.064444, 14.038537, 21.255322>,  <17.394808, 13.814937, 21.284691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064444, 14.038537, 21.255322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199960, -0.412188, -0.888885,
		-0.527154, -0.719456, 0.452208,
		-0.825908, 0.559003, -0.073424,
		16.816671, 14.206238, 21.233294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942375, 13.366441, 21.174919>,  <17.394808, 13.814937, 21.284691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942375, 13.366441, 21.174919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795799, 13.722468, 21.066477>,  <16.707853, 13.936085, 21.001411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795799, 13.722468, 21.066477>,  <16.942375, 13.366441, 21.174919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.795799, 13.722468, 21.066477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243491, -0.372955, -0.895330,
		-0.898016, -0.262074, 0.353390,
		-0.366441, 0.890068, -0.271107,
		16.685867, 13.989489, 20.985146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260410, 13.199061, 20.890057>,  <16.942375, 13.366441, 21.174919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260410, 13.199061, 20.890057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328949, 13.566008, 20.746344>,  <16.370071, 13.786175, 20.660116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328949, 13.566008, 20.746344>,  <16.260410, 13.199061, 20.890057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328949, 13.566008, 20.746344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283833, -0.303249, -0.909659,
		-0.943440, 0.257842, 0.208418,
		0.171345, 0.917364, -0.359281,
		16.380352, 13.841217, 20.638559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613466, 13.466499, 20.514023>,  <16.260410, 13.199061, 20.890057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613466, 13.466499, 20.514023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928257, 13.660553, 20.361544>,  <16.117132, 13.776985, 20.270056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928257, 13.660553, 20.361544>,  <15.613466, 13.466499, 20.514023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928257, 13.660553, 20.361544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263365, -0.294584, -0.918618,
		-0.557947, 0.823326, -0.104063,
		0.786977, 0.485134, -0.381198,
		16.164351, 13.806093, 20.247185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444132, 13.403065, 19.915171>,  <15.613466, 13.466499, 20.514023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444132, 13.403065, 19.915171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809937, 13.553731, 19.856131>,  <16.029421, 13.644131, 19.820705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809937, 13.553731, 19.856131>,  <15.444132, 13.403065, 19.915171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.809937, 13.553731, 19.856131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068038, -0.216453, -0.973919,
		-0.398790, 0.900706, -0.172322,
		0.914515, 0.376665, -0.147601,
		16.084291, 13.666731, 19.811850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363565, 13.780341, 19.276409>,  <15.444132, 13.403065, 19.915171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.363565, 13.780341, 19.276409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754745, 13.704152, 19.310669>,  <15.989453, 13.658439, 19.331224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754745, 13.704152, 19.310669>,  <15.363565, 13.780341, 19.276409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754745, 13.704152, 19.310669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051380, -0.178066, -0.982676,
		0.202424, 0.965408, -0.164353,
		0.977949, -0.190473, 0.085647,
		16.048130, 13.647010, 19.336363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.697027, 14.181198, 18.756435>,  <15.363565, 13.780341, 19.276409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.697027, 14.181198, 18.756435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942855, 13.877972, 18.843742>,  <16.090351, 13.696036, 18.896126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942855, 13.877972, 18.843742>,  <15.697027, 14.181198, 18.756435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942855, 13.877972, 18.843742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179277, -0.135232, -0.974460,
		0.768221, 0.638004, 0.052795,
		0.614570, -0.758065, 0.218268,
		16.127226, 13.650552, 18.909224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251240, 14.235366, 18.229506>,  <15.697027, 14.181198, 18.756435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251240, 14.235366, 18.229506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328135, 13.882472, 18.401415>,  <16.374271, 13.670735, 18.504560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328135, 13.882472, 18.401415>,  <16.251240, 14.235366, 18.229506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328135, 13.882472, 18.401415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558258, -0.261865, -0.787258,
		0.807090, 0.391264, 0.442175,
		0.192235, -0.882236, 0.429774,
		16.385805, 13.617802, 18.530348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993015, 14.090566, 18.161276>,  <16.251240, 14.235366, 18.229506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993015, 14.090566, 18.161276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.780912, 13.754695, 18.208220>,  <16.653650, 13.553173, 18.236385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.780912, 13.754695, 18.208220>,  <16.993015, 14.090566, 18.161276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780912, 13.754695, 18.208220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385058, -0.361829, -0.849005,
		0.755354, -0.404998, 0.515186,
		-0.530255, -0.839676, 0.117361,
		16.621836, 13.502792, 18.243427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.450359, 13.732478, 17.787539>,  <16.993015, 14.090566, 18.161276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.450359, 13.732478, 17.787539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104702, 13.532533, 17.810833>,  <16.897306, 13.412565, 17.824810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104702, 13.532533, 17.810833>,  <17.450359, 13.732478, 17.787539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104702, 13.532533, 17.810833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202718, -0.451674, -0.868848,
		0.460609, -0.739004, 0.491643,
		-0.864144, -0.499864, 0.058236,
		16.845459, 13.382574, 17.828304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.655586, 13.051359, 17.767345>,  <17.450359, 13.732478, 17.787539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.655586, 13.051359, 17.767345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285673, 13.116192, 17.629648>,  <17.063725, 13.155091, 17.547029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285673, 13.116192, 17.629648>,  <17.655586, 13.051359, 17.767345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285673, 13.116192, 17.629648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260268, -0.390497, -0.883048,
		-0.277552, -0.906224, 0.318941,
		-0.924784, 0.162081, -0.344244,
		17.008238, 13.164817, 17.526375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.789813, 16.326263, 26.277382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.928158, 16.050299, 26.531754>,  <15.011165, 15.884720, 26.684376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.928158, 16.050299, 26.531754>,  <14.789813, 16.326263, 26.277382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.928158, 16.050299, 26.531754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506037, -0.433585, -0.745608,
		0.790131, 0.579679, 0.199160,
		0.345861, -0.689910, 0.635928,
		15.031916, 15.843326, 26.722532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484363, 16.335512, 26.116467>,  <14.789813, 16.326263, 26.277382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484363, 16.335512, 26.116467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.430476, 15.989783, 26.310291>,  <15.398145, 15.782347, 26.426586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.430476, 15.989783, 26.310291>,  <15.484363, 16.335512, 26.116467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430476, 15.989783, 26.310291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473596, -0.485713, -0.734704,
		0.870378, 0.130512, 0.474772,
		-0.134715, -0.864320, 0.484564,
		15.390061, 15.730487, 26.455660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121176, 15.979630, 26.143206>,  <15.484363, 16.335512, 26.116467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121176, 15.979630, 26.143206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.808398, 15.730302, 26.140684>,  <15.620732, 15.580706, 26.139172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.808398, 15.730302, 26.140684>,  <16.121176, 15.979630, 26.143206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808398, 15.730302, 26.140684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380879, -0.469752, -0.796408,
		0.493454, -0.625146, 0.604728,
		-0.781943, -0.623319, -0.006304,
		15.573815, 15.543306, 26.138794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464823, 15.452301, 25.749908>,  <16.121176, 15.979630, 26.143206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464823, 15.452301, 25.749908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.096840, 15.295811, 25.759861>,  <15.876050, 15.201917, 25.765833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.096840, 15.295811, 25.759861>,  <16.464823, 15.452301, 25.749908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096840, 15.295811, 25.759861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229966, -0.589979, -0.773977,
		0.317478, -0.706305, 0.632725,
		-0.919958, -0.391226, 0.024880,
		15.820852, 15.178443, 25.767324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555717, 14.719869, 25.659151>,  <16.464823, 15.452301, 25.749908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.555717, 14.719869, 25.659151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.174883, 14.800696, 25.567322>,  <15.946383, 14.849194, 25.512224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.174883, 14.800696, 25.567322>,  <16.555717, 14.719869, 25.659151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174883, 14.800696, 25.567322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127937, -0.418660, -0.899086,
		-0.277790, -0.885377, 0.372747,
		-0.952084, 0.202069, -0.229572,
		15.889257, 14.861318, 25.498449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302036, 14.162543, 25.377668>,  <16.555717, 14.719869, 25.659151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302036, 14.162543, 25.377668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.066824, 14.449256, 25.227766>,  <15.925696, 14.621284, 25.137825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.066824, 14.449256, 25.227766>,  <16.302036, 14.162543, 25.377668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066824, 14.449256, 25.227766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261203, -0.270218, -0.926690,
		-0.765501, -0.642811, -0.028329,
		-0.588032, 0.716782, -0.374756,
		15.890414, 14.664290, 25.115339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962255, 13.788161, 24.995634>,  <16.302036, 14.162543, 25.377668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962255, 13.788161, 24.995634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.915757, 14.161363, 24.859404>,  <15.887858, 14.385283, 24.777666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.915757, 14.161363, 24.859404>,  <15.962255, 13.788161, 24.995634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915757, 14.161363, 24.859404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303279, -0.293181, -0.906679,
		-0.945785, -0.208686, -0.248880,
		-0.116244, 0.933004, -0.340576,
		15.880884, 14.441263, 24.757231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616179, 13.685292, 24.357071>,  <15.962255, 13.788161, 24.995634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616179, 13.685292, 24.357071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.794500, 14.042570, 24.333525>,  <15.901493, 14.256937, 24.319397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.794500, 14.042570, 24.333525>,  <15.616179, 13.685292, 24.357071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794500, 14.042570, 24.333525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253756, -0.189169, -0.948590,
		-0.858410, 0.407946, -0.310986,
		0.445802, 0.893194, -0.058866,
		15.928241, 14.310528, 24.315865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311944, 14.078138, 23.856724>,  <15.616179, 13.685292, 24.357071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311944, 14.078138, 23.856724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.684441, 14.219505, 23.892248>,  <15.907938, 14.304325, 23.913563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.684441, 14.219505, 23.892248>,  <15.311944, 14.078138, 23.856724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.684441, 14.219505, 23.892248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068606, 0.069323, -0.995232,
		-0.357889, 0.932894, 0.040310,
		0.931240, 0.353417, 0.088812,
		15.963813, 14.325530, 23.918892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382823, 14.405142, 23.342155>,  <15.311944, 14.078138, 23.856724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382823, 14.405142, 23.342155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.767024, 14.422914, 23.452036>,  <15.997544, 14.433577, 23.517963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.767024, 14.422914, 23.452036>,  <15.382823, 14.405142, 23.342155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767024, 14.422914, 23.452036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271638, 0.064548, -0.960232,
		-0.060393, 0.996925, 0.049930,
		0.960503, 0.044428, 0.274701,
		16.055176, 14.436242, 23.534447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622042, 14.979425, 23.024906>,  <15.382823, 14.405142, 23.342155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622042, 14.979425, 23.024906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.963382, 14.782503, 23.093525>,  <16.168186, 14.664350, 23.134697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.963382, 14.782503, 23.093525>,  <15.622042, 14.979425, 23.024906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963382, 14.782503, 23.093525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302130, 0.198839, -0.932298,
		0.424866, 0.847406, 0.318420,
		0.853350, -0.492307, 0.171547,
		16.219387, 14.634811, 23.144989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220184, 15.389266, 22.709190>,  <15.622042, 14.979425, 23.024906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220184, 15.389266, 22.709190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.371552, 15.024592, 22.773230>,  <16.462372, 14.805788, 22.811653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.371552, 15.024592, 22.773230>,  <16.220184, 15.389266, 22.709190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371552, 15.024592, 22.773230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379851, -0.004773, -0.925035,
		0.844104, 0.410864, 0.344498,
		0.378420, -0.911684, 0.160096,
		16.485077, 14.751087, 22.821259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746735, 15.423476, 22.214630>,  <16.220184, 15.389266, 22.709190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.746735, 15.423476, 22.214630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.676386, 15.042679, 22.314850>,  <16.634176, 14.814200, 22.374983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.676386, 15.042679, 22.314850>,  <16.746735, 15.423476, 22.214630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.676386, 15.042679, 22.314850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229032, -0.287104, -0.930116,
		0.957400, -0.106197, 0.268530,
		-0.175872, -0.951995, 0.250551,
		16.623625, 14.757080, 22.390015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.316818, 15.138344, 21.873310>,  <16.746735, 15.423476, 22.214630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.316818, 15.138344, 21.873310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.053242, 14.842558, 21.928431>,  <16.895096, 14.665087, 21.961504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.053242, 14.842558, 21.928431>,  <17.316818, 15.138344, 21.873310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053242, 14.842558, 21.928431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007586, -0.176659, -0.984243,
		0.752157, -0.649603, 0.110798,
		-0.658940, -0.739465, 0.137804,
		16.855560, 14.620719, 21.969772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.979622, 14.888728, 22.156387>,  <17.316818, 15.138344, 21.873310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.979622, 14.888728, 22.156387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.294880, 15.134418, 22.140631>,  <18.484035, 15.281833, 22.131176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.294880, 15.134418, 22.140631>,  <17.979622, 14.888728, 22.156387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.294880, 15.134418, 22.140631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231124, 0.354671, 0.905975,
		0.570444, -0.704937, 0.421495,
		0.788147, 0.614225, -0.039392,
		18.531324, 15.318686, 22.128813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446728, 14.752526, 22.819176>,  <17.979622, 14.888728, 22.156387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446728, 14.752526, 22.819176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.566866, 15.109726, 22.685104>,  <18.638948, 15.324046, 22.604662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.566866, 15.109726, 22.685104>,  <18.446728, 14.752526, 22.819176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566866, 15.109726, 22.685104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017419, 0.356479, 0.934141,
		0.953672, -0.274725, 0.122622,
		0.300344, 0.893000, -0.335178,
		18.656969, 15.377626, 22.584551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025553, 14.940881, 23.130747>,  <18.446728, 14.752526, 22.819176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025553, 14.940881, 23.130747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.884502, 15.297650, 23.017521>,  <18.799871, 15.511712, 22.949585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.884502, 15.297650, 23.017521>,  <19.025553, 14.940881, 23.130747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884502, 15.297650, 23.017521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215134, 0.371664, 0.903097,
		0.910699, 0.257559, -0.322942,
		-0.352626, 0.891925, -0.283064,
		18.778715, 15.565228, 22.932602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.583708, 15.378379, 23.288286>,  <19.025553, 14.940881, 23.130747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.583708, 15.378379, 23.288286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.254328, 15.604465, 23.268448>,  <19.056700, 15.740116, 23.256544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.254328, 15.604465, 23.268448>,  <19.583708, 15.378379, 23.288286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254328, 15.604465, 23.268448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242485, 0.429599, 0.869854,
		0.512961, 0.704256, -0.490810,
		-0.823451, 0.565215, -0.049596,
		19.007292, 15.774029, 23.253569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703400, 16.012012, 23.743162>,  <19.583708, 15.378379, 23.288286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703400, 16.012012, 23.743162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.304468, 16.004652, 23.714891>,  <19.065109, 16.000237, 23.697929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.304468, 16.004652, 23.714891>,  <19.703400, 16.012012, 23.743162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304468, 16.004652, 23.714891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072273, 0.387692, 0.918951,
		0.010492, 0.921605, -0.387987,
		-0.997330, -0.018399, -0.070675,
		19.005270, 15.999132, 23.693689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497923, 16.668503, 24.042822>,  <19.703400, 16.012012, 23.743162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497923, 16.668503, 24.042822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.157570, 16.458368, 24.040962>,  <18.953358, 16.332289, 24.039846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.157570, 16.458368, 24.040962>,  <19.497923, 16.668503, 24.042822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.157570, 16.458368, 24.040962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225074, 0.356530, 0.906768,
		-0.474701, 0.772599, -0.421604,
		-0.850883, -0.525335, -0.004647,
		18.902306, 16.300768, 24.039568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955807, 17.099344, 24.377747>,  <19.497923, 16.668503, 24.042822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955807, 17.099344, 24.377747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.809404, 16.727182, 24.385626>,  <18.721563, 16.503885, 24.390354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.809404, 16.727182, 24.385626>,  <18.955807, 17.099344, 24.377747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809404, 16.727182, 24.385626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273619, 0.127821, 0.953307,
		-0.889478, 0.343527, -0.301360,
		-0.366007, -0.930404, 0.019699,
		18.699602, 16.448061, 24.391535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204313, 17.046606, 24.671122>,  <18.955807, 17.099344, 24.377747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204313, 17.046606, 24.671122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.289675, 16.656881, 24.699903>,  <18.340891, 16.423046, 24.717173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.289675, 16.656881, 24.699903>,  <18.204313, 17.046606, 24.671122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289675, 16.656881, 24.699903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369376, -0.012282, 0.929199,
		-0.904445, -0.224871, -0.362508,
		0.213402, -0.974311, 0.071954,
		18.353695, 16.364588, 24.721489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.594166, 16.750103, 24.865618>,  <18.204313, 17.046606, 24.671122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.594166, 16.750103, 24.865618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.892282, 16.508093, 24.977680>,  <18.071152, 16.362886, 25.044918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.892282, 16.508093, 24.977680>,  <17.594166, 16.750103, 24.865618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892282, 16.508093, 24.977680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305614, 0.063452, 0.950039,
		-0.592574, -0.793674, -0.137614,
		0.745290, -0.605025, 0.280158,
		18.115870, 16.326586, 25.061728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273701, 16.167538, 25.319651>,  <17.594166, 16.750103, 24.865618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273701, 16.167538, 25.319651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.668221, 16.174536, 25.385258>,  <17.904934, 16.178736, 25.424622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.668221, 16.174536, 25.385258>,  <17.273701, 16.167538, 25.319651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.668221, 16.174536, 25.385258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163350, -0.034585, 0.985962,
		0.022929, -0.999249, -0.031252,
		0.986302, 0.017502, 0.164020,
		17.964111, 16.179785, 25.434464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378391, 15.662321, 25.891237>,  <17.273701, 16.167538, 25.319651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378391, 15.662321, 25.891237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.704657, 15.893614, 25.883871>,  <17.900415, 16.032391, 25.879452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.704657, 15.893614, 25.883871>,  <17.378391, 15.662321, 25.891237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704657, 15.893614, 25.883871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085488, 0.151951, 0.984684,
		0.572175, -0.801597, 0.173373,
		0.815664, 0.578233, -0.018415,
		17.949356, 16.067083, 25.878347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842859, 15.359496, 26.346298>,  <17.378391, 15.662321, 25.891237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842859, 15.359496, 26.346298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.940378, 15.746545, 26.320156>,  <17.998890, 15.978774, 26.304472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.940378, 15.746545, 26.320156>,  <17.842859, 15.359496, 26.346298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940378, 15.746545, 26.320156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109016, 0.094303, 0.989557,
		0.963680, -0.234126, 0.128477,
		0.243797, 0.967622, -0.065354,
		18.013517, 16.036831, 26.300550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313589, 15.535152, 26.893408>,  <17.842859, 15.359496, 26.346298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313589, 15.535152, 26.893408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.167118, 15.892441, 26.789045>,  <18.079235, 16.106813, 26.726427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.167118, 15.892441, 26.789045>,  <18.313589, 15.535152, 26.893408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.167118, 15.892441, 26.789045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118689, 0.233258, 0.965144,
		0.922945, 0.384379, 0.020602,
		-0.366176, 0.893220, -0.260907,
		18.057266, 16.160406, 26.710773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049501, 15.375185, 26.885250>,  <18.313589, 15.535152, 26.893408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.049501, 15.375185, 26.885250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034670, 15.603529, 27.213333>,  <19.025770, 15.740536, 27.410183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034670, 15.603529, 27.213333>,  <19.049501, 15.375185, 26.885250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034670, 15.603529, 27.213333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746551, 0.561434, -0.357006,
		-0.664294, 0.599091, -0.446993,
		-0.037078, 0.570860, 0.820210,
		19.023546, 15.774787, 27.459396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.577748, 18.120760, 26.194284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.898467, 17.882290, 26.210749>,  <11.090899, 17.739208, 26.220627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.898467, 17.882290, 26.210749>,  <10.577748, 18.120760, 26.194284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.898467, 17.882290, 26.210749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013224, -0.086561, -0.996159,
		0.597450, 0.798173, -0.077289,
		0.801797, -0.596177, 0.041161,
		11.139007, 17.703436, 26.223097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.030722, 18.347980, 25.663923>,  <10.577748, 18.120760, 26.194284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.030722, 18.347980, 25.663923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.150409, 17.975035, 25.745079>,  <11.222220, 17.751266, 25.793772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.150409, 17.975035, 25.745079>,  <11.030722, 18.347980, 25.663923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150409, 17.975035, 25.745079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004046, -0.213869, -0.976854,
		0.954177, 0.291470, -0.067765,
		0.299217, -0.932365, 0.202889,
		11.240173, 17.695326, 25.805946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431759, 18.270744, 25.151939>,  <11.030722, 18.347980, 25.663923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431759, 18.270744, 25.151939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.394418, 17.886621, 25.257080>,  <11.372013, 17.656147, 25.320164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.394418, 17.886621, 25.257080>,  <11.431759, 18.270744, 25.151939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.394418, 17.886621, 25.257080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186715, -0.242436, -0.952031,
		0.977969, -0.137952, -0.156673,
		-0.093352, -0.960309, 0.262852,
		11.366412, 17.598528, 25.335936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.837337, 17.851746, 24.650635>,  <11.431759, 18.270744, 25.151939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.837337, 17.851746, 24.650635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.570498, 17.603052, 24.814795>,  <11.410396, 17.453836, 24.913290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.570498, 17.603052, 24.814795>,  <11.837337, 17.851746, 24.650635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.570498, 17.603052, 24.814795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196787, -0.384262, -0.902008,
		0.718511, -0.682487, 0.133990,
		-0.667096, -0.621735, 0.410401,
		11.370370, 17.416533, 24.937916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.076053, 17.255808, 24.427883>,  <11.837337, 17.851746, 24.650635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.076053, 17.255808, 24.427883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.686822, 17.217075, 24.511543>,  <11.453283, 17.193836, 24.561739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.686822, 17.217075, 24.511543>,  <12.076053, 17.255808, 24.427883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686822, 17.217075, 24.511543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133247, -0.504078, -0.853317,
		0.188055, -0.858212, 0.477605,
		-0.973078, -0.096831, 0.209149,
		11.394898, 17.188026, 24.574287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.896667, 16.608128, 24.190020>,  <12.076053, 17.255808, 24.427883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.896667, 16.608128, 24.190020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.545776, 16.799351, 24.207605>,  <11.335242, 16.914085, 24.218157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.545776, 16.799351, 24.207605>,  <11.896667, 16.608128, 24.190020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.545776, 16.799351, 24.207605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234313, -0.346418, -0.908345,
		-0.419016, -0.807125, 0.415903,
		-0.877225, 0.478063, 0.043965,
		11.282608, 16.942768, 24.220795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.332836, 16.139181, 23.943335>,  <11.896667, 16.608128, 24.190020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.332836, 16.139181, 23.943335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.161345, 16.498783, 23.907600>,  <11.058450, 16.714544, 23.886160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.161345, 16.498783, 23.907600>,  <11.332836, 16.139181, 23.943335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.161345, 16.498783, 23.907600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216510, -0.198246, -0.955940,
		-0.877106, -0.390497, 0.279638,
		-0.428729, 0.899005, -0.089336,
		11.032725, 16.768484, 23.880800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.804994, 16.026094, 23.497932>,  <11.332836, 16.139181, 23.943335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.804994, 16.026094, 23.497932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.824211, 16.425337, 23.482546>,  <10.835742, 16.664883, 23.473314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.824211, 16.425337, 23.482546>,  <10.804994, 16.026094, 23.497932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.824211, 16.425337, 23.482546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342979, -0.019686, -0.939137,
		-0.938114, 0.058314, 0.341383,
		0.048044, 0.998104, -0.038468,
		10.838624, 16.724768, 23.471004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318689, 16.257696, 22.962267>,  <10.804994, 16.026094, 23.497932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318689, 16.257696, 22.962267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.562143, 16.573050, 22.998077>,  <10.708216, 16.762262, 23.019564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.562143, 16.573050, 22.998077>,  <10.318689, 16.257696, 22.962267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.562143, 16.573050, 22.998077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122414, 0.204784, -0.971122,
		-0.783951, 0.580099, 0.221148,
		0.608634, 0.788384, 0.089528,
		10.744734, 16.809565, 23.024937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.096105, 16.893759, 22.640650>,  <10.318689, 16.257696, 22.962267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.096105, 16.893759, 22.640650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.489696, 16.964149, 22.629175>,  <10.725850, 17.006384, 22.622290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.489696, 16.964149, 22.629175>,  <10.096105, 16.893759, 22.640650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489696, 16.964149, 22.629175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060718, 0.179435, -0.981894,
		-0.167641, 0.967903, 0.187245,
		0.983976, 0.175975, -0.028689,
		10.784888, 17.016941, 22.620569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.177499, 17.411886, 22.118553>,  <10.096105, 16.893759, 22.640650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.177499, 17.411886, 22.118553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.555263, 17.283981, 22.149124>,  <10.781921, 17.207237, 22.167467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.555263, 17.283981, 22.149124>,  <10.177499, 17.411886, 22.118553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.555263, 17.283981, 22.149124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062965, -0.052249, -0.996647,
		0.322685, 0.946056, -0.029210,
		0.944410, -0.319764, 0.076428,
		10.838586, 17.188053, 22.172052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.515054, 17.827579, 21.720671>,  <10.177499, 17.411886, 22.118553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.515054, 17.827579, 21.720671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.757794, 17.511244, 21.752436>,  <10.903439, 17.321442, 21.771496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.757794, 17.511244, 21.752436>,  <10.515054, 17.827579, 21.720671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.757794, 17.511244, 21.752436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039177, -0.070031, -0.996775,
		0.793849, 0.608005, -0.011516,
		0.606851, -0.790838, 0.079414,
		10.939850, 17.273993, 21.776260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.092457, 17.894335, 21.150549>,  <10.515054, 17.827579, 21.720671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.092457, 17.894335, 21.150549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.055585, 17.506313, 21.240435>,  <11.033462, 17.273500, 21.294367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.055585, 17.506313, 21.240435>,  <11.092457, 17.894335, 21.150549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.055585, 17.506313, 21.240435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050467, -0.229937, -0.971896,
		0.994463, -0.078249, 0.070152,
		-0.092181, -0.970055, 0.224715,
		11.027930, 17.215298, 21.307850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600650, 17.646852, 20.812492>,  <11.092457, 17.894335, 21.150549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600650, 17.646852, 20.812492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.351999, 17.337170, 20.860134>,  <11.202809, 17.151360, 20.888720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.351999, 17.337170, 20.860134>,  <11.600650, 17.646852, 20.812492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351999, 17.337170, 20.860134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224869, -0.322031, -0.919636,
		0.750344, -0.544886, 0.374278,
		-0.621626, -0.774207, 0.119106,
		11.165511, 17.104908, 20.895866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376503, 17.509346, 20.946417>,  <11.600650, 17.646852, 20.812492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376503, 17.509346, 20.946417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.481101, 17.883377, 20.850712>,  <12.543860, 18.107796, 20.793289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.481101, 17.883377, 20.850712>,  <12.376503, 17.509346, 20.946417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.481101, 17.883377, 20.850712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117380, 0.276855, 0.953716,
		0.958041, -0.221308, 0.182156,
		0.261496, 0.935080, -0.239261,
		12.559550, 18.163900, 20.778933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.992807, 17.717440, 21.383224>,  <12.376503, 17.509346, 20.946417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.992807, 17.717440, 21.383224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.823526, 18.050318, 21.239922>,  <12.721957, 18.250044, 21.153940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.823526, 18.050318, 21.239922>,  <12.992807, 17.717440, 21.383224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.823526, 18.050318, 21.239922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189026, 0.305614, 0.933204,
		0.886097, 0.462656, 0.027970,
		-0.423204, 0.832196, -0.358258,
		12.696566, 18.299976, 21.132444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358409, 18.278971, 21.767746>,  <12.992807, 17.717440, 21.383224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358409, 18.278971, 21.767746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.046641, 18.474085, 21.610483>,  <12.859581, 18.591154, 21.516125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.046641, 18.474085, 21.610483>,  <13.358409, 18.278971, 21.767746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046641, 18.474085, 21.610483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188596, 0.415756, 0.889707,
		0.597443, 0.767602, -0.232053,
		-0.779418, 0.487785, -0.393157,
		12.812816, 18.620420, 21.492537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552944, 18.969990, 21.847830>,  <13.358409, 18.278971, 21.767746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552944, 18.969990, 21.847830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.163765, 18.877626, 21.844898>,  <12.930258, 18.822208, 21.843140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.163765, 18.877626, 21.844898>,  <13.552944, 18.969990, 21.847830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.163765, 18.877626, 21.844898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138182, 0.556236, 0.819456,
		-0.185143, 0.798300, -0.573096,
		-0.972948, -0.230908, -0.007328,
		12.871881, 18.808353, 21.842699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284646, 19.612099, 21.991806>,  <13.552944, 18.969990, 21.847830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284646, 19.612099, 21.991806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.008778, 19.327375, 22.045004>,  <12.843257, 19.156542, 22.076921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.008778, 19.327375, 22.045004>,  <13.284646, 19.612099, 21.991806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008778, 19.327375, 22.045004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252136, 0.408222, 0.877372,
		-0.678810, 0.571565, -0.461010,
		-0.689670, -0.711806, 0.132994,
		12.801877, 19.113834, 22.084902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754965, 19.971022, 22.232164>,  <13.284646, 19.612099, 21.991806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754965, 19.971022, 22.232164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.692114, 19.592115, 22.343878>,  <12.654403, 19.364771, 22.410906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.692114, 19.592115, 22.343878>,  <12.754965, 19.971022, 22.232164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.692114, 19.592115, 22.343878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327375, 0.316765, 0.890217,
		-0.931738, 0.048448, -0.359884,
		-0.157128, -0.947266, 0.279281,
		12.644976, 19.307936, 22.427662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.173225, 20.063326, 22.725716>,  <12.754965, 19.971022, 22.232164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.173225, 20.063326, 22.725716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.330835, 19.707781, 22.819242>,  <12.425402, 19.494453, 22.875359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.330835, 19.707781, 22.819242>,  <12.173225, 20.063326, 22.725716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.330835, 19.707781, 22.819242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098517, 0.212087, 0.972272,
		-0.913805, -0.406134, -0.004000,
		0.394024, -0.888861, 0.233818,
		12.449042, 19.441122, 22.889387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.664845, 19.709074, 23.135895>,  <12.173225, 20.063326, 22.725716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.664845, 19.709074, 23.135895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.008492, 19.510365, 23.185104>,  <12.214680, 19.391138, 23.214630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.008492, 19.510365, 23.185104>,  <11.664845, 19.709074, 23.135895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.008492, 19.510365, 23.185104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224748, -0.150251, 0.962763,
		-0.459791, -0.854775, -0.240732,
		0.859116, -0.496774, 0.123025,
		12.266227, 19.361332, 23.222012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.564939, 19.039942, 23.509695>,  <11.664845, 19.709074, 23.135895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.564939, 19.039942, 23.509695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.937997, 19.173431, 23.564547>,  <12.161832, 19.253525, 23.597458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.937997, 19.173431, 23.564547>,  <11.564939, 19.039942, 23.509695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.937997, 19.173431, 23.564547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181064, 0.104171, 0.977939,
		0.312077, -0.936898, 0.157579,
		0.932644, 0.333724, 0.137129,
		12.217791, 19.273548, 23.605686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836650, 18.736244, 24.097233>,  <11.564939, 19.039942, 23.509695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836650, 18.736244, 24.097233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.084073, 19.048130, 24.058382>,  <12.232527, 19.235262, 24.035072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.084073, 19.048130, 24.058382>,  <11.836650, 18.736244, 24.097233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.084073, 19.048130, 24.058382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134770, 0.227062, 0.964510,
		0.774095, -0.583515, 0.245533,
		0.618558, 0.779713, -0.097127,
		12.269640, 19.282043, 24.029243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.370828, 18.558270, 24.464609>,  <11.836650, 18.736244, 24.097233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.370828, 18.558270, 24.464609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.387096, 18.956661, 24.432693>,  <12.396858, 19.195696, 24.413544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.387096, 18.956661, 24.432693>,  <12.370828, 18.558270, 24.464609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.387096, 18.956661, 24.432693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158640, 0.072407, 0.984678,
		0.986499, -0.052707, -0.155057,
		0.040672, 0.995982, -0.079790,
		12.399298, 19.255455, 24.408756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080412, 18.790728, 24.746708>,  <12.370828, 18.558270, 24.464609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080412, 18.790728, 24.746708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.858794, 19.121490, 24.785198>,  <12.725823, 19.319948, 24.808292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.858794, 19.121490, 24.785198>,  <13.080412, 18.790728, 24.746708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.858794, 19.121490, 24.785198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335253, 0.115827, 0.934981,
		0.761997, 0.550281, -0.341396,
		-0.554045, 0.826907, 0.096224,
		12.692580, 19.369562, 24.814066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512776, 19.299562, 25.090609>,  <13.080412, 18.790728, 24.746708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512776, 19.299562, 25.090609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.154736, 19.473869, 25.128345>,  <12.939911, 19.578453, 25.150988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.154736, 19.473869, 25.128345>,  <13.512776, 19.299562, 25.090609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154736, 19.473869, 25.128345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177198, 0.153512, 0.972129,
		0.409138, 0.886872, -0.214626,
		-0.895102, 0.435766, 0.094344,
		12.886205, 19.604599, 25.156649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644602, 19.786232, 25.543125>,  <13.512776, 19.299562, 25.090609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644602, 19.786232, 25.543125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.249613, 19.725565, 25.560541>,  <13.012620, 19.689165, 25.570992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.249613, 19.725565, 25.560541>,  <13.644602, 19.786232, 25.543125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.249613, 19.725565, 25.560541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008708, 0.223129, 0.974750,
		-0.157555, 0.962917, -0.219013,
		-0.987472, -0.151670, 0.043540,
		12.953371, 19.680063, 25.573603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000741, 20.335251, 25.505861>,  <13.644602, 19.786232, 25.543125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000741, 20.335251, 25.505861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.377002, 20.332232, 25.641577>,  <14.602758, 20.330420, 25.723005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.377002, 20.332232, 25.641577>,  <14.000741, 20.335251, 25.505861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377002, 20.332232, 25.641577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334765, -0.143546, -0.931304,
		0.055735, 0.989615, -0.132499,
		0.940652, -0.007550, 0.339289,
		14.659198, 20.329966, 25.743362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.275053, 20.867212, 25.058296>,  <14.000741, 20.335251, 25.505861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.275053, 20.867212, 25.058296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.567589, 20.639147, 25.207993>,  <14.743110, 20.502308, 25.297810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.567589, 20.639147, 25.207993>,  <14.275053, 20.867212, 25.058296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.567589, 20.639147, 25.207993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345690, -0.163118, -0.924062,
		0.587914, 0.805173, 0.077806,
		0.731338, -0.570166, 0.374239,
		14.786990, 20.468098, 25.320265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.886210, 21.090063, 24.763411>,  <14.275053, 20.867212, 25.058296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.886210, 21.090063, 24.763411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.948230, 20.713203, 24.882284>,  <14.985441, 20.487087, 24.953609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.948230, 20.713203, 24.882284>,  <14.886210, 21.090063, 24.763411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948230, 20.713203, 24.882284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083804, -0.287196, -0.954199,
		0.984346, 0.172851, 0.034427,
		0.155047, -0.942147, 0.297186,
		14.994744, 20.430559, 24.971439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458866, 21.025267, 24.295559>,  <14.886210, 21.090063, 24.763411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458866, 21.025267, 24.295559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.330187, 20.665195, 24.412991>,  <15.252979, 20.449152, 24.483450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.330187, 20.665195, 24.412991>,  <15.458866, 21.025267, 24.295559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330187, 20.665195, 24.412991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104341, -0.341877, -0.933934,
		0.941075, -0.269813, 0.203907,
		-0.321699, -0.900178, 0.293579,
		15.233677, 20.395142, 24.501064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841653, 20.676592, 23.919168>,  <15.458866, 21.025267, 24.295559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841653, 20.676592, 23.919168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.556266, 20.417173, 24.025265>,  <15.385034, 20.261522, 24.088923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.556266, 20.417173, 24.025265>,  <15.841653, 20.676592, 23.919168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556266, 20.417173, 24.025265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021615, -0.398737, -0.916811,
		0.700356, -0.648381, 0.298504,
		-0.713467, -0.648546, 0.265243,
		15.342226, 20.222610, 24.104837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127151, 20.026550, 23.845224>,  <15.841653, 20.676592, 23.919168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127151, 20.026550, 23.845224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.734385, 19.954472, 23.821995>,  <15.498726, 19.911224, 23.808058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.734385, 19.954472, 23.821995>,  <16.127151, 20.026550, 23.845224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.734385, 19.954472, 23.821995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160852, -0.632269, -0.757867,
		0.099848, -0.753502, 0.649819,
		-0.981915, -0.180196, -0.058071,
		15.439811, 19.900414, 23.804573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999359, 19.304783, 23.743141>,  <16.127151, 20.026550, 23.845224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.999359, 19.304783, 23.743141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.625542, 19.403158, 23.640268>,  <15.401251, 19.462183, 23.578545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.625542, 19.403158, 23.640268>,  <15.999359, 19.304783, 23.743141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625542, 19.403158, 23.640268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024346, -0.676848, -0.735720,
		-0.355013, -0.693824, 0.626557,
		-0.934544, 0.245936, -0.257182,
		15.345179, 19.476938, 23.563114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572625, 18.688841, 23.528988>,  <15.999359, 19.304783, 23.743141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572625, 18.688841, 23.528988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.426842, 19.020622, 23.359669>,  <15.339372, 19.219690, 23.258078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.426842, 19.020622, 23.359669>,  <15.572625, 18.688841, 23.528988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426842, 19.020622, 23.359669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055874, -0.434264, -0.899051,
		-0.929542, -0.351318, 0.111926,
		-0.364458, 0.829452, -0.423297,
		15.317504, 19.269459, 23.232679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896761, 18.546177, 23.162050>,  <15.572625, 18.688841, 23.528988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896761, 18.546177, 23.162050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.047029, 18.882038, 23.005156>,  <15.137191, 19.083555, 22.911018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.047029, 18.882038, 23.005156>,  <14.896761, 18.546177, 23.162050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.047029, 18.882038, 23.005156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037435, -0.409145, -0.911701,
		-0.925997, 0.357183, -0.122272,
		0.375671, 0.839655, -0.392238,
		15.159731, 19.133934, 22.887484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.565156, 18.686079, 22.497631>,  <14.896761, 18.546177, 23.162050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.565156, 18.686079, 22.497631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.918377, 18.872501, 22.475672>,  <15.130309, 18.984354, 22.462496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.918377, 18.872501, 22.475672>,  <14.565156, 18.686079, 22.497631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918377, 18.872501, 22.475672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234088, -0.538855, -0.809220,
		-0.406722, 0.701733, -0.584935,
		0.883051, 0.466054, -0.054897,
		15.183292, 19.012318, 22.459202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594557, 18.723001, 21.793079>,  <14.565156, 18.686079, 22.497631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594557, 18.723001, 21.793079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.961176, 18.806456, 21.929558>,  <15.181148, 18.856527, 22.011444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.961176, 18.806456, 21.929558>,  <14.594557, 18.723001, 21.793079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961176, 18.806456, 21.929558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395319, -0.343475, -0.851908,
		-0.060544, 0.915695, -0.397288,
		0.916547, 0.208633, 0.341196,
		15.236140, 18.869045, 22.031916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835684, 19.084856, 21.196623>,  <14.594557, 18.723001, 21.793079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.835684, 19.084856, 21.196623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.141022, 18.955944, 21.420565>,  <15.324224, 18.878597, 21.554930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.141022, 18.955944, 21.420565>,  <14.835684, 19.084856, 21.196623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141022, 18.955944, 21.420565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490080, -0.275718, -0.826923,
		0.420862, 0.905603, -0.052526,
		0.763346, -0.322278, 0.559857,
		15.370026, 18.859261, 21.588522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525563, 19.468147, 20.946072>,  <14.835684, 19.084856, 21.196623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525563, 19.468147, 20.946072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.618087, 19.133810, 21.145214>,  <15.673601, 18.933208, 21.264700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.618087, 19.133810, 21.145214>,  <15.525563, 19.468147, 20.946072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618087, 19.133810, 21.145214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490930, -0.341524, -0.801467,
		0.839931, 0.429800, 0.331342,
		0.231309, -0.835843, 0.497858,
		15.687479, 18.883057, 21.294571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228573, 19.302771, 20.851175>,  <15.525563, 19.468147, 20.946072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.228573, 19.302771, 20.851175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.111839, 18.935558, 20.958544>,  <16.041800, 18.715231, 21.022964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.111839, 18.935558, 20.958544>,  <16.228573, 19.302771, 20.851175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111839, 18.935558, 20.958544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326146, -0.359333, -0.874362,
		0.899145, -0.167623, 0.404278,
		-0.291833, -0.918032, 0.268423,
		16.024290, 18.660149, 21.039070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.092627, 26.478363, 16.526783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.326781, 26.156290, 16.488821>,  <7.467273, 25.963047, 16.466043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.326781, 26.156290, 16.488821>,  <7.092627, 26.478363, 16.526783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.326781, 26.156290, 16.488821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800797, -0.592511, 0.087496,
		-0.126681, 0.024779, -0.991634,
		0.585386, -0.805182, -0.094903,
		7.502397, 25.914736, 16.460350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.586735, 25.948696, 16.552952>,  <7.092627, 26.478363, 16.526783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.586735, 25.948696, 16.552952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.869452, 25.669230, 16.508575>,  <7.039082, 25.501549, 16.481949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.869452, 25.669230, 16.508575>,  <6.586735, 25.948696, 16.552952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.869452, 25.669230, 16.508575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697171, -0.714532, 0.058283,
		-0.119990, 0.036150, -0.992117,
		0.706792, -0.698668, -0.110940,
		7.081489, 25.459629, 16.475294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.459027, 25.437241, 16.010859>,  <6.586735, 25.948696, 16.552952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.459027, 25.437241, 16.010859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.658329, 25.266312, 16.312624>,  <6.777910, 25.163755, 16.493683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.658329, 25.266312, 16.312624>,  <6.459027, 25.437241, 16.010859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.658329, 25.266312, 16.312624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742214, -0.659984, 0.116364,
		0.448176, -0.617915, -0.646002,
		0.498254, -0.427320, 0.754414,
		6.807805, 25.138115, 16.538948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.555493, 24.693718, 16.036583>,  <6.459027, 25.437241, 16.010859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.555493, 24.693718, 16.036583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.548934, 24.768648, 16.429447>,  <6.544998, 24.813606, 16.665165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.548934, 24.768648, 16.429447>,  <6.555493, 24.693718, 16.036583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.548934, 24.768648, 16.429447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815656, -0.570648, 0.095221,
		0.578305, -0.799544, 0.162152,
		-0.016399, 0.187327, 0.982161,
		6.544014, 24.824846, 16.724096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.708620, 24.093805, 16.539690>,  <6.555493, 24.693718, 16.036583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.708620, 24.093805, 16.539690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.488482, 24.378683, 16.714001>,  <6.356400, 24.549610, 16.818586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.488482, 24.378683, 16.714001>,  <6.708620, 24.093805, 16.539690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.488482, 24.378683, 16.714001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695503, -0.679810, 0.232666,
		0.461948, -0.175037, 0.869463,
		-0.550344, 0.712194, 0.435775,
		6.323379, 24.592340, 16.844734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.231607, 24.050163, 17.112070>,  <6.708620, 24.093805, 16.539690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.231607, 24.050163, 17.112070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.964966, 24.270489, 16.911175>,  <5.804981, 24.402683, 16.790638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.964966, 24.270489, 16.911175>,  <6.231607, 24.050163, 17.112070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.964966, 24.270489, 16.911175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171302, 0.542543, 0.822376,
		0.725462, 0.634233, -0.267306,
		-0.666603, 0.550813, -0.502240,
		5.764985, 24.435732, 16.760502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.335963, 24.605362, 17.585400>,  <6.231607, 24.050163, 17.112070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.335963, 24.605362, 17.585400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.223864, 24.557417, 17.966366>,  <6.156604, 24.528650, 18.194946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.223864, 24.557417, 17.966366>,  <6.335963, 24.605362, 17.585400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.223864, 24.557417, 17.966366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031355, -0.992787, -0.115716,
		0.959415, -0.002566, 0.281986,
		-0.280249, -0.119861, 0.952415,
		6.139789, 24.521458, 18.252090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.708416, 24.102629, 17.792778>,  <6.335963, 24.605362, 17.585400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.708416, 24.102629, 17.792778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.391197, 24.132055, 18.034658>,  <6.200866, 24.149712, 18.179787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.391197, 24.132055, 18.034658>,  <6.708416, 24.102629, 17.792778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.391197, 24.132055, 18.034658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065782, -0.997219, 0.035045,
		0.605597, -0.011986, 0.795682,
		-0.793048, 0.073565, 0.604701,
		6.153283, 24.154125, 18.216068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.770249, 23.705446, 18.490627>,  <6.708416, 24.102629, 17.792778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.770249, 23.705446, 18.490627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.391802, 23.730722, 18.363588>,  <6.164733, 23.745888, 18.287365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.391802, 23.730722, 18.363588>,  <6.770249, 23.705446, 18.490627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.391802, 23.730722, 18.363588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124218, -0.976568, 0.175738,
		-0.299049, 0.205720, 0.931799,
		-0.946118, 0.063192, -0.317596,
		6.107966, 23.749680, 18.268309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.253755, 23.200569, 18.383717>,  <6.770249, 23.705446, 18.490627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.253755, 23.200569, 18.383717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.962883, 23.189032, 18.658052>,  <6.788359, 23.182110, 18.822655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.962883, 23.189032, 18.658052>,  <7.253755, 23.200569, 18.383717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.962883, 23.189032, 18.658052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290250, -0.892489, -0.345281,
		0.622063, -0.450147, 0.640629,
		-0.727181, -0.028844, 0.685839,
		6.744728, 23.180378, 18.863804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.267239, 22.575663, 18.651072>,  <7.253755, 23.200569, 18.383717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.267239, 22.575663, 18.651072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.898622, 22.719181, 18.710430>,  <6.677451, 22.805292, 18.746046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.898622, 22.719181, 18.710430>,  <7.267239, 22.575663, 18.651072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.898622, 22.719181, 18.710430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387034, -0.818331, -0.424898,
		-0.031014, -0.448997, 0.892995,
		-0.921543, 0.358797, 0.148398,
		6.622159, 22.826820, 18.754950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.931218, 22.027355, 18.923168>,  <7.267239, 22.575663, 18.651072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.931218, 22.027355, 18.923168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.627909, 22.252277, 18.791208>,  <6.445924, 22.387232, 18.712032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.627909, 22.252277, 18.791208>,  <6.931218, 22.027355, 18.923168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.627909, 22.252277, 18.791208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504268, -0.826605, -0.249877,
		-0.413205, -0.023116, 0.910345,
		-0.758272, 0.562307, -0.329901,
		6.400428, 22.420969, 18.692238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.276069, 21.742146, 19.210192>,  <6.931218, 22.027355, 18.923168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.276069, 21.742146, 19.210192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.199213, 21.946718, 18.875164>,  <6.153099, 22.069462, 18.674149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.199213, 21.946718, 18.875164>,  <6.276069, 21.742146, 19.210192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.199213, 21.946718, 18.875164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579642, -0.747833, -0.323668,
		-0.791895, 0.423299, 0.440137,
		-0.192141, 0.511433, -0.837567,
		6.141570, 22.100147, 18.623894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.448969, 21.677874, 18.992529>,  <6.276069, 21.742146, 19.210192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.448969, 21.677874, 18.992529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.631674, 21.792168, 18.655548>,  <5.741297, 21.860744, 18.453360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.631674, 21.792168, 18.655548>,  <5.448969, 21.677874, 18.992529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.631674, 21.792168, 18.655548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437953, -0.752070, -0.492531,
		-0.774316, 0.593924, -0.218379,
		0.456762, 0.285735, -0.842451,
		5.768703, 21.877888, 18.402813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.938083, 21.530239, 18.461658>,  <5.448969, 21.677874, 18.992529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.938083, 21.530239, 18.461658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.259072, 21.579565, 18.228134>,  <5.451665, 21.609161, 18.088020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.259072, 21.579565, 18.228134>,  <4.938083, 21.530239, 18.461658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.259072, 21.579565, 18.228134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317040, -0.740756, -0.592255,
		-0.505495, 0.660358, -0.555340,
		0.802471, 0.123317, -0.583809,
		5.499813, 21.616560, 18.052992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.763800, 21.753136, 17.788984>,  <4.938083, 21.530239, 18.461658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.763800, 21.753136, 17.788984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.125153, 21.588087, 17.742254>,  <5.341964, 21.489058, 17.714216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.125153, 21.588087, 17.742254>,  <4.763800, 21.753136, 17.788984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.125153, 21.588087, 17.742254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347826, -0.545660, -0.762412,
		0.250839, 0.729384, -0.636459,
		0.903381, -0.412619, -0.116826,
		5.396167, 21.464302, 17.707207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.969757, 21.829298, 17.011909>,  <4.763800, 21.753136, 17.788984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.969757, 21.829298, 17.011909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.189979, 21.527592, 17.155001>,  <5.322112, 21.346567, 17.240856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.189979, 21.527592, 17.155001>,  <4.969757, 21.829298, 17.011909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.189979, 21.527592, 17.155001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333571, -0.591594, -0.733994,
		0.765258, 0.284776, -0.577306,
		0.550554, -0.754268, 0.357729,
		5.355145, 21.301311, 17.262320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.194033, 21.580185, 16.402559>,  <4.969757, 21.829298, 17.011909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.194033, 21.580185, 16.402559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.255362, 21.300768, 16.682138>,  <5.292159, 21.133118, 16.849886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.255362, 21.300768, 16.682138>,  <5.194033, 21.580185, 16.402559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.255362, 21.300768, 16.682138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210139, -0.714182, -0.667672,
		0.965575, -0.044508, -0.256291,
		0.153322, -0.698544, 0.698948,
		5.301358, 21.091206, 16.891823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.513218, 21.008249, 16.080170>,  <5.194033, 21.580185, 16.402559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.513218, 21.008249, 16.080170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.364755, 20.832876, 16.407589>,  <5.275677, 20.727652, 16.604040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.364755, 20.832876, 16.407589>,  <5.513218, 21.008249, 16.080170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.364755, 20.832876, 16.407589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278750, -0.788249, -0.548600,
		0.885742, -0.431787, 0.170352,
		-0.371159, -0.438432, 0.818547,
		5.253407, 20.701347, 16.653152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.784107, 20.300346, 16.117979>,  <5.513218, 21.008249, 16.080170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.784107, 20.300346, 16.117979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.434711, 20.327326, 16.310837>,  <5.225072, 20.343513, 16.426552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.434711, 20.327326, 16.310837>,  <5.784107, 20.300346, 16.117979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.434711, 20.327326, 16.310837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301149, -0.853004, -0.426255,
		0.382519, -0.517527, 0.765405,
		-0.873492, 0.067450, 0.482143,
		5.172663, 20.347561, 16.455481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.709076, 19.647055, 16.171535>,  <5.784107, 20.300346, 16.117979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.709076, 19.647055, 16.171535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.345437, 19.784781, 16.265333>,  <5.127254, 19.867416, 16.321611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.345437, 19.784781, 16.265333>,  <5.709076, 19.647055, 16.171535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.345437, 19.784781, 16.265333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406364, -0.856871, -0.317239,
		0.091699, -0.383691, 0.918897,
		-0.909098, 0.344316, 0.234493,
		5.072708, 19.888075, 16.335680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.415627, 19.147116, 16.540766>,  <5.709076, 19.647055, 16.171535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.415627, 19.147116, 16.540766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.120417, 19.372877, 16.392836>,  <4.943292, 19.508333, 16.304077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.120417, 19.372877, 16.392836>,  <5.415627, 19.147116, 16.540766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.120417, 19.372877, 16.392836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455188, -0.821010, -0.344597,
		-0.498122, -0.085980, 0.862833,
		-0.738023, 0.564403, -0.369826,
		4.899010, 19.542198, 16.281887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.840731, 18.996990, 16.905228>,  <5.415627, 19.147116, 16.540766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.840731, 18.996990, 16.905228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.702677, 19.145264, 16.560328>,  <4.619844, 19.234228, 16.353388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.702677, 19.145264, 16.560328>,  <4.840731, 18.996990, 16.905228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.702677, 19.145264, 16.560328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557799, -0.819860, -0.129190,
		-0.754812, 0.436374, 0.489731,
		-0.345136, 0.370686, -0.862249,
		4.599136, 19.256470, 16.301653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.116926, 18.725763, 16.825510>,  <4.840731, 18.996990, 16.905228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.116926, 18.725763, 16.825510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.149392, 18.873928, 16.455385>,  <4.168872, 18.962828, 16.233311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.149392, 18.873928, 16.455385>,  <4.116926, 18.725763, 16.825510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.149392, 18.873928, 16.455385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519665, -0.776477, -0.356415,
		-0.850506, 0.509783, 0.129467,
		0.081167, 0.370413, -0.925314,
		4.173742, 18.985052, 16.177792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.417901, 18.761787, 16.521189>,  <4.116926, 18.725763, 16.825510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.417901, 18.761787, 16.521189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.679611, 18.750477, 16.218897>,  <3.836637, 18.743690, 16.037521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.679611, 18.750477, 16.218897>,  <3.417901, 18.761787, 16.521189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.679611, 18.750477, 16.218897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419762, -0.844813, -0.331800,
		-0.629067, 0.534314, -0.564610,
		0.654275, -0.028278, -0.755728,
		3.875893, 18.741993, 15.992178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.061727, 18.497467, 15.943093>,  <3.417901, 18.761787, 16.521189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.061727, 18.497467, 15.943093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.447274, 18.448282, 15.848571>,  <3.678602, 18.418772, 15.791857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.447274, 18.448282, 15.848571>,  <3.061727, 18.497467, 15.943093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.447274, 18.448282, 15.848571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214172, -0.885208, -0.412961,
		-0.158402, 0.448650, -0.879558,
		0.963867, -0.122963, -0.236307,
		3.736434, 18.411394, 15.777678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.131955, 18.310177, 15.206931>,  <3.061727, 18.497467, 15.943093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.131955, 18.310177, 15.206931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.452734, 18.156160, 15.389633>,  <3.645201, 18.063749, 15.499254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.452734, 18.156160, 15.389633>,  <3.131955, 18.310177, 15.206931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.452734, 18.156160, 15.389633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167273, -0.878720, -0.447070,
		0.573500, 0.282124, -0.769093,
		0.801946, -0.385043, 0.456754,
		3.693318, 18.040648, 15.526659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.445534, 17.878054, 14.746574>,  <3.131955, 18.310177, 15.206931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.445534, 17.878054, 14.746574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.610700, 17.749277, 15.087363>,  <3.709800, 17.672010, 15.291837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.610700, 17.749277, 15.087363>,  <3.445534, 17.878054, 14.746574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.610700, 17.749277, 15.087363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085026, -0.917730, -0.387999,
		0.906792, 0.232651, -0.351571,
		0.412915, -0.321941, 0.851971,
		3.734575, 17.652695, 15.342955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.756031, 17.319103, 14.583356>,  <3.445534, 17.878054, 14.746574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.756031, 17.319103, 14.583356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.803037, 17.256615, 14.975638>,  <3.831240, 17.219122, 15.211008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.803037, 17.256615, 14.975638>,  <3.756031, 17.319103, 14.583356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.803037, 17.256615, 14.975638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183007, -0.967229, -0.176003,
		0.976063, 0.200159, -0.085074,
		0.117515, -0.156221, 0.980707,
		3.838291, 17.209749, 15.269851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.310538, 16.919041, 14.650131>,  <3.756031, 17.319103, 14.583356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.310538, 16.919041, 14.650131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.100544, 16.854197, 14.984344>,  <3.974547, 16.815290, 15.184871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.100544, 16.854197, 14.984344>,  <4.310538, 16.919041, 14.650131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.100544, 16.854197, 14.984344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075780, -0.986698, -0.143824,
		0.847730, -0.012190, 0.530287,
		-0.524986, -0.162109, 0.835530,
		3.943048, 16.805565, 15.235003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.740704, 16.450304, 15.050259>,  <4.310538, 16.919041, 14.650131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.740704, 16.450304, 15.050259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.370521, 16.415560, 15.197762>,  <4.148411, 16.394714, 15.286264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.370521, 16.415560, 15.197762>,  <4.740704, 16.450304, 15.050259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.370521, 16.415560, 15.197762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017058, -0.981930, -0.188476,
		0.378467, -0.168136, 0.910216,
		-0.925457, -0.086858, 0.368760,
		4.092883, 16.389502, 15.308391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.470526, 16.408245, 14.746602>,  <4.740704, 16.450304, 15.050259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.470526, 16.408245, 14.746602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.826805, 16.282928, 14.878363>,  <6.040572, 16.207739, 14.957419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.826805, 16.282928, 14.878363>,  <5.470526, 16.408245, 14.746602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.826805, 16.282928, 14.878363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035343, 0.674685, 0.737259,
		-0.453221, -0.668317, 0.589867,
		0.890697, -0.313294, 0.329402,
		6.094014, 16.188940, 14.977183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.501219, 16.572500, 15.427281>,  <5.470526, 16.408245, 14.746602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.501219, 16.572500, 15.427281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.885199, 16.567245, 15.315336>,  <6.115587, 16.564093, 15.248169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.885199, 16.567245, 15.315336>,  <5.501219, 16.572500, 15.427281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.885199, 16.567245, 15.315336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119248, 0.923063, 0.365698,
		0.253526, -0.384425, 0.887661,
		0.959950, -0.013138, -0.279863,
		6.173184, 16.563305, 15.231378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.877674, 16.812786, 15.936114>,  <5.501219, 16.572500, 15.427281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.877674, 16.812786, 15.936114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.125991, 16.858244, 15.625837>,  <6.274982, 16.885519, 15.439671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.125991, 16.858244, 15.625837>,  <5.877674, 16.812786, 15.936114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.125991, 16.858244, 15.625837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201690, 0.932981, 0.298105,
		0.757586, -0.341511, 0.556267,
		0.620793, 0.113646, -0.775693,
		6.312230, 16.892338, 15.393129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.594278, 17.005516, 16.247068>,  <5.877674, 16.812786, 15.936114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.594278, 17.005516, 16.247068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.548306, 17.132271, 15.870480>,  <6.520722, 17.208324, 15.644526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.548306, 17.132271, 15.870480>,  <6.594278, 17.005516, 16.247068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.548306, 17.132271, 15.870480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217324, 0.932816, 0.287444,
		0.969310, -0.171568, -0.176077,
		-0.114931, 0.316888, -0.941474,
		6.513826, 17.227337, 15.588037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.177052, 17.396393, 16.144058>,  <6.594278, 17.005516, 16.247068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.177052, 17.396393, 16.144058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.933343, 17.509544, 15.847743>,  <6.787118, 17.577435, 15.669953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.933343, 17.509544, 15.847743>,  <7.177052, 17.396393, 16.144058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.933343, 17.509544, 15.847743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340409, 0.937049, 0.077847,
		0.716177, -0.204742, -0.667211,
		-0.609271, 0.282877, -0.740790,
		6.750562, 17.594408, 15.625506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.627824, 17.612373, 15.503141>,  <7.177052, 17.396393, 16.144058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.627824, 17.612373, 15.503141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.274696, 17.800241, 15.505686>,  <7.062819, 17.912962, 15.507213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.274696, 17.800241, 15.505686>,  <7.627824, 17.612373, 15.503141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.274696, 17.800241, 15.505686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468816, 0.881891, -0.049800,
		-0.029000, -0.040982, -0.998739,
		-0.882820, 0.469669, 0.006361,
		7.009851, 17.941143, 15.507594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.774568, 18.193752, 15.197120>,  <7.627824, 17.612373, 15.503141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.774568, 18.193752, 15.197120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.415794, 18.297100, 15.340649>,  <7.200530, 18.359110, 15.426766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.415794, 18.297100, 15.340649>,  <7.774568, 18.193752, 15.197120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.415794, 18.297100, 15.340649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261378, 0.964364, -0.041039,
		-0.356639, 0.056979, -0.932503,
		-0.896934, 0.258372, 0.358823,
		7.146714, 18.374611, 15.448296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.539559, 18.819263, 14.804702>,  <7.774568, 18.193752, 15.197120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.539559, 18.819263, 14.804702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.309251, 18.813026, 15.131687>,  <7.171067, 18.809284, 15.327878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.309251, 18.813026, 15.131687>,  <7.539559, 18.819263, 14.804702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.309251, 18.813026, 15.131687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351040, 0.898262, 0.264381,
		-0.738418, 0.439184, -0.511718,
		-0.575769, -0.015590, 0.817464,
		7.136520, 18.808350, 15.376926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.116018, 19.380638, 14.770599>,  <7.539559, 18.819263, 14.804702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.116018, 19.380638, 14.770599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.115615, 19.287487, 15.159601>,  <7.115373, 19.231596, 15.393003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.115615, 19.287487, 15.159601>,  <7.116018, 19.380638, 14.770599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.115615, 19.287487, 15.159601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289180, 0.930888, 0.223212,
		-0.957274, 0.281454, 0.066404,
		-0.001009, -0.232878, 0.972506,
		7.115312, 19.217623, 15.451353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.719330, 19.977863, 15.133347>,  <7.116018, 19.380638, 14.770599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.719330, 19.977863, 15.133347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.929892, 19.774326, 15.405810>,  <7.056228, 19.652203, 15.569288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.929892, 19.774326, 15.405810>,  <6.719330, 19.977863, 15.133347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.929892, 19.774326, 15.405810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220264, 0.855406, 0.468791,
		-0.821209, -0.096739, 0.562368,
		0.526403, -0.508845, 0.681158,
		7.087812, 19.621674, 15.610158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.445086, 20.286810, 15.701573>,  <6.719330, 19.977863, 15.133347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.445086, 20.286810, 15.701573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.782434, 20.106033, 15.817832>,  <6.984843, 19.997568, 15.887587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.782434, 20.106033, 15.817832>,  <6.445086, 20.286810, 15.701573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.782434, 20.106033, 15.817832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209884, 0.775009, 0.596079,
		-0.494646, -0.441714, 0.748475,
		0.843371, -0.451941, 0.290646,
		7.035445, 19.970451, 15.905025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.491015, 20.251831, 16.478792>,  <6.445086, 20.286810, 15.701573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.491015, 20.251831, 16.478792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.857899, 20.250711, 16.319433>,  <7.078030, 20.250040, 16.223818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.857899, 20.250711, 16.319433>,  <6.491015, 20.251831, 16.478792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.857899, 20.250711, 16.319433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282199, 0.710440, 0.644701,
		0.281232, -0.703752, 0.652412,
		0.917210, -0.002799, -0.398396,
		7.133062, 20.249872, 16.199915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.829459, 20.287498, 17.007984>,  <6.491015, 20.251831, 16.478792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.829459, 20.287498, 17.007984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.137658, 20.373819, 16.768064>,  <7.322577, 20.425611, 16.624113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.137658, 20.373819, 16.768064>,  <6.829459, 20.287498, 17.007984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.137658, 20.373819, 16.768064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357777, 0.632355, 0.687112,
		0.527567, -0.744014, 0.410020,
		0.770499, 0.215802, -0.599801,
		7.368808, 20.438560, 16.588123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.315818, 20.448267, 17.479656>,  <6.829459, 20.287498, 17.007984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.315818, 20.448267, 17.479656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.454447, 20.609430, 17.140823>,  <7.537625, 20.706129, 16.937523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.454447, 20.609430, 17.140823>,  <7.315818, 20.448267, 17.479656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.454447, 20.609430, 17.140823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565816, 0.630471, 0.531375,
		0.748157, -0.663454, -0.009468,
		0.346574, 0.402909, -0.847084,
		7.558419, 20.730303, 16.886698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.040560, 20.477518, 17.502571>,  <7.315818, 20.448267, 17.479656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.040560, 20.477518, 17.502571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.935310, 20.758228, 17.237762>,  <7.872160, 20.926655, 17.078876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.935310, 20.758228, 17.237762>,  <8.040560, 20.477518, 17.502571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.935310, 20.758228, 17.237762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534114, 0.677411, 0.505802,
		0.803423, -0.220508, -0.553072,
		-0.263124, 0.701777, -0.662024,
		7.856373, 20.968761, 17.039156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.580843, 20.880362, 17.562168>,  <8.040560, 20.477518, 17.502571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.580843, 20.880362, 17.562168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.329327, 21.121088, 17.365217>,  <8.178417, 21.265524, 17.247046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.329327, 21.121088, 17.365217>,  <8.580843, 20.880362, 17.562168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.329327, 21.121088, 17.365217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522279, 0.796002, 0.305951,
		0.576061, -0.064780, -0.814835,
		-0.628791, 0.601818, -0.492379,
		8.140690, 21.301634, 17.217503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.973595, 21.408663, 17.335651>,  <8.580843, 20.880362, 17.562168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.973595, 21.408663, 17.335651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.600993, 21.553652, 17.323566>,  <8.377432, 21.640646, 17.316315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.600993, 21.553652, 17.323566>,  <8.973595, 21.408663, 17.335651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.600993, 21.553652, 17.323566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303789, 0.820991, 0.483411,
		0.200030, 0.441121, -0.874872,
		-0.931504, 0.362473, -0.030215,
		8.321542, 21.662394, 17.314503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.040990, 22.182507, 17.200300>,  <8.973595, 21.408663, 17.335651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.040990, 22.182507, 17.200300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.684261, 22.137695, 17.375618>,  <8.470224, 22.110809, 17.480808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.684261, 22.137695, 17.375618>,  <9.040990, 22.182507, 17.200300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.684261, 22.137695, 17.375618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204724, 0.764022, 0.611848,
		-0.403412, 0.635389, -0.658437,
		-0.891822, -0.112029, 0.438296,
		8.416715, 22.104086, 17.507107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.868009, 22.849562, 17.252363>,  <9.040990, 22.182507, 17.200300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.868009, 22.849562, 17.252363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.609167, 22.653690, 17.486105>,  <8.453862, 22.536167, 17.626350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.609167, 22.653690, 17.486105>,  <8.868009, 22.849562, 17.252363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.609167, 22.653690, 17.486105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034717, 0.746745, 0.664204,
		-0.761610, 0.450097, -0.466222,
		-0.647105, -0.489678, 0.584355,
		8.415035, 22.506786, 17.661411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.268896, 23.288666, 17.351383>,  <8.868009, 22.849562, 17.252363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.268896, 23.288666, 17.351383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.312290, 23.046240, 17.666576>,  <8.338326, 22.900784, 17.855692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.312290, 23.046240, 17.666576>,  <8.268896, 23.288666, 17.351383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.312290, 23.046240, 17.666576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025334, 0.794089, 0.607274,
		-0.993775, -0.045917, 0.101501,
		0.108485, -0.606065, 0.787982,
		8.344835, 22.864420, 17.902971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.033769, 23.766647, 17.782343>,  <8.268896, 23.288666, 17.351383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.033769, 23.766647, 17.782343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.198422, 23.473917, 17.999594>,  <8.297215, 23.298279, 18.129944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.198422, 23.473917, 17.999594>,  <8.033769, 23.766647, 17.782343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.198422, 23.473917, 17.999594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051029, 0.613534, 0.788018,
		-0.909920, -0.296659, 0.289896,
		0.411633, -0.731826, 0.543128,
		8.321913, 23.254370, 18.162533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.311995, 17.029842, 27.348330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.912605, 17.008331, 27.343281>,  <18.672972, 16.995424, 27.340252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.912605, 17.008331, 27.343281>,  <19.311995, 17.029842, 27.348330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912605, 17.008331, 27.343281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038097, 0.504956, 0.862304,
		-0.039998, 0.861468, -0.506234,
		-0.998473, -0.053777, -0.012623,
		18.613064, 16.992199, 27.339495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052429, 17.736458, 27.474234>,  <19.311995, 17.029842, 27.348330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052429, 17.736458, 27.474234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.750237, 17.486660, 27.553486>,  <18.568922, 17.336781, 27.601038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.750237, 17.486660, 27.553486>,  <19.052429, 17.736458, 27.474234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750237, 17.486660, 27.553486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316277, 0.612466, 0.724468,
		-0.573775, 0.484657, -0.660219,
		-0.755481, -0.624494, 0.198132,
		18.523592, 17.299313, 27.612925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421343, 18.066156, 27.639919>,  <19.052429, 17.736458, 27.474234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421343, 18.066156, 27.639919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.366087, 17.715536, 27.824341>,  <18.332933, 17.505163, 27.934994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.366087, 17.715536, 27.824341>,  <18.421343, 18.066156, 27.639919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366087, 17.715536, 27.824341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615853, 0.440601, 0.653143,
		-0.775656, -0.193716, -0.600694,
		-0.138142, -0.876553, 0.461055,
		18.324644, 17.452570, 27.962658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780357, 17.880423, 27.583296>,  <18.421343, 18.066156, 27.639919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780357, 17.880423, 27.583296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.878569, 17.657358, 27.900467>,  <17.937496, 17.523520, 28.090769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.878569, 17.657358, 27.900467>,  <17.780357, 17.880423, 27.583296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.878569, 17.657358, 27.900467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719552, 0.443273, 0.534559,
		-0.649585, -0.701801, -0.292429,
		0.245528, -0.557660, 0.792926,
		17.952227, 17.490061, 28.138344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086033, 17.761101, 27.868969>,  <17.780357, 17.880423, 27.583296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086033, 17.761101, 27.868969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.351353, 17.651213, 28.147409>,  <17.510546, 17.585279, 28.314474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.351353, 17.651213, 28.147409>,  <17.086033, 17.761101, 27.868969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351353, 17.651213, 28.147409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632926, 0.290371, 0.717698,
		-0.399294, -0.916631, 0.018725,
		0.663302, -0.274721, 0.696103,
		17.550343, 17.568796, 28.356241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731726, 17.590118, 28.515659>,  <17.086033, 17.761101, 27.868969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731726, 17.590118, 28.515659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.094337, 17.658419, 28.670086>,  <17.311905, 17.699398, 28.762741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.094337, 17.658419, 28.670086>,  <16.731726, 17.590118, 28.515659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094337, 17.658419, 28.670086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422013, 0.344136, 0.838735,
		0.010356, -0.923263, 0.384028,
		0.906530, 0.170751, 0.386065,
		17.366297, 17.709644, 28.785906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688238, 17.384325, 29.140600>,  <16.731726, 17.590118, 28.515659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688238, 17.384325, 29.140600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.998724, 17.635929, 29.157742>,  <17.185015, 17.786892, 29.168026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.998724, 17.635929, 29.157742>,  <16.688238, 17.384325, 29.140600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998724, 17.635929, 29.157742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363180, 0.390545, 0.845917,
		0.515355, -0.672176, 0.531590,
		0.776215, 0.629010, 0.042852,
		17.231588, 17.824633, 29.170597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846096, 17.406160, 29.829588>,  <16.688238, 17.384325, 29.140600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846096, 17.406160, 29.829588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.031048, 17.726030, 29.676371>,  <17.142019, 17.917953, 29.584440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.031048, 17.726030, 29.676371>,  <16.846096, 17.406160, 29.829588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031048, 17.726030, 29.676371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251506, 0.532538, 0.808176,
		0.850266, -0.277344, 0.447357,
		0.462377, 0.799677, -0.383045,
		17.169762, 17.965933, 29.561457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354252, 17.717209, 30.358768>,  <16.846096, 17.406160, 29.829588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.354252, 17.717209, 30.358768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.245428, 17.995295, 30.092636>,  <17.180134, 18.162146, 29.932957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.245428, 17.995295, 30.092636>,  <17.354252, 17.717209, 30.358768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245428, 17.995295, 30.092636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392817, 0.550942, 0.736314,
		0.878453, 0.461673, 0.123203,
		-0.272059, 0.695213, -0.665329,
		17.163811, 18.203859, 29.893038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610054, 18.282410, 30.663027>,  <17.354252, 17.717209, 30.358768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610054, 18.282410, 30.663027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.342548, 18.402491, 30.390959>,  <17.182045, 18.474539, 30.227718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.342548, 18.402491, 30.390959>,  <17.610054, 18.282410, 30.663027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342548, 18.402491, 30.390959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491248, 0.508276, 0.707341,
		0.558059, 0.807177, -0.192444,
		-0.668764, 0.300200, -0.680172,
		17.141918, 18.492550, 30.186907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329796, 18.844414, 31.047850>,  <17.610054, 18.282410, 30.663027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329796, 18.844414, 31.047850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.070408, 18.770466, 30.752470>,  <16.914774, 18.726097, 30.575243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.070408, 18.770466, 30.752470>,  <17.329796, 18.844414, 31.047850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070408, 18.770466, 30.752470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750593, 0.316951, 0.579786,
		0.126867, 0.930250, -0.344297,
		-0.648471, -0.184871, -0.738450,
		16.875866, 18.715004, 30.530935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973143, 19.508629, 30.915611>,  <17.329796, 18.844414, 31.047850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973143, 19.508629, 30.915611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.753677, 19.191700, 30.808878>,  <16.621998, 19.001543, 30.744839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.753677, 19.191700, 30.808878>,  <16.973143, 19.508629, 30.915611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753677, 19.191700, 30.808878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794447, 0.394675, 0.461612,
		-0.260432, 0.465253, -0.845999,
		-0.548661, -0.792320, -0.266833,
		16.589079, 18.954004, 30.728828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281927, 19.578596, 30.530239>,  <16.973143, 19.508629, 30.915611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281927, 19.578596, 30.530239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.298578, 19.279667, 30.795502>,  <16.308569, 19.100309, 30.954660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.298578, 19.279667, 30.795502>,  <16.281927, 19.578596, 30.530239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298578, 19.279667, 30.795502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682979, 0.463164, 0.564817,
		-0.729251, -0.476434, -0.491125,
		0.041626, -0.747321, 0.663158,
		16.311066, 19.055471, 30.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694262, 19.666468, 30.850939>,  <16.281927, 19.578596, 30.530239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694262, 19.666468, 30.850939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.852387, 19.386021, 31.088312>,  <15.947263, 19.217752, 31.230736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.852387, 19.386021, 31.088312>,  <15.694262, 19.666468, 30.850939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852387, 19.386021, 31.088312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572074, 0.317538, 0.756241,
		-0.718650, -0.638441, -0.275563,
		0.395313, -0.701116, 0.593434,
		15.970982, 19.175686, 31.266342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486805, 20.212523, 31.325262>,  <15.694262, 19.666468, 30.850939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486805, 20.212523, 31.325262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.274388, 20.545723, 31.387367>,  <15.146938, 20.745644, 31.424631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.274388, 20.545723, 31.387367>,  <15.486805, 20.212523, 31.325262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274388, 20.545723, 31.387367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268715, 0.008222, -0.963185,
		-0.803609, -0.553213, 0.219473,
		-0.531041, 0.833000, 0.155264,
		15.115076, 20.795622, 31.433947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.836326, 20.154659, 30.851793>,  <15.486805, 20.212523, 31.325262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.836326, 20.154659, 30.851793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.883430, 20.534582, 30.967722>,  <14.911692, 20.762537, 31.037279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.883430, 20.534582, 30.967722>,  <14.836326, 20.154659, 30.851793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883430, 20.534582, 30.967722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316948, 0.312536, -0.895469,
		-0.941104, 0.013591, 0.337844,
		0.117759, 0.949809, 0.289821,
		14.918757, 20.819525, 31.054668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248982, 20.416101, 30.661308>,  <14.836326, 20.154659, 30.851793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248982, 20.416101, 30.661308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.501519, 20.724136, 30.697903>,  <14.653041, 20.908958, 30.719860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.501519, 20.724136, 30.697903>,  <14.248982, 20.416101, 30.661308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.501519, 20.724136, 30.697903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291283, 0.344810, -0.892334,
		-0.718722, 0.536720, 0.442007,
		0.631342, 0.770089, 0.091486,
		14.690922, 20.955164, 30.725348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926304, 20.912176, 30.423239>,  <14.248982, 20.416101, 30.661308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926304, 20.912176, 30.423239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.312907, 21.001392, 30.372463>,  <14.544869, 21.054922, 30.341999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.312907, 21.001392, 30.372463>,  <13.926304, 20.912176, 30.423239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.312907, 21.001392, 30.372463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135987, 0.025630, -0.990379,
		-0.217643, 0.974472, 0.055102,
		0.966509, 0.223042, -0.126937,
		14.602859, 21.068304, 30.334381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893915, 21.453005, 29.897411>,  <13.926304, 20.912176, 30.423239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893915, 21.453005, 29.897411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.262984, 21.298843, 29.902178>,  <14.484426, 21.206347, 29.905037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.262984, 21.298843, 29.902178>,  <13.893915, 21.453005, 29.897411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262984, 21.298843, 29.902178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032225, -0.107871, -0.993643,
		0.384237, 0.916422, -0.111949,
		0.922672, -0.385402, 0.011917,
		14.539785, 21.183222, 29.905752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194571, 21.918907, 29.303965>,  <13.893915, 21.453005, 29.897411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194571, 21.918907, 29.303965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.455352, 21.619242, 29.350807>,  <14.611820, 21.439442, 29.378914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.455352, 21.619242, 29.350807>,  <14.194571, 21.918907, 29.303965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455352, 21.619242, 29.350807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103858, -0.064762, -0.992481,
		0.751115, 0.659211, 0.035585,
		0.651951, -0.749164, 0.117108,
		14.650937, 21.394493, 29.385941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718053, 22.049135, 28.837839>,  <14.194571, 21.918907, 29.303965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718053, 22.049135, 28.837839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.751167, 21.654718, 28.895622>,  <14.771036, 21.418068, 28.930292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.751167, 21.654718, 28.895622>,  <14.718053, 22.049135, 28.837839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751167, 21.654718, 28.895622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194421, -0.126189, -0.972768,
		0.977418, 0.108618, 0.181261,
		0.082787, -0.986042, 0.144457,
		14.776003, 21.358906, 28.938959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280222, 21.852001, 28.427738>,  <14.718053, 22.049135, 28.837839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.280222, 21.852001, 28.427738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.086511, 21.511280, 28.507645>,  <14.970284, 21.306847, 28.555590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.086511, 21.511280, 28.507645>,  <15.280222, 21.852001, 28.427738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.086511, 21.511280, 28.507645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077811, -0.269356, -0.959892,
		0.871447, -0.449311, 0.196723,
		-0.484278, -0.851802, 0.199768,
		14.941227, 21.255739, 28.567575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692420, 21.389181, 28.100130>,  <15.280222, 21.852001, 28.427738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692420, 21.389181, 28.100130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.323099, 21.237234, 28.122810>,  <15.101506, 21.146067, 28.136417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.323099, 21.237234, 28.122810>,  <15.692420, 21.389181, 28.100130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323099, 21.237234, 28.122810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086079, -0.348532, -0.933336,
		0.374304, -0.856871, 0.354498,
		-0.923302, -0.379866, 0.056699,
		15.046108, 21.123274, 28.139820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714279, 20.701517, 27.759872>,  <15.692420, 21.389181, 28.100130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714279, 20.701517, 27.759872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.330873, 20.815531, 27.759729>,  <15.100828, 20.883940, 27.759644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.330873, 20.815531, 27.759729>,  <15.714279, 20.701517, 27.759872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330873, 20.815531, 27.759729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127015, -0.428245, -0.894692,
		-0.255172, -0.857532, 0.446684,
		-0.958517, 0.285036, -0.000356,
		15.043318, 20.901041, 27.759623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330981, 20.050125, 27.648453>,  <15.714279, 20.701517, 27.759872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330981, 20.050125, 27.648453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.105545, 20.362837, 27.541731>,  <14.970284, 20.550465, 27.477697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.105545, 20.362837, 27.541731>,  <15.330981, 20.050125, 27.648453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105545, 20.362837, 27.541731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164058, -0.422485, -0.891398,
		-0.809600, -0.458611, 0.366365,
		-0.563589, 0.781781, -0.266805,
		14.936468, 20.597372, 27.461689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.758328, 19.726479, 27.334049>,  <15.330981, 20.050125, 27.648453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.758328, 19.726479, 27.334049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.775701, 20.100573, 27.193506>,  <14.786123, 20.325029, 27.109180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.775701, 20.100573, 27.193506>,  <14.758328, 19.726479, 27.334049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.775701, 20.100573, 27.193506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001217, -0.351640, -0.936134,
		-0.999056, 0.041084, -0.014133,
		0.043430, 0.935233, -0.351358,
		14.788730, 20.381142, 27.088099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493111, 19.595276, 26.670479>,  <14.758328, 19.726479, 27.334049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493111, 19.595276, 26.670479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.649534, 19.963356, 26.663494>,  <14.743388, 20.184204, 26.659304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.649534, 19.963356, 26.663494>,  <14.493111, 19.595276, 26.670479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649534, 19.963356, 26.663494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218151, -0.111107, -0.969570,
		-0.894138, 0.375349, -0.244192,
		0.391058, 0.920200, -0.017462,
		14.766851, 20.239416, 26.658255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012631, 20.062330, 26.295839>,  <14.493111, 19.595276, 26.670479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.012631, 20.062330, 26.295839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.396344, 20.175310, 26.296255>,  <14.626572, 20.243099, 26.296505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.396344, 20.175310, 26.296255>,  <14.012631, 20.062330, 26.295839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396344, 20.175310, 26.296255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068483, -0.229018, -0.971010,
		-0.274026, 0.931543, -0.239036,
		0.959281, 0.282452, 0.001038,
		14.684129, 20.260046, 26.296566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378812, 20.452793, 25.984381>,  <14.012631, 20.062330, 26.295839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378812, 20.452793, 25.984381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.107343, 20.159092, 25.990974>,  <12.944461, 19.982870, 25.994930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.107343, 20.159092, 25.990974>,  <13.378812, 20.452793, 25.984381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107343, 20.159092, 25.990974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067737, 0.084929, 0.994082,
		-0.731310, 0.673540, -0.107376,
		-0.678673, -0.734255, 0.016486,
		12.903741, 19.938816, 25.995920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758574, 20.709776, 26.263924>,  <13.378812, 20.452793, 25.984381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758574, 20.709776, 26.263924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.734040, 20.315660, 26.327732>,  <12.719320, 20.079191, 26.366016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.734040, 20.315660, 26.327732>,  <12.758574, 20.709776, 26.263924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734040, 20.315660, 26.327732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365623, 0.170889, 0.914941,
		-0.928740, -0.002207, -0.370725,
		-0.061333, -0.985288, 0.159519,
		12.715640, 20.020075, 26.375587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129170, 20.628283, 26.546082>,  <12.758574, 20.709776, 26.263924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129170, 20.628283, 26.546082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.303509, 20.289162, 26.666927>,  <12.408112, 20.085690, 26.739435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.303509, 20.289162, 26.666927>,  <12.129170, 20.628283, 26.546082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303509, 20.289162, 26.666927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207659, 0.231892, 0.950318,
		-0.875738, -0.476928, -0.074984,
		0.435845, -0.847801, 0.302115,
		12.434262, 20.034822, 26.757563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.673727, 20.344242, 26.940172>,  <12.129170, 20.628283, 26.546082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.673727, 20.344242, 26.940172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.024617, 20.173115, 27.027300>,  <12.235151, 20.070438, 27.079576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.024617, 20.173115, 27.027300>,  <11.673727, 20.344242, 26.940172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024617, 20.173115, 27.027300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156607, 0.173885, 0.972234,
		-0.453817, -0.886980, 0.085537,
		0.877226, -0.427820, 0.217819,
		12.287785, 20.044769, 27.092646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.494527, 19.754835, 27.366913>,  <11.673727, 20.344242, 26.940172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.494527, 19.754835, 27.366913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.866913, 19.887316, 27.428371>,  <12.090344, 19.966805, 27.465246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.866913, 19.887316, 27.428371>,  <11.494527, 19.754835, 27.366913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.866913, 19.887316, 27.428371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215710, 0.159429, 0.963355,
		0.294571, -0.929993, 0.219866,
		0.930966, 0.331203, 0.153646,
		12.146203, 19.986677, 27.474464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721547, 19.366175, 27.993835>,  <11.494527, 19.754835, 27.366913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.721547, 19.366175, 27.993835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.015631, 19.635614, 27.963543>,  <12.192080, 19.797277, 27.945368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.015631, 19.635614, 27.963543>,  <11.721547, 19.366175, 27.993835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015631, 19.635614, 27.963543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002693, 0.108820, 0.994058,
		0.677836, -0.731043, 0.078192,
		0.735208, 0.673598, -0.075731,
		12.236194, 19.837694, 27.940825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.190335, 19.065386, 28.385281>,  <11.721547, 19.366175, 27.993835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.190335, 19.065386, 28.385281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.249807, 19.460939, 28.384581>,  <12.285491, 19.698271, 28.384161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.249807, 19.460939, 28.384581>,  <12.190335, 19.065386, 28.385281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.249807, 19.460939, 28.384581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138880, -0.019127, 0.990125,
		0.979085, -0.147455, -0.140180,
		0.148680, 0.988884, -0.001751,
		12.294412, 19.757605, 28.384056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.425774, 18.488926, 28.687548>,  <12.190335, 19.065386, 28.385281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.425774, 18.488926, 28.687548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.086682, 18.308781, 28.799639>,  <11.883227, 18.200693, 28.866894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.086682, 18.308781, 28.799639>,  <12.425774, 18.488926, 28.687548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.086682, 18.308781, 28.799639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079554, -0.414376, -0.906622,
		0.524430, -0.790863, 0.315450,
		-0.847729, -0.450364, 0.280227,
		11.832363, 18.173672, 28.883707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.470306, 17.879175, 28.467033>,  <12.425774, 18.488926, 28.687548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.470306, 17.879175, 28.467033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.074743, 17.871538, 28.525953>,  <11.837405, 17.866957, 28.561306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.074743, 17.871538, 28.525953>,  <12.470306, 17.879175, 28.467033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074743, 17.871538, 28.525953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115539, -0.524329, -0.843641,
		0.093340, -0.851301, 0.516308,
		-0.988908, -0.019092, 0.147299,
		11.778070, 17.865810, 28.570143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.161900, 17.142559, 28.388580>,  <12.470306, 17.879175, 28.467033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.161900, 17.142559, 28.388580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.860782, 17.392820, 28.306744>,  <11.680111, 17.542976, 28.257641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.860782, 17.392820, 28.306744>,  <12.161900, 17.142559, 28.388580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.860782, 17.392820, 28.306744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108982, -0.424985, -0.898616,
		-0.649170, -0.654177, 0.388111,
		-0.752795, 0.625652, -0.204594,
		11.634943, 17.580517, 28.245365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757957, 16.794933, 28.015097>,  <12.161900, 17.142559, 28.388580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757957, 16.794933, 28.015097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.609761, 17.156372, 27.929073>,  <11.520844, 17.373236, 27.877459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.609761, 17.156372, 27.929073>,  <11.757957, 16.794933, 28.015097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.609761, 17.156372, 27.929073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081324, -0.262202, -0.961580,
		-0.925269, -0.338767, 0.170627,
		-0.370490, 0.903597, -0.215058,
		11.498614, 17.427450, 27.864555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.099184, 16.786627, 27.671194>,  <11.757957, 16.794933, 28.015097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.099184, 16.786627, 27.671194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.271626, 17.132351, 27.567564>,  <11.375091, 17.339785, 27.505386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.271626, 17.132351, 27.567564>,  <11.099184, 16.786627, 27.671194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.271626, 17.132351, 27.567564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126825, -0.226231, -0.965782,
		-0.893345, 0.449209, 0.012086,
		0.431104, 0.864309, -0.259073,
		11.400957, 17.391644, 27.489841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710581, 16.990057, 27.079861>,  <11.099184, 16.786627, 27.671194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710581, 16.990057, 27.079861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.022271, 17.240530, 27.090467>,  <11.209286, 17.390814, 27.096832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.022271, 17.240530, 27.090467>,  <10.710581, 16.990057, 27.079861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.022271, 17.240530, 27.090467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042460, 0.094957, -0.994576,
		-0.625304, 0.773873, 0.100581,
		0.779226, 0.626182, 0.026519,
		11.256039, 17.428385, 27.098423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.531136, 17.472336, 26.556309>,  <10.710581, 16.990057, 27.079861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.531136, 17.472336, 26.556309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.927492, 17.517998, 26.584875>,  <11.165306, 17.545395, 26.602015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.927492, 17.517998, 26.584875>,  <10.531136, 17.472336, 26.556309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.927492, 17.517998, 26.584875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064781, 0.060828, -0.996044,
		-0.118049, 0.991599, 0.052879,
		0.990892, 0.114157, 0.071418,
		11.224760, 17.552244, 26.606300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<13.556399, 17.759956, 30.768574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.490513, 17.366447, 30.740122>,  <13.450981, 17.130342, 30.723051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.490513, 17.366447, 30.740122>,  <13.556399, 17.759956, 30.768574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.490513, 17.366447, 30.740122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554891, 0.152044, -0.817911,
		0.815454, -0.095253, -0.570930,
		-0.164715, -0.983773, -0.071130,
		13.441098, 17.071316, 30.718782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.322108, 18.103743, 30.125944>,  <13.556399, 17.759956, 30.768574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.322108, 18.103743, 30.125944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.646491, 18.095478, 30.359840>,  <13.841121, 18.090519, 30.500179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.646491, 18.095478, 30.359840>,  <13.322108, 18.103743, 30.125944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646491, 18.095478, 30.359840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570708, -0.192409, -0.798293,
		0.129005, 0.981097, -0.144242,
		0.810956, -0.020663, 0.584742,
		13.889778, 18.089279, 30.535263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872971, 18.540998, 29.972519>,  <13.322108, 18.103743, 30.125944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872971, 18.540998, 29.972519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.024484, 18.208784, 30.135849>,  <14.115392, 18.009455, 30.233847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.024484, 18.208784, 30.135849>,  <13.872971, 18.540998, 29.972519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.024484, 18.208784, 30.135849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492142, -0.192891, -0.848875,
		0.783786, 0.522493, 0.335679,
		0.378782, -0.830538, 0.408326,
		14.138119, 17.959623, 30.258347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550646, 18.590317, 29.684492>,  <13.872971, 18.540998, 29.972519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550646, 18.590317, 29.684492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.419688, 18.221891, 29.768833>,  <14.341114, 18.000837, 29.819439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.419688, 18.221891, 29.768833>,  <14.550646, 18.590317, 29.684492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.419688, 18.221891, 29.768833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314391, -0.316624, -0.894934,
		0.891051, -0.226704, 0.393234,
		-0.327393, -0.921061, 0.210855,
		14.321470, 17.945574, 29.832090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082381, 18.095926, 29.368626>,  <14.550646, 18.590317, 29.684492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082381, 18.095926, 29.368626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.777670, 17.842659, 29.423458>,  <14.594843, 17.690699, 29.456358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.777670, 17.842659, 29.423458>,  <15.082381, 18.095926, 29.368626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.777670, 17.842659, 29.423458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110304, -0.335275, -0.935641,
		0.638379, -0.697629, 0.325246,
		-0.761778, -0.633170, 0.137081,
		14.549136, 17.652708, 29.464582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296322, 17.406490, 29.291512>,  <15.082381, 18.095926, 29.368626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296322, 17.406490, 29.291512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.904130, 17.388851, 29.214865>,  <14.668815, 17.378267, 29.168877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.904130, 17.388851, 29.214865>,  <15.296322, 17.406490, 29.291512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904130, 17.388851, 29.214865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191193, -0.441266, -0.876772,
		-0.045890, -0.896292, 0.441083,
		-0.980479, -0.044097, -0.191615,
		14.609986, 17.375622, 29.157381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182684, 16.721449, 29.319782>,  <15.296322, 17.406490, 29.291512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182684, 16.721449, 29.319782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.884069, 16.891384, 29.114962>,  <14.704901, 16.993345, 28.992069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.884069, 16.891384, 29.114962>,  <15.182684, 16.721449, 29.319782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.884069, 16.891384, 29.114962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195681, -0.595371, -0.779257,
		-0.635920, -0.681942, 0.361333,
		-0.746535, 0.424839, -0.512052,
		14.660109, 17.018835, 28.961346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722485, 16.188530, 29.058096>,  <15.182684, 16.721449, 29.319782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.722485, 16.188530, 29.058096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.640562, 16.486885, 28.804575>,  <14.591409, 16.665897, 28.652462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.640562, 16.486885, 28.804575>,  <14.722485, 16.188530, 29.058096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640562, 16.486885, 28.804575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191303, -0.604539, -0.773263,
		-0.959926, -0.279617, -0.018877,
		-0.204806, 0.745887, -0.633804,
		14.579121, 16.710651, 28.614433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178041, 15.977512, 28.683079>,  <14.722485, 16.188530, 29.058096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178041, 15.977512, 28.683079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.386568, 16.232887, 28.456585>,  <14.511684, 16.386112, 28.320688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.386568, 16.232887, 28.456585>,  <14.178041, 15.977512, 28.683079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386568, 16.232887, 28.456585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101314, -0.705147, -0.701785,
		-0.847326, 0.308486, -0.432289,
		0.521319, 0.638438, -0.566236,
		14.542964, 16.424419, 28.286715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010252, 15.793389, 27.989876>,  <14.178041, 15.977512, 28.683079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.010252, 15.793389, 27.989876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.330862, 16.024288, 27.927469>,  <14.523229, 16.162828, 27.890024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.330862, 16.024288, 27.927469>,  <14.010252, 15.793389, 27.989876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.330862, 16.024288, 27.927469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226279, -0.534319, -0.814433,
		-0.553493, 0.617485, -0.558890,
		0.801526, 0.577248, -0.156018,
		14.571320, 16.197462, 27.880663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.988203, 15.892029, 27.286772>,  <14.010252, 15.793389, 27.989876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.988203, 15.892029, 27.286772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.364934, 15.989741, 27.379110>,  <14.590972, 16.048368, 27.434513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.364934, 15.989741, 27.379110>,  <13.988203, 15.892029, 27.286772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.364934, 15.989741, 27.379110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325500, -0.491802, -0.807577,
		-0.083745, 0.835737, -0.542706,
		0.941826, 0.244281, 0.230846,
		14.647482, 16.063026, 27.448364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204278, 16.113403, 26.668720>,  <13.988203, 15.892029, 27.286772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204278, 16.113403, 26.668720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.509363, 16.009426, 26.905600>,  <14.692414, 15.947040, 27.047728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.509363, 16.009426, 26.905600>,  <14.204278, 16.113403, 26.668720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509363, 16.009426, 26.905600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419662, -0.497793, -0.759003,
		0.492090, 0.827425, -0.270585,
		0.762713, -0.259944, 0.592197,
		14.738177, 15.931443, 27.083260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635024, 15.747060, 26.549156>,  <14.204278, 16.113403, 26.668720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635024, 15.747060, 26.549156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.293108, 15.550592, 26.616192>,  <13.087958, 15.432713, 26.656414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.293108, 15.550592, 26.616192>,  <13.635024, 15.747060, 26.549156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293108, 15.550592, 26.616192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003155, 0.318004, 0.948084,
		-0.518963, 0.810942, -0.270277,
		-0.854791, -0.491168, 0.167591,
		13.036671, 15.403242, 26.666470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.290821, 16.107115, 26.929125>,  <13.635024, 15.747060, 26.549156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.290821, 16.107115, 26.929125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.087371, 15.768742, 26.993242>,  <12.965301, 15.565718, 27.031713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.087371, 15.768742, 26.993242>,  <13.290821, 16.107115, 26.929125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087371, 15.768742, 26.993242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014624, 0.177660, 0.983983,
		-0.860863, 0.502824, -0.077992,
		-0.508626, -0.845935, 0.160294,
		12.934783, 15.514961, 27.041330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850235, 16.296595, 27.440815>,  <13.290821, 16.107115, 26.929125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850235, 16.296595, 27.440815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.846023, 15.897075, 27.459934>,  <12.843495, 15.657362, 27.471407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.846023, 15.897075, 27.459934>,  <12.850235, 16.296595, 27.440815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846023, 15.897075, 27.459934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080316, 0.048492, 0.995589,
		-0.996714, 0.006645, -0.080730,
		-0.010531, -0.998801, 0.047799,
		12.842863, 15.597434, 27.474274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.300512, 16.184393, 27.892281>,  <12.850235, 16.296595, 27.440815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.300512, 16.184393, 27.892281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.478762, 15.827535, 27.921940>,  <12.585711, 15.613420, 27.939735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.478762, 15.827535, 27.921940>,  <12.300512, 16.184393, 27.892281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.478762, 15.827535, 27.921940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436941, -0.144461, 0.887814,
		-0.781347, -0.428029, -0.454189,
		0.445623, -0.892144, 0.074149,
		12.612449, 15.559892, 27.944185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.800509, 15.703727, 28.116045>,  <12.300512, 16.184393, 27.892281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.800509, 15.703727, 28.116045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.154505, 15.553372, 28.225958>,  <12.366902, 15.463160, 28.291906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.154505, 15.553372, 28.225958>,  <11.800509, 15.703727, 28.116045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.154505, 15.553372, 28.225958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367631, -0.201936, 0.907783,
		-0.285735, -0.904395, -0.316899,
		0.884988, -0.375887, 0.274784,
		12.420001, 15.440607, 28.308393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.613221, 15.216301, 28.568624>,  <11.800509, 15.703727, 28.116045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.613221, 15.216301, 28.568624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.003890, 15.277991, 28.628393>,  <12.238291, 15.315005, 28.664255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.003890, 15.277991, 28.628393>,  <11.613221, 15.216301, 28.568624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.003890, 15.277991, 28.628393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128024, -0.140464, 0.981774,
		0.172404, -0.978000, -0.117442,
		0.976671, 0.154226, 0.149424,
		12.296891, 15.324259, 28.673220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.816677, 14.615954, 29.080868>,  <11.613221, 15.216301, 28.568624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.816677, 14.615954, 29.080868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.096548, 14.901727, 29.078308>,  <12.264471, 15.073190, 29.076773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.096548, 14.901727, 29.078308>,  <11.816677, 14.615954, 29.080868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096548, 14.901727, 29.078308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089078, 0.096116, 0.991376,
		0.708884, -0.693074, 0.130890,
		0.699678, 0.714430, -0.006398,
		12.306452, 15.116055, 29.076389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309777, 14.426675, 29.701597>,  <11.816677, 14.615954, 29.080868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309777, 14.426675, 29.701597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.361944, 14.815651, 29.624294>,  <12.393245, 15.049037, 29.577911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.361944, 14.815651, 29.624294>,  <12.309777, 14.426675, 29.701597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.361944, 14.815651, 29.624294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033718, 0.199162, 0.979386,
		0.990886, -0.121213, 0.058763,
		0.130418, 0.972441, -0.193260,
		12.401070, 15.107384, 29.566317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847546, 14.654766, 30.053669>,  <12.309777, 14.426675, 29.701597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847546, 14.654766, 30.053669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.663756, 15.005463, 29.996807>,  <12.553483, 15.215880, 29.962690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.663756, 15.005463, 29.996807>,  <12.847546, 14.654766, 30.053669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.663756, 15.005463, 29.996807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240922, 0.277073, 0.930154,
		0.854892, 0.393133, -0.338535,
		-0.459473, 0.876742, -0.142153,
		12.525914, 15.268485, 29.954161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127526, 14.976837, 30.543711>,  <12.847546, 14.654766, 30.053669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.127526, 14.976837, 30.543711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.827120, 15.215089, 30.429728>,  <12.646875, 15.358040, 30.361338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.827120, 15.215089, 30.429728>,  <13.127526, 14.976837, 30.543711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.827120, 15.215089, 30.429728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168982, 0.590578, 0.789090,
		0.638293, 0.544468, -0.544185,
		-0.751017, 0.595628, -0.284957,
		12.601814, 15.393777, 30.344240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.337738, 15.707458, 30.480583>,  <13.127526, 14.976837, 30.543711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.337738, 15.707458, 30.480583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.951555, 15.662314, 30.574526>,  <12.719846, 15.635228, 30.630892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.951555, 15.662314, 30.574526>,  <13.337738, 15.707458, 30.480583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.951555, 15.662314, 30.574526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170697, 0.407056, 0.897312,
		-0.196870, 0.906404, -0.373730,
		-0.965456, -0.112859, 0.234857,
		12.661919, 15.628457, 30.644983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315622, 16.273960, 30.905952>,  <13.337738, 15.707458, 30.480583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315622, 16.273960, 30.905952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.973962, 16.073803, 30.962564>,  <12.768966, 15.953709, 30.996531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.973962, 16.073803, 30.962564>,  <13.315622, 16.273960, 30.905952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.973962, 16.073803, 30.962564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129025, 0.467575, 0.874486,
		-0.503764, 0.728683, -0.463943,
		-0.854152, -0.500395, 0.141529,
		12.717716, 15.923684, 31.005024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805528, 16.673862, 31.278395>,  <13.315622, 16.273960, 30.905952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.805528, 16.673862, 31.278395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.645300, 16.313574, 31.345617>,  <12.549163, 16.097401, 31.385950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.645300, 16.313574, 31.345617>,  <12.805528, 16.673862, 31.278395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.645300, 16.313574, 31.345617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460913, 0.356601, 0.812647,
		-0.791898, 0.248062, -0.557998,
		-0.400569, -0.900722, 0.168056,
		12.525129, 16.043358, 31.396034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066713, 16.838850, 31.309944>,  <12.805528, 16.673862, 31.278395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066713, 16.838850, 31.309944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.116274, 16.487391, 31.494389>,  <12.146010, 16.276514, 31.605055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.116274, 16.487391, 31.494389>,  <12.066713, 16.838850, 31.309944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.116274, 16.487391, 31.494389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114217, 0.448973, 0.886216,
		-0.985699, -0.162470, -0.044728,
		0.123901, -0.878651, 0.461109,
		12.153444, 16.223795, 31.632721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575962, 17.286106, 31.678469>,  <12.066713, 16.838850, 31.309944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575962, 17.286106, 31.678469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483660, 17.674587, 31.654764>,  <11.428278, 17.907677, 31.640541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483660, 17.674587, 31.654764>,  <11.575962, 17.286106, 31.678469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483660, 17.674587, 31.654764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156162, -0.097084, -0.982949,
		-0.960398, -0.217567, 0.174068,
		-0.230756, 0.971205, -0.059264,
		11.414433, 17.965948, 31.636986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.970045, 17.319103, 31.276478>,  <11.575962, 17.286106, 31.678469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.970045, 17.319103, 31.276478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.133440, 17.684200, 31.273912>,  <11.231477, 17.903257, 31.272373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.133440, 17.684200, 31.273912>,  <10.970045, 17.319103, 31.276478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.133440, 17.684200, 31.273912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112139, 0.043212, -0.992753,
		-0.905849, 0.406246, 0.120006,
		0.408488, 0.912741, -0.006413,
		11.255986, 17.958023, 31.271988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613538, 17.683214, 30.779305>,  <10.970045, 17.319103, 31.276478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613538, 17.683214, 30.779305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.936577, 17.912626, 30.834225>,  <11.130401, 18.050274, 30.867176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.936577, 17.912626, 30.834225>,  <10.613538, 17.683214, 30.779305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.936577, 17.912626, 30.834225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070364, 0.137440, -0.988008,
		-0.585521, 0.807574, 0.070640,
		0.807598, 0.573529, 0.137298,
		11.178856, 18.084684, 30.875414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.472740, 18.222101, 30.243904>,  <10.613538, 17.683214, 30.779305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.472740, 18.222101, 30.243904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.860514, 18.179499, 30.332317>,  <11.093178, 18.153936, 30.385365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.860514, 18.179499, 30.332317>,  <10.472740, 18.222101, 30.243904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.860514, 18.179499, 30.332317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240346, 0.231125, -0.942770,
		0.049327, 0.967077, 0.249659,
		0.969433, -0.106509, 0.221032,
		11.151343, 18.147547, 30.398626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785455, 18.785076, 29.852028>,  <10.472740, 18.222101, 30.243904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785455, 18.785076, 29.852028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.093627, 18.541870, 29.928715>,  <11.278530, 18.395947, 29.974728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.093627, 18.541870, 29.928715>,  <10.785455, 18.785076, 29.852028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.093627, 18.541870, 29.928715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355801, 0.160541, -0.920669,
		0.529003, 0.777524, 0.340018,
		0.770430, -0.608015, 0.191717,
		11.324756, 18.359465, 29.986229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.383499, 19.131018, 29.673813>,  <10.785455, 18.785076, 29.852028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.383499, 19.131018, 29.673813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483557, 18.743734, 29.673384>,  <11.543591, 18.511364, 29.673126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483557, 18.743734, 29.673384>,  <11.383499, 19.131018, 29.673813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483557, 18.743734, 29.673384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350538, 0.091598, -0.932059,
		0.902525, 0.232773, 0.362306,
		0.250145, -0.968208, -0.001073,
		11.558600, 18.453272, 29.673061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033223, 19.033648, 29.251183>,  <11.383499, 19.131018, 29.673813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.033223, 19.033648, 29.251183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.872758, 18.669577, 29.292461>,  <11.776479, 18.451134, 29.317228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.872758, 18.669577, 29.292461>,  <12.033223, 19.033648, 29.251183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872758, 18.669577, 29.292461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059080, -0.138134, -0.988650,
		0.914100, -0.390512, 0.109187,
		-0.401162, -0.910176, 0.103197,
		11.752409, 18.396524, 29.323420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740429, 19.260185, 28.904686>,  <12.033223, 19.033648, 29.251183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740429, 19.260185, 28.904686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.550363, 19.601507, 28.818815>,  <12.436323, 19.806301, 28.767294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.550363, 19.601507, 28.818815>,  <12.740429, 19.260185, 28.904686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.550363, 19.601507, 28.818815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182445, 0.334223, 0.924667,
		0.860774, 0.400204, -0.314492,
		-0.475166, 0.853307, -0.214675,
		12.407813, 19.857500, 28.754414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.179916, 19.719810, 29.105635>,  <12.740429, 19.260185, 28.904686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.179916, 19.719810, 29.105635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.822500, 19.899326, 29.110899>,  <12.608050, 20.007036, 29.114058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.822500, 19.899326, 29.110899>,  <13.179916, 19.719810, 29.105635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.822500, 19.899326, 29.110899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190145, 0.351694, 0.916600,
		0.406734, 0.821521, -0.399588,
		-0.893539, 0.448792, 0.013162,
		12.554439, 20.033964, 29.114847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265870, 20.176121, 29.533709>,  <13.179916, 19.719810, 29.105635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265870, 20.176121, 29.533709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.869985, 20.228085, 29.509745>,  <12.632453, 20.259264, 29.495365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.869985, 20.228085, 29.509745>,  <13.265870, 20.176121, 29.533709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.869985, 20.228085, 29.509745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034041, 0.192907, 0.980626,
		0.138952, 0.972579, -0.186500,
		-0.989714, 0.129911, -0.059912,
		12.573071, 20.267057, 29.491772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.090775, 20.928131, 29.735229>,  <13.265870, 20.176121, 29.533709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.090775, 20.928131, 29.735229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.777730, 20.682384, 29.775370>,  <12.589903, 20.534937, 29.799454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.777730, 20.682384, 29.775370>,  <13.090775, 20.928131, 29.735229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.777730, 20.682384, 29.775370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098880, 0.281847, 0.954351,
		-0.614603, 0.736966, -0.281326,
		-0.782615, -0.614364, 0.100352,
		12.542946, 20.498075, 29.805475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.604936, 21.310125, 30.051582>,  <13.090775, 20.928131, 29.735229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.604936, 21.310125, 30.051582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.494966, 20.931120, 30.116863>,  <12.428984, 20.703716, 30.156033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.494966, 20.931120, 30.116863>,  <12.604936, 21.310125, 30.051582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.494966, 20.931120, 30.116863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048101, 0.155978, 0.986588,
		-0.960262, 0.279088, 0.002695,
		-0.274925, -0.947513, 0.163204,
		12.412488, 20.646866, 30.165825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.103115, 21.338850, 30.556616>,  <12.604936, 21.310125, 30.051582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.103115, 21.338850, 30.556616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.207254, 20.954679, 30.596220>,  <12.269738, 20.724178, 30.619984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.207254, 20.954679, 30.596220>,  <12.103115, 21.338850, 30.556616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.207254, 20.954679, 30.596220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107897, 0.130847, 0.985514,
		-0.959467, -0.245895, 0.137693,
		0.260349, -0.960424, 0.099012,
		12.285359, 20.666552, 30.625923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.923602, 21.184202, 31.233486>,  <12.103115, 21.338850, 30.556616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.923602, 21.184202, 31.233486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.170437, 20.875116, 31.174004>,  <12.318538, 20.689665, 31.138315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.170437, 20.875116, 31.174004>,  <11.923602, 21.184202, 31.233486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.170437, 20.875116, 31.174004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193941, -0.033798, 0.980431,
		-0.762621, -0.633851, 0.129006,
		0.617087, -0.772717, -0.148704,
		12.355563, 20.643301, 31.129393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.769659, 20.775829, 31.757534>,  <11.923602, 21.184202, 31.233486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.769659, 20.775829, 31.757534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.137062, 20.711073, 31.613235>,  <12.357504, 20.672218, 31.526657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.137062, 20.711073, 31.613235>,  <11.769659, 20.775829, 31.757534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137062, 20.711073, 31.613235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365518, -0.000321, 0.930804,
		-0.150807, -0.986808, 0.058880,
		0.918506, -0.161893, -0.360744,
		12.412614, 20.662506, 31.505013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.957476, 20.196548, 32.136581>,  <11.769659, 20.775829, 31.757534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.957476, 20.196548, 32.136581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.287001, 20.389721, 32.017849>,  <12.484715, 20.505625, 31.946609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.287001, 20.389721, 32.017849>,  <11.957476, 20.196548, 32.136581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.287001, 20.389721, 32.017849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343556, -0.008857, 0.939090,
		0.450889, -0.875612, -0.173211,
		0.823813, 0.482933, -0.296829,
		12.534144, 20.534601, 31.928801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.828403, 16.650053, 16.622715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216378, 16.711533, 16.698187>,  <14.449163, 16.748421, 16.743469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216378, 16.711533, 16.698187>,  <13.828403, 16.650053, 16.622715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216378, 16.711533, 16.698187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190622, -0.002126, 0.981661,
		0.151284, -0.988115, 0.027237,
		0.969936, 0.153701, 0.188678,
		14.507360, 16.757643, 16.754791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018466, 16.113581, 17.066168>,  <13.828403, 16.650053, 16.622715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018466, 16.113581, 17.066168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262378, 16.427736, 17.108753>,  <14.408725, 16.616230, 17.134304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262378, 16.427736, 17.108753>,  <14.018466, 16.113581, 17.066168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262378, 16.427736, 17.108753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205837, 0.027209, 0.978208,
		0.765376, -0.618405, 0.178254,
		0.609779, 0.785389, 0.106466,
		14.445312, 16.663353, 17.140694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325609, 16.115192, 17.785128>,  <14.018466, 16.113581, 17.066168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325609, 16.115192, 17.785128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440225, 16.479885, 17.667391>,  <14.508994, 16.698702, 17.596748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440225, 16.479885, 17.667391>,  <14.325609, 16.115192, 17.785128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440225, 16.479885, 17.667391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030838, 0.315843, 0.948310,
		0.957573, -0.262649, 0.118617,
		0.286538, 0.911734, -0.294343,
		14.526186, 16.753405, 17.579088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.732909, 16.407505, 18.410986>,  <14.325609, 16.115192, 17.785128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.732909, 16.407505, 18.410986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642338, 16.730492, 18.193094>,  <14.587995, 16.924284, 18.062359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642338, 16.730492, 18.193094>,  <14.732909, 16.407505, 18.410986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642338, 16.730492, 18.193094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125070, 0.530520, 0.838394,
		0.965964, 0.257966, -0.019135,
		-0.226429, 0.807466, -0.544728,
		14.574409, 16.972731, 18.029676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.134102, 17.103981, 18.708996>,  <14.732909, 16.407505, 18.410986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.134102, 17.103981, 18.708996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.808894, 17.200808, 18.497185>,  <14.613770, 17.258904, 18.370098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.808894, 17.200808, 18.497185>,  <15.134102, 17.103981, 18.708996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808894, 17.200808, 18.497185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298858, 0.607023, 0.736347,
		0.499682, 0.756919, -0.421178,
		-0.813020, 0.242067, -0.529530,
		14.564988, 17.273428, 18.338326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067160, 17.794407, 18.890839>,  <15.134102, 17.103981, 18.708996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067160, 17.794407, 18.890839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708802, 17.678776, 18.755898>,  <14.493788, 17.609396, 18.674932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708802, 17.678776, 18.755898>,  <15.067160, 17.794407, 18.890839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708802, 17.678776, 18.755898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441990, 0.656762, 0.610990,
		0.044936, 0.696489, -0.716159,
		-0.895894, -0.289080, -0.337353,
		14.440034, 17.592052, 18.654692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656071, 18.328548, 18.871220>,  <15.067160, 17.794407, 18.890839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656071, 18.328548, 18.871220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377319, 18.041761, 18.878370>,  <14.210069, 17.869690, 18.882662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377319, 18.041761, 18.878370>,  <14.656071, 18.328548, 18.871220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377319, 18.041761, 18.878370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504240, 0.507535, 0.698677,
		-0.510001, 0.477879, -0.715213,
		-0.696879, -0.716966, 0.017878,
		14.168256, 17.826672, 18.883734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.038739, 18.690891, 18.960686>,  <14.656071, 18.328548, 18.871220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.038739, 18.690891, 18.960686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923823, 18.317053, 19.044586>,  <13.854874, 18.092751, 19.094927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923823, 18.317053, 19.044586>,  <14.038739, 18.690891, 18.960686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923823, 18.317053, 19.044586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608454, 0.347191, 0.713612,
		-0.739762, 0.077391, -0.668404,
		-0.287291, -0.934596, 0.209750,
		13.837636, 18.036674, 19.107512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.364802, 18.669535, 19.027121>,  <14.038739, 18.690891, 18.960686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.364802, 18.669535, 19.027121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455560, 18.339687, 19.234398>,  <13.510014, 18.141779, 19.358765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455560, 18.339687, 19.234398>,  <13.364802, 18.669535, 19.027121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455560, 18.339687, 19.234398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745266, 0.195522, 0.637456,
		-0.626976, -0.530826, -0.570197,
		0.226892, -0.824618, 0.518194,
		13.523627, 18.092302, 19.389856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774557, 18.248466, 19.124226>,  <13.364802, 18.669535, 19.027121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774557, 18.248466, 19.124226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017935, 18.139067, 19.422216>,  <13.163961, 18.073427, 19.601011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017935, 18.139067, 19.422216>,  <12.774557, 18.248466, 19.124226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.017935, 18.139067, 19.422216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694623, 0.270444, 0.666603,
		-0.383790, -0.923070, -0.025428,
		0.608444, -0.273499, 0.744979,
		13.200468, 18.057016, 19.645710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340779, 18.117285, 19.557615>,  <12.774557, 18.248466, 19.124226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340779, 18.117285, 19.557615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.675143, 18.110939, 19.777069>,  <12.875762, 18.107132, 19.908741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.675143, 18.110939, 19.777069>,  <12.340779, 18.117285, 19.557615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.675143, 18.110939, 19.777069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520599, 0.293732, 0.801685,
		-0.173870, -0.955756, 0.237275,
		0.835910, -0.015864, 0.548637,
		12.925917, 18.106180, 19.941660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.188169, 17.577343, 20.152056>,  <12.340779, 18.117285, 19.557615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.188169, 17.577343, 20.152056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461946, 17.855862, 20.238510>,  <12.626211, 18.022972, 20.290382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461946, 17.855862, 20.238510>,  <12.188169, 17.577343, 20.152056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.461946, 17.855862, 20.238510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535564, 0.279031, 0.797065,
		0.494686, -0.661296, 0.563892,
		0.684439, 0.696297, 0.216134,
		12.667277, 18.064751, 20.303350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026449, 16.963638, 20.393478>,  <12.188169, 17.577343, 20.152056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026449, 16.963638, 20.393478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.647702, 16.855768, 20.463585>,  <11.420454, 16.791046, 20.505650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.647702, 16.855768, 20.463585>,  <12.026449, 16.963638, 20.393478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.647702, 16.855768, 20.463585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030679, -0.466728, -0.883869,
		0.320160, -0.842283, 0.433656,
		-0.946866, -0.269675, 0.175268,
		11.363642, 16.774866, 20.516165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.978924, 16.204208, 20.164938>,  <12.026449, 16.963638, 20.393478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.978924, 16.204208, 20.164938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.613912, 16.367767, 20.161179>,  <11.394904, 16.465902, 20.158922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.613912, 16.367767, 20.161179>,  <11.978924, 16.204208, 20.164938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.613912, 16.367767, 20.161179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218001, -0.505695, -0.834715,
		-0.346066, -0.759655, 0.550602,
		-0.912532, 0.408898, -0.009398,
		11.340152, 16.490437, 20.158360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519755, 15.637072, 20.118809>,  <11.978924, 16.204208, 20.164938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519755, 15.637072, 20.118809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362790, 15.979447, 19.984121>,  <11.268611, 16.184874, 19.903309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362790, 15.979447, 19.984121>,  <11.519755, 15.637072, 20.118809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.362790, 15.979447, 19.984121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297050, -0.464401, -0.834322,
		-0.870502, -0.227377, 0.436493,
		-0.392413, 0.855939, -0.336719,
		11.245066, 16.236229, 19.883106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.831841, 15.459031, 19.829048>,  <11.519755, 15.637072, 20.118809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.831841, 15.459031, 19.829048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935079, 15.802514, 19.651957>,  <10.997022, 16.008604, 19.545702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935079, 15.802514, 19.651957>,  <10.831841, 15.459031, 19.829048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.935079, 15.802514, 19.651957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310071, -0.360385, -0.879760,
		-0.915010, 0.364339, 0.173247,
		0.258095, 0.858708, -0.442727,
		11.012507, 16.060127, 19.519138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.343331, 15.507462, 19.369892>,  <10.831841, 15.459031, 19.829048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.343331, 15.507462, 19.369892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.624206, 15.756409, 19.231562>,  <10.792730, 15.905777, 19.148563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.624206, 15.756409, 19.231562>,  <10.343331, 15.507462, 19.369892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.624206, 15.756409, 19.231562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023145, -0.505411, -0.862568,
		-0.711618, 0.597678, -0.369297,
		0.702185, 0.622367, -0.345827,
		10.834861, 15.943119, 19.127813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.139544, 15.707211, 18.725172>,  <10.343331, 15.507462, 19.369892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.139544, 15.707211, 18.725172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.534958, 15.767563, 18.727575>,  <10.772206, 15.803775, 18.729017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.534958, 15.767563, 18.727575>,  <10.139544, 15.707211, 18.725172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.534958, 15.767563, 18.727575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072623, -0.440173, -0.894971,
		-0.132391, 0.885145, -0.446084,
		0.988534, 0.150882, 0.006007,
		10.831518, 15.812827, 18.729378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.236065, 15.914954, 18.144346>,  <10.139544, 15.707211, 18.725172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.236065, 15.914954, 18.144346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612109, 15.811313, 18.232939>,  <10.837736, 15.749127, 18.286095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612109, 15.811313, 18.232939>,  <10.236065, 15.914954, 18.144346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.612109, 15.811313, 18.232939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104631, -0.399045, -0.910942,
		0.324410, 0.879561, -0.348037,
		0.940112, -0.259104, 0.221483,
		10.894143, 15.733582, 18.299383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.582784, 16.038229, 17.507000>,  <10.236065, 15.914954, 18.144346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.582784, 16.038229, 17.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.813189, 15.803134, 17.734255>,  <10.951431, 15.662077, 17.870607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.813189, 15.803134, 17.734255>,  <10.582784, 16.038229, 17.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.813189, 15.803134, 17.734255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334364, -0.464812, -0.819848,
		0.745930, 0.662206, -0.071220,
		0.576012, -0.587736, 0.568135,
		10.985992, 15.626813, 17.904696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.187835, 15.894782, 17.160706>,  <10.582784, 16.038229, 17.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.187835, 15.894782, 17.160706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.224349, 15.619027, 17.448153>,  <11.246258, 15.453574, 17.620621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.224349, 15.619027, 17.448153>,  <11.187835, 15.894782, 17.160706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.224349, 15.619027, 17.448153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406720, -0.632888, -0.658811,
		0.908981, 0.352416, 0.222615,
		0.091285, -0.689388, 0.718617,
		11.251735, 15.412210, 17.663738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.861698, 15.701789, 17.072788>,  <11.187835, 15.894782, 17.160706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.861698, 15.701789, 17.072788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626410, 15.420212, 17.232016>,  <11.485236, 15.251266, 17.327553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626410, 15.420212, 17.232016>,  <11.861698, 15.701789, 17.072788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.626410, 15.420212, 17.232016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267688, -0.633971, -0.725551,
		0.763111, -0.320226, 0.561353,
		-0.588222, -0.703943, 0.398070,
		11.449943, 15.209029, 17.351437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.246968, 15.136151, 17.036804>,  <11.861698, 15.701789, 17.072788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.246968, 15.136151, 17.036804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888817, 14.971215, 17.104065>,  <11.673926, 14.872253, 17.144421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888817, 14.971215, 17.104065>,  <12.246968, 15.136151, 17.036804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888817, 14.971215, 17.104065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293376, -0.830293, -0.473860,
		0.335006, -0.374952, 0.864397,
		-0.895378, -0.412340, 0.168151,
		11.620203, 14.847513, 17.154510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.316982, 14.434682, 17.177824>,  <12.246968, 15.136151, 17.036804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.316982, 14.434682, 17.177824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932817, 14.435428, 17.066397>,  <11.702317, 14.435875, 16.999540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932817, 14.435428, 17.066397>,  <12.316982, 14.434682, 17.177824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.932817, 14.435428, 17.066397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183796, -0.747206, -0.638672,
		-0.209338, -0.664590, 0.717285,
		-0.960415, 0.001864, -0.278568,
		11.644692, 14.435987, 16.982826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.193250, 13.760798, 16.884850>,  <12.316982, 14.434682, 17.177824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.193250, 13.760798, 16.884850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.869349, 13.964983, 16.769102>,  <11.675010, 14.087494, 16.699654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.869349, 13.964983, 16.769102>,  <12.193250, 13.760798, 16.884850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.869349, 13.964983, 16.769102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084422, -0.589373, -0.803438,
		-0.580655, -0.626164, 0.520345,
		-0.809761, 0.510448, -0.289360,
		11.626425, 14.118121, 16.682291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.070478, 13.430751, 16.268583>,  <12.193250, 13.760798, 16.884850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.070478, 13.430751, 16.268583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762975, 13.680887, 16.214983>,  <11.578472, 13.830969, 16.182823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762975, 13.680887, 16.214983>,  <12.070478, 13.430751, 16.268583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.762975, 13.680887, 16.214983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163154, -0.394360, -0.904357,
		-0.618376, -0.673371, 0.405195,
		-0.768760, 0.625342, -0.134000,
		11.532347, 13.868489, 16.174784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.851297, 13.366441, 15.986007>,  <12.070478, 13.430751, 16.268583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.851297, 13.366441, 15.986007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.061276, 13.299682, 16.319851>,  <13.187263, 13.259626, 16.520157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.061276, 13.299682, 16.319851>,  <12.851297, 13.366441, 15.986007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.061276, 13.299682, 16.319851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192315, 0.931968, 0.307327,
		-0.829124, -0.321839, 0.457137,
		0.524947, -0.166898, 0.834611,
		13.218760, 13.249612, 16.570234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.472229, 12.969666, 16.175524>,  <12.851297, 13.366441, 15.986007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.472229, 12.969666, 16.175524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762074, 12.705020, 16.252672>,  <13.935982, 12.546232, 16.298962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762074, 12.705020, 16.252672>,  <13.472229, 12.969666, 16.175524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762074, 12.705020, 16.252672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097645, 0.178475, 0.979087,
		-0.682204, -0.728292, 0.064722,
		0.724613, -0.661617, 0.192870,
		13.979459, 12.506535, 16.310534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.245351, 12.455214, 16.743038>,  <13.472229, 12.969666, 16.175524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.245351, 12.455214, 16.743038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.633623, 12.551290, 16.746742>,  <13.866587, 12.608935, 16.748964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.633623, 12.551290, 16.746742>,  <13.245351, 12.455214, 16.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633623, 12.551290, 16.746742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094121, 0.344350, 0.934112,
		0.221172, -0.907597, 0.356861,
		0.970682, 0.240187, 0.009263,
		13.924828, 12.623346, 16.749521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.583778, 12.051722, 17.227655>,  <13.245351, 12.455214, 16.743038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.583778, 12.051722, 17.227655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782552, 12.394569, 17.173397>,  <13.901816, 12.600279, 17.140842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782552, 12.394569, 17.173397>,  <13.583778, 12.051722, 17.227655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782552, 12.394569, 17.173397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250697, 0.291445, 0.923153,
		0.830787, -0.424740, 0.359707,
		0.496934, 0.857121, -0.135648,
		13.931632, 12.651706, 17.132702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896022, 12.074311, 17.801413>,  <13.583778, 12.051722, 17.227655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896022, 12.074311, 17.801413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921875, 12.446222, 17.656452>,  <13.937387, 12.669369, 17.569475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921875, 12.446222, 17.656452>,  <13.896022, 12.074311, 17.801413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.921875, 12.446222, 17.656452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245479, 0.366814, 0.897322,
		0.967245, 0.030966, 0.251949,
		0.064632, 0.929778, -0.362401,
		13.941265, 12.725156, 17.547731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.223732, 12.481883, 18.372845>,  <13.896022, 12.074311, 17.801413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.223732, 12.481883, 18.372845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.023376, 12.741395, 18.143692>,  <13.903162, 12.897102, 18.006201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.023376, 12.741395, 18.143692>,  <14.223732, 12.481883, 18.372845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.023376, 12.741395, 18.143692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137960, 0.593588, 0.792856,
		0.854444, 0.476169, -0.207817,
		-0.500892, 0.648781, -0.572880,
		13.873108, 12.936029, 17.971828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494478, 13.158237, 18.699757>,  <14.223732, 12.481883, 18.372845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494478, 13.158237, 18.699757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168147, 13.253444, 18.488941>,  <13.972348, 13.310568, 18.362452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168147, 13.253444, 18.488941>,  <14.494478, 13.158237, 18.699757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.168147, 13.253444, 18.488941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210653, 0.726439, 0.654149,
		0.538562, 0.644696, -0.542510,
		-0.815828, 0.238019, -0.527040,
		13.923399, 13.324849, 18.330830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493743, 13.815529, 18.771856>,  <14.494478, 13.158237, 18.699757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493743, 13.815529, 18.771856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121372, 13.706478, 18.674654>,  <13.897950, 13.641047, 18.616333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121372, 13.706478, 18.674654>,  <14.493743, 13.815529, 18.771856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121372, 13.706478, 18.674654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360187, 0.575423, 0.734271,
		-0.060351, 0.771079, -0.633872,
		-0.930926, -0.272627, -0.243005,
		13.842094, 13.624690, 18.601753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.181952, 14.400962, 18.772566>,  <14.493743, 13.815529, 18.771856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.181952, 14.400962, 18.772566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.888908, 14.131173, 18.809164>,  <13.713082, 13.969299, 18.831123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.888908, 14.131173, 18.809164>,  <14.181952, 14.400962, 18.772566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.888908, 14.131173, 18.809164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312941, 0.453144, 0.834703,
		-0.604444, 0.582878, -0.543047,
		-0.732609, -0.674473, 0.091493,
		13.669126, 13.928831, 18.836613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524557, 14.712830, 18.842834>,  <14.181952, 14.400962, 18.772566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524557, 14.712830, 18.842834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431433, 14.349094, 18.980762>,  <13.375558, 14.130854, 19.063520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431433, 14.349094, 18.980762>,  <13.524557, 14.712830, 18.842834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431433, 14.349094, 18.980762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493168, 0.415984, 0.764031,
		-0.838203, 0.007820, -0.545302,
		-0.232812, -0.909338, 0.344822,
		13.361589, 14.076293, 19.084209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.870318, 14.891035, 19.104683>,  <13.524557, 14.712830, 18.842834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.870318, 14.891035, 19.104683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948227, 14.549171, 19.297192>,  <12.994972, 14.344053, 19.412697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948227, 14.549171, 19.297192>,  <12.870318, 14.891035, 19.104683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948227, 14.549171, 19.297192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378700, 0.387098, 0.840679,
		-0.904794, -0.345997, -0.248264,
		0.194770, -0.854659, 0.481273,
		13.006658, 14.292774, 19.441574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214176, 14.517647, 19.538260>,  <12.870318, 14.891035, 19.104683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214176, 14.517647, 19.538260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.549981, 14.385707, 19.710964>,  <12.751464, 14.306542, 19.814587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.549981, 14.385707, 19.710964>,  <12.214176, 14.517647, 19.538260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.549981, 14.385707, 19.710964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386235, 0.196623, 0.901200,
		-0.382156, -0.923330, 0.037667,
		0.839511, -0.329851, 0.431763,
		12.801835, 14.286752, 19.840492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.933987, 13.958985, 20.076466>,  <12.214176, 14.517647, 19.538260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.933987, 13.958985, 20.076466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306787, 14.038850, 20.197468>,  <12.530468, 14.086768, 20.270069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306787, 14.038850, 20.197468>,  <11.933987, 13.958985, 20.076466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306787, 14.038850, 20.197468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268050, -0.182098, 0.946039,
		0.243973, -0.962796, -0.116196,
		0.932001, 0.199662, 0.302505,
		12.586388, 14.098748, 20.288219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.965076, 13.507650, 20.673458>,  <11.933987, 13.958985, 20.076466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.965076, 13.507650, 20.673458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252831, 13.784118, 20.701086>,  <12.425483, 13.949998, 20.717663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252831, 13.784118, 20.701086>,  <11.965076, 13.507650, 20.673458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252831, 13.784118, 20.701086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109992, 0.015172, 0.993817,
		0.685848, -0.722534, 0.086938,
		0.719385, 0.691169, 0.069068,
		12.468646, 13.991468, 20.721806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597834, 13.242692, 21.143379>,  <11.965076, 13.507650, 20.673458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.597834, 13.242692, 21.143379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.621953, 13.641899, 21.150595>,  <12.636424, 13.881423, 21.154924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.621953, 13.641899, 21.150595>,  <12.597834, 13.242692, 21.143379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.621953, 13.641899, 21.150595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036736, -0.015841, 0.999199,
		0.997504, -0.060912, 0.035708,
		0.060297, 0.998017, 0.018039,
		12.640042, 13.941304, 21.156006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129798, 13.450030, 21.641052>,  <12.597834, 13.242692, 21.143379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129798, 13.450030, 21.641052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.906119, 13.780560, 21.614256>,  <12.771912, 13.978877, 21.598179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.906119, 13.780560, 21.614256>,  <13.129798, 13.450030, 21.641052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.906119, 13.780560, 21.614256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170766, 0.193879, 0.966049,
		0.811257, 0.528772, -0.249524,
		-0.559197, 0.826324, -0.066989,
		12.738360, 14.028457, 21.594158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382242, 13.863761, 22.112068>,  <13.129798, 13.450030, 21.641052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382242, 13.863761, 22.112068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037279, 14.055258, 22.046272>,  <12.830301, 14.170156, 22.006794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037279, 14.055258, 22.046272>,  <13.382242, 13.863761, 22.112068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.037279, 14.055258, 22.046272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055316, 0.412119, 0.909449,
		0.503182, 0.775218, -0.381897,
		-0.862408, 0.478743, -0.164489,
		12.778557, 14.198881, 21.996925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504597, 14.495512, 22.376421>,  <13.382242, 13.863761, 22.112068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504597, 14.495512, 22.376421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104678, 14.490838, 22.369812>,  <12.864727, 14.488033, 22.365847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104678, 14.490838, 22.369812>,  <13.504597, 14.495512, 22.376421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.104678, 14.490838, 22.369812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020135, 0.492126, 0.870291,
		-0.002037, 0.870446, -0.492260,
		-0.999795, -0.011685, -0.016524,
		12.804740, 14.487332, 22.364855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251072, 15.166767, 22.503195>,  <13.504597, 14.495512, 22.376421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251072, 15.166767, 22.503195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.947980, 14.923205, 22.597071>,  <12.766125, 14.777068, 22.653397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.947980, 14.923205, 22.597071>,  <13.251072, 15.166767, 22.503195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.947980, 14.923205, 22.597071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138150, 0.501168, 0.854251,
		-0.637776, 0.614870, -0.463871,
		-0.757731, -0.608905, 0.234689,
		12.720661, 14.740534, 22.667477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769634, 15.615504, 22.927288>,  <13.251072, 15.166767, 22.503195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769634, 15.615504, 22.927288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.646897, 15.246386, 23.020494>,  <12.573256, 15.024915, 23.076418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.646897, 15.246386, 23.020494>,  <12.769634, 15.615504, 22.927288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.646897, 15.246386, 23.020494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152812, 0.289415, 0.944927,
		-0.939413, 0.254336, -0.229819,
		-0.306842, -0.922796, 0.233015,
		12.554845, 14.969546, 23.090399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214677, 15.731886, 23.414927>,  <12.769634, 15.615504, 22.927288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214677, 15.731886, 23.414927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336631, 15.356945, 23.482355>,  <12.409803, 15.131981, 23.522812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336631, 15.356945, 23.482355>,  <12.214677, 15.731886, 23.414927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.336631, 15.356945, 23.482355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023826, 0.184449, 0.982553,
		-0.952092, -0.295548, 0.078569,
		0.304884, -0.937353, 0.168570,
		12.428096, 15.075739, 23.532927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.690902, 15.420045, 23.757221>,  <12.214677, 15.731886, 23.414927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.690902, 15.420045, 23.757221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015842, 15.192399, 23.808121>,  <12.210807, 15.055811, 23.838661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015842, 15.192399, 23.808121>,  <11.690902, 15.420045, 23.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015842, 15.192399, 23.808121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169719, -0.021964, 0.985248,
		-0.557925, -0.821964, -0.114433,
		0.812351, -0.569116, 0.127248,
		12.259548, 15.021665, 23.846294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.539055, 14.781299, 24.063210>,  <11.690902, 15.420045, 23.757221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.539055, 14.781299, 24.063210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927883, 14.824484, 24.146563>,  <12.161180, 14.850395, 24.196575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927883, 14.824484, 24.146563>,  <11.539055, 14.781299, 24.063210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.927883, 14.824484, 24.146563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198932, -0.092057, 0.975680,
		0.124520, -0.989884, -0.068008,
		0.972070, 0.107963, 0.208382,
		12.219504, 14.856873, 24.209078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626492, 14.342209, 24.726902>,  <11.539055, 14.781299, 24.063210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626492, 14.342209, 24.726902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942046, 14.586482, 24.699408>,  <12.131379, 14.733047, 24.682911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942046, 14.586482, 24.699408>,  <11.626492, 14.342209, 24.726902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942046, 14.586482, 24.699408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173000, -0.113363, 0.978376,
		0.589686, -0.783718, -0.195079,
		0.788886, 0.610684, -0.068735,
		12.178712, 14.769687, 24.678787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.122330, 14.069180, 25.089205>,  <11.626492, 14.342209, 24.726902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.122330, 14.069180, 25.089205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.233195, 14.453403, 25.080196>,  <12.299715, 14.683936, 25.074791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.233195, 14.453403, 25.080196>,  <12.122330, 14.069180, 25.089205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.233195, 14.453403, 25.080196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407907, -0.096412, 0.907919,
		0.869938, -0.260829, -0.418540,
		0.277164, 0.960559, -0.022521,
		12.316344, 14.741570, 25.073441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780404, 14.083752, 25.514305>,  <12.122330, 14.069180, 25.089205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780404, 14.083752, 25.514305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.679765, 14.470883, 25.515335>,  <12.619381, 14.703162, 25.515953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.679765, 14.470883, 25.515335>,  <12.780404, 14.083752, 25.514305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.679765, 14.470883, 25.515335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309560, 0.077954, 0.947679,
		0.916990, 0.239231, -0.319214,
		-0.251598, 0.967828, 0.002574,
		12.604285, 14.761231, 25.516108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.348668, 14.430294, 25.833590>,  <12.780404, 14.083752, 25.514305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.348668, 14.430294, 25.833590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.067509, 14.714809, 25.832819>,  <12.898813, 14.885518, 25.832357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.067509, 14.714809, 25.832819>,  <13.348668, 14.430294, 25.833590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.067509, 14.714809, 25.832819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313910, 0.312634, 0.896505,
		0.638275, 0.629548, -0.443030,
		-0.702898, 0.711288, -0.001925,
		12.856639, 14.928196, 25.832241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691197, 14.956355, 26.203028>,  <13.348668, 14.430294, 25.833590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691197, 14.956355, 26.203028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303267, 15.047894, 26.236647>,  <13.070508, 15.102818, 26.256819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303267, 15.047894, 26.236647>,  <13.691197, 14.956355, 26.203028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.303267, 15.047894, 26.236647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173320, 0.404763, 0.897846,
		0.171451, 0.885322, -0.432214,
		-0.969827, 0.228848, 0.084047,
		13.012319, 15.116549, 26.261860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
