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
	<24.323206, 35.171440, 34.499359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190870, 35.321846, 34.845573>,  <24.111469, 35.412090, 35.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190870, 35.321846, 34.845573>,  <24.323206, 35.171440, 34.499359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190870, 35.321846, 34.845573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888465, -0.185040, 0.419989,
		0.318080, 0.907952, -0.272854,
		-0.330841, 0.376011, 0.865541,
		24.091618, 35.434650, 35.105236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843576, 35.682236, 34.744740>,  <24.323206, 35.171440, 34.499359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843576, 35.682236, 34.744740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636034, 35.508167, 35.039062>,  <24.511509, 35.403725, 35.215656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636034, 35.508167, 35.039062>,  <24.843576, 35.682236, 34.744740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.636034, 35.508167, 35.039062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854793, -0.274864, 0.440202,
		0.010684, 0.857365, 0.514597,
		-0.518858, -0.435172, 0.735807,
		24.480377, 35.377617, 35.259804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318096, 35.896618, 35.277683>,  <24.843576, 35.682236, 34.744740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318096, 35.896618, 35.277683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083958, 35.587250, 35.375000>,  <24.943474, 35.401630, 35.433392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083958, 35.587250, 35.375000>,  <25.318096, 35.896618, 35.277683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083958, 35.587250, 35.375000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787602, -0.471169, 0.397094,
		-0.192489, 0.424055, 0.884944,
		-0.585348, -0.773419, 0.243291,
		24.908354, 35.355225, 35.447987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784662, 35.363983, 35.363716>,  <25.318096, 35.896618, 35.277683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784662, 35.363983, 35.363716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725842, 35.465469, 35.746128>,  <25.690548, 35.526363, 35.975578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725842, 35.465469, 35.746128>,  <25.784662, 35.363983, 35.363716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725842, 35.465469, 35.746128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826859, -0.498917, 0.259590,
		0.542845, 0.828679, -0.136421,
		-0.147054, 0.253718, 0.956035,
		25.681725, 35.541584, 36.032940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333750, 35.563446, 35.680939>,  <25.784662, 35.363983, 35.363716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333750, 35.563446, 35.680939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137093, 35.418396, 35.997620>,  <26.019098, 35.331367, 36.187630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137093, 35.418396, 35.997620>,  <26.333750, 35.563446, 35.680939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137093, 35.418396, 35.997620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831178, -0.466531, 0.302476,
		0.259669, 0.806756, 0.530770,
		-0.491645, -0.362621, 0.791702,
		25.989599, 35.309608, 36.235130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198925, 35.722725, 34.879566>,  <26.333750, 35.563446, 35.680939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198925, 35.722725, 34.879566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575968, 35.738590, 34.746952>,  <26.802195, 35.748108, 34.667385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575968, 35.738590, 34.746952>,  <26.198925, 35.722725, 34.879566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575968, 35.738590, 34.746952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298418, 0.545497, -0.783186,
		0.149787, 0.837174, 0.526027,
		0.942608, 0.039664, -0.331536,
		26.858749, 35.750488, 34.647491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305452, 36.426746, 34.698227>,  <26.198925, 35.722725, 34.879566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305452, 36.426746, 34.698227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554415, 36.191757, 34.491348>,  <26.703793, 36.050766, 34.367222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554415, 36.191757, 34.491348>,  <26.305452, 36.426746, 34.698227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554415, 36.191757, 34.491348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224044, 0.499414, -0.836893,
		0.749943, 0.636762, 0.179220,
		0.622406, -0.587469, -0.517195,
		26.741137, 36.015518, 34.336189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825108, 36.865513, 34.191895>,  <26.305452, 36.426746, 34.698227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825108, 36.865513, 34.191895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824850, 36.506535, 34.015442>,  <26.824696, 36.291149, 33.909573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824850, 36.506535, 34.015442>,  <26.825108, 36.865513, 34.191895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824850, 36.506535, 34.015442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057670, 0.440361, -0.895967,
		0.998335, -0.026016, 0.051472,
		-0.000643, -0.897444, -0.441128,
		26.824657, 36.237301, 33.883102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178936, 36.961567, 33.622238>,  <26.825108, 36.865513, 34.191895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178936, 36.961567, 33.622238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029028, 36.603401, 33.526085>,  <26.939083, 36.388504, 33.468391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029028, 36.603401, 33.526085>,  <27.178936, 36.961567, 33.622238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029028, 36.603401, 33.526085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164528, 0.190933, -0.967717,
		0.912403, -0.402220, 0.075764,
		-0.374769, -0.895413, -0.240384,
		26.916597, 36.334778, 33.453968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589479, 36.688889, 33.115837>,  <27.178936, 36.961567, 33.622238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589479, 36.688889, 33.115837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227966, 36.521832, 33.078415>,  <27.011059, 36.421597, 33.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227966, 36.521832, 33.078415>,  <27.589479, 36.688889, 33.115837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227966, 36.521832, 33.078415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009589, 0.198777, -0.979998,
		0.427889, -0.886600, -0.175646,
		-0.903781, -0.417646, -0.093556,
		26.956833, 36.396538, 33.050346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624933, 36.550827, 32.473820>,  <27.589479, 36.688889, 33.115837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624933, 36.550827, 32.473820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234982, 36.469353, 32.509872>,  <27.001011, 36.420467, 32.531502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234982, 36.469353, 32.509872>,  <27.624933, 36.550827, 32.473820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234982, 36.469353, 32.509872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108824, 0.082501, -0.990632,
		0.194344, -0.975554, -0.102595,
		-0.974878, -0.203687, 0.090130,
		26.942518, 36.408245, 32.536911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422615, 36.294361, 31.829407>,  <27.624933, 36.550827, 32.473820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422615, 36.294361, 31.829407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083664, 36.418289, 32.001900>,  <26.880293, 36.492645, 32.105396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083664, 36.418289, 32.001900>,  <27.422615, 36.294361, 31.829407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083664, 36.418289, 32.001900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381570, 0.209478, -0.900291,
		-0.369262, -0.927432, -0.059289,
		-0.847378, 0.309821, 0.431232,
		26.829451, 36.511234, 32.131268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844429, 35.880428, 31.539129>,  <27.422615, 36.294361, 31.829407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844429, 35.880428, 31.539129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741692, 36.249012, 31.655708>,  <26.680050, 36.470161, 31.725655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741692, 36.249012, 31.655708>,  <26.844429, 35.880428, 31.539129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741692, 36.249012, 31.655708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288132, 0.214841, -0.933179,
		-0.922503, -0.323655, 0.210322,
		-0.256842, 0.921461, 0.291446,
		26.664639, 36.525452, 31.743143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429331, 36.095581, 31.028547>,  <26.844429, 35.880428, 31.539129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429331, 36.095581, 31.028547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448589, 36.437534, 31.235178>,  <26.460144, 36.642708, 31.359156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448589, 36.437534, 31.235178>,  <26.429331, 36.095581, 31.028547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448589, 36.437534, 31.235178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318311, 0.503343, -0.803320,
		-0.946763, -0.125753, 0.296355,
		0.048148, 0.854887, 0.516575,
		26.463034, 36.694000, 31.390150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749701, 36.409985, 30.959238>,  <26.429331, 36.095581, 31.028547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749701, 36.409985, 30.959238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006393, 36.701065, 31.056091>,  <26.160410, 36.875713, 31.114204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006393, 36.701065, 31.056091>,  <25.749701, 36.409985, 30.959238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006393, 36.701065, 31.056091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308644, 0.534076, -0.787084,
		-0.702081, 0.430364, 0.567335,
		0.641733, 0.727701, 0.242135,
		26.198914, 36.919376, 31.128733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358906, 37.072651, 30.934059>,  <25.749701, 36.409985, 30.959238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358906, 37.072651, 30.934059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736839, 37.195805, 30.889347>,  <25.963600, 37.269695, 30.862520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736839, 37.195805, 30.889347>,  <25.358906, 37.072651, 30.934059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736839, 37.195805, 30.889347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211516, 0.312945, -0.925919,
		-0.250093, 0.898484, 0.360804,
		0.944836, 0.307882, -0.111778,
		26.020290, 37.288170, 30.855814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290796, 37.772812, 30.679161>,  <25.358906, 37.072651, 30.934059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290796, 37.772812, 30.679161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653305, 37.634415, 30.582031>,  <25.870810, 37.551376, 30.523754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653305, 37.634415, 30.582031>,  <25.290796, 37.772812, 30.679161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653305, 37.634415, 30.582031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062115, 0.459221, -0.886148,
		0.418108, 0.818173, 0.394688,
		0.906271, -0.345990, -0.242825,
		25.925186, 37.530617, 30.509184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684582, 38.300484, 30.373941>,  <25.290796, 37.772812, 30.679161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684582, 38.300484, 30.373941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873657, 37.990635, 30.205881>,  <25.987103, 37.804726, 30.105045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873657, 37.990635, 30.205881>,  <25.684582, 38.300484, 30.373941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873657, 37.990635, 30.205881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002014, 0.475825, -0.879538,
		0.881228, 0.416593, 0.223356,
		0.472687, -0.774624, -0.420149,
		26.015463, 37.758247, 30.079836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095076, 38.631283, 29.894484>,  <25.684582, 38.300484, 30.373941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095076, 38.631283, 29.894484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165886, 38.248573, 29.802183>,  <26.208372, 38.018948, 29.746803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165886, 38.248573, 29.802183>,  <26.095076, 38.631283, 29.894484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165886, 38.248573, 29.802183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082947, 0.248124, -0.965170,
		0.980704, 0.151721, 0.123287,
		0.177027, -0.956773, -0.230751,
		26.218994, 37.961540, 29.732958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673960, 38.623905, 29.463894>,  <26.095076, 38.631283, 29.894484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673960, 38.623905, 29.463894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477751, 38.283394, 29.389368>,  <26.360025, 38.079086, 29.344652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477751, 38.283394, 29.389368>,  <26.673960, 38.623905, 29.463894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477751, 38.283394, 29.389368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150452, 0.127863, -0.980314,
		0.858342, -0.508899, 0.065356,
		-0.490524, -0.851277, -0.186315,
		26.330593, 38.028011, 29.333473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039898, 38.331764, 28.999065>,  <26.673960, 38.623905, 29.463894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039898, 38.331764, 28.999065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692921, 38.136017, 28.963148>,  <26.484735, 38.018570, 28.941599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692921, 38.136017, 28.963148>,  <27.039898, 38.331764, 28.999065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692921, 38.136017, 28.963148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051755, 0.090742, -0.994529,
		0.494840, -0.867343, -0.053386,
		-0.867441, -0.489370, -0.089792,
		26.432688, 37.989204, 28.936211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104908, 37.859600, 28.444298>,  <27.039898, 38.331764, 28.999065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104908, 37.859600, 28.444298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706106, 37.886646, 28.459318>,  <26.466825, 37.902874, 28.468330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706106, 37.886646, 28.459318>,  <27.104908, 37.859600, 28.444298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706106, 37.886646, 28.459318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028489, 0.130281, -0.991068,
		-0.071908, -0.989169, -0.127964,
		-0.997005, 0.067620, 0.037549,
		26.407005, 37.906933, 28.470583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697433, 37.364136, 27.924913>,  <27.104908, 37.859600, 28.444298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697433, 37.364136, 27.924913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440420, 37.658741, 28.009478>,  <26.286213, 37.835506, 28.060217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440420, 37.658741, 28.009478>,  <26.697433, 37.364136, 27.924913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440420, 37.658741, 28.009478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087282, 0.203759, -0.975123,
		-0.761272, -0.645000, -0.066637,
		-0.642532, 0.736517, 0.211413,
		26.247660, 37.879696, 28.072901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291996, 37.341881, 27.330906>,  <26.697433, 37.364136, 27.924913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291996, 37.341881, 27.330906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163761, 37.680729, 27.500425>,  <26.086821, 37.884037, 27.602137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163761, 37.680729, 27.500425>,  <26.291996, 37.341881, 27.330906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163761, 37.680729, 27.500425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168474, 0.389285, -0.905579,
		-0.932116, -0.361717, 0.017918,
		-0.320588, 0.847124, 0.423798,
		26.067585, 37.934864, 27.627565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593559, 37.500694, 27.060322>,  <26.291996, 37.341881, 27.330906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593559, 37.500694, 27.060322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799212, 37.823448, 27.176672>,  <25.922604, 38.017101, 27.246481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799212, 37.823448, 27.176672>,  <25.593559, 37.500694, 27.060322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799212, 37.823448, 27.176672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000883, 0.338629, -0.940920,
		-0.857711, 0.484012, 0.173388,
		0.514131, 0.806884, 0.290873,
		25.953451, 38.065514, 27.263933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263922, 38.135151, 26.717186>,  <25.593559, 37.500694, 27.060322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263922, 38.135151, 26.717186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657087, 38.108223, 26.785711>,  <25.892986, 38.092064, 26.826826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657087, 38.108223, 26.785711>,  <25.263922, 38.135151, 26.717186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657087, 38.108223, 26.785711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179623, 0.147597, -0.972600,
		0.040192, 0.986754, 0.157168,
		0.982914, -0.067321, 0.171312,
		25.951962, 38.088028, 26.837105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508343, 38.718903, 26.525005>,  <25.263922, 38.135151, 26.717186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508343, 38.718903, 26.525005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777452, 38.424728, 26.492733>,  <25.938919, 38.248226, 26.473370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777452, 38.424728, 26.492733>,  <25.508343, 38.718903, 26.525005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777452, 38.424728, 26.492733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108861, 0.206266, -0.972421,
		0.731793, 0.645439, 0.218831,
		0.672776, -0.735434, -0.080681,
		25.979286, 38.204098, 26.468529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819658, 38.561188, 25.804504>,  <25.508343, 38.718903, 26.525005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819658, 38.561188, 25.804504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036293, 38.275608, 25.982023>,  <26.166275, 38.104259, 26.088535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036293, 38.275608, 25.982023>,  <25.819658, 38.561188, 25.804504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036293, 38.275608, 25.982023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560101, -0.087212, -0.823821,
		0.626871, 0.694744, 0.352651,
		0.541589, -0.713950, 0.443798,
		26.198771, 38.061424, 26.115162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498116, 38.694073, 25.733021>,  <25.819658, 38.561188, 25.804504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498116, 38.694073, 25.733021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503250, 38.301620, 25.810186>,  <26.506330, 38.066151, 25.856485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503250, 38.301620, 25.810186>,  <26.498116, 38.694073, 25.733021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503250, 38.301620, 25.810186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373044, -0.174302, -0.911294,
		0.927725, 0.083663, 0.363768,
		0.012836, -0.981132, 0.192914,
		26.507101, 38.007282, 25.868061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202099, 38.408924, 25.735464>,  <26.498116, 38.694073, 25.733021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202099, 38.408924, 25.735464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942636, 38.119312, 25.641626>,  <26.786959, 37.945545, 25.585323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942636, 38.119312, 25.641626>,  <27.202099, 38.408924, 25.735464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942636, 38.119312, 25.641626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469903, -0.138517, -0.871782,
		0.598697, -0.675722, 0.430072,
		-0.648655, -0.724025, -0.234594,
		26.748039, 37.902103, 25.571247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433224, 37.733971, 25.449677>,  <27.202099, 38.408924, 25.735464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433224, 37.733971, 25.449677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065519, 37.802559, 25.307938>,  <26.844896, 37.843712, 25.222895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065519, 37.802559, 25.307938>,  <27.433224, 37.733971, 25.449677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065519, 37.802559, 25.307938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344841, -0.083395, -0.934949,
		-0.189865, -0.981654, 0.017532,
		-0.919258, 0.171468, -0.354349,
		26.789742, 37.854000, 25.201633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266376, 37.184544, 25.002764>,  <27.433224, 37.733971, 25.449677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266376, 37.184544, 25.002764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104357, 37.520973, 24.859360>,  <27.007145, 37.722832, 24.773317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104357, 37.520973, 24.859360>,  <27.266376, 37.184544, 25.002764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104357, 37.520973, 24.859360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535115, -0.099861, -0.838856,
		-0.741341, -0.531623, -0.409622,
		-0.405050, 0.841074, -0.358511,
		26.982841, 37.773296, 24.751806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575148, 36.497150, 25.292906>,  <27.266376, 37.184544, 25.002764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575148, 36.497150, 25.292906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860170, 36.281132, 25.113747>,  <28.031183, 36.151520, 25.006252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860170, 36.281132, 25.113747>,  <27.575148, 36.497150, 25.292906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860170, 36.281132, 25.113747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545315, 0.024606, 0.837870,
		-0.441470, -0.841274, 0.312030,
		0.712556, -0.540048, -0.447897,
		28.073936, 36.119118, 24.979378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928082, 35.897888, 25.670170>,  <27.575148, 36.497150, 25.292906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928082, 35.897888, 25.670170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192892, 36.079559, 25.431694>,  <28.351778, 36.188564, 25.288609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192892, 36.079559, 25.431694>,  <27.928082, 35.897888, 25.670170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192892, 36.079559, 25.431694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668316, 0.002305, 0.743874,
		0.339227, -0.890907, -0.302010,
		0.662026, 0.454180, -0.596189,
		28.391500, 36.215813, 25.252838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526667, 35.453896, 25.522577>,  <27.928082, 35.897888, 25.670170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526667, 35.453896, 25.522577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632233, 35.839642, 25.515078>,  <28.695572, 36.071091, 25.510578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632233, 35.839642, 25.515078>,  <28.526667, 35.453896, 25.522577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632233, 35.839642, 25.515078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400948, -0.092005, 0.911469,
		0.877263, -0.248066, -0.410941,
		0.263913, 0.964364, -0.018749,
		28.711407, 36.128952, 25.509453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345417, 35.729015, 25.643539>,  <28.526667, 35.453896, 25.522577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345417, 35.729015, 25.643539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068840, 35.991890, 25.763546>,  <28.902895, 36.149616, 25.835550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068840, 35.991890, 25.763546>,  <29.345417, 35.729015, 25.643539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068840, 35.991890, 25.763546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342646, -0.067274, 0.937053,
		0.636006, 0.750716, -0.178667,
		-0.691441, 0.657191, 0.300017,
		28.861408, 36.189049, 25.853552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605478, 36.385685, 26.061306>,  <29.345417, 35.729015, 25.643539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605478, 36.385685, 26.061306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227276, 36.323929, 26.175978>,  <29.000355, 36.286877, 26.244781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227276, 36.323929, 26.175978>,  <29.605478, 36.385685, 26.061306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227276, 36.323929, 26.175978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274444, 0.095926, 0.956806,
		-0.175220, 0.983342, -0.048328,
		-0.945504, -0.154388, 0.286681,
		28.943624, 36.277611, 26.261982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600449, 36.750610, 26.685379>,  <29.605478, 36.385685, 26.061306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600449, 36.750610, 26.685379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247881, 36.564373, 26.717180>,  <29.036341, 36.452629, 26.736261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247881, 36.564373, 26.717180>,  <29.600449, 36.750610, 26.685379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247881, 36.564373, 26.717180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166950, -0.149643, 0.974543,
		-0.441847, 0.872254, 0.209629,
		-0.881419, -0.465596, 0.079503,
		28.983456, 36.424694, 26.741032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245403, 37.110065, 27.285967>,  <29.600449, 36.750610, 26.685379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245403, 37.110065, 27.285967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051792, 36.764088, 27.232906>,  <28.935625, 36.556503, 27.201069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051792, 36.764088, 27.232906>,  <29.245403, 37.110065, 27.285967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051792, 36.764088, 27.232906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007664, -0.155777, 0.987762,
		-0.875020, 0.477086, 0.082029,
		-0.484026, -0.864941, -0.132652,
		28.906584, 36.504604, 27.193111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679707, 37.028408, 27.768276>,  <29.245403, 37.110065, 27.285967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679707, 37.028408, 27.768276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730251, 36.639938, 27.687429>,  <28.760578, 36.406857, 27.638922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730251, 36.639938, 27.687429>,  <28.679707, 37.028408, 27.768276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730251, 36.639938, 27.687429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150719, -0.220179, 0.963745,
		-0.980467, -0.091320, -0.174197,
		0.126364, -0.971175, -0.202115,
		28.768160, 36.348587, 27.626795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071682, 36.616932, 28.109415>,  <28.679707, 37.028408, 27.768276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071682, 36.616932, 28.109415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350336, 36.339550, 28.035849>,  <28.517529, 36.173122, 27.991709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350336, 36.339550, 28.035849>,  <28.071682, 36.616932, 28.109415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350336, 36.339550, 28.035849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165446, -0.404728, 0.899346,
		-0.698089, -0.596087, -0.396676,
		0.696634, -0.693452, -0.183916,
		28.559326, 36.131516, 27.980675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784803, 35.958424, 28.288147>,  <28.071682, 36.616932, 28.109415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784803, 35.958424, 28.288147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179390, 35.900116, 28.318180>,  <28.416142, 35.865131, 28.336201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179390, 35.900116, 28.318180>,  <27.784803, 35.958424, 28.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179390, 35.900116, 28.318180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110161, -0.250000, 0.961959,
		-0.121449, -0.957211, -0.262675,
		0.986466, -0.145766, 0.075085,
		28.475330, 35.856384, 28.340706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942091, 35.369259, 28.692598>,  <27.784803, 35.958424, 28.288147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942091, 35.369259, 28.692598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286661, 35.571068, 28.715948>,  <28.493402, 35.692154, 28.729958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286661, 35.571068, 28.715948>,  <27.942091, 35.369259, 28.692598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286661, 35.571068, 28.715948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096032, -0.274665, 0.956733,
		0.498722, -0.818548, -0.285053,
		0.861425, 0.504518, 0.058375,
		28.545090, 35.722424, 28.733461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376127, 34.964882, 28.974100>,  <27.942091, 35.369259, 28.692598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376127, 34.964882, 28.974100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563732, 35.312614, 29.036430>,  <28.676296, 35.521255, 29.073828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563732, 35.312614, 29.036430>,  <28.376127, 34.964882, 28.974100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563732, 35.312614, 29.036430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242441, -0.296384, 0.923785,
		0.849263, -0.395490, -0.349771,
		0.469014, 0.869336, 0.155824,
		28.704437, 35.573414, 29.083178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094761, 34.841377, 29.290831>,  <28.376127, 34.964882, 28.974100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094761, 34.841377, 29.290831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025105, 35.223717, 29.385517>,  <28.983311, 35.453121, 29.442329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025105, 35.223717, 29.385517>,  <29.094761, 34.841377, 29.290831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025105, 35.223717, 29.385517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318686, -0.172747, 0.931986,
		0.931726, 0.237735, -0.274532,
		-0.174141, 0.955845, 0.236716,
		28.972862, 35.510471, 29.456532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655956, 35.012314, 29.711071>,  <29.094761, 34.841377, 29.290831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655956, 35.012314, 29.711071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371862, 35.272942, 29.817677>,  <29.201406, 35.429317, 29.881639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371862, 35.272942, 29.817677>,  <29.655956, 35.012314, 29.711071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371862, 35.272942, 29.817677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250875, -0.119464, 0.960620,
		0.657745, 0.749127, -0.078614,
		-0.710234, 0.651565, 0.266514,
		29.158792, 35.468410, 29.897631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852915, 35.457581, 30.296425>,  <29.655956, 35.012314, 29.711071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852915, 35.457581, 30.296425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457743, 35.518768, 30.306190>,  <29.220640, 35.555481, 30.312050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457743, 35.518768, 30.306190>,  <29.852915, 35.457581, 30.296425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457743, 35.518768, 30.306190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027839, 0.020279, 0.999407,
		0.152388, 0.988022, -0.024293,
		-0.987929, 0.152974, 0.024415,
		29.161364, 35.564659, 30.313515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806496, 35.950367, 30.761507>,  <29.852915, 35.457581, 30.296425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806496, 35.950367, 30.761507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429865, 35.816021, 30.751490>,  <29.203886, 35.735413, 30.745480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429865, 35.816021, 30.751490>,  <29.806496, 35.950367, 30.761507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429865, 35.816021, 30.751490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005378, -0.089349, 0.995986,
		-0.336751, 0.937664, 0.085936,
		-0.941578, -0.335861, -0.025045,
		29.147392, 35.715263, 30.743977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499685, 36.232140, 31.309580>,  <29.806496, 35.950367, 30.761507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499685, 36.232140, 31.309580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260927, 35.924446, 31.218365>,  <29.117672, 35.739830, 31.163635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260927, 35.924446, 31.218365>,  <29.499685, 36.232140, 31.309580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260927, 35.924446, 31.218365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046538, -0.316942, 0.947303,
		-0.800969, 0.554827, 0.224979,
		-0.596895, -0.769230, -0.228040,
		29.081860, 35.693676, 31.149952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791653, 36.250767, 31.725538>,  <29.499685, 36.232140, 31.309580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791653, 36.250767, 31.725538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870029, 35.868069, 31.639523>,  <28.917055, 35.638451, 31.587914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870029, 35.868069, 31.639523>,  <28.791653, 36.250767, 31.725538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870029, 35.868069, 31.639523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007356, -0.217852, 0.975954,
		-0.980588, -0.192810, -0.035648,
		0.195940, -0.956747, -0.215042,
		28.928812, 35.581043, 31.575010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537834, 35.892860, 32.294796>,  <28.791653, 36.250767, 31.725538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537834, 35.892860, 32.294796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747732, 35.609791, 32.105545>,  <28.873671, 35.439949, 31.991995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747732, 35.609791, 32.105545>,  <28.537834, 35.892860, 32.294796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747732, 35.609791, 32.105545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315759, -0.354334, 0.880195,
		-0.790532, -0.611270, 0.037519,
		0.524743, -0.707670, -0.473127,
		28.905155, 35.397491, 31.963608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312239, 35.267483, 32.528122>,  <28.537834, 35.892860, 32.294796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312239, 35.267483, 32.528122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693472, 35.258842, 32.407349>,  <28.922213, 35.253658, 32.334885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693472, 35.258842, 32.407349>,  <28.312239, 35.267483, 32.528122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693472, 35.258842, 32.407349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284512, -0.276668, 0.917882,
		-0.103361, -0.960723, -0.257542,
		0.953084, -0.021599, -0.301934,
		28.979397, 35.252361, 32.316769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580975, 34.845860, 32.996346>,  <28.312239, 35.267483, 32.528122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580975, 34.845860, 32.996346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897032, 35.011494, 32.815586>,  <29.086666, 35.110874, 32.707130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897032, 35.011494, 32.815586>,  <28.580975, 34.845860, 32.996346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897032, 35.011494, 32.815586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567245, -0.214733, 0.795061,
		0.232185, -0.884547, -0.404557,
		0.790141, 0.414084, -0.451898,
		29.134073, 35.135719, 32.680016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056633, 34.376534, 32.977840>,  <28.580975, 34.845860, 32.996346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056633, 34.376534, 32.977840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268051, 34.715714, 32.961735>,  <29.394901, 34.919220, 32.952072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268051, 34.715714, 32.961735>,  <29.056633, 34.376534, 32.977840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268051, 34.715714, 32.961735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303709, -0.144591, 0.941730,
		0.792718, -0.509975, -0.333953,
		0.528545, 0.847950, -0.040264,
		29.426615, 34.970100, 32.949657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486000, 34.292877, 33.520115>,  <29.056633, 34.376534, 32.977840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486000, 34.292877, 33.520115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522299, 34.685425, 33.452374>,  <29.544079, 34.920952, 33.411728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522299, 34.685425, 33.452374>,  <29.486000, 34.292877, 33.520115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522299, 34.685425, 33.452374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266220, 0.139961, 0.953697,
		0.959631, -0.131631, -0.248559,
		0.090748, 0.981369, -0.169354,
		29.549522, 34.979836, 33.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078220, 34.505154, 33.945637>,  <29.486000, 34.292877, 33.520115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078220, 34.505154, 33.945637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857689, 34.835247, 33.896599>,  <29.725370, 35.033302, 33.867176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857689, 34.835247, 33.896599>,  <30.078220, 34.505154, 33.945637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857689, 34.835247, 33.896599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240524, 0.297928, 0.923790,
		0.798866, 0.479823, -0.362744,
		-0.551327, 0.825233, -0.122596,
		29.692291, 35.082817, 33.859821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498608, 35.026024, 34.194214>,  <30.078220, 34.505154, 33.945637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498608, 35.026024, 34.194214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138412, 35.199898, 34.189091>,  <29.922295, 35.304222, 34.186016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138412, 35.199898, 34.189091>,  <30.498608, 35.026024, 34.194214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138412, 35.199898, 34.189091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214383, 0.469356, 0.856589,
		0.378363, 0.768604, -0.515840,
		-0.900490, 0.434689, -0.012811,
		29.868265, 35.330303, 34.185246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974457, 35.648655, 34.312233>,  <30.498608, 35.026024, 34.194214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974457, 35.648655, 34.312233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690908, 35.684212, 34.592117>,  <30.520779, 35.705547, 34.760048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690908, 35.684212, 34.592117>,  <30.974457, 35.648655, 34.312233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690908, 35.684212, 34.592117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200878, 0.925500, -0.321089,
		-0.676128, -0.368168, -0.638203,
		-0.708871, 0.088896, 0.699713,
		30.478247, 35.710880, 34.802032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369020, 35.535149, 34.935844>,  <30.974457, 35.648655, 34.312233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369020, 35.535149, 34.935844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563147, 35.216011, 34.792782>,  <31.679623, 35.024529, 34.706944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563147, 35.216011, 34.792782>,  <31.369020, 35.535149, 34.935844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563147, 35.216011, 34.792782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873655, 0.426334, 0.234450,
		-0.034573, -0.426249, 0.903945,
		0.485317, -0.797841, -0.357655,
		31.708742, 34.976658, 34.685486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039398, 35.463139, 35.341213>,  <31.369020, 35.535149, 34.935844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039398, 35.463139, 35.341213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054871, 35.269650, 34.991467>,  <32.064152, 35.153557, 34.781620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054871, 35.269650, 34.991467>,  <32.039398, 35.463139, 35.341213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054871, 35.269650, 34.991467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992316, 0.121509, -0.023327,
		0.117527, -0.866744, 0.484709,
		0.038678, -0.483726, -0.874364,
		32.066475, 35.124531, 34.729156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438190, 34.786018, 35.229576>,  <32.039398, 35.463139, 35.341213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438190, 34.786018, 35.229576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441311, 34.977310, 34.878296>,  <32.443184, 35.092087, 34.667530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441311, 34.977310, 34.878296>,  <32.438190, 34.786018, 35.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441311, 34.977310, 34.878296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979513, 0.173076, 0.102953,
		0.201231, -0.861010, -0.467084,
		0.007803, 0.478233, -0.878199,
		32.443653, 35.120781, 34.614838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002518, 34.482430, 34.679005>,  <32.438190, 34.786018, 35.229576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002518, 34.482430, 34.679005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907257, 34.868542, 34.721935>,  <32.850101, 35.100208, 34.747692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907257, 34.868542, 34.721935>,  <33.002518, 34.482430, 34.679005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907257, 34.868542, 34.721935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932332, 0.196255, 0.303711,
		0.272103, 0.172392, -0.946700,
		-0.238152, 0.965280, 0.107325,
		32.835812, 35.158127, 34.754131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485031, 34.940029, 34.283859>,  <33.002518, 34.482430, 34.679005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485031, 34.940029, 34.283859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313908, 35.106880, 34.604603>,  <33.211235, 35.206989, 34.797050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313908, 35.106880, 34.604603>,  <33.485031, 34.940029, 34.283859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313908, 35.106880, 34.604603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893850, 0.326966, 0.306799,
		-0.134208, 0.847997, -0.512727,
		-0.427809, 0.417126, 0.801863,
		33.185566, 35.232018, 34.845161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685501, 35.667576, 34.341404>,  <33.485031, 34.940029, 34.283859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685501, 35.667576, 34.341404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599987, 35.541550, 34.711277>,  <33.548679, 35.465935, 34.933201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599987, 35.541550, 34.711277>,  <33.685501, 35.667576, 34.341404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599987, 35.541550, 34.711277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822551, 0.452568, 0.344371,
		-0.526979, 0.834217, 0.162404,
		-0.213782, -0.315062, 0.924680,
		33.535854, 35.447029, 34.988682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705086, 36.296326, 34.751816>,  <33.685501, 35.667576, 34.341404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705086, 36.296326, 34.751816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765774, 35.981915, 34.991528>,  <33.802185, 35.793266, 35.135353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765774, 35.981915, 34.991528>,  <33.705086, 36.296326, 34.751816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765774, 35.981915, 34.991528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713412, 0.506724, 0.484019,
		-0.684123, 0.354097, 0.637645,
		0.151720, -0.786032, 0.599279,
		33.811291, 35.746105, 35.171310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573372, 36.623020, 35.358040>,  <33.705086, 36.296326, 34.751816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573372, 36.623020, 35.358040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792030, 36.298733, 35.441860>,  <33.923225, 36.104160, 35.492153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792030, 36.298733, 35.441860>,  <33.573372, 36.623020, 35.358040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792030, 36.298733, 35.441860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646062, 0.567545, 0.510389,
		-0.532713, -0.143618, 0.834021,
		0.546645, -0.810720, 0.209552,
		33.956024, 36.055515, 35.504726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807812, 36.660084, 36.067844>,  <33.573372, 36.623020, 35.358040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807812, 36.660084, 36.067844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048416, 36.387005, 35.901897>,  <34.192780, 36.223160, 35.802330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048416, 36.387005, 35.901897>,  <33.807812, 36.660084, 36.067844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048416, 36.387005, 35.901897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759106, 0.326652, 0.563077,
		-0.248891, -0.653626, 0.714721,
		0.601507, -0.682694, -0.414871,
		34.228867, 36.182198, 35.777435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218281, 36.553036, 36.626656>,  <33.807812, 36.660084, 36.067844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218281, 36.553036, 36.626656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451794, 36.398125, 36.341217>,  <34.591904, 36.305180, 36.169956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451794, 36.398125, 36.341217>,  <34.218281, 36.553036, 36.626656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451794, 36.398125, 36.341217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806975, 0.373518, 0.457467,
		0.089375, -0.842913, 0.530574,
		0.583784, -0.387274, -0.713593,
		34.626930, 36.281944, 36.127140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776123, 36.198311, 36.974636>,  <34.218281, 36.553036, 36.626656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776123, 36.198311, 36.974636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908478, 36.198891, 36.597168>,  <34.987892, 36.199238, 36.370689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908478, 36.198891, 36.597168>,  <34.776123, 36.198311, 36.974636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908478, 36.198891, 36.597168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866033, 0.396739, 0.304278,
		0.374832, -0.917930, 0.130020,
		0.330890, 0.001452, -0.943668,
		35.007744, 36.199326, 36.314068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271469, 35.715000, 36.849209>,  <34.776123, 36.198311, 36.974636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271469, 35.715000, 36.849209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341995, 36.018349, 36.598198>,  <35.384312, 36.200356, 36.447590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341995, 36.018349, 36.598198>,  <35.271469, 35.715000, 36.849209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341995, 36.018349, 36.598198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796663, 0.264496, 0.543479,
		0.578136, -0.595752, -0.557529,
		0.176314, 0.758368, -0.627528,
		35.394890, 36.245857, 36.409939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084206, 35.789413, 36.662762>,  <35.271469, 35.715000, 36.849209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084206, 35.789413, 36.662762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912708, 36.135887, 36.560070>,  <35.809811, 36.343769, 36.498455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912708, 36.135887, 36.560070>,  <36.084206, 35.789413, 36.662762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912708, 36.135887, 36.560070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763677, 0.499305, 0.409257,
		0.482679, -0.020596, -0.875555,
		-0.428740, 0.866181, -0.256733,
		35.784084, 36.395741, 36.483051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616241, 36.207687, 36.341404>,  <36.084206, 35.789413, 36.662762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616241, 36.207687, 36.341404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337261, 36.478779, 36.434566>,  <36.169872, 36.641434, 36.490463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337261, 36.478779, 36.434566>,  <36.616241, 36.207687, 36.341404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337261, 36.478779, 36.434566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686957, 0.539733, 0.486600,
		0.204076, 0.499376, -0.842008,
		-0.697455, 0.677726, 0.232903,
		36.128025, 36.682098, 36.504436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919289, 36.861122, 36.202339>,  <36.616241, 36.207687, 36.341404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919289, 36.861122, 36.202339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626633, 36.926777, 36.466991>,  <36.451038, 36.966171, 36.625782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626633, 36.926777, 36.466991>,  <36.919289, 36.861122, 36.202339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626633, 36.926777, 36.466991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624956, 0.549152, 0.554854,
		-0.272262, 0.819445, -0.504363,
		-0.731645, 0.164139, 0.661630,
		36.407139, 36.976017, 36.665482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012787, 37.639767, 36.453053>,  <36.919289, 36.861122, 36.202339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012787, 37.639767, 36.453053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754910, 37.486023, 36.717369>,  <36.600185, 37.393776, 36.875957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754910, 37.486023, 36.717369>,  <37.012787, 37.639767, 36.453053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754910, 37.486023, 36.717369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450016, 0.507935, 0.734498,
		-0.617950, 0.770889, -0.154492,
		-0.644689, -0.384359, 0.660791,
		36.561504, 37.370716, 36.915607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699429, 38.209114, 37.006405>,  <37.012787, 37.639767, 36.453053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699429, 38.209114, 37.006405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687660, 37.844261, 37.169937>,  <36.680599, 37.625347, 37.268059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687660, 37.844261, 37.169937>,  <36.699429, 38.209114, 37.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687660, 37.844261, 37.169937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454972, 0.351965, 0.817998,
		-0.890020, 0.210073, 0.404641,
		-0.029420, -0.912135, 0.408834,
		36.678833, 37.570621, 37.292587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496784, 38.306110, 37.764126>,  <36.699429, 38.209114, 37.006405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496784, 38.306110, 37.764126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652756, 37.938499, 37.740993>,  <36.746338, 37.717934, 37.727116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652756, 37.938499, 37.740993>,  <36.496784, 38.306110, 37.764126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652756, 37.938499, 37.740993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493885, 0.155716, 0.855471,
		-0.777197, -0.362132, 0.514612,
		0.389926, -0.919028, -0.057830,
		36.769733, 37.662792, 37.723644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347576, 38.037796, 38.365261>,  <36.496784, 38.306110, 37.764126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347576, 38.037796, 38.365261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649822, 37.816132, 38.225571>,  <36.831169, 37.683132, 38.141758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649822, 37.816132, 38.225571>,  <36.347576, 38.037796, 38.365261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649822, 37.816132, 38.225571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427173, 0.012725, 0.904081,
		-0.496564, -0.832311, 0.246339,
		0.755611, -0.554163, -0.349222,
		36.876507, 37.649883, 38.120804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388241, 37.542931, 38.760479>,  <36.347576, 38.037796, 38.365261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388241, 37.542931, 38.760479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744957, 37.497341, 38.585335>,  <36.958988, 37.469990, 38.480247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744957, 37.497341, 38.585335>,  <36.388241, 37.542931, 38.760479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744957, 37.497341, 38.585335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438071, -0.024530, 0.898606,
		-0.113155, -0.993181, 0.028051,
		0.891790, -0.113970, -0.437859,
		37.012493, 37.463150, 38.453976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763321, 36.878674, 38.977016>,  <36.388241, 37.542931, 38.760479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763321, 36.878674, 38.977016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056438, 37.133774, 38.882122>,  <37.232311, 37.286835, 38.825184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056438, 37.133774, 38.882122>,  <36.763321, 36.878674, 38.977016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056438, 37.133774, 38.882122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484774, -0.244648, 0.839727,
		0.477495, -0.730358, -0.488442,
		0.732798, 0.637749, -0.237240,
		37.276279, 37.325100, 38.810951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432522, 36.613087, 39.338295>,  <36.763321, 36.878674, 38.977016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432522, 36.613087, 39.338295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526356, 36.991207, 39.247631>,  <37.582657, 37.218079, 39.193233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526356, 36.991207, 39.247631>,  <37.432522, 36.613087, 39.338295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526356, 36.991207, 39.247631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425439, 0.109814, 0.898300,
		0.874053, -0.307162, -0.376407,
		0.234589, 0.945300, -0.226662,
		37.596733, 37.274796, 39.179634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142334, 36.727802, 39.416786>,  <37.432522, 36.613087, 39.338295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142334, 36.727802, 39.416786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983177, 37.092251, 39.459755>,  <37.887684, 37.310921, 39.485538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983177, 37.092251, 39.459755>,  <38.142334, 36.727802, 39.416786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983177, 37.092251, 39.459755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502506, 0.118470, 0.856419,
		0.767575, 0.394743, -0.504982,
		-0.397890, 0.911122, 0.107426,
		37.863811, 37.365589, 39.491982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587925, 37.179409, 39.838432>,  <38.142334, 36.727802, 39.416786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587925, 37.179409, 39.838432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275848, 37.429485, 39.846848>,  <38.088604, 37.579529, 39.851894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275848, 37.429485, 39.846848>,  <38.587925, 37.179409, 39.838432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275848, 37.429485, 39.846848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190158, 0.205002, 0.960111,
		0.595937, 0.753071, -0.278825,
		-0.780191, 0.625187, 0.021034,
		38.041790, 37.617043, 39.853157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762589, 37.849014, 40.093391>,  <38.587925, 37.179409, 39.838432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762589, 37.849014, 40.093391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367378, 37.828674, 40.151646>,  <38.130249, 37.816471, 40.186600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367378, 37.828674, 40.151646>,  <38.762589, 37.849014, 40.093391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367378, 37.828674, 40.151646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140775, 0.088772, 0.986054,
		-0.063072, 0.994753, -0.080551,
		-0.988030, -0.050853, 0.145636,
		38.070969, 37.813419, 40.195335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579472, 38.408497, 40.623058>,  <38.762589, 37.849014, 40.093391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579472, 38.408497, 40.623058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305958, 38.116638, 40.625732>,  <38.141850, 37.941521, 40.627335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305958, 38.116638, 40.625732>,  <38.579472, 38.408497, 40.623058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305958, 38.116638, 40.625732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062929, -0.049846, 0.996773,
		-0.726962, 0.682002, 0.080000,
		-0.683789, -0.729650, 0.006682,
		38.100822, 37.897743, 40.627735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200665, 38.578651, 41.198643>,  <38.579472, 38.408497, 40.623058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200665, 38.578651, 41.198643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120213, 38.192871, 41.130074>,  <38.071941, 37.961403, 41.088932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120213, 38.192871, 41.130074>,  <38.200665, 38.578651, 41.198643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120213, 38.192871, 41.130074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031781, -0.168480, 0.985193,
		-0.979050, 0.203596, 0.003235,
		-0.201126, -0.964450, -0.171421,
		38.059875, 37.903538, 41.078648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634586, 38.417152, 41.655098>,  <38.200665, 38.578651, 41.198643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634586, 38.417152, 41.655098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792580, 38.054832, 41.593754>,  <37.887375, 37.837440, 41.556946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792580, 38.054832, 41.593754>,  <37.634586, 38.417152, 41.655098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792580, 38.054832, 41.593754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075312, -0.134447, 0.988055,
		-0.915597, -0.401812, 0.015113,
		0.394981, -0.905799, -0.153360,
		37.911076, 37.783092, 41.547745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404083, 37.903576, 42.193085>,  <37.634586, 38.417152, 41.655098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404083, 37.903576, 42.193085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727348, 37.713322, 42.054153>,  <37.921307, 37.599167, 41.970795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727348, 37.713322, 42.054153>,  <37.404083, 37.903576, 42.193085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727348, 37.713322, 42.054153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204655, -0.326193, 0.922884,
		-0.552258, -0.816924, -0.166275,
		0.808163, -0.475640, -0.347330,
		37.969799, 37.570629, 41.949955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404861, 37.249313, 42.501572>,  <37.404083, 37.903576, 42.193085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404861, 37.249313, 42.501572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779282, 37.333603, 42.388851>,  <38.003933, 37.384178, 42.321220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779282, 37.333603, 42.388851>,  <37.404861, 37.249313, 42.501572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779282, 37.333603, 42.388851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324606, -0.208004, 0.922695,
		0.135819, -0.955159, -0.263104,
		0.936047, 0.210724, -0.281800,
		38.060097, 37.396820, 42.304310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899784, 36.779861, 42.926212>,  <37.404861, 37.249313, 42.501572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899784, 36.779861, 42.926212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131855, 37.068554, 42.775215>,  <38.271099, 37.241768, 42.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131855, 37.068554, 42.775215>,  <37.899784, 36.779861, 42.926212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131855, 37.068554, 42.775215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633103, -0.108023, 0.766493,
		0.512421, -0.683696, -0.519600,
		0.580177, 0.721728, -0.377496,
		38.305908, 37.285072, 42.661964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509773, 36.505241, 42.776905>,  <37.899784, 36.779861, 42.926212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509773, 36.505241, 42.776905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574764, 36.896141, 42.831432>,  <38.613758, 37.130680, 42.864147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574764, 36.896141, 42.831432>,  <38.509773, 36.505241, 42.776905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574764, 36.896141, 42.831432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782987, -0.211763, 0.584884,
		0.600444, 0.011701, -0.799581,
		0.162478, 0.977251, 0.136314,
		38.623508, 37.189316, 42.872326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233925, 36.591137, 42.846912>,  <38.509773, 36.505241, 42.776905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233925, 36.591137, 42.846912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055786, 36.894676, 43.036995>,  <38.948902, 37.076797, 43.151043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055786, 36.894676, 43.036995>,  <39.233925, 36.591137, 42.846912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055786, 36.894676, 43.036995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692390, -0.044624, 0.720143,
		0.567683, 0.649740, -0.505544,
		-0.445346, 0.758846, 0.475205,
		38.922184, 37.122330, 43.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792229, 36.939342, 43.196655>,  <39.233925, 36.591137, 42.846912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792229, 36.939342, 43.196655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457600, 37.062668, 43.377800>,  <39.256821, 37.136662, 43.486488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457600, 37.062668, 43.377800>,  <39.792229, 36.939342, 43.196655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457600, 37.062668, 43.377800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479989, 0.013999, 0.877163,
		0.264100, 0.951182, -0.159698,
		-0.836577, 0.308311, 0.452860,
		39.206627, 37.155163, 43.513657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984409, 37.460533, 43.659962>,  <39.792229, 36.939342, 43.196655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984409, 37.460533, 43.659962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619225, 37.359364, 43.788044>,  <39.400112, 37.298660, 43.864895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619225, 37.359364, 43.788044>,  <39.984409, 37.460533, 43.659962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619225, 37.359364, 43.788044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331457, -0.001986, 0.943468,
		-0.237989, 0.967484, 0.085647,
		-0.912961, -0.252924, 0.320207,
		39.345337, 37.283485, 43.884106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858841, 37.799911, 44.381199>,  <39.984409, 37.460533, 43.659962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858841, 37.799911, 44.381199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606651, 37.489555, 44.372223>,  <39.455338, 37.303341, 44.366837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606651, 37.489555, 44.372223>,  <39.858841, 37.799911, 44.381199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606651, 37.489555, 44.372223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317089, -0.283831, 0.904928,
		-0.708491, 0.563417, 0.424973,
		-0.630473, -0.775887, -0.022439,
		39.417511, 37.256790, 44.365490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713684, 37.630363, 45.014442>,  <39.858841, 37.799911, 44.381199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713684, 37.630363, 45.014442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571194, 37.283676, 44.874786>,  <39.485699, 37.075665, 44.790993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571194, 37.283676, 44.874786>,  <39.713684, 37.630363, 45.014442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571194, 37.283676, 44.874786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269624, -0.453103, 0.849706,
		-0.894655, 0.208549, 0.395095,
		-0.356224, -0.866721, -0.349141,
		39.464325, 37.023659, 44.770042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213615, 37.330498, 45.507774>,  <39.713684, 37.630363, 45.014442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213615, 37.330498, 45.507774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389759, 37.044125, 45.291065>,  <39.495445, 36.872299, 45.161041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389759, 37.044125, 45.291065>,  <39.213615, 37.330498, 45.507774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389759, 37.044125, 45.291065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210091, -0.504504, 0.837459,
		-0.872893, -0.482607, -0.071753,
		0.440363, -0.715938, -0.541769,
		39.521870, 36.829342, 45.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319118, 36.809502, 45.963623>,  <39.213615, 37.330498, 45.507774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319118, 36.809502, 45.963623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489750, 36.633892, 45.647320>,  <39.592129, 36.528526, 45.457539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489750, 36.633892, 45.647320>,  <39.319118, 36.809502, 45.963623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489750, 36.633892, 45.647320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510458, -0.604877, 0.611193,
		-0.746637, -0.664366, -0.033922,
		0.426575, -0.439024, -0.790754,
		39.617722, 36.502186, 45.410095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113255, 36.073502, 45.941006>,  <39.319118, 36.809502, 45.963623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113255, 36.073502, 45.941006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464699, 36.140610, 45.762161>,  <39.675564, 36.180874, 45.654854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464699, 36.140610, 45.762161>,  <39.113255, 36.073502, 45.941006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464699, 36.140610, 45.762161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449655, -0.605915, 0.656260,
		-0.160810, -0.777639, -0.607798,
		0.878607, 0.167766, -0.447107,
		39.728279, 36.190941, 45.628029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373062, 35.385838, 45.986156>,  <39.113255, 36.073502, 45.941006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373062, 35.385838, 45.986156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678692, 35.630234, 45.903320>,  <39.862068, 35.776871, 45.853619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678692, 35.630234, 45.903320>,  <39.373062, 35.385838, 45.986156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678692, 35.630234, 45.903320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617554, -0.599848, 0.508734,
		0.186613, -0.516595, -0.835647,
		0.764070, 0.610993, -0.207086,
		39.907913, 35.813530, 45.841194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907337, 34.906601, 45.793839>,  <39.373062, 35.385838, 45.986156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907337, 34.906601, 45.793839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075626, 35.255131, 45.894863>,  <40.176601, 35.464249, 45.955479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075626, 35.255131, 45.894863>,  <39.907337, 34.906601, 45.793839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075626, 35.255131, 45.894863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588597, -0.474029, 0.654866,
		0.690321, -0.126862, -0.712294,
		0.420726, 0.871322, 0.252562,
		40.201843, 35.516529, 45.970631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691662, 34.759304, 45.888660>,  <39.907337, 34.906601, 45.793839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691662, 34.759304, 45.888660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621422, 35.104527, 46.078102>,  <40.579277, 35.311661, 46.191769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621422, 35.104527, 46.078102>,  <40.691662, 34.759304, 45.888660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621422, 35.104527, 46.078102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596220, -0.289585, 0.748774,
		0.783382, 0.413857, -0.463719,
		-0.175599, 0.863054, 0.473605,
		40.568741, 35.363441, 46.220184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333233, 35.075386, 45.993526>,  <40.691662, 34.759304, 45.888660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333233, 35.075386, 45.993526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082790, 35.235081, 46.261436>,  <40.932526, 35.330898, 46.422180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082790, 35.235081, 46.261436>,  <41.333233, 35.075386, 45.993526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082790, 35.235081, 46.261436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563981, -0.361276, 0.742566,
		0.538434, 0.842667, 0.001035,
		-0.626110, 0.399239, 0.669772,
		40.894958, 35.354851, 46.462368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683601, 35.319733, 46.526875>,  <41.333233, 35.075386, 45.993526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683601, 35.319733, 46.526875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328869, 35.296520, 46.710251>,  <41.116028, 35.282593, 46.820274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328869, 35.296520, 46.710251>,  <41.683601, 35.319733, 46.526875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328869, 35.296520, 46.710251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451074, -0.324102, 0.831559,
		0.100325, 0.944241, 0.313599,
		-0.886830, -0.058031, 0.458438,
		41.062820, 35.279110, 46.847782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644779, 35.811401, 47.205837>,  <41.683601, 35.319733, 46.526875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644779, 35.811401, 47.205837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393139, 35.503685, 47.250427>,  <41.242153, 35.319057, 47.277184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393139, 35.503685, 47.250427>,  <41.644779, 35.811401, 47.205837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393139, 35.503685, 47.250427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424066, -0.219467, 0.878637,
		-0.651459, 0.600026, 0.464296,
		-0.629102, -0.769288, 0.111477,
		41.204407, 35.272900, 47.283871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281494, 35.946133, 47.717575>,  <41.644779, 35.811401, 47.205837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281494, 35.946133, 47.717575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265625, 35.547344, 47.690842>,  <41.256104, 35.308071, 47.674801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265625, 35.547344, 47.690842>,  <41.281494, 35.946133, 47.717575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265625, 35.547344, 47.690842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365987, -0.076742, 0.927450,
		-0.929774, 0.012335, 0.367925,
		-0.039676, -0.996975, -0.066838,
		41.253723, 35.248253, 47.670792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930687, 35.790257, 48.276855>,  <41.281494, 35.946133, 47.717575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930687, 35.790257, 48.276855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160248, 35.491028, 48.143574>,  <41.297985, 35.311489, 48.063602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160248, 35.491028, 48.143574>,  <40.930687, 35.790257, 48.276855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160248, 35.491028, 48.143574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331878, -0.159516, 0.929737,
		-0.748663, -0.644160, 0.156723,
		0.573900, -0.748072, -0.333207,
		41.332417, 35.266605, 48.043613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044640, 35.287777, 48.851562>,  <40.930687, 35.790257, 48.276855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044640, 35.287777, 48.851562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325016, 35.156456, 48.598293>,  <41.493240, 35.077663, 48.446331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325016, 35.156456, 48.598293>,  <41.044640, 35.287777, 48.851562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325016, 35.156456, 48.598293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528484, -0.357076, 0.770195,
		-0.478947, -0.874479, -0.076786,
		0.700938, -0.328303, -0.633169,
		41.535297, 35.057964, 48.408344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194111, 34.605278, 49.083088>,  <41.044640, 35.287777, 48.851562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194111, 34.605278, 49.083088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502018, 34.751949, 48.874088>,  <41.686764, 34.839951, 48.748688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502018, 34.751949, 48.874088>,  <41.194111, 34.605278, 49.083088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502018, 34.751949, 48.874088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613492, -0.198909, 0.764240,
		0.176298, -0.908837, -0.378067,
		0.769770, 0.366675, -0.522497,
		41.732948, 34.861950, 48.717339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635014, 34.069992, 48.831799>,  <41.194111, 34.605278, 49.083088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635014, 34.069992, 48.831799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781834, 34.427975, 48.933250>,  <41.869926, 34.642765, 48.994122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781834, 34.427975, 48.933250>,  <41.635014, 34.069992, 48.831799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781834, 34.427975, 48.933250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429654, -0.404947, 0.807103,
		0.825028, -0.187275, -0.533157,
		0.367050, 0.894956, 0.253630,
		41.891949, 34.696461, 49.009338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168877, 33.900879, 49.364334>,  <41.635014, 34.069992, 48.831799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168877, 33.900879, 49.364334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549225, 33.825283, 49.462414>,  <42.777435, 33.779926, 49.521259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549225, 33.825283, 49.462414>,  <42.168877, 33.900879, 49.364334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549225, 33.825283, 49.462414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189023, 0.981688, 0.023638,
		-0.245174, 0.023871, 0.969185,
		0.950873, -0.188994, 0.245196,
		42.834488, 33.768585, 49.535973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400303, 33.827126, 50.199432>,  <42.168877, 33.900879, 49.364334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400303, 33.827126, 50.199432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005116, 33.832172, 50.261078>,  <41.768002, 33.835201, 50.298065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005116, 33.832172, 50.261078>,  <42.400303, 33.827126, 50.199432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005116, 33.832172, 50.261078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138389, -0.516768, -0.844866,
		0.068977, -0.856032, 0.512300,
		-0.987973, 0.012620, 0.154111,
		41.708725, 33.835960, 50.307312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195358, 33.143246, 50.055820>,  <42.400303, 33.827126, 50.199432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195358, 33.143246, 50.055820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921902, 33.420082, 49.963173>,  <41.757828, 33.586185, 49.907585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921902, 33.420082, 49.963173>,  <42.195358, 33.143246, 50.055820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921902, 33.420082, 49.963173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224600, -0.501472, -0.835512,
		-0.694403, -0.519165, 0.498269,
		-0.683637, 0.692093, -0.231619,
		41.716812, 33.627708, 49.893688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073109, 32.449078, 50.092827>,  <42.195358, 33.143246, 50.055820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073109, 32.449078, 50.092827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724506, 32.280346, 50.192860>,  <41.515347, 32.179108, 50.252880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724506, 32.280346, 50.192860>,  <42.073109, 32.449078, 50.092827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724506, 32.280346, 50.192860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304845, 0.066570, -0.950073,
		0.384125, -0.904226, -0.186609,
		-0.871503, -0.421834, 0.250077,
		41.463055, 32.153797, 50.267883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784256, 32.224701, 49.512604>,  <42.073109, 32.449078, 50.092827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784256, 32.224701, 49.512604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417484, 32.238007, 49.671665>,  <41.197422, 32.245991, 49.767101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417484, 32.238007, 49.671665>,  <41.784256, 32.224701, 49.512604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417484, 32.238007, 49.671665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364076, 0.338208, -0.867793,
		-0.163355, -0.940483, -0.298003,
		-0.916932, 0.033263, 0.397655,
		41.142406, 32.247986, 49.790962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364040, 32.182396, 48.998089>,  <41.784256, 32.224701, 49.512604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364040, 32.182396, 48.998089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118656, 32.366505, 49.254780>,  <40.971424, 32.476971, 49.408794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118656, 32.366505, 49.254780>,  <41.364040, 32.182396, 48.998089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118656, 32.366505, 49.254780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554858, 0.327029, -0.764973,
		-0.561960, -0.825350, 0.054766,
		-0.613460, 0.460272, 0.641729,
		40.934616, 32.504585, 49.447300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683502, 31.911875, 48.902988>,  <41.364040, 32.182396, 48.998089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683502, 31.911875, 48.902988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726723, 32.294609, 49.010906>,  <40.752655, 32.524250, 49.075657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726723, 32.294609, 49.010906>,  <40.683502, 31.911875, 48.902988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726723, 32.294609, 49.010906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610054, 0.278092, -0.741956,
		-0.784958, -0.084423, 0.613770,
		0.108047, 0.956837, 0.269793,
		40.759136, 32.581661, 49.091843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012249, 32.183121, 49.072414>,  <40.683502, 31.911875, 48.902988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012249, 32.183121, 49.072414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265675, 32.455673, 48.925816>,  <40.417728, 32.619205, 48.837856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265675, 32.455673, 48.925816>,  <40.012249, 32.183121, 49.072414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265675, 32.455673, 48.925816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676935, 0.258806, -0.689042,
		-0.374647, 0.684647, 0.625219,
		0.633560, 0.681380, -0.366501,
		40.455742, 32.660088, 48.815865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617970, 32.697674, 48.867523>,  <40.012249, 32.183121, 49.072414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617970, 32.697674, 48.867523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963737, 32.748730, 48.673004>,  <40.171200, 32.779362, 48.556293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963737, 32.748730, 48.673004>,  <39.617970, 32.697674, 48.867523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963737, 32.748730, 48.673004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501918, 0.162780, -0.849460,
		-0.029266, 0.978372, 0.204775,
		0.864420, 0.127640, -0.486298,
		40.223064, 32.787022, 48.527115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532997, 33.254063, 48.480606>,  <39.617970, 32.697674, 48.867523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532997, 33.254063, 48.480606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842880, 33.079613, 48.297466>,  <40.028809, 32.974945, 48.187580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842880, 33.079613, 48.297466>,  <39.532997, 33.254063, 48.480606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842880, 33.079613, 48.297466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439145, 0.149890, -0.885825,
		0.454954, 0.887317, -0.075400,
		0.774706, -0.436121, -0.457854,
		40.075291, 32.948776, 48.160110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574131, 33.574051, 47.925613>,  <39.532997, 33.254063, 48.480606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574131, 33.574051, 47.925613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821926, 33.289688, 47.792439>,  <39.970604, 33.119068, 47.712536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821926, 33.289688, 47.792439>,  <39.574131, 33.574051, 47.925613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821926, 33.289688, 47.792439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415665, 0.062722, -0.907353,
		0.665927, 0.700482, -0.256644,
		0.619487, -0.710909, -0.332934,
		40.007771, 33.076416, 47.692558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925350, 33.776409, 47.320686>,  <39.574131, 33.574051, 47.925613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925350, 33.776409, 47.320686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984665, 33.382675, 47.282520>,  <40.020252, 33.146435, 47.259621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984665, 33.382675, 47.282520>,  <39.925350, 33.776409, 47.320686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984665, 33.382675, 47.282520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354140, 0.037229, -0.934451,
		0.923361, 0.172358, -0.343071,
		0.148288, -0.984331, -0.095414,
		40.029152, 33.087376, 47.253895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283596, 33.762215, 46.723003>,  <39.925350, 33.776409, 47.320686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283596, 33.762215, 46.723003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114197, 33.405590, 46.787201>,  <40.012558, 33.191616, 46.825718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114197, 33.405590, 46.787201>,  <40.283596, 33.762215, 46.723003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114197, 33.405590, 46.787201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311008, -0.023302, -0.950121,
		0.850836, -0.452291, -0.267416,
		-0.423500, -0.891566, 0.160493,
		39.987148, 33.138119, 46.835350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415840, 33.246437, 46.103767>,  <40.283596, 33.762215, 46.723003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415840, 33.246437, 46.103767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094460, 33.116150, 46.303112>,  <39.901630, 33.037975, 46.422718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094460, 33.116150, 46.303112>,  <40.415840, 33.246437, 46.103767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094460, 33.116150, 46.303112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539948, 0.045978, -0.840442,
		0.250838, -0.944347, -0.212815,
		-0.803453, -0.325723, 0.498365,
		39.853424, 33.018433, 46.452621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193420, 32.654480, 45.755379>,  <40.415840, 33.246437, 46.103767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193420, 32.654480, 45.755379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880909, 32.790070, 45.965023>,  <39.693401, 32.871422, 46.090809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880909, 32.790070, 45.965023>,  <40.193420, 32.654480, 45.755379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880909, 32.790070, 45.965023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543708, 0.042817, -0.838182,
		-0.306564, -0.939820, 0.150852,
		-0.781281, 0.338976, 0.524113,
		39.646526, 32.891762, 46.122257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606602, 32.389351, 45.365993>,  <40.193420, 32.654480, 45.755379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606602, 32.389351, 45.365993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447170, 32.689281, 45.577236>,  <39.351509, 32.869240, 45.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447170, 32.689281, 45.577236>,  <39.606602, 32.389351, 45.365993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447170, 32.689281, 45.577236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604941, 0.217854, -0.765889,
		-0.689332, -0.624742, 0.366766,
		-0.398582, 0.749824, 0.528106,
		39.327595, 32.914230, 45.735668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889027, 32.334526, 45.158192>,  <39.606602, 32.389351, 45.365993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889027, 32.334526, 45.158192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921570, 32.688473, 45.341663>,  <38.941093, 32.900841, 45.451748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921570, 32.688473, 45.341663>,  <38.889027, 32.334526, 45.158192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921570, 32.688473, 45.341663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697312, 0.379353, -0.608151,
		-0.712136, -0.270366, 0.647892,
		0.081356, 0.884869, 0.458680,
		38.945976, 32.953934, 45.479267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172962, 32.558475, 45.283348>,  <38.889027, 32.334526, 45.158192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172962, 32.558475, 45.283348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440792, 32.853870, 45.251591>,  <38.601490, 33.031109, 45.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440792, 32.853870, 45.251591>,  <38.172962, 32.558475, 45.283348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440792, 32.853870, 45.251591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614722, 0.490995, -0.617285,
		-0.416875, 0.462125, 0.782723,
		0.669576, 0.738488, -0.079395,
		38.641666, 33.075417, 45.227772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836121, 33.176250, 45.422672>,  <38.172962, 32.558475, 45.283348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836121, 33.176250, 45.422672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152393, 33.272163, 45.197342>,  <38.342155, 33.329712, 45.062145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152393, 33.272163, 45.197342>,  <37.836121, 33.176250, 45.422672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152393, 33.272163, 45.197342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596407, 0.509515, -0.620236,
		0.138297, 0.826376, 0.545872,
		0.790678, 0.239786, -0.563321,
		38.389595, 33.344097, 45.028347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576725, 33.811146, 45.103817>,  <37.836121, 33.176250, 45.422672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576725, 33.811146, 45.103817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904224, 33.708088, 44.898579>,  <38.100723, 33.646252, 44.775436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904224, 33.708088, 44.898579>,  <37.576725, 33.811146, 45.103817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904224, 33.708088, 44.898579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312178, 0.550246, -0.774451,
		0.481865, 0.794258, 0.370081,
		0.818750, -0.257649, -0.513094,
		38.149849, 33.630795, 44.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823708, 34.404762, 44.748741>,  <37.576725, 33.811146, 45.103817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823708, 34.404762, 44.748741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995327, 34.123577, 44.521847>,  <38.098301, 33.954865, 44.385712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995327, 34.123577, 44.521847>,  <37.823708, 34.404762, 44.748741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995327, 34.123577, 44.521847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274958, 0.496531, -0.823320,
		0.860415, 0.509211, 0.019751,
		0.429050, -0.702966, -0.567234,
		38.124043, 33.912685, 44.351677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116100, 34.799179, 44.089417>,  <37.823708, 34.404762, 44.748741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116100, 34.799179, 44.089417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144127, 34.413860, 43.985756>,  <38.160942, 34.182671, 43.923561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144127, 34.413860, 43.985756>,  <38.116100, 34.799179, 44.089417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144127, 34.413860, 43.985756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225440, 0.237773, -0.944797,
		0.971734, 0.124622, -0.200504,
		0.070068, -0.963293, -0.259147,
		38.165146, 34.124874, 43.908012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421116, 34.704948, 43.398506>,  <38.116100, 34.799179, 44.089417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421116, 34.704948, 43.398506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212971, 34.371319, 43.471771>,  <38.088085, 34.171143, 43.515732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212971, 34.371319, 43.471771>,  <38.421116, 34.704948, 43.398506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212971, 34.371319, 43.471771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349925, 0.012608, -0.936693,
		0.778960, -0.551512, -0.298423,
		-0.520360, -0.834071, 0.183167,
		38.056862, 34.121098, 43.526722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399288, 34.311707, 42.725933>,  <38.421116, 34.704948, 43.398506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399288, 34.311707, 42.725933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112370, 34.130722, 42.937881>,  <37.940220, 34.022129, 43.065052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112370, 34.130722, 42.937881>,  <38.399288, 34.311707, 42.725933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112370, 34.130722, 42.937881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557637, -0.083187, -0.825906,
		0.417772, -0.887894, -0.192642,
		-0.717292, -0.452465, 0.529875,
		37.897182, 33.994984, 43.096844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098763, 33.794552, 42.210991>,  <38.399288, 34.311707, 42.725933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098763, 33.794552, 42.210991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816547, 33.852402, 42.488495>,  <37.647217, 33.887112, 42.654995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816547, 33.852402, 42.488495>,  <38.098763, 33.794552, 42.210991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816547, 33.852402, 42.488495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696515, 0.039026, -0.716480,
		-0.130693, -0.988717, 0.073196,
		-0.705540, 0.144621, 0.693756,
		37.604885, 33.895786, 42.696621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504944, 33.321289, 42.014065>,  <38.098763, 33.794552, 42.210991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504944, 33.321289, 42.014065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356369, 33.584835, 42.275734>,  <37.267223, 33.742962, 42.432735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356369, 33.584835, 42.275734>,  <37.504944, 33.321289, 42.014065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356369, 33.584835, 42.275734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827694, 0.084254, -0.554818,
		-0.420666, -0.747529, 0.514043,
		-0.371432, 0.658864, 0.654169,
		37.244938, 33.782494, 42.471985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012348, 33.013348, 42.374382>,  <37.504944, 33.321289, 42.014065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012348, 33.013348, 42.374382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969410, 33.409718, 42.341999>,  <36.943645, 33.647537, 42.322571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969410, 33.409718, 42.341999>,  <37.012348, 33.013348, 42.374382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969410, 33.409718, 42.341999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599569, -0.129473, -0.789781,
		-0.793091, -0.036242, 0.608024,
		-0.107346, 0.990921, -0.080954,
		36.937206, 33.706993, 42.317715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317871, 33.110271, 42.048420>,  <37.012348, 33.013348, 42.374382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317871, 33.110271, 42.048420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430767, 33.493904, 42.039452>,  <36.498505, 33.724083, 42.034069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430767, 33.493904, 42.039452>,  <36.317871, 33.110271, 42.048420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430767, 33.493904, 42.039452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661559, 0.177649, -0.728548,
		-0.694754, 0.220456, 0.684628,
		0.282236, 0.959083, -0.022422,
		36.515438, 33.781628, 42.032726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665546, 33.595963, 42.043121>,  <36.317871, 33.110271, 42.048420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665546, 33.595963, 42.043121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977768, 33.795872, 41.892941>,  <36.165100, 33.915817, 41.802834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977768, 33.795872, 41.892941>,  <35.665546, 33.595963, 42.043121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977768, 33.795872, 41.892941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580320, 0.356154, -0.732382,
		-0.232306, 0.789545, 0.568025,
		0.780553, 0.499773, -0.375452,
		36.211933, 33.945805, 41.780304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471798, 34.265400, 42.043934>,  <35.665546, 33.595963, 42.043121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471798, 34.265400, 42.043934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747215, 34.220612, 41.757336>,  <35.912468, 34.193737, 41.585377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747215, 34.220612, 41.757336>,  <35.471798, 34.265400, 42.043934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747215, 34.220612, 41.757336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650249, 0.342090, -0.678344,
		0.321064, 0.932972, 0.162733,
		0.688545, -0.111975, -0.716496,
		35.953777, 34.187019, 41.542385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250408, 34.716084, 41.646538>,  <35.471798, 34.265400, 42.043934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250408, 34.716084, 41.646538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511169, 34.529247, 41.407589>,  <35.667625, 34.417145, 41.264221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511169, 34.529247, 41.407589>,  <35.250408, 34.716084, 41.646538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511169, 34.529247, 41.407589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532580, 0.278755, -0.799159,
		0.539795, 0.839122, -0.067039,
		0.651905, -0.467086, -0.597370,
		35.706741, 34.389122, 41.228378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129158, 35.056885, 41.026859>,  <35.250408, 34.716084, 41.646538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129158, 35.056885, 41.026859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336704, 34.733826, 40.914791>,  <35.461231, 34.539989, 40.847549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336704, 34.733826, 40.914791>,  <35.129158, 35.056885, 41.026859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336704, 34.733826, 40.914791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460300, 0.012219, -0.887679,
		0.720352, 0.589544, -0.365419,
		0.518861, -0.807644, -0.280169,
		35.492363, 34.491531, 40.830742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433708, 35.219013, 40.330467>,  <35.129158, 35.056885, 41.026859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433708, 35.219013, 40.330467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434700, 34.819115, 40.339470>,  <35.435295, 34.579178, 40.344872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434700, 34.819115, 40.339470>,  <35.433708, 35.219013, 40.330467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434700, 34.819115, 40.339470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332865, -0.022049, -0.942717,
		0.942971, -0.005159, -0.332834,
		0.002475, -0.999744, 0.022509,
		35.435444, 34.519192, 40.346222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787731, 34.970448, 39.661701>,  <35.433708, 35.219013, 40.330467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787731, 34.970448, 39.661701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586521, 34.654251, 39.801468>,  <35.465794, 34.464535, 39.885326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586521, 34.654251, 39.801468>,  <35.787731, 34.970448, 39.661701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586521, 34.654251, 39.801468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319575, -0.205511, -0.925006,
		0.803017, -0.576966, -0.149244,
		-0.503026, -0.790490, 0.349413,
		35.435612, 34.417103, 39.906292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858982, 34.345264, 39.196724>,  <35.787731, 34.970448, 39.661701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858982, 34.345264, 39.196724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526051, 34.281353, 39.409027>,  <35.326290, 34.243008, 39.536407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526051, 34.281353, 39.409027>,  <35.858982, 34.345264, 39.196724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526051, 34.281353, 39.409027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461231, -0.331404, -0.823066,
		0.307403, -0.929861, 0.202142,
		-0.832327, -0.159778, 0.530755,
		35.276352, 34.233421, 39.568253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689098, 33.619942, 39.083702>,  <35.858982, 34.345264, 39.196724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689098, 33.619942, 39.083702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343781, 33.768288, 39.220634>,  <35.136589, 33.857296, 39.302792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343781, 33.768288, 39.220634>,  <35.689098, 33.619942, 39.083702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343781, 33.768288, 39.220634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466318, -0.326650, -0.822099,
		-0.193062, -0.869346, 0.454933,
		-0.863293, 0.370860, 0.342328,
		35.084793, 33.879547, 39.323334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181652, 33.073380, 39.047432>,  <35.689098, 33.619942, 39.083702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181652, 33.073380, 39.047432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990917, 33.424408, 39.067379>,  <34.876476, 33.635025, 39.079350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990917, 33.424408, 39.067379>,  <35.181652, 33.073380, 39.047432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990917, 33.424408, 39.067379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526895, -0.239958, -0.815354,
		-0.703568, -0.415068, 0.576811,
		-0.476838, 0.877576, 0.049870,
		34.847866, 33.687679, 39.082340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531116, 32.959915, 39.171627>,  <35.181652, 33.073380, 39.047432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531116, 32.959915, 39.171627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541759, 33.328331, 39.016205>,  <34.548145, 33.549381, 38.922951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541759, 33.328331, 39.016205>,  <34.531116, 32.959915, 39.171627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541759, 33.328331, 39.016205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767438, -0.230248, -0.598352,
		-0.640571, 0.314112, 0.700716,
		0.026611, 0.921043, -0.388552,
		34.549744, 33.604645, 38.899639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878990, 32.992569, 38.953995>,  <34.531116, 32.959915, 39.171627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878990, 32.992569, 38.953995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070816, 33.284424, 38.758999>,  <34.185909, 33.459538, 38.642002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070816, 33.284424, 38.758999>,  <33.878990, 32.992569, 38.953995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070816, 33.284424, 38.758999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500467, -0.228913, -0.834944,
		-0.720800, 0.644381, 0.255382,
		0.479562, 0.729638, -0.487492,
		34.214684, 33.503315, 38.612751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401684, 33.141300, 38.521950>,  <33.878990, 32.992569, 38.953995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401684, 33.141300, 38.521950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725224, 33.323437, 38.373123>,  <33.919346, 33.432716, 38.283829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725224, 33.323437, 38.373123>,  <33.401684, 33.141300, 38.521950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725224, 33.323437, 38.373123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323293, -0.184166, -0.928205,
		-0.491169, 0.871063, -0.001755,
		0.808848, 0.455338, -0.372065,
		33.967876, 33.460037, 38.261505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149231, 33.518284, 38.028671>,  <33.401684, 33.141300, 38.521950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149231, 33.518284, 38.028671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531975, 33.537315, 37.914017>,  <33.761620, 33.548733, 37.845222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531975, 33.537315, 37.914017>,  <33.149231, 33.518284, 38.028671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531975, 33.537315, 37.914017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278966, -0.125427, -0.952075,
		-0.081249, 0.990962, -0.106743,
		0.956858, 0.047577, -0.286635,
		33.819031, 33.551590, 37.828026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175968, 34.022362, 37.482494>,  <33.149231, 33.518284, 38.028671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175968, 34.022362, 37.482494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479050, 33.766251, 37.431995>,  <33.660896, 33.612583, 37.401695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479050, 33.766251, 37.431995>,  <33.175968, 34.022362, 37.482494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479050, 33.766251, 37.431995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161040, 0.004029, -0.986940,
		0.632420, 0.768136, -0.100057,
		0.757701, -0.640274, -0.126249,
		33.706360, 33.574169, 37.394119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576031, 34.293381, 36.951954>,  <33.175968, 34.022362, 37.482494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576031, 34.293381, 36.951954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666000, 33.903873, 36.965771>,  <33.719982, 33.670170, 36.974060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666000, 33.903873, 36.965771>,  <33.576031, 34.293381, 36.951954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666000, 33.903873, 36.965771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000185, -0.035489, -0.999370,
		0.974377, 0.224773, -0.008162,
		0.224921, -0.973765, 0.034539,
		33.733479, 33.611744, 36.976131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192677, 34.091129, 36.457214>,  <33.576031, 34.293381, 36.951954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192677, 34.091129, 36.457214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974152, 33.761211, 36.515533>,  <33.843037, 33.563263, 36.550526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974152, 33.761211, 36.515533>,  <34.192677, 34.091129, 36.457214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974152, 33.761211, 36.515533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188155, -0.048774, -0.980927,
		0.816173, -0.563328, -0.128543,
		-0.546315, -0.824792, 0.145801,
		33.810257, 33.513775, 36.559273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440857, 33.626762, 35.944725>,  <34.192677, 34.091129, 36.457214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440857, 33.626762, 35.944725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075329, 33.507011, 36.054493>,  <33.856010, 33.435162, 36.120354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075329, 33.507011, 36.054493>,  <34.440857, 33.626762, 35.944725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075329, 33.507011, 36.054493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240523, -0.145488, -0.959678,
		0.327230, -0.942978, 0.060943,
		-0.913821, -0.299377, 0.274415,
		33.801182, 33.417198, 36.136818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294487, 33.068699, 35.458282>,  <34.440857, 33.626762, 35.944725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294487, 33.068699, 35.458282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935505, 33.137936, 35.620575>,  <33.720116, 33.179478, 35.717949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935505, 33.137936, 35.620575>,  <34.294487, 33.068699, 35.458282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935505, 33.137936, 35.620575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436574, -0.217031, -0.873098,
		-0.063068, -0.960697, 0.270341,
		-0.897455, 0.173089, 0.405728,
		33.666267, 33.189861, 35.742294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745350, 33.213131, 34.966206>,  <34.294487, 33.068699, 35.458282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745350, 33.213131, 34.966206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968533, 33.310070, 34.648727>,  <35.102444, 33.368233, 34.458241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968533, 33.310070, 34.648727>,  <34.745350, 33.213131, 34.966206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968533, 33.310070, 34.648727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808501, -0.374373, 0.454060,
		-0.187099, -0.895049, -0.404822,
		0.557960, 0.242345, -0.793693,
		35.135921, 33.382774, 34.410618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208370, 32.659176, 34.770641>,  <34.745350, 33.213131, 34.966206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208370, 32.659176, 34.770641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358440, 33.012444, 34.658028>,  <35.448483, 33.224403, 34.590458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358440, 33.012444, 34.658028>,  <35.208370, 32.659176, 34.770641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358440, 33.012444, 34.658028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867341, -0.227305, 0.442777,
		0.327051, -0.410305, -0.851286,
		0.375175, 0.883166, -0.281534,
		35.470993, 33.277393, 34.573566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919167, 32.500336, 34.589973>,  <35.208370, 32.659176, 34.770641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919167, 32.500336, 34.589973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929047, 32.897476, 34.636669>,  <35.934975, 33.135761, 34.664688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929047, 32.897476, 34.636669>,  <35.919167, 32.500336, 34.589973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929047, 32.897476, 34.636669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825405, -0.086138, 0.557931,
		0.564001, 0.082578, -0.821635,
		0.024701, 0.992855, 0.116742,
		35.936459, 33.195332, 34.671692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647537, 32.766071, 34.387852>,  <35.919167, 32.500336, 34.589973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647537, 32.766071, 34.387852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464634, 33.017231, 34.639774>,  <36.354893, 33.167927, 34.790928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464634, 33.017231, 34.639774>,  <36.647537, 32.766071, 34.387852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464634, 33.017231, 34.639774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768100, -0.078114, 0.635547,
		0.448256, 0.774364, -0.446572,
		-0.457262, 0.627900, 0.629804,
		36.327454, 33.205601, 34.828716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193760, 33.137302, 34.550529>,  <36.647537, 32.766071, 34.387852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193760, 33.137302, 34.550529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925404, 33.220581, 34.835224>,  <36.764389, 33.270550, 35.006039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925404, 33.220581, 34.835224>,  <37.193760, 33.137302, 34.550529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925404, 33.220581, 34.835224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737057, 0.081600, 0.670886,
		0.081600, 0.974676, -0.208199,
		-0.670886, 0.208199, 0.711734,
		36.724136, 33.283039, 35.048744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572517, 33.646156, 34.903664>,  <37.193760, 33.137302, 34.550529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572517, 33.646156, 34.903664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289886, 33.493694, 35.142151>,  <37.120308, 33.402218, 35.285244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289886, 33.493694, 35.142151>,  <37.572517, 33.646156, 34.903664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289886, 33.493694, 35.142151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630088, 0.044629, 0.775240,
		-0.322094, 0.923434, 0.208626,
		-0.706573, -0.381153, 0.596219,
		37.077915, 33.379349, 35.321018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719925, 33.952240, 35.516785>,  <37.572517, 33.646156, 34.903664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719925, 33.952240, 35.516785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484066, 33.643253, 35.611115>,  <37.342552, 33.457863, 35.667713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484066, 33.643253, 35.611115>,  <37.719925, 33.952240, 35.516785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484066, 33.643253, 35.611115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452630, -0.074231, 0.888603,
		-0.668910, 0.630704, 0.393411,
		-0.589648, -0.772465, 0.235822,
		37.307171, 33.411514, 35.681862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539745, 34.070728, 36.166718>,  <37.719925, 33.952240, 35.516785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539745, 34.070728, 36.166718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512802, 33.676464, 36.104820>,  <37.496635, 33.439907, 36.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512802, 33.676464, 36.104820>,  <37.539745, 34.070728, 36.166718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512802, 33.676464, 36.104820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308333, -0.168067, 0.936314,
		-0.948891, 0.015359, 0.315231,
		-0.067361, -0.985656, -0.154742,
		37.492596, 33.380768, 36.058399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192543, 33.869011, 36.707951>,  <37.539745, 34.070728, 36.166718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192543, 33.869011, 36.707951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333954, 33.515697, 36.584770>,  <37.418800, 33.303711, 36.510860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333954, 33.515697, 36.584770>,  <37.192543, 33.869011, 36.707951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333954, 33.515697, 36.584770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274425, -0.216795, 0.936851,
		-0.894265, -0.415712, 0.165751,
		0.353526, -0.883280, -0.307954,
		37.440010, 33.250713, 36.492386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962406, 33.462006, 37.207043>,  <37.192543, 33.869011, 36.707951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962406, 33.462006, 37.207043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249763, 33.252171, 37.024300>,  <37.422176, 33.126270, 36.914654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249763, 33.252171, 37.024300>,  <36.962406, 33.462006, 37.207043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249763, 33.252171, 37.024300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347622, -0.298146, 0.888970,
		-0.602557, -0.797441, -0.031825,
		0.718390, -0.524592, -0.456858,
		37.465282, 33.094791, 36.887241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150284, 32.795471, 37.618069>,  <36.962406, 33.462006, 37.207043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150284, 32.795471, 37.618069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460739, 32.856575, 37.373356>,  <37.647011, 32.893238, 37.226528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460739, 32.856575, 37.373356>,  <37.150284, 32.795471, 37.618069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460739, 32.856575, 37.373356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624515, -0.320312, 0.712306,
		-0.087152, -0.934914, -0.344005,
		0.776135, 0.152758, -0.611784,
		37.693581, 32.902401, 37.189819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557281, 32.282288, 37.869148>,  <37.150284, 32.795471, 37.618069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557281, 32.282288, 37.869148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774632, 32.552631, 37.669968>,  <37.905041, 32.714836, 37.550457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774632, 32.552631, 37.669968>,  <37.557281, 32.282288, 37.869148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774632, 32.552631, 37.669968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779476, -0.185950, 0.598197,
		0.311700, -0.713191, -0.627855,
		0.543379, 0.675856, -0.497955,
		37.937645, 32.755386, 37.520580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171955, 31.890768, 37.781334>,  <37.557281, 32.282288, 37.869148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171955, 31.890768, 37.781334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210453, 32.288574, 37.764954>,  <38.233551, 32.527256, 37.755123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210453, 32.288574, 37.764954>,  <38.171955, 31.890768, 37.781334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210453, 32.288574, 37.764954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528321, -0.016169, 0.848890,
		0.843572, -0.103336, -0.526980,
		0.096241, 0.994515, -0.040955,
		38.239326, 32.586929, 37.752666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858768, 31.982660, 37.915024>,  <38.171955, 31.890768, 37.781334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858768, 31.982660, 37.915024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699772, 32.342289, 37.988419>,  <38.604374, 32.558067, 38.032455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699772, 32.342289, 37.988419>,  <38.858768, 31.982660, 37.915024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699772, 32.342289, 37.988419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610774, 0.109999, 0.784127,
		0.684804, 0.423753, -0.592854,
		-0.397490, 0.899074, 0.183490,
		38.580524, 32.612011, 38.043465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438354, 32.543213, 38.035660>,  <38.858768, 31.982660, 37.915024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438354, 32.543213, 38.035660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124207, 32.672661, 38.246738>,  <38.935719, 32.750328, 38.373386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124207, 32.672661, 38.246738>,  <39.438354, 32.543213, 38.035660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124207, 32.672661, 38.246738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563705, 0.021636, 0.825693,
		0.255791, 0.945941, -0.199416,
		-0.785371, 0.323616, 0.527698,
		38.888596, 32.769745, 38.405048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719696, 32.903790, 38.621513>,  <39.438354, 32.543213, 38.035660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719696, 32.903790, 38.621513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338921, 32.892902, 38.743546>,  <39.110455, 32.886368, 38.816765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338921, 32.892902, 38.743546>,  <39.719696, 32.903790, 38.621513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338921, 32.892902, 38.743546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290275, 0.237681, 0.926957,
		-0.097745, 0.970962, -0.218355,
		-0.951938, -0.027222, 0.305078,
		39.053341, 32.884735, 38.835068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519531, 33.463661, 39.023476>,  <39.719696, 32.903790, 38.621513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519531, 33.463661, 39.023476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250324, 33.198238, 39.154160>,  <39.088799, 33.038986, 39.232571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250324, 33.198238, 39.154160>,  <39.519531, 33.463661, 39.023476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250324, 33.198238, 39.154160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221558, 0.240563, 0.945009,
		-0.705659, 0.708395, -0.014888,
		-0.673021, -0.663555, 0.326706,
		39.048416, 32.999172, 39.252171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109798, 33.857502, 39.515194>,  <39.519531, 33.463661, 39.023476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109798, 33.857502, 39.515194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081772, 33.466160, 39.593071>,  <39.064957, 33.231354, 39.639797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081772, 33.466160, 39.593071>,  <39.109798, 33.857502, 39.515194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081772, 33.466160, 39.593071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229611, 0.174113, 0.957582,
		-0.970757, 0.111802, 0.212442,
		-0.070071, -0.978358, 0.194692,
		39.060749, 33.172653, 39.651478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869740, 33.844044, 40.207561>,  <39.109798, 33.857502, 39.515194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869740, 33.844044, 40.207561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971764, 33.460289, 40.159363>,  <39.032978, 33.230038, 40.130444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971764, 33.460289, 40.159363>,  <38.869740, 33.844044, 40.207561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971764, 33.460289, 40.159363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227788, -0.061496, 0.971767,
		-0.939712, -0.275305, 0.202852,
		0.255058, -0.959388, -0.120500,
		39.048283, 33.172474, 40.123215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653160, 33.493713, 40.849045>,  <38.869740, 33.844044, 40.207561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653160, 33.493713, 40.849045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911835, 33.233925, 40.689053>,  <39.067039, 33.078053, 40.593056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911835, 33.233925, 40.689053>,  <38.653160, 33.493713, 40.849045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911835, 33.233925, 40.689053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456634, -0.090390, 0.885051,
		-0.610973, -0.754991, 0.238119,
		0.646682, -0.649475, -0.399980,
		39.105839, 33.039082, 40.569057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633854, 32.882645, 41.368771>,  <38.653160, 33.493713, 40.849045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633854, 32.882645, 41.368771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980927, 32.867256, 41.170521>,  <39.189171, 32.858021, 41.051571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980927, 32.867256, 41.170521>,  <38.633854, 32.882645, 41.368771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980927, 32.867256, 41.170521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482041, -0.178539, 0.857765,
		-0.121485, -0.983181, -0.136372,
		0.867685, -0.038469, -0.495624,
		39.241230, 32.855713, 41.021835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939110, 32.295994, 41.662434>,  <38.633854, 32.882645, 41.368771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939110, 32.295994, 41.662434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237984, 32.504391, 41.497375>,  <39.417309, 32.629429, 41.398342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237984, 32.504391, 41.497375>,  <38.939110, 32.295994, 41.662434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237984, 32.504391, 41.497375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483088, 0.000654, 0.875571,
		0.456438, -0.853560, -0.251197,
		0.747188, 0.520994, -0.412643,
		39.462139, 32.660690, 41.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468094, 31.930855, 41.895580>,  <38.939110, 32.295994, 41.662434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468094, 31.930855, 41.895580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606010, 32.294899, 41.803654>,  <39.688759, 32.513325, 41.748497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606010, 32.294899, 41.803654>,  <39.468094, 31.930855, 41.895580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606010, 32.294899, 41.803654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240901, 0.150838, 0.958757,
		0.907240, -0.385936, -0.167238,
		0.344792, 0.910111, -0.229819,
		39.709450, 32.567932, 41.734707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140640, 32.012505, 42.180702>,  <39.468094, 31.930855, 41.895580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140640, 32.012505, 42.180702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998798, 32.385620, 42.154881>,  <39.913692, 32.609489, 42.139385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998798, 32.385620, 42.154881>,  <40.140640, 32.012505, 42.180702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998798, 32.385620, 42.154881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321955, 0.186633, 0.928177,
		0.877838, 0.308351, -0.366496,
		-0.354605, 0.932785, -0.064558,
		39.892418, 32.665455, 42.135513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712841, 32.375854, 42.338421>,  <40.140640, 32.012505, 42.180702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712841, 32.375854, 42.338421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393986, 32.608215, 42.404301>,  <40.202671, 32.747631, 42.443829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393986, 32.608215, 42.404301>,  <40.712841, 32.375854, 42.338421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393986, 32.608215, 42.404301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261470, 0.086230, 0.961352,
		0.544248, 0.809394, -0.220625,
		-0.797137, 0.580901, 0.164702,
		40.154846, 32.782486, 42.453712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048298, 33.134876, 42.452271>,  <40.712841, 32.375854, 42.338421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048298, 33.134876, 42.452271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682423, 33.163780, 42.611336>,  <40.462898, 33.181122, 42.706776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682423, 33.163780, 42.611336>,  <41.048298, 33.134876, 42.452271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682423, 33.163780, 42.611336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394198, -0.057715, 0.917211,
		0.089229, 0.995715, 0.024307,
		-0.914684, 0.072260, 0.397658,
		40.408016, 33.185459, 42.730633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084553, 33.617786, 42.817245>,  <41.048298, 33.134876, 42.452271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084553, 33.617786, 42.817245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784660, 33.403332, 42.972404>,  <40.604725, 33.274658, 43.065498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784660, 33.403332, 42.972404>,  <41.084553, 33.617786, 42.817245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784660, 33.403332, 42.972404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430096, 0.050695, 0.901359,
		-0.502914, 0.842609, 0.192582,
		-0.749730, -0.536135, 0.387898,
		40.559742, 33.242493, 43.088776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943710, 34.000710, 43.478016>,  <41.084553, 33.617786, 42.817245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943710, 34.000710, 43.478016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764145, 33.643906, 43.499176>,  <40.656406, 33.429825, 43.511871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764145, 33.643906, 43.499176>,  <40.943710, 34.000710, 43.478016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764145, 33.643906, 43.499176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505654, -0.204776, 0.838082,
		-0.736744, 0.402973, 0.542974,
		-0.448912, -0.892009, 0.052897,
		40.629471, 33.376305, 43.515045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591187, 33.929127, 44.082397>,  <40.943710, 34.000710, 43.478016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591187, 33.929127, 44.082397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662590, 33.554359, 43.962185>,  <40.705433, 33.329498, 43.890057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662590, 33.554359, 43.962185>,  <40.591187, 33.929127, 44.082397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662590, 33.554359, 43.962185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289354, -0.241949, 0.926140,
		-0.940430, -0.252287, 0.227910,
		0.178510, -0.936916, -0.300536,
		40.716145, 33.273285, 43.872025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313614, 33.528259, 44.580582>,  <40.591187, 33.929127, 44.082397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313614, 33.528259, 44.580582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548306, 33.267036, 44.389057>,  <40.689121, 33.110302, 44.274143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548306, 33.267036, 44.389057>,  <40.313614, 33.528259, 44.580582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548306, 33.267036, 44.389057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438801, -0.240552, 0.865788,
		-0.680589, -0.718088, 0.145423,
		0.586730, -0.653057, -0.478815,
		40.724323, 33.071117, 44.245411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289761, 32.878784, 44.970394>,  <40.313614, 33.528259, 44.580582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289761, 32.878784, 44.970394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620197, 32.863071, 44.745529>,  <40.818459, 32.853645, 44.610611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620197, 32.863071, 44.745529>,  <40.289761, 32.878784, 44.970394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620197, 32.863071, 44.745529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551246, -0.150840, 0.820594,
		-0.117022, -0.987778, -0.102960,
		0.826095, -0.039271, -0.562160,
		40.868027, 32.851288, 44.576881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627235, 32.193657, 45.104244>,  <40.289761, 32.878784, 44.970394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627235, 32.193657, 45.104244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904072, 32.443989, 44.960392>,  <41.070175, 32.594189, 44.874081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904072, 32.443989, 44.960392>,  <40.627235, 32.193657, 45.104244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904072, 32.443989, 44.960392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576857, -0.180083, 0.796747,
		0.433868, -0.758882, -0.485651,
		0.692095, 0.625834, -0.359634,
		41.111702, 32.631741, 44.852501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334312, 31.859684, 45.369236>,  <40.627235, 32.193657, 45.104244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334312, 31.859684, 45.369236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415539, 32.237339, 45.265411>,  <41.464275, 32.463932, 45.203117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415539, 32.237339, 45.265411>,  <41.334312, 31.859684, 45.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415539, 32.237339, 45.265411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599821, 0.089580, 0.795104,
		0.773938, -0.317147, -0.548122,
		0.203064, 0.944136, -0.259560,
		41.476460, 32.520580, 45.187542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110287, 32.003777, 45.434361>,  <41.334312, 31.859684, 45.369236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110287, 32.003777, 45.434361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949383, 32.369968, 45.438133>,  <41.852840, 32.589684, 45.440395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949383, 32.369968, 45.438133>,  <42.110287, 32.003777, 45.434361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949383, 32.369968, 45.438133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648665, 0.277721, 0.708594,
		0.646084, 0.291153, -0.705554,
		-0.402256, 0.915479, 0.009430,
		41.828705, 32.644611, 45.440964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736187, 32.427761, 45.462166>,  <42.110287, 32.003777, 45.434361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736187, 32.427761, 45.462166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418888, 32.627712, 45.601234>,  <42.228508, 32.747684, 45.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418888, 32.627712, 45.601234>,  <42.736187, 32.427761, 45.462166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418888, 32.627712, 45.601234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576529, 0.432936, 0.692951,
		0.195873, 0.750125, -0.631622,
		-0.793252, 0.499879, 0.347668,
		42.180912, 32.777676, 45.705536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115955, 33.033871, 45.531555>,  <42.736187, 32.427761, 45.462166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115955, 33.033871, 45.531555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772842, 33.041950, 45.737003>,  <42.566975, 33.046799, 45.860271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772842, 33.041950, 45.737003>,  <43.115955, 33.033871, 45.531555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772842, 33.041950, 45.737003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506700, 0.201227, 0.838309,
		-0.086420, 0.979336, -0.182844,
		-0.857780, 0.020201, 0.513620,
		42.515507, 33.048012, 45.891090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330463, 33.613316, 45.976006>,  <43.115955, 33.033871, 45.531555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330463, 33.613316, 45.976006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044022, 33.390934, 46.144817>,  <42.872158, 33.257504, 46.246105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044022, 33.390934, 46.144817>,  <43.330463, 33.613316, 45.976006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044022, 33.390934, 46.144817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353069, 0.233051, 0.906107,
		-0.602111, 0.797871, 0.029403,
		-0.716104, -0.555958, 0.422026,
		42.829189, 33.224148, 46.271423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928581, 33.951714, 46.516586>,  <43.330463, 33.613316, 45.976006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928581, 33.951714, 46.516586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976444, 33.559162, 46.576698>,  <43.005161, 33.323631, 46.612766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976444, 33.559162, 46.576698>,  <42.928581, 33.951714, 46.516586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976444, 33.559162, 46.576698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130212, 0.165569, 0.977564,
		-0.984239, -0.097409, 0.147599,
		0.119661, -0.981376, 0.150276,
		43.012344, 33.264748, 46.621780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644474, 34.234016, 46.412067>,  <42.928581, 33.951714, 46.516586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644474, 34.234016, 46.412067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993015, 34.347443, 46.251904>,  <44.202141, 34.415497, 46.155804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993015, 34.347443, 46.251904>,  <43.644474, 34.234016, 46.412067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993015, 34.347443, 46.251904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434234, 0.065743, -0.898398,
		-0.228429, 0.956697, 0.180419,
		0.871356, 0.283564, -0.400412,
		44.254421, 34.432510, 46.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423515, 34.766266, 45.977997>,  <43.644474, 34.234016, 46.412067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423515, 34.766266, 45.977997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796501, 34.725124, 45.839470>,  <44.020294, 34.700439, 45.756355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796501, 34.725124, 45.839470>,  <43.423515, 34.766266, 45.977997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796501, 34.725124, 45.839470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328597, 0.156868, -0.931352,
		0.150120, 0.982249, 0.112476,
		0.932464, -0.102855, -0.346313,
		44.076241, 34.694267, 45.735577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653851, 35.331066, 45.517776>,  <43.423515, 34.766266, 45.977997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653851, 35.331066, 45.517776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860043, 35.002247, 45.421021>,  <43.983757, 34.804955, 45.362968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860043, 35.002247, 45.421021>,  <43.653851, 35.331066, 45.517776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860043, 35.002247, 45.421021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460965, -0.028065, -0.886975,
		0.722349, 0.568724, -0.393403,
		0.515484, -0.822050, -0.241889,
		44.014687, 34.755630, 45.348454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924480, 35.353321, 44.790417>,  <43.653851, 35.331066, 45.517776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924480, 35.353321, 44.790417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949932, 34.960743, 44.862759>,  <43.965202, 34.725197, 44.906162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949932, 34.960743, 44.862759>,  <43.924480, 35.353321, 44.790417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949932, 34.960743, 44.862759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321355, -0.191718, -0.927348,
		0.944819, 0.000888, -0.327593,
		0.063629, -0.981449, 0.180854,
		43.969021, 34.666309, 44.917015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379841, 35.055367, 44.257481>,  <43.924480, 35.353321, 44.790417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379841, 35.055367, 44.257481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146805, 34.760372, 44.394127>,  <44.006985, 34.583374, 44.476116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146805, 34.760372, 44.394127>,  <44.379841, 35.055367, 44.257481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146805, 34.760372, 44.394127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282266, -0.210566, -0.935942,
		0.762181, -0.641693, -0.085496,
		-0.582585, -0.737490, 0.341618,
		43.972031, 34.539124, 44.496613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463352, 34.467224, 43.840073>,  <44.379841, 35.055367, 44.257481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463352, 34.467224, 43.840073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103977, 34.425343, 44.010647>,  <43.888351, 34.400211, 44.112991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103977, 34.425343, 44.010647>,  <44.463352, 34.467224, 43.840073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103977, 34.425343, 44.010647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401699, -0.196219, -0.894503,
		0.177337, -0.974953, 0.134230,
		-0.898438, -0.104708, 0.426435,
		43.834446, 34.393932, 44.138577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221642, 33.836761, 43.670116>,  <44.463352, 34.467224, 43.840073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221642, 33.836761, 43.670116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904060, 34.063396, 43.758308>,  <43.713512, 34.199379, 43.811222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904060, 34.063396, 43.758308>,  <44.221642, 33.836761, 43.670116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904060, 34.063396, 43.758308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412470, -0.235553, -0.879991,
		-0.446659, -0.789614, 0.420720,
		-0.793955, 0.566590, 0.220480,
		43.665874, 34.233372, 43.824451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738716, 33.510098, 43.312172>,  <44.221642, 33.836761, 43.670116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738716, 33.510098, 43.312172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584026, 33.873272, 43.376789>,  <43.491211, 34.091175, 43.415562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584026, 33.873272, 43.376789>,  <43.738716, 33.510098, 43.312172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584026, 33.873272, 43.376789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568530, -0.096806, -0.816947,
		-0.726095, -0.407780, 0.553625,
		-0.386729, 0.907934, 0.161545,
		43.468006, 34.145653, 43.425251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051594, 33.402069, 43.119709>,  <43.738716, 33.510098, 43.312172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051594, 33.402069, 43.119709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102158, 33.798264, 43.141438>,  <43.132496, 34.035980, 43.154476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102158, 33.798264, 43.141438>,  <43.051594, 33.402069, 43.119709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102158, 33.798264, 43.141438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455270, 0.106579, -0.883951,
		-0.881335, 0.087006, 0.464413,
		0.126406, 0.990490, 0.054320,
		43.140079, 34.095409, 43.157734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374249, 33.769032, 43.069302>,  <43.051594, 33.402069, 43.119709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374249, 33.769032, 43.069302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645409, 34.039791, 42.954582>,  <42.808105, 34.202248, 42.885750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645409, 34.039791, 42.954582>,  <42.374249, 33.769032, 43.069302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645409, 34.039791, 42.954582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531931, 0.182357, -0.826919,
		-0.507443, 0.713127, 0.483685,
		0.677902, 0.676902, -0.286799,
		42.848778, 34.242863, 42.868542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060158, 34.416225, 42.805031>,  <42.374249, 33.769032, 43.069302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060158, 34.416225, 42.805031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434486, 34.403797, 42.664593>,  <42.659084, 34.396339, 42.580330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434486, 34.403797, 42.664593>,  <42.060158, 34.416225, 42.805031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434486, 34.403797, 42.664593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334877, 0.232340, -0.913168,
		0.109945, 0.972138, 0.207024,
		0.935826, -0.031071, -0.351091,
		42.715233, 34.394478, 42.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007153, 34.974270, 42.433891>,  <42.060158, 34.416225, 42.805031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007153, 34.974270, 42.433891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333141, 34.780602, 42.306519>,  <42.528736, 34.664398, 42.230095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333141, 34.780602, 42.306519>,  <42.007153, 34.974270, 42.433891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333141, 34.780602, 42.306519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274716, 0.161032, -0.947945,
		0.510249, 0.860025, -0.001774,
		0.814970, -0.484176, -0.318429,
		42.577633, 34.635349, 42.210991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453712, 35.461510, 42.103676>,  <42.007153, 34.974270, 42.433891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453712, 35.461510, 42.103676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502895, 35.100449, 41.938702>,  <42.532406, 34.883812, 41.839718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502895, 35.100449, 41.938702>,  <42.453712, 35.461510, 42.103676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502895, 35.100449, 41.938702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374834, 0.342564, -0.861481,
		0.918902, 0.260522, -0.296223,
		0.122959, -0.902651, -0.412435,
		42.539783, 34.829655, 41.814972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714214, 35.600136, 41.445076>,  <42.453712, 35.461510, 42.103676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714214, 35.600136, 41.445076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617695, 35.215218, 41.394848>,  <42.559784, 34.984268, 41.364712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617695, 35.215218, 41.394848>,  <42.714214, 35.600136, 41.445076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617695, 35.215218, 41.394848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295088, 0.196023, -0.935146,
		0.924499, -0.188594, -0.331261,
		-0.241298, -0.962293, -0.125571,
		42.545307, 34.926529, 41.357178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947056, 35.404602, 40.724773>,  <42.714214, 35.600136, 41.445076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947056, 35.404602, 40.724773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645050, 35.174347, 40.850372>,  <42.463848, 35.036194, 40.925732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645050, 35.174347, 40.850372>,  <42.947056, 35.404602, 40.724773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645050, 35.174347, 40.850372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430797, 0.074457, -0.899372,
		0.494336, -0.814306, -0.304200,
		-0.755014, -0.575640, 0.313994,
		42.418545, 35.001656, 40.944569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867229, 34.793800, 40.203358>,  <42.947056, 35.404602, 40.724773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867229, 34.793800, 40.203358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521763, 34.829212, 40.401852>,  <42.314484, 34.850460, 40.520947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521763, 34.829212, 40.401852>,  <42.867229, 34.793800, 40.203358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521763, 34.829212, 40.401852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504065, -0.152531, -0.850090,
		0.000436, -0.984326, 0.176358,
		-0.863666, 0.088525, 0.496230,
		42.262665, 34.855770, 40.550720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530930, 34.310276, 39.762646>,  <42.867229, 34.793800, 40.203358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530930, 34.310276, 39.762646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238628, 34.473469, 39.981571>,  <42.063248, 34.571384, 40.112926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238628, 34.473469, 39.981571>,  <42.530930, 34.310276, 39.762646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238628, 34.473469, 39.981571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627410, -0.085470, -0.773984,
		-0.268993, -0.908980, 0.318430,
		-0.730752, 0.407982, 0.547313,
		42.019402, 34.595863, 40.145763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988663, 33.792709, 39.790794>,  <42.530930, 34.310276, 39.762646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988663, 33.792709, 39.790794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820595, 34.147678, 39.866623>,  <41.719753, 34.360661, 39.912121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820595, 34.147678, 39.866623>,  <41.988663, 33.792709, 39.790794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820595, 34.147678, 39.866623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679821, -0.169457, -0.713532,
		-0.601081, -0.428679, 0.674489,
		-0.420173, 0.887423, 0.189567,
		41.694542, 34.413906, 39.923492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368973, 33.588188, 39.761326>,  <41.988663, 33.792709, 39.790794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368973, 33.588188, 39.761326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343365, 33.986485, 39.734791>,  <41.327999, 34.225464, 39.718868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343365, 33.986485, 39.734791>,  <41.368973, 33.588188, 39.761326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343365, 33.986485, 39.734791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664329, -0.092126, -0.741741,
		-0.744694, -0.003412, 0.667398,
		-0.064016, 0.995742, -0.066339,
		41.324162, 34.285206, 39.714890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659149, 33.845043, 39.838085>,  <41.368973, 33.588188, 39.761326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659149, 33.845043, 39.838085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842716, 34.136158, 39.634235>,  <40.952854, 34.310825, 39.511925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842716, 34.136158, 39.634235>,  <40.659149, 33.845043, 39.838085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842716, 34.136158, 39.634235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772324, 0.043214, -0.633757,
		-0.439218, 0.684439, 0.581920,
		0.458915, 0.727788, -0.509629,
		40.980392, 34.354496, 39.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132191, 34.330738, 39.679928>,  <40.659149, 33.845043, 39.838085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132191, 34.330738, 39.679928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414093, 34.407059, 39.406605>,  <40.583237, 34.452850, 39.242611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414093, 34.407059, 39.406605>,  <40.132191, 34.330738, 39.679928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414093, 34.407059, 39.406605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708829, 0.149240, -0.689412,
		-0.029564, 0.970218, 0.240424,
		0.704760, 0.190801, -0.683306,
		40.625523, 34.464298, 39.201614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918320, 34.854229, 39.300003>,  <40.132191, 34.330738, 39.679928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918320, 34.854229, 39.300003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175724, 34.687187, 39.043407>,  <40.330166, 34.586964, 38.889450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175724, 34.687187, 39.043407>,  <39.918320, 34.854229, 39.300003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175724, 34.687187, 39.043407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629930, 0.187165, -0.753762,
		0.434837, 0.889144, -0.142618,
		0.643510, -0.417603, -0.641485,
		40.368778, 34.561905, 38.850964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708252, 35.159695, 38.674919>,  <39.918320, 34.854229, 39.300003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708252, 35.159695, 38.674919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966442, 34.878265, 38.556023>,  <40.121357, 34.709408, 38.484684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966442, 34.878265, 38.556023>,  <39.708252, 35.159695, 38.674919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966442, 34.878265, 38.556023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489920, -0.082838, -0.867823,
		0.585951, 0.705782, -0.398163,
		0.645476, -0.703570, -0.297238,
		40.160084, 34.667194, 38.466850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839638, 35.369106, 37.994911>,  <39.708252, 35.159695, 38.674919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839638, 35.369106, 37.994911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917423, 34.977489, 38.019127>,  <39.964096, 34.742519, 38.033657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917423, 34.977489, 38.019127>,  <39.839638, 35.369106, 37.994911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917423, 34.977489, 38.019127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263504, -0.111588, -0.958182,
		0.944854, 0.170381, -0.279681,
		0.194465, -0.979039, 0.060538,
		39.975761, 34.683777, 38.037289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201385, 35.303761, 37.367691>,  <39.839638, 35.369106, 37.994911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201385, 35.303761, 37.367691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082966, 34.932339, 37.457260>,  <40.011913, 34.709488, 37.511002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082966, 34.932339, 37.457260>,  <40.201385, 35.303761, 37.367691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082966, 34.932339, 37.457260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142105, -0.189010, -0.971638,
		0.944542, -0.319477, -0.075996,
		-0.296052, -0.928552, 0.223927,
		39.994148, 34.653774, 37.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512852, 34.844105, 36.811344>,  <40.201385, 35.303761, 37.367691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512852, 34.844105, 36.811344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233170, 34.614017, 36.981155>,  <40.065361, 34.475964, 37.083042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233170, 34.614017, 36.981155>,  <40.512852, 34.844105, 36.811344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233170, 34.614017, 36.981155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378083, -0.206464, -0.902456,
		0.606762, -0.791513, -0.073120,
		-0.699209, -0.575222, 0.424532,
		40.023407, 34.441452, 37.108517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521912, 34.240513, 36.467319>,  <40.512852, 34.844105, 36.811344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521912, 34.240513, 36.467319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157127, 34.267490, 36.629196>,  <39.938255, 34.283676, 36.726322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157127, 34.267490, 36.629196>,  <40.521912, 34.240513, 36.467319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157127, 34.267490, 36.629196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410236, -0.137408, -0.901568,
		-0.005197, -0.988216, 0.152979,
		-0.911964, 0.067443, 0.404687,
		39.883537, 34.287724, 36.750603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095764, 33.752621, 36.139961>,  <40.521912, 34.240513, 36.467319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095764, 33.752621, 36.139961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845459, 34.029991, 36.282837>,  <39.695278, 34.196415, 36.368561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845459, 34.029991, 36.282837>,  <40.095764, 33.752621, 36.139961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845459, 34.029991, 36.282837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522439, -0.032558, -0.852055,
		-0.579207, -0.719792, 0.382646,
		-0.625760, 0.693426, 0.357190,
		39.657730, 34.238018, 36.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491146, 33.536701, 35.901894>,  <40.095764, 33.752621, 36.139961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491146, 33.536701, 35.901894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432125, 33.922062, 35.991409>,  <39.396713, 34.153278, 36.045120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432125, 33.922062, 35.991409>,  <39.491146, 33.536701, 35.901894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432125, 33.922062, 35.991409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387939, 0.151762, -0.909105,
		-0.909797, -0.220962, 0.351348,
		-0.147557, 0.963403, 0.223792,
		39.387859, 34.211082, 36.058548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876602, 33.708904, 35.466465>,  <39.491146, 33.536701, 35.901894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876602, 33.708904, 35.466465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009953, 34.076069, 35.552540>,  <39.089962, 34.296368, 35.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009953, 34.076069, 35.552540>,  <38.876602, 33.708904, 35.466465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009953, 34.076069, 35.552540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348996, 0.332183, -0.876274,
		-0.875820, 0.217029, 0.431088,
		0.333377, 0.917907, 0.215190,
		39.109966, 34.351440, 35.617096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459942, 34.192501, 35.150845>,  <38.876602, 33.708904, 35.466465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459942, 34.192501, 35.150845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787704, 34.406616, 35.232868>,  <38.984360, 34.535084, 35.282082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787704, 34.406616, 35.232868>,  <38.459942, 34.192501, 35.150845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787704, 34.406616, 35.232868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056464, 0.431367, -0.900408,
		-0.570429, 0.726219, 0.383688,
		0.819404, 0.535283, 0.205059,
		39.033527, 34.567200, 35.294384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303883, 34.830013, 35.015503>,  <38.459942, 34.192501, 35.150845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303883, 34.830013, 35.015503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700321, 34.784443, 34.987934>,  <38.938183, 34.757099, 34.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700321, 34.784443, 34.987934>,  <38.303883, 34.830013, 35.015503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700321, 34.784443, 34.987934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018445, 0.395148, -0.918432,
		0.131867, 0.911526, 0.389528,
		0.991096, -0.113926, -0.068920,
		38.997650, 34.750263, 34.967258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512257, 35.516567, 34.682808>,  <38.303883, 34.830013, 35.015503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512257, 35.516567, 34.682808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824261, 35.271442, 34.632156>,  <39.011463, 35.124367, 34.601765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824261, 35.271442, 34.632156>,  <38.512257, 35.516567, 34.682808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824261, 35.271442, 34.632156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203884, 0.440201, -0.874445,
		0.591617, 0.656261, 0.468307,
		0.780013, -0.612817, -0.126629,
		39.058266, 35.087597, 34.594166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020103, 35.949867, 34.436089>,  <38.512257, 35.516567, 34.682808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020103, 35.949867, 34.436089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159313, 35.590336, 34.329517>,  <39.242840, 35.374615, 34.265575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159313, 35.590336, 34.329517>,  <39.020103, 35.949867, 34.436089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159313, 35.590336, 34.329517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177016, 0.342085, -0.922845,
		0.920622, 0.274009, 0.278161,
		0.348022, -0.898831, -0.266427,
		39.263721, 35.320686, 34.249588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575344, 36.113762, 33.974117>,  <39.020103, 35.949867, 34.436089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575344, 36.113762, 33.974117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458267, 35.739662, 33.894470>,  <39.388020, 35.515202, 33.846684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458267, 35.739662, 33.894470>,  <39.575344, 36.113762, 33.974117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458267, 35.739662, 33.894470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260657, 0.122310, -0.957652,
		0.919993, -0.332200, 0.207979,
		-0.292695, -0.935245, -0.199115,
		39.370461, 35.459087, 33.834736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917736, 35.971558, 33.413864>,  <39.575344, 36.113762, 33.974117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917736, 35.971558, 33.413864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666111, 35.660831, 33.402309>,  <39.515137, 35.474396, 33.395378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666111, 35.660831, 33.402309>,  <39.917736, 35.971558, 33.413864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666111, 35.660831, 33.402309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179213, -0.108765, -0.977780,
		0.756412, -0.620264, 0.207636,
		-0.629065, -0.776816, -0.028888,
		39.477390, 35.427788, 33.393642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248917, 35.368160, 33.213505>,  <39.917736, 35.971558, 33.413864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248917, 35.368160, 33.213505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863895, 35.341755, 33.108334>,  <39.632881, 35.325912, 33.045231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863895, 35.341755, 33.108334>,  <40.248917, 35.368160, 33.213505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863895, 35.341755, 33.108334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266751, -0.057756, -0.962033,
		0.048328, -0.996145, 0.073205,
		-0.962553, -0.066021, -0.262932,
		39.575130, 35.321949, 33.029453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282925, 35.043282, 32.495220>,  <40.248917, 35.368160, 33.213505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282925, 35.043282, 32.495220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909836, 35.181099, 32.537792>,  <39.685982, 35.263790, 32.563335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909836, 35.181099, 32.537792>,  <40.282925, 35.043282, 32.495220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909836, 35.181099, 32.537792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115974, -0.007152, -0.993227,
		-0.341449, -0.938743, 0.046629,
		-0.932718, 0.344544, 0.106428,
		39.630020, 35.284462, 32.569721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832062, 34.671879, 32.008598>,  <40.282925, 35.043282, 32.495220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832062, 34.671879, 32.008598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647175, 35.016430, 32.092873>,  <39.536243, 35.223160, 32.143436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647175, 35.016430, 32.092873>,  <39.832062, 34.671879, 32.008598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647175, 35.016430, 32.092873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084479, 0.193734, -0.977410,
		-0.882732, -0.469577, -0.016780,
		-0.462220, 0.861374, 0.210684,
		39.508511, 35.274841, 32.156078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588844, 34.368568, 32.220913>,  <39.832062, 34.671879, 32.008598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588844, 34.368568, 32.220913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714394, 33.988781, 32.220387>,  <40.789722, 33.760910, 32.220070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714394, 33.988781, 32.220387>,  <40.588844, 34.368568, 32.220913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714394, 33.988781, 32.220387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573616, 0.188517, 0.797136,
		-0.756604, -0.250953, 0.603799,
		0.313870, -0.949465, -0.001318,
		40.808556, 33.703941, 32.219990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370975, 34.340229, 32.953896>,  <40.588844, 34.368568, 32.220913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370975, 34.340229, 32.953896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591488, 34.024883, 32.844662>,  <40.723793, 33.835674, 32.779121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591488, 34.024883, 32.844662>,  <40.370975, 34.340229, 32.953896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591488, 34.024883, 32.844662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237477, -0.165504, 0.957190,
		-0.799811, -0.592529, 0.095980,
		0.551278, -0.788364, -0.273084,
		40.756870, 33.788376, 32.762737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032047, 34.637848, 33.109764>,  <40.370975, 34.340229, 32.953896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032047, 34.637848, 33.109764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283676, 34.554947, 32.810081>,  <41.434654, 34.505207, 32.630272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283676, 34.554947, 32.810081>,  <41.032047, 34.637848, 33.109764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283676, 34.554947, 32.810081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641890, -0.405128, 0.651036,
		-0.438451, -0.890460, -0.121826,
		0.629077, -0.207248, -0.749206,
		41.472401, 34.492771, 32.585320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187840, 33.887932, 33.147228>,  <41.032047, 34.637848, 33.109764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187840, 33.887932, 33.147228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472656, 34.116817, 32.984463>,  <41.643547, 34.254147, 32.886803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472656, 34.116817, 32.984463>,  <41.187840, 33.887932, 33.147228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472656, 34.116817, 32.984463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668799, -0.376262, 0.641198,
		0.213796, -0.728698, -0.650607,
		0.712039, 0.572211, -0.406910,
		41.686268, 34.288479, 32.862389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809708, 33.514679, 32.699898>,  <41.187840, 33.887932, 33.147228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809708, 33.514679, 32.699898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943413, 33.852028, 32.868176>,  <42.023636, 34.054440, 32.969143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943413, 33.852028, 32.868176>,  <41.809708, 33.514679, 32.699898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943413, 33.852028, 32.868176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818791, -0.480914, 0.313533,
		0.466746, 0.239663, -0.851299,
		0.334260, 0.843376, 0.420698,
		42.043690, 34.105042, 32.994385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442860, 33.224392, 32.966343>,  <41.809708, 33.514679, 32.699898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442860, 33.224392, 32.966343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413570, 33.609921, 33.068859>,  <42.395996, 33.841236, 33.130367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413570, 33.609921, 33.068859>,  <42.442860, 33.224392, 32.966343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413570, 33.609921, 33.068859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832242, -0.082556, 0.548231,
		0.549556, 0.253437, -0.796089,
		-0.073220, 0.963823, 0.256290,
		42.391605, 33.899067, 33.145744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031654, 33.506809, 32.768749>,  <42.442860, 33.224392, 32.966343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031654, 33.506809, 32.768749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864220, 33.719414, 33.063309>,  <42.763760, 33.846977, 33.240044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864220, 33.719414, 33.063309>,  <43.031654, 33.506809, 32.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864220, 33.719414, 33.063309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697412, -0.331259, 0.635518,
		0.581722, 0.779593, -0.232020,
		-0.418587, 0.531509, 0.736399,
		42.738644, 33.878868, 33.284229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411774, 33.803768, 33.335331>,  <43.031654, 33.506809, 32.768749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411774, 33.803768, 33.335331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760902, 33.813602, 33.530300>,  <43.970379, 33.819504, 33.647282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760902, 33.813602, 33.530300>,  <43.411774, 33.803768, 33.335331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760902, 33.813602, 33.530300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336831, -0.692373, 0.638095,
		0.353166, -0.721121, -0.596036,
		0.872822, 0.024590, 0.487418,
		44.022751, 33.820980, 33.676525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724045, 33.154228, 33.415897>,  <43.411774, 33.803768, 33.335331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724045, 33.154228, 33.415897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872025, 33.370518, 33.718090>,  <43.960812, 33.500290, 33.899406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872025, 33.370518, 33.718090>,  <43.724045, 33.154228, 33.415897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872025, 33.370518, 33.718090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332040, -0.682518, 0.651091,
		0.867690, -0.491723, -0.072958,
		0.369951, 0.540720, 0.755485,
		43.983009, 33.532734, 33.944736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163921, 32.672523, 33.829113>,  <43.724045, 33.154228, 33.415897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163921, 32.672523, 33.829113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025280, 32.962303, 34.067455>,  <43.942093, 33.136169, 34.210461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025280, 32.962303, 34.067455>,  <44.163921, 32.672523, 33.829113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025280, 32.962303, 34.067455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132585, -0.666691, 0.733447,
		0.928593, 0.175217, 0.327130,
		-0.346607, 0.724446, 0.595853,
		43.921299, 33.179638, 34.246212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417095, 32.589447, 34.417458>,  <44.163921, 32.672523, 33.829113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417095, 32.589447, 34.417458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097511, 32.811508, 34.509949>,  <43.905762, 32.944744, 34.565445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097511, 32.811508, 34.509949>,  <44.417095, 32.589447, 34.417458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097511, 32.811508, 34.509949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273538, -0.677886, 0.682383,
		0.535579, 0.481944, 0.693459,
		-0.798957, 0.555158, 0.231232,
		43.857822, 32.978054, 34.579319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369362, 32.333626, 35.091442>,  <44.417095, 32.589447, 34.417458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369362, 32.333626, 35.091442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024574, 32.533043, 35.054649>,  <43.817699, 32.652695, 35.032574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024574, 32.533043, 35.054649>,  <44.369362, 32.333626, 35.091442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024574, 32.533043, 35.054649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432207, -0.627843, 0.647309,
		0.264959, 0.597719, 0.756656,
		-0.861971, 0.498542, -0.091986,
		43.765984, 32.682606, 35.027054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054337, 32.448650, 35.771965>,  <44.369362, 32.333626, 35.091442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054337, 32.448650, 35.771965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746212, 32.476719, 35.518448>,  <43.561337, 32.493561, 35.366337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746212, 32.476719, 35.518448>,  <44.054337, 32.448650, 35.771965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746212, 32.476719, 35.518448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529280, -0.624690, 0.574131,
		-0.355637, 0.777714, 0.518347,
		-0.770315, 0.070169, -0.633791,
		43.515118, 32.497768, 35.328312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477745, 32.604874, 36.202343>,  <44.054337, 32.448650, 35.771965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477745, 32.604874, 36.202343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356373, 32.434460, 35.861420>,  <43.283550, 32.332211, 35.656868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356373, 32.434460, 35.861420>,  <43.477745, 32.604874, 36.202343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356373, 32.434460, 35.861420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515952, -0.678537, 0.522858,
		-0.801075, 0.598402, -0.013921,
		-0.303433, -0.426031, -0.852306,
		43.265343, 32.306652, 35.605728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698494, 32.539944, 36.121284>,  <43.477745, 32.604874, 36.202343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698494, 32.539944, 36.121284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839512, 32.244896, 35.890934>,  <42.924122, 32.067867, 35.752724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839512, 32.244896, 35.890934>,  <42.698494, 32.539944, 36.121284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839512, 32.244896, 35.890934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670816, -0.628267, 0.394064,
		-0.652475, 0.247386, -0.716294,
		0.352538, -0.737618, -0.575879,
		42.945274, 32.023609, 35.718170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088036, 32.169243, 35.911274>,  <42.698494, 32.539944, 36.121284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088036, 32.169243, 35.911274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378941, 31.903040, 35.844112>,  <42.553482, 31.743319, 35.803814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378941, 31.903040, 35.844112>,  <42.088036, 32.169243, 35.911274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378941, 31.903040, 35.844112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557554, -0.715496, 0.420950,
		-0.400281, -0.212525, -0.891408,
		0.727262, -0.665506, -0.167906,
		42.597118, 31.703388, 35.793739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767017, 31.626417, 35.594688>,  <42.088036, 32.169243, 35.911274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767017, 31.626417, 35.594688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121124, 31.482309, 35.712334>,  <42.333588, 31.395845, 35.782921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121124, 31.482309, 35.712334>,  <41.767017, 31.626417, 35.594688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121124, 31.482309, 35.712334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447530, -0.831965, 0.327949,
		0.126544, -0.421949, -0.897745,
		0.885270, -0.360268, 0.294115,
		42.386703, 31.374229, 35.800568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642315, 30.881224, 35.416416>,  <41.767017, 31.626417, 35.594688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642315, 30.881224, 35.416416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959793, 30.872591, 35.659588>,  <42.150280, 30.867411, 35.805492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959793, 30.872591, 35.659588>,  <41.642315, 30.881224, 35.416416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959793, 30.872591, 35.659588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318226, -0.866450, 0.384703,
		0.518441, -0.498797, -0.694564,
		0.793694, -0.021583, 0.607934,
		42.197903, 30.866116, 35.841969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950161, 30.228115, 35.434723>,  <41.642315, 30.881224, 35.416416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950161, 30.228115, 35.434723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101990, 30.387089, 35.768902>,  <42.193085, 30.482473, 35.969410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101990, 30.387089, 35.768902>,  <41.950161, 30.228115, 35.434723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101990, 30.387089, 35.768902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295680, -0.803554, 0.516599,
		0.876642, -0.443110, -0.187490,
		0.379569, 0.397435, 0.835448,
		42.215862, 30.506319, 36.019535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443848, 29.705395, 35.803646>,  <41.950161, 30.228115, 35.434723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443848, 29.705395, 35.803646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313435, 29.967876, 36.075851>,  <42.235188, 30.125364, 36.239174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313435, 29.967876, 36.075851>,  <42.443848, 29.705395, 35.803646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313435, 29.967876, 36.075851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274603, -0.754548, 0.596029,
		0.904598, 0.007450, 0.426200,
		-0.326029, 0.656203, 0.680517,
		42.215626, 30.164738, 36.280006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802528, 29.513107, 36.350151>,  <42.443848, 29.705395, 35.803646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802528, 29.513107, 36.350151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520054, 29.736431, 36.524323>,  <42.350571, 29.870426, 36.628826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520054, 29.736431, 36.524323>,  <42.802528, 29.513107, 36.350151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520054, 29.736431, 36.524323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067470, -0.665247, 0.743569,
		0.704807, 0.495717, 0.507455,
		-0.706183, 0.558311, 0.435425,
		42.308201, 29.903925, 36.654949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930805, 29.518206, 37.039803>,  <42.802528, 29.513107, 36.350151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930805, 29.518206, 37.039803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546833, 29.629524, 37.026596>,  <42.316452, 29.696316, 37.018673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546833, 29.629524, 37.026596>,  <42.930805, 29.518206, 37.039803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546833, 29.629524, 37.026596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171042, -0.488449, 0.855665,
		0.222000, 0.827024, 0.516476,
		-0.959927, 0.278297, -0.033020,
		42.258854, 29.713013, 37.016689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780720, 29.870455, 37.674313>,  <42.930805, 29.518206, 37.039803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780720, 29.870455, 37.674313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448902, 29.703091, 37.526375>,  <42.249809, 29.602673, 37.437614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448902, 29.703091, 37.526375>,  <42.780720, 29.870455, 37.674313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448902, 29.703091, 37.526375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060872, -0.590585, 0.804676,
		-0.555108, 0.690030, 0.464450,
		-0.829548, -0.418410, -0.369842,
		42.200039, 29.577568, 37.415421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227119, 29.823320, 38.254131>,  <42.780720, 29.870455, 37.674313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227119, 29.823320, 38.254131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114094, 29.574471, 37.962074>,  <42.046276, 29.425159, 37.786839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114094, 29.574471, 37.962074>,  <42.227119, 29.823320, 38.254131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114094, 29.574471, 37.962074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107284, -0.735895, 0.668543,
		-0.953229, 0.267241, 0.141195,
		-0.282567, -0.622126, -0.730147,
		42.029324, 29.387833, 37.743031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542404, 29.533384, 38.523293>,  <42.227119, 29.823320, 38.254131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542404, 29.533384, 38.523293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699528, 29.293703, 38.244251>,  <41.793804, 29.149895, 38.076824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699528, 29.293703, 38.244251>,  <41.542404, 29.533384, 38.523293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699528, 29.293703, 38.244251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057887, -0.773189, 0.631528,
		-0.917795, -0.207690, -0.338404,
		0.392812, -0.599203, -0.697606,
		41.817371, 29.113943, 38.034969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138176, 28.990913, 38.617744>,  <41.542404, 29.533384, 38.523293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138176, 28.990913, 38.617744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460045, 28.871181, 38.412651>,  <41.653168, 28.799343, 38.289593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460045, 28.871181, 38.412651>,  <41.138176, 28.990913, 38.617744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460045, 28.871181, 38.412651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067550, -0.811843, 0.579955,
		-0.589858, -0.501312, -0.633051,
		0.804677, -0.299329, -0.512735,
		41.701447, 28.781384, 38.258831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931759, 28.347332, 38.440971>,  <41.138176, 28.990913, 38.617744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931759, 28.347332, 38.440971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330956, 28.360228, 38.419155>,  <41.570473, 28.367964, 38.406067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330956, 28.360228, 38.419155>,  <40.931759, 28.347332, 38.440971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330956, 28.360228, 38.419155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050818, -0.921409, 0.385258,
		-0.037836, -0.387255, -0.921196,
		0.997991, 0.032237, -0.054542,
		41.630352, 28.369898, 38.402794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094383, 27.748621, 38.121868>,  <40.931759, 28.347332, 38.440971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094383, 27.748621, 38.121868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414448, 27.873400, 38.326778>,  <41.606487, 27.948267, 38.449726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414448, 27.873400, 38.326778>,  <41.094383, 27.748621, 38.121868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414448, 27.873400, 38.326778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077874, -0.900909, 0.426965,
		0.594703, -0.301750, -0.745168,
		0.800165, 0.311947, 0.512275,
		41.654499, 27.966984, 38.480461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599380, 27.245544, 38.071365>,  <41.094383, 27.748621, 38.121868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599380, 27.245544, 38.071365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704895, 27.452278, 38.397141>,  <41.768204, 27.576319, 38.592606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704895, 27.452278, 38.397141>,  <41.599380, 27.245544, 38.071365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704895, 27.452278, 38.397141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124834, -0.818946, 0.560129,
		0.956470, -0.249422, -0.151506,
		0.263783, 0.516833, 0.814434,
		41.784031, 27.607328, 38.641472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141991, 26.886663, 38.361843>,  <41.599380, 27.245544, 38.071365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141991, 26.886663, 38.361843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936951, 27.079212, 38.646244>,  <41.813927, 27.194740, 38.816883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936951, 27.079212, 38.646244>,  <42.141991, 26.886663, 38.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936951, 27.079212, 38.646244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043918, -0.812285, 0.581605,
		0.857504, 0.329357, 0.395237,
		-0.512600, 0.481370, 0.711002,
		41.783169, 27.223623, 38.859543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828354, 27.388708, 38.304253>,  <42.141991, 26.886663, 38.361843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828354, 27.388708, 38.304253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734798, 27.376499, 38.692966>,  <42.678665, 27.369173, 38.926193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734798, 27.376499, 38.692966>,  <42.828354, 27.388708, 38.304253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734798, 27.376499, 38.692966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738416, -0.655785, 0.157123,
		0.632486, 0.754330, 0.175921,
		-0.233889, -0.030525, 0.971784,
		42.664631, 27.367342, 38.984501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444138, 27.374451, 38.643433>,  <42.828354, 27.388708, 38.304253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444138, 27.374451, 38.643433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171474, 27.242922, 38.904881>,  <43.007877, 27.164003, 39.061749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171474, 27.242922, 38.904881>,  <43.444138, 27.374451, 38.643433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171474, 27.242922, 38.904881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635643, -0.708555, 0.306443,
		0.362362, 0.624359, 0.692004,
		-0.681654, -0.328824, 0.653623,
		42.966980, 27.144274, 39.100967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381218, 27.337950, 39.360023>,  <43.444138, 27.374451, 38.643433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381218, 27.337950, 39.360023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642883, 27.233706, 39.076008>,  <43.799881, 27.171160, 38.905598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642883, 27.233706, 39.076008>,  <43.381218, 27.337950, 39.360023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642883, 27.233706, 39.076008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623252, -0.346129, 0.701250,
		-0.428517, -0.901264, -0.063999,
		0.654163, -0.260610, -0.710037,
		43.839134, 27.155523, 38.862995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690754, 26.853769, 39.664158>,  <43.381218, 27.337950, 39.360023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690754, 26.853769, 39.664158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938046, 27.000891, 39.386303>,  <44.086418, 27.089163, 39.219589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938046, 27.000891, 39.386303>,  <43.690754, 26.853769, 39.664158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938046, 27.000891, 39.386303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784402, -0.232387, 0.575074,
		0.050089, -0.900399, -0.432173,
		0.618227, 0.367802, -0.694635,
		44.123512, 27.111231, 39.177914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783962, 26.677816, 40.403217>,  <43.690754, 26.853769, 39.664158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783962, 26.677816, 40.403217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030678, 26.683544, 40.718018>,  <44.178707, 26.686981, 40.906898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030678, 26.683544, 40.718018>,  <43.783962, 26.677816, 40.403217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030678, 26.683544, 40.718018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526315, 0.735953, -0.425870,
		-0.585294, 0.676881, 0.446389,
		0.616785, 0.014318, 0.787001,
		44.215714, 26.687840, 40.954117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917210, 27.371143, 40.549683>,  <43.783962, 26.677816, 40.403217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917210, 27.371143, 40.549683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231071, 27.174446, 40.700684>,  <44.419388, 27.056429, 40.791286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231071, 27.174446, 40.700684>,  <43.917210, 27.371143, 40.549683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231071, 27.174446, 40.700684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597765, 0.761535, -0.250484,
		-0.164311, 0.422203, 0.891486,
		0.784652, -0.491742, 0.377506,
		44.466469, 27.026924, 40.813934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213249, 27.756897, 41.202526>,  <43.917210, 27.371143, 40.549683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213249, 27.756897, 41.202526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458504, 27.546373, 40.966881>,  <44.605659, 27.420059, 40.825493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458504, 27.546373, 40.966881>,  <44.213249, 27.756897, 41.202526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458504, 27.546373, 40.966881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461901, 0.843830, -0.273128,
		0.640863, -0.104647, 0.760489,
		0.613141, -0.526308, -0.589116,
		44.642445, 27.388481, 40.790146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819321, 27.845743, 41.372520>,  <44.213249, 27.756897, 41.202526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819321, 27.845743, 41.372520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841225, 27.748856, 40.985050>,  <44.854366, 27.690723, 40.752567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841225, 27.748856, 40.985050>,  <44.819321, 27.845743, 41.372520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841225, 27.748856, 40.985050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415392, 0.887721, -0.198494,
		0.907992, -0.391510, 0.149232,
		0.054764, -0.242221, -0.968674,
		44.857655, 27.676189, 40.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562744, 27.952217, 41.036114>,  <44.819321, 27.845743, 41.372520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562744, 27.952217, 41.036114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282711, 27.991863, 40.753254>,  <45.114693, 28.015650, 40.583538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282711, 27.991863, 40.753254>,  <45.562744, 27.952217, 41.036114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282711, 27.991863, 40.753254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284012, 0.947266, -0.148404,
		0.655151, -0.304734, -0.691313,
		-0.700082, 0.099114, -0.707150,
		45.072685, 28.021597, 40.541107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960190, 28.261198, 40.566383>,  <45.562744, 27.952217, 41.036114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960190, 28.261198, 40.566383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580135, 28.302183, 40.448574>,  <45.352104, 28.326775, 40.377888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580135, 28.302183, 40.448574>,  <45.960190, 28.261198, 40.566383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580135, 28.302183, 40.448574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204258, 0.918152, -0.339522,
		0.235631, -0.382750, -0.893297,
		-0.950135, 0.102461, -0.294525,
		45.295094, 28.332922, 40.360218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907864, 28.476992, 39.868465>,  <45.960190, 28.261198, 40.566383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907864, 28.476992, 39.868465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559536, 28.614542, 40.008995>,  <45.350540, 28.697071, 40.093311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559536, 28.614542, 40.008995>,  <45.907864, 28.476992, 39.868465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559536, 28.614542, 40.008995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077243, 0.801474, -0.593020,
		-0.485500, -0.489276, -0.724499,
		-0.870818, 0.343874, 0.351322,
		45.298290, 28.717705, 40.114391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589951, 28.614901, 39.343960>,  <45.907864, 28.476992, 39.868465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589951, 28.614901, 39.343960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403423, 28.840775, 39.616337>,  <45.291508, 28.976299, 39.779762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403423, 28.840775, 39.616337>,  <45.589951, 28.614901, 39.343960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403423, 28.840775, 39.616337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049138, 0.785102, -0.617414,
		-0.883253, -0.254450, -0.393853,
		-0.466316, 0.564686, 0.680941,
		45.263527, 29.010180, 39.820618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095020, 29.020763, 38.993511>,  <45.589951, 28.614901, 39.343960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095020, 29.020763, 38.993511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160759, 29.217644, 39.335442>,  <45.200203, 29.335772, 39.540600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160759, 29.217644, 39.335442>,  <45.095020, 29.020763, 38.993511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160759, 29.217644, 39.335442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104040, 0.870426, -0.481180,
		-0.980901, -0.009857, 0.194259,
		0.164345, 0.492200, 0.854827,
		45.210064, 29.365303, 39.591888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802433, 29.642944, 38.749222>,  <45.095020, 29.020763, 38.993511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802433, 29.642944, 38.749222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979012, 29.700090, 39.103558>,  <45.084961, 29.734377, 39.316158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979012, 29.700090, 39.103558>,  <44.802433, 29.642944, 38.749222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979012, 29.700090, 39.103558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140045, 0.964175, -0.225287,
		-0.886289, 0.223510, 0.405629,
		0.441451, 0.142863, 0.885839,
		45.111446, 29.742949, 39.369308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438210, 30.253124, 38.898407>,  <44.802433, 29.642944, 38.749222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438210, 30.253124, 38.898407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792393, 30.172684, 39.065987>,  <45.004902, 30.124420, 39.166534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792393, 30.172684, 39.065987>,  <44.438210, 30.253124, 38.898407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792393, 30.172684, 39.065987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301413, 0.934699, -0.188384,
		-0.353705, 0.293082, 0.888254,
		0.885462, -0.201099, 0.418946,
		45.058033, 30.112354, 39.191669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567215, 30.813400, 39.282307>,  <44.438210, 30.253124, 38.898407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567215, 30.813400, 39.282307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930439, 30.658485, 39.218506>,  <45.148373, 30.565536, 39.180225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930439, 30.658485, 39.218506>,  <44.567215, 30.813400, 39.282307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930439, 30.658485, 39.218506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250234, 0.807008, -0.534903,
		0.335881, 0.445809, 0.829721,
		0.908056, -0.387289, -0.159502,
		45.202854, 30.542299, 39.170654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045712, 31.343382, 39.565231>,  <44.567215, 30.813400, 39.282307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045712, 31.343382, 39.565231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222755, 31.123056, 39.282188>,  <45.328979, 30.990862, 39.112362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222755, 31.123056, 39.282188>,  <45.045712, 31.343382, 39.565231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222755, 31.123056, 39.282188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317251, 0.834257, -0.450961,
		0.838720, -0.024890, 0.543994,
		0.442607, -0.550813, -0.707605,
		45.355537, 30.957813, 39.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653587, 31.589022, 39.405849>,  <45.045712, 31.343382, 39.565231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653587, 31.589022, 39.405849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621819, 31.364506, 39.076328>,  <45.602757, 31.229797, 38.878616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621819, 31.364506, 39.076328>,  <45.653587, 31.589022, 39.405849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621819, 31.364506, 39.076328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415838, 0.732415, -0.539117,
		0.905964, -0.385388, 0.175232,
		-0.079426, -0.561288, -0.823800,
		45.597992, 31.196119, 38.829189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232658, 31.826294, 38.981075>,  <45.653587, 31.589022, 39.405849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232658, 31.826294, 38.981075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984833, 31.638855, 38.729187>,  <45.836136, 31.526392, 38.578053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984833, 31.638855, 38.729187>,  <46.232658, 31.826294, 38.981075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984833, 31.638855, 38.729187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259967, 0.634477, -0.727912,
		0.740643, -0.614699, -0.271282,
		-0.619569, -0.468598, -0.629722,
		45.798962, 31.498276, 38.540272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638897, 31.699139, 38.481796>,  <46.232658, 31.826294, 38.981075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638897, 31.699139, 38.481796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280903, 31.661463, 38.307377>,  <46.066109, 31.638857, 38.202724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280903, 31.661463, 38.307377>,  <46.638897, 31.699139, 38.481796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280903, 31.661463, 38.307377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357909, 0.431855, -0.827890,
		0.266288, -0.897011, -0.352791,
		-0.894981, -0.094191, -0.436046,
		46.012409, 31.633205, 38.176563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692764, 31.441147, 37.737167>,  <46.638897, 31.699139, 38.481796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692764, 31.441147, 37.737167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320606, 31.587393, 37.747631>,  <46.097309, 31.675140, 37.753910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320606, 31.587393, 37.747631>,  <46.692764, 31.441147, 37.737167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320606, 31.587393, 37.747631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113970, 0.356384, -0.927363,
		-0.348382, -0.859835, -0.373248,
		-0.930398, 0.365616, 0.026162,
		46.041489, 31.697077, 37.755478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409454, 31.433556, 37.096600>,  <46.692764, 31.441147, 37.737167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409454, 31.433556, 37.096600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196091, 31.714441, 37.285225>,  <46.068073, 31.882973, 37.398399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196091, 31.714441, 37.285225>,  <46.409454, 31.433556, 37.096600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196091, 31.714441, 37.285225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013773, 0.564631, -0.825229,
		-0.845748, -0.433687, -0.310849,
		-0.533405, 0.702217, 0.471562,
		46.036068, 31.925106, 37.426693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102100, 31.726664, 36.504742>,  <46.409454, 31.433556, 37.096600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102100, 31.726664, 36.504742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052460, 32.009792, 36.782902>,  <46.022675, 32.179668, 36.949799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052460, 32.009792, 36.782902>,  <46.102100, 31.726664, 36.504742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052460, 32.009792, 36.782902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026965, 0.702968, -0.710710,
		-0.991903, -0.069451, -0.106328,
		-0.124105, 0.707822, 0.695403,
		46.015228, 32.222137, 36.991524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453949, 32.024055, 36.385056>,  <46.102100, 31.726664, 36.504742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453949, 32.024055, 36.385056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652142, 32.314022, 36.576466>,  <45.771057, 32.488003, 36.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652142, 32.314022, 36.576466>,  <45.453949, 32.024055, 36.385056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652142, 32.314022, 36.576466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315545, 0.663491, -0.678389,
		-0.809275, 0.185134, 0.557494,
		0.495485, 0.724917, 0.478529,
		45.800789, 32.531498, 36.720024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067135, 32.618111, 36.257927>,  <45.453949, 32.024055, 36.385056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067135, 32.618111, 36.257927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435482, 32.734882, 36.361298>,  <45.656490, 32.804947, 36.423321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435482, 32.734882, 36.361298>,  <45.067135, 32.618111, 36.257927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435482, 32.734882, 36.361298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025412, 0.706360, -0.707396,
		-0.389051, 0.644850, 0.657881,
		0.920866, 0.291931, 0.258423,
		45.711742, 32.822460, 36.438824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853508, 33.236328, 36.131805>,  <45.067135, 32.618111, 36.257927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853508, 33.236328, 36.131805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251698, 33.217983, 36.165096>,  <45.490612, 33.206974, 36.185070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251698, 33.217983, 36.165096>,  <44.853508, 33.236328, 36.131805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251698, 33.217983, 36.165096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073955, 0.923882, -0.375462,
		-0.059669, 0.379918, 0.923094,
		0.995475, -0.045864, 0.083224,
		45.550339, 33.204224, 36.190063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991470, 33.967636, 36.313843>,  <44.853508, 33.236328, 36.131805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991470, 33.967636, 36.313843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333241, 33.813839, 36.174057>,  <45.538303, 33.721561, 36.090187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333241, 33.813839, 36.174057>,  <44.991470, 33.967636, 36.313843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333241, 33.813839, 36.174057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197078, 0.862163, -0.466729,
		0.480747, 0.329914, 0.812428,
		0.854425, -0.384490, -0.349463,
		45.589569, 33.698490, 36.069218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483421, 34.425076, 36.506275>,  <44.991470, 33.967636, 36.313843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483421, 34.425076, 36.506275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602829, 34.219494, 36.184597>,  <45.674473, 34.096146, 35.991589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602829, 34.219494, 36.184597>,  <45.483421, 34.425076, 36.506275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602829, 34.219494, 36.184597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173851, 0.857804, -0.483682,
		0.938437, 0.004576, 0.345421,
		0.298517, -0.513957, -0.804199,
		45.692383, 34.065308, 35.943336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167023, 34.589432, 36.393467>,  <45.483421, 34.425076, 36.506275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167023, 34.589432, 36.393467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005444, 34.455555, 36.052925>,  <45.908497, 34.375229, 35.848598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005444, 34.455555, 36.052925>,  <46.167023, 34.589432, 36.393467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005444, 34.455555, 36.052925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166751, 0.888131, -0.428272,
		0.899458, -0.314963, -0.302943,
		-0.403943, -0.334696, -0.851357,
		45.884258, 34.355145, 35.797520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605568, 34.765713, 35.803673>,  <46.167023, 34.589432, 36.393467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605568, 34.765713, 35.803673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244183, 34.724918, 35.637135>,  <46.027351, 34.700439, 35.537212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244183, 34.724918, 35.637135>,  <46.605568, 34.765713, 35.803673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244183, 34.724918, 35.637135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120399, 0.871806, -0.474823,
		0.411403, -0.479115, -0.775368,
		-0.903466, -0.101990, -0.416349,
		45.973145, 34.694321, 35.512230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942875, 34.805141, 36.505638>,  <46.605568, 34.765713, 35.803673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942875, 34.805141, 36.505638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248306, 34.591789, 36.360058>,  <47.431564, 34.463779, 36.272709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248306, 34.591789, 36.360058>,  <46.942875, 34.805141, 36.505638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.248306, 34.591789, 36.360058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025580, 0.538206, -0.842425,
		0.645214, 0.652563, 0.397317,
		0.763574, -0.533381, -0.363950,
		47.477379, 34.431774, 36.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574196, 35.203671, 36.223785>,  <46.942875, 34.805141, 36.505638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574196, 35.203671, 36.223785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.503216, 34.852814, 36.045284>,  <47.460629, 34.642300, 35.938183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.503216, 34.852814, 36.045284>,  <47.574196, 35.203671, 36.223785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.503216, 34.852814, 36.045284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069563, 0.463490, -0.883367,
		0.981668, -0.125711, -0.143263,
		-0.177449, -0.877139, -0.446249,
		47.449982, 34.589672, 35.911411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.056908, 35.138428, 35.656178>,  <47.574196, 35.203671, 36.223785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.056908, 35.138428, 35.656178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728085, 34.921963, 35.585346>,  <47.530788, 34.792084, 35.542847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728085, 34.921963, 35.585346>,  <48.056908, 35.138428, 35.656178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.728085, 34.921963, 35.585346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022118, 0.341111, -0.939763,
		0.568972, -0.768624, -0.292383,
		-0.822060, -0.541165, -0.177082,
		47.481468, 34.759613, 35.532223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.092461, 34.620239, 34.997635>,  <48.056908, 35.138428, 35.656178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.092461, 34.620239, 34.997635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739361, 34.776649, 35.101826>,  <47.527500, 34.870495, 35.164341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739361, 34.776649, 35.101826>,  <48.092461, 34.620239, 34.997635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.739361, 34.776649, 35.101826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081684, 0.418219, -0.904666,
		-0.462681, -0.819874, -0.337244,
		-0.882753, 0.391025, 0.260473,
		47.474533, 34.893955, 35.179966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.928284, 38.180088, 40.117779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.581989, 38.073353, 40.287159>,  <41.374214, 38.009312, 40.388786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.581989, 38.073353, 40.287159>,  <41.928284, 38.180088, 40.117779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581989, 38.073353, 40.287159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319833, -0.355827, -0.878120,
		0.384989, -0.895648, 0.222707,
		-0.865731, -0.266837, 0.423447,
		41.322269, 37.993301, 40.414192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743572, 37.511620, 39.763290>,  <41.928284, 38.180088, 40.117779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743572, 37.511620, 39.763290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.407730, 37.674702, 39.906872>,  <41.206226, 37.772552, 39.993019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.407730, 37.674702, 39.906872>,  <41.743572, 37.511620, 39.763290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407730, 37.674702, 39.906872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485938, -0.268422, -0.831753,
		-0.242754, -0.872772, 0.423485,
		-0.839604, 0.407699, 0.358953,
		41.155849, 37.797012, 40.014557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194283, 37.061890, 39.505482>,  <41.743572, 37.511620, 39.763290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194283, 37.061890, 39.505482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.013119, 37.409981, 39.583015>,  <40.904419, 37.618835, 39.629536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.013119, 37.409981, 39.583015>,  <41.194283, 37.061890, 39.505482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013119, 37.409981, 39.583015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562587, -0.110301, -0.819347,
		-0.691639, -0.480141, 0.539537,
		-0.452914, 0.870229, 0.193833,
		40.877243, 37.671051, 39.641167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475117, 36.876301, 39.419060>,  <41.194283, 37.061890, 39.505482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475117, 36.876301, 39.419060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462585, 37.274990, 39.389221>,  <40.455067, 37.514202, 39.371319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462585, 37.274990, 39.389221>,  <40.475117, 36.876301, 39.419060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462585, 37.274990, 39.389221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775161, -0.071348, -0.627722,
		-0.630987, 0.038162, 0.774854,
		-0.031329, 0.996721, -0.074601,
		40.453186, 37.574005, 39.366840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679001, 37.070736, 39.434269>,  <40.475117, 36.876301, 39.419060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679001, 37.070736, 39.434269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.862988, 37.381687, 39.262638>,  <39.973381, 37.568260, 39.159660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.862988, 37.381687, 39.262638>,  <39.679001, 37.070736, 39.434269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862988, 37.381687, 39.262638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774723, 0.115236, -0.621712,
		-0.433861, 0.618385, 0.655259,
		0.459967, 0.777381, -0.429080,
		40.000977, 37.614902, 39.133915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176720, 37.519894, 39.275303>,  <39.679001, 37.070736, 39.434269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176720, 37.519894, 39.275303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481606, 37.629353, 39.040646>,  <39.664536, 37.695030, 38.899853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481606, 37.629353, 39.040646>,  <39.176720, 37.519894, 39.275303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481606, 37.629353, 39.040646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645529, 0.253819, -0.720326,
		-0.048218, 0.927734, 0.370114,
		0.762212, 0.273652, -0.586640,
		39.710270, 37.711449, 38.864655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955837, 38.129532, 38.898048>,  <39.176720, 37.519894, 39.275303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955837, 38.129532, 38.898048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266876, 37.982590, 38.693932>,  <39.453499, 37.894424, 38.571461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266876, 37.982590, 38.693932>,  <38.955837, 38.129532, 38.898048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266876, 37.982590, 38.693932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520757, 0.078537, -0.850085,
		0.352358, 0.926759, -0.130232,
		0.777596, -0.367354, -0.510290,
		39.500156, 37.872383, 38.540844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051071, 38.574974, 38.342785>,  <38.955837, 38.129532, 38.898048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051071, 38.574974, 38.342785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.226257, 38.234215, 38.227924>,  <39.331367, 38.029758, 38.159008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.226257, 38.234215, 38.227924>,  <39.051071, 38.574974, 38.342785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226257, 38.234215, 38.227924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343368, 0.136683, -0.929202,
		0.830834, 0.505558, -0.232652,
		0.437966, -0.851898, -0.287153,
		39.357647, 37.978645, 38.141777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283768, 38.652237, 37.682228>,  <39.051071, 38.574974, 38.342785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283768, 38.652237, 37.682228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310287, 38.253765, 37.704945>,  <39.326199, 38.014683, 37.718575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310287, 38.253765, 37.704945>,  <39.283768, 38.652237, 37.682228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310287, 38.253765, 37.704945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272896, -0.072851, -0.959281,
		0.959756, 0.048096, -0.276684,
		0.066295, -0.996182, 0.056794,
		39.330177, 37.954910, 37.721981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852959, 38.516953, 37.188267>,  <39.283768, 38.652237, 37.682228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852959, 38.516953, 37.188267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607845, 38.208733, 37.258415>,  <39.460777, 38.023800, 37.300503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607845, 38.208733, 37.258415>,  <39.852959, 38.516953, 37.188267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607845, 38.208733, 37.258415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168518, -0.089395, -0.981636,
		0.772077, -0.631079, -0.075072,
		-0.612779, -0.770550, 0.175368,
		39.424011, 37.977566, 37.311028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057175, 37.969833, 36.666061>,  <39.852959, 38.516953, 37.188267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057175, 37.969833, 36.666061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692768, 37.865688, 36.793972>,  <39.474125, 37.803204, 36.870720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692768, 37.865688, 36.793972>,  <40.057175, 37.969833, 36.666061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692768, 37.865688, 36.793972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299809, -0.114238, -0.947135,
		0.283126, -0.958730, 0.026014,
		-0.911018, -0.260359, 0.319780,
		39.419464, 37.787582, 36.889908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944332, 37.454937, 36.210468>,  <40.057175, 37.969833, 36.666061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944332, 37.454937, 36.210468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591827, 37.556282, 36.370064>,  <39.380325, 37.617088, 36.465820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591827, 37.556282, 36.370064>,  <39.944332, 37.454937, 36.210468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591827, 37.556282, 36.370064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393786, 0.073234, -0.916280,
		-0.261373, -0.964595, 0.035234,
		-0.881258, 0.253365, 0.398986,
		39.327450, 37.632290, 36.489761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537865, 36.967041, 35.868866>,  <39.944332, 37.454937, 36.210468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537865, 36.967041, 35.868866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332851, 37.278442, 36.013779>,  <39.209843, 37.465282, 36.100727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332851, 37.278442, 36.013779>,  <39.537865, 36.967041, 35.868866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332851, 37.278442, 36.013779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458448, 0.108653, -0.882054,
		-0.726043, -0.618168, 0.301214,
		-0.512530, 0.778500, 0.362285,
		39.179092, 37.511993, 36.122463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794266, 36.910088, 35.743984>,  <39.537865, 36.967041, 35.868866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794266, 36.910088, 35.743984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837917, 37.305832, 35.782486>,  <38.864109, 37.543278, 35.805588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837917, 37.305832, 35.782486>,  <38.794266, 36.910088, 35.743984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837917, 37.305832, 35.782486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589323, 0.142373, -0.795254,
		-0.800494, 0.030056, 0.598587,
		0.109125, 0.989357, 0.096256,
		38.870655, 37.602638, 35.811363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074497, 37.218014, 35.706165>,  <38.794266, 36.910088, 35.743984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074497, 37.218014, 35.706165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319118, 37.524574, 35.627552>,  <38.465893, 37.708511, 35.580383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319118, 37.524574, 35.627552>,  <38.074497, 37.218014, 35.706165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319118, 37.524574, 35.627552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552094, 0.235439, -0.799851,
		-0.566736, 0.597659, 0.567110,
		0.611558, 0.766402, -0.196532,
		38.502586, 37.754494, 35.568592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616264, 37.836761, 35.511555>,  <38.074497, 37.218014, 35.706165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616264, 37.836761, 35.511555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968422, 37.926960, 35.344673>,  <38.179718, 37.981079, 35.244545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968422, 37.926960, 35.344673>,  <37.616264, 37.836761, 35.511555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968422, 37.926960, 35.344673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474054, 0.443272, -0.760777,
		0.013385, 0.867561, 0.497150,
		0.880394, 0.225493, -0.417205,
		38.232540, 37.994606, 35.219513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549286, 38.565868, 35.239075>,  <37.616264, 37.836761, 35.511555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549286, 38.565868, 35.239075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861877, 38.384163, 35.067993>,  <38.049435, 38.275139, 34.965343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861877, 38.384163, 35.067993>,  <37.549286, 38.565868, 35.239075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861877, 38.384163, 35.067993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333675, 0.274947, -0.901701,
		0.527205, 0.847378, 0.063291,
		0.781483, -0.454263, -0.427702,
		38.096321, 38.247883, 34.939682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820507, 38.989887, 34.679062>,  <37.549286, 38.565868, 35.239075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820507, 38.989887, 34.679062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969124, 38.644928, 34.541527>,  <38.058292, 38.437954, 34.459003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969124, 38.644928, 34.541527>,  <37.820507, 38.989887, 34.679062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969124, 38.644928, 34.541527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274880, 0.251565, -0.927985,
		0.886791, 0.439299, -0.143589,
		0.371541, -0.862398, -0.343840,
		38.080585, 38.386208, 34.438374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087006, 39.198723, 34.087578>,  <37.820507, 38.989887, 34.679062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087006, 39.198723, 34.087578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080482, 38.801991, 34.036961>,  <38.076569, 38.563953, 34.006588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080482, 38.801991, 34.036961>,  <38.087006, 39.198723, 34.087578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080482, 38.801991, 34.036961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041187, 0.125789, -0.991202,
		0.999018, -0.021374, 0.038800,
		-0.016306, -0.991827, -0.126546,
		38.075592, 38.504444, 33.998997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702534, 39.019783, 33.672256>,  <38.087006, 39.198723, 34.087578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702534, 39.019783, 33.672256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404686, 38.758057, 33.619473>,  <38.225979, 38.601021, 33.587803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404686, 38.758057, 33.619473>,  <38.702534, 39.019783, 33.672256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404686, 38.758057, 33.619473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182076, -0.008910, -0.983244,
		0.642180, -0.756166, 0.125771,
		-0.744616, -0.654320, -0.131958,
		38.181301, 38.561760, 33.579884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037727, 38.643051, 33.143383>,  <38.702534, 39.019783, 33.672256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037727, 38.643051, 33.143383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656139, 38.523952, 33.129028>,  <38.427185, 38.452492, 33.120415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656139, 38.523952, 33.129028>,  <39.037727, 38.643051, 33.143383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656139, 38.523952, 33.129028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037898, 0.238398, -0.970428,
		0.297499, -0.924399, -0.238708,
		-0.953970, -0.297748, -0.035890,
		38.369949, 38.434628, 33.118263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981670, 38.157207, 32.613113>,  <39.037727, 38.643051, 33.143383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981670, 38.157207, 32.613113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623947, 38.330467, 32.657993>,  <38.409313, 38.434422, 32.684921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623947, 38.330467, 32.657993>,  <38.981670, 38.157207, 32.613113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623947, 38.330467, 32.657993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032038, 0.188134, -0.981621,
		-0.446296, -0.881470, -0.154373,
		-0.894312, 0.433147, 0.112204,
		38.355652, 38.460411, 32.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727741, 38.078377, 32.677166>,  <38.981670, 38.157207, 32.613113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727741, 38.078377, 32.677166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917820, 37.853584, 32.406353>,  <40.031868, 37.718708, 32.243866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917820, 37.853584, 32.406353>,  <39.727741, 38.078377, 32.677166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917820, 37.853584, 32.406353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742120, -0.157395, 0.651525,
		-0.472704, -0.812040, 0.342262,
		0.475194, -0.561977, -0.677032,
		40.060379, 37.684990, 32.203243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753223, 37.323353, 32.916866>,  <39.727741, 38.078377, 32.677166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753223, 37.323353, 32.916866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.049747, 37.428654, 32.669914>,  <40.227661, 37.491837, 32.521744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.049747, 37.428654, 32.669914>,  <39.753223, 37.323353, 32.916866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049747, 37.428654, 32.669914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646321, -0.032065, 0.762392,
		0.180908, -0.964193, -0.193917,
		0.741311, 0.263256, -0.617377,
		40.272141, 37.507629, 32.484699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304367, 36.892197, 33.223759>,  <39.753223, 37.323353, 32.916866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304367, 36.892197, 33.223759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496971, 37.122452, 32.959396>,  <40.612534, 37.260605, 32.800777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496971, 37.122452, 32.959396>,  <40.304367, 36.892197, 33.223759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496971, 37.122452, 32.959396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847807, -0.114732, 0.517745,
		0.222206, -0.809617, -0.543272,
		0.481505, 0.575636, -0.660905,
		40.641422, 37.295143, 32.761124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894783, 36.549156, 33.264111>,  <40.304367, 36.892197, 33.223759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894783, 36.549156, 33.264111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979336, 36.915989, 33.128887>,  <41.030067, 37.136089, 33.047752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979336, 36.915989, 33.128887>,  <40.894783, 36.549156, 33.264111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979336, 36.915989, 33.128887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852800, -0.004061, 0.522223,
		0.477546, -0.398689, -0.782942,
		0.211384, 0.917077, -0.338062,
		41.042751, 37.191113, 33.027470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653893, 36.578606, 33.093605>,  <40.894783, 36.549156, 33.264111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653893, 36.578606, 33.093605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.520111, 36.944862, 33.182812>,  <41.439842, 37.164616, 33.236336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.520111, 36.944862, 33.182812>,  <41.653893, 36.578606, 33.093605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520111, 36.944862, 33.182812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745127, 0.112041, 0.657444,
		0.577000, 0.386055, -0.719745,
		-0.334451, 0.915646, 0.223013,
		41.419777, 37.219555, 33.249714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285187, 36.977825, 33.087402>,  <41.653893, 36.578606, 33.093605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285187, 36.977825, 33.087402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.007610, 37.160667, 33.309937>,  <41.841064, 37.270370, 33.443459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.007610, 37.160667, 33.309937>,  <42.285187, 36.977825, 33.087402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007610, 37.160667, 33.309937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670146, 0.127411, 0.731212,
		0.263354, 0.880241, -0.394740,
		-0.693937, 0.457101, 0.556336,
		41.799431, 37.297798, 33.476837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704041, 37.695011, 33.315331>,  <42.285187, 36.977825, 33.087402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704041, 37.695011, 33.315331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.403488, 37.598057, 33.560829>,  <42.223156, 37.539886, 33.708126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.403488, 37.598057, 33.560829>,  <42.704041, 37.695011, 33.315331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403488, 37.598057, 33.560829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597743, 0.143979, 0.788653,
		-0.279522, 0.959437, 0.036701,
		-0.751379, -0.242383, 0.613742,
		42.178074, 37.525341, 33.744953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657734, 38.195717, 33.842106>,  <42.704041, 37.695011, 33.315331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657734, 38.195717, 33.842106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.494701, 37.871700, 34.010723>,  <42.396881, 37.677288, 34.111893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.494701, 37.871700, 34.010723>,  <42.657734, 38.195717, 33.842106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494701, 37.871700, 34.010723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587172, 0.121064, 0.800358,
		-0.699360, 0.573734, 0.426292,
		-0.407584, -0.810045, 0.421547,
		42.372425, 37.628685, 34.137188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714176, 38.420673, 34.517609>,  <42.657734, 38.195717, 33.842106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714176, 38.420673, 34.517609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.648384, 38.026165, 34.523453>,  <42.608910, 37.789459, 34.526958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.648384, 38.026165, 34.523453>,  <42.714176, 38.420673, 34.517609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648384, 38.026165, 34.523453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420808, -0.056768, 0.905372,
		-0.892115, 0.155058, 0.424368,
		-0.164476, -0.986273, 0.014606,
		42.599041, 37.730282, 34.527836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418411, 38.318851, 35.104866>,  <42.714176, 38.420673, 34.517609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418411, 38.318851, 35.104866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.537128, 37.942482, 35.039654>,  <42.608356, 37.716660, 35.000526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.537128, 37.942482, 35.039654>,  <42.418411, 38.318851, 35.104866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537128, 37.942482, 35.039654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472064, -0.003840, 0.881556,
		-0.830103, -0.338597, 0.443036,
		0.296791, -0.940923, -0.163027,
		42.626167, 37.660206, 34.990746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057846, 37.819855, 35.629978>,  <42.418411, 38.318851, 35.104866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057846, 37.819855, 35.629978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.384357, 37.631382, 35.496307>,  <42.580265, 37.518299, 35.416103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.384357, 37.631382, 35.496307>,  <42.057846, 37.819855, 35.629978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384357, 37.631382, 35.496307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241896, -0.246526, 0.938462,
		-0.524567, -0.846886, -0.087258,
		0.816282, -0.471179, -0.334178,
		42.629242, 37.490028, 35.396053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908783, 37.158264, 35.772858>,  <42.057846, 37.819855, 35.629978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908783, 37.158264, 35.772858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.305393, 37.204548, 35.749249>,  <42.543362, 37.232319, 35.735085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.305393, 37.204548, 35.749249>,  <41.908783, 37.158264, 35.772858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305393, 37.204548, 35.749249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094875, -0.334754, 0.937517,
		0.088726, -0.935174, -0.342896,
		0.991527, 0.115714, -0.059024,
		42.602852, 37.239262, 35.731541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283539, 36.620518, 36.151257>,  <41.908783, 37.158264, 35.772858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283539, 36.620518, 36.151257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.585960, 36.880466, 36.120132>,  <42.767414, 37.036434, 36.101460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.585960, 36.880466, 36.120132>,  <42.283539, 36.620518, 36.151257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585960, 36.880466, 36.120132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321743, -0.265502, 0.908840,
		0.569968, -0.712166, -0.409824,
		0.756055, 0.649868, -0.077807,
		42.812778, 37.075428, 36.096790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853867, 36.227814, 36.296127>,  <42.283539, 36.620518, 36.151257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853867, 36.227814, 36.296127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.967495, 36.604893, 36.366119>,  <43.035671, 36.831142, 36.408115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.967495, 36.604893, 36.366119>,  <42.853867, 36.227814, 36.296127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967495, 36.604893, 36.366119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212616, -0.239889, 0.947232,
		0.934932, -0.231877, -0.268579,
		0.284070, 0.942702, 0.174979,
		43.052715, 36.887703, 36.418613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486439, 36.138023, 36.643494>,  <42.853867, 36.227814, 36.296127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486439, 36.138023, 36.643494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.342892, 36.499687, 36.736187>,  <43.256763, 36.716686, 36.791801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.342892, 36.499687, 36.736187>,  <43.486439, 36.138023, 36.643494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342892, 36.499687, 36.736187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218939, -0.159803, 0.962564,
		0.907347, 0.396171, -0.140608,
		-0.358870, 0.904164, 0.231734,
		43.235229, 36.770935, 36.805706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988586, 36.398594, 37.122612>,  <43.486439, 36.138023, 36.643494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988586, 36.398594, 37.122612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.649967, 36.609398, 37.152596>,  <43.446796, 36.735878, 37.170586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.649967, 36.609398, 37.152596>,  <43.988586, 36.398594, 37.122612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649967, 36.609398, 37.152596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072618, -0.025157, 0.997042,
		0.527333, 0.849489, -0.016974,
		-0.846550, 0.527006, 0.074954,
		43.396004, 36.767498, 37.175083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195103, 36.928032, 37.497883>,  <43.988586, 36.398594, 37.122612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195103, 36.928032, 37.497883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.798313, 36.903446, 37.542091>,  <43.560242, 36.888695, 37.568615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.798313, 36.903446, 37.542091>,  <44.195103, 36.928032, 37.497883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798313, 36.903446, 37.542091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105770, 0.075840, 0.991494,
		-0.069326, 0.995224, -0.068730,
		-0.991971, -0.061466, 0.110522,
		43.500721, 36.885006, 37.575249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949680, 37.510532, 37.777916>,  <44.195103, 36.928032, 37.497883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949680, 37.510532, 37.777916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.680027, 37.235130, 37.884869>,  <43.518234, 37.069889, 37.949039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.680027, 37.235130, 37.884869>,  <43.949680, 37.510532, 37.777916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680027, 37.235130, 37.884869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136940, 0.239227, 0.961259,
		-0.725801, 0.684635, -0.066988,
		-0.674137, -0.688509, 0.267385,
		43.477787, 37.028576, 37.965084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.532429, 37.843082, 38.300797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.478374, 37.452614, 38.368706>,  <43.445942, 37.218330, 38.409451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.478374, 37.452614, 38.368706>,  <43.532429, 37.843082, 38.300797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478374, 37.452614, 38.368706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140282, 0.188470, 0.972008,
		-0.980846, 0.107540, -0.162409,
		-0.135139, -0.976173, 0.169774,
		43.437832, 37.159763, 38.419640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901997, 37.794636, 38.737270>,  <43.532429, 37.843082, 38.300797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901997, 37.794636, 38.737270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.067066, 37.434818, 38.794582>,  <43.166107, 37.218929, 38.828968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.067066, 37.434818, 38.794582>,  <42.901997, 37.794636, 38.737270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067066, 37.434818, 38.794582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058820, 0.183282, 0.981299,
		-0.908979, -0.396527, 0.128546,
		0.412671, -0.899541, 0.143275,
		43.190868, 37.164955, 38.837566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537537, 37.534073, 39.359352>,  <42.901997, 37.794636, 38.737270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537537, 37.534073, 39.359352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.858002, 37.296322, 39.331459>,  <43.050282, 37.153671, 39.314724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.858002, 37.296322, 39.331459>,  <42.537537, 37.534073, 39.359352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858002, 37.296322, 39.331459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136349, 0.067832, 0.988336,
		-0.582710, -0.801323, 0.135387,
		0.801160, -0.594373, -0.069733,
		43.098351, 37.118011, 39.310539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432678, 37.131893, 39.848816>,  <42.537537, 37.534073, 39.359352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432678, 37.131893, 39.848816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.828617, 37.109550, 39.796524>,  <43.066181, 37.096146, 39.765148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.828617, 37.109550, 39.796524>,  <42.432678, 37.131893, 39.848816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828617, 37.109550, 39.796524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135448, 0.091321, 0.986567,
		-0.043163, -0.994254, 0.097959,
		0.989844, -0.055852, -0.130728,
		43.125568, 37.092796, 39.757305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708733, 36.682743, 40.354313>,  <42.432678, 37.131893, 39.848816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708733, 36.682743, 40.354313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.030632, 36.890709, 40.239716>,  <43.223770, 37.015488, 40.170959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.030632, 36.890709, 40.239716>,  <42.708733, 36.682743, 40.354313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030632, 36.890709, 40.239716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361589, -0.046573, 0.931174,
		0.470785, -0.852950, -0.225474,
		0.804745, 0.519912, -0.286491,
		43.272057, 37.046680, 40.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394432, 36.353722, 40.651760>,  <42.708733, 36.682743, 40.354313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394432, 36.353722, 40.651760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.477528, 36.738186, 40.579071>,  <43.527386, 36.968864, 40.535458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.477528, 36.738186, 40.579071>,  <43.394432, 36.353722, 40.651760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477528, 36.738186, 40.579071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411631, 0.082628, 0.907597,
		0.887359, -0.263342, -0.378477,
		0.207736, 0.961157, -0.181721,
		43.539848, 37.026531, 40.524555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125584, 36.532932, 40.840061>,  <43.394432, 36.353722, 40.651760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125584, 36.532932, 40.840061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.981079, 36.905693, 40.827141>,  <43.894375, 37.129349, 40.819389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.981079, 36.905693, 40.827141>,  <44.125584, 36.532932, 40.840061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981079, 36.905693, 40.827141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499367, 0.222602, 0.837306,
		0.787480, 0.286357, -0.545780,
		-0.361260, 0.931906, -0.032297,
		43.872700, 37.185265, 40.817451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669518, 36.976490, 40.914154>,  <44.125584, 36.532932, 40.840061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669518, 36.976490, 40.914154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.362328, 37.202488, 41.034817>,  <44.178013, 37.338089, 41.107212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.362328, 37.202488, 41.034817>,  <44.669518, 36.976490, 40.914154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362328, 37.202488, 41.034817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549413, 0.339072, 0.763659,
		0.329185, 0.752201, -0.570816,
		-0.767973, 0.564999, 0.301652,
		44.131935, 37.371986, 41.125313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939056, 37.718716, 41.083275>,  <44.669518, 36.976490, 40.914154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939056, 37.718716, 41.083275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.611408, 37.588776, 41.272385>,  <44.414822, 37.510811, 41.385853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.611408, 37.588776, 41.272385>,  <44.939056, 37.718716, 41.083275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611408, 37.588776, 41.272385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393821, 0.280783, 0.875252,
		-0.417074, 0.903124, -0.102061,
		-0.819118, -0.324851, 0.472776,
		44.365673, 37.491322, 41.414219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941936, 38.152237, 41.649067>,  <44.939056, 37.718716, 41.083275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941936, 38.152237, 41.649067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.641132, 37.907944, 41.748257>,  <44.460651, 37.761368, 41.807770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.641132, 37.907944, 41.748257>,  <44.941936, 38.152237, 41.649067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641132, 37.907944, 41.748257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197424, 0.150245, 0.968736,
		-0.628892, 0.777456, 0.007587,
		-0.752010, -0.610729, 0.247976,
		44.415531, 37.724724, 41.822651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524513, 38.546207, 42.176453>,  <44.941936, 38.152237, 41.649067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524513, 38.546207, 42.176453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448303, 38.157005, 42.228550>,  <44.402576, 37.923485, 42.259808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448303, 38.157005, 42.228550>,  <44.524513, 38.546207, 42.176453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448303, 38.157005, 42.228550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037186, 0.125429, 0.991405,
		-0.980977, 0.193735, 0.012284,
		-0.190529, -0.973002, 0.130247,
		44.391144, 37.865105, 42.267624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167858, 38.564957, 42.780979>,  <44.524513, 38.546207, 42.176453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167858, 38.564957, 42.780979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289829, 38.184433, 42.762959>,  <44.363010, 37.956120, 42.752144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289829, 38.184433, 42.762959>,  <44.167858, 38.564957, 42.780979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289829, 38.184433, 42.762959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003153, -0.048315, 0.998827,
		-0.952371, -0.304425, -0.017732,
		0.304925, -0.951310, -0.045054,
		44.381306, 37.899040, 42.749443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678169, 38.199738, 43.183586>,  <44.167858, 38.564957, 42.780979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678169, 38.199738, 43.183586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.998512, 37.960625, 43.169228>,  <44.190716, 37.817158, 43.160614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.998512, 37.960625, 43.169228>,  <43.678169, 38.199738, 43.183586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998512, 37.960625, 43.169228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013756, -0.078282, 0.996836,
		-0.598702, -0.797826, -0.070915,
		0.800853, -0.597784, -0.035892,
		44.238770, 37.781288, 43.158459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502468, 37.658260, 43.689827>,  <43.678169, 38.199738, 43.183586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502468, 37.658260, 43.689827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.896118, 37.607811, 43.639893>,  <44.132309, 37.577541, 43.609932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.896118, 37.607811, 43.639893>,  <43.502468, 37.658260, 43.689827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896118, 37.607811, 43.639893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095051, -0.219382, 0.970998,
		-0.149856, -0.967452, -0.203912,
		0.984128, -0.126128, -0.124833,
		44.191357, 37.569973, 43.602444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635323, 37.022324, 44.073177>,  <43.502468, 37.658260, 43.689827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635323, 37.022324, 44.073177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.983170, 37.208164, 44.006348>,  <44.191879, 37.319668, 43.966251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.983170, 37.208164, 44.006348>,  <43.635323, 37.022324, 44.073177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983170, 37.208164, 44.006348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262641, -0.148763, 0.953357,
		0.418075, -0.872936, -0.251389,
		0.869617, 0.464600, -0.167074,
		44.244053, 37.347546, 43.956226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116104, 36.546379, 44.416500>,  <43.635323, 37.022324, 44.073177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116104, 36.546379, 44.416500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.251663, 36.921341, 44.384426>,  <44.332996, 37.146317, 44.365181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.251663, 36.921341, 44.384426>,  <44.116104, 36.546379, 44.416500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251663, 36.921341, 44.384426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234791, -0.001739, 0.972044,
		0.911056, -0.348246, -0.220683,
		0.338894, 0.937401, -0.080181,
		44.353333, 37.202560, 44.360371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765690, 36.434238, 44.509781>,  <44.116104, 36.546379, 44.416500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765690, 36.434238, 44.509781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.688034, 36.815762, 44.601482>,  <44.641441, 37.044674, 44.656506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.688034, 36.815762, 44.601482>,  <44.765690, 36.434238, 44.509781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688034, 36.815762, 44.601482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469348, -0.114904, 0.875505,
		0.861407, 0.277573, -0.425361,
		-0.194141, 0.953808, 0.229257,
		44.629791, 37.101906, 44.670261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374760, 36.723320, 44.878441>,  <44.765690, 36.434238, 44.509781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374760, 36.723320, 44.878441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.087952, 36.985374, 44.973675>,  <44.915867, 37.142609, 45.030815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.087952, 36.985374, 44.973675>,  <45.374760, 36.723320, 44.878441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087952, 36.985374, 44.973675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314103, -0.001242, 0.949388,
		0.622275, 0.755509, -0.204890,
		-0.717017, 0.655137, 0.238080,
		44.872849, 37.181915, 45.045097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726074, 37.193878, 45.272026>,  <45.374760, 36.723320, 44.878441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726074, 37.193878, 45.272026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.342880, 37.231995, 45.380234>,  <45.112965, 37.254864, 45.445160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.342880, 37.231995, 45.380234>,  <45.726074, 37.193878, 45.272026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342880, 37.231995, 45.380234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281394, 0.129838, 0.950768,
		0.055474, 0.986946, -0.151197,
		-0.957987, 0.095289, 0.270518,
		45.055485, 37.260582, 45.461388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729340, 37.694527, 45.838543>,  <45.726074, 37.193878, 45.272026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729340, 37.694527, 45.838543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.362492, 37.536507, 45.859795>,  <45.142384, 37.441696, 45.872547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.362492, 37.536507, 45.859795>,  <45.729340, 37.694527, 45.838543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362492, 37.536507, 45.859795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030954, 0.062307, 0.997577,
		-0.397400, 0.916546, -0.044915,
		-0.917123, -0.395047, 0.053132,
		45.087353, 37.417992, 45.875732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369652, 38.088642, 46.298138>,  <45.729340, 37.694527, 45.838543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369652, 38.088642, 46.298138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165916, 37.744537, 46.289024>,  <45.043674, 37.538074, 46.283558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165916, 37.744537, 46.289024>,  <45.369652, 38.088642, 46.298138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165916, 37.744537, 46.289024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004763, -0.029290, 0.999560,
		-0.860551, 0.509009, 0.019016,
		-0.509342, -0.860263, -0.022781,
		45.013115, 37.486458, 46.282188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817310, 38.181992, 46.667923>,  <45.369652, 38.088642, 46.298138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817310, 38.181992, 46.667923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.902443, 37.791363, 46.655258>,  <44.953522, 37.556984, 46.647659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.902443, 37.791363, 46.655258>,  <44.817310, 38.181992, 46.667923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902443, 37.791363, 46.655258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055230, -0.044379, 0.997487,
		-0.975528, -0.210545, -0.063382,
		0.212828, -0.976577, -0.031665,
		44.966293, 37.498390, 46.645760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346073, 37.781391, 47.017376>,  <44.817310, 38.181992, 46.667923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346073, 37.781391, 47.017376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.670013, 37.546757, 47.020313>,  <44.864380, 37.405975, 47.022076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.670013, 37.546757, 47.020313>,  <44.346073, 37.781391, 47.017376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670013, 37.546757, 47.020313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060939, 0.096575, 0.993459,
		-0.583459, -0.804108, 0.113957,
		0.809853, -0.586587, 0.007346,
		44.912968, 37.370781, 47.022518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347404, 37.179775, 47.603199>,  <44.346073, 37.781391, 47.017376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347404, 37.179775, 47.603199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720879, 37.269428, 47.491489>,  <44.944965, 37.323219, 47.424465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720879, 37.269428, 47.491489>,  <44.347404, 37.179775, 47.603199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720879, 37.269428, 47.491489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267847, 0.080497, 0.960093,
		0.237669, -0.971228, 0.015126,
		0.933687, 0.224133, -0.279273,
		45.000984, 37.336670, 47.407707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709145, 37.081902, 47.676678>,  <44.347404, 37.179775, 47.603199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709145, 37.081902, 47.676678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437111, 37.333622, 47.827129>,  <43.273891, 37.484653, 47.917400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437111, 37.333622, 47.827129>,  <43.709145, 37.081902, 47.676678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437111, 37.333622, 47.827129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535722, -0.076326, -0.840938,
		-0.500493, -0.773407, 0.389036,
		-0.680080, 0.629299, 0.376131,
		43.233086, 37.522411, 47.939968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212776, 36.940788, 47.325111>,  <43.709145, 37.081902, 47.676678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212776, 36.940788, 47.325111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049297, 37.258751, 47.504482>,  <42.951210, 37.449528, 47.612103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049297, 37.258751, 47.504482>,  <43.212776, 36.940788, 47.325111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049297, 37.258751, 47.504482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634208, 0.105967, -0.765867,
		-0.656313, -0.597402, 0.460830,
		-0.408697, 0.794910, 0.448424,
		42.926689, 37.497223, 47.639011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633030, 36.876873, 47.186810>,  <43.212776, 36.940788, 47.325111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633030, 36.876873, 47.186810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.682915, 37.260189, 47.289673>,  <42.712845, 37.490177, 47.351391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.682915, 37.260189, 47.289673>,  <42.633030, 36.876873, 47.186810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682915, 37.260189, 47.289673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573438, 0.281124, -0.769505,
		-0.809702, -0.051502, 0.584578,
		0.124708, 0.958289, 0.257159,
		42.720325, 37.547676, 47.366821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900955, 37.236027, 47.328777>,  <42.633030, 36.876873, 47.186810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900955, 37.236027, 47.328777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.174030, 37.502724, 47.209183>,  <42.337875, 37.662743, 47.137424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.174030, 37.502724, 47.209183>,  <41.900955, 37.236027, 47.328777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174030, 37.502724, 47.209183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583061, 0.250421, -0.772870,
		-0.440434, 0.701955, 0.559712,
		0.682684, 0.666745, -0.298989,
		42.378834, 37.702747, 47.119488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580662, 37.755360, 47.171528>,  <41.900955, 37.236027, 47.328777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580662, 37.755360, 47.171528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.925339, 37.821354, 46.979584>,  <42.132145, 37.860950, 46.864418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.925339, 37.821354, 46.979584>,  <41.580662, 37.755360, 47.171528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925339, 37.821354, 46.979584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491495, 0.036270, -0.870125,
		-0.126152, 0.985629, 0.112343,
		0.861695, 0.164984, -0.479856,
		42.183846, 37.870850, 46.835629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381092, 37.853981, 46.526321>,  <41.580662, 37.755360, 47.171528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381092, 37.853981, 46.526321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765606, 37.855637, 46.416111>,  <41.996315, 37.856628, 46.349983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765606, 37.855637, 46.416111>,  <41.381092, 37.853981, 46.526321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765606, 37.855637, 46.416111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275036, -0.047002, -0.960284,
		-0.016924, 0.998886, -0.044044,
		0.961285, 0.004138, -0.275525,
		42.053993, 37.856876, 46.333454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460457, 38.295574, 45.954620>,  <41.381092, 37.853981, 46.526321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460457, 38.295574, 45.954620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774082, 38.047459, 45.945812>,  <41.962257, 37.898590, 45.940529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774082, 38.047459, 45.945812>,  <41.460457, 38.295574, 45.954620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774082, 38.047459, 45.945812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125552, -0.123764, -0.984337,
		0.607847, 0.774549, -0.174917,
		0.784065, -0.620288, -0.022016,
		42.009300, 37.861374, 45.939209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810658, 38.505058, 45.351311>,  <41.460457, 38.295574, 45.954620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810658, 38.505058, 45.351311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940636, 38.134037, 45.425121>,  <42.018623, 37.911423, 45.469410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940636, 38.134037, 45.425121>,  <41.810658, 38.505058, 45.351311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940636, 38.134037, 45.425121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060461, -0.174345, -0.982827,
		0.943799, 0.330521, -0.000572,
		0.324944, -0.927556, 0.184530,
		42.038120, 37.855770, 45.480480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272087, 38.372032, 44.832211>,  <41.810658, 38.505058, 45.351311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272087, 38.372032, 44.832211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.230476, 37.998043, 44.967854>,  <42.205509, 37.773647, 45.049240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.230476, 37.998043, 44.967854>,  <42.272087, 38.372032, 44.832211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230476, 37.998043, 44.967854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126447, -0.325762, -0.936958,
		0.986504, -0.140347, -0.084338,
		-0.104025, -0.934977, 0.339112,
		42.199268, 37.717548, 45.069588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756435, 37.965031, 44.517700>,  <42.272087, 38.372032, 44.832211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756435, 37.965031, 44.517700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.468666, 37.712910, 44.634426>,  <42.296005, 37.561638, 44.704460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.468666, 37.712910, 44.634426>,  <42.756435, 37.965031, 44.517700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468666, 37.712910, 44.634426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190490, -0.224976, -0.955562,
		0.667940, -0.743041, 0.041787,
		-0.719423, -0.630299, 0.291812,
		42.252838, 37.523819, 44.721970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962753, 37.408844, 44.164051>,  <42.756435, 37.965031, 44.517700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962753, 37.408844, 44.164051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573650, 37.379089, 44.251873>,  <42.340187, 37.361237, 44.304565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573650, 37.379089, 44.251873>,  <42.962753, 37.408844, 44.164051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573650, 37.379089, 44.251873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211012, -0.107982, -0.971501,
		0.095978, -0.991366, 0.089343,
		-0.972760, -0.074390, 0.219554,
		42.281822, 37.356773, 44.317738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709667, 37.000404, 43.657726>,  <42.962753, 37.408844, 44.164051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709667, 37.000404, 43.657726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.379223, 37.184189, 43.788227>,  <42.180958, 37.294460, 43.866528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.379223, 37.184189, 43.788227>,  <42.709667, 37.000404, 43.657726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379223, 37.184189, 43.788227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340830, 0.053669, -0.938592,
		-0.448753, -0.886577, 0.112260,
		-0.826109, 0.459457, 0.326256,
		42.131390, 37.322025, 43.886105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266415, 36.708477, 43.324028>,  <42.709667, 37.000404, 43.657726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266415, 36.708477, 43.324028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.098164, 37.051983, 43.441055>,  <41.997211, 37.258087, 43.511272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.098164, 37.051983, 43.441055>,  <42.266415, 36.708477, 43.324028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098164, 37.051983, 43.441055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277714, 0.185118, -0.942659,
		-0.863681, -0.477761, 0.160625,
		-0.420631, 0.858764, 0.292563,
		41.971973, 37.309612, 43.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567719, 36.715195, 43.097603>,  <42.266415, 36.708477, 43.324028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567719, 36.715195, 43.097603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641006, 37.105465, 43.145748>,  <41.684978, 37.339626, 43.174633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641006, 37.105465, 43.145748>,  <41.567719, 36.715195, 43.097603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641006, 37.105465, 43.145748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216437, 0.159463, -0.963186,
		-0.958951, 0.150420, 0.240389,
		0.183215, 0.975677, 0.120360,
		41.695972, 37.398167, 43.181858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074734, 37.079281, 42.678539>,  <41.567719, 36.715195, 43.097603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074734, 37.079281, 42.678539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359947, 37.350330, 42.750549>,  <41.531075, 37.512962, 42.793755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359947, 37.350330, 42.750549>,  <41.074734, 37.079281, 42.678539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359947, 37.350330, 42.750549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256742, 0.491271, -0.832308,
		-0.652435, 0.547241, 0.524267,
		0.713030, 0.677628, 0.180023,
		41.573856, 37.553619, 42.804558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827881, 37.834568, 42.751534>,  <41.074734, 37.079281, 42.678539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827881, 37.834568, 42.751534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.207382, 37.846603, 42.625702>,  <41.435081, 37.853825, 42.550201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.207382, 37.846603, 42.625702>,  <40.827881, 37.834568, 42.751534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207382, 37.846603, 42.625702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282958, 0.524134, -0.803255,
		0.140712, 0.851104, 0.505788,
		0.948754, 0.030089, -0.314578,
		41.492008, 37.855629, 42.531330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857018, 38.485493, 42.499180>,  <40.827881, 37.834568, 42.751534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857018, 38.485493, 42.499180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157211, 38.287632, 42.323864>,  <41.337326, 38.168915, 42.218674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157211, 38.287632, 42.323864>,  <40.857018, 38.485493, 42.499180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157211, 38.287632, 42.323864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239128, 0.415014, -0.877828,
		0.616113, 0.763602, 0.193177,
		0.750482, -0.494647, -0.438294,
		41.382355, 38.139236, 42.192375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123264, 38.952240, 41.926006>,  <40.857018, 38.485493, 42.499180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123264, 38.952240, 41.926006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.301502, 38.601444, 41.854073>,  <41.408443, 38.390968, 41.810913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.301502, 38.601444, 41.854073>,  <41.123264, 38.952240, 41.926006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301502, 38.601444, 41.854073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275889, 0.056582, -0.959523,
		0.851666, 0.477169, -0.216739,
		0.445590, -0.876988, -0.179835,
		41.435181, 38.338348, 41.800121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486629, 39.088161, 41.240734>,  <41.123264, 38.952240, 41.926006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486629, 39.088161, 41.240734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.447006, 38.691399, 41.272518>,  <41.423233, 38.453342, 41.291588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.447006, 38.691399, 41.272518>,  <41.486629, 39.088161, 41.240734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447006, 38.691399, 41.272518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359066, -0.038838, -0.932504,
		0.928040, -0.120903, -0.352312,
		-0.099060, -0.991904, 0.079456,
		41.417290, 38.393826, 41.296356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776951, 38.831718, 40.631516>,  <41.486629, 39.088161, 41.240734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776951, 38.831718, 40.631516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536575, 38.543156, 40.769176>,  <41.392349, 38.370018, 40.851772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536575, 38.543156, 40.769176>,  <41.776951, 38.831718, 40.631516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536575, 38.543156, 40.769176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298353, -0.196989, -0.933906,
		0.741522, -0.663901, -0.096856,
		-0.600941, -0.721409, 0.344148,
		41.356293, 38.326733, 40.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.173679, 28.300499, 39.639404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113186, 28.061199, 39.324642>,  <42.076889, 27.917620, 39.135784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113186, 28.061199, 39.324642>,  <42.173679, 28.300499, 39.639404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113186, 28.061199, 39.324642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052792, 0.799816, -0.597920,
		0.987087, -0.048885, -0.152544,
		-0.151236, -0.598252, -0.786907,
		42.067814, 27.881723, 39.088570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671932, 28.469984, 39.177956>,  <42.173679, 28.300499, 39.639404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671932, 28.469984, 39.177956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367664, 28.313042, 38.971100>,  <42.185104, 28.218876, 38.846985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367664, 28.313042, 38.971100>,  <42.671932, 28.469984, 39.177956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367664, 28.313042, 38.971100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012836, 0.787414, -0.616292,
		0.649007, -0.475435, -0.593929,
		-0.760674, -0.392354, -0.517139,
		42.139462, 28.195335, 38.815956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887970, 28.463196, 38.331951>,  <42.671932, 28.469984, 39.177956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887970, 28.463196, 38.331951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488831, 28.442476, 38.348061>,  <42.249348, 28.430044, 38.357727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488831, 28.442476, 38.348061>,  <42.887970, 28.463196, 38.331951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488831, 28.442476, 38.348061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065061, 0.701457, -0.709736,
		0.008512, -0.710827, -0.703315,
		-0.997845, -0.051800, 0.040276,
		42.189476, 28.426937, 38.360142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725555, 28.319540, 37.666908>,  <42.887970, 28.463196, 38.331951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725555, 28.319540, 37.666908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398548, 28.457457, 37.851421>,  <42.202343, 28.540207, 37.962128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398548, 28.457457, 37.851421>,  <42.725555, 28.319540, 37.666908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398548, 28.457457, 37.851421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104741, 0.698595, -0.707809,
		-0.566296, -0.626963, -0.535001,
		-0.817520, 0.344792, 0.461280,
		42.153294, 28.560894, 37.989807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357727, 28.343958, 37.110840>,  <42.725555, 28.319540, 37.666908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357727, 28.343958, 37.110840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169353, 28.556479, 37.392532>,  <42.056328, 28.683990, 37.561546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169353, 28.556479, 37.392532>,  <42.357727, 28.343958, 37.110840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169353, 28.556479, 37.392532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028679, 0.807093, -0.589727,
		-0.881702, -0.257526, -0.395325,
		-0.470934, 0.531301, 0.704230,
		42.028072, 28.715868, 37.603802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621429, 28.563623, 36.780582>,  <42.357727, 28.343958, 37.110840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621429, 28.563623, 36.780582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751659, 28.808527, 37.068787>,  <41.829796, 28.955469, 37.241711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751659, 28.808527, 37.068787>,  <41.621429, 28.563623, 36.780582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751659, 28.808527, 37.068787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150373, 0.785861, -0.599842,
		-0.933482, 0.086948, 0.347923,
		0.325575, 0.612260, 0.720513,
		41.849331, 28.992205, 37.284939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062012, 29.108774, 36.971169>,  <41.621429, 28.563623, 36.780582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062012, 29.108774, 36.971169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431110, 29.240980, 37.050468>,  <41.652569, 29.320305, 37.098049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431110, 29.240980, 37.050468>,  <41.062012, 29.108774, 36.971169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431110, 29.240980, 37.050468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210595, 0.863182, -0.458875,
		-0.322792, 0.381674, 0.866101,
		0.922743, 0.330517, 0.198249,
		41.707935, 29.340136, 37.109943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982780, 29.813581, 37.196434>,  <41.062012, 29.108774, 36.971169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982780, 29.813581, 37.196434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.372208, 29.779783, 37.111553>,  <41.605862, 29.759504, 37.060623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.372208, 29.779783, 37.111553>,  <40.982780, 29.813581, 37.196434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372208, 29.779783, 37.111553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048021, 0.832573, -0.551830,
		0.223300, 0.547433, 0.806508,
		0.973566, -0.084495, -0.212202,
		41.664276, 29.754435, 37.047894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211548, 30.492361, 36.942863>,  <40.982780, 29.813581, 37.196434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211548, 30.492361, 36.942863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566639, 30.315350, 36.892086>,  <41.779694, 30.209143, 36.861622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566639, 30.315350, 36.892086>,  <41.211548, 30.492361, 36.942863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566639, 30.315350, 36.892086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311160, 0.779957, -0.542998,
		0.339300, 0.442534, 0.830084,
		0.887725, -0.442528, -0.126941,
		41.832958, 30.182590, 36.854004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744869, 31.005539, 37.123608>,  <41.211548, 30.492361, 36.942863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744869, 31.005539, 37.123608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932304, 30.729843, 36.902565>,  <42.044765, 30.564425, 36.769939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932304, 30.729843, 36.902565>,  <41.744869, 31.005539, 37.123608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932304, 30.729843, 36.902565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458007, 0.724438, -0.515189,
		0.755417, -0.011687, 0.655140,
		0.468587, -0.689241, -0.552605,
		42.072880, 30.523071, 36.736782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477840, 31.160376, 37.077526>,  <41.744869, 31.005539, 37.123608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477840, 31.160376, 37.077526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404701, 30.936451, 36.754250>,  <42.360817, 30.802095, 36.560284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404701, 30.936451, 36.754250>,  <42.477840, 31.160376, 37.077526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404701, 30.936451, 36.754250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411466, 0.703019, -0.580051,
		0.892895, -0.438605, 0.101799,
		-0.182847, -0.559812, -0.808194,
		42.349846, 30.768507, 36.511791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163864, 31.026892, 36.721008>,  <42.477840, 31.160376, 37.077526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163864, 31.026892, 36.721008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870239, 30.981819, 36.453140>,  <42.694065, 30.954775, 36.292419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870239, 30.981819, 36.453140>,  <43.163864, 31.026892, 36.721008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870239, 30.981819, 36.453140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526010, 0.529355, -0.665655,
		0.429502, -0.840884, -0.329306,
		-0.734058, -0.112682, -0.669672,
		42.650021, 30.948015, 36.252239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526306, 30.880341, 36.117970>,  <43.163864, 31.026892, 36.721008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526306, 30.880341, 36.117970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165924, 31.023762, 36.020218>,  <42.949696, 31.109814, 35.961567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165924, 31.023762, 36.020218>,  <43.526306, 30.880341, 36.117970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165924, 31.023762, 36.020218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425950, 0.623407, -0.655690,
		-0.082753, -0.694840, -0.714387,
		-0.900954, 0.358554, -0.244378,
		42.895638, 31.131329, 35.946903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494469, 30.930658, 35.388149>,  <43.526306, 30.880341, 36.117970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494469, 30.930658, 35.388149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210812, 31.182104, 35.515877>,  <43.040619, 31.332972, 35.592514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210812, 31.182104, 35.515877>,  <43.494469, 30.930658, 35.388149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210812, 31.182104, 35.515877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422204, 0.741311, -0.521730,
		-0.564680, -0.235163, -0.791098,
		-0.709141, 0.628615, 0.319317,
		42.998070, 31.370689, 35.611671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173584, 31.224215, 34.760445>,  <43.494469, 30.930658, 35.388149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173584, 31.224215, 34.760445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.104649, 31.470785, 35.067772>,  <43.063286, 31.618727, 35.252171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.104649, 31.470785, 35.067772>,  <43.173584, 31.224215, 34.760445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104649, 31.470785, 35.067772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373531, 0.762633, -0.528078,
		-0.911468, 0.195982, -0.361686,
		-0.172340, 0.616427, 0.768321,
		43.052948, 31.655714, 35.298267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959816, 31.844656, 34.428429>,  <43.173584, 31.224215, 34.760445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959816, 31.844656, 34.428429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060822, 31.980066, 34.791004>,  <43.121426, 32.061314, 35.008549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060822, 31.980066, 34.791004>,  <42.959816, 31.844656, 34.428429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060822, 31.980066, 34.791004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323110, 0.853525, -0.408774,
		-0.912050, 0.396102, 0.106147,
		0.252515, 0.338525, 0.906442,
		43.136578, 32.081623, 35.062935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713402, 32.498642, 34.344753>,  <42.959816, 31.844656, 34.428429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713402, 32.498642, 34.344753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944790, 32.509701, 34.670845>,  <43.083622, 32.516335, 34.866501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944790, 32.509701, 34.670845>,  <42.713402, 32.498642, 34.344753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944790, 32.509701, 34.670845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297178, 0.923595, -0.242192,
		-0.759640, 0.382371, 0.526060,
		0.578474, 0.027645, 0.815232,
		43.118332, 32.517994, 34.915413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573822, 33.108814, 34.738930>,  <42.713402, 32.498642, 34.344753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573822, 33.108814, 34.738930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948986, 33.006001, 34.832104>,  <43.174084, 32.944313, 34.888008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948986, 33.006001, 34.832104>,  <42.573822, 33.108814, 34.738930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948986, 33.006001, 34.832104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318023, 0.905310, -0.281559,
		-0.138507, 0.338155, 0.930842,
		0.937911, -0.257031, 0.232933,
		43.230358, 32.928890, 34.901985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900826, 33.692238, 35.100170>,  <42.573822, 33.108814, 34.738930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900826, 33.692238, 35.100170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.191914, 33.473972, 34.933956>,  <43.366566, 33.343014, 34.834229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.191914, 33.473972, 34.933956>,  <42.900826, 33.692238, 35.100170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191914, 33.473972, 34.933956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417218, 0.833049, -0.363261,
		0.544377, 0.090987, 0.833892,
		0.727725, -0.545665, -0.415531,
		43.410233, 33.310272, 34.809296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457874, 34.178604, 34.948563>,  <42.900826, 33.692238, 35.100170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457874, 34.178604, 34.948563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609322, 33.875374, 34.736160>,  <43.700188, 33.693436, 34.608719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609322, 33.875374, 34.736160>,  <43.457874, 34.178604, 34.948563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609322, 33.875374, 34.736160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568780, 0.643172, -0.512658,
		0.730164, -0.107926, 0.674695,
		0.378615, -0.758078, -0.531007,
		43.722908, 33.647949, 34.576859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204868, 34.235722, 35.001053>,  <43.457874, 34.178604, 34.948563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204868, 34.235722, 35.001053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.099133, 34.030323, 34.674511>,  <44.035690, 33.907082, 34.478584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.099133, 34.030323, 34.674511>,  <44.204868, 34.235722, 35.001053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099133, 34.030323, 34.674511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568930, 0.600465, -0.561925,
		0.778743, -0.612991, 0.133418,
		-0.264343, -0.513501, -0.816358,
		44.019829, 33.876274, 34.429604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966766, 34.355625, 34.768299>,  <44.204868, 34.235722, 35.001053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966766, 34.355625, 34.768299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.278511, 34.433636, 35.006481>,  <45.465557, 34.480442, 35.149391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.278511, 34.433636, 35.006481>,  <44.966766, 34.355625, 34.768299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278511, 34.433636, 35.006481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278120, -0.959253, -0.049835,
		0.561468, 0.204446, -0.801845,
		0.779360, 0.195028, 0.595451,
		45.512318, 34.492146, 35.185116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508518, 33.776814, 34.701645>,  <44.966766, 34.355625, 34.768299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508518, 33.776814, 34.701645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.638046, 33.976875, 35.022888>,  <45.715763, 34.096912, 35.215633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.638046, 33.976875, 35.022888>,  <45.508518, 33.776814, 34.701645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638046, 33.976875, 35.022888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337413, -0.854082, 0.395850,
		0.883907, 0.142793, -0.445331,
		0.323824, 0.500155, 0.803108,
		45.735195, 34.126923, 35.263821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972027, 33.313087, 34.973274>,  <45.508518, 33.776814, 34.701645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972027, 33.313087, 34.973274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936287, 33.564449, 35.282368>,  <45.914845, 33.715267, 35.467823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936287, 33.564449, 35.282368>,  <45.972027, 33.313087, 34.973274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936287, 33.564449, 35.282368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123815, -0.762814, 0.634653,
		0.988274, 0.152384, -0.009648,
		-0.089351, 0.628406, 0.772737,
		45.909481, 33.752972, 35.514187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673965, 33.272751, 35.448887>,  <45.972027, 33.313087, 34.973274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673965, 33.272751, 35.448887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356464, 33.388409, 35.662937>,  <46.165966, 33.457802, 35.791367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356464, 33.388409, 35.662937>,  <46.673965, 33.272751, 35.448887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356464, 33.388409, 35.662937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141444, -0.767925, 0.624728,
		0.591572, 0.571567, 0.568642,
		-0.793748, 0.289141, 0.535128,
		46.118340, 33.475151, 35.823475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862373, 33.215595, 36.190834>,  <46.673965, 33.272751, 35.448887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862373, 33.215595, 36.190834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462643, 33.201103, 36.188343>,  <46.222805, 33.192410, 36.186848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462643, 33.201103, 36.188343>,  <46.862373, 33.215595, 36.190834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462643, 33.201103, 36.188343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021185, -0.706084, 0.707811,
		-0.030039, 0.707201, 0.706374,
		-0.999324, -0.036226, -0.006228,
		46.162846, 33.190235, 36.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802254, 33.185253, 36.906212>,  <46.862373, 33.215595, 36.190834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802254, 33.185253, 36.906212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.440262, 33.087711, 36.766762>,  <46.223064, 33.029186, 36.683090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.440262, 33.087711, 36.766762>,  <46.802254, 33.185253, 36.906212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440262, 33.087711, 36.766762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209002, -0.458919, 0.863546,
		-0.370571, 0.854358, 0.364348,
		-0.904984, -0.243855, -0.348624,
		46.168766, 33.014553, 36.662174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.317734, 33.425804, 37.411297>,  <46.802254, 33.185253, 36.906212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.317734, 33.425804, 37.411297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.166485, 33.124084, 37.196613>,  <46.075737, 32.943050, 37.067802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.166485, 33.124084, 37.196613>,  <46.317734, 33.425804, 37.411297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166485, 33.124084, 37.196613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290973, -0.453535, 0.842402,
		-0.878841, 0.474695, -0.047991,
		-0.378119, -0.754301, -0.536709,
		46.053051, 32.897793, 37.035603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974655, 33.028999, 37.923191>,  <46.317734, 33.425804, 37.411297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974655, 33.028999, 37.923191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951828, 32.778400, 37.612259>,  <45.938133, 32.628040, 37.425701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951828, 32.778400, 37.612259>,  <45.974655, 33.028999, 37.923191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951828, 32.778400, 37.612259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231366, -0.749103, 0.620738,
		-0.971192, 0.215270, -0.102203,
		-0.057065, -0.626502, -0.777328,
		45.934708, 32.590450, 37.379059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275032, 32.806034, 37.970879>,  <45.974655, 33.028999, 37.923191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275032, 32.806034, 37.970879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516182, 32.538391, 37.797054>,  <45.660873, 32.377808, 37.692760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516182, 32.538391, 37.797054>,  <45.275032, 32.806034, 37.970879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516182, 32.538391, 37.797054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312107, -0.699056, 0.643359,
		-0.734258, -0.252232, -0.630273,
		0.602871, -0.669104, -0.434564,
		45.697044, 32.337662, 37.666687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894081, 32.301216, 37.847439>,  <45.275032, 32.806034, 37.970879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894081, 32.301216, 37.847439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252808, 32.124523, 37.837688>,  <45.468044, 32.018509, 37.831837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252808, 32.124523, 37.837688>,  <44.894081, 32.301216, 37.847439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252808, 32.124523, 37.837688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324920, -0.695063, 0.641338,
		-0.300241, -0.567242, -0.766871,
		0.896817, -0.441728, -0.024378,
		45.521854, 31.992004, 37.830376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858486, 31.529716, 37.598530>,  <44.894081, 32.301216, 37.847439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858486, 31.529716, 37.598530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.208832, 31.567753, 37.787766>,  <45.419041, 31.590574, 37.901306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.208832, 31.567753, 37.787766>,  <44.858486, 31.529716, 37.598530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208832, 31.567753, 37.787766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229601, -0.780183, 0.581891,
		0.424430, -0.618282, -0.661504,
		0.875866, 0.095090, 0.473091,
		45.471592, 31.596279, 37.929691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255203, 30.874191, 37.625599>,  <44.858486, 31.529716, 37.598530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255203, 30.874191, 37.625599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.406059, 31.079582, 37.933914>,  <45.496571, 31.202818, 38.118904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.406059, 31.079582, 37.933914>,  <45.255203, 30.874191, 37.625599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406059, 31.079582, 37.933914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088918, -0.808319, 0.581991,
		0.921879, -0.288027, -0.259189,
		0.377136, 0.513479, 0.770784,
		45.519199, 31.233625, 38.165150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606277, 30.335888, 37.903965>,  <45.255203, 30.874191, 37.625599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606277, 30.335888, 37.903965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625637, 30.621302, 38.183544>,  <45.637253, 30.792549, 38.351292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625637, 30.621302, 38.183544>,  <45.606277, 30.335888, 37.903965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625637, 30.621302, 38.183544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084423, -0.694340, 0.714678,
		0.995254, -0.093594, 0.026636,
		0.048395, 0.713535, 0.698947,
		45.640156, 30.835361, 38.393227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163960, 30.311152, 38.304478>,  <45.606277, 30.335888, 37.903965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163960, 30.311152, 38.304478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906551, 30.500702, 38.544918>,  <45.752106, 30.614433, 38.689182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906551, 30.500702, 38.544918>,  <46.163960, 30.311152, 38.304478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906551, 30.500702, 38.544918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078383, -0.740383, 0.667599,
		0.761403, 0.476731, 0.439310,
		-0.643523, 0.473878, 0.601097,
		45.713493, 30.642866, 38.725246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391590, 30.027849, 38.941456>,  <46.163960, 30.311152, 38.304478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391590, 30.027849, 38.941456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.037430, 30.199633, 39.012600>,  <45.824936, 30.302704, 39.055286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.037430, 30.199633, 39.012600>,  <46.391590, 30.027849, 38.941456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.037430, 30.199633, 39.012600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211691, -0.713181, 0.668251,
		0.413831, 0.554018, 0.722362,
		-0.885399, 0.429461, 0.177856,
		45.771809, 30.328470, 39.065956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265949, 30.212713, 39.690941>,  <46.391590, 30.027849, 38.941456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265949, 30.212713, 39.690941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909920, 30.158936, 39.516724>,  <45.696304, 30.126669, 39.412193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909920, 30.158936, 39.516724>,  <46.265949, 30.212713, 39.690941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909920, 30.158936, 39.516724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250038, -0.654927, 0.713129,
		-0.381126, 0.743637, 0.549315,
		-0.890070, -0.134442, -0.435547,
		45.642899, 30.118603, 39.386059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928009, 30.045300, 40.358418>,  <46.265949, 30.212713, 39.690941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928009, 30.045300, 40.358418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.677559, 29.946930, 40.062447>,  <45.527290, 29.887909, 39.884865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.677559, 29.946930, 40.062447>,  <45.928009, 30.045300, 40.358418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677559, 29.946930, 40.062447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501322, -0.599846, 0.623586,
		-0.597195, 0.761385, 0.252293,
		-0.626126, -0.245922, -0.739924,
		45.489719, 29.873154, 39.840469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275623, 29.962490, 40.709713>,  <45.928009, 30.045300, 40.358418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275623, 29.962490, 40.709713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247871, 29.778343, 40.355709>,  <45.231220, 29.667854, 40.143307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247871, 29.778343, 40.355709>,  <45.275623, 29.962490, 40.709713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247871, 29.778343, 40.355709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457342, -0.773752, 0.438345,
		-0.886580, 0.435165, -0.156864,
		-0.069379, -0.460368, -0.885013,
		45.227058, 29.640232, 40.090206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581612, 29.737272, 40.641842>,  <45.275623, 29.962490, 40.709713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581612, 29.737272, 40.641842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792858, 29.493399, 40.405407>,  <44.919605, 29.347075, 40.263546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792858, 29.493399, 40.405407>,  <44.581612, 29.737272, 40.641842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792858, 29.493399, 40.405407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473098, -0.789282, 0.391422,
		-0.705176, 0.072926, -0.705272,
		0.528114, -0.609684, -0.591084,
		44.951294, 29.310493, 40.228081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165977, 29.149929, 40.605911>,  <44.581612, 29.737272, 40.641842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165977, 29.149929, 40.605911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502605, 29.010735, 40.440666>,  <44.704582, 28.927217, 40.341518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502605, 29.010735, 40.440666>,  <44.165977, 29.149929, 40.605911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502605, 29.010735, 40.440666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295735, -0.936848, 0.186699,
		-0.451994, -0.034948, -0.891336,
		0.841572, -0.347986, -0.413114,
		44.755077, 28.906338, 40.316730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033031, 28.499706, 40.135620>,  <44.165977, 29.149929, 40.605911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033031, 28.499706, 40.135620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425186, 28.453218, 40.199276>,  <44.660480, 28.425325, 40.237469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425186, 28.453218, 40.199276>,  <44.033031, 28.499706, 40.135620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425186, 28.453218, 40.199276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140533, -0.978467, 0.151172,
		0.138148, -0.170572, -0.975613,
		0.980391, -0.116222, 0.159144,
		44.719303, 28.418352, 40.247021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.856659, 37.369541, 35.445572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472336, 37.337688, 35.551792>,  <43.241741, 37.318577, 35.615524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472336, 37.337688, 35.551792>,  <43.856659, 37.369541, 35.445572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472336, 37.337688, 35.551792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249434, -0.169745, -0.953399,
		0.120996, -0.982266, 0.143229,
		-0.960803, -0.079631, 0.265549,
		43.184093, 37.313801, 35.631458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612480, 36.745815, 35.066315>,  <43.856659, 37.369541, 35.445572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612480, 36.745815, 35.066315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313858, 36.990025, 35.172081>,  <43.134686, 37.136551, 35.235538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313858, 36.990025, 35.172081>,  <43.612480, 36.745815, 35.066315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313858, 36.990025, 35.172081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384861, -0.072106, -0.920154,
		-0.542708, -0.788710, 0.288797,
		-0.746558, 0.610521, 0.264411,
		43.089890, 37.173180, 35.251404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952599, 36.457314, 34.800243>,  <43.612480, 36.745815, 35.066315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952599, 36.457314, 34.800243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840366, 36.836464, 34.860645>,  <42.773026, 37.063953, 34.896889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840366, 36.836464, 34.860645>,  <42.952599, 36.457314, 34.800243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840366, 36.836464, 34.860645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614172, -0.056397, -0.787155,
		-0.737609, -0.313607, 0.597983,
		-0.280582, 0.947877, 0.151009,
		42.756191, 37.120827, 34.905949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264019, 36.422230, 34.780079>,  <42.952599, 36.457314, 34.800243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264019, 36.422230, 34.780079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342724, 36.809158, 34.716106>,  <42.389946, 37.041313, 34.677723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342724, 36.809158, 34.716106>,  <42.264019, 36.422230, 34.780079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342724, 36.809158, 34.716106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634493, 0.001272, -0.772928,
		-0.747464, 0.253561, 0.614007,
		0.196765, 0.967318, -0.159932,
		42.401752, 37.099354, 34.668125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625443, 36.626724, 34.567448>,  <42.264019, 36.422230, 34.780079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625443, 36.626724, 34.567448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865417, 36.932018, 34.471489>,  <42.009403, 37.115192, 34.413914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865417, 36.932018, 34.471489>,  <41.625443, 36.626724, 34.567448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865417, 36.932018, 34.471489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628595, 0.264185, -0.731488,
		-0.494918, 0.589646, 0.638259,
		0.599937, 0.763233, -0.239898,
		42.045399, 37.160988, 34.399521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194881, 37.398148, 34.594959>,  <41.625443, 36.626724, 34.567448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194881, 37.398148, 34.594959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494579, 37.415554, 34.330616>,  <41.674397, 37.425999, 34.172009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494579, 37.415554, 34.330616>,  <41.194881, 37.398148, 34.594959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494579, 37.415554, 34.330616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648638, 0.249795, -0.718937,
		0.133791, 0.967320, 0.215387,
		0.749245, 0.043521, -0.660861,
		41.719353, 37.428612, 34.132359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941135, 37.955486, 34.154800>,  <41.194881, 37.398148, 34.594959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941135, 37.955486, 34.154800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210503, 37.748672, 33.943451>,  <41.372124, 37.624584, 33.816643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210503, 37.748672, 33.943451>,  <40.941135, 37.955486, 34.154800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210503, 37.748672, 33.943451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572946, 0.086630, -0.815002,
		0.467160, 0.851568, -0.237896,
		0.673420, -0.517038, -0.528373,
		41.412529, 37.593559, 33.784939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805683, 38.336361, 33.541924>,  <40.941135, 37.955486, 34.154800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805683, 38.336361, 33.541924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010338, 38.002422, 33.460682>,  <41.133129, 37.802059, 33.411938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010338, 38.002422, 33.460682>,  <40.805683, 38.336361, 33.541924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010338, 38.002422, 33.460682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546275, -0.133613, -0.826881,
		0.663184, 0.534015, -0.524419,
		0.511636, -0.834851, -0.203108,
		41.163830, 37.751968, 33.399750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302395, 38.373859, 32.903065>,  <40.805683, 38.336361, 33.541924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302395, 38.373859, 32.903065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167873, 38.004364, 32.976402>,  <41.087162, 37.782669, 33.020405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167873, 38.004364, 32.976402>,  <41.302395, 38.373859, 32.903065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167873, 38.004364, 32.976402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522529, 0.021062, -0.852362,
		0.783494, -0.382453, -0.489761,
		-0.336304, -0.923734, 0.183341,
		41.066982, 37.727245, 33.031406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235287, 38.253262, 32.185230>,  <41.302395, 38.373859, 32.903065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235287, 38.253262, 32.185230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061832, 37.938145, 32.360199>,  <40.957760, 37.749073, 32.465179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061832, 37.938145, 32.360199>,  <41.235287, 38.253262, 32.185230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061832, 37.938145, 32.360199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436854, -0.240777, -0.866709,
		0.788109, -0.566929, -0.239741,
		-0.433638, -0.787794, 0.437424,
		40.931740, 37.701805, 32.491425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239861, 37.688675, 31.625477>,  <41.235287, 38.253262, 32.185230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239861, 37.688675, 31.625477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941654, 37.645370, 31.888533>,  <40.762730, 37.619389, 32.046368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941654, 37.645370, 31.888533>,  <41.239861, 37.688675, 31.625477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941654, 37.645370, 31.888533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633928, -0.189481, -0.749822,
		0.205786, -0.975898, 0.072631,
		-0.745512, -0.108259, 0.657641,
		40.718002, 37.612892, 32.085827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910538, 37.056244, 31.481163>,  <41.239861, 37.688675, 31.625477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910538, 37.056244, 31.481163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649231, 37.296860, 31.665071>,  <40.492447, 37.441231, 31.775417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649231, 37.296860, 31.665071>,  <40.910538, 37.056244, 31.481163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649231, 37.296860, 31.665071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726473, -0.326970, -0.604424,
		-0.213253, -0.728863, 0.650602,
		-0.653269, 0.601540, 0.459771,
		40.453251, 37.477322, 31.803003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369064, 36.688889, 31.762403>,  <40.910538, 37.056244, 31.481163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369064, 36.688889, 31.762403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211575, 37.041557, 31.658373>,  <40.117081, 37.253159, 31.595955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211575, 37.041557, 31.658373>,  <40.369064, 36.688889, 31.762403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211575, 37.041557, 31.658373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555014, -0.453547, -0.697319,
		-0.732764, -0.130202, 0.667911,
		-0.393721, 0.881671, -0.260079,
		40.093456, 37.306057, 31.580349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664566, 36.544834, 31.718077>,  <40.369064, 36.688889, 31.762403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664566, 36.544834, 31.718077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715282, 36.895481, 31.532402>,  <39.745712, 37.105869, 31.420998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715282, 36.895481, 31.532402>,  <39.664566, 36.544834, 31.718077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715282, 36.895481, 31.532402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449286, -0.366457, -0.814771,
		-0.884345, 0.311857, 0.347388,
		0.126789, 0.876615, -0.464188,
		39.753319, 37.158466, 31.393147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237110, 36.962231, 32.096004>,  <39.664566, 36.544834, 31.718077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237110, 36.962231, 32.096004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867016, 37.112743, 32.076572>,  <38.644958, 37.203049, 32.064915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867016, 37.112743, 32.076572>,  <39.237110, 36.962231, 32.096004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867016, 37.112743, 32.076572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304963, 0.661407, -0.685229,
		-0.225708, -0.648810, -0.726706,
		-0.925232, 0.376280, -0.048578,
		38.589447, 37.225628, 32.062000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850822, 36.373428, 32.372494>,  <39.237110, 36.962231, 32.096004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850822, 36.373428, 32.372494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035419, 36.026585, 32.297504>,  <39.146175, 35.818478, 32.252510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035419, 36.026585, 32.297504>,  <38.850822, 36.373428, 32.372494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035419, 36.026585, 32.297504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316454, -0.358321, 0.878330,
		-0.828786, -0.346012, -0.439761,
		0.461488, -0.867112, -0.187474,
		39.173866, 35.766453, 32.241261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483036, 35.905006, 32.685066>,  <38.850822, 36.373428, 32.372494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483036, 35.905006, 32.685066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828339, 35.707394, 32.643658>,  <39.035522, 35.588825, 32.618813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828339, 35.707394, 32.643658>,  <38.483036, 35.905006, 32.685066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828339, 35.707394, 32.643658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123660, -0.405826, 0.905546,
		-0.489380, -0.768919, -0.411425,
		0.863258, -0.494033, -0.103518,
		39.087318, 35.559185, 32.612602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323856, 35.167858, 32.777939>,  <38.483036, 35.905006, 32.685066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323856, 35.167858, 32.777939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712093, 35.227333, 32.853664>,  <38.945038, 35.263016, 32.899097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712093, 35.227333, 32.853664>,  <38.323856, 35.167858, 32.777939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712093, 35.227333, 32.853664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128555, -0.344744, 0.929852,
		0.203517, -0.926847, -0.315493,
		0.970595, 0.148682, 0.189312,
		39.003273, 35.271938, 32.910458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449486, 34.622795, 33.328335>,  <38.323856, 35.167858, 32.777939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449486, 34.622795, 33.328335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779839, 34.848232, 33.335087>,  <38.978050, 34.983494, 33.339138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779839, 34.848232, 33.335087>,  <38.449486, 34.622795, 33.328335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779839, 34.848232, 33.335087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089443, -0.160511, 0.982973,
		0.556710, -0.810305, -0.182973,
		0.825878, 0.563597, 0.016882,
		39.027603, 35.017311, 33.340153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870728, 34.233364, 33.736393>,  <38.449486, 34.622795, 33.328335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870728, 34.233364, 33.736393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055599, 34.587994, 33.728645>,  <39.166523, 34.800770, 33.723995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055599, 34.587994, 33.728645>,  <38.870728, 34.233364, 33.736393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055599, 34.587994, 33.728645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300679, -0.136124, 0.943961,
		0.834254, -0.442106, -0.329488,
		0.462182, 0.886573, -0.019370,
		39.194252, 34.853966, 33.722836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620594, 34.129269, 33.874104>,  <38.870728, 34.233364, 33.736393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620594, 34.129269, 33.874104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556908, 34.506767, 33.990032>,  <39.518696, 34.733265, 34.059589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556908, 34.506767, 33.990032>,  <39.620594, 34.129269, 33.874104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556908, 34.506767, 33.990032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193618, -0.258013, 0.946542,
		0.968072, 0.206817, -0.141647,
		-0.159214, 0.943746, 0.289818,
		39.509144, 34.789890, 34.076977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180237, 34.368690, 34.337582>,  <39.620594, 34.129269, 33.874104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180237, 34.368690, 34.337582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846317, 34.573921, 34.417454>,  <39.645966, 34.697060, 34.465378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846317, 34.573921, 34.417454>,  <40.180237, 34.368690, 34.337582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846317, 34.573921, 34.417454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087125, -0.234999, 0.968083,
		0.543622, 0.825548, 0.151475,
		-0.834796, 0.513074, 0.199677,
		39.595879, 34.727844, 34.477356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289017, 34.721012, 34.949188>,  <40.180237, 34.368690, 34.337582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289017, 34.721012, 34.949188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889774, 34.742088, 34.936470>,  <39.650230, 34.754734, 34.928841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889774, 34.742088, 34.936470>,  <40.289017, 34.721012, 34.949188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889774, 34.742088, 34.936470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039364, -0.149494, 0.987979,
		0.047301, 0.987358, 0.151284,
		-0.998105, 0.052688, -0.031795,
		39.590343, 34.757896, 34.926933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164001, 35.111385, 35.538574>,  <40.289017, 34.721012, 34.949188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164001, 35.111385, 35.538574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797245, 34.965061, 35.474712>,  <39.577190, 34.877266, 35.436394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797245, 34.965061, 35.474712>,  <40.164001, 35.111385, 35.538574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797245, 34.965061, 35.474712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073892, -0.237511, 0.968570,
		-0.392235, 0.899872, 0.190741,
		-0.916893, -0.365812, -0.159654,
		39.522179, 34.855316, 35.426815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757343, 35.432678, 36.050926>,  <40.164001, 35.111385, 35.538574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757343, 35.432678, 36.050926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544994, 35.120285, 35.919323>,  <39.417587, 34.932850, 35.840363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544994, 35.120285, 35.919323>,  <39.757343, 35.432678, 36.050926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544994, 35.120285, 35.919323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164685, -0.285759, 0.944045,
		-0.831299, 0.555346, 0.023084,
		-0.530868, -0.780982, -0.329008,
		39.385735, 34.885990, 35.820621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140614, 35.463726, 36.394119>,  <39.757343, 35.432678, 36.050926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140614, 35.463726, 36.394119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224747, 35.084530, 36.298565>,  <39.275227, 34.857010, 36.241230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224747, 35.084530, 36.298565>,  <39.140614, 35.463726, 36.394119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224747, 35.084530, 36.298565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257696, -0.181951, 0.948940,
		-0.943054, -0.261157, 0.206024,
		0.210336, -0.947993, -0.238889,
		39.287846, 34.800133, 36.226898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884884, 35.099876, 36.948921>,  <39.140614, 35.463726, 36.394119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884884, 35.099876, 36.948921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110710, 34.818474, 36.776253>,  <39.246204, 34.649632, 36.672649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110710, 34.818474, 36.776253>,  <38.884884, 35.099876, 36.948921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110710, 34.818474, 36.776253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280010, -0.328735, 0.901957,
		-0.776442, -0.630085, 0.011398,
		0.564563, -0.703509, -0.431674,
		39.280079, 34.607422, 36.646751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727127, 34.468086, 37.335152>,  <38.884884, 35.099876, 36.948921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727127, 34.468086, 37.335152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079304, 34.437981, 37.147896>,  <39.290611, 34.419918, 37.035542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079304, 34.437981, 37.147896>,  <38.727127, 34.468086, 37.335152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079304, 34.437981, 37.147896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417282, -0.345838, 0.840400,
		-0.225150, -0.935271, -0.273086,
		0.880445, -0.075263, -0.468137,
		39.343437, 34.415401, 37.007454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668056, 33.689331, 37.127396>,  <38.727127, 34.468086, 37.335152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668056, 33.689331, 37.127396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422089, 33.394192, 37.238720>,  <38.274509, 33.217110, 37.305515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422089, 33.394192, 37.238720>,  <38.668056, 33.689331, 37.127396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422089, 33.394192, 37.238720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397325, -0.014960, -0.917556,
		0.681180, -0.674801, -0.283966,
		-0.614920, -0.737848, 0.278306,
		38.237614, 33.172836, 37.322212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789337, 33.197323, 36.540108>,  <38.668056, 33.689331, 37.127396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789337, 33.197323, 36.540108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450287, 33.105366, 36.731388>,  <38.246857, 33.050190, 36.846157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450287, 33.105366, 36.731388>,  <38.789337, 33.197323, 36.540108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450287, 33.105366, 36.731388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477139, -0.063948, -0.876498,
		0.232081, -0.971112, -0.055487,
		-0.847630, -0.229894, 0.478197,
		38.195999, 33.036396, 36.874847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548096, 32.520622, 36.351040>,  <38.789337, 33.197323, 36.540108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548096, 32.520622, 36.351040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212189, 32.689342, 36.487789>,  <38.010643, 32.790573, 36.569839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212189, 32.689342, 36.487789>,  <38.548096, 32.520622, 36.351040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212189, 32.689342, 36.487789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440420, -0.160964, -0.883244,
		-0.317523, -0.892287, 0.320941,
		-0.839767, 0.421799, 0.341872,
		37.960258, 32.815884, 36.590351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997490, 32.159954, 36.060741>,  <38.548096, 32.520622, 36.351040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997490, 32.159954, 36.060741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811058, 32.487007, 36.195946>,  <37.699200, 32.683239, 36.277069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811058, 32.487007, 36.195946>,  <37.997490, 32.159954, 36.060741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811058, 32.487007, 36.195946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481759, 0.085897, -0.872084,
		-0.742074, -0.569302, 0.353865,
		-0.466083, 0.817629, 0.338009,
		37.671234, 32.732296, 36.297348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308441, 32.086712, 35.922962>,  <37.997490, 32.159954, 36.060741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308441, 32.086712, 35.922962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362648, 32.479660, 35.974472>,  <37.395172, 32.715427, 36.005379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362648, 32.479660, 35.974472>,  <37.308441, 32.086712, 35.922962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362648, 32.479660, 35.974472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687392, 0.186830, -0.701845,
		-0.713531, 0.006595, 0.700593,
		0.135521, 0.982370, 0.128776,
		37.403305, 32.774372, 36.013103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613991, 32.366371, 35.871113>,  <37.308441, 32.086712, 35.922962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613991, 32.366371, 35.871113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824814, 32.705257, 35.844452>,  <36.951309, 32.908588, 35.828457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824814, 32.705257, 35.844452>,  <36.613991, 32.366371, 35.871113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824814, 32.705257, 35.844452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667379, 0.364074, -0.649658,
		-0.526131, 0.386889, 0.757300,
		0.527058, 0.847211, -0.066651,
		36.982933, 32.959419, 35.824455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262268, 32.898232, 36.221657>,  <36.613991, 32.366371, 35.871113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262268, 32.898232, 36.221657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491776, 33.061619, 35.937702>,  <36.629482, 33.159649, 35.767330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491776, 33.061619, 35.937702>,  <36.262268, 32.898232, 36.221657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491776, 33.061619, 35.937702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817681, 0.236216, -0.524976,
		-0.046747, 0.881679, 0.469528,
		0.573771, 0.408465, -0.709890,
		36.663906, 33.184158, 35.724735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950340, 33.581402, 36.062756>,  <36.262268, 32.898232, 36.221657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950340, 33.581402, 36.062756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178455, 33.496624, 35.745304>,  <36.315327, 33.445759, 35.554832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178455, 33.496624, 35.745304>,  <35.950340, 33.581402, 36.062756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178455, 33.496624, 35.745304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663152, 0.451368, -0.597073,
		0.484766, 0.866802, 0.116860,
		0.570291, -0.211945, -0.793630,
		36.349541, 33.433041, 35.507214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835079, 34.127720, 35.697647>,  <35.950340, 33.581402, 36.062756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835079, 34.127720, 35.697647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978748, 33.866589, 35.430870>,  <36.064949, 33.709911, 35.270805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978748, 33.866589, 35.430870>,  <35.835079, 34.127720, 35.697647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978748, 33.866589, 35.430870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761823, 0.207704, -0.613584,
		0.539091, 0.728475, -0.422736,
		0.359176, -0.652827, -0.666940,
		36.086502, 33.670742, 35.230789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842701, 34.464653, 35.040646>,  <35.835079, 34.127720, 35.697647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842701, 34.464653, 35.040646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872749, 34.082962, 34.924850>,  <35.890778, 33.853947, 34.855373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872749, 34.082962, 34.924850>,  <35.842701, 34.464653, 35.040646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872749, 34.082962, 34.924850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671466, 0.166220, -0.722153,
		0.737218, 0.248629, -0.628246,
		0.075121, -0.954230, -0.289486,
		35.895287, 33.796692, 34.838005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996643, 34.417175, 34.297485>,  <35.842701, 34.464653, 35.040646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996643, 34.417175, 34.297485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835999, 34.060196, 34.379704>,  <35.739613, 33.846008, 34.429035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835999, 34.060196, 34.379704>,  <35.996643, 34.417175, 34.297485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835999, 34.060196, 34.379704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591772, 0.081594, -0.801965,
		0.698940, -0.443714, -0.560893,
		-0.401609, -0.892446, 0.205548,
		35.715515, 33.792461, 34.441368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115303, 34.057777, 33.621059>,  <35.996643, 34.417175, 34.297485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115303, 34.057777, 33.621059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818741, 33.919842, 33.851330>,  <35.640804, 33.837082, 33.989491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818741, 33.919842, 33.851330>,  <36.115303, 34.057777, 33.621059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818741, 33.919842, 33.851330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634936, 0.082820, -0.768113,
		0.217198, -0.935001, -0.280354,
		-0.741405, -0.344839, 0.575677,
		35.596317, 33.816391, 34.024033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.369232, 32.921398, 40.405323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016373, 32.891304, 40.591293>,  <39.804657, 32.873249, 40.702877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016373, 32.891304, 40.591293>,  <40.369232, 32.921398, 40.405323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016373, 32.891304, 40.591293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458120, -0.091998, -0.884117,
		0.109289, -0.992913, 0.046690,
		-0.882147, -0.075235, 0.464927,
		39.751728, 32.868732, 40.730770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044319, 32.314121, 40.164398>,  <40.369232, 32.921398, 40.405323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044319, 32.314121, 40.164398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736164, 32.531677, 40.297474>,  <39.551270, 32.662212, 40.377319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736164, 32.531677, 40.297474>,  <40.044319, 32.314121, 40.164398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736164, 32.531677, 40.297474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486154, -0.163512, -0.858439,
		-0.412496, -0.823073, 0.390382,
		-0.770391, 0.543889, 0.332692,
		39.505047, 32.694843, 40.397282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428524, 31.919134, 40.089725>,  <40.044319, 32.314121, 40.164398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428524, 31.919134, 40.089725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300297, 32.297882, 40.079323>,  <39.223362, 32.525131, 40.073082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300297, 32.297882, 40.079323>,  <39.428524, 31.919134, 40.089725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300297, 32.297882, 40.079323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511633, -0.196193, -0.836504,
		-0.797162, -0.254850, 0.547343,
		-0.320568, 0.946868, -0.026008,
		39.204124, 32.581944, 40.071522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684830, 31.969093, 39.907925>,  <39.428524, 31.919134, 40.089725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684830, 31.969093, 39.907925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794846, 32.345169, 39.827526>,  <38.860855, 32.570816, 39.779285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794846, 32.345169, 39.827526>,  <38.684830, 31.969093, 39.907925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794846, 32.345169, 39.827526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542756, -0.020725, -0.839635,
		-0.793581, 0.340021, 0.504593,
		0.275036, 0.940189, -0.200995,
		38.877357, 32.627228, 39.767227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095734, 32.160332, 39.554054>,  <38.684830, 31.969093, 39.907925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095734, 32.160332, 39.554054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391224, 32.417130, 39.471954>,  <38.568516, 32.571209, 39.422695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391224, 32.417130, 39.471954>,  <38.095734, 32.160332, 39.554054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391224, 32.417130, 39.471954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350390, 0.105663, -0.930624,
		-0.575772, 0.759390, 0.303006,
		0.738724, 0.641998, -0.205245,
		38.612843, 32.609730, 39.410381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816456, 32.520061, 39.101578>,  <38.095734, 32.160332, 39.554054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816456, 32.520061, 39.101578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180653, 32.679157, 39.056293>,  <38.399170, 32.774612, 39.029121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180653, 32.679157, 39.056293>,  <37.816456, 32.520061, 39.101578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180653, 32.679157, 39.056293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265270, 0.351721, -0.897733,
		-0.317243, 0.847407, 0.425746,
		0.910488, 0.397737, -0.113210,
		38.453800, 32.798477, 39.022331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856472, 33.304028, 38.959808>,  <37.816456, 32.520061, 39.101578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856472, 33.304028, 38.959808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177998, 33.137032, 38.790302>,  <38.370914, 33.036835, 38.688599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177998, 33.137032, 38.790302>,  <37.856472, 33.304028, 38.959808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177998, 33.137032, 38.790302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348457, 0.246905, -0.904221,
		0.482134, 0.874494, 0.052989,
		0.803819, -0.417491, -0.423765,
		38.419144, 33.011784, 38.663174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994236, 33.713543, 38.364697>,  <37.856472, 33.304028, 38.959808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994236, 33.713543, 38.364697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.182781, 33.374996, 38.265514>,  <38.295906, 33.171867, 38.206005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.182781, 33.374996, 38.265514>,  <37.994236, 33.713543, 38.364697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182781, 33.374996, 38.265514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285468, 0.119591, -0.950897,
		0.834462, 0.518998, -0.185240,
		0.471361, -0.846368, -0.247952,
		38.324188, 33.121086, 38.191128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363018, 33.904884, 37.730602>,  <37.994236, 33.713543, 38.364697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363018, 33.904884, 37.730602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345154, 33.505291, 37.728172>,  <38.334435, 33.265533, 37.726715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345154, 33.505291, 37.728172>,  <38.363018, 33.904884, 37.730602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345154, 33.505291, 37.728172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467576, 0.026279, -0.883562,
		0.882824, -0.036616, -0.468274,
		-0.044658, -0.998984, -0.006079,
		38.331757, 33.205597, 37.726349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052025, 33.808422, 37.745014>,  <38.363018, 33.904884, 37.730602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052025, 33.808422, 37.745014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350422, 33.991924, 37.551922>,  <39.529461, 34.102028, 37.436066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350422, 33.991924, 37.551922>,  <39.052025, 33.808422, 37.745014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350422, 33.991924, 37.551922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575116, -0.078334, 0.814313,
		0.335760, -0.885101, -0.322277,
		0.745994, 0.458760, -0.482734,
		39.574219, 34.129551, 37.407101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637066, 33.454105, 37.771027>,  <39.052025, 33.808422, 37.745014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637066, 33.454105, 37.771027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.770233, 33.825760, 37.706696>,  <39.850136, 34.048752, 37.668098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.770233, 33.825760, 37.706696>,  <39.637066, 33.454105, 37.771027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770233, 33.825760, 37.706696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652529, -0.103883, 0.750609,
		0.680713, -0.354838, -0.640875,
		0.332921, 0.929138, -0.160828,
		39.870110, 34.104500, 37.658447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288658, 33.428288, 38.076641>,  <39.637066, 33.454105, 37.771027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288658, 33.428288, 38.076641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211254, 33.818073, 38.031067>,  <40.164810, 34.051945, 38.003723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211254, 33.818073, 38.031067>,  <40.288658, 33.428288, 38.076641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211254, 33.818073, 38.031067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684639, 0.217304, 0.695736,
		0.702725, 0.056630, -0.709204,
		-0.193512, 0.974460, -0.113934,
		40.153202, 34.110413, 37.996887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888836, 33.702427, 38.034534>,  <40.288658, 33.428288, 38.076641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888836, 33.702427, 38.034534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.673855, 34.020061, 38.148071>,  <40.544865, 34.210644, 38.216194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.673855, 34.020061, 38.148071>,  <40.888836, 33.702427, 38.034534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673855, 34.020061, 38.148071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728162, 0.267227, 0.631165,
		0.425351, 0.545904, -0.721848,
		-0.537453, 0.794089, 0.283842,
		40.512619, 34.258289, 38.233223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290806, 34.239498, 38.020535>,  <40.888836, 33.702427, 38.034534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290806, 34.239498, 38.020535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.010529, 34.333866, 38.289867>,  <40.842361, 34.390488, 38.451466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.010529, 34.333866, 38.289867>,  <41.290806, 34.239498, 38.020535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010529, 34.333866, 38.289867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704798, 0.375548, 0.601850,
		-0.110879, 0.896273, -0.429419,
		-0.700690, 0.235921, 0.673331,
		40.800323, 34.404644, 38.491867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703030, 34.686199, 38.474972>,  <41.290806, 34.239498, 38.020535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703030, 34.686199, 38.474972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.364929, 34.642063, 38.684113>,  <41.162067, 34.615582, 38.809597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.364929, 34.642063, 38.684113>,  <41.703030, 34.686199, 38.474972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364929, 34.642063, 38.684113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447539, 0.388465, 0.805483,
		-0.291986, 0.914833, -0.278970,
		-0.845253, -0.110340, 0.522850,
		41.111355, 34.608963, 38.840969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646122, 35.286125, 38.916565>,  <41.703030, 34.686199, 38.474972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646122, 35.286125, 38.916565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.409756, 35.021015, 39.100544>,  <41.267937, 34.861950, 39.210930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.409756, 35.021015, 39.100544>,  <41.646122, 35.286125, 38.916565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409756, 35.021015, 39.100544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442760, 0.210156, 0.871664,
		-0.674377, 0.718725, 0.169266,
		-0.590914, -0.662774, 0.459947,
		41.232483, 34.822182, 39.238529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198917, 35.586910, 39.444427>,  <41.646122, 35.286125, 38.916565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198917, 35.586910, 39.444427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.253632, 35.201710, 39.537300>,  <41.286461, 34.970589, 39.593025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.253632, 35.201710, 39.537300>,  <41.198917, 35.586910, 39.444427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253632, 35.201710, 39.537300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333875, 0.265492, 0.904457,
		-0.932641, -0.046191, 0.357838,
		0.136781, -0.963006, 0.232186,
		41.294666, 34.912807, 39.606956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046768, 35.497276, 40.195095>,  <41.198917, 35.586910, 39.444427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046768, 35.497276, 40.195095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265923, 35.171410, 40.119057>,  <41.397415, 34.975891, 40.073433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265923, 35.171410, 40.119057>,  <41.046768, 35.497276, 40.195095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265923, 35.171410, 40.119057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374525, 0.035684, 0.926530,
		-0.748030, -0.578830, 0.324664,
		0.547889, -0.814667, -0.190094,
		41.430290, 34.927010, 40.062027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993118, 35.049751, 40.765934>,  <41.046768, 35.497276, 40.195095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993118, 35.049751, 40.765934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327316, 34.917610, 40.590290>,  <41.527836, 34.838326, 40.484905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327316, 34.917610, 40.590290>,  <40.993118, 35.049751, 40.765934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327316, 34.917610, 40.590290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476500, 0.037582, 0.878370,
		-0.273666, -0.943110, 0.188811,
		0.835496, -0.330348, -0.439108,
		41.577965, 34.818504, 40.458557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281979, 34.641628, 41.273094>,  <40.993118, 35.049751, 40.765934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281979, 34.641628, 41.273094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579906, 34.693085, 41.011192>,  <41.758663, 34.723957, 40.854053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579906, 34.693085, 41.011192>,  <41.281979, 34.641628, 41.273094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579906, 34.693085, 41.011192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664794, -0.227479, 0.711550,
		-0.057407, -0.965249, -0.254950,
		0.744818, 0.128642, -0.654750,
		41.803352, 34.731678, 40.814766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568859, 34.022369, 41.416252>,  <41.281979, 34.641628, 41.273094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568859, 34.022369, 41.416252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.822636, 34.285023, 41.253120>,  <41.974899, 34.442616, 41.155239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.822636, 34.285023, 41.253120>,  <41.568859, 34.022369, 41.416252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822636, 34.285023, 41.253120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728276, -0.330962, 0.600065,
		0.259044, -0.677718, -0.688182,
		0.634437, 0.656630, -0.407832,
		42.012966, 34.482010, 41.130772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266045, 33.701134, 41.349339>,  <41.568859, 34.022369, 41.416252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266045, 33.701134, 41.349339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.362206, 34.089241, 41.338093>,  <42.419903, 34.322105, 41.331345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.362206, 34.089241, 41.338093>,  <42.266045, 33.701134, 41.349339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362206, 34.089241, 41.338093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738508, -0.164030, 0.653988,
		0.629930, -0.177985, -0.755982,
		0.240404, 0.970266, -0.028116,
		42.434326, 34.380322, 41.329659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064770, 33.729633, 41.281311>,  <42.266045, 33.701134, 41.349339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064770, 33.729633, 41.281311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.891804, 34.055012, 41.436913>,  <42.788025, 34.250240, 41.530273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.891804, 34.055012, 41.436913>,  <43.064770, 33.729633, 41.281311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891804, 34.055012, 41.436913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606769, -0.056607, 0.792860,
		0.666969, 0.578879, -0.469096,
		-0.432416, 0.813446, 0.389002,
		42.762077, 34.299046, 41.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.462917, 38.254353, 43.536037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642666, 37.915428, 43.422810>,  <38.750515, 37.712074, 43.354874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642666, 37.915428, 43.422810>,  <38.462917, 38.254353, 43.536037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642666, 37.915428, 43.422810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219917, 0.202193, -0.954335,
		0.865852, 0.491106, -0.095478,
		0.449374, -0.847309, -0.283072,
		38.777477, 37.661236, 43.337887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954422, 38.425816, 42.914394>,  <38.462917, 38.254353, 43.536037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954422, 38.425816, 42.914394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846333, 38.040745, 42.908161>,  <38.781479, 37.809704, 42.904419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846333, 38.040745, 42.908161>,  <38.954422, 38.425816, 42.914394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846333, 38.040745, 42.908161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257907, 0.087970, -0.962157,
		0.927613, -0.255974, -0.272051,
		-0.270219, -0.962673, -0.015585,
		38.765266, 37.751942, 42.903484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006706, 38.306507, 42.182327>,  <38.954422, 38.425816, 42.914394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006706, 38.306507, 42.182327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806221, 38.000393, 42.343884>,  <38.685928, 37.816727, 42.440819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806221, 38.000393, 42.343884>,  <39.006706, 38.306507, 42.182327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806221, 38.000393, 42.343884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431693, -0.183382, -0.883183,
		0.749949, -0.617022, -0.238453,
		-0.501216, -0.765281, 0.403891,
		38.655857, 37.770809, 42.465050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242409, 37.648399, 41.835781>,  <39.006706, 38.306507, 42.182327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242409, 37.648399, 41.835781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886417, 37.538921, 41.981678>,  <38.672825, 37.473236, 42.069214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886417, 37.538921, 41.981678>,  <39.242409, 37.648399, 41.835781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886417, 37.538921, 41.981678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327347, -0.173402, -0.928857,
		0.317467, -0.946057, 0.064732,
		-0.889977, -0.273692, 0.364739,
		38.619423, 37.456814, 42.091099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025875, 36.971252, 41.509254>,  <39.242409, 37.648399, 41.835781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025875, 36.971252, 41.509254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.699429, 37.159576, 41.643295>,  <38.503559, 37.272572, 41.723721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.699429, 37.159576, 41.643295>,  <39.025875, 36.971252, 41.509254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699429, 37.159576, 41.643295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409795, -0.062627, -0.910025,
		-0.407459, -0.880011, 0.244045,
		-0.816116, 0.470807, 0.335107,
		38.454594, 37.300819, 41.743828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414127, 36.609779, 41.287113>,  <39.025875, 36.971252, 41.509254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414127, 36.609779, 41.287113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267384, 36.973175, 41.367176>,  <38.179337, 37.191212, 41.415215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267384, 36.973175, 41.367176>,  <38.414127, 36.609779, 41.287113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267384, 36.973175, 41.367176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480682, -0.000905, -0.876895,
		-0.796467, -0.417910, 0.437026,
		-0.366859, 0.908488, 0.200161,
		38.157326, 37.245720, 41.427223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732597, 36.610703, 41.009781>,  <38.414127, 36.609779, 41.287113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732597, 36.610703, 41.009781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842720, 36.995243, 41.010605>,  <37.908794, 37.225967, 41.011101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842720, 36.995243, 41.010605>,  <37.732597, 36.610703, 41.009781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842720, 36.995243, 41.010605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370518, 0.108087, -0.922515,
		-0.887087, 0.253208, 0.385956,
		0.275305, 0.961355, 0.002065,
		37.925312, 37.283649, 41.011223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113586, 37.055119, 40.757355>,  <37.732597, 36.610703, 41.009781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113586, 37.055119, 40.757355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410378, 37.319347, 40.711563>,  <37.588451, 37.477886, 40.684086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410378, 37.319347, 40.711563>,  <37.113586, 37.055119, 40.757355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410378, 37.319347, 40.711563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351493, 0.237886, -0.905463,
		-0.570889, 0.712078, 0.408694,
		0.741982, 0.660572, -0.114484,
		37.632973, 37.517521, 40.677219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818504, 37.731728, 40.489426>,  <37.113586, 37.055119, 40.757355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818504, 37.731728, 40.489426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204163, 37.754639, 40.385784>,  <37.435558, 37.768383, 40.323601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204163, 37.754639, 40.385784>,  <36.818504, 37.731728, 40.489426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204163, 37.754639, 40.385784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264068, 0.110920, -0.958105,
		-0.026135, 0.992177, 0.122068,
		0.964150, 0.057275, -0.259104,
		37.493408, 37.771820, 40.308052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898621, 38.241879, 39.960060>,  <36.818504, 37.731728, 40.489426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898621, 38.241879, 39.960060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229099, 38.021175, 39.914520>,  <37.427387, 37.888752, 39.887196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229099, 38.021175, 39.914520>,  <36.898621, 38.241879, 39.960060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229099, 38.021175, 39.914520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072605, 0.096116, -0.992719,
		0.558682, 0.828448, 0.039350,
		0.826198, -0.551757, -0.113848,
		37.476959, 37.855648, 39.880367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348747, 38.576477, 39.410267>,  <36.898621, 38.241879, 39.960060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348747, 38.576477, 39.410267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487778, 38.202515, 39.438980>,  <37.571194, 37.978138, 39.456207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487778, 38.202515, 39.438980>,  <37.348747, 38.576477, 39.410267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487778, 38.202515, 39.438980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067577, -0.101332, -0.992555,
		0.935215, 0.340133, -0.098398,
		0.347572, -0.934902, 0.071782,
		37.592049, 37.922043, 39.460514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808590, 38.491718, 38.776508>,  <37.348747, 38.576477, 39.410267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808590, 38.491718, 38.776508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749836, 38.122551, 38.918861>,  <37.714584, 37.901051, 39.004272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749836, 38.122551, 38.918861>,  <37.808590, 38.491718, 38.776508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749836, 38.122551, 38.918861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170221, -0.330836, -0.928209,
		0.974397, -0.196921, -0.108504,
		-0.146887, -0.922914, 0.355885,
		37.705769, 37.845676, 39.025627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258087, 38.020702, 38.386524>,  <37.808590, 38.491718, 38.776508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258087, 38.020702, 38.386524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938751, 37.823460, 38.524799>,  <37.747150, 37.705116, 38.607765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938751, 37.823460, 38.524799>,  <38.258087, 38.020702, 38.386524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938751, 37.823460, 38.524799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288372, -0.190905, -0.938295,
		0.528671, -0.848766, 0.010210,
		-0.798342, -0.493105, 0.345686,
		37.699249, 37.675529, 38.628506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240906, 37.457146, 38.002865>,  <38.258087, 38.020702, 38.386524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240906, 37.457146, 38.002865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861408, 37.483536, 38.126499>,  <37.633709, 37.499371, 38.200680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861408, 37.483536, 38.126499>,  <38.240906, 37.457146, 38.002865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861408, 37.483536, 38.126499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306818, -0.426847, -0.850685,
		0.075812, -0.901914, 0.425209,
		-0.948744, 0.065970, 0.309084,
		37.576786, 37.503326, 38.219223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628399, 36.962208, 37.593487>,  <38.240906, 37.457146, 38.002865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628399, 36.962208, 37.593487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903419, 37.233078, 37.488636>,  <39.068432, 37.395599, 37.425728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903419, 37.233078, 37.488636>,  <38.628399, 36.962208, 37.593487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903419, 37.233078, 37.488636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420118, -0.076539, 0.904236,
		0.592265, -0.731829, -0.337118,
		0.687549, 0.677177, -0.262123,
		39.109684, 37.436230, 37.410000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340393, 36.662636, 37.828861>,  <38.628399, 36.962208, 37.593487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340393, 36.662636, 37.828861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361996, 37.060360, 37.792141>,  <39.374958, 37.298996, 37.770111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361996, 37.060360, 37.792141>,  <39.340393, 36.662636, 37.828861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361996, 37.060360, 37.792141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452299, 0.057603, 0.890005,
		0.890230, -0.089583, -0.446615,
		0.054003, 0.994312, -0.091798,
		39.378197, 37.358654, 37.764603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986488, 36.846165, 37.968925>,  <39.340393, 36.662636, 37.828861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986488, 36.846165, 37.968925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779057, 37.180450, 38.041210>,  <39.654598, 37.381020, 38.084579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779057, 37.180450, 38.041210>,  <39.986488, 36.846165, 37.968925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779057, 37.180450, 38.041210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496782, 0.122480, 0.859190,
		0.695902, 0.535335, -0.478683,
		-0.518583, 0.835713, 0.180710,
		39.623482, 37.431164, 38.095425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577862, 37.408092, 38.008389>,  <39.986488, 36.846165, 37.968925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577862, 37.408092, 38.008389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.229038, 37.533199, 38.158951>,  <40.019745, 37.608265, 38.249290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.229038, 37.533199, 38.158951>,  <40.577862, 37.408092, 38.008389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229038, 37.533199, 38.158951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484321, 0.441091, 0.755561,
		0.070283, 0.841199, -0.536138,
		-0.872063, 0.312766, 0.376409,
		39.967419, 37.627029, 38.271873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785583, 38.090324, 38.178185>,  <40.577862, 37.408092, 38.008389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785583, 38.090324, 38.178185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.454193, 37.990387, 38.378666>,  <40.255360, 37.930424, 38.498955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.454193, 37.990387, 38.378666>,  <40.785583, 38.090324, 38.178185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454193, 37.990387, 38.378666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384945, 0.395970, 0.833682,
		-0.406750, 0.883622, -0.231876,
		-0.828475, -0.249841, 0.501207,
		40.205650, 37.915436, 38.529030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658455, 38.646416, 38.640465>,  <40.785583, 38.090324, 38.178185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658455, 38.646416, 38.640465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476238, 38.325806, 38.795406>,  <40.366909, 38.133438, 38.888371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476238, 38.325806, 38.795406>,  <40.658455, 38.646416, 38.640465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476238, 38.325806, 38.795406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453356, 0.165590, 0.875813,
		-0.766129, 0.574573, 0.287945,
		-0.455538, -0.801527, 0.387349,
		40.339577, 38.085346, 38.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471081, 38.903843, 39.334599>,  <40.658455, 38.646416, 38.640465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471081, 38.903843, 39.334599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.444809, 38.505768, 39.363697>,  <40.429047, 38.266922, 39.381157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.444809, 38.505768, 39.363697>,  <40.471081, 38.903843, 39.334599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444809, 38.505768, 39.363697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279062, 0.051671, 0.958882,
		-0.958024, 0.083280, 0.274324,
		-0.065681, -0.995186, 0.072742,
		40.425106, 38.207211, 39.385521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259396, 38.749554, 39.981068>,  <40.471081, 38.903843, 39.334599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259396, 38.749554, 39.981068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430477, 38.405518, 39.869846>,  <40.533127, 38.199097, 39.803116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430477, 38.405518, 39.869846>,  <40.259396, 38.749554, 39.981068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430477, 38.405518, 39.869846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524597, -0.014314, 0.851230,
		-0.736116, -0.509940, 0.445079,
		0.427705, -0.860091, -0.278050,
		40.558788, 38.147491, 39.786430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192905, 38.398399, 40.596722>,  <40.259396, 38.749554, 39.981068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192905, 38.398399, 40.596722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.472797, 38.186043, 40.405499>,  <40.640732, 38.058628, 40.290764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.472797, 38.186043, 40.405499>,  <40.192905, 38.398399, 40.596722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472797, 38.186043, 40.405499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515566, -0.087970, 0.852322,
		-0.494543, -0.842863, 0.212153,
		0.699728, -0.530889, -0.478057,
		40.682716, 38.026775, 40.262081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190876, 37.672195, 40.896633>,  <40.192905, 38.398399, 40.596722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190876, 37.672195, 40.896633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544899, 37.792080, 40.754169>,  <40.757313, 37.864010, 40.668694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544899, 37.792080, 40.754169>,  <40.190876, 37.672195, 40.896633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544899, 37.792080, 40.754169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411099, -0.144396, 0.900082,
		0.218337, -0.943039, -0.251010,
		0.885057, 0.299711, -0.356156,
		40.810417, 37.881992, 40.647324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597248, 37.213200, 41.179672>,  <40.190876, 37.672195, 40.896633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597248, 37.213200, 41.179672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832588, 37.523884, 41.089718>,  <40.973793, 37.710293, 41.035744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832588, 37.523884, 41.089718>,  <40.597248, 37.213200, 41.179672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832588, 37.523884, 41.089718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441150, -0.075241, 0.894274,
		0.677667, -0.625353, -0.386912,
		0.588348, 0.776706, -0.224886,
		41.009094, 37.756897, 41.022251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214050, 37.129467, 41.468239>,  <40.597248, 37.213200, 41.179672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214050, 37.129467, 41.468239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240444, 37.524780, 41.413177>,  <41.256279, 37.761967, 41.380138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240444, 37.524780, 41.413177>,  <41.214050, 37.129467, 41.468239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240444, 37.524780, 41.413177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494756, 0.087400, 0.864626,
		0.866523, -0.125160, -0.483190,
		0.065986, 0.988279, -0.137658,
		41.260239, 37.821262, 41.371880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908859, 37.262478, 41.350548>,  <41.214050, 37.129467, 41.468239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908859, 37.262478, 41.350548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.753559, 37.597042, 41.505302>,  <41.660381, 37.797779, 41.598156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.753559, 37.597042, 41.505302>,  <41.908859, 37.262478, 41.350548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753559, 37.597042, 41.505302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587659, -0.098688, 0.803068,
		0.709875, 0.539148, -0.453208,
		-0.388246, 0.836409, 0.386891,
		41.637085, 37.847965, 41.621368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410606, 37.606232, 41.731777>,  <41.908859, 37.262478, 41.350548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410606, 37.606232, 41.731777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.091179, 37.799931, 41.874767>,  <41.899521, 37.916149, 41.960560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.091179, 37.799931, 41.874767>,  <42.410606, 37.606232, 41.731777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091179, 37.799931, 41.874767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373781, -0.066537, 0.925127,
		0.471779, 0.872396, -0.127869,
		-0.798569, 0.484251, 0.357476,
		41.851608, 37.945206, 41.982010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971249, 38.002396, 41.383411>,  <42.410606, 37.606232, 41.731777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971249, 38.002396, 41.383411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.337055, 37.856979, 41.312420>,  <43.556538, 37.769730, 41.269825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.337055, 37.856979, 41.312420>,  <42.971249, 38.002396, 41.383411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337055, 37.856979, 41.312420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281572, -0.256986, -0.924487,
		0.290482, 0.895430, -0.337381,
		0.914515, -0.363543, -0.177478,
		43.611408, 37.747917, 41.259178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354931, 38.348686, 40.790623>,  <42.971249, 38.002396, 41.383411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354931, 38.348686, 40.790623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.489258, 37.973381, 40.823826>,  <43.569855, 37.748199, 40.843746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.489258, 37.973381, 40.823826>,  <43.354931, 38.348686, 40.790623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489258, 37.973381, 40.823826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257559, -0.176232, -0.950055,
		0.906031, 0.297662, -0.300840,
		0.335813, -0.938264, 0.083006,
		43.590000, 37.691902, 40.848728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847107, 38.263885, 40.237797>,  <43.354931, 38.348686, 40.790623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847107, 38.263885, 40.237797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.749516, 37.886925, 40.329323>,  <43.690960, 37.660748, 40.384239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.749516, 37.886925, 40.329323>,  <43.847107, 38.263885, 40.237797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749516, 37.886925, 40.329323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073296, -0.217351, -0.973338,
		0.967007, -0.254245, -0.016045,
		-0.243979, -0.942400, 0.228815,
		43.676323, 37.604206, 40.397968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278942, 37.774204, 39.824795>,  <43.847107, 38.263885, 40.237797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278942, 37.774204, 39.824795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.966087, 37.553135, 39.939911>,  <43.778374, 37.420494, 40.008980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.966087, 37.553135, 39.939911>,  <44.278942, 37.774204, 39.824795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966087, 37.553135, 39.939911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049549, -0.405230, -0.912871,
		0.621136, -0.728248, 0.289560,
		-0.782135, -0.552670, 0.287787,
		43.731445, 37.387333, 40.026245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371861, 37.000469, 39.505234>,  <44.278942, 37.774204, 39.824795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371861, 37.000469, 39.505234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.980923, 37.027397, 39.585506>,  <43.746361, 37.043552, 39.633671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.980923, 37.027397, 39.585506>,  <44.371861, 37.000469, 39.505234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980923, 37.027397, 39.585506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206030, -0.519965, -0.828968,
		0.048545, -0.851531, 0.522052,
		-0.977341, 0.067316, 0.200683,
		43.687721, 37.047592, 39.645710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166489, 36.322540, 39.381138>,  <44.371861, 37.000469, 39.505234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166489, 36.322540, 39.381138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.845154, 36.557465, 39.341702>,  <43.652355, 36.698418, 39.318039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.845154, 36.557465, 39.341702>,  <44.166489, 36.322540, 39.381138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845154, 36.557465, 39.341702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267455, -0.503714, -0.821426,
		-0.532101, -0.633505, 0.561729,
		-0.803328, 0.587319, -0.098593,
		43.604153, 36.733658, 39.312126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635365, 35.970592, 38.983299>,  <44.166489, 36.322540, 39.381138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635365, 35.970592, 38.983299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.493793, 36.340958, 38.930515>,  <43.408852, 36.563179, 38.898846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.493793, 36.340958, 38.930515>,  <43.635365, 35.970592, 38.983299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493793, 36.340958, 38.930515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362868, -0.265985, -0.893072,
		-0.862011, -0.268196, 0.430125,
		-0.353925, 0.925917, -0.131962,
		43.387615, 36.618732, 38.890926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040264, 35.927700, 38.562355>,  <43.635365, 35.970592, 38.983299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040264, 35.927700, 38.562355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167809, 36.302818, 38.507416>,  <43.244335, 36.527889, 38.474453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167809, 36.302818, 38.507416>,  <43.040264, 35.927700, 38.562355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167809, 36.302818, 38.507416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307075, -0.034882, -0.951046,
		-0.896677, 0.345433, 0.276851,
		0.318866, 0.937795, -0.137352,
		43.263470, 36.584156, 38.466209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439438, 36.308418, 38.229366>,  <43.040264, 35.927700, 38.562355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439438, 36.308418, 38.229366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.754047, 36.546761, 38.164448>,  <42.942814, 36.689766, 38.125496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.754047, 36.546761, 38.164448>,  <42.439438, 36.308418, 38.229366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754047, 36.546761, 38.164448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232325, 0.041997, -0.971731,
		-0.572196, 0.801992, 0.171464,
		0.786522, 0.595856, -0.162292,
		42.990005, 36.725517, 38.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170399, 36.893471, 37.824055>,  <42.439438, 36.308418, 38.229366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170399, 36.893471, 37.824055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.561001, 36.868645, 37.741508>,  <42.795361, 36.853748, 37.691982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.561001, 36.868645, 37.741508>,  <42.170399, 36.893471, 37.824055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561001, 36.868645, 37.741508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192960, 0.174533, -0.965559,
		0.095948, 0.982693, 0.158456,
		0.976504, -0.062068, -0.206367,
		42.853951, 36.850025, 37.679600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306320, 37.498764, 37.333324>,  <42.170399, 36.893471, 37.824055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306320, 37.498764, 37.333324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.631577, 37.275692, 37.266644>,  <42.826729, 37.141850, 37.226635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.631577, 37.275692, 37.266644>,  <42.306320, 37.498764, 37.333324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631577, 37.275692, 37.266644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007642, 0.296598, -0.954972,
		0.582016, 0.775253, 0.245438,
		0.813142, -0.557684, -0.166700,
		42.875519, 37.108387, 37.216633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779400, 37.962444, 37.019402>,  <42.306320, 37.498764, 37.333324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779400, 37.962444, 37.019402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948910, 37.607121, 36.948605>,  <43.050617, 37.393929, 36.906128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948910, 37.607121, 36.948605>,  <42.779400, 37.962444, 37.019402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948910, 37.607121, 36.948605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186550, 0.276811, -0.942642,
		0.886347, 0.366454, 0.283020,
		0.423778, -0.888306, -0.176989,
		43.076042, 37.340630, 36.895508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450180, 38.076969, 36.619331>,  <42.779400, 37.962444, 37.019402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450180, 38.076969, 36.619331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.316013, 37.703972, 36.565735>,  <43.235512, 37.480175, 36.533577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.316013, 37.703972, 36.565735>,  <43.450180, 38.076969, 36.619331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316013, 37.703972, 36.565735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053925, 0.122988, -0.990942,
		0.940526, -0.339602, 0.009033,
		-0.335415, -0.932494, -0.133987,
		43.215389, 37.424225, 36.525539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798107, 37.929043, 36.075237>,  <43.450180, 38.076969, 36.619331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798107, 37.929043, 36.075237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.506149, 37.656033, 36.090309>,  <43.330975, 37.492226, 36.099350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.506149, 37.656033, 36.090309>,  <43.798107, 37.929043, 36.075237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506149, 37.656033, 36.090309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004156, -0.050685, -0.998706,
		0.683549, -0.729105, 0.034158,
		-0.729893, -0.682523, 0.037675,
		43.287182, 37.451275, 36.101612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.322418, 39.252384, 27.635065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161133, 38.897415, 27.545719>,  <26.064362, 38.684433, 27.492111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161133, 38.897415, 27.545719>,  <26.322418, 39.252384, 27.635065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161133, 38.897415, 27.545719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157353, -0.173213, 0.972233,
		-0.901475, 0.427166, -0.069797,
		-0.403215, -0.887427, -0.223363,
		26.040169, 38.631187, 27.478710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802977, 39.185921, 28.036152>,  <26.322418, 39.252384, 27.635065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802977, 39.185921, 28.036152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.865572, 38.806702, 27.925365>,  <25.903130, 38.579170, 27.858894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.865572, 38.806702, 27.925365>,  <25.802977, 39.185921, 28.036152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865572, 38.806702, 27.925365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042802, -0.286665, 0.957074,
		-0.986752, -0.137916, -0.085438,
		0.156488, -0.948052, -0.276965,
		25.912518, 38.522285, 27.842276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322355, 38.733410, 28.411539>,  <25.802977, 39.185921, 28.036152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322355, 38.733410, 28.411539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.628000, 38.493641, 28.316189>,  <25.811388, 38.349777, 28.258978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.628000, 38.493641, 28.316189>,  <25.322355, 38.733410, 28.411539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628000, 38.493641, 28.316189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116772, -0.491949, 0.862757,
		-0.634427, -0.631408, -0.445900,
		0.764111, -0.599425, -0.238375,
		25.857233, 38.313812, 28.244677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129145, 38.146156, 28.731089>,  <25.322355, 38.733410, 28.411539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129145, 38.146156, 28.731089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.512375, 38.073902, 28.642130>,  <25.742313, 38.030548, 28.588755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.512375, 38.073902, 28.642130>,  <25.129145, 38.146156, 28.731089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512375, 38.073902, 28.642130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108551, -0.489496, 0.865222,
		-0.265151, -0.853091, -0.449367,
		0.958077, -0.180635, -0.222395,
		25.799797, 38.019711, 28.575411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231028, 37.418304, 28.740425>,  <25.129145, 38.146156, 28.731089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231028, 37.418304, 28.740425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.575724, 37.603863, 28.822596>,  <25.782541, 37.715199, 28.871899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.575724, 37.603863, 28.822596>,  <25.231028, 37.418304, 28.740425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575724, 37.603863, 28.822596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083302, -0.528780, 0.844661,
		0.500465, -0.710766, -0.494314,
		0.861740, 0.463900, 0.205428,
		25.834246, 37.743034, 28.884224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558334, 36.945789, 29.143511>,  <25.231028, 37.418304, 28.740425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558334, 36.945789, 29.143511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784805, 37.272697, 29.186441>,  <25.920687, 37.468842, 29.212200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784805, 37.272697, 29.186441>,  <25.558334, 36.945789, 29.143511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784805, 37.272697, 29.186441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331680, -0.345083, 0.878013,
		0.754608, -0.461511, -0.466449,
		0.566176, 0.817267, 0.107329,
		25.954659, 37.517876, 29.218639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146679, 36.753242, 29.359562>,  <25.558334, 36.945789, 29.143511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146679, 36.753242, 29.359562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175329, 37.136089, 29.471840>,  <26.192518, 37.365799, 29.539206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175329, 37.136089, 29.471840>,  <26.146679, 36.753242, 29.359562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175329, 37.136089, 29.471840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221414, -0.289651, 0.931170,
		0.972546, -0.004546, -0.232666,
		0.071625, 0.957122, 0.280693,
		26.196817, 37.423225, 29.556047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780449, 36.787193, 29.601601>,  <26.146679, 36.753242, 29.359562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780449, 36.787193, 29.601601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.550688, 37.072926, 29.761496>,  <26.412830, 37.244366, 29.857433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.550688, 37.072926, 29.761496>,  <26.780449, 36.787193, 29.601601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550688, 37.072926, 29.761496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262620, -0.301702, 0.916518,
		0.775301, 0.631430, -0.014300,
		-0.574403, 0.714333, 0.399737,
		26.378366, 37.287224, 29.881416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113689, 37.127815, 30.191990>,  <26.780449, 36.787193, 29.601601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113689, 37.127815, 30.191990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743460, 37.257130, 30.270786>,  <26.521322, 37.334717, 30.318064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743460, 37.257130, 30.270786>,  <27.113689, 37.127815, 30.191990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743460, 37.257130, 30.270786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185755, -0.065577, 0.980406,
		0.329865, 0.944028, 0.000646,
		-0.925572, 0.323282, 0.196989,
		26.465788, 37.354115, 30.329884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219067, 37.612671, 30.708101>,  <27.113689, 37.127815, 30.191990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219067, 37.612671, 30.708101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854776, 37.447468, 30.708551>,  <26.636202, 37.348347, 30.708822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854776, 37.447468, 30.708551>,  <27.219067, 37.612671, 30.708101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854776, 37.447468, 30.708551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124061, -0.270958, 0.954563,
		-0.393940, 0.869484, 0.298007,
		-0.910725, -0.413012, 0.001128,
		26.581558, 37.323563, 30.708889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002439, 37.876720, 31.383095>,  <27.219067, 37.612671, 30.708101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002439, 37.876720, 31.383095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777365, 37.556084, 31.302267>,  <26.642321, 37.363701, 31.253771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777365, 37.556084, 31.302267>,  <27.002439, 37.876720, 31.383095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777365, 37.556084, 31.302267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095265, -0.179933, 0.979055,
		-0.821164, 0.570150, 0.024881,
		-0.562685, -0.801594, -0.202070,
		26.608559, 37.315605, 31.241646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501936, 37.880894, 31.834475>,  <27.002439, 37.876720, 31.383095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501936, 37.880894, 31.834475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459366, 37.509483, 31.692194>,  <26.433825, 37.286636, 31.606827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459366, 37.509483, 31.692194>,  <26.501936, 37.880894, 31.834475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459366, 37.509483, 31.692194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095668, -0.346510, 0.933155,
		-0.989708, 0.133339, -0.051953,
		-0.106424, -0.928521, -0.355700,
		26.427439, 37.230927, 31.585484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034208, 37.584347, 32.369423>,  <26.501936, 37.880894, 31.834475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034208, 37.584347, 32.369423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.229418, 37.303337, 32.162239>,  <26.346544, 37.134731, 32.037930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.229418, 37.303337, 32.162239>,  <26.034208, 37.584347, 32.369423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229418, 37.303337, 32.162239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157102, -0.513037, 0.843867,
		-0.858574, -0.493202, -0.140007,
		0.488026, -0.702527, -0.517963,
		26.375826, 37.092579, 32.006851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750111, 37.002319, 32.562984>,  <26.034208, 37.584347, 32.369423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750111, 37.002319, 32.562984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089792, 36.843262, 32.424000>,  <26.293602, 36.747826, 32.340611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089792, 36.843262, 32.424000>,  <25.750111, 37.002319, 32.562984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089792, 36.843262, 32.424000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085225, -0.546157, 0.833336,
		-0.521132, -0.737289, -0.429914,
		0.849210, -0.397639, -0.347456,
		26.344555, 36.723969, 32.319763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655773, 36.266239, 32.568119>,  <25.750111, 37.002319, 32.562984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655773, 36.266239, 32.568119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.050344, 36.325500, 32.596424>,  <26.287088, 36.361057, 32.613407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.050344, 36.325500, 32.596424>,  <25.655773, 36.266239, 32.568119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050344, 36.325500, 32.596424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022815, -0.550474, 0.834540,
		0.162595, -0.821601, -0.546384,
		0.986429, 0.148158, 0.070760,
		26.346273, 36.369949, 32.617653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862118, 35.670006, 32.923191>,  <25.655773, 36.266239, 32.568119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862118, 35.670006, 32.923191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.194143, 35.889603, 32.962383>,  <26.393358, 36.021362, 32.985897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.194143, 35.889603, 32.962383>,  <25.862118, 35.670006, 32.923191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194143, 35.889603, 32.962383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152177, -0.392009, 0.907288,
		0.536502, -0.738198, -0.408937,
		0.830065, 0.548993, 0.097977,
		26.443163, 36.054302, 32.991776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347946, 35.212914, 33.165138>,  <25.862118, 35.670006, 32.923191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347946, 35.212914, 33.165138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513906, 35.565231, 33.256401>,  <26.613483, 35.776623, 33.311161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513906, 35.565231, 33.256401>,  <26.347946, 35.212914, 33.165138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513906, 35.565231, 33.256401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126536, -0.304183, 0.944172,
		0.901025, -0.362867, -0.237658,
		0.414901, 0.880795, 0.228161,
		26.638376, 35.829472, 33.324848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989460, 35.072136, 33.448399>,  <26.347946, 35.212914, 33.165138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989460, 35.072136, 33.448399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908575, 35.433605, 33.599392>,  <26.860044, 35.650486, 33.689987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908575, 35.433605, 33.599392>,  <26.989460, 35.072136, 33.448399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908575, 35.433605, 33.599392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310514, -0.306399, 0.899834,
		0.928812, 0.299171, -0.218644,
		-0.202212, 0.903668, 0.377483,
		26.847912, 35.704704, 33.712639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614250, 35.262688, 33.792217>,  <26.989460, 35.072136, 33.448399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614250, 35.262688, 33.792217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344751, 35.516472, 33.943756>,  <27.183052, 35.668743, 34.034679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344751, 35.516472, 33.943756>,  <27.614250, 35.262688, 33.792217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344751, 35.516472, 33.943756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429618, -0.080814, 0.899387,
		0.601241, 0.768720, -0.218127,
		-0.673749, 0.634459, 0.378844,
		27.142626, 35.706810, 34.057411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994120, 35.905487, 34.074345>,  <27.614250, 35.262688, 33.792217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994120, 35.905487, 34.074345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641165, 35.807793, 34.235210>,  <27.429392, 35.749176, 34.331730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641165, 35.807793, 34.235210>,  <27.994120, 35.905487, 34.074345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641165, 35.807793, 34.235210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436810, -0.107528, 0.893104,
		-0.174888, 0.963735, 0.201568,
		-0.882389, -0.244240, 0.402164,
		27.376448, 35.734520, 34.355858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701254, 35.793266, 34.285694>,  <27.994120, 35.905487, 34.074345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701254, 35.793266, 34.285694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077158, 35.661091, 34.250683>,  <29.302700, 35.581787, 34.229675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077158, 35.661091, 34.250683>,  <28.701254, 35.793266, 34.285694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077158, 35.661091, 34.250683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129354, -0.106760, -0.985835,
		0.316410, 0.937771, -0.143073,
		0.939762, -0.330435, -0.087525,
		29.359087, 35.561962, 34.224426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950893, 36.193386, 33.657654>,  <28.701254, 35.793266, 34.285694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950893, 36.193386, 33.657654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.181274, 35.869465, 33.702366>,  <29.319504, 35.675114, 33.729195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.181274, 35.869465, 33.702366>,  <28.950893, 36.193386, 33.657654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181274, 35.869465, 33.702366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023478, -0.153069, -0.987937,
		0.817145, 0.566382, -0.107173,
		0.575954, -0.809804, 0.111782,
		29.354061, 35.626522, 33.735901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440279, 36.253922, 33.210442>,  <28.950893, 36.193386, 33.657654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440279, 36.253922, 33.210442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476839, 35.861454, 33.278511>,  <29.498775, 35.625973, 33.319351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476839, 35.861454, 33.278511>,  <29.440279, 36.253922, 33.210442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476839, 35.861454, 33.278511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146099, -0.155824, -0.976921,
		0.985038, 0.114154, 0.129105,
		0.091401, -0.981167, 0.170170,
		29.504259, 35.567104, 33.329563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080544, 36.089661, 32.873920>,  <29.440279, 36.253922, 33.210442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080544, 36.089661, 32.873920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847048, 35.766518, 32.906475>,  <29.706951, 35.572632, 32.926006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847048, 35.766518, 32.906475>,  <30.080544, 36.089661, 32.873920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847048, 35.766518, 32.906475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129433, -0.006365, -0.991568,
		0.801560, -0.589349, -0.100848,
		-0.583737, -0.807854, 0.081383,
		29.671926, 35.524162, 32.930889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211567, 35.722668, 32.184849>,  <30.080544, 36.089661, 32.873920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211567, 35.722668, 32.184849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895813, 35.526268, 32.332253>,  <29.706362, 35.408428, 32.420692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895813, 35.526268, 32.332253>,  <30.211567, 35.722668, 32.184849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895813, 35.526268, 32.332253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262531, -0.272620, -0.925611,
		0.554934, -0.827406, 0.086300,
		-0.789383, -0.490996, 0.368506,
		29.658998, 35.378971, 32.442802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099819, 35.111168, 31.761675>,  <30.211567, 35.722668, 32.184849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099819, 35.111168, 31.761675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750435, 35.163174, 31.949360>,  <29.540804, 35.194378, 32.061970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750435, 35.163174, 31.949360>,  <30.099819, 35.111168, 31.761675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750435, 35.163174, 31.949360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482047, -0.095295, -0.870948,
		-0.068530, -0.986921, 0.145914,
		-0.873461, 0.130023, 0.469211,
		29.488396, 35.202179, 32.090122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759193, 34.693916, 31.331709>,  <30.099819, 35.111168, 31.761675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759193, 34.693916, 31.331709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498077, 34.913002, 31.541042>,  <29.341408, 35.044453, 31.666643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498077, 34.913002, 31.541042>,  <29.759193, 34.693916, 31.331709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498077, 34.913002, 31.541042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588582, 0.068201, -0.805555,
		-0.476905, -0.833882, 0.277853,
		-0.652788, 0.547713, 0.523334,
		29.302240, 35.077316, 31.698042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018507, 34.358536, 31.201014>,  <29.759193, 34.693916, 31.331709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018507, 34.358536, 31.201014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001875, 34.738380, 31.325279>,  <28.991896, 34.966286, 31.399837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001875, 34.738380, 31.325279>,  <29.018507, 34.358536, 31.201014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001875, 34.738380, 31.325279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410951, 0.267159, -0.871634,
		-0.910709, -0.163909, 0.379135,
		-0.041579, 0.949610, 0.310663,
		28.989401, 35.023262, 31.418478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357822, 34.656879, 30.829205>,  <29.018507, 34.358536, 31.201014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357822, 34.656879, 30.829205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561546, 34.987644, 30.924549>,  <28.683781, 35.186104, 30.981756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561546, 34.987644, 30.924549>,  <28.357822, 34.656879, 30.829205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561546, 34.987644, 30.924549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312523, 0.435791, -0.844047,
		-0.801830, 0.355389, 0.480383,
		0.509312, 0.826913, 0.238363,
		28.714340, 35.235718, 30.996058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984333, 35.235416, 30.658047>,  <28.357822, 34.656879, 30.829205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984333, 35.235416, 30.658047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346409, 35.404968, 30.670408>,  <28.563654, 35.506699, 30.677826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346409, 35.404968, 30.670408>,  <27.984333, 35.235416, 30.658047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346409, 35.404968, 30.670408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205372, 0.499916, -0.841372,
		-0.372089, 0.755256, 0.539572,
		0.905192, 0.423878, 0.030905,
		28.617966, 35.532131, 30.679680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858841, 35.913616, 30.478533>,  <27.984333, 35.235416, 30.658047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858841, 35.913616, 30.478533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240747, 35.820465, 30.404570>,  <28.469891, 35.764572, 30.360191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240747, 35.820465, 30.404570>,  <27.858841, 35.913616, 30.478533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240747, 35.820465, 30.404570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074347, 0.415132, -0.906718,
		0.287920, 0.879450, 0.379039,
		0.954764, -0.232882, -0.184909,
		28.527176, 35.750599, 30.349096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186092, 36.387390, 30.130573>,  <27.858841, 35.913616, 30.478533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186092, 36.387390, 30.130573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455462, 36.102200, 30.052431>,  <28.617083, 35.931084, 30.005545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455462, 36.102200, 30.052431>,  <28.186092, 36.387390, 30.130573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455462, 36.102200, 30.052431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017557, 0.279612, -0.959952,
		0.739049, 0.643024, 0.200815,
		0.673423, -0.712978, -0.195358,
		28.657488, 35.888306, 29.993824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684492, 36.735664, 29.713217>,  <28.186092, 36.387390, 30.130573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684492, 36.735664, 29.713217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784100, 36.358818, 29.623411>,  <28.843864, 36.132710, 29.569529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784100, 36.358818, 29.623411>,  <28.684492, 36.735664, 29.713217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784100, 36.358818, 29.623411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064391, 0.247409, -0.966769,
		0.966356, 0.226285, 0.122273,
		0.249017, -0.942116, -0.224515,
		28.858805, 36.076183, 29.556057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247055, 36.796673, 29.256918>,  <28.684492, 36.735664, 29.713217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247055, 36.796673, 29.256918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096992, 36.428902, 29.209742>,  <29.006954, 36.208241, 29.181437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096992, 36.428902, 29.209742>,  <29.247055, 36.796673, 29.256918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096992, 36.428902, 29.209742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008670, 0.123748, -0.992276,
		0.926921, -0.373281, -0.038454,
		-0.375156, -0.919428, -0.117941,
		28.984446, 36.153072, 29.174358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567257, 36.469563, 28.591476>,  <29.247055, 36.796673, 29.256918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567257, 36.469563, 28.591476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.264347, 36.220268, 28.669571>,  <29.082602, 36.070694, 28.716427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.264347, 36.220268, 28.669571>,  <29.567257, 36.469563, 28.591476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264347, 36.220268, 28.669571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152526, -0.121904, -0.980752,
		0.635037, -0.772477, -0.002744,
		-0.757274, -0.623233, 0.195236,
		29.037165, 36.033298, 28.728142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806021, 35.827515, 28.327093>,  <29.567257, 36.469563, 28.591476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806021, 35.827515, 28.327093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406361, 35.842346, 28.334272>,  <29.166565, 35.851246, 28.338581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406361, 35.842346, 28.334272>,  <29.806021, 35.827515, 28.327093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406361, 35.842346, 28.334272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019781, -0.049609, -0.998573,
		-0.036123, -0.998081, 0.050300,
		-0.999151, 0.037066, 0.017951,
		29.106615, 35.853470, 28.339657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541370, 35.284321, 27.806263>,  <29.806021, 35.827515, 28.327093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541370, 35.284321, 27.806263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247065, 35.550034, 27.858995>,  <29.070482, 35.709461, 27.890635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247065, 35.550034, 27.858995>,  <29.541370, 35.284321, 27.806263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247065, 35.550034, 27.858995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109085, 0.075873, -0.991133,
		-0.668397, -0.743618, 0.016639,
		-0.735762, 0.664285, 0.131831,
		29.026337, 35.749321, 27.898544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092186, 35.133469, 27.302147>,  <29.541370, 35.284321, 27.806263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092186, 35.133469, 27.302147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991951, 35.505104, 27.410963>,  <28.931810, 35.728085, 27.476254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991951, 35.505104, 27.410963>,  <29.092186, 35.133469, 27.302147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991951, 35.505104, 27.410963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214857, 0.220624, -0.951400,
		-0.943951, -0.296858, 0.144335,
		-0.250587, 0.929086, 0.272040,
		28.916775, 35.783829, 27.492575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437361, 35.276798, 26.995302>,  <29.092186, 35.133469, 27.302147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437361, 35.276798, 26.995302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574240, 35.647732, 27.055906>,  <28.656366, 35.870293, 27.092270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574240, 35.647732, 27.055906>,  <28.437361, 35.276798, 26.995302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574240, 35.647732, 27.055906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227385, 0.238180, -0.944228,
		-0.911700, 0.288661, 0.292366,
		0.342197, 0.927332, 0.151512,
		28.676899, 35.925930, 27.101360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883898, 35.685310, 26.800650>,  <28.437361, 35.276798, 26.995302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883898, 35.685310, 26.800650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212383, 35.912548, 26.779173>,  <28.409473, 36.048889, 26.766287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212383, 35.912548, 26.779173>,  <27.883898, 35.685310, 26.800650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212383, 35.912548, 26.779173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254838, 0.280935, -0.925275,
		-0.510557, 0.773529, 0.375478,
		0.821212, 0.568091, -0.053691,
		28.458748, 36.082977, 26.763065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729076, 36.375378, 26.670912>,  <27.883898, 35.685310, 26.800650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729076, 36.375378, 26.670912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100435, 36.315098, 26.535049>,  <28.323252, 36.278931, 26.453531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100435, 36.315098, 26.535049>,  <27.729076, 36.375378, 26.670912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100435, 36.315098, 26.535049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288426, 0.284062, -0.914396,
		0.234280, 0.946890, 0.220258,
		0.928398, -0.150696, -0.339658,
		28.378954, 36.269890, 26.433151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050068, 37.036724, 26.386007>,  <27.729076, 36.375378, 26.670912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050068, 37.036724, 26.386007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292194, 36.768330, 26.214720>,  <28.437469, 36.607292, 26.111948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292194, 36.768330, 26.214720>,  <28.050068, 37.036724, 26.386007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292194, 36.768330, 26.214720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097275, 0.471584, -0.876440,
		0.790020, 0.572177, 0.220186,
		0.605314, -0.670987, -0.428219,
		28.473789, 36.567032, 26.086254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.669968, 34.154732, 41.640606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.335842, 34.291481, 41.812824>,  <43.135365, 34.373531, 41.916157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.335842, 34.291481, 41.812824>,  <43.669968, 34.154732, 41.640606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335842, 34.291481, 41.812824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437240, -0.061615, 0.897232,
		0.333270, 0.937723, -0.098014,
		-0.835316, 0.341876, 0.430544,
		43.085247, 34.394043, 41.941986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865875, 34.672348, 42.043816>,  <43.669968, 34.154732, 41.640606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865875, 34.672348, 42.043816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.513092, 34.617374, 42.224155>,  <43.301422, 34.584389, 42.332359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.513092, 34.617374, 42.224155>,  <43.865875, 34.672348, 42.043816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513092, 34.617374, 42.224155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462590, -0.069046, 0.883880,
		-0.090346, 0.988102, 0.124471,
		-0.881957, -0.137434, 0.450847,
		43.248505, 34.576145, 42.359409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688824, 35.118404, 42.512653>,  <43.865875, 34.672348, 42.043816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688824, 35.118404, 42.512653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.424381, 34.845715, 42.637993>,  <43.265717, 34.682098, 42.713196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.424381, 34.845715, 42.637993>,  <43.688824, 35.118404, 42.512653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424381, 34.845715, 42.637993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326183, 0.114954, 0.938291,
		-0.675680, 0.722517, 0.146372,
		-0.661105, -0.681729, 0.313345,
		43.226051, 34.641197, 42.731995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456608, 35.345253, 43.088272>,  <43.688824, 35.118404, 42.512653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456608, 35.345253, 43.088272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.325928, 34.968468, 43.119209>,  <43.247520, 34.742397, 43.137772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.325928, 34.968468, 43.119209>,  <43.456608, 35.345253, 43.088272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325928, 34.968468, 43.119209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342959, -0.041899, 0.938416,
		-0.880709, 0.333100, 0.336742,
		-0.326696, -0.941960, 0.077338,
		43.227921, 34.685879, 43.142410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937664, 35.287971, 43.732117>,  <43.456608, 35.345253, 43.088272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937664, 35.287971, 43.732117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.114494, 34.943699, 43.631092>,  <43.220592, 34.737133, 43.570477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.114494, 34.943699, 43.631092>,  <42.937664, 35.287971, 43.732117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114494, 34.943699, 43.631092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168257, -0.197005, 0.965856,
		-0.881054, -0.469480, 0.057725,
		0.442078, -0.860685, -0.252565,
		43.247116, 34.685493, 43.555321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671978, 34.930553, 44.296982>,  <42.937664, 35.287971, 43.732117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671978, 34.930553, 44.296982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.969398, 34.716042, 44.137215>,  <43.147850, 34.587334, 44.041355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.969398, 34.716042, 44.137215>,  <42.671978, 34.930553, 44.296982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969398, 34.716042, 44.137215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337302, -0.214954, 0.916527,
		-0.577370, -0.816211, 0.021058,
		0.743553, -0.536278, -0.399417,
		43.192463, 34.555157, 44.017391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714993, 34.315346, 44.753685>,  <42.671978, 34.930553, 44.296982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714993, 34.315346, 44.753685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.064533, 34.327679, 44.559597>,  <43.274258, 34.335079, 44.443142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.064533, 34.327679, 44.559597>,  <42.714993, 34.315346, 44.753685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064533, 34.327679, 44.559597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482291, -0.181270, 0.857051,
		-0.061534, -0.982950, -0.173271,
		0.873847, 0.030829, -0.485222,
		43.326687, 34.336929, 44.414032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215015, 33.630661, 44.988117>,  <42.714993, 34.315346, 44.753685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215015, 33.630661, 44.988117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.410019, 33.951897, 44.851067>,  <43.527020, 34.144638, 44.768837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.410019, 33.951897, 44.851067>,  <43.215015, 33.630661, 44.988117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410019, 33.951897, 44.851067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528312, 0.041100, 0.848055,
		0.695142, -0.594446, -0.404242,
		0.487509, 0.803085, -0.342623,
		43.556271, 34.192822, 44.748280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881718, 33.432072, 45.080814>,  <43.215015, 33.630661, 44.988117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881718, 33.432072, 45.080814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.944809, 33.824043, 45.032043>,  <43.982666, 34.059227, 45.002781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.944809, 33.824043, 45.032043>,  <43.881718, 33.432072, 45.080814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944809, 33.824043, 45.032043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715588, -0.028345, 0.697947,
		0.680481, -0.197335, -0.705694,
		0.157733, 0.979926, -0.121923,
		43.992130, 34.118023, 44.995468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593838, 33.617455, 45.266354>,  <43.881718, 33.432072, 45.080814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593838, 33.617455, 45.266354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.414204, 33.974586, 45.280087>,  <44.306423, 34.188866, 45.288326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.414204, 33.974586, 45.280087>,  <44.593838, 33.617455, 45.266354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414204, 33.974586, 45.280087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676821, 0.314851, 0.665419,
		0.583295, 0.322067, -0.745680,
		-0.449087, 0.892828, 0.034331,
		44.279476, 34.242435, 45.290386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151207, 34.105446, 45.198265>,  <44.593838, 33.617455, 45.266354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151207, 34.105446, 45.198265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.834385, 34.278126, 45.370907>,  <44.644291, 34.381733, 45.474491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.834385, 34.278126, 45.370907>,  <45.151207, 34.105446, 45.198265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834385, 34.278126, 45.370907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549883, 0.197531, 0.811548,
		0.265087, 0.880125, -0.393839,
		-0.792059, 0.431696, 0.431603,
		44.596767, 34.407635, 45.500389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386032, 34.728981, 45.581505>,  <45.151207, 34.105446, 45.198265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386032, 34.728981, 45.581505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.036633, 34.631245, 45.749931>,  <44.826992, 34.572601, 45.850986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.036633, 34.631245, 45.749931>,  <45.386032, 34.728981, 45.581505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036633, 34.631245, 45.749931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378669, 0.202578, 0.903090,
		-0.305965, 0.948292, -0.084425,
		-0.873496, -0.244345, 0.421070,
		44.774582, 34.557941, 45.876251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377598, 35.094353, 46.233051>,  <45.386032, 34.728981, 45.581505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377598, 35.094353, 46.233051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.061398, 34.857540, 46.295792>,  <44.871677, 34.715454, 46.333435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.061398, 34.857540, 46.295792>,  <45.377598, 35.094353, 46.233051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061398, 34.857540, 46.295792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017305, 0.234408, 0.971984,
		-0.612211, 0.771073, -0.175056,
		-0.790505, -0.592030, 0.156851,
		44.824245, 34.679932, 46.342846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888351, 35.419098, 46.700752>,  <45.377598, 35.094353, 46.233051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888351, 35.419098, 46.700752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.844559, 35.025040, 46.753662>,  <44.818283, 34.788605, 46.785408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.844559, 35.025040, 46.753662>,  <44.888351, 35.419098, 46.700752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844559, 35.025040, 46.753662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131794, 0.117516, 0.984287,
		-0.985212, 0.125199, 0.116970,
		-0.109486, -0.985147, 0.132278,
		44.811714, 34.729496, 46.793346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026733, 36.192173, 46.577286>,  <44.888351, 35.419098, 46.700752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026733, 36.192173, 46.577286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.991302, 36.590210, 46.594929>,  <44.970043, 36.829033, 46.605515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.991302, 36.590210, 46.594929>,  <45.026733, 36.192173, 46.577286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991302, 36.590210, 46.594929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330010, 0.012458, -0.943895,
		-0.939812, -0.098163, 0.327287,
		-0.088578, 0.995092, 0.044103,
		44.964729, 36.888737, 46.608158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409016, 36.371490, 46.320717>,  <45.026733, 36.192173, 46.577286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409016, 36.371490, 46.320717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.605450, 36.718868, 46.293442>,  <44.723309, 36.927296, 46.277077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.605450, 36.718868, 46.293442>,  <44.409016, 36.371490, 46.320717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605450, 36.718868, 46.293442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339093, 0.118476, -0.933263,
		-0.802405, 0.481431, 0.352663,
		0.491084, 0.868440, -0.068184,
		44.752773, 36.979401, 46.272987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927181, 36.761662, 45.924690>,  <44.409016, 36.371490, 46.320717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927181, 36.761662, 45.924690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.273018, 36.962383, 45.914341>,  <44.480522, 37.082817, 45.908131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.273018, 36.962383, 45.914341>,  <43.927181, 36.761662, 45.924690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273018, 36.962383, 45.914341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253511, 0.391172, -0.884713,
		-0.433827, 0.771479, 0.465418,
		0.864596, 0.501801, -0.025877,
		44.532398, 37.112923, 45.906578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806438, 37.359806, 45.636841>,  <43.927181, 36.761662, 45.924690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806438, 37.359806, 45.636841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.202427, 37.331409, 45.587975>,  <44.440018, 37.314373, 45.558655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.202427, 37.331409, 45.587975>,  <43.806438, 37.359806, 45.636841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202427, 37.331409, 45.587975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078157, 0.445182, -0.892023,
		0.117713, 0.892622, 0.435167,
		0.989967, -0.070991, -0.122168,
		44.499416, 37.310112, 45.551323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958347, 38.053196, 45.390003>,  <43.806438, 37.359806, 45.636841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958347, 38.053196, 45.390003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.235870, 37.781277, 45.294918>,  <44.402386, 37.618126, 45.237869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.235870, 37.781277, 45.294918>,  <43.958347, 38.053196, 45.390003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235870, 37.781277, 45.294918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090183, 0.245468, -0.965201,
		0.714492, 0.691100, 0.109001,
		0.693807, -0.679798, -0.237710,
		44.444012, 37.577335, 45.223606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441505, 38.358139, 44.912510>,  <43.958347, 38.053196, 45.390003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441505, 38.358139, 44.912510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.507324, 37.970284, 44.840141>,  <44.546814, 37.737572, 44.796719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.507324, 37.970284, 44.840141>,  <44.441505, 38.358139, 44.912510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507324, 37.970284, 44.840141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080600, 0.169592, -0.982213,
		0.983071, 0.176201, -0.050247,
		0.164545, -0.969635, -0.180923,
		44.556686, 37.679394, 44.785866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970734, 38.342850, 44.283279>,  <44.441505, 38.358139, 44.912510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970734, 38.342850, 44.283279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.823605, 37.971138, 44.296814>,  <44.735325, 37.748112, 44.304935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.823605, 37.971138, 44.296814>,  <44.970734, 38.342850, 44.283279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823605, 37.971138, 44.296814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017025, -0.043115, -0.998925,
		0.929738, -0.366855, 0.031680,
		-0.367827, -0.929278, 0.033840,
		44.713257, 37.692356, 44.306965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407227, 37.942169, 43.924263>,  <44.970734, 38.342850, 44.283279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407227, 37.942169, 43.924263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.051708, 37.758865, 43.921597>,  <44.838398, 37.648884, 43.919998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.051708, 37.758865, 43.921597>,  <45.407227, 37.942169, 43.924263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051708, 37.758865, 43.921597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039478, 0.091036, -0.995065,
		0.456607, -0.884143, -0.099003,
		-0.888792, -0.458262, -0.006663,
		44.785072, 37.621387, 43.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484005, 37.393055, 43.521286>,  <45.407227, 37.942169, 43.924263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484005, 37.393055, 43.521286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.088100, 37.449512, 43.529697>,  <44.850555, 37.483387, 43.534744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.088100, 37.449512, 43.529697>,  <45.484005, 37.393055, 43.521286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088100, 37.449512, 43.529697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037132, -0.112427, -0.992966,
		-0.137797, -0.983583, 0.116518,
		-0.989764, 0.141154, 0.021031,
		44.791172, 37.491856, 43.536007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195225, 36.915607, 43.159542>,  <45.484005, 37.393055, 43.521286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195225, 36.915607, 43.159542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.896381, 37.181450, 43.155056>,  <44.717075, 37.340958, 43.152363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.896381, 37.181450, 43.155056>,  <45.195225, 36.915607, 43.159542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896381, 37.181450, 43.155056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102018, -0.131320, -0.986077,
		-0.656827, -0.735562, 0.165912,
		-0.747108, 0.664608, -0.011214,
		44.672249, 37.380833, 43.151691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800587, 36.684967, 42.660812>,  <45.195225, 36.915607, 43.159542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800587, 36.684967, 42.660812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.633060, 37.047813, 42.677471>,  <44.532547, 37.265522, 42.687466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.633060, 37.047813, 42.677471>,  <44.800587, 36.684967, 42.660812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633060, 37.047813, 42.677471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154414, -0.025951, -0.987665,
		-0.894848, -0.420077, 0.150940,
		-0.418812, 0.907118, 0.041644,
		44.507416, 37.319950, 42.689964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101761, 36.650955, 42.473854>,  <44.800587, 36.684967, 42.660812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101761, 36.650955, 42.473854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.178707, 37.036724, 42.401321>,  <44.224873, 37.268185, 42.357803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.178707, 37.036724, 42.401321>,  <44.101761, 36.650955, 42.473854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178707, 37.036724, 42.401321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327605, -0.111070, -0.938263,
		-0.925025, 0.239893, 0.294585,
		0.192363, 0.964425, -0.181333,
		44.236416, 37.326050, 42.346920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439682, 36.997547, 42.318989>,  <44.101761, 36.650955, 42.473854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439682, 36.997547, 42.318989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.738415, 37.199589, 42.145966>,  <43.917656, 37.320812, 42.042152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.738415, 37.199589, 42.145966>,  <43.439682, 36.997547, 42.318989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738415, 37.199589, 42.145966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463795, -0.070527, -0.883131,
		-0.476581, 0.860171, 0.181593,
		0.746837, 0.505105, -0.432555,
		43.962467, 37.351120, 42.016201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179325, 37.599621, 41.925079>,  <43.439682, 36.997547, 42.318989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179325, 37.599621, 41.925079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.541813, 37.507904, 41.782982>,  <43.759304, 37.452873, 41.697723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.541813, 37.507904, 41.782982>,  <43.179325, 37.599621, 41.925079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541813, 37.507904, 41.782982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352936, 0.052432, -0.934177,
		0.232824, 0.971945, -0.033410,
		0.906217, -0.229290, -0.355242,
		43.813679, 37.439117, 41.676411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714390, 38.071373, 42.374557>,  <43.179325, 37.599621, 41.925079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714390, 38.071373, 42.374557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.322735, 37.995556, 42.403881>,  <42.087742, 37.950066, 42.421474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.322735, 37.995556, 42.403881>,  <42.714390, 38.071373, 42.374557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322735, 37.995556, 42.403881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113632, -0.211564, 0.970736,
		-0.168483, 0.958810, 0.228687,
		-0.979133, -0.189539, 0.073307,
		42.028996, 37.938694, 42.425873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574512, 38.375450, 42.884808>,  <42.714390, 38.071373, 42.374557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574512, 38.375450, 42.884808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.246590, 38.146751, 42.872059>,  <42.049835, 38.009533, 42.864410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.246590, 38.146751, 42.872059>,  <42.574512, 38.375450, 42.884808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246590, 38.146751, 42.872059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036977, -0.108400, 0.993419,
		-0.571440, 0.813237, 0.110009,
		-0.819810, -0.571748, -0.031873,
		42.000648, 37.975227, 42.862495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023457, 38.658825, 43.377529>,  <42.574512, 38.375450, 42.884808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023457, 38.658825, 43.377529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.921684, 38.278477, 43.306969>,  <41.860622, 38.050270, 43.264633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.921684, 38.278477, 43.306969>,  <42.023457, 38.658825, 43.377529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921684, 38.278477, 43.306969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025387, -0.175773, 0.984104,
		-0.966759, 0.254860, 0.020582,
		-0.254427, -0.950868, -0.176400,
		41.845356, 37.993217, 43.254047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498859, 38.438351, 43.879505>,  <42.023457, 38.658825, 43.377529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498859, 38.438351, 43.879505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.642174, 38.081890, 43.768158>,  <41.728161, 37.868015, 43.701347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.642174, 38.081890, 43.768158>,  <41.498859, 38.438351, 43.879505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642174, 38.081890, 43.768158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106498, -0.335230, 0.936098,
		-0.927519, -0.305742, -0.215012,
		0.358283, -0.891147, -0.278371,
		41.749660, 37.814545, 43.684647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075455, 37.976128, 44.235786>,  <41.498859, 38.438351, 43.879505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075455, 37.976128, 44.235786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.402702, 37.769573, 44.134563>,  <41.599049, 37.645641, 44.073830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.402702, 37.769573, 44.134563>,  <41.075455, 37.976128, 44.235786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402702, 37.769573, 44.134563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078361, -0.335839, 0.938654,
		-0.569691, -0.787757, -0.234290,
		0.818115, -0.516384, -0.253054,
		41.648136, 37.614658, 44.058647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986542, 37.289650, 44.459908>,  <41.075455, 37.976128, 44.235786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986542, 37.289650, 44.459908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.379868, 37.357471, 44.433540>,  <41.615864, 37.398163, 44.417721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.379868, 37.357471, 44.433540>,  <40.986542, 37.289650, 44.459908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379868, 37.357471, 44.433540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100145, -0.202020, 0.974248,
		0.151868, -0.964594, -0.215629,
		0.983315, 0.169551, -0.065919,
		41.674862, 37.408337, 44.413765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234234, 36.841900, 45.032963>,  <40.986542, 37.289650, 44.459908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234234, 36.841900, 45.032963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.556335, 37.055294, 44.929455>,  <41.749596, 37.183331, 44.867352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.556335, 37.055294, 44.929455>,  <41.234234, 36.841900, 45.032963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556335, 37.055294, 44.929455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309242, -0.005504, 0.950967,
		0.505907, -0.845788, -0.169410,
		0.805249, 0.533490, -0.258769,
		41.797909, 37.215340, 44.851826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835552, 36.250786, 44.998699>,  <41.234234, 36.841900, 45.032963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835552, 36.250786, 44.998699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482178, 36.230728, 45.185040>,  <40.270153, 36.218693, 45.296844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482178, 36.230728, 45.185040>,  <40.835552, 36.250786, 44.998699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482178, 36.230728, 45.185040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437007, 0.446788, -0.780644,
		-0.168997, -0.893234, -0.416622,
		-0.883439, -0.050140, 0.465855,
		40.217148, 36.215687, 45.324795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363110, 35.986984, 44.502296>,  <40.835552, 36.250786, 44.998699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363110, 35.986984, 44.502296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.144955, 36.170380, 44.782967>,  <40.014061, 36.280415, 44.951366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.144955, 36.170380, 44.782967>,  <40.363110, 35.986984, 44.502296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144955, 36.170380, 44.782967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697023, 0.216856, -0.683471,
		-0.465522, -0.861839, 0.201303,
		-0.545388, 0.458484, 0.701672,
		39.981339, 36.307926, 44.993469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638054, 35.842278, 44.351486>,  <40.363110, 35.986984, 44.502296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638054, 35.842278, 44.351486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.617775, 36.169483, 44.580673>,  <39.605606, 36.365807, 44.718185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.617775, 36.169483, 44.580673>,  <39.638054, 35.842278, 44.351486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617775, 36.169483, 44.580673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776886, 0.328214, -0.537330,
		-0.627596, -0.472373, 0.618860,
		-0.050701, 0.818010, 0.572966,
		39.602566, 36.414886, 44.752563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982307, 35.865688, 44.452259>,  <39.638054, 35.842278, 44.351486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982307, 35.865688, 44.452259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.131329, 36.230362, 44.521576>,  <39.220741, 36.449165, 44.563168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.131329, 36.230362, 44.521576>,  <38.982307, 35.865688, 44.452259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131329, 36.230362, 44.521576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670552, 0.393555, -0.628868,
		-0.641530, 0.118086, 0.757954,
		0.372557, 0.911685, 0.173295,
		39.243095, 36.503868, 44.573563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432293, 36.363052, 44.359745>,  <38.982307, 35.865688, 44.452259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432293, 36.363052, 44.359745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715309, 36.645462, 44.371864>,  <38.885117, 36.814907, 44.379135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715309, 36.645462, 44.371864>,  <38.432293, 36.363052, 44.359745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715309, 36.645462, 44.371864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513660, 0.543257, -0.664097,
		-0.485329, 0.454312, 0.747032,
		0.707537, 0.706026, 0.030296,
		38.927570, 36.857269, 44.380955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133282, 37.044315, 44.220055>,  <38.432293, 36.363052, 44.359745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133282, 37.044315, 44.220055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.511711, 37.140419, 44.133129>,  <38.738770, 37.198082, 44.080975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.511711, 37.140419, 44.133129>,  <38.133282, 37.044315, 44.220055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511711, 37.140419, 44.133129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304095, 0.427341, -0.851414,
		-0.111696, 0.871581, 0.477357,
		0.946071, 0.240261, -0.217311,
		38.795532, 37.212498, 44.067936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048721, 37.608696, 43.911774>,  <38.133282, 37.044315, 44.220055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048721, 37.608696, 43.911774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419205, 37.492859, 43.815208>,  <38.641495, 37.423355, 43.757267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419205, 37.492859, 43.815208>,  <38.048721, 37.608696, 43.911774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419205, 37.492859, 43.815208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222113, 0.098289, -0.970054,
		0.304650, 0.952090, 0.026714,
		0.926204, -0.289593, -0.241415,
		38.697067, 37.405979, 43.742783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.317051, 32.278999, 46.968685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.415451, 32.664322, 46.925735>,  <42.474491, 32.895515, 46.899963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.415451, 32.664322, 46.925735>,  <42.317051, 32.278999, 46.968685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415451, 32.664322, 46.925735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348621, -0.015435, -0.937136,
		-0.904405, 0.267968, 0.332031,
		0.245998, 0.963304, -0.107378,
		42.489250, 32.953312, 46.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766968, 32.669781, 46.790230>,  <42.317051, 32.278999, 46.968685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766968, 32.669781, 46.790230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.082832, 32.865749, 46.642498>,  <42.272350, 32.983330, 46.553860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.082832, 32.865749, 46.642498>,  <41.766968, 32.669781, 46.790230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082832, 32.865749, 46.642498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469108, 0.094152, -0.878108,
		-0.395433, 0.866666, 0.304176,
		0.789665, 0.489924, -0.369329,
		42.319733, 33.012726, 46.531700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392338, 33.094177, 46.430000>,  <41.766968, 32.669781, 46.790230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392338, 33.094177, 46.430000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.760818, 33.144718, 46.282799>,  <41.981907, 33.175045, 46.194477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.760818, 33.144718, 46.282799>,  <41.392338, 33.094177, 46.430000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760818, 33.144718, 46.282799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369579, -0.011617, -0.929127,
		-0.121676, 0.991917, 0.035997,
		0.921198, 0.126356, -0.368006,
		42.037178, 33.182625, 46.172398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271561, 33.605717, 46.042198>,  <41.392338, 33.094177, 46.430000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271561, 33.605717, 46.042198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.571884, 33.365780, 45.931576>,  <41.752079, 33.221817, 45.865200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.571884, 33.365780, 45.931576>,  <41.271561, 33.605717, 46.042198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571884, 33.365780, 45.931576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445292, -0.150407, -0.882662,
		0.487859, 0.785857, -0.380030,
		0.750805, -0.599839, -0.276559,
		41.797127, 33.185829, 45.848610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368595, 33.854782, 45.376350>,  <41.271561, 33.605717, 46.042198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368595, 33.854782, 45.376350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.515102, 33.483730, 45.405621>,  <41.603008, 33.261101, 45.423183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.515102, 33.483730, 45.405621>,  <41.368595, 33.854782, 45.376350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515102, 33.483730, 45.405621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396772, -0.226830, -0.889449,
		0.841675, 0.296744, -0.451137,
		0.366271, -0.927626, 0.073177,
		41.624985, 33.205441, 45.427574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750393, 33.778774, 44.819324>,  <41.368595, 33.854782, 45.376350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750393, 33.778774, 44.819324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.673397, 33.401062, 44.926121>,  <41.627201, 33.174435, 44.990196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.673397, 33.401062, 44.926121>,  <41.750393, 33.778774, 44.819324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673397, 33.401062, 44.926121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429203, -0.163656, -0.888257,
		0.882459, -0.285570, -0.373787,
		-0.192487, -0.944281, 0.266987,
		41.615650, 33.117779, 45.006218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105408, 33.320301, 44.346298>,  <41.750393, 33.778774, 44.819324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105408, 33.320301, 44.346298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.782230, 33.123817, 44.476490>,  <41.588322, 33.005928, 44.554604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.782230, 33.123817, 44.476490>,  <42.105408, 33.320301, 44.346298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782230, 33.123817, 44.476490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306322, -0.121731, -0.944113,
		0.503378, -0.862493, -0.052116,
		-0.807946, -0.491210, 0.325477,
		41.539845, 32.976456, 44.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923157, 32.882435, 43.850128>,  <42.105408, 33.320301, 44.346298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923157, 32.882435, 43.850128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.584812, 32.893806, 44.063187>,  <41.381805, 32.900627, 44.191021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.584812, 32.893806, 44.063187>,  <41.923157, 32.882435, 43.850128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584812, 32.893806, 44.063187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524093, -0.230073, -0.819996,
		0.099239, -0.972758, 0.209507,
		-0.845860, 0.028426, 0.532648,
		41.331055, 32.902336, 44.222980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535187, 32.452900, 43.429970>,  <41.923157, 32.882435, 43.850128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535187, 32.452900, 43.429970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.293007, 32.621742, 43.699860>,  <41.147701, 32.723049, 43.861794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.293007, 32.621742, 43.699860>,  <41.535187, 32.452900, 43.429970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293007, 32.621742, 43.699860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720090, 0.070548, -0.690285,
		-0.338976, -0.903796, 0.261243,
		-0.605446, 0.422109, 0.674729,
		41.111374, 32.748375, 43.902279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831318, 32.060528, 43.429062>,  <41.535187, 32.452900, 43.429970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831318, 32.060528, 43.429062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.793755, 32.426655, 43.585712>,  <40.771217, 32.646332, 43.679703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.793755, 32.426655, 43.585712>,  <40.831318, 32.060528, 43.429062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793755, 32.426655, 43.585712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764153, 0.185873, -0.617674,
		-0.638162, -0.357268, 0.681989,
		-0.093912, 0.915320, 0.391625,
		40.765579, 32.701252, 43.703201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016209, 32.151180, 43.548676>,  <40.831318, 32.060528, 43.429062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016209, 32.151180, 43.548676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.223198, 32.493294, 43.538048>,  <40.347393, 32.698563, 43.531670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.223198, 32.493294, 43.538048>,  <40.016209, 32.151180, 43.548676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223198, 32.493294, 43.538048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589935, 0.334093, -0.735091,
		-0.619833, 0.396070, 0.677448,
		0.517478, 0.855284, -0.026574,
		40.378441, 32.749878, 43.530075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464397, 32.663715, 43.601395>,  <40.016209, 32.151180, 43.548676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464397, 32.663715, 43.601395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.804749, 32.819302, 43.460129>,  <40.008957, 32.912651, 43.375370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.804749, 32.819302, 43.460129>,  <39.464397, 32.663715, 43.601395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804749, 32.819302, 43.460129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468706, 0.258334, -0.844736,
		-0.237338, 0.884291, 0.402119,
		0.850873, 0.388963, -0.353161,
		40.060009, 32.935989, 43.354179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255985, 33.239086, 44.054523>,  <39.464397, 32.663715, 43.601395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255985, 33.239086, 44.054523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.943459, 33.366104, 44.269447>,  <38.755943, 33.442314, 44.398403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.943459, 33.366104, 44.269447>,  <39.255985, 33.239086, 44.054523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943459, 33.366104, 44.269447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602030, 0.156390, 0.783009,
		0.164613, 0.935257, -0.313364,
		-0.781321, 0.317548, 0.537308,
		38.709061, 33.461369, 44.430641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532700, 33.769974, 44.585056>,  <39.255985, 33.239086, 44.054523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532700, 33.769974, 44.585056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.170391, 33.649082, 44.703876>,  <38.953007, 33.576546, 44.775169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.170391, 33.649082, 44.703876>,  <39.532700, 33.769974, 44.585056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170391, 33.649082, 44.703876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309039, 0.008531, 0.951011,
		-0.289957, 0.953197, 0.085673,
		-0.905770, -0.302229, 0.297049,
		38.898659, 33.558414, 44.792992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411606, 34.131126, 45.167789>,  <39.532700, 33.769974, 44.585056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411606, 34.131126, 45.167789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.166603, 33.815243, 45.181622>,  <39.019604, 33.625713, 45.189919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.166603, 33.815243, 45.181622>,  <39.411606, 34.131126, 45.167789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166603, 33.815243, 45.181622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241040, -0.144935, 0.959632,
		-0.752822, 0.596111, 0.279125,
		-0.612503, -0.789712, 0.034577,
		38.982853, 33.578331, 45.191994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154415, 34.165691, 45.859112>,  <39.411606, 34.131126, 45.167789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154415, 34.165691, 45.859112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.082924, 33.785847, 45.756115>,  <39.040028, 33.557941, 45.694317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.082924, 33.785847, 45.756115>,  <39.154415, 34.165691, 45.859112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082924, 33.785847, 45.756115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421398, -0.310368, 0.852112,
		-0.889089, 0.043793, 0.455635,
		-0.178731, -0.949607, -0.257490,
		39.029305, 33.500965, 45.678867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769958, 33.863289, 46.387760>,  <39.154415, 34.165691, 45.859112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769958, 33.863289, 46.387760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942657, 33.562595, 46.188366>,  <39.046276, 33.382179, 46.068729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942657, 33.562595, 46.188366>,  <38.769958, 33.863289, 46.387760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942657, 33.562595, 46.188366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250465, -0.431004, 0.866892,
		-0.866521, -0.499135, 0.002197,
		0.431749, -0.751731, -0.498490,
		39.072182, 33.337074, 46.038818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653080, 33.278313, 46.807331>,  <38.769958, 33.863289, 46.387760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653080, 33.278313, 46.807331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.967297, 33.173317, 46.583183>,  <39.155827, 33.110321, 46.448692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.967297, 33.173317, 46.583183>,  <38.653080, 33.278313, 46.807331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967297, 33.173317, 46.583183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406513, -0.463860, 0.787135,
		-0.466639, -0.846099, -0.257614,
		0.785491, -0.262584, -0.560405,
		39.202961, 33.094570, 46.415070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848011, 32.574593, 47.088928>,  <38.653080, 33.278313, 46.807331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848011, 32.574593, 47.088928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159855, 32.716675, 46.882614>,  <39.346962, 32.801926, 46.758823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159855, 32.716675, 46.882614>,  <38.848011, 32.574593, 47.088928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159855, 32.716675, 46.882614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626091, -0.422675, 0.655252,
		0.014739, -0.833771, -0.551913,
		0.779611, 0.355206, -0.515787,
		39.393738, 32.823238, 46.727879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258125, 32.016258, 47.006699>,  <38.848011, 32.574593, 47.088928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258125, 32.016258, 47.006699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.487312, 32.339951, 46.954773>,  <39.624825, 32.534164, 46.923618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.487312, 32.339951, 46.954773>,  <39.258125, 32.016258, 47.006699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487312, 32.339951, 46.954773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578998, -0.287571, 0.762932,
		0.580058, -0.512297, -0.633312,
		0.572970, 0.809231, -0.129811,
		39.659203, 32.582718, 46.915829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904808, 31.787512, 47.233749>,  <39.258125, 32.016258, 47.006699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904808, 31.787512, 47.233749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.937344, 32.185795, 47.251423>,  <39.956867, 32.424763, 47.262028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.937344, 32.185795, 47.251423>,  <39.904808, 31.787512, 47.233749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937344, 32.185795, 47.251423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666900, -0.087322, 0.740013,
		0.740694, -0.030726, -0.671140,
		0.081344, 0.995706, 0.044188,
		39.961746, 32.484509, 47.264679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590946, 32.013889, 47.259506>,  <39.904808, 31.787512, 47.233749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590946, 32.013889, 47.259506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.411114, 32.326832, 47.431923>,  <40.303215, 32.514595, 47.535374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.411114, 32.326832, 47.431923>,  <40.590946, 32.013889, 47.259506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411114, 32.326832, 47.431923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625526, -0.068731, 0.777170,
		0.637648, 0.619030, -0.458483,
		-0.449580, 0.782354, 0.431045,
		40.276241, 32.561539, 47.561237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046696, 32.351074, 47.633926>,  <40.590946, 32.013889, 47.259506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046696, 32.351074, 47.633926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732048, 32.518589, 47.815407>,  <40.543259, 32.619099, 47.924294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732048, 32.518589, 47.815407>,  <41.046696, 32.351074, 47.633926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732048, 32.518589, 47.815407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559368, 0.172258, 0.810824,
		0.261411, 0.891595, -0.369759,
		-0.786620, 0.418790, 0.453700,
		40.496063, 32.644226, 47.951515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282120, 33.008343, 47.834011>,  <41.046696, 32.351074, 47.633926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282120, 33.008343, 47.834011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.968384, 32.920933, 48.066238>,  <40.780144, 32.868488, 48.205574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.968384, 32.920933, 48.066238>,  <41.282120, 33.008343, 47.834011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968384, 32.920933, 48.066238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544873, 0.204694, 0.813151,
		-0.296531, 0.954122, -0.041483,
		-0.784336, -0.218521, 0.580573,
		40.733082, 32.855377, 48.240410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283592, 33.521191, 48.272785>,  <41.282120, 33.008343, 47.834011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283592, 33.521191, 48.272785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.057560, 33.239395, 48.444542>,  <40.921940, 33.070316, 48.547596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.057560, 33.239395, 48.444542>,  <41.283592, 33.521191, 48.272785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057560, 33.239395, 48.444542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508328, 0.112644, 0.853764,
		-0.649839, 0.700715, 0.294461,
		-0.565076, -0.704492, 0.429394,
		40.888039, 33.028046, 48.573360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524509, 34.043373, 47.702011>,  <41.283592, 33.521191, 48.272785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524509, 34.043373, 47.702011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.359257, 34.369583, 47.864117>,  <41.260105, 34.565311, 47.961380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.359257, 34.369583, 47.864117>,  <41.524509, 34.043373, 47.702011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359257, 34.369583, 47.864117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398976, 0.237946, -0.885551,
		-0.818623, -0.527536, 0.227075,
		-0.413128, 0.815529, 0.405262,
		41.235317, 34.614243, 47.985695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851673, 34.095131, 47.546036>,  <41.524509, 34.043373, 47.702011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851673, 34.095131, 47.546036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.952553, 34.479675, 47.590168>,  <41.013081, 34.710403, 47.616646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.952553, 34.479675, 47.590168>,  <40.851673, 34.095131, 47.546036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952553, 34.479675, 47.590168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421144, 0.211696, -0.881942,
		-0.871225, 0.175959, 0.458263,
		0.252198, 0.961365, 0.110331,
		41.028214, 34.768085, 47.623268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191616, 34.509243, 47.427647>,  <40.851673, 34.095131, 47.546036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191616, 34.509243, 47.427647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.502323, 34.757511, 47.384941>,  <40.688747, 34.906471, 47.359318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.502323, 34.757511, 47.384941>,  <40.191616, 34.509243, 47.427647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502323, 34.757511, 47.384941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392133, 0.343996, -0.853170,
		-0.492807, 0.704585, 0.510590,
		0.776771, 0.620667, -0.106768,
		40.735355, 34.943710, 47.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957581, 35.162090, 47.456326>,  <40.191616, 34.509243, 47.427647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957581, 35.162090, 47.456326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.305565, 35.206043, 47.264038>,  <40.514355, 35.232414, 47.148666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.305565, 35.206043, 47.264038>,  <39.957581, 35.162090, 47.456326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305565, 35.206043, 47.264038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460687, 0.528818, -0.712825,
		0.175885, 0.841592, 0.510674,
		0.869961, 0.109886, -0.480721,
		40.566555, 35.239010, 47.119823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962574, 35.894192, 47.322056>,  <39.957581, 35.162090, 47.456326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962574, 35.894192, 47.322056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.232243, 35.720337, 47.083202>,  <40.394043, 35.616024, 46.939888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.232243, 35.720337, 47.083202>,  <39.962574, 35.894192, 47.322056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232243, 35.720337, 47.083202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209463, 0.662790, -0.718912,
		0.708246, 0.609752, 0.355796,
		0.674176, -0.434641, -0.597138,
		40.434494, 35.589943, 46.904060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265392, 36.428493, 46.886528>,  <39.962574, 35.894192, 47.322056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265392, 36.428493, 46.886528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.360432, 36.101833, 46.676147>,  <40.417454, 35.905838, 46.549919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.360432, 36.101833, 46.676147>,  <40.265392, 36.428493, 46.886528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360432, 36.101833, 46.676147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222682, 0.481246, -0.847830,
		0.945495, 0.318561, -0.067512,
		0.237596, -0.816653, -0.525953,
		40.431709, 35.856838, 46.518360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661938, 36.691887, 46.385025>,  <40.265392, 36.428493, 46.886528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661938, 36.691887, 46.385025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.559425, 36.333267, 46.240513>,  <40.497917, 36.118095, 46.153805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.559425, 36.333267, 46.240513>,  <40.661938, 36.691887, 46.385025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559425, 36.333267, 46.240513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097606, 0.395857, -0.913110,
		0.961661, -0.198752, -0.188960,
		-0.256283, -0.896546, -0.361281,
		40.482540, 36.064304, 46.132130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041431, 36.426182, 45.673992>,  <40.661938, 36.691887, 46.385025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041431, 36.426182, 45.673992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.679863, 36.261063, 45.718750>,  <40.462921, 36.161991, 45.745605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.679863, 36.261063, 45.718750>,  <41.041431, 36.426182, 45.673992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679863, 36.261063, 45.718750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248375, 0.293672, -0.923074,
		0.348186, -0.862179, -0.367986,
		-0.903923, -0.412800, 0.111891,
		40.408688, 36.137222, 45.752316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784931, 36.543339, 45.407093>,  <41.041431, 36.426182, 45.673992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784931, 36.543339, 45.407093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.946789, 36.895668, 45.308769>,  <42.043903, 37.107063, 45.249775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.946789, 36.895668, 45.308769>,  <41.784931, 36.543339, 45.407093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946789, 36.895668, 45.308769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313329, 0.118987, 0.942161,
		0.859123, -0.458255, -0.227840,
		0.404640, 0.880820, -0.245809,
		42.068180, 37.159916, 45.235027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455936, 36.650917, 45.787453>,  <41.784931, 36.543339, 45.407093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455936, 36.650917, 45.787453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.346596, 37.023788, 45.692516>,  <42.280991, 37.247509, 45.635555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.346596, 37.023788, 45.692516>,  <42.455936, 36.650917, 45.787453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346596, 37.023788, 45.692516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345028, 0.325336, 0.880404,
		0.897905, 0.158772, -0.410558,
		-0.273353, 0.932174, -0.237340,
		42.264591, 37.303440, 45.621315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020370, 37.071926, 45.865715>,  <42.455936, 36.650917, 45.787453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020370, 37.071926, 45.865715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.697403, 37.307133, 45.884991>,  <42.503624, 37.448257, 45.896557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.697403, 37.307133, 45.884991>,  <43.020370, 37.071926, 45.865715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697403, 37.307133, 45.884991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413374, 0.505552, 0.757324,
		0.420956, 0.631393, -0.651259,
		-0.807415, 0.588013, 0.048186,
		42.455177, 37.483536, 45.899448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278023, 37.667580, 46.102055>,  <43.020370, 37.071926, 45.865715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278023, 37.667580, 46.102055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.892242, 37.747566, 46.171162>,  <42.660774, 37.795559, 46.212624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.892242, 37.747566, 46.171162>,  <43.278023, 37.667580, 46.102055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892242, 37.747566, 46.171162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243688, 0.420076, 0.874158,
		0.102228, 0.885183, -0.453872,
		-0.964451, 0.199966, 0.172765,
		42.602905, 37.807556, 46.222992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259445, 38.313015, 46.201210>,  <43.278023, 37.667580, 46.102055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259445, 38.313015, 46.201210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.944477, 38.157276, 46.392365>,  <42.755497, 38.063831, 46.507057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.944477, 38.157276, 46.392365>,  <43.259445, 38.313015, 46.201210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944477, 38.157276, 46.392365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324205, 0.397777, 0.858291,
		-0.524268, 0.830770, -0.186989,
		-0.787423, -0.389351, 0.477882,
		42.708252, 38.040470, 46.535728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220623, 38.671841, 46.889683>,  <43.259445, 38.313015, 46.201210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220623, 38.671841, 46.889683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.965366, 38.369583, 46.948711>,  <42.812210, 38.188229, 46.984127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.965366, 38.369583, 46.948711>,  <43.220623, 38.671841, 46.889683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965366, 38.369583, 46.948711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204741, 0.018214, 0.978647,
		-0.742194, 0.654732, 0.143088,
		-0.638145, -0.755642, 0.147569,
		42.773922, 38.142891, 46.992981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837631, 38.841965, 47.447338>,  <43.220623, 38.671841, 46.889683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837631, 38.841965, 47.447338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.819107, 38.443687, 47.415234>,  <42.807995, 38.204720, 47.395969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.819107, 38.443687, 47.415234>,  <42.837631, 38.841965, 47.447338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819107, 38.443687, 47.415234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283213, -0.090140, 0.954812,
		-0.957939, 0.021482, 0.286168,
		-0.046307, -0.995697, -0.080265,
		42.805214, 38.144978, 47.391155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566864, 38.666023, 48.036106>,  <42.837631, 38.841965, 47.447338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566864, 38.666023, 48.036106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.673489, 38.300442, 47.913715>,  <42.737465, 38.081093, 47.840279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.673489, 38.300442, 47.913715>,  <42.566864, 38.666023, 48.036106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673489, 38.300442, 47.913715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227185, -0.248940, 0.941497,
		-0.936660, -0.320482, 0.141280,
		0.266563, -0.913959, -0.305981,
		42.753456, 38.026253, 47.821922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247730, 38.167778, 48.446888>,  <42.566864, 38.666023, 48.036106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247730, 38.167778, 48.446888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.567406, 37.978386, 48.298771>,  <42.759212, 37.864750, 48.209900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.567406, 37.978386, 48.298771>,  <42.247730, 38.167778, 48.446888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567406, 37.978386, 48.298771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371607, -0.095011, 0.923516,
		-0.472449, -0.875664, 0.100018,
		0.799187, -0.473481, -0.370291,
		42.807163, 37.836342, 48.187683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.098808, 38.792988, 32.841217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465553, 38.651520, 32.767147>,  <37.685600, 38.566639, 32.722706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465553, 38.651520, 32.767147>,  <37.098808, 38.792988, 32.841217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465553, 38.651520, 32.767147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033932, -0.531217, 0.846556,
		-0.397765, -0.769889, -0.499052,
		0.916859, -0.353665, -0.185176,
		37.740612, 38.545422, 32.711594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135387, 38.040516, 32.959164>,  <37.098808, 38.792988, 32.841217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135387, 38.040516, 32.959164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496983, 38.193073, 33.036461>,  <37.713940, 38.284607, 33.082840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496983, 38.193073, 33.036461>,  <37.135387, 38.040516, 32.959164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496983, 38.193073, 33.036461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004536, -0.443394, 0.896315,
		0.427531, -0.811136, -0.399094,
		0.903989, 0.381392, 0.193244,
		37.768181, 38.307491, 33.094433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452187, 37.527916, 33.395359>,  <37.135387, 38.040516, 32.959164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452187, 37.527916, 33.395359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674297, 37.853806, 33.462162>,  <37.807564, 38.049339, 33.502243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674297, 37.853806, 33.462162>,  <37.452187, 37.527916, 33.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674297, 37.853806, 33.462162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252416, -0.356437, 0.899577,
		0.792437, -0.457356, -0.403570,
		0.555274, 0.814726, 0.167011,
		37.840881, 38.098225, 33.512264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936638, 37.256878, 33.780052>,  <37.452187, 37.527916, 33.395359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936638, 37.256878, 33.780052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990570, 37.647552, 33.846870>,  <38.022930, 37.881958, 33.886959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990570, 37.647552, 33.846870>,  <37.936638, 37.256878, 33.780052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990570, 37.647552, 33.846870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365147, -0.205694, 0.907941,
		0.921134, -0.061426, -0.384369,
		0.134834, 0.976687, 0.167042,
		38.031021, 37.940559, 33.896984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690857, 37.330650, 34.039898>,  <37.936638, 37.256878, 33.780052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690857, 37.330650, 34.039898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499065, 37.660419, 34.160183>,  <38.383991, 37.858280, 34.232353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499065, 37.660419, 34.160183>,  <38.690857, 37.330650, 34.039898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499065, 37.660419, 34.160183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394025, -0.103929, 0.913205,
		0.784117, 0.556354, -0.275010,
		-0.479483, 0.824421, 0.300709,
		38.355221, 37.907745, 34.250397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071991, 37.795994, 34.235996>,  <38.690857, 37.330650, 34.039898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071991, 37.795994, 34.235996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757607, 37.916126, 34.452168>,  <38.568974, 37.988205, 34.581871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757607, 37.916126, 34.452168>,  <39.071991, 37.795994, 34.235996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757607, 37.916126, 34.452168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568798, 0.008633, 0.822432,
		0.242336, 0.953796, -0.177612,
		-0.785966, 0.300330, 0.540425,
		38.521816, 38.006226, 34.614296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348560, 38.266689, 34.749550>,  <39.071991, 37.795994, 34.235996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348560, 38.266689, 34.749550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998165, 38.145786, 34.899902>,  <38.787930, 38.073242, 34.990112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998165, 38.145786, 34.899902>,  <39.348560, 38.266689, 34.749550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998165, 38.145786, 34.899902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401816, -0.026225, 0.915345,
		-0.266815, 0.952864, 0.144426,
		-0.875987, -0.302261, 0.375879,
		38.735371, 38.055107, 35.012665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331421, 38.669415, 35.294693>,  <39.348560, 38.266689, 34.749550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331421, 38.669415, 35.294693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051064, 38.402428, 35.395279>,  <38.882851, 38.242233, 35.455631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051064, 38.402428, 35.395279>,  <39.331421, 38.669415, 35.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051064, 38.402428, 35.395279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320470, 0.020272, 0.947042,
		-0.637220, 0.744360, 0.199696,
		-0.700892, -0.667471, 0.251463,
		38.840797, 38.202187, 35.470718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013111, 38.865028, 35.937046>,  <39.331421, 38.669415, 35.294693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013111, 38.865028, 35.937046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945103, 38.471344, 35.917381>,  <38.904297, 38.235134, 35.905582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945103, 38.471344, 35.917381>,  <39.013111, 38.865028, 35.937046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945103, 38.471344, 35.917381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357011, -0.108018, 0.927834,
		-0.918497, 0.140195, 0.369740,
		-0.170016, -0.984214, -0.049163,
		38.894096, 38.176079, 35.902634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600315, 38.650539, 36.529350>,  <39.013111, 38.865028, 35.937046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600315, 38.650539, 36.529350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771797, 38.309402, 36.410110>,  <38.874687, 38.104721, 36.338566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771797, 38.309402, 36.410110>,  <38.600315, 38.650539, 36.529350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771797, 38.309402, 36.410110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319370, -0.165594, 0.933050,
		-0.845112, -0.495208, 0.201383,
		0.428706, -0.852847, -0.298100,
		38.900410, 38.053547, 36.320679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267231, 38.204002, 37.051910>,  <38.600315, 38.650539, 36.529350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267231, 38.204002, 37.051910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580826, 38.025444, 36.879360>,  <38.768982, 37.918308, 36.775829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580826, 38.025444, 36.879360>,  <38.267231, 38.204002, 37.051910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580826, 38.025444, 36.879360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310092, -0.320375, 0.895099,
		-0.537774, -0.835516, -0.112747,
		0.783991, -0.446399, -0.431376,
		38.816025, 37.891525, 36.749947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232666, 37.459839, 37.268074>,  <38.267231, 38.204002, 37.051910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232666, 37.459839, 37.268074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600967, 37.575611, 37.163425>,  <38.821949, 37.645077, 37.100636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600967, 37.575611, 37.163425>,  <38.232666, 37.459839, 37.268074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600967, 37.575611, 37.163425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359962, -0.371583, 0.855777,
		0.150479, -0.882130, -0.446321,
		0.920752, 0.289435, -0.261618,
		38.877193, 37.662441, 37.084942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812351, 36.909046, 37.625195>,  <38.232666, 37.459839, 37.268074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812351, 36.909046, 37.625195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538445, 37.153164, 37.784508>,  <37.374100, 37.299633, 37.880096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538445, 37.153164, 37.784508>,  <37.812351, 36.909046, 37.625195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538445, 37.153164, 37.784508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694783, -0.381786, -0.609521,
		-0.219927, -0.694104, 0.685457,
		-0.684769, 0.610294, 0.398287,
		37.333015, 37.336250, 37.903996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166618, 36.465111, 37.729420>,  <37.812351, 36.909046, 37.625195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166618, 36.465111, 37.729420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041599, 36.844814, 37.743404>,  <36.966587, 37.072636, 37.751793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041599, 36.844814, 37.743404>,  <37.166618, 36.465111, 37.729420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041599, 36.844814, 37.743404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706418, -0.207674, -0.676642,
		-0.635048, -0.236179, 0.735482,
		-0.312549, 0.949258, 0.034958,
		36.947834, 37.129593, 37.753891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500858, 36.367275, 37.737457>,  <37.166618, 36.465111, 37.729420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500858, 36.367275, 37.737457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571133, 36.741219, 37.614056>,  <36.613297, 36.965584, 37.540016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571133, 36.741219, 37.614056>,  <36.500858, 36.367275, 37.737457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571133, 36.741219, 37.614056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635323, -0.131709, -0.760931,
		-0.751996, 0.329684, 0.570798,
		0.175687, 0.934859, -0.308501,
		36.623840, 37.021675, 37.521507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743710, 36.656315, 37.661774>,  <36.500858, 36.367275, 37.737457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743710, 36.656315, 37.661774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977146, 36.904728, 37.452492>,  <36.117207, 37.053776, 37.326923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977146, 36.904728, 37.452492>,  <35.743710, 36.656315, 37.661774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977146, 36.904728, 37.452492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614767, -0.083066, -0.784323,
		-0.530549, 0.779372, 0.333313,
		0.583593, 0.621031, -0.523202,
		36.152225, 37.091038, 37.295532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367382, 37.219189, 37.432449>,  <35.743710, 36.656315, 37.661774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367382, 37.219189, 37.432449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675694, 37.160290, 37.184509>,  <35.860680, 37.124950, 37.035748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675694, 37.160290, 37.184509>,  <35.367382, 37.219189, 37.432449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675694, 37.160290, 37.184509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636936, -0.156140, -0.754939,
		0.014381, 0.976697, -0.214139,
		0.770783, -0.147249, -0.619848,
		35.906929, 37.116116, 36.998554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192085, 37.551487, 36.758869>,  <35.367382, 37.219189, 37.432449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192085, 37.551487, 36.758869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475239, 37.274387, 36.703724>,  <35.645130, 37.108128, 36.670635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475239, 37.274387, 36.703724>,  <35.192085, 37.551487, 36.758869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475239, 37.274387, 36.703724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572085, -0.447834, -0.687142,
		0.414276, 0.565284, -0.713323,
		0.707880, -0.692748, -0.137863,
		35.687603, 37.066563, 36.662365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292686, 37.552261, 36.060284>,  <35.192085, 37.551487, 36.758869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292686, 37.552261, 36.060284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421093, 37.201920, 36.204414>,  <35.498138, 36.991714, 36.290894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421093, 37.201920, 36.204414>,  <35.292686, 37.552261, 36.060284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421093, 37.201920, 36.204414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448181, -0.475653, -0.756894,
		0.834315, 0.081486, -0.545232,
		0.321017, -0.875851, 0.360324,
		35.517399, 36.939163, 36.312511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381176, 37.163952, 35.527355>,  <35.292686, 37.552261, 36.060284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381176, 37.163952, 35.527355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411972, 36.864426, 35.790668>,  <35.430450, 36.684708, 35.948658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411972, 36.864426, 35.790668>,  <35.381176, 37.163952, 35.527355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411972, 36.864426, 35.790668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613152, -0.556196, -0.560974,
		0.786204, -0.360440, -0.501962,
		0.076992, -0.748819, 0.658288,
		35.435070, 36.639782, 35.988155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358376, 36.594959, 35.122768>,  <35.381176, 37.163952, 35.527355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358376, 36.594959, 35.122768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254910, 36.470585, 35.488590>,  <35.192829, 36.395958, 35.708084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254910, 36.470585, 35.488590>,  <35.358376, 36.594959, 35.122768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254910, 36.470585, 35.488590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545711, -0.734178, -0.403957,
		0.797052, -0.603572, 0.020222,
		-0.258664, -0.310940, 0.914555,
		35.177311, 36.377304, 35.762955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443123, 35.907772, 35.188908>,  <35.358376, 36.594959, 35.122768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443123, 35.907772, 35.188908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166817, 35.989433, 35.466370>,  <35.001034, 36.038429, 35.632847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166817, 35.989433, 35.466370>,  <35.443123, 35.907772, 35.188908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166817, 35.989433, 35.466370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620923, -0.659073, -0.424356,
		0.370536, -0.723839, 0.582031,
		-0.690766, 0.204157, 0.693659,
		34.959587, 36.050682, 35.674469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134678, 35.339619, 35.418404>,  <35.443123, 35.907772, 35.188908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134678, 35.339619, 35.418404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854408, 35.604084, 35.525665>,  <34.686245, 35.762764, 35.590023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854408, 35.604084, 35.525665>,  <35.134678, 35.339619, 35.418404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854408, 35.604084, 35.525665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712941, -0.634259, -0.299050,
		-0.027640, -0.400719, 0.915784,
		-0.700679, 0.661166, 0.268158,
		34.644203, 35.802433, 35.606113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719360, 34.971989, 35.775894>,  <35.134678, 35.339619, 35.418404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719360, 34.971989, 35.775894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489235, 35.285370, 35.681911>,  <34.351158, 35.473400, 35.625523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489235, 35.285370, 35.681911>,  <34.719360, 34.971989, 35.775894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489235, 35.285370, 35.681911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758247, -0.618577, -0.205971,
		-0.306709, 0.059658, 0.949932,
		-0.575318, 0.783456, -0.234959,
		34.316639, 35.520405, 35.611423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089291, 34.853458, 36.058998>,  <34.719360, 34.971989, 35.775894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089291, 34.853458, 36.058998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983364, 35.124874, 35.784927>,  <33.919807, 35.287724, 35.620487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983364, 35.124874, 35.784927>,  <34.089291, 34.853458, 36.058998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983364, 35.124874, 35.784927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782487, -0.566454, -0.258542,
		-0.563550, 0.467674, 0.680950,
		-0.264813, 0.678535, -0.685174,
		33.903919, 35.328434, 35.579376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362648, 34.935116, 36.142826>,  <34.089291, 34.853458, 36.058998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362648, 34.935116, 36.142826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432144, 35.054771, 35.767521>,  <33.473843, 35.126564, 35.542339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432144, 35.054771, 35.767521>,  <33.362648, 34.935116, 36.142826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432144, 35.054771, 35.767521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881567, -0.377401, -0.283564,
		-0.438925, 0.876405, 0.198141,
		0.173739, 0.299138, -0.938260,
		33.484264, 35.144512, 35.486042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315887, 34.201305, 36.107002>,  <33.362648, 34.935116, 36.142826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315887, 34.201305, 36.107002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940910, 34.268433, 36.229015>,  <32.715923, 34.308708, 36.302223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940910, 34.268433, 36.229015>,  <33.315887, 34.201305, 36.107002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940910, 34.268433, 36.229015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348150, -0.451093, -0.821771,
		-0.000304, -0.876558, 0.481296,
		-0.937439, 0.167813, 0.305037,
		32.659679, 34.318775, 36.320526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714592, 33.836643, 35.655861>,  <33.315887, 34.201305, 36.107002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714592, 33.836643, 35.655861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910946, 33.492290, 35.602318>,  <33.028759, 33.285679, 35.570190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910946, 33.492290, 35.602318>,  <32.714592, 33.836643, 35.655861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910946, 33.492290, 35.602318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230405, -0.019899, 0.972891,
		-0.840204, -0.508423, 0.188582,
		0.490888, -0.860877, -0.133862,
		33.058212, 33.234028, 35.562160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508598, 33.406315, 36.219513>,  <32.714592, 33.836643, 35.655861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508598, 33.406315, 36.219513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869339, 33.309681, 36.076241>,  <33.085785, 33.251701, 35.990276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869339, 33.309681, 36.076241>,  <32.508598, 33.406315, 36.219513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869339, 33.309681, 36.076241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326317, -0.162462, 0.931194,
		-0.283160, -0.956682, -0.067681,
		0.901852, -0.241591, -0.358185,
		33.139896, 33.237206, 35.968784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724827, 32.808781, 36.490665>,  <32.508598, 33.406315, 36.219513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724827, 32.808781, 36.490665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055290, 33.005985, 36.381561>,  <33.253571, 33.124306, 36.316101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055290, 33.005985, 36.381561>,  <32.724827, 32.808781, 36.490665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055290, 33.005985, 36.381561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377108, -0.124161, 0.917809,
		0.418622, -0.861119, -0.288495,
		0.826163, 0.493009, -0.272758,
		33.303139, 33.153889, 36.299732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281445, 32.390285, 36.875061>,  <32.724827, 32.808781, 36.490665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281445, 32.390285, 36.875061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451580, 32.735531, 36.766155>,  <33.553661, 32.942677, 36.700813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451580, 32.735531, 36.766155>,  <33.281445, 32.390285, 36.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451580, 32.735531, 36.766155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414226, 0.081815, 0.906489,
		0.804674, -0.498346, -0.322723,
		0.425342, 0.863109, -0.272262,
		33.579182, 32.994465, 36.684475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980564, 32.342701, 37.115067>,  <33.281445, 32.390285, 36.875061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980564, 32.342701, 37.115067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889610, 32.729195, 37.066601>,  <33.835037, 32.961090, 37.037521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889610, 32.729195, 37.066601>,  <33.980564, 32.342701, 37.115067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889610, 32.729195, 37.066601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495639, 0.221933, 0.839695,
		0.838236, 0.130877, -0.529369,
		-0.227381, 0.966239, -0.121165,
		33.821396, 33.019066, 37.030251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622662, 32.653114, 37.301647>,  <33.980564, 32.342701, 37.115067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622662, 32.653114, 37.301647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352650, 32.947311, 37.324928>,  <34.190643, 33.123829, 37.338898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352650, 32.947311, 37.324928>,  <34.622662, 32.653114, 37.301647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352650, 32.947311, 37.324928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528865, 0.427360, 0.733257,
		0.514434, 0.525748, -0.677456,
		-0.675026, 0.735495, 0.058201,
		34.150143, 33.167961, 37.342388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009182, 33.272972, 37.471565>,  <34.622662, 32.653114, 37.301647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009182, 33.272972, 37.471565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640110, 33.359699, 37.599102>,  <34.418667, 33.411736, 37.675625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640110, 33.359699, 37.599102>,  <35.009182, 33.272972, 37.471565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640110, 33.359699, 37.599102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381584, 0.394764, 0.835796,
		0.055348, 0.892833, -0.446973,
		-0.922676, 0.216818, 0.318841,
		34.363308, 33.424744, 37.694756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070751, 33.900627, 37.718277>,  <35.009182, 33.272972, 37.471565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070751, 33.900627, 37.718277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726208, 33.798553, 37.893974>,  <34.519482, 33.737309, 37.999393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726208, 33.798553, 37.893974>,  <35.070751, 33.900627, 37.718277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726208, 33.798553, 37.893974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282625, 0.477756, 0.831788,
		-0.422111, 0.840613, -0.339400,
		-0.861362, -0.255184, 0.439245,
		34.467800, 33.722000, 38.025749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714333, 34.492287, 38.014149>,  <35.070751, 33.900627, 37.718277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714333, 34.492287, 38.014149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570511, 34.171753, 38.205391>,  <34.484219, 33.979431, 38.320137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570511, 34.171753, 38.205391>,  <34.714333, 34.492287, 38.014149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570511, 34.171753, 38.205391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379799, 0.342331, 0.859397,
		-0.852335, 0.490581, 0.181260,
		-0.359553, -0.801336, 0.478102,
		34.462646, 33.931351, 38.348824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642483, 34.817989, 38.513504>,  <34.714333, 34.492287, 38.014149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642483, 34.817989, 38.513504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590481, 34.441444, 38.638039>,  <34.559280, 34.215515, 38.712757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590481, 34.441444, 38.638039>,  <34.642483, 34.817989, 38.513504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590481, 34.441444, 38.638039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159191, 0.290108, 0.943661,
		-0.978650, 0.172244, 0.112141,
		-0.130007, -0.941365, 0.311334,
		34.551479, 34.159035, 38.731438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195248, 34.796131, 39.204735>,  <34.642483, 34.817989, 38.513504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195248, 34.796131, 39.204735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401543, 34.456318, 39.160355>,  <34.525318, 34.252430, 39.133728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401543, 34.456318, 39.160355>,  <34.195248, 34.796131, 39.204735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401543, 34.456318, 39.160355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422637, 0.139624, 0.895479,
		-0.745248, -0.508722, 0.431053,
		0.515735, -0.849534, -0.110950,
		34.556263, 34.201458, 39.127071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000278, 34.432079, 39.822788>,  <34.195248, 34.796131, 39.204735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000278, 34.432079, 39.822788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331448, 34.269882, 39.667809>,  <34.530148, 34.172565, 39.574821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331448, 34.269882, 39.667809>,  <34.000278, 34.432079, 39.822788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331448, 34.269882, 39.667809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473693, 0.135717, 0.870170,
		-0.300262, -0.903969, 0.304441,
		0.827924, -0.405490, -0.387453,
		34.579826, 34.148235, 39.551571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228363, 34.010818, 40.333660>,  <34.000278, 34.432079, 39.822788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228363, 34.010818, 40.333660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548084, 34.068439, 40.100296>,  <34.739918, 34.103012, 39.960278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548084, 34.068439, 40.100296>,  <34.228363, 34.010818, 40.333660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548084, 34.068439, 40.100296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600588, -0.158664, 0.783658,
		0.020319, -0.976768, -0.213335,
		0.799300, 0.144050, -0.583411,
		34.787876, 34.111652, 39.925274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639019, 33.382519, 40.376282>,  <34.228363, 34.010818, 40.333660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639019, 33.382519, 40.376282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871304, 33.683380, 40.251682>,  <35.010674, 33.863899, 40.176922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871304, 33.683380, 40.251682>,  <34.639019, 33.382519, 40.376282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871304, 33.683380, 40.251682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504141, -0.031817, 0.863035,
		0.639227, -0.658215, -0.397670,
		0.580715, 0.752158, -0.311495,
		35.045517, 33.909027, 40.158234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296574, 33.216106, 40.623249>,  <34.639019, 33.382519, 40.376282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296574, 33.216106, 40.623249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338364, 33.594238, 40.499683>,  <35.363438, 33.821117, 40.425545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338364, 33.594238, 40.499683>,  <35.296574, 33.216106, 40.623249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338364, 33.594238, 40.499683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677476, 0.159750, 0.717988,
		0.728087, -0.284295, -0.623751,
		0.104476, 0.945334, -0.308915,
		35.369705, 33.877838, 40.407009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995480, 33.305592, 40.483620>,  <35.296574, 33.216106, 40.623249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995480, 33.305592, 40.483620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872822, 33.674084, 40.579372>,  <35.799229, 33.895180, 40.636822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872822, 33.674084, 40.579372>,  <35.995480, 33.305592, 40.483620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872822, 33.674084, 40.579372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785481, 0.102876, 0.610276,
		0.537580, 0.375162, -0.755157,
		-0.306640, 0.921233, 0.239378,
		35.780830, 33.950455, 40.651184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534801, 33.756233, 40.458191>,  <35.995480, 33.305592, 40.483620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534801, 33.756233, 40.458191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276764, 33.940189, 40.702274>,  <36.121941, 34.050564, 40.848724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276764, 33.940189, 40.702274>,  <36.534801, 33.756233, 40.458191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276764, 33.940189, 40.702274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714063, 0.078580, 0.695658,
		0.271975, 0.884493, -0.379081,
		-0.645092, 0.459889, 0.610211,
		36.083237, 34.078156, 40.885338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020435, 34.080166, 40.802509>,  <36.534801, 33.756233, 40.458191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020435, 34.080166, 40.802509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681293, 34.131466, 41.008305>,  <36.477810, 34.162247, 41.131783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681293, 34.131466, 41.008305>,  <37.020435, 34.080166, 40.802509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681293, 34.131466, 41.008305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504148, -0.105584, 0.857139,
		0.164249, 0.986105, 0.024863,
		-0.847855, 0.128250, 0.514485,
		36.426937, 34.169941, 41.162651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134972, 34.659580, 41.281914>,  <37.020435, 34.080166, 40.802509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134972, 34.659580, 41.281914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855606, 34.417683, 41.435013>,  <36.687984, 34.272545, 41.526871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855606, 34.417683, 41.435013>,  <37.134972, 34.659580, 41.281914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855606, 34.417683, 41.435013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549682, -0.110782, 0.827995,
		-0.458325, 0.788676, 0.409790,
		-0.698418, -0.604746, 0.382747,
		36.646080, 34.236259, 41.549835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017181, 35.012947, 41.868813>,  <37.134972, 34.659580, 41.281914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017181, 35.012947, 41.868813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865238, 34.646114, 41.917274>,  <36.774075, 34.426014, 41.946354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865238, 34.646114, 41.917274>,  <37.017181, 35.012947, 41.868813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865238, 34.646114, 41.917274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390318, -0.040152, 0.919804,
		-0.838667, 0.396682, 0.373204,
		-0.379854, -0.917078, 0.121158,
		36.751282, 34.370991, 41.953621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683838, 35.019241, 42.490772>,  <37.017181, 35.012947, 41.868813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683838, 35.019241, 42.490772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770432, 34.635132, 42.420334>,  <36.822388, 34.404667, 42.378071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770432, 34.635132, 42.420334>,  <36.683838, 35.019241, 42.490772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770432, 34.635132, 42.420334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496082, -0.047152, 0.866995,
		-0.840854, -0.275052, 0.466166,
		0.216488, -0.960273, -0.176096,
		36.835377, 34.347050, 42.367504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661541, 34.710747, 43.118336>,  <36.683838, 35.019241, 42.490772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661541, 34.710747, 43.118336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862167, 34.441559, 42.900883>,  <36.982544, 34.280045, 42.770409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862167, 34.441559, 42.900883>,  <36.661541, 34.710747, 43.118336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862167, 34.441559, 42.900883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602079, -0.179707, 0.777950,
		-0.621234, -0.717505, 0.315047,
		0.501567, -0.672972, -0.543635,
		37.012638, 34.239666, 42.737793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718849, 34.147652, 43.588112>,  <36.661541, 34.710747, 43.118336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718849, 34.147652, 43.588112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000351, 34.068893, 43.315067>,  <37.169250, 34.021641, 43.151241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000351, 34.068893, 43.315067>,  <36.718849, 34.147652, 43.588112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000351, 34.068893, 43.315067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581922, -0.391428, 0.712847,
		-0.407554, -0.898897, -0.160889,
		0.703752, -0.196899, -0.682616,
		37.211479, 34.009827, 43.110283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947224, 33.589043, 43.885994>,  <36.718849, 34.147652, 43.588112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947224, 33.589043, 43.885994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225872, 33.704815, 43.623409>,  <37.393063, 33.774281, 43.465858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225872, 33.704815, 43.623409>,  <36.947224, 33.589043, 43.885994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225872, 33.704815, 43.623409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717387, -0.291766, 0.632636,
		-0.008426, -0.911647, -0.410888,
		0.696624, 0.289435, -0.656463,
		37.434860, 33.791645, 43.426472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385262, 33.068462, 43.740410>,  <36.947224, 33.589043, 43.885994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385262, 33.068462, 43.740410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608898, 33.392235, 43.668598>,  <37.743080, 33.586498, 43.625511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608898, 33.392235, 43.668598>,  <37.385262, 33.068462, 43.740410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608898, 33.392235, 43.668598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739514, -0.388937, 0.549406,
		0.374882, -0.439934, -0.816040,
		0.559091, 0.809435, -0.179532,
		37.776627, 33.635067, 43.614738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022346, 32.846081, 43.657505>,  <37.385262, 33.068462, 43.740410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022346, 32.846081, 43.657505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082375, 33.233540, 43.736710>,  <38.118389, 33.466015, 43.784233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082375, 33.233540, 43.736710>,  <38.022346, 32.846081, 43.657505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082375, 33.233540, 43.736710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622188, -0.248175, 0.742490,
		0.768350, 0.011778, -0.639921,
		0.150068, 0.968643, 0.198014,
		38.127396, 33.524132, 43.796112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674713, 32.963833, 43.684071>,  <38.022346, 32.846081, 43.657505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674713, 32.963833, 43.684071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509323, 33.265244, 43.888519>,  <38.410091, 33.446091, 44.011189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509323, 33.265244, 43.888519>,  <38.674713, 32.963833, 43.684071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509323, 33.265244, 43.888519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567802, -0.225446, 0.791691,
		0.711787, 0.617559, -0.334635,
		-0.413473, 0.753522, 0.511121,
		38.385281, 33.491299, 44.041855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223907, 33.221039, 43.195827>,  <38.674713, 32.963833, 43.684071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223907, 33.221039, 43.195827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595177, 33.199585, 43.048519>,  <39.817936, 33.186710, 42.960136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595177, 33.199585, 43.048519>,  <39.223907, 33.221039, 43.195827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595177, 33.199585, 43.048519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357696, 0.144562, -0.922581,
		0.102722, 0.988041, 0.114992,
		0.928171, -0.053637, -0.368268,
		39.873627, 33.183495, 42.938038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195770, 33.669613, 42.691971>,  <39.223907, 33.221039, 43.195827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195770, 33.669613, 42.691971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505348, 33.434315, 42.598179>,  <39.691093, 33.293137, 42.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505348, 33.434315, 42.598179>,  <39.195770, 33.669613, 42.691971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505348, 33.434315, 42.598179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234938, 0.077130, -0.968945,
		0.588061, 0.804997, -0.078507,
		0.773943, -0.588243, -0.234482,
		39.737530, 33.257843, 42.527836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564827, 33.877502, 41.973606>,  <39.195770, 33.669613, 42.691971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564827, 33.877502, 41.973606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665974, 33.494781, 42.030987>,  <39.726662, 33.265148, 42.065414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665974, 33.494781, 42.030987>,  <39.564827, 33.877502, 41.973606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665974, 33.494781, 42.030987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087583, -0.170304, -0.981492,
		0.963529, 0.235621, -0.126864,
		0.252865, -0.956807, 0.143456,
		39.741833, 33.207741, 42.074024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143085, 33.760597, 41.465389>,  <39.564827, 33.877502, 41.973606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143085, 33.760597, 41.465389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979092, 33.405880, 41.550720>,  <39.880695, 33.193050, 41.601917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979092, 33.405880, 41.550720>,  <40.143085, 33.760597, 41.465389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979092, 33.405880, 41.550720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007836, -0.237299, -0.971405,
		0.912059, -0.396590, 0.104237,
		-0.409985, -0.886795, 0.213323,
		39.856094, 33.139843, 41.614716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342907, 33.469391, 40.908787>,  <40.143085, 33.760597, 41.465389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342907, 33.469391, 40.908787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057369, 33.220425, 41.037174>,  <39.886047, 33.071045, 41.114208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057369, 33.220425, 41.037174>,  <40.342907, 33.469391, 40.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057369, 33.220425, 41.037174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229967, -0.224573, -0.946933,
		0.661470, -0.749774, 0.017174,
		-0.713843, -0.622419, 0.320972,
		39.843216, 33.033699, 41.133465>
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
