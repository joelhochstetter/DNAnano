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
	<43.256546, 33.595470, 22.761070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050934, 33.470882, 23.080761>,  <42.927567, 33.396130, 23.272575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050934, 33.470882, 23.080761>,  <43.256546, 33.595470, 22.761070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050934, 33.470882, 23.080761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550942, 0.594257, 0.585936,
		-0.657449, 0.741514, -0.133860,
		-0.514027, -0.311474, 0.799225,
		42.896725, 33.377441, 23.320528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007957, 34.176678, 23.162165>,  <43.256546, 33.595470, 22.761070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007957, 34.176678, 23.162165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020500, 33.864910, 23.412453>,  <43.028027, 33.677849, 23.562626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020500, 33.864910, 23.412453>,  <43.007957, 34.176678, 23.162165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020500, 33.864910, 23.412453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614520, 0.508760, 0.602933,
		-0.788278, 0.365610, 0.494921,
		0.031358, -0.779418, 0.625719,
		43.029907, 33.631084, 23.600168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805172, 34.314419, 23.899885>,  <43.007957, 34.176678, 23.162165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805172, 34.314419, 23.899885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100258, 34.055557, 23.822971>,  <43.277309, 33.900242, 23.776823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100258, 34.055557, 23.822971>,  <42.805172, 34.314419, 23.899885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100258, 34.055557, 23.822971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614205, 0.525130, 0.589059,
		-0.280238, -0.552658, 0.784880,
		0.737712, -0.647153, -0.192284,
		43.321571, 33.861412, 23.765285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182957, 34.342457, 24.501329>,  <42.805172, 34.314419, 23.899885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182957, 34.342457, 24.501329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424870, 34.200996, 24.215904>,  <43.570015, 34.116119, 24.044649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424870, 34.200996, 24.215904>,  <43.182957, 34.342457, 24.501329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424870, 34.200996, 24.215904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777237, 0.457439, 0.432032,
		0.173623, -0.815892, 0.551520,
		0.604778, -0.353652, -0.713564,
		43.606304, 34.094902, 24.001835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482674, 33.744053, 24.856525>,  <43.182957, 34.342457, 24.501329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482674, 33.744053, 24.856525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398056, 34.128693, 24.926472>,  <43.347286, 34.359474, 24.968439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398056, 34.128693, 24.926472>,  <43.482674, 33.744053, 24.856525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398056, 34.128693, 24.926472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293333, -0.233135, 0.927148,
		0.932310, 0.144843, 0.331388,
		-0.211549, 0.961597, 0.174867,
		43.334591, 34.417171, 24.978931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821995, 33.990952, 25.418858>,  <43.482674, 33.744053, 24.856525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821995, 33.990952, 25.418858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466206, 34.166275, 25.367126>,  <43.252731, 34.271469, 25.336088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466206, 34.166275, 25.367126>,  <43.821995, 33.990952, 25.418858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466206, 34.166275, 25.367126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223801, -0.171044, 0.959509,
		0.398444, 0.882398, 0.250233,
		-0.889469, 0.438313, -0.129330,
		43.199364, 34.297768, 25.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681503, 34.358234, 26.028851>,  <43.821995, 33.990952, 25.418858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681503, 34.358234, 26.028851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321545, 34.332176, 25.856365>,  <43.105568, 34.316544, 25.752874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321545, 34.332176, 25.856365>,  <43.681503, 34.358234, 26.028851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321545, 34.332176, 25.856365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430360, -0.027332, 0.902244,
		-0.070561, 0.997502, -0.003439,
		-0.899895, -0.065143, -0.431213,
		43.051575, 34.312634, 25.727001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220707, 34.821579, 26.382700>,  <43.681503, 34.358234, 26.028851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220707, 34.821579, 26.382700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962612, 34.567440, 26.212994>,  <42.807755, 34.414955, 26.111170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962612, 34.567440, 26.212994>,  <43.220707, 34.821579, 26.382700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962612, 34.567440, 26.212994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425994, -0.161785, 0.890143,
		-0.634194, 0.755085, -0.166267,
		-0.645234, -0.635352, -0.424265,
		42.769043, 34.376835, 26.085714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485622, 35.029636, 26.599398>,  <43.220707, 34.821579, 26.382700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485622, 35.029636, 26.599398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480408, 34.651314, 26.469612>,  <42.477280, 34.424320, 26.391741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480408, 34.651314, 26.469612>,  <42.485622, 35.029636, 26.599398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480408, 34.651314, 26.469612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618702, -0.247289, 0.745692,
		-0.785518, 0.210465, -0.581950,
		-0.013032, -0.945808, -0.324465,
		42.476498, 34.367573, 26.372272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747410, 34.830795, 26.653736>,  <42.485622, 35.029636, 26.599398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747410, 34.830795, 26.653736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963684, 34.494473, 26.643127>,  <42.093449, 34.292679, 26.636763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963684, 34.494473, 26.643127>,  <41.747410, 34.830795, 26.653736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963684, 34.494473, 26.643127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603062, -0.409396, 0.684624,
		-0.586496, -0.354170, -0.728413,
		0.540683, -0.840808, -0.026523,
		42.125889, 34.242229, 26.635170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218624, 34.256153, 26.699070>,  <41.747410, 34.830795, 26.653736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218624, 34.256153, 26.699070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566544, 34.080795, 26.789631>,  <41.775295, 33.975582, 26.843967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566544, 34.080795, 26.789631>,  <41.218624, 34.256153, 26.699070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566544, 34.080795, 26.789631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439958, -0.481391, 0.758089,
		-0.223354, -0.758993, -0.611590,
		0.869799, -0.438396, 0.226404,
		41.827484, 33.949276, 26.857552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166534, 33.534821, 26.742062>,  <41.218624, 34.256153, 26.699070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166534, 33.534821, 26.742062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453915, 33.643734, 26.998089>,  <41.626343, 33.709084, 27.151705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453915, 33.643734, 26.998089>,  <41.166534, 33.534821, 26.742062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453915, 33.643734, 26.998089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580380, -0.272526, 0.767391,
		0.383384, -0.922817, -0.037769,
		0.718454, 0.272285, 0.640066,
		41.669453, 33.725418, 27.190109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204857, 32.977798, 27.187593>,  <41.166534, 33.534821, 26.742062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204857, 32.977798, 27.187593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418797, 33.262936, 27.369049>,  <41.547161, 33.434017, 27.477922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418797, 33.262936, 27.369049>,  <41.204857, 32.977798, 27.187593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418797, 33.262936, 27.369049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495228, -0.170535, 0.851861,
		0.684607, -0.680270, 0.261811,
		0.534848, 0.712847, 0.453639,
		41.579250, 33.476791, 27.505140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396431, 32.580719, 27.680176>,  <41.204857, 32.977798, 27.187593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396431, 32.580719, 27.680176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453880, 32.953342, 27.813789>,  <41.488350, 33.176914, 27.893957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453880, 32.953342, 27.813789>,  <41.396431, 32.580719, 27.680176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453880, 32.953342, 27.813789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436474, -0.243303, 0.866195,
		0.888180, -0.270199, 0.371657,
		0.143620, 0.931556, 0.334032,
		41.496967, 33.232811, 27.914000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604248, 32.556759, 28.402342>,  <41.396431, 32.580719, 27.680176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604248, 32.556759, 28.402342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455273, 32.924324, 28.350346>,  <41.365887, 33.144863, 28.319147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455273, 32.924324, 28.350346>,  <41.604248, 32.556759, 28.402342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455273, 32.924324, 28.350346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532278, -0.096759, 0.841022,
		0.760244, 0.382419, 0.525151,
		-0.372436, 0.918909, -0.129992,
		41.343540, 33.199997, 28.311348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661472, 32.725613, 29.130157>,  <41.604248, 32.556759, 28.402342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661472, 32.725613, 29.130157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423683, 32.973053, 28.924660>,  <41.281010, 33.121517, 28.801361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423683, 32.973053, 28.924660>,  <41.661472, 32.725613, 29.130157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423683, 32.973053, 28.924660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571463, 0.124470, 0.811133,
		0.565713, 0.775784, 0.279513,
		-0.594473, 0.618600, -0.513746,
		41.245342, 33.158634, 28.770536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438511, 33.280098, 29.621283>,  <41.661472, 32.725613, 29.130157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438511, 33.280098, 29.621283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160404, 33.306980, 29.335041>,  <40.993542, 33.323109, 29.163296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160404, 33.306980, 29.335041>,  <41.438511, 33.280098, 29.621283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160404, 33.306980, 29.335041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705658, 0.125367, 0.697374,
		0.136583, 0.989832, -0.039737,
		-0.695264, 0.067209, -0.715605,
		40.951824, 33.327145, 29.120359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941154, 33.907265, 29.792212>,  <41.438511, 33.280098, 29.621283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941154, 33.907265, 29.792212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758312, 33.654312, 29.542042>,  <40.648609, 33.502541, 29.391939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758312, 33.654312, 29.542042>,  <40.941154, 33.907265, 29.792212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758312, 33.654312, 29.542042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732754, -0.130804, 0.667804,
		-0.504112, 0.763538, -0.403586,
		-0.457103, -0.632377, -0.625425,
		40.621181, 33.464600, 29.354414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221329, 34.001755, 29.959160>,  <40.941154, 33.907265, 29.792212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221329, 34.001755, 29.959160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229763, 33.646477, 29.775566>,  <40.234825, 33.433311, 29.665411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229763, 33.646477, 29.775566>,  <40.221329, 34.001755, 29.959160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229763, 33.646477, 29.775566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893527, -0.222696, 0.389892,
		-0.448514, 0.401891, -0.798323,
		0.021089, -0.888195, -0.458982,
		40.236092, 33.380016, 29.637871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548691, 33.905102, 29.874044>,  <40.221329, 34.001755, 29.959160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548691, 33.905102, 29.874044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713028, 33.541862, 29.841629>,  <39.811630, 33.323921, 29.822180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713028, 33.541862, 29.841629>,  <39.548691, 33.905102, 29.874044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713028, 33.541862, 29.841629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791199, -0.399295, 0.463215,
		-0.453003, -0.126190, -0.882533,
		0.410845, -0.908096, -0.081040,
		39.836281, 33.269432, 29.817318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153088, 33.415092, 29.405233>,  <39.548691, 33.905102, 29.874044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153088, 33.415092, 29.405233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377575, 33.190239, 29.648224>,  <39.512268, 33.055325, 29.794018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377575, 33.190239, 29.648224>,  <39.153088, 33.415092, 29.405233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377575, 33.190239, 29.648224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818476, -0.486007, 0.306421,
		0.122988, -0.669177, -0.732855,
		0.561222, -0.562138, 0.607478,
		39.545940, 33.021599, 29.830467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819546, 32.824234, 29.420824>,  <39.153088, 33.415092, 29.405233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819546, 32.824234, 29.420824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036987, 32.770866, 29.752293>,  <39.167450, 32.738846, 29.951174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036987, 32.770866, 29.752293>,  <38.819546, 32.824234, 29.420824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036987, 32.770866, 29.752293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671254, -0.661824, 0.333778,
		0.503900, -0.737691, -0.449330,
		0.543602, -0.133424, 0.828670,
		39.200069, 32.730839, 30.000895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744026, 32.151718, 29.519625>,  <38.819546, 32.824234, 29.420824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744026, 32.151718, 29.519625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879177, 32.285812, 29.871410>,  <38.960270, 32.366268, 30.082481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879177, 32.285812, 29.871410>,  <38.744026, 32.151718, 29.519625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879177, 32.285812, 29.871410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600762, -0.642483, 0.475710,
		0.724515, -0.689081, -0.015686,
		0.337881, 0.335236, 0.879462,
		38.980541, 32.386383, 30.135248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006718, 31.670107, 29.914669>,  <38.744026, 32.151718, 29.519625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006718, 31.670107, 29.914669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896900, 31.918068, 30.208702>,  <38.831009, 32.066845, 30.385122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896900, 31.918068, 30.208702>,  <39.006718, 31.670107, 29.914669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896900, 31.918068, 30.208702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278499, -0.782954, 0.556256,
		0.920360, -0.052002, 0.387599,
		-0.274546, 0.619902, 0.735082,
		38.814537, 32.104038, 30.429226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988922, 31.253273, 30.451075>,  <39.006718, 31.670107, 29.914669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988922, 31.253273, 30.451075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812782, 31.569725, 30.620880>,  <38.707100, 31.759596, 30.722763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812782, 31.569725, 30.620880>,  <38.988922, 31.253273, 30.451075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812782, 31.569725, 30.620880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534159, -0.610886, 0.584373,
		0.721643, 0.030570, 0.691590,
		-0.440348, 0.791128, 0.424513,
		38.680679, 31.807064, 30.748234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950535, 31.114033, 31.179197>,  <38.988922, 31.253273, 30.451075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950535, 31.114033, 31.179197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694031, 31.414394, 31.116035>,  <38.540131, 31.594610, 31.078138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694031, 31.414394, 31.116035>,  <38.950535, 31.114033, 31.179197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694031, 31.414394, 31.116035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702848, -0.492230, 0.513532,
		0.307886, 0.440291, 0.843416,
		-0.641258, 0.750902, -0.157907,
		38.501652, 31.639666, 31.068663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544514, 31.326855, 31.787695>,  <38.950535, 31.114033, 31.179197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544514, 31.326855, 31.787695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328625, 31.430599, 31.467339>,  <38.199089, 31.492846, 31.275124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328625, 31.430599, 31.467339>,  <38.544514, 31.326855, 31.787695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328625, 31.430599, 31.467339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824399, -0.355493, 0.440445,
		-0.170478, 0.897974, 0.405684,
		-0.539726, 0.259359, -0.800893,
		38.166706, 31.508408, 31.227070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982330, 31.624365, 32.054588>,  <38.544514, 31.326855, 31.787695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982330, 31.624365, 32.054588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901745, 31.449886, 31.703785>,  <37.853394, 31.345200, 31.493303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901745, 31.449886, 31.703785>,  <37.982330, 31.624365, 32.054588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901745, 31.449886, 31.703785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875161, -0.321952, 0.361166,
		-0.439894, 0.840286, -0.316880,
		-0.201463, -0.436196, -0.877010,
		37.841305, 31.319027, 31.440681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301006, 31.695429, 31.901503>,  <37.982330, 31.624365, 32.054588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301006, 31.695429, 31.901503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408871, 31.371986, 31.692337>,  <37.473591, 31.177921, 31.566837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408871, 31.371986, 31.692337>,  <37.301006, 31.695429, 31.901503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408871, 31.371986, 31.692337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817160, -0.479441, 0.319976,
		-0.509441, 0.341020, -0.790047,
		0.269663, -0.808605, -0.522915,
		37.489769, 31.129404, 31.535463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804234, 31.251417, 31.477758>,  <37.301006, 31.695429, 31.901503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804234, 31.251417, 31.477758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076797, 31.013103, 31.647804>,  <37.240337, 30.870115, 31.749832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076797, 31.013103, 31.647804>,  <36.804234, 31.251417, 31.477758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076797, 31.013103, 31.647804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725260, -0.627723, 0.282775,
		0.098383, -0.501005, -0.859834,
		0.681409, -0.595783, 0.425116,
		37.281219, 30.834368, 31.775339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055878, 31.335070, 31.293123>,  <36.804234, 31.251417, 31.477758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055878, 31.335070, 31.293123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775524, 31.448582, 31.031364>,  <35.607311, 31.516689, 30.874310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775524, 31.448582, 31.031364>,  <36.055878, 31.335070, 31.293123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775524, 31.448582, 31.031364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711002, 0.351182, -0.609219,
		0.056927, -0.892266, -0.447906,
		-0.700882, 0.283781, -0.654395,
		35.565258, 31.533716, 30.835047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342102, 31.260675, 30.672174>,  <36.055878, 31.335070, 31.293123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342102, 31.260675, 30.672174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085930, 31.567852, 30.667973>,  <35.932228, 31.752159, 30.665451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085930, 31.567852, 30.667973>,  <36.342102, 31.260675, 30.672174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085930, 31.567852, 30.667973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675565, 0.556781, -0.483329,
		-0.365319, -0.316637, -0.875376,
		-0.640432, 0.767943, -0.010506,
		35.893799, 31.798235, 30.664822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743553, 31.806343, 30.335625>,  <36.342102, 31.260675, 30.672174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743553, 31.806343, 30.335625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417641, 32.009571, 30.447334>,  <36.222092, 32.131508, 30.514360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417641, 32.009571, 30.447334>,  <36.743553, 31.806343, 30.335625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417641, 32.009571, 30.447334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406721, 0.844187, -0.349181,
		-0.413168, -0.170920, -0.894471,
		-0.814783, 0.508070, 0.279274,
		36.173206, 32.161991, 30.531116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052711, 31.451027, 29.980005>,  <36.743553, 31.806343, 30.335625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052711, 31.451027, 29.980005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786221, 31.739353, 29.903515>,  <35.626328, 31.912350, 29.857620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786221, 31.739353, 29.903515>,  <36.052711, 31.451027, 29.980005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786221, 31.739353, 29.903515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640473, 0.421694, -0.641848,
		-0.382015, -0.550091, -0.742607,
		-0.666227, 0.720815, -0.191225,
		35.586353, 31.955597, 29.846148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954945, 31.607641, 29.224459>,  <36.052711, 31.451027, 29.980005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954945, 31.607641, 29.224459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854702, 31.945152, 29.414295>,  <35.794556, 32.147659, 29.528196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854702, 31.945152, 29.414295>,  <35.954945, 31.607641, 29.224459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854702, 31.945152, 29.414295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583231, 0.522875, -0.621646,
		-0.772682, 0.121006, -0.623154,
		-0.250608, 0.843777, 0.474590,
		35.779518, 32.198284, 29.556673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690922, 32.186226, 28.698639>,  <35.954945, 31.607641, 29.224459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690922, 32.186226, 28.698639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864410, 32.305096, 29.038891>,  <35.968506, 32.376419, 29.243042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864410, 32.305096, 29.038891>,  <35.690922, 32.186226, 28.698639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864410, 32.305096, 29.038891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558097, 0.652554, -0.512544,
		-0.707398, 0.697036, 0.117175,
		0.433724, 0.297177, 0.850628,
		35.994526, 32.394249, 29.294079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730541, 32.973103, 28.683632>,  <35.690922, 32.186226, 28.698639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730541, 32.973103, 28.683632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005894, 32.835743, 28.939198>,  <36.171104, 32.753326, 29.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005894, 32.835743, 28.939198>,  <35.730541, 32.973103, 28.683632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005894, 32.835743, 28.939198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630154, 0.719348, -0.292307,
		-0.359222, 0.603832, 0.711581,
		0.688379, -0.343403, 0.638913,
		36.212406, 32.732723, 29.130871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876366, 33.521137, 29.209703>,  <35.730541, 32.973103, 28.683632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876366, 33.521137, 29.209703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172966, 33.256119, 29.167358>,  <36.350925, 33.097107, 29.141951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172966, 33.256119, 29.167358>,  <35.876366, 33.521137, 29.209703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172966, 33.256119, 29.167358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643640, 0.746968, -0.166631,
		0.189477, 0.055420, 0.980320,
		0.741503, -0.662546, -0.105863,
		36.395416, 33.057354, 29.135599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415707, 33.807083, 29.610533>,  <35.876366, 33.521137, 29.209703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415707, 33.807083, 29.610533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573082, 33.554523, 29.343239>,  <36.667507, 33.402988, 29.182861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573082, 33.554523, 29.343239>,  <36.415707, 33.807083, 29.610533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573082, 33.554523, 29.343239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657668, 0.701194, -0.275319,
		0.642399, -0.331155, 0.691130,
		0.393442, -0.631398, -0.668236,
		36.691116, 33.365105, 29.142769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120621, 33.963142, 29.720188>,  <36.415707, 33.807083, 29.610533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120621, 33.963142, 29.720188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090508, 33.744900, 29.386326>,  <37.072441, 33.613956, 29.186008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090508, 33.744900, 29.386326>,  <37.120621, 33.963142, 29.720188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090508, 33.744900, 29.386326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777811, 0.491643, -0.391533,
		0.623974, -0.678677, 0.387367,
		-0.075278, -0.545605, -0.834655,
		37.067924, 33.581219, 29.135929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791206, 33.597584, 29.514778>,  <37.120621, 33.963142, 29.720188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791206, 33.597584, 29.514778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602180, 33.604610, 29.162331>,  <37.488766, 33.608826, 28.950861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602180, 33.604610, 29.162331>,  <37.791206, 33.597584, 29.514778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602180, 33.604610, 29.162331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800380, 0.427039, -0.420748,
		0.368881, -0.904063, -0.215864,
		-0.472565, 0.017567, -0.881121,
		37.460411, 33.609882, 28.897995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178867, 33.284359, 29.016535>,  <37.791206, 33.597584, 29.514778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178867, 33.284359, 29.016535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920238, 33.494320, 28.795116>,  <37.765060, 33.620296, 28.662266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920238, 33.494320, 28.795116>,  <38.178867, 33.284359, 29.016535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920238, 33.494320, 28.795116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759528, 0.375321, -0.531273,
		-0.071109, -0.763944, -0.641353,
		-0.646576, 0.524903, -0.553548,
		37.726265, 33.651791, 28.629051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494534, 33.227745, 28.368191>,  <38.178867, 33.284359, 29.016535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494534, 33.227745, 28.368191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254002, 33.547260, 28.375599>,  <38.109684, 33.738968, 28.380045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254002, 33.547260, 28.375599>,  <38.494534, 33.227745, 28.368191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254002, 33.547260, 28.375599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620110, 0.481184, -0.619616,
		-0.503855, -0.361106, -0.784686,
		-0.601326, 0.798789, 0.018522,
		38.073605, 33.786896, 28.381155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367844, 33.372597, 27.707850>,  <38.494534, 33.227745, 28.368191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367844, 33.372597, 27.707850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299831, 33.720417, 27.893311>,  <38.259026, 33.929108, 28.004587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299831, 33.720417, 27.893311>,  <38.367844, 33.372597, 27.707850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299831, 33.720417, 27.893311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525852, 0.477974, -0.703577,
		-0.833409, 0.124186, -0.538523,
		-0.170026, 0.869551, 0.463651,
		38.248825, 33.981281, 28.032406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198948, 33.825474, 27.105518>,  <38.367844, 33.372597, 27.707850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198948, 33.825474, 27.105518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284176, 34.065052, 27.414288>,  <38.335312, 34.208801, 27.599548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284176, 34.065052, 27.414288>,  <38.198948, 33.825474, 27.105518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284176, 34.065052, 27.414288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509712, 0.605889, -0.610812,
		-0.833544, 0.523602, -0.176196,
		0.213067, 0.598948, 0.771922,
		38.348095, 34.244736, 27.645864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968567, 34.547817, 27.023233>,  <38.198948, 33.825474, 27.105518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968567, 34.547817, 27.023233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280735, 34.549454, 27.273331>,  <38.468037, 34.550438, 27.423389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280735, 34.549454, 27.273331>,  <37.968567, 34.547817, 27.023233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280735, 34.549454, 27.273331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491575, 0.613945, -0.617597,
		-0.386394, 0.789338, 0.477121,
		0.780419, 0.004095, 0.625244,
		38.514862, 34.550682, 27.460903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264133, 35.133343, 26.793522>,  <37.968567, 34.547817, 27.023233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264133, 35.133343, 26.793522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554893, 34.983513, 27.023762>,  <38.729347, 34.893616, 27.161905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554893, 34.983513, 27.023762>,  <38.264133, 35.133343, 26.793522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554893, 34.983513, 27.023762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676759, 0.248274, -0.693078,
		0.116703, 0.893339, 0.433966,
		0.726896, -0.374575, 0.575601,
		38.772961, 34.871140, 27.196442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714211, 35.636894, 26.826447>,  <38.264133, 35.133343, 26.793522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714211, 35.636894, 26.826447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909981, 35.295105, 26.896114>,  <39.027443, 35.090031, 26.937916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909981, 35.295105, 26.896114>,  <38.714211, 35.636894, 26.826447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909981, 35.295105, 26.896114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601463, 0.186142, -0.776913,
		0.631434, 0.484995, 0.605038,
		0.489422, -0.854477, 0.174170,
		39.056808, 35.038761, 26.948366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373966, 35.827789, 26.911673>,  <38.714211, 35.636894, 26.826447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373966, 35.827789, 26.911673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384747, 35.441265, 26.809284>,  <39.391216, 35.209351, 26.747852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384747, 35.441265, 26.809284>,  <39.373966, 35.827789, 26.911673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384747, 35.441265, 26.809284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713810, 0.197869, -0.671806,
		0.699820, -0.164605, 0.695095,
		0.026955, -0.966309, -0.255970,
		39.392834, 35.151371, 26.732492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057995, 35.712189, 26.964014>,  <39.373966, 35.827789, 26.911673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057995, 35.712189, 26.964014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902382, 35.436039, 26.720032>,  <39.809013, 35.270351, 26.573643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902382, 35.436039, 26.720032>,  <40.057995, 35.712189, 26.964014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902382, 35.436039, 26.720032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707629, 0.199993, -0.677690,
		0.589844, -0.695264, 0.410722,
		-0.389032, -0.690370, -0.609953,
		39.785671, 35.228928, 26.537046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548443, 35.606289, 26.490185>,  <40.057995, 35.712189, 26.964014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548443, 35.606289, 26.490185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296364, 35.347820, 26.317993>,  <40.145119, 35.192738, 26.214678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296364, 35.347820, 26.317993>,  <40.548443, 35.606289, 26.490185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296364, 35.347820, 26.317993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626863, -0.096283, -0.773157,
		0.458147, -0.757092, 0.465740,
		-0.630194, -0.646175, -0.430481,
		40.107307, 35.153969, 26.188848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913830, 34.990856, 26.222557>,  <40.548443, 35.606289, 26.490185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913830, 34.990856, 26.222557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588623, 34.986629, 25.989697>,  <40.393501, 34.984093, 25.849981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588623, 34.986629, 25.989697>,  <40.913830, 34.990856, 26.222557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588623, 34.986629, 25.989697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581548, -0.063644, -0.811018,
		-0.028473, -0.997917, 0.057894,
		-0.813013, -0.010576, -0.582149,
		40.344719, 34.983459, 25.815052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987823, 34.505623, 25.655949>,  <40.913830, 34.990856, 26.222557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987823, 34.505623, 25.655949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711735, 34.754284, 25.507816>,  <40.546082, 34.903481, 25.418938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711735, 34.754284, 25.507816>,  <40.987823, 34.505623, 25.655949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711735, 34.754284, 25.507816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338141, -0.175371, -0.924611,
		-0.639734, -0.763407, -0.089163,
		-0.690218, 0.621655, -0.370330,
		40.504669, 34.940781, 25.396717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568104, 34.164417, 25.162985>,  <40.987823, 34.505623, 25.655949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568104, 34.164417, 25.162985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483513, 34.548122, 25.088051>,  <40.432758, 34.778347, 25.043091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483513, 34.548122, 25.088051>,  <40.568104, 34.164417, 25.162985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483513, 34.548122, 25.088051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204003, -0.144128, -0.968303,
		-0.955856, -0.242991, -0.165213,
		-0.211477, 0.959262, -0.187336,
		40.420071, 34.835899, 25.031851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266136, 34.139065, 24.478996>,  <40.568104, 34.164417, 25.162985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266136, 34.139065, 24.478996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382027, 34.517326, 24.538040>,  <40.451561, 34.744286, 24.573467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382027, 34.517326, 24.538040>,  <40.266136, 34.139065, 24.478996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382027, 34.517326, 24.538040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264799, 0.069006, -0.961832,
		-0.919750, 0.317755, -0.230416,
		0.289726, 0.945659, 0.147609,
		40.468945, 34.801025, 24.582323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985054, 34.438347, 23.937405>,  <40.266136, 34.139065, 24.478996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985054, 34.438347, 23.937405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289928, 34.671555, 24.049946>,  <40.472855, 34.811478, 24.117470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289928, 34.671555, 24.049946>,  <39.985054, 34.438347, 23.937405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289928, 34.671555, 24.049946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414920, -0.106367, -0.903619,
		-0.496899, 0.805467, -0.322977,
		0.762189, 0.583017, 0.281351,
		40.518585, 34.846458, 24.134352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106186, 35.136169, 23.589617>,  <39.985054, 34.438347, 23.937405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106186, 35.136169, 23.589617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464035, 35.011024, 23.717224>,  <40.678745, 34.935936, 23.793789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464035, 35.011024, 23.717224>,  <40.106186, 35.136169, 23.589617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464035, 35.011024, 23.717224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327777, -0.025723, -0.944405,
		0.303678, 0.949449, 0.079538,
		0.894618, -0.312865, 0.319019,
		40.732422, 34.917164, 23.812929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639366, 35.671162, 23.426842>,  <40.106186, 35.136169, 23.589617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639366, 35.671162, 23.426842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748642, 35.286915, 23.447155>,  <40.814205, 35.056366, 23.459343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748642, 35.286915, 23.447155>,  <40.639366, 35.671162, 23.426842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748642, 35.286915, 23.447155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293982, 0.033105, -0.955237,
		0.915938, 0.275889, 0.291449,
		0.273188, -0.960619, 0.050784,
		40.830597, 34.998730, 23.462391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653469, 35.223118, 22.803421>,  <40.639366, 35.671162, 23.426842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653469, 35.223118, 22.803421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894535, 35.276993, 23.118038>,  <41.039177, 35.309319, 23.306808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894535, 35.276993, 23.118038>,  <40.653469, 35.223118, 22.803421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894535, 35.276993, 23.118038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791709, -0.224365, -0.568206,
		0.099944, 0.965153, -0.241848,
		0.602668, 0.134685, 0.786544,
		41.075336, 35.317398, 23.354002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140636, 35.798428, 22.764603>,  <40.653469, 35.223118, 22.803421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140636, 35.798428, 22.764603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770618, 35.939693, 22.820564>,  <39.548607, 36.024452, 22.854141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770618, 35.939693, 22.820564>,  <40.140636, 35.798428, 22.764603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770618, 35.939693, 22.820564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323754, -0.540336, -0.776672,
		-0.198694, -0.763750, 0.614171,
		-0.925042, 0.353161, 0.139906,
		39.493107, 36.045643, 22.862535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573009, 35.311901, 22.832893>,  <40.140636, 35.798428, 22.764603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573009, 35.311901, 22.832893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408611, 35.613892, 22.628506>,  <39.309971, 35.795086, 22.505873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408611, 35.613892, 22.628506>,  <39.573009, 35.311901, 22.832893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408611, 35.613892, 22.628506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264412, -0.635124, -0.725744,
		-0.872450, -0.163170, 0.460658,
		-0.410995, 0.754979, -0.510970,
		39.285313, 35.840385, 22.475214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828201, 35.223740, 22.643766>,  <39.573009, 35.311901, 22.832893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828201, 35.223740, 22.643766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989605, 35.453465, 22.358852>,  <39.086449, 35.591297, 22.187904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989605, 35.453465, 22.358852>,  <38.828201, 35.223740, 22.643766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989605, 35.453465, 22.358852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279163, -0.664081, -0.693588,
		-0.871349, 0.478713, -0.107637,
		0.403509, 0.574309, -0.712285,
		39.110657, 35.625759, 22.145166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394650, 35.243858, 22.046560>,  <38.828201, 35.223740, 22.643766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394650, 35.243858, 22.046560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763260, 35.342815, 21.926838>,  <38.984428, 35.402187, 21.855005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763260, 35.342815, 21.926838>,  <38.394650, 35.243858, 22.046560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763260, 35.342815, 21.926838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064089, -0.663317, -0.745589,
		-0.382985, 0.706263, -0.595411,
		0.921529, 0.247390, -0.299305,
		39.039719, 35.417034, 21.837046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664894, 35.033966, 22.479996>,  <38.394650, 35.243858, 22.046560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664894, 35.033966, 22.479996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292587, 34.895542, 22.527191>,  <37.069202, 34.812489, 22.555508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292587, 34.895542, 22.527191>,  <37.664894, 35.033966, 22.479996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292587, 34.895542, 22.527191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362123, 0.827990, -0.428135,
		0.050467, -0.441219, -0.895979,
		-0.930763, -0.346062, 0.117989,
		37.013359, 34.791725, 22.562588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040905, 35.366302, 22.707418>,  <37.664894, 35.033966, 22.479996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040905, 35.366302, 22.707418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811317, 35.546345, 22.981052>,  <36.673565, 35.654369, 23.145233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811317, 35.546345, 22.981052>,  <37.040905, 35.366302, 22.707418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811317, 35.546345, 22.981052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358424, -0.889205, 0.284336,
		0.736271, -0.081992, 0.671701,
		-0.573967, 0.450102, 0.684084,
		36.639126, 35.681374, 23.186277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057594, 34.951801, 23.421364>,  <37.040905, 35.366302, 22.707418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057594, 34.951801, 23.421364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727188, 35.174614, 23.455830>,  <36.528946, 35.308300, 23.476509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727188, 35.174614, 23.455830>,  <37.057594, 34.951801, 23.421364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727188, 35.174614, 23.455830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466762, -0.761676, 0.449424,
		0.315970, 0.331012, 0.889153,
		-0.826012, 0.557028, 0.086163,
		36.479385, 35.341721, 23.481678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788948, 34.725731, 23.996769>,  <37.057594, 34.951801, 23.421364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788948, 34.725731, 23.996769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479755, 34.888206, 23.801830>,  <36.294239, 34.985691, 23.684868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479755, 34.888206, 23.801830>,  <36.788948, 34.725731, 23.996769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479755, 34.888206, 23.801830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591928, -0.738169, 0.323615,
		-0.228293, 0.538622, 0.811029,
		-0.772983, 0.406192, -0.487344,
		36.247860, 35.010063, 23.655626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293385, 34.712070, 24.451128>,  <36.788948, 34.725731, 23.996769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293385, 34.712070, 24.451128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119926, 34.739429, 24.091736>,  <36.015850, 34.755844, 23.876101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119926, 34.739429, 24.091736>,  <36.293385, 34.712070, 24.451128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119926, 34.739429, 24.091736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728009, -0.614177, 0.304614,
		-0.530992, 0.786199, 0.316131,
		-0.433648, 0.068399, -0.898483,
		35.989834, 34.759949, 23.822191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630417, 34.751411, 24.727221>,  <36.293385, 34.712070, 24.451128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630417, 34.751411, 24.727221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591801, 34.659447, 24.339855>,  <35.568630, 34.604267, 24.107437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591801, 34.659447, 24.339855>,  <35.630417, 34.751411, 24.727221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591801, 34.659447, 24.339855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761250, -0.609761, 0.220655,
		-0.641231, 0.758506, -0.116151,
		-0.096544, -0.229911, -0.968411,
		35.562836, 34.590473, 24.049332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999775, 34.856487, 24.633894>,  <35.630417, 34.751411, 24.727221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999775, 34.856487, 24.633894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098179, 34.633389, 24.316807>,  <35.157223, 34.499531, 24.126554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098179, 34.633389, 24.316807>,  <34.999775, 34.856487, 24.633894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098179, 34.633389, 24.316807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731151, -0.643698, 0.225991,
		-0.636315, 0.523997, -0.566154,
		0.246014, -0.557745, -0.792716,
		35.171982, 34.466064, 24.078991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351810, 34.666904, 24.260765>,  <34.999775, 34.856487, 24.633894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351810, 34.666904, 24.260765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613144, 34.388405, 24.141842>,  <34.769943, 34.221306, 24.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613144, 34.388405, 24.141842>,  <34.351810, 34.666904, 24.260765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613144, 34.388405, 24.141842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617212, -0.717264, 0.323390,
		-0.438408, -0.027780, -0.898346,
		0.653335, -0.696247, -0.297308,
		34.809143, 34.179531, 24.052649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898491, 34.109604, 24.012346>,  <34.351810, 34.666904, 24.260765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898491, 34.109604, 24.012346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243633, 33.912552, 24.057598>,  <34.450718, 33.794319, 24.084749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243633, 33.912552, 24.057598>,  <33.898491, 34.109604, 24.012346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243633, 33.912552, 24.057598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479239, -0.726214, 0.492893,
		-0.160658, -0.479511, -0.862704,
		0.862855, -0.492628, 0.113128,
		34.502491, 33.764763, 24.091536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689857, 33.519985, 23.911539>,  <33.898491, 34.109604, 24.012346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689857, 33.519985, 23.911539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034775, 33.482193, 24.110550>,  <34.241726, 33.459518, 24.229956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034775, 33.482193, 24.110550>,  <33.689857, 33.519985, 23.911539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034775, 33.482193, 24.110550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360670, -0.804223, 0.472379,
		0.355492, -0.586770, -0.727549,
		0.862289, -0.094479, 0.497525,
		34.293461, 33.453850, 24.259808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790108, 32.833542, 23.973303>,  <33.689857, 33.519985, 23.911539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790108, 32.833542, 23.973303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049664, 32.925293, 24.263496>,  <34.205399, 32.980343, 24.437613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049664, 32.925293, 24.263496>,  <33.790108, 32.833542, 23.973303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049664, 32.925293, 24.263496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267735, -0.823670, 0.499886,
		0.712223, -0.518609, -0.473058,
		0.648889, 0.229376, 0.725486,
		34.244331, 32.994106, 24.481142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000519, 32.157303, 24.229321>,  <33.790108, 32.833542, 23.973303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000519, 32.157303, 24.229321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110065, 32.418518, 24.511749>,  <34.175793, 32.575249, 24.681206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110065, 32.418518, 24.511749>,  <34.000519, 32.157303, 24.229321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110065, 32.418518, 24.511749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291474, -0.643256, 0.708000,
		0.916536, -0.399700, 0.014177,
		0.273868, 0.653040, 0.706070,
		34.192226, 32.614429, 24.723570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373631, 31.763586, 24.777313>,  <34.000519, 32.157303, 24.229321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373631, 31.763586, 24.777313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280384, 32.118111, 24.937366>,  <34.224438, 32.330826, 25.033398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280384, 32.118111, 24.937366>,  <34.373631, 31.763586, 24.777313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280384, 32.118111, 24.937366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113248, -0.433411, 0.894052,
		0.965832, 0.163104, 0.201409,
		-0.233117, 0.886314, 0.400131,
		34.210449, 32.384007, 25.057405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739323, 31.849974, 25.366249>,  <34.373631, 31.763586, 24.777313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739323, 31.849974, 25.366249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442020, 32.107800, 25.437923>,  <34.263638, 32.262493, 25.480928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442020, 32.107800, 25.437923>,  <34.739323, 31.849974, 25.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442020, 32.107800, 25.437923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202932, -0.472438, 0.857683,
		0.637486, 0.601116, 0.481945,
		-0.743256, 0.644563, 0.179187,
		34.219044, 32.301170, 25.491680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781708, 32.018696, 26.068611>,  <34.739323, 31.849974, 25.366249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781708, 32.018696, 26.068611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401226, 32.083584, 25.963619>,  <34.172935, 32.122517, 25.900623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401226, 32.083584, 25.963619>,  <34.781708, 32.018696, 26.068611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401226, 32.083584, 25.963619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307540, -0.429245, 0.849216,
		0.025090, 0.888501, 0.458188,
		-0.951204, 0.162218, -0.262480,
		34.115864, 32.132248, 25.884874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400257, 32.404808, 26.662329>,  <34.781708, 32.018696, 26.068611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400257, 32.404808, 26.662329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139179, 32.191078, 26.447483>,  <33.982533, 32.062840, 26.318575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139179, 32.191078, 26.447483>,  <34.400257, 32.404808, 26.662329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139179, 32.191078, 26.447483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302609, -0.466079, 0.831383,
		-0.694567, 0.705172, 0.142514,
		-0.652691, -0.534325, -0.537114,
		33.943371, 32.030781, 26.286348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872452, 32.264515, 27.124010>,  <34.400257, 32.404808, 26.662329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872452, 32.264515, 27.124010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823761, 31.989075, 26.838070>,  <33.794544, 31.823811, 26.666506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823761, 31.989075, 26.838070>,  <33.872452, 32.264515, 27.124010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823761, 31.989075, 26.838070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398529, -0.625696, 0.670582,
		-0.909041, 0.366520, -0.198260,
		-0.121732, -0.688599, -0.714852,
		33.787243, 31.782495, 26.623615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296791, 31.929096, 27.380074>,  <33.872452, 32.264515, 27.124010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296791, 31.929096, 27.380074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444908, 31.685215, 27.099747>,  <33.533779, 31.538887, 26.931551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444908, 31.685215, 27.099747>,  <33.296791, 31.929096, 27.380074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444908, 31.685215, 27.099747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334203, -0.791372, 0.511899,
		-0.866712, 0.044661, -0.496805,
		0.370295, -0.609702, -0.700817,
		33.555996, 31.502304, 26.889502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758621, 31.328672, 27.272827>,  <33.296791, 31.929096, 27.380074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758621, 31.328672, 27.272827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096214, 31.187256, 27.111485>,  <33.298771, 31.102406, 27.014679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096214, 31.187256, 27.111485>,  <32.758621, 31.328672, 27.272827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096214, 31.187256, 27.111485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161455, -0.884595, 0.437521,
		-0.511487, -0.304138, -0.803667,
		0.843986, -0.353543, -0.403354,
		33.349411, 31.081194, 26.990479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653629, 30.626181, 27.001850>,  <32.758621, 31.328672, 27.272827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653629, 30.626181, 27.001850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043304, 30.662914, 27.084339>,  <33.277111, 30.684956, 27.133833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043304, 30.662914, 27.084339>,  <32.653629, 30.626181, 27.001850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043304, 30.662914, 27.084339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035504, -0.839815, 0.541711,
		0.222936, -0.535049, -0.814876,
		0.974186, 0.091835, 0.206222,
		33.335560, 30.690464, 27.146206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828442, 29.902344, 27.038086>,  <32.653629, 30.626181, 27.001850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828442, 29.902344, 27.038086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148739, 30.076000, 27.203171>,  <33.340916, 30.180195, 27.302221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148739, 30.076000, 27.203171>,  <32.828442, 29.902344, 27.038086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148739, 30.076000, 27.203171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217688, -0.852793, 0.474717,
		0.558054, -0.290283, -0.777375,
		0.800742, 0.434144, 0.412713,
		33.388962, 30.206244, 27.326984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374729, 29.430956, 26.905001>,  <32.828442, 29.902344, 27.038086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374729, 29.430956, 26.905001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476807, 29.671894, 27.207539>,  <33.538055, 29.816458, 27.389061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476807, 29.671894, 27.207539>,  <33.374729, 29.430956, 26.905001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476807, 29.671894, 27.207539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326336, -0.790000, 0.519042,
		0.910153, 0.114364, -0.398173,
		0.255197, 0.602346, 0.756343,
		33.553364, 29.852598, 27.434441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078815, 29.247263, 27.119169>,  <33.374729, 29.430956, 26.905001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078815, 29.247263, 27.119169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933624, 29.433685, 27.441917>,  <33.846508, 29.545538, 27.635567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933624, 29.433685, 27.441917>,  <34.078815, 29.247263, 27.119169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933624, 29.433685, 27.441917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160766, -0.821619, 0.546897,
		0.917823, 0.328231, 0.223307,
		-0.362981, 0.466054, 0.806870,
		33.824730, 29.573502, 27.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564629, 29.012442, 27.540731>,  <34.078815, 29.247263, 27.119169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564629, 29.012442, 27.540731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244774, 29.134045, 27.747868>,  <34.052860, 29.207006, 27.872149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244774, 29.134045, 27.747868>,  <34.564629, 29.012442, 27.540731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244774, 29.134045, 27.747868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164032, -0.718988, 0.675389,
		0.577642, 0.625010, 0.525064,
		-0.799639, 0.304005, 0.517839,
		34.004883, 29.225246, 27.903219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640774, 29.067480, 28.289803>,  <34.564629, 29.012442, 27.540731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640774, 29.067480, 28.289803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241978, 29.037098, 28.296028>,  <34.002701, 29.018869, 28.299763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241978, 29.037098, 28.296028>,  <34.640774, 29.067480, 28.289803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241978, 29.037098, 28.296028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066276, -0.730737, 0.679435,
		-0.040233, 0.678421, 0.733571,
		-0.996990, -0.075954, 0.015563,
		33.942883, 29.014311, 28.300697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446850, 28.873268, 28.989813>,  <34.640774, 29.067480, 28.289803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446850, 28.873268, 28.989813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130047, 28.754784, 28.776279>,  <33.939964, 28.683693, 28.648159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130047, 28.754784, 28.776279>,  <34.446850, 28.873268, 28.989813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130047, 28.754784, 28.776279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140696, -0.762313, 0.631730,
		-0.594075, 0.575445, 0.562084,
		-0.792010, -0.296212, -0.533834,
		33.892445, 28.665920, 28.616129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940937, 28.829975, 29.473684>,  <34.446850, 28.873268, 28.989813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940937, 28.829975, 29.473684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816032, 28.611916, 29.162479>,  <33.741089, 28.481081, 28.975756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816032, 28.611916, 29.162479>,  <33.940937, 28.829975, 29.473684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816032, 28.611916, 29.162479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291426, -0.724509, 0.624626,
		-0.904191, 0.421782, 0.067370,
		-0.312266, -0.545147, -0.778013,
		33.722351, 28.448372, 28.929075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310204, 28.550682, 29.753963>,  <33.940937, 28.829975, 29.473684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310204, 28.550682, 29.753963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401833, 28.314560, 29.444366>,  <33.456810, 28.172886, 29.258608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401833, 28.314560, 29.444366>,  <33.310204, 28.550682, 29.753963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401833, 28.314560, 29.444366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485405, -0.758492, 0.434824,
		-0.843746, 0.276092, -0.460289,
		0.229074, -0.590307, -0.773991,
		33.470554, 28.137468, 29.212170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691784, 28.149366, 29.578121>,  <33.310204, 28.550682, 29.753963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691784, 28.149366, 29.578121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001080, 27.955830, 29.414169>,  <33.186657, 27.839708, 29.315798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001080, 27.955830, 29.414169>,  <32.691784, 28.149366, 29.578121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001080, 27.955830, 29.414169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291084, -0.845084, 0.448445,
		-0.563359, -0.227445, -0.794289,
		0.773238, -0.483841, -0.409880,
		33.233051, 27.810677, 29.291204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308620, 27.591791, 29.270493>,  <32.691784, 28.149366, 29.578121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308620, 27.591791, 29.270493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699650, 27.536716, 29.334236>,  <32.934265, 27.503672, 29.372482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699650, 27.536716, 29.334236>,  <32.308620, 27.591791, 29.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699650, 27.536716, 29.334236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204201, -0.804850, 0.557242,
		0.051536, -0.577286, -0.814914,
		0.977572, -0.137688, 0.159361,
		32.992920, 27.495411, 29.382044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524399, 26.951538, 28.965145>,  <32.308620, 27.591791, 29.270493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524399, 26.951538, 28.965145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772453, 27.023636, 29.270546>,  <32.921288, 27.066895, 29.453787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772453, 27.023636, 29.270546>,  <32.524399, 26.951538, 28.965145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772453, 27.023636, 29.270546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310142, -0.837632, 0.449650,
		0.720582, -0.515641, -0.463548,
		0.620141, 0.180244, 0.763504,
		32.958496, 27.077709, 29.499598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870934, 26.293976, 29.118652>,  <32.524399, 26.951538, 28.965145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870934, 26.293976, 29.118652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923576, 26.505146, 29.454266>,  <32.955162, 26.631847, 29.655634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923576, 26.505146, 29.454266>,  <32.870934, 26.293976, 29.118652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923576, 26.505146, 29.454266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044862, -0.842355, 0.537052,
		0.990286, -0.108320, -0.087176,
		0.131607, 0.527924, 0.839032,
		32.963058, 26.663523, 29.705975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254337, 25.867214, 29.515789>,  <32.870934, 26.293976, 29.118652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254337, 25.867214, 29.515789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122738, 26.136463, 29.780716>,  <33.043777, 26.298012, 29.939672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122738, 26.136463, 29.780716>,  <33.254337, 25.867214, 29.515789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122738, 26.136463, 29.780716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141146, -0.728538, 0.670306,
		0.933722, 0.127048, 0.334698,
		-0.329001, 0.673121, 0.662319,
		33.024036, 26.338400, 29.979412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574558, 25.674784, 30.109398>,  <33.254337, 25.867214, 29.515789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574558, 25.674784, 30.109398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270992, 25.896317, 30.246403>,  <33.088852, 26.029236, 30.328606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270992, 25.896317, 30.246403>,  <33.574558, 25.674784, 30.109398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270992, 25.896317, 30.246403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205845, -0.703042, 0.680705,
		0.617797, 0.446094, 0.647554,
		-0.758916, 0.553834, 0.342511,
		33.043316, 26.062468, 30.349155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692154, 25.705889, 30.824497>,  <33.574558, 25.674784, 30.109398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692154, 25.705889, 30.824497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306480, 25.775723, 30.744637>,  <33.075077, 25.817623, 30.696720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306480, 25.775723, 30.744637>,  <33.692154, 25.705889, 30.824497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306480, 25.775723, 30.744637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263035, -0.533090, 0.804132,
		0.033957, 0.827850, 0.559921,
		-0.964189, 0.174585, -0.199652,
		33.017223, 25.828098, 30.684742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513233, 25.839613, 31.457088>,  <33.692154, 25.705889, 30.824497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513233, 25.839613, 31.457088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173122, 25.744465, 31.269283>,  <32.969055, 25.687376, 31.156601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173122, 25.744465, 31.269283>,  <33.513233, 25.839613, 31.457088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173122, 25.744465, 31.269283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318878, -0.476880, 0.819086,
		-0.418738, 0.846170, 0.329629,
		-0.850280, -0.237871, -0.469512,
		32.918037, 25.673103, 31.128429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999802, 25.917933, 31.897680>,  <33.513233, 25.839613, 31.457088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999802, 25.917933, 31.897680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834164, 25.666946, 31.633919>,  <32.734779, 25.516356, 31.475662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834164, 25.666946, 31.633919>,  <32.999802, 25.917933, 31.897680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834164, 25.666946, 31.633919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383501, -0.536727, 0.751566,
		-0.825500, 0.564102, -0.018377,
		-0.414097, -0.627466, -0.659402,
		32.709934, 25.478706, 31.436098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319077, 25.762899, 32.211903>,  <32.999802, 25.917933, 31.897680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319077, 25.762899, 32.211903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381367, 25.471191, 31.945396>,  <32.418739, 25.296167, 31.785492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381367, 25.471191, 31.945396>,  <32.319077, 25.762899, 32.211903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381367, 25.471191, 31.945396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443028, -0.654418, 0.612751,
		-0.882879, 0.199755, -0.424997,
		0.155726, -0.729271, -0.666269,
		32.428085, 25.252411, 31.745516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719078, 25.395285, 32.234863>,  <32.319077, 25.762899, 32.211903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719078, 25.395285, 32.234863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963625, 25.128498, 32.064507>,  <32.110352, 24.968426, 31.962294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963625, 25.128498, 32.064507>,  <31.719078, 25.395285, 32.234863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963625, 25.128498, 32.064507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389913, -0.722209, 0.571298,
		-0.688619, -0.183214, -0.701596,
		0.611369, -0.666968, -0.425889,
		32.147034, 24.928408, 31.936739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263964, 24.857979, 32.070564>,  <31.719078, 25.395285, 32.234863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263964, 24.857979, 32.070564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635078, 24.713978, 32.109787>,  <31.857746, 24.627577, 32.133320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635078, 24.713978, 32.109787>,  <31.263964, 24.857979, 32.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635078, 24.713978, 32.109787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332133, -0.677105, 0.656671,
		-0.170008, -0.641817, -0.747776,
		0.927785, -0.360000, 0.098055,
		31.913414, 24.605978, 32.139202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170536, 24.136177, 32.223667>,  <31.263964, 24.857979, 32.070564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170536, 24.136177, 32.223667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540686, 24.216606, 32.352196>,  <31.762775, 24.264864, 32.429314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540686, 24.216606, 32.352196>,  <31.170536, 24.136177, 32.223667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540686, 24.216606, 32.352196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106928, -0.674806, 0.730208,
		0.363656, -0.710075, -0.602949,
		0.925376, 0.201072, 0.321324,
		31.818298, 24.276928, 32.448593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332170, 23.560507, 32.478729>,  <31.170536, 24.136177, 32.223667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332170, 23.560507, 32.478729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587872, 23.817017, 32.648495>,  <31.741291, 23.970922, 32.750355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587872, 23.817017, 32.648495>,  <31.332170, 23.560507, 32.478729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587872, 23.817017, 32.648495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016233, -0.540524, 0.841172,
		0.768826, -0.544610, -0.335121,
		0.639252, 0.641275, 0.424410,
		31.779648, 24.009399, 32.775818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039165, 23.160061, 32.719643>,  <31.332170, 23.560507, 32.478729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039165, 23.160061, 32.719643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984346, 23.506302, 32.912285>,  <31.951454, 23.714046, 33.027870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984346, 23.506302, 32.912285>,  <32.039165, 23.160061, 32.719643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984346, 23.506302, 32.912285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150041, -0.462447, 0.873859,
		0.979135, 0.192023, -0.066498,
		-0.137049, 0.865604, 0.481610,
		31.943232, 23.765984, 33.056767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099991, 22.958591, 33.335678>,  <32.039165, 23.160061, 32.719643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099991, 22.958591, 33.335678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015526, 23.342171, 33.411392>,  <31.964848, 23.572319, 33.456821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015526, 23.342171, 33.411392>,  <32.099991, 22.958591, 33.335678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015526, 23.342171, 33.411392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189489, -0.149821, 0.970385,
		0.958908, 0.240776, -0.150073,
		-0.211161, 0.958948, 0.189289,
		31.952177, 23.629854, 33.468178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617706, 23.169222, 33.777428>,  <32.099991, 22.958591, 33.335678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617706, 23.169222, 33.777428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278210, 23.375565, 33.823963>,  <32.074512, 23.499371, 33.851887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278210, 23.375565, 33.823963>,  <32.617706, 23.169222, 33.777428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278210, 23.375565, 33.823963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005229, -0.228182, 0.973604,
		0.528789, 0.825726, 0.196364,
		-0.848737, 0.515858, 0.116343,
		32.023590, 23.530321, 33.858868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602760, 23.739481, 34.427944>,  <32.617706, 23.169222, 33.777428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602760, 23.739481, 34.427944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262222, 23.539028, 34.365875>,  <32.057899, 23.418756, 34.328632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262222, 23.539028, 34.365875>,  <32.602760, 23.739481, 34.427944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262222, 23.539028, 34.365875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078190, -0.413693, 0.907053,
		-0.518748, 0.760081, 0.391378,
		-0.851344, -0.501133, -0.155172,
		32.006821, 23.388689, 34.319324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132889, 23.746977, 35.011826>,  <32.602760, 23.739481, 34.427944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132889, 23.746977, 35.011826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084518, 23.413940, 34.795616>,  <32.055496, 23.214119, 34.665890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084518, 23.413940, 34.795616>,  <32.132889, 23.746977, 35.011826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084518, 23.413940, 34.795616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005769, -0.543925, 0.839114,
		-0.992644, 0.104593, 0.060974,
		-0.120931, -0.832590, -0.540527,
		32.048241, 23.164164, 34.633457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537573, 23.264835, 35.258804>,  <32.132889, 23.746977, 35.011826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537573, 23.264835, 35.258804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859465, 23.103664, 35.084419>,  <32.052601, 23.006962, 34.979790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859465, 23.103664, 35.084419>,  <31.537573, 23.264835, 35.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859465, 23.103664, 35.084419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253488, -0.430840, 0.866095,
		-0.536803, -0.807482, -0.244572,
		0.804728, -0.402926, -0.435963,
		32.100883, 22.982786, 34.953629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826117, 23.568619, 35.490982>,  <31.537573, 23.264835, 35.258804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826117, 23.568619, 35.490982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619902, 23.786621, 35.755466>,  <30.496174, 23.917421, 35.914158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619902, 23.786621, 35.755466>,  <30.826117, 23.568619, 35.490982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619902, 23.786621, 35.755466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302907, 0.837746, -0.454344,
		-0.801543, -0.033947, -0.596973,
		-0.515536, 0.545004, 0.661206,
		30.465240, 23.950123, 35.953827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544090, 24.120398, 35.050369>,  <30.826117, 23.568619, 35.490982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544090, 24.120398, 35.050369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549364, 24.226059, 35.436127>,  <30.552528, 24.289455, 35.667580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549364, 24.226059, 35.436127>,  <30.544090, 24.120398, 35.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549364, 24.226059, 35.436127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465015, 0.852212, -0.239782,
		-0.885205, 0.451617, -0.111599,
		0.013184, 0.264151, 0.964391,
		30.553320, 24.305304, 35.725445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230654, 24.884380, 35.162167>,  <30.544090, 24.120398, 35.050369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230654, 24.884380, 35.162167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515873, 24.778103, 35.421696>,  <30.687004, 24.714336, 35.577412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515873, 24.778103, 35.421696>,  <30.230654, 24.884380, 35.162167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515873, 24.778103, 35.421696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551000, 0.784605, -0.284243,
		-0.433546, 0.560179, 0.705859,
		0.713048, -0.265696, 0.648821,
		30.729788, 24.698395, 35.616341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623350, 25.499796, 35.279007>,  <30.230654, 24.884380, 35.162167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623350, 25.499796, 35.279007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856575, 25.218369, 35.441502>,  <30.996510, 25.049511, 35.538998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856575, 25.218369, 35.441502>,  <30.623350, 25.499796, 35.279007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856575, 25.218369, 35.441502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812135, 0.491298, -0.314742,
		0.021858, 0.513435, 0.857850,
		0.583060, -0.703570, 0.406239,
		31.031492, 25.007298, 35.563374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944670, 25.572680, 35.940365>,  <30.623350, 25.499796, 35.279007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944670, 25.572680, 35.940365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196505, 25.313564, 35.768787>,  <31.347607, 25.158096, 35.665840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196505, 25.313564, 35.768787>,  <30.944670, 25.572680, 35.940365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196505, 25.313564, 35.768787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741813, 0.665320, 0.084046,
		0.230939, -0.371108, 0.899414,
		0.629588, -0.647787, -0.428941,
		31.385382, 25.119228, 35.640106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619713, 25.582901, 35.962780>,  <30.944670, 25.572680, 35.940365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619713, 25.582901, 35.962780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742727, 25.363789, 35.651562>,  <31.816536, 25.232321, 35.464832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742727, 25.363789, 35.651562>,  <31.619713, 25.582901, 35.962780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742727, 25.363789, 35.651562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343338, 0.826472, -0.446166,
		0.887435, -0.129920, 0.442244,
		0.307536, -0.547782, -0.778046,
		31.834988, 25.199453, 35.418148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353947, 25.775984, 35.819092>,  <31.619713, 25.582901, 35.962780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353947, 25.775984, 35.819092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171539, 25.617958, 35.500099>,  <32.062096, 25.523142, 35.308704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171539, 25.617958, 35.500099>,  <32.353947, 25.775984, 35.819092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171539, 25.617958, 35.500099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310197, 0.769323, -0.558497,
		0.834160, -0.502061, -0.228279,
		-0.456020, -0.395065, -0.797477,
		32.034733, 25.499439, 35.260857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864510, 25.804913, 35.269745>,  <32.353947, 25.775984, 35.819092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864510, 25.804913, 35.269745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500332, 25.774662, 35.107079>,  <32.281826, 25.756512, 35.009480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500332, 25.774662, 35.107079>,  <32.864510, 25.804913, 35.269745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500332, 25.774662, 35.107079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185874, 0.803492, -0.565554,
		0.369525, -0.590493, -0.717474,
		-0.910440, -0.075626, -0.406668,
		32.227200, 25.751974, 34.985077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916523, 25.976273, 34.610920>,  <32.864510, 25.804913, 35.269745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916523, 25.976273, 34.610920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520611, 26.019772, 34.647808>,  <32.283062, 26.045870, 34.669941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520611, 26.019772, 34.647808>,  <32.916523, 25.976273, 34.610920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520611, 26.019772, 34.647808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032540, 0.801976, -0.596469,
		-0.138820, -0.587375, -0.797321,
		-0.989783, 0.108746, 0.092217,
		32.223675, 26.052395, 34.675472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759605, 26.181108, 34.010342>,  <32.916523, 25.976273, 34.610920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759605, 26.181108, 34.010342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423748, 26.272102, 34.207619>,  <32.222233, 26.326698, 34.325985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423748, 26.272102, 34.207619>,  <32.759605, 26.181108, 34.010342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423748, 26.272102, 34.207619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104634, 0.823299, -0.557880,
		-0.532958, -0.520027, -0.667478,
		-0.839647, 0.227486, 0.493196,
		32.171852, 26.340347, 34.355579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166607, 26.307299, 33.496094>,  <32.759605, 26.181108, 34.010342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166607, 26.307299, 33.496094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009644, 26.511787, 33.801949>,  <31.915466, 26.634481, 33.985462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009644, 26.511787, 33.801949>,  <32.166607, 26.307299, 33.496094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009644, 26.511787, 33.801949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165012, 0.778700, -0.605308,
		-0.904869, -0.363701, -0.221209,
		-0.392407, 0.511222, 0.764637,
		31.891922, 26.665154, 34.031338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649324, 26.607677, 33.169922>,  <32.166607, 26.307299, 33.496094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649324, 26.607677, 33.169922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736258, 26.803452, 33.507732>,  <31.788418, 26.920916, 33.710419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736258, 26.803452, 33.507732>,  <31.649324, 26.607677, 33.169922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736258, 26.803452, 33.507732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084929, 0.871405, -0.483157,
		-0.972396, 0.033281, 0.230951,
		0.217331, 0.489434, 0.844524,
		31.801456, 26.950281, 33.761089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093575, 27.165405, 33.398441>,  <31.649324, 26.607677, 33.169922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093575, 27.165405, 33.398441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436098, 27.278606, 33.571251>,  <31.641613, 27.346527, 33.674938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436098, 27.278606, 33.571251>,  <31.093575, 27.165405, 33.398441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436098, 27.278606, 33.571251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111610, 0.918139, -0.380215,
		-0.504262, 0.277363, 0.817796,
		0.856308, 0.283002, 0.432026,
		31.692991, 27.363506, 33.700859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976076, 27.920105, 33.496845>,  <31.093575, 27.165405, 33.398441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976076, 27.920105, 33.496845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364620, 27.877346, 33.581730>,  <31.597746, 27.851690, 33.632660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364620, 27.877346, 33.581730>,  <30.976076, 27.920105, 33.496845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364620, 27.877346, 33.581730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203623, 0.834778, -0.511549,
		-0.122465, 0.540109, 0.832637,
		0.971360, -0.106897, 0.212210,
		31.656029, 27.845278, 33.645393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294630, 28.605560, 33.585911>,  <30.976076, 27.920105, 33.496845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294630, 28.605560, 33.585911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631001, 28.396996, 33.527985>,  <31.832823, 28.271856, 33.493229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631001, 28.396996, 33.527985>,  <31.294630, 28.605560, 33.585911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631001, 28.396996, 33.527985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414997, 0.793117, -0.445806,
		0.347302, 0.314794, 0.883338,
		0.840927, -0.521412, -0.144813,
		31.883278, 28.240572, 33.484539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888584, 29.071499, 33.733349>,  <31.294630, 28.605560, 33.585911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888584, 29.071499, 33.733349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012527, 28.792149, 33.475277>,  <32.086895, 28.624538, 33.320435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012527, 28.792149, 33.475277>,  <31.888584, 29.071499, 33.733349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012527, 28.792149, 33.475277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439116, 0.706990, -0.554384,
		0.843305, -0.111529, 0.525736,
		0.309861, -0.698374, -0.645182,
		32.105484, 28.582636, 33.281723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588398, 29.217821, 33.526505>,  <31.888584, 29.071499, 33.733349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588398, 29.217821, 33.526505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486515, 28.971920, 33.227921>,  <32.425385, 28.824379, 33.048771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486515, 28.971920, 33.227921>,  <32.588398, 29.217821, 33.526505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486515, 28.971920, 33.227921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429661, 0.619593, -0.656883,
		0.866322, -0.488038, 0.106320,
		-0.254709, -0.614754, -0.746459,
		32.410103, 28.787495, 33.003983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212288, 29.015692, 33.070026>,  <32.588398, 29.217821, 33.526505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212288, 29.015692, 33.070026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879684, 28.972553, 32.852047>,  <32.680122, 28.946671, 32.721260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879684, 28.972553, 32.852047>,  <33.212288, 29.015692, 33.070026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879684, 28.972553, 32.852047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458296, 0.421219, -0.782649,
		0.313949, -0.900524, -0.300820,
		-0.831505, -0.107847, -0.544948,
		32.630234, 28.940199, 32.688564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492165, 29.137081, 32.442719>,  <33.212288, 29.015692, 33.070026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492165, 29.137081, 32.442719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103825, 29.119892, 32.348400>,  <32.870819, 29.109579, 32.291809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103825, 29.119892, 32.348400>,  <33.492165, 29.137081, 32.442719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103825, 29.119892, 32.348400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175798, 0.541022, -0.822429,
		0.162911, -0.839910, -0.517698,
		-0.970853, -0.042973, -0.235793,
		32.812569, 29.107000, 32.277664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403740, 28.987436, 31.725941>,  <33.492165, 29.137081, 32.442719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403740, 28.987436, 31.725941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075066, 29.182148, 31.844517>,  <32.877861, 29.298975, 31.915663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075066, 29.182148, 31.844517>,  <33.403740, 28.987436, 31.725941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075066, 29.182148, 31.844517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143898, 0.680463, -0.718515,
		-0.551473, -0.547738, -0.629175,
		-0.821688, 0.486778, 0.296439,
		32.828560, 29.328182, 31.933449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111977, 29.224068, 31.081860>,  <33.403740, 28.987436, 31.725941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111977, 29.224068, 31.081860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877869, 29.440361, 31.323544>,  <32.737404, 29.570137, 31.468554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877869, 29.440361, 31.323544>,  <33.111977, 29.224068, 31.081860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877869, 29.440361, 31.323544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001182, 0.745735, -0.666242,
		-0.810841, -0.389214, -0.437092,
		-0.585266, 0.540732, 0.604212,
		32.702290, 29.602581, 31.504807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449234, 29.402773, 30.645258>,  <33.111977, 29.224068, 31.081860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449234, 29.402773, 30.645258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543343, 29.664310, 30.932907>,  <32.599808, 29.821234, 31.105497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543343, 29.664310, 30.932907>,  <32.449234, 29.402773, 30.645258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543343, 29.664310, 30.932907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134397, 0.710898, -0.690334,
		-0.962594, 0.259061, 0.079377,
		0.235267, 0.653843, 0.719123,
		32.613922, 29.860464, 31.148643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966425, 29.978054, 30.535166>,  <32.449234, 29.402773, 30.645258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966425, 29.978054, 30.535166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245495, 30.127434, 30.779716>,  <32.412937, 30.217062, 30.926447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245495, 30.127434, 30.779716>,  <31.966425, 29.978054, 30.535166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245495, 30.127434, 30.779716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074783, 0.810760, -0.580582,
		-0.712499, 0.450779, 0.537721,
		0.697677, 0.373451, 0.611376,
		32.454800, 30.239470, 30.963129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825657, 30.747568, 30.636391>,  <31.966425, 29.978054, 30.535166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825657, 30.747568, 30.636391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213875, 30.685886, 30.710430>,  <32.446804, 30.648876, 30.754854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213875, 30.685886, 30.710430>,  <31.825657, 30.747568, 30.636391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213875, 30.685886, 30.710430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224139, 0.859667, -0.459058,
		-0.088334, 0.487024, 0.868910,
		0.970546, -0.154206, 0.185099,
		32.505039, 30.639626, 30.765961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019329, 31.423740, 30.806980>,  <31.825657, 30.747568, 30.636391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019329, 31.423740, 30.806980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371414, 31.246738, 30.738369>,  <32.582664, 31.140537, 30.697203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371414, 31.246738, 30.738369>,  <32.019329, 31.423740, 30.806980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371414, 31.246738, 30.738369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343678, 0.843575, -0.412633,
		0.327289, 0.304253, 0.894602,
		0.880209, -0.442505, -0.171528,
		32.635475, 31.113987, 30.686911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533920, 31.768307, 31.165318>,  <32.019329, 31.423740, 30.806980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533920, 31.768307, 31.165318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728577, 31.577686, 30.872448>,  <32.845371, 31.463314, 30.696726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728577, 31.577686, 30.872448>,  <32.533920, 31.768307, 31.165318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728577, 31.577686, 30.872448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353465, 0.873851, -0.333837,
		0.798903, -0.096340, 0.593694,
		0.486638, -0.476553, -0.732175,
		32.874569, 31.434721, 30.652796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167480, 32.116867, 31.010426>,  <32.533920, 31.768307, 31.165318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167480, 32.116867, 31.010426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063580, 31.909580, 30.684486>,  <33.001240, 31.785208, 30.488922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063580, 31.909580, 30.684486>,  <33.167480, 32.116867, 31.010426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063580, 31.909580, 30.684486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375179, 0.723367, -0.579639,
		0.889815, -0.456275, 0.006530,
		-0.259751, -0.518221, -0.814847,
		32.985653, 31.754114, 30.440033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666744, 32.260273, 30.491259>,  <33.167480, 32.116867, 31.010426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666744, 32.260273, 30.491259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378006, 32.080570, 30.280693>,  <33.204765, 31.972748, 30.154354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378006, 32.080570, 30.280693>,  <33.666744, 32.260273, 30.491259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378006, 32.080570, 30.280693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185188, 0.607518, -0.772416,
		0.666825, -0.655045, -0.355332,
		-0.721838, -0.449263, -0.526415,
		33.161453, 31.945793, 30.122768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995426, 32.112335, 29.696758>,  <33.666744, 32.260273, 30.491259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995426, 32.112335, 29.696758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596130, 32.104427, 29.674358>,  <33.356552, 32.099682, 29.660919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596130, 32.104427, 29.674358>,  <33.995426, 32.112335, 29.696758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596130, 32.104427, 29.674358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028252, 0.671353, -0.740599,
		0.052236, -0.740874, -0.669609,
		-0.998235, -0.019769, -0.056000,
		33.296661, 32.098495, 29.657558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926605, 32.127880, 29.000654>,  <33.995426, 32.112335, 29.696758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926605, 32.127880, 29.000654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564571, 32.211132, 29.148983>,  <33.347351, 32.261086, 29.237980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564571, 32.211132, 29.148983>,  <33.926605, 32.127880, 29.000654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564571, 32.211132, 29.148983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117314, 0.715977, -0.688196,
		-0.408738, -0.666375, -0.623600,
		-0.905080, 0.208135, 0.370822,
		33.293049, 32.273571, 29.260229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399387, 32.038822, 28.568827>,  <33.926605, 32.127880, 29.000654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399387, 32.038822, 28.568827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285202, 32.324055, 28.824959>,  <33.216690, 32.495193, 28.978638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285202, 32.324055, 28.824959>,  <33.399387, 32.038822, 28.568827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285202, 32.324055, 28.824959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040134, 0.676442, -0.735402,
		-0.957550, -0.184229, -0.221717,
		-0.285461, 0.713082, 0.640332,
		33.199562, 32.537979, 29.017059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103352, 32.479553, 28.092810>,  <33.399387, 32.038822, 28.568827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103352, 32.479553, 28.092810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114323, 32.700394, 28.426140>,  <33.120907, 32.832897, 28.626139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114323, 32.700394, 28.426140>,  <33.103352, 32.479553, 28.092810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114323, 32.700394, 28.426140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035640, 0.832569, -0.552773,
		-0.998988, 0.044863, 0.003161,
		0.027430, 0.552101, 0.833326,
		33.122551, 32.866024, 28.676138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542206, 32.974819, 28.035315>,  <33.103352, 32.479553, 28.092810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542206, 32.974819, 28.035315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788570, 33.130108, 28.309521>,  <32.936390, 33.223282, 28.474045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788570, 33.130108, 28.309521>,  <32.542206, 32.974819, 28.035315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788570, 33.130108, 28.309521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012465, 0.874843, -0.484246,
		-0.787713, 0.289709, 0.543669,
		0.615916, 0.388224, 0.685514,
		32.973347, 33.246574, 28.515175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269005, 33.568127, 28.089827>,  <32.542206, 32.974819, 28.035315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269005, 33.568127, 28.089827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639172, 33.618572, 28.232765>,  <32.861271, 33.648842, 28.318527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639172, 33.618572, 28.232765>,  <32.269005, 33.568127, 28.089827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639172, 33.618572, 28.232765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089304, 0.843852, -0.529092,
		-0.368274, 0.521544, 0.769653,
		0.925418, 0.126118, 0.357345,
		32.916798, 33.656406, 28.339968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383789, 34.298370, 28.341459>,  <32.269005, 33.568127, 28.089827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383789, 34.298370, 28.341459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740086, 34.144398, 28.244789>,  <32.953865, 34.052013, 28.186787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740086, 34.144398, 28.244789>,  <32.383789, 34.298370, 28.341459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740086, 34.144398, 28.244789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204592, 0.814390, -0.543057,
		0.405857, 0.434280, 0.804165,
		0.890743, -0.384929, -0.241676,
		33.007309, 34.028919, 28.172287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744560, 34.845341, 28.095085>,  <32.383789, 34.298370, 28.341459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744560, 34.845341, 28.095085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028500, 34.573315, 28.021729>,  <33.198864, 34.410099, 27.977715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028500, 34.573315, 28.021729>,  <32.744560, 34.845341, 28.095085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028500, 34.573315, 28.021729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449801, 0.638038, -0.624969,
		0.542030, 0.361142, 0.758802,
		0.709847, -0.680062, -0.183393,
		33.241455, 34.369297, 27.966711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342026, 35.145844, 28.255053>,  <32.744560, 34.845341, 28.095085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342026, 35.145844, 28.255053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404831, 34.843136, 28.001236>,  <33.442513, 34.661510, 27.848946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404831, 34.843136, 28.001236>,  <33.342026, 35.145844, 28.255053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404831, 34.843136, 28.001236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439576, 0.628908, -0.641286,
		0.884376, -0.178242, 0.431403,
		0.157009, -0.756772, -0.634543,
		33.451935, 34.616104, 27.810873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936214, 35.344177, 27.896858>,  <33.342026, 35.145844, 28.255053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936214, 35.344177, 27.896858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807995, 35.057983, 27.648560>,  <33.731064, 34.886265, 27.499580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807995, 35.057983, 27.648560>,  <33.936214, 35.344177, 27.896858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807995, 35.057983, 27.648560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309475, 0.540260, -0.782525,
		0.895251, -0.442943, 0.048246,
		-0.320548, -0.715487, -0.620747,
		33.711830, 34.843338, 27.462336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491222, 35.177715, 27.309607>,  <33.936214, 35.344177, 27.896858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491222, 35.177715, 27.309607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124142, 35.078663, 27.185349>,  <33.903893, 35.019234, 27.110794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124142, 35.078663, 27.185349>,  <34.491222, 35.177715, 27.309607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124142, 35.078663, 27.185349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119098, 0.574495, -0.809797,
		0.378991, -0.780151, -0.497725,
		-0.917705, -0.247628, -0.310642,
		33.848831, 35.004375, 27.092155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538750, 34.926708, 26.646551>,  <34.491222, 35.177715, 27.309607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538750, 34.926708, 26.646551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160576, 35.051682, 26.683521>,  <33.933674, 35.126667, 26.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160576, 35.051682, 26.683521>,  <34.538750, 34.926708, 26.646551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160576, 35.051682, 26.683521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135572, 0.635177, -0.760375,
		-0.296276, -0.706353, -0.642874,
		-0.945432, 0.312436, 0.092426,
		33.876945, 35.145412, 26.711248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153099, 34.775772, 26.002405>,  <34.538750, 34.926708, 26.646551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153099, 34.775772, 26.002405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945187, 35.046539, 26.210873>,  <33.820438, 35.209000, 26.335953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945187, 35.046539, 26.210873>,  <34.153099, 34.775772, 26.002405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945187, 35.046539, 26.210873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025661, 0.597406, -0.801528,
		-0.853916, -0.429990, -0.293148,
		-0.519778, 0.676915, 0.521169,
		33.789253, 35.249615, 26.367224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631138, 34.922722, 25.543041>,  <34.153099, 34.775772, 26.002405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631138, 34.922722, 25.543041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610126, 35.237610, 25.788811>,  <33.597519, 35.426544, 25.936274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610126, 35.237610, 25.788811>,  <33.631138, 34.922722, 25.543041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610126, 35.237610, 25.788811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339355, 0.564587, -0.752383,
		-0.939191, -0.248033, 0.237489,
		-0.052532, 0.787224, 0.614426,
		33.594368, 35.473778, 25.973139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045376, 35.262894, 25.392992>,  <33.631138, 34.922722, 25.543041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045376, 35.262894, 25.392992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233433, 35.569553, 25.567902>,  <33.346268, 35.753551, 25.672848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233433, 35.569553, 25.567902>,  <33.045376, 35.262894, 25.392992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233433, 35.569553, 25.567902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403069, 0.627267, -0.666387,
		-0.785174, 0.137048, 0.603921,
		0.470147, 0.766651, 0.437274,
		33.374477, 35.799549, 25.699083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597729, 35.820133, 25.381222>,  <33.045376, 35.262894, 25.392992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597729, 35.820133, 25.381222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934658, 36.026093, 25.444935>,  <33.136818, 36.149666, 25.483162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934658, 36.026093, 25.444935>,  <32.597729, 35.820133, 25.381222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934658, 36.026093, 25.444935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312155, 0.706980, -0.634617,
		-0.439369, 0.484834, 0.756234,
		0.842326, 0.514894, 0.159282,
		33.187355, 36.180561, 25.492720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394169, 36.497139, 25.582153>,  <32.597729, 35.820133, 25.381222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394169, 36.497139, 25.582153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772015, 36.527267, 25.454384>,  <32.998722, 36.545345, 25.377722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772015, 36.527267, 25.454384>,  <32.394169, 36.497139, 25.582153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772015, 36.527267, 25.454384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248419, 0.800134, -0.545961,
		0.214459, 0.595074, 0.774528,
		0.944614, 0.075322, -0.319424,
		33.055397, 36.549866, 25.358557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258999, 36.465431, 24.930447>,  <32.394169, 36.497139, 25.582153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258999, 36.465431, 24.930447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918444, 36.379131, 24.739201>,  <31.714111, 36.327351, 24.624453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918444, 36.379131, 24.739201>,  <32.258999, 36.465431, 24.930447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918444, 36.379131, 24.739201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470561, -0.088597, 0.877908,
		-0.231770, 0.972420, -0.026095,
		-0.851384, -0.215752, -0.478117,
		31.663029, 36.314407, 24.595766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840260, 36.839714, 25.290285>,  <32.258999, 36.465431, 24.930447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840260, 36.839714, 25.290285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617966, 36.563488, 25.105122>,  <31.484591, 36.397751, 24.994024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617966, 36.563488, 25.105122>,  <31.840260, 36.839714, 25.290285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617966, 36.563488, 25.105122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533894, -0.130370, 0.835440,
		-0.637274, 0.711425, -0.296237,
		-0.555733, -0.690564, -0.462907,
		31.451246, 36.356319, 24.966249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126953, 37.023010, 25.477249>,  <31.840260, 36.839714, 25.290285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126953, 37.023010, 25.477249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134621, 36.634712, 25.381504>,  <31.139221, 36.401733, 25.324057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134621, 36.634712, 25.381504>,  <31.126953, 37.023010, 25.477249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134621, 36.634712, 25.381504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621737, -0.199062, 0.757508,
		-0.782992, 0.134300, -0.607362,
		0.019169, -0.970741, -0.239363,
		31.140371, 36.343491, 25.309696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422281, 36.759766, 25.550703>,  <31.126953, 37.023010, 25.477249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422281, 36.759766, 25.550703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663729, 36.441017, 25.540585>,  <30.808598, 36.249767, 25.534513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663729, 36.441017, 25.540585>,  <30.422281, 36.759766, 25.550703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663729, 36.441017, 25.540585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531951, -0.426171, 0.731714,
		-0.593863, -0.428219, -0.681142,
		0.603617, -0.796873, -0.025296,
		30.844814, 36.201954, 25.532995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973713, 36.194740, 25.512096>,  <30.422281, 36.759766, 25.550703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973713, 36.194740, 25.512096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318504, 36.069771, 25.671791>,  <30.525379, 35.994789, 25.767607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318504, 36.069771, 25.671791>,  <29.973713, 36.194740, 25.512096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318504, 36.069771, 25.671791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506716, -0.507154, 0.697161,
		-0.015336, -0.803235, -0.595464,
		0.861977, -0.312423, 0.399235,
		30.577097, 35.976044, 25.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792112, 35.499584, 25.741226>,  <29.973713, 36.194740, 25.512096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792112, 35.499584, 25.741226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116068, 35.608730, 25.948929>,  <30.310440, 35.674217, 26.073551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116068, 35.608730, 25.948929>,  <29.792112, 35.499584, 25.741226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116068, 35.608730, 25.948929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323100, -0.531313, 0.783143,
		0.489581, -0.802029, -0.342140,
		0.809887, 0.272866, 0.519257,
		30.359034, 35.690590, 26.104706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826883, 34.952179, 26.145321>,  <29.792112, 35.499584, 25.741226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826883, 34.952179, 26.145321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066071, 35.212448, 26.332539>,  <30.209583, 35.368610, 26.444868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066071, 35.212448, 26.332539>,  <29.826883, 34.952179, 26.145321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066071, 35.212448, 26.332539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253610, -0.400348, 0.880570,
		0.760341, -0.645252, -0.074378,
		0.597966, 0.650670, 0.468043,
		30.245461, 35.407650, 26.472952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358723, 34.577583, 26.544617>,  <29.826883, 34.952179, 26.145321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358723, 34.577583, 26.544617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305161, 34.938126, 26.709358>,  <30.273024, 35.154453, 26.808203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305161, 34.938126, 26.709358>,  <30.358723, 34.577583, 26.544617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305161, 34.938126, 26.709358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311996, -0.432807, 0.845776,
		0.940600, -0.015244, 0.339175,
		-0.133905, 0.901358, 0.411854,
		30.264990, 35.208534, 26.832914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868036, 34.633614, 27.114731>,  <30.358723, 34.577583, 26.544617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868036, 34.633614, 27.114731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592363, 34.904587, 27.217579>,  <30.426960, 35.067169, 27.279287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592363, 34.904587, 27.217579>,  <30.868036, 34.633614, 27.114731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592363, 34.904587, 27.217579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133399, -0.467409, 0.873919,
		0.712202, 0.567990, 0.412499,
		-0.689183, 0.677434, 0.257120,
		30.385609, 35.107819, 27.294716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127657, 34.884659, 27.790995>,  <30.868036, 34.633614, 27.114731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127657, 34.884659, 27.790995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744110, 34.994087, 27.760712>,  <30.513983, 35.059746, 27.742542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744110, 34.994087, 27.760712>,  <31.127657, 34.884659, 27.790995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744110, 34.994087, 27.760712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174112, -0.356208, 0.918042,
		0.224183, 0.893462, 0.389189,
		-0.958867, 0.273572, -0.075707,
		30.456450, 35.076160, 27.737999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907204, 35.061840, 28.495056>,  <31.127657, 34.884659, 27.790995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907204, 35.061840, 28.495056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552710, 34.983051, 28.327347>,  <30.340014, 34.935776, 28.226721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552710, 34.983051, 28.327347>,  <30.907204, 35.061840, 28.495056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552710, 34.983051, 28.327347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253861, -0.550569, 0.795253,
		-0.387484, 0.811218, 0.437929,
		-0.886234, -0.196975, -0.419273,
		30.286839, 34.923958, 28.201565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409945, 35.199081, 28.992992>,  <30.907204, 35.061840, 28.495056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409945, 35.199081, 28.992992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223749, 34.955589, 28.736004>,  <30.112032, 34.809494, 28.581812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223749, 34.955589, 28.736004>,  <30.409945, 35.199081, 28.992992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223749, 34.955589, 28.736004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357991, -0.534377, 0.765692,
		-0.809422, 0.586418, 0.030825,
		-0.465487, -0.608732, -0.642469,
		30.084103, 34.772968, 28.543262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736588, 35.066544, 29.231178>,  <30.409945, 35.199081, 28.992992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736588, 35.066544, 29.231178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825691, 34.758362, 28.992256>,  <29.879154, 34.573452, 28.848904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825691, 34.758362, 28.992256>,  <29.736588, 35.066544, 29.231178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825691, 34.758362, 28.992256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293096, -0.637282, 0.712718,
		-0.929770, 0.016304, -0.367779,
		0.222759, -0.770459, -0.597304,
		29.892519, 34.527225, 28.813065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234808, 34.586414, 29.369419>,  <29.736588, 35.066544, 29.231178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234808, 34.586414, 29.369419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531706, 34.361588, 29.223461>,  <29.709845, 34.226692, 29.135885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531706, 34.361588, 29.223461>,  <29.234808, 34.586414, 29.369419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531706, 34.361588, 29.223461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282685, -0.756316, 0.589979,
		-0.607587, -0.334758, -0.720260,
		0.742244, -0.562070, -0.364897,
		29.754379, 34.192966, 29.113993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959084, 33.909550, 29.472975>,  <29.234808, 34.586414, 29.369419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959084, 33.909550, 29.472975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338289, 33.828468, 29.374847>,  <29.565813, 33.779819, 29.315971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338289, 33.828468, 29.374847>,  <28.959084, 33.909550, 29.472975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338289, 33.828468, 29.374847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072366, -0.888004, 0.454106,
		-0.309894, -0.412746, -0.856508,
		0.948013, -0.202707, -0.245319,
		29.622694, 33.767654, 29.301252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926664, 33.213852, 29.432953>,  <28.959084, 33.909550, 29.472975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926664, 33.213852, 29.432953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319237, 33.286480, 29.457680>,  <29.554781, 33.330055, 29.472517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319237, 33.286480, 29.457680>,  <28.926664, 33.213852, 29.432953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319237, 33.286480, 29.457680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096055, -0.744244, 0.660964,
		0.166020, -0.642754, -0.747867,
		0.981433, 0.181570, 0.061819,
		29.613667, 33.340950, 29.476225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299858, 32.684059, 29.250891>,  <28.926664, 33.213852, 29.432953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299858, 32.684059, 29.250891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557432, 32.867466, 29.495876>,  <29.711977, 32.977509, 29.642868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557432, 32.867466, 29.495876>,  <29.299858, 32.684059, 29.250891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557432, 32.867466, 29.495876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217165, -0.877135, 0.428339,
		0.733613, -0.142817, -0.664391,
		0.643934, 0.458517, 0.612462,
		29.750612, 33.005020, 29.679615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945452, 32.430702, 29.188826>,  <29.299858, 32.684059, 29.250891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945452, 32.430702, 29.188826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987011, 32.575859, 29.559235>,  <30.011946, 32.662952, 29.781479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987011, 32.575859, 29.559235>,  <29.945452, 32.430702, 29.188826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987011, 32.575859, 29.559235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231458, -0.914319, 0.332337,
		0.967281, 0.179805, -0.178990,
		0.103898, 0.362892, 0.926021,
		30.018181, 32.684727, 29.837040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497202, 32.117241, 29.481697>,  <29.945452, 32.430702, 29.188826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497202, 32.117241, 29.481697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318460, 32.267639, 29.806400>,  <30.211216, 32.357880, 30.001223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318460, 32.267639, 29.806400>,  <30.497202, 32.117241, 29.481697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318460, 32.267639, 29.806400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214928, -0.835692, 0.505396,
		0.868406, 0.400306, 0.292618,
		-0.446852, 0.375997, 0.811757,
		30.184404, 32.380440, 30.049927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944452, 32.045933, 29.994595>,  <30.497202, 32.117241, 29.481697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944452, 32.045933, 29.994595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591494, 32.080338, 30.179626>,  <30.379719, 32.100983, 30.290646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591494, 32.080338, 30.179626>,  <30.944452, 32.045933, 29.994595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591494, 32.080338, 30.179626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205968, -0.813325, 0.544132,
		0.423032, 0.575416, 0.699958,
		-0.882395, 0.086016, 0.462579,
		30.326775, 32.106144, 30.318399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048824, 32.033302, 30.639208>,  <30.944452, 32.045933, 29.994595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048824, 32.033302, 30.639208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658379, 31.946415, 30.640675>,  <30.424110, 31.894283, 30.641554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658379, 31.946415, 30.640675>,  <31.048824, 32.033302, 30.639208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658379, 31.946415, 30.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153992, -0.679896, 0.716957,
		-0.153244, 0.700398, 0.697107,
		-0.976116, -0.217218, 0.003665,
		30.365543, 31.881250, 30.641775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890287, 31.942200, 31.331999>,  <31.048824, 32.033302, 30.639208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890287, 31.942200, 31.331999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592062, 31.787113, 31.115181>,  <30.413128, 31.694061, 30.985090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592062, 31.787113, 31.115181>,  <30.890287, 31.942200, 31.331999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592062, 31.787113, 31.115181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039371, -0.786305, 0.616583,
		-0.665273, 0.481041, 0.570974,
		-0.745561, -0.387716, -0.542047,
		30.368393, 31.670799, 30.952566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514950, 31.513079, 31.903961>,  <30.890287, 31.942200, 31.331999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514950, 31.513079, 31.903961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376785, 31.390217, 31.549255>,  <30.293886, 31.316500, 31.336432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376785, 31.390217, 31.549255>,  <30.514950, 31.513079, 31.903961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376785, 31.390217, 31.549255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145063, -0.916089, 0.373815,
		-0.927172, 0.257757, 0.271872,
		-0.345412, -0.307153, -0.886763,
		30.273161, 31.298071, 31.283226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987476, 31.096510, 32.098835>,  <30.514950, 31.513079, 31.903961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987476, 31.096510, 32.098835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083996, 30.963360, 31.734207>,  <30.141909, 30.883469, 31.515429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083996, 30.963360, 31.734207>,  <29.987476, 31.096510, 32.098835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083996, 30.963360, 31.734207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184976, -0.937885, 0.293521,
		-0.952659, 0.097794, -0.287884,
		0.241297, -0.332877, -0.911575,
		30.156385, 30.863497, 31.460735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516451, 30.582682, 31.938440>,  <29.987476, 31.096510, 32.098835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516451, 30.582682, 31.938440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841423, 30.527348, 31.711876>,  <30.036406, 30.494148, 31.575937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841423, 30.527348, 31.711876>,  <29.516451, 30.582682, 31.938440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841423, 30.527348, 31.711876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169464, -0.985534, -0.002374,
		-0.557887, 0.097915, -0.824120,
		0.812431, -0.138334, -0.566410,
		30.085152, 30.485847, 31.541952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353153, 30.093523, 31.388254>,  <29.516451, 30.582682, 31.938440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353153, 30.093523, 31.388254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747700, 30.072319, 31.450577>,  <29.984426, 30.059597, 31.487970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747700, 30.072319, 31.450577>,  <29.353153, 30.093523, 31.388254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747700, 30.072319, 31.450577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006958, -0.959289, -0.282341,
		0.164430, 0.277407, -0.946577,
		0.986364, -0.053012, 0.155806,
		30.043610, 30.056416, 31.497318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657547, 29.622660, 30.852203>,  <29.353153, 30.093523, 31.388254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657547, 29.622660, 30.852203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924557, 29.608025, 31.149677>,  <30.084763, 29.599243, 31.328163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924557, 29.608025, 31.149677>,  <29.657547, 29.622660, 30.852203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924557, 29.608025, 31.149677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119922, -0.991036, 0.058884,
		0.734866, -0.128491, -0.665930,
		0.667526, -0.036587, 0.743687,
		30.124815, 29.597048, 31.372784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099838, 29.150156, 30.695673>,  <29.657547, 29.622660, 30.852203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099838, 29.150156, 30.695673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132574, 29.190071, 31.092327>,  <30.152216, 29.214020, 31.330320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132574, 29.190071, 31.092327>,  <30.099838, 29.150156, 30.695673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132574, 29.190071, 31.092327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038479, -0.993917, 0.103193,
		0.995902, -0.046603, -0.077502,
		0.081840, 0.099788, 0.991637,
		30.157125, 29.220007, 31.389818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599150, 28.592772, 30.893368>,  <30.099838, 29.150156, 30.695673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599150, 28.592772, 30.893368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370565, 28.713150, 31.198750>,  <30.233416, 28.785378, 31.381979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370565, 28.713150, 31.198750>,  <30.599150, 28.592772, 30.893368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370565, 28.713150, 31.198750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216594, -0.952653, 0.213398,
		0.791530, -0.043411, 0.609587,
		-0.571461, 0.300944, 0.763456,
		30.199127, 28.803432, 31.427786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780981, 28.021595, 31.436749>,  <30.599150, 28.592772, 30.893368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780981, 28.021595, 31.436749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475603, 28.220303, 31.601852>,  <30.292376, 28.339527, 31.700914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475603, 28.220303, 31.601852>,  <30.780981, 28.021595, 31.436749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475603, 28.220303, 31.601852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191106, -0.784205, 0.590340,
		0.616952, 0.371810, 0.693633,
		-0.763445, 0.496769, 0.412762,
		30.246569, 28.369333, 31.725681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729324, 27.797474, 32.214531>,  <30.780981, 28.021595, 31.436749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729324, 27.797474, 32.214531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383013, 27.950016, 32.084919>,  <30.175226, 28.041542, 32.007153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383013, 27.950016, 32.084919>,  <30.729324, 27.797474, 32.214531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383013, 27.950016, 32.084919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500308, -0.645719, 0.576835,
		0.010749, 0.661525, 0.749846,
		-0.865781, 0.381355, -0.324025,
		30.123278, 28.064423, 31.987711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230106, 28.002571, 32.659058>,  <30.729324, 27.797474, 32.214531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230106, 28.002571, 32.659058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972149, 27.889618, 32.374981>,  <29.817373, 27.821846, 32.204536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972149, 27.889618, 32.374981>,  <30.230106, 28.002571, 32.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972149, 27.889618, 32.374981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376032, -0.691750, 0.616508,
		-0.665365, 0.664637, 0.339921,
		-0.644895, -0.282382, -0.710191,
		29.778681, 27.804903, 32.161922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868387, 27.549435, 33.101391>,  <30.230106, 28.002571, 32.659058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868387, 27.549435, 33.101391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697271, 27.513309, 32.741650>,  <29.594603, 27.491634, 32.525803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697271, 27.513309, 32.741650>,  <29.868387, 27.549435, 33.101391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697271, 27.513309, 32.741650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601726, -0.714017, 0.357919,
		-0.674479, 0.694279, 0.251106,
		-0.427790, -0.090312, -0.899355,
		29.568935, 27.486216, 32.471844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212132, 27.410490, 33.168579>,  <29.868387, 27.549435, 33.101391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212132, 27.410490, 33.168579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286083, 27.266441, 32.802818>,  <29.330454, 27.180012, 32.583363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286083, 27.266441, 32.802818>,  <29.212132, 27.410490, 33.168579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286083, 27.266441, 32.802818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473010, -0.848189, 0.238406,
		-0.861441, 0.388445, -0.327153,
		0.184880, -0.360120, -0.914403,
		29.341547, 27.158405, 32.528496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546286, 27.223976, 32.931561>,  <29.212132, 27.410490, 33.168579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546286, 27.223976, 32.931561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821171, 27.021679, 32.722961>,  <28.986101, 26.900301, 32.597801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821171, 27.021679, 32.722961>,  <28.546286, 27.223976, 32.931561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821171, 27.021679, 32.722961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542183, -0.834854, 0.095164,
		-0.483507, 0.217352, -0.847926,
		0.687211, -0.505744, -0.521503,
		29.027334, 26.869955, 32.566509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229197, 26.788185, 32.486717>,  <28.546286, 27.223976, 32.931561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229197, 26.788185, 32.486717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576479, 26.591560, 32.459633>,  <28.784849, 26.473585, 32.443382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576479, 26.591560, 32.459633>,  <28.229197, 26.788185, 32.486717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576479, 26.591560, 32.459633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496203, -0.859711, -0.121159,
		0.001345, 0.138790, -0.990321,
		0.868206, -0.491563, -0.067712,
		28.836941, 26.444092, 32.439320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081150, 26.103399, 32.006733>,  <28.229197, 26.788185, 32.486717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081150, 26.103399, 32.006733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434731, 26.019741, 32.174011>,  <28.646879, 25.969545, 32.274376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434731, 26.019741, 32.174011>,  <28.081150, 26.103399, 32.006733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434731, 26.019741, 32.174011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186253, -0.977863, -0.095359,
		0.428879, 0.006403, -0.903339,
		0.883953, -0.209147, 0.418192,
		28.699917, 25.956997, 32.299469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234163, 25.537863, 31.676941>,  <28.081150, 26.103399, 32.006733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234163, 25.537863, 31.676941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442427, 25.524307, 32.018177>,  <28.567385, 25.516174, 32.222919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442427, 25.524307, 32.018177>,  <28.234163, 25.537863, 31.676941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442427, 25.524307, 32.018177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158722, -0.985635, 0.057719,
		0.838882, -0.165457, -0.518557,
		0.520658, -0.033887, 0.853093,
		28.598623, 25.514141, 32.274105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569536, 24.836540, 31.637138>,  <28.234163, 25.537863, 31.676941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569536, 24.836540, 31.637138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517469, 24.681465, 31.272118>,  <28.486229, 24.588421, 31.053104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517469, 24.681465, 31.272118>,  <28.569536, 24.836540, 31.637138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517469, 24.681465, 31.272118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775882, 0.533203, -0.337198,
		0.617304, -0.751926, 0.231394,
		-0.130168, -0.387688, -0.912554,
		28.478418, 24.565159, 30.998352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288559, 24.677633, 31.317301>,  <28.569536, 24.836540, 31.637138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288559, 24.677633, 31.317301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015131, 24.717018, 31.028015>,  <28.851074, 24.740648, 30.854445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015131, 24.717018, 31.028015>,  <29.288559, 24.677633, 31.317301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015131, 24.717018, 31.028015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608833, 0.623417, -0.490584,
		0.402560, -0.775665, -0.486096,
		-0.683569, 0.098461, -0.723214,
		28.810061, 24.746557, 30.811050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655231, 24.562260, 30.686428>,  <29.288559, 24.677633, 31.317301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655231, 24.562260, 30.686428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319298, 24.769482, 30.621563>,  <29.117737, 24.893814, 30.582644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319298, 24.769482, 30.621563>,  <29.655231, 24.562260, 30.686428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319298, 24.769482, 30.621563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517731, 0.674609, -0.526172,
		-0.163188, -0.525855, -0.834773,
		-0.839836, 0.518053, -0.162164,
		29.067347, 24.924898, 30.572914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690811, 24.748861, 29.884377>,  <29.655231, 24.562260, 30.686428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690811, 24.748861, 29.884377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416477, 24.995434, 30.039112>,  <29.251877, 25.143377, 30.131952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416477, 24.995434, 30.039112>,  <29.690811, 24.748861, 29.884377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416477, 24.995434, 30.039112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320499, 0.733058, -0.599922,
		-0.653387, -0.287465, -0.700321,
		-0.685833, 0.616433, 0.386838,
		29.210728, 25.180365, 30.155163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440336, 25.085548, 29.218493>,  <29.690811, 24.748861, 29.884377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440336, 25.085548, 29.218493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328339, 25.300343, 29.536800>,  <29.261141, 25.429220, 29.727785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328339, 25.300343, 29.536800>,  <29.440336, 25.085548, 29.218493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328339, 25.300343, 29.536800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135011, 0.842712, -0.521161,
		-0.950461, -0.038484, -0.308453,
		-0.279993, 0.536988, 0.795769,
		29.244341, 25.461439, 29.775532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846836, 25.491844, 29.002409>,  <29.440336, 25.085548, 29.218493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846836, 25.491844, 29.002409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022165, 25.642731, 29.328743>,  <29.127363, 25.733263, 29.524544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022165, 25.642731, 29.328743>,  <28.846836, 25.491844, 29.002409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022165, 25.642731, 29.328743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220477, 0.834819, -0.504448,
		-0.871358, 0.400983, 0.282751,
		0.438321, 0.377214, 0.815833,
		29.153662, 25.755896, 29.573492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598341, 26.164925, 29.196676>,  <28.846836, 25.491844, 29.002409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598341, 26.164925, 29.196676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937199, 26.191162, 29.407597>,  <29.140512, 26.206903, 29.534149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937199, 26.191162, 29.407597>,  <28.598341, 26.164925, 29.196676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937199, 26.191162, 29.407597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242487, 0.835275, -0.493473,
		-0.472809, 0.545906, 0.691693,
		0.847143, 0.065592, 0.527301,
		29.191341, 26.210840, 29.565786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652643, 26.817495, 29.451584>,  <28.598341, 26.164925, 29.196676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652643, 26.817495, 29.451584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038069, 26.710846, 29.443073>,  <29.269325, 26.646856, 29.437967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038069, 26.710846, 29.443073>,  <28.652643, 26.817495, 29.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038069, 26.710846, 29.443073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230968, 0.869541, -0.436523,
		0.134888, 0.415705, 0.899441,
		0.963566, -0.266624, -0.021276,
		29.327139, 26.630859, 29.436691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057499, 27.382935, 29.813879>,  <28.652643, 26.817495, 29.451584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057499, 27.382935, 29.813879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311193, 27.183594, 29.577442>,  <29.463409, 27.063990, 29.435579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311193, 27.183594, 29.577442>,  <29.057499, 27.382935, 29.813879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311193, 27.183594, 29.577442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266547, 0.858606, -0.437891,
		0.725738, 0.120173, 0.677394,
		0.634237, -0.498351, -0.591092,
		29.501465, 27.034088, 29.400114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654438, 27.816517, 29.801046>,  <29.057499, 27.382935, 29.813879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654438, 27.816517, 29.801046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706463, 27.551304, 29.506165>,  <29.737679, 27.392176, 29.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706463, 27.551304, 29.506165>,  <29.654438, 27.816517, 29.801046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706463, 27.551304, 29.506165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297208, 0.735403, -0.608974,
		0.945913, -0.139899, 0.292706,
		0.130062, -0.663031, -0.737206,
		29.745481, 27.352394, 29.285002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374842, 27.898165, 29.646828>,  <29.654438, 27.816517, 29.801046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374842, 27.898165, 29.646828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195084, 27.732780, 29.330070>,  <30.087229, 27.633551, 29.140017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195084, 27.732780, 29.330070>,  <30.374842, 27.898165, 29.646828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195084, 27.732780, 29.330070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360895, 0.726864, -0.584315,
		0.817189, -0.548379, -0.177434,
		-0.449396, -0.413460, -0.791892,
		30.060265, 27.608742, 29.092503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879498, 27.962210, 29.210758>,  <30.374842, 27.898165, 29.646828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879498, 27.962210, 29.210758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558096, 27.911381, 28.978127>,  <30.365255, 27.880884, 28.838547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558096, 27.911381, 28.978127>,  <30.879498, 27.962210, 29.210758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558096, 27.911381, 28.978127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334267, 0.712091, -0.617407,
		0.492593, -0.690492, -0.529692,
		-0.803503, -0.127071, -0.581579,
		30.317045, 27.873259, 28.803652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083927, 28.087778, 28.544533>,  <30.879498, 27.962210, 29.210758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083927, 28.087778, 28.544533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689480, 28.151688, 28.526459>,  <30.452810, 28.190033, 28.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689480, 28.151688, 28.526459>,  <31.083927, 28.087778, 28.544533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689480, 28.151688, 28.526459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153817, 0.776584, -0.610948,
		-0.062524, -0.609418, -0.790380,
		-0.986119, 0.159773, -0.045184,
		30.393644, 28.199619, 28.512903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036299, 28.310993, 27.841803>,  <31.083927, 28.087778, 28.544533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036299, 28.310993, 27.841803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713123, 28.407406, 28.056889>,  <30.519218, 28.465254, 28.185940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713123, 28.407406, 28.056889>,  <31.036299, 28.310993, 27.841803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713123, 28.407406, 28.056889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115923, 0.829675, -0.546078,
		-0.577752, -0.503532, -0.642385,
		-0.807939, 0.241031, 0.537717,
		30.470741, 28.479715, 28.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675184, 28.614365, 27.407057>,  <31.036299, 28.310993, 27.841803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675184, 28.614365, 27.407057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517159, 28.756729, 27.745819>,  <30.422342, 28.842148, 27.949076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517159, 28.756729, 27.745819>,  <30.675184, 28.614365, 27.407057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517159, 28.756729, 27.745819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112862, 0.896112, -0.429239,
		-0.911695, -0.265160, -0.313852,
		-0.395064, 0.355913, 0.846906,
		30.398640, 28.863503, 27.999891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089600, 28.822987, 27.216269>,  <30.675184, 28.614365, 27.407057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089600, 28.822987, 27.216269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133827, 29.011459, 27.566299>,  <30.160364, 29.124542, 27.776318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133827, 29.011459, 27.566299>,  <30.089600, 28.822987, 27.216269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133827, 29.011459, 27.566299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391531, 0.829926, -0.397399,
		-0.913498, -0.298680, 0.276248,
		0.110570, 0.471182, 0.875078,
		30.166998, 29.152815, 27.828823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498066, 29.248886, 27.300394>,  <30.089600, 28.822987, 27.216269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498066, 29.248886, 27.300394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769140, 29.399715, 27.552921>,  <29.931784, 29.490213, 27.704437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769140, 29.399715, 27.552921>,  <29.498066, 29.248886, 27.300394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769140, 29.399715, 27.552921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229711, 0.924112, -0.305370,
		-0.698553, 0.061925, 0.712874,
		0.677685, 0.377072, 0.631316,
		29.972446, 29.512836, 27.742315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120481, 29.745956, 27.788330>,  <29.498066, 29.248886, 27.300394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120481, 29.745956, 27.788330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503635, 29.860714, 27.783421>,  <29.733528, 29.929569, 27.780474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503635, 29.860714, 27.783421>,  <29.120481, 29.745956, 27.788330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503635, 29.860714, 27.783421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287157, 0.957050, -0.039962,
		0.000284, 0.041804, 0.999126,
		0.957883, 0.286895, -0.012276,
		29.791000, 29.946783, 27.779737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266190, 30.304420, 28.322390>,  <29.120481, 29.745956, 27.788330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266190, 30.304420, 28.322390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548447, 30.349808, 28.042622>,  <29.717802, 30.377041, 27.874760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548447, 30.349808, 28.042622>,  <29.266190, 30.304420, 28.322390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548447, 30.349808, 28.042622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269460, 0.955905, -0.116781,
		0.655329, 0.270872, 0.705104,
		0.705645, 0.113467, -0.699422,
		29.760139, 30.383848, 27.832794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456743, 30.986797, 28.377419>,  <29.266190, 30.304420, 28.322390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456743, 30.986797, 28.377419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646717, 30.915329, 28.032742>,  <29.760702, 30.872448, 27.825935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646717, 30.915329, 28.032742>,  <29.456743, 30.986797, 28.377419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646717, 30.915329, 28.032742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124967, 0.955556, -0.267013,
		0.871102, 0.234497, 0.431500,
		0.474936, -0.178672, -0.861691,
		29.789198, 30.861727, 27.774235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985739, 31.444359, 28.326694>,  <29.456743, 30.986797, 28.377419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985739, 31.444359, 28.326694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890341, 31.331284, 27.955059>,  <29.833101, 31.263439, 27.732079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890341, 31.331284, 27.955059>,  <29.985739, 31.444359, 28.326694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890341, 31.331284, 27.955059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215472, 0.948254, -0.233207,
		0.946934, 0.144568, -0.287084,
		-0.238514, -0.282690, -0.929084,
		29.818792, 31.246477, 27.676332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256823, 31.976213, 27.929958>,  <29.985739, 31.444359, 28.326694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256823, 31.976213, 27.929958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999023, 31.797520, 27.681747>,  <29.844343, 31.690304, 27.532822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999023, 31.797520, 27.681747>,  <30.256823, 31.976213, 27.929958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999023, 31.797520, 27.681747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121813, 0.861189, -0.493473,
		0.754840, -0.242454, -0.609452,
		-0.644498, -0.446732, -0.620526,
		29.805674, 31.663500, 27.495590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498316, 32.143970, 27.207457>,  <30.256823, 31.976213, 27.929958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498316, 32.143970, 27.207457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113113, 32.037689, 27.225452>,  <29.881992, 31.973921, 27.236250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113113, 32.037689, 27.225452>,  <30.498316, 32.143970, 27.207457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113113, 32.037689, 27.225452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258612, 0.864240, -0.431520,
		0.075772, -0.427191, -0.900981,
		-0.963005, -0.265702, 0.044991,
		29.824211, 31.957979, 27.238949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188568, 32.395798, 26.614552>,  <30.498316, 32.143970, 27.207457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188568, 32.395798, 26.614552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858643, 32.325157, 26.829399>,  <29.660688, 32.282772, 26.958307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858643, 32.325157, 26.829399>,  <30.188568, 32.395798, 26.614552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858643, 32.325157, 26.829399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444037, 0.790410, -0.421998,
		-0.350022, -0.586570, -0.730356,
		-0.824812, -0.176597, 0.537121,
		29.611198, 32.272179, 26.990536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554121, 32.301327, 26.115263>,  <30.188568, 32.395798, 26.614552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554121, 32.301327, 26.115263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433828, 32.407066, 26.481800>,  <29.361652, 32.470509, 26.701721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433828, 32.407066, 26.481800>,  <29.554121, 32.301327, 26.115263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433828, 32.407066, 26.481800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514985, 0.763688, -0.389321,
		-0.802715, -0.588983, -0.093529,
		-0.300730, 0.264348, 0.916341,
		29.343609, 32.486370, 26.756702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768705, 32.049713, 26.314400>,  <29.554121, 32.301327, 26.115263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768705, 32.049713, 26.314400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795359, 32.338364, 26.590027>,  <28.811350, 32.511555, 26.755404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795359, 32.338364, 26.590027>,  <28.768705, 32.049713, 26.314400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795359, 32.338364, 26.590027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609208, 0.576359, -0.544680,
		-0.790206, -0.383493, 0.478024,
		0.066632, 0.721625, 0.689069,
		28.815348, 32.554852, 26.796747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051323, 32.402309, 26.483341>,  <28.768705, 32.049713, 26.314400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051323, 32.402309, 26.483341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327591, 32.670818, 26.590946>,  <28.493351, 32.831924, 26.655510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327591, 32.670818, 26.590946>,  <28.051323, 32.402309, 26.483341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327591, 32.670818, 26.590946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482926, 0.705012, -0.519365,
		-0.538294, 0.228796, 0.811105,
		0.690668, 0.671275, 0.269012,
		28.534792, 32.872200, 26.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699137, 32.991215, 26.529259>,  <28.051323, 32.402309, 26.483341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699137, 32.991215, 26.529259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064651, 33.153458, 26.520569>,  <28.283960, 33.250805, 26.515354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064651, 33.153458, 26.520569>,  <27.699137, 32.991215, 26.529259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064651, 33.153458, 26.520569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375309, 0.822654, -0.427064,
		-0.155348, 0.398400, 0.903960,
		0.913789, 0.405608, -0.021725,
		28.338789, 33.275139, 26.514051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625072, 33.641773, 26.822502>,  <27.699137, 32.991215, 26.529259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625072, 33.641773, 26.822502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952339, 33.671421, 26.594429>,  <28.148699, 33.689209, 26.457584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952339, 33.671421, 26.594429>,  <27.625072, 33.641773, 26.822502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952339, 33.671421, 26.594429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450302, 0.699234, -0.555247,
		0.357535, 0.711040, 0.605469,
		0.818167, 0.074124, -0.570183,
		28.197790, 33.693657, 26.423374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807699, 34.407822, 26.710142>,  <27.625072, 33.641773, 26.822502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807699, 34.407822, 26.710142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978752, 34.199638, 26.414505>,  <28.081383, 34.074730, 26.237123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978752, 34.199638, 26.414505>,  <27.807699, 34.407822, 26.710142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978752, 34.199638, 26.414505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358558, 0.652889, -0.667212,
		0.829800, 0.550328, 0.092581,
		0.427630, -0.520456, -0.739092,
		28.107040, 34.043503, 26.192778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960028, 34.923916, 26.201487>,  <27.807699, 34.407822, 26.710142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960028, 34.923916, 26.201487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944555, 34.582466, 25.993710>,  <27.935272, 34.377594, 25.869043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944555, 34.582466, 25.993710>,  <27.960028, 34.923916, 26.201487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944555, 34.582466, 25.993710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358398, 0.497097, -0.790218,
		0.932767, 0.155602, -0.325167,
		-0.038680, -0.853629, -0.519444,
		27.932951, 34.326378, 25.837877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143572, 35.113914, 25.525820>,  <27.960028, 34.923916, 26.201487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143572, 35.113914, 25.525820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965727, 34.757908, 25.485455>,  <27.859020, 34.544304, 25.461235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965727, 34.757908, 25.485455>,  <28.143572, 35.113914, 25.525820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965727, 34.757908, 25.485455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476334, 0.330346, -0.814848,
		0.758567, -0.314223, -0.570823,
		-0.444613, -0.890020, -0.100914,
		27.832342, 34.490902, 25.455181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249458, 34.806103, 24.798967>,  <28.143572, 35.113914, 25.525820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249458, 34.806103, 24.798967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921253, 34.651859, 24.967758>,  <27.724329, 34.559315, 25.069033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921253, 34.651859, 24.967758>,  <28.249458, 34.806103, 24.798967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921253, 34.651859, 24.967758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548967, 0.325772, -0.769746,
		0.159349, -0.863239, -0.478984,
		-0.820514, -0.385605, 0.421978,
		27.675098, 34.536179, 25.094351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919416, 34.403141, 24.269920>,  <28.249458, 34.806103, 24.798967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919416, 34.403141, 24.269920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628149, 34.447491, 24.540470>,  <27.453388, 34.474098, 24.702799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628149, 34.447491, 24.540470>,  <27.919416, 34.403141, 24.269920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628149, 34.447491, 24.540470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657886, 0.163735, -0.735104,
		-0.192247, -0.980254, -0.046286,
		-0.728167, 0.110871, 0.676373,
		27.409698, 34.480751, 24.743382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446320, 33.859726, 24.114388>,  <27.919416, 34.403141, 24.269920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446320, 33.859726, 24.114388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262100, 34.150471, 24.318176>,  <27.151567, 34.324917, 24.440449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262100, 34.150471, 24.318176>,  <27.446320, 33.859726, 24.114388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262100, 34.150471, 24.318176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776476, -0.051797, -0.628015,
		-0.430093, -0.684825, 0.588248,
		-0.460549, 0.726865, 0.509472,
		27.123936, 34.368530, 24.471018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719257, 33.640774, 23.993187>,  <27.446320, 33.859726, 24.114388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719257, 33.640774, 23.993187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694271, 34.015938, 24.129665>,  <26.679279, 34.241035, 24.211554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694271, 34.015938, 24.129665>,  <26.719257, 33.640774, 23.993187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694271, 34.015938, 24.129665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639440, 0.224875, -0.735219,
		-0.766299, -0.264100, 0.585693,
		-0.062464, 0.937914, 0.341198,
		26.675531, 34.297314, 24.232025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069546, 33.733711, 24.074081>,  <26.719257, 33.640774, 23.993187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069546, 33.733711, 24.074081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227882, 34.100010, 24.046631>,  <26.322886, 34.319790, 24.030161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227882, 34.100010, 24.046631>,  <26.069546, 33.733711, 24.074081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227882, 34.100010, 24.046631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462675, 0.134329, -0.876292,
		-0.793246, 0.378625, 0.476868,
		0.395843, 0.915750, -0.068625,
		26.346636, 34.374737, 24.026043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443724, 34.227367, 24.037437>,  <26.069546, 33.733711, 24.074081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443724, 34.227367, 24.037437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775326, 34.358963, 23.856541>,  <25.974287, 34.437920, 23.748003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775326, 34.358963, 23.856541>,  <25.443724, 34.227367, 24.037437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775326, 34.358963, 23.856541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539428, 0.257040, -0.801840,
		-0.147551, 0.908679, 0.390552,
		0.829003, 0.328987, -0.452240,
		26.024027, 34.457661, 23.720869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.144033, 34.859985, 23.769398>,  <25.443724, 34.227367, 24.037437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.144033, 34.859985, 23.769398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491457, 34.812798, 23.576862>,  <25.699911, 34.784485, 23.461342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491457, 34.812798, 23.576862>,  <25.144033, 34.859985, 23.769398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491457, 34.812798, 23.576862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418553, 0.345443, -0.839930,
		0.265359, 0.930995, 0.250663,
		0.868561, -0.117967, -0.481338,
		25.752026, 34.777409, 23.432461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230579, 35.529640, 23.518951>,  <25.144033, 34.859985, 23.769398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230579, 35.529640, 23.518951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388266, 35.221066, 23.319160>,  <25.482878, 35.035919, 23.199286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388266, 35.221066, 23.319160>,  <25.230579, 35.529640, 23.518951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388266, 35.221066, 23.319160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497873, 0.277558, -0.821635,
		0.772475, 0.572577, -0.274661,
		0.394214, -0.771438, -0.499477,
		25.506531, 34.989635, 23.169317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743641, 35.754677, 22.959684>,  <25.230579, 35.529640, 23.518951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743641, 35.754677, 22.959684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491217, 35.448635, 22.908485>,  <25.339762, 35.265011, 22.877766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491217, 35.448635, 22.908485>,  <25.743641, 35.754677, 22.959684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491217, 35.448635, 22.908485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397484, 0.460618, -0.793623,
		0.666161, -0.449945, -0.594793,
		-0.631059, -0.765101, -0.127999,
		25.301899, 35.219105, 22.870087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081156, 36.118771, 23.076166>,  <25.743641, 35.754677, 22.959684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081156, 36.118771, 23.076166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955708, 36.498459, 23.066177>,  <24.880438, 36.726273, 23.060184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955708, 36.498459, 23.066177>,  <25.081156, 36.118771, 23.076166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955708, 36.498459, 23.066177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604271, -0.219799, -0.765862,
		-0.732461, -0.225100, 0.642519,
		-0.313621, 0.949220, -0.024973,
		24.861622, 36.783226, 23.058685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369810, 36.184570, 23.009884>,  <25.081156, 36.118771, 23.076166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369810, 36.184570, 23.009884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508375, 36.521233, 22.844181>,  <24.591515, 36.723232, 22.744759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508375, 36.521233, 22.844181>,  <24.369810, 36.184570, 23.009884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508375, 36.521233, 22.844181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582745, -0.152984, -0.798125,
		-0.735123, 0.517889, 0.437476,
		0.346413, 0.841657, -0.414259,
		24.612299, 36.773731, 22.719904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868311, 36.827419, 22.901154>,  <24.369810, 36.184570, 23.009884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868311, 36.827419, 22.901154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.139589, 36.804596, 22.608089>,  <24.302357, 36.790901, 22.432251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.139589, 36.804596, 22.608089>,  <23.868311, 36.827419, 22.901154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.139589, 36.804596, 22.608089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732057, -0.139772, -0.666751,
		-0.064362, 0.988538, -0.136562,
		0.678196, -0.057057, -0.732662,
		24.343048, 36.787479, 22.388290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.150682, 36.836456, 22.786793>,  <23.868311, 36.827419, 22.901154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.150682, 36.836456, 22.786793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.017193, 36.625065, 23.099033>,  <22.937099, 36.498230, 23.286377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.017193, 36.625065, 23.099033>,  <23.150682, 36.836456, 22.786793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.017193, 36.625065, 23.099033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170765, -0.780482, -0.601405,
		0.927075, -0.334002, 0.170219,
		-0.333723, -0.528480, 0.780601,
		22.917076, 36.466522, 23.333214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.428404, 36.130219, 22.761255>,  <23.150682, 36.836456, 22.786793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.428404, 36.130219, 22.761255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.075760, 36.143791, 22.949558>,  <22.864174, 36.151936, 23.062540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.075760, 36.143791, 22.949558>,  <23.428404, 36.130219, 22.761255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075760, 36.143791, 22.949558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374330, -0.657765, -0.653622,
		0.287471, -0.752459, 0.592593,
		-0.881610, 0.033928, 0.470756,
		22.811277, 36.153969, 23.090786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.156567, 35.483219, 23.070267>,  <23.428404, 36.130219, 22.761255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.156567, 35.483219, 23.070267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.850143, 35.712254, 22.953442>,  <22.666290, 35.849674, 22.883347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.850143, 35.712254, 22.953442>,  <23.156567, 35.483219, 23.070267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850143, 35.712254, 22.953442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361072, -0.759253, -0.541444,
		-0.531773, -0.309321, 0.788376,
		-0.766057, 0.572586, -0.292063,
		22.620327, 35.884029, 22.865822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532846, 35.060955, 23.132866>,  <23.156567, 35.483219, 23.070267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532846, 35.060955, 23.132866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.406992, 35.357777, 22.896103>,  <22.331480, 35.535870, 22.754045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.406992, 35.357777, 22.896103>,  <22.532846, 35.060955, 23.132866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.406992, 35.357777, 22.896103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509128, -0.658219, -0.554559,
		-0.801120, 0.126872, 0.584902,
		-0.314636, 0.742058, -0.591907,
		22.312601, 35.580395, 22.718531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.794132, 34.969151, 22.930143>,  <22.532846, 35.060955, 23.132866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.794132, 34.969151, 22.930143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959572, 35.188408, 22.639359>,  <22.058836, 35.319962, 22.464888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959572, 35.188408, 22.639359>,  <21.794132, 34.969151, 22.930143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959572, 35.188408, 22.639359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533303, -0.501286, -0.681396,
		-0.737920, 0.669515, 0.084997,
		0.413597, 0.548145, -0.726962,
		22.083651, 35.352852, 22.421270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384401, 34.733562, 22.443966>,  <21.794132, 34.969151, 22.930143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384401, 34.733562, 22.443966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659149, 34.931976, 22.231491>,  <21.823997, 35.051025, 22.104006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659149, 34.931976, 22.231491>,  <21.384401, 34.733562, 22.443966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659149, 34.931976, 22.231491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210847, -0.563444, -0.798795,
		-0.695524, 0.660668, -0.282426,
		0.686870, 0.496032, -0.531189,
		21.865210, 35.080788, 22.072134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124273, 34.766361, 21.775057>,  <21.384401, 34.733562, 22.443966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124273, 34.766361, 21.775057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510033, 34.850060, 21.710373>,  <21.741489, 34.900276, 21.671562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510033, 34.850060, 21.710373>,  <21.124273, 34.766361, 21.775057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510033, 34.850060, 21.710373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057520, -0.430890, -0.900569,
		-0.258116, 0.877811, -0.403515,
		0.964400, 0.209241, -0.161711,
		21.799353, 34.912830, 21.661860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151560, 34.997555, 21.008224>,  <21.124273, 34.766361, 21.775057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151560, 34.997555, 21.008224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510784, 34.863979, 21.122749>,  <21.726318, 34.783833, 21.191465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510784, 34.863979, 21.122749>,  <21.151560, 34.997555, 21.008224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510784, 34.863979, 21.122749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144073, -0.391690, -0.908747,
		0.415612, 0.857358, -0.303649,
		0.898059, -0.333939, 0.286314,
		21.780201, 34.763798, 21.208643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.580557, 35.056015, 20.432190>,  <21.151560, 34.997555, 21.008224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.580557, 35.056015, 20.432190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.786026, 34.791790, 20.651203>,  <21.909307, 34.633255, 20.782612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.786026, 34.791790, 20.651203>,  <21.580557, 35.056015, 20.432190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786026, 34.791790, 20.651203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238330, -0.503192, -0.830661,
		0.824220, 0.557182, -0.101044,
		0.513673, -0.660565, 0.547534,
		21.940128, 34.593620, 20.815464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275793, 35.073250, 20.339870>,  <21.580557, 35.056015, 20.432190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275793, 35.073250, 20.339870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202541, 34.701061, 20.466793>,  <22.158590, 34.477749, 20.542946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202541, 34.701061, 20.466793>,  <22.275793, 35.073250, 20.339870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.202541, 34.701061, 20.466793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324860, -0.361909, -0.873778,
		0.927863, -0.056934, 0.368550,
		-0.183129, -0.930473, 0.317306,
		22.147602, 34.421921, 20.561985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592985, 34.679657, 19.941566>,  <22.275793, 35.073250, 20.339870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592985, 34.679657, 19.941566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425850, 34.360718, 20.115761>,  <22.325569, 34.169353, 20.220278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425850, 34.360718, 20.115761>,  <22.592985, 34.679657, 19.941566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.425850, 34.360718, 20.115761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224333, -0.555043, -0.801001,
		0.880389, -0.236996, 0.410790,
		-0.417840, -0.797346, 0.435487,
		22.300497, 34.121513, 20.246407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.014420, 34.152920, 19.856997>,  <22.592985, 34.679657, 19.941566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.014420, 34.152920, 19.856997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661743, 33.973778, 19.916393>,  <22.450138, 33.866291, 19.952032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661743, 33.973778, 19.916393>,  <23.014420, 34.152920, 19.856997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.661743, 33.973778, 19.916393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152127, -0.567737, -0.809032,
		0.446632, -0.690726, 0.568698,
		-0.881690, -0.447854, 0.148492,
		22.397236, 33.839420, 19.960941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.055321, 33.504215, 19.479258>,  <23.014420, 34.152920, 19.856997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.055321, 33.504215, 19.479258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659008, 33.516632, 19.532005>,  <22.421221, 33.524082, 19.563654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659008, 33.516632, 19.532005>,  <23.055321, 33.504215, 19.479258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.659008, 33.516632, 19.532005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120895, -0.641880, -0.757215,
		0.061140, -0.766176, 0.639715,
		-0.990780, 0.031042, 0.131872,
		22.361774, 33.525944, 19.571568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.736719, 32.718784, 19.526354>,  <23.055321, 33.504215, 19.479258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.736719, 32.718784, 19.526354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.449209, 32.971313, 19.409874>,  <22.276703, 33.122829, 19.339985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.449209, 32.971313, 19.409874>,  <22.736719, 32.718784, 19.526354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.449209, 32.971313, 19.409874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255733, -0.629564, -0.733655,
		-0.646502, -0.452862, 0.613964,
		-0.718773, 0.631321, -0.291203,
		22.233578, 33.160709, 19.322514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.184175, 32.369011, 19.462004>,  <22.736719, 32.718784, 19.526354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.184175, 32.369011, 19.462004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102274, 32.688496, 19.235680>,  <22.053133, 32.880184, 19.099886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102274, 32.688496, 19.235680>,  <22.184175, 32.369011, 19.462004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.102274, 32.688496, 19.235680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366662, -0.598554, -0.712244,
		-0.907544, 0.061628, 0.415411,
		-0.204752, 0.798708, -0.565811,
		22.040848, 32.928108, 19.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537466, 32.143311, 19.067242>,  <22.184175, 32.369011, 19.462004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537466, 32.143311, 19.067242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711510, 32.453213, 18.883751>,  <21.815935, 32.639156, 18.773657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711510, 32.453213, 18.883751>,  <21.537466, 32.143311, 19.067242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711510, 32.453213, 18.883751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053475, -0.486349, -0.872127,
		-0.898789, 0.404000, -0.170184,
		0.435108, 0.774757, -0.458729,
		21.842043, 32.685638, 18.746132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201817, 32.151676, 18.515984>,  <21.537466, 32.143311, 19.067242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201817, 32.151676, 18.515984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530958, 32.358692, 18.422119>,  <21.728443, 32.482903, 18.365801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530958, 32.358692, 18.422119>,  <21.201817, 32.151676, 18.515984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530958, 32.358692, 18.422119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163025, -0.610589, -0.774986,
		-0.544367, 0.599444, -0.586797,
		0.822853, 0.517540, -0.234660,
		21.777815, 32.513954, 18.351721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093426, 32.222366, 17.748749>,  <21.201817, 32.151676, 18.515984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093426, 32.222366, 17.748749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479164, 32.241425, 17.852875>,  <21.710608, 32.252861, 17.915350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479164, 32.241425, 17.852875>,  <21.093426, 32.222366, 17.748749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479164, 32.241425, 17.852875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236856, -0.594135, -0.768702,
		0.118037, 0.802953, -0.584238,
		0.964348, 0.047644, 0.260314,
		21.768469, 32.255718, 17.930969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.376072, 32.225945, 17.000151>,  <21.093426, 32.222366, 17.748749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.376072, 32.225945, 17.000151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682205, 32.177498, 17.253006>,  <21.865885, 32.148430, 17.404718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682205, 32.177498, 17.253006>,  <21.376072, 32.225945, 17.000151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682205, 32.177498, 17.253006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522268, -0.457139, -0.719903,
		0.376167, 0.881110, -0.286608,
		0.765333, -0.121117, 0.632136,
		21.911804, 32.141163, 17.442646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953394, 32.420887, 16.617950>,  <21.376072, 32.225945, 17.000151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953394, 32.420887, 16.617950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106207, 32.199493, 16.913979>,  <22.197895, 32.066658, 17.091597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106207, 32.199493, 16.913979>,  <21.953394, 32.420887, 16.617950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106207, 32.199493, 16.913979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725581, -0.316324, -0.611123,
		0.572350, 0.770450, 0.280753,
		0.382031, -0.553485, 0.740072,
		22.220816, 32.033447, 17.136000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.642704, 32.634308, 16.630568>,  <21.953394, 32.420887, 16.617950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.642704, 32.634308, 16.630568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580414, 32.264530, 16.769798>,  <22.543039, 32.042664, 16.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580414, 32.264530, 16.769798>,  <22.642704, 32.634308, 16.630568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580414, 32.264530, 16.769798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737568, -0.343215, -0.581548,
		0.657071, 0.166166, 0.735286,
		-0.155727, -0.924442, 0.348075,
		22.533695, 31.987198, 16.874222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.390900, 32.378513, 16.678917>,  <22.642704, 32.634308, 16.630568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.390900, 32.378513, 16.678917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.119019, 32.085178, 16.684841>,  <22.955889, 31.909178, 16.688396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.119019, 32.085178, 16.684841>,  <23.390900, 32.378513, 16.678917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.119019, 32.085178, 16.684841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590608, -0.559163, -0.581824,
		0.434954, -0.386721, 0.813180,
		-0.679704, -0.733337, 0.014810,
		22.915108, 31.865177, 16.689283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.811085, 31.660320, 16.763409>,  <23.390900, 32.378513, 16.678917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.811085, 31.660320, 16.763409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.452814, 31.559971, 16.616535>,  <23.237852, 31.499762, 16.528410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.452814, 31.559971, 16.616535>,  <23.811085, 31.660320, 16.763409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.452814, 31.559971, 16.616535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438230, -0.357526, -0.824700,
		0.075619, -0.899576, 0.430169,
		-0.895677, -0.250876, -0.367185,
		23.184111, 31.484709, 16.506380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.888474, 30.949820, 16.522078>,  <23.811085, 31.660320, 16.763409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.888474, 30.949820, 16.522078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.566088, 31.106468, 16.344513>,  <23.372656, 31.200457, 16.237974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.566088, 31.106468, 16.344513>,  <23.888474, 30.949820, 16.522078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.566088, 31.106468, 16.344513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303169, -0.371015, -0.877745,
		-0.508443, -0.842009, 0.180296,
		-0.805962, 0.391623, -0.443911,
		23.324299, 31.223955, 16.211340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588690, 30.466906, 16.070263>,  <23.888474, 30.949820, 16.522078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588690, 30.466906, 16.070263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460897, 30.823845, 15.942737>,  <23.384222, 31.038010, 15.866220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460897, 30.823845, 15.942737>,  <23.588690, 30.466906, 16.070263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460897, 30.823845, 15.942737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074296, -0.311826, -0.947230,
		-0.944676, -0.326307, 0.033324,
		-0.319480, 0.892350, -0.318818,
		23.365053, 31.091549, 15.847092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.118637, 29.942055, 15.784124>,  <23.588690, 30.466906, 16.070263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.118637, 29.942055, 15.784124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016897, 30.314846, 15.680802>,  <22.955853, 30.538521, 15.618810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016897, 30.314846, 15.680802>,  <23.118637, 29.942055, 15.784124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.016897, 30.314846, 15.680802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808470, 0.058330, -0.585639,
		-0.530736, -0.357789, -0.768314,
		-0.254351, 0.931979, -0.258304,
		22.940592, 30.594440, 15.603312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641851, 29.899223, 16.382635>,  <23.118637, 29.942055, 15.784124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641851, 29.899223, 16.382635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036264, 29.844536, 16.420677>,  <23.272913, 29.811724, 16.443502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036264, 29.844536, 16.420677>,  <22.641851, 29.899223, 16.382635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036264, 29.844536, 16.420677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129536, -0.270648, 0.953924,
		-0.104679, -0.952921, -0.284578,
		0.986034, -0.136719, 0.095106,
		23.332075, 29.803520, 16.449209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859402, 29.729862, 16.363705>,  <22.641851, 29.899223, 16.382635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859402, 29.729862, 16.363705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819460, 29.731178, 16.761703>,  <21.795494, 29.731968, 17.000504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819460, 29.731178, 16.761703>,  <21.859402, 29.729862, 16.363705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819460, 29.731178, 16.761703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239881, 0.970419, -0.027282,
		-0.965653, -0.241405, -0.096113,
		-0.099856, 0.003289, 0.994996,
		21.789503, 29.732164, 17.060202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118254, 29.736805, 16.627832>,  <21.859402, 29.729862, 16.363705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118254, 29.736805, 16.627832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412661, 29.911175, 16.835003>,  <21.589304, 30.015797, 16.959305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412661, 29.911175, 16.835003>,  <21.118254, 29.736805, 16.627832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.412661, 29.911175, 16.835003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350321, 0.899932, -0.259610,
		-0.579270, 0.009636, 0.815079,
		0.736017, 0.435923, 0.517928,
		21.633465, 30.041952, 16.990381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473492, 29.299501, 16.687889>,  <21.118254, 29.736805, 16.627832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473492, 29.299501, 16.687889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.090328, 29.252411, 16.583157>,  <19.860430, 29.224157, 16.520317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.090328, 29.252411, 16.583157>,  <20.473492, 29.299501, 16.687889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090328, 29.252411, 16.583157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281344, 0.566372, 0.774640,
		0.057098, 0.815698, -0.575653,
		-0.957907, -0.117726, -0.261831,
		19.802956, 29.217093, 16.504608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053825, 29.935884, 16.589611>,  <20.473492, 29.299501, 16.687889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053825, 29.935884, 16.589611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813046, 29.646942, 16.725761>,  <19.668577, 29.473576, 16.807451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813046, 29.646942, 16.725761>,  <20.053825, 29.935884, 16.589611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813046, 29.646942, 16.725761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354496, 0.623681, 0.696674,
		-0.715534, 0.298700, -0.631497,
		-0.601949, -0.722357, 0.340377,
		19.632462, 29.430235, 16.827875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.297812, 30.144873, 16.675859>,  <20.053825, 29.935884, 16.589611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.297812, 30.144873, 16.675859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323271, 29.822540, 16.911346>,  <19.338547, 29.629141, 17.052639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323271, 29.822540, 16.911346>,  <19.297812, 30.144873, 16.675859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323271, 29.822540, 16.911346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505276, 0.482695, 0.715333,
		-0.860607, -0.342993, -0.376445,
		0.063646, -0.805830, 0.588717,
		19.342365, 29.580791, 17.087961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591837, 29.858416, 16.786945>,  <19.297812, 30.144873, 16.675859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591837, 29.858416, 16.786945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.825640, 29.743553, 17.090496>,  <18.965921, 29.674635, 17.272627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.825640, 29.743553, 17.090496>,  <18.591837, 29.858416, 16.786945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.825640, 29.743553, 17.090496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483633, 0.627678, 0.610016,
		-0.651501, -0.723575, 0.228003,
		0.584505, -0.287156, 0.758878,
		19.000992, 29.657406, 17.318159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138105, 29.729273, 17.305779>,  <18.591837, 29.858416, 16.786945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138105, 29.729273, 17.305779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.497105, 29.795944, 17.469101>,  <18.712503, 29.835947, 17.567095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.497105, 29.795944, 17.469101>,  <18.138105, 29.729273, 17.305779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.497105, 29.795944, 17.469101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415586, 0.629494, 0.656525,
		-0.147599, -0.758917, 0.634239,
		0.897498, 0.166678, 0.408308,
		18.766354, 29.845947, 17.591593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924192, 30.001747, 17.980003>,  <18.138105, 29.729273, 17.305779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924192, 30.001747, 17.980003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311293, 30.078411, 17.914608>,  <18.543552, 30.124409, 17.875370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311293, 30.078411, 17.914608>,  <17.924192, 30.001747, 17.980003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311293, 30.078411, 17.914608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033140, 0.740197, 0.671573,
		0.249728, -0.644496, 0.722676,
		0.967749, 0.191660, -0.163489,
		18.601618, 30.135910, 17.865561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258102, 29.936510, 18.606857>,  <17.924192, 30.001747, 17.980003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.258102, 29.936510, 18.606857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479017, 30.164913, 18.363899>,  <18.611567, 30.301956, 18.218124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479017, 30.164913, 18.363899>,  <18.258102, 29.936510, 18.606857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.479017, 30.164913, 18.363899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061291, 0.754434, 0.653508,
		0.831399, -0.323695, 0.451660,
		0.552285, 0.571009, -0.607396,
		18.644703, 30.336216, 18.181681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838245, 30.291506, 18.966757>,  <18.258102, 29.936510, 18.606857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838245, 30.291506, 18.966757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800467, 30.531548, 18.649025>,  <18.777800, 30.675571, 18.458385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800467, 30.531548, 18.649025>,  <18.838245, 30.291506, 18.966757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800467, 30.531548, 18.649025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186613, 0.773079, 0.606238,
		0.977883, 0.205489, 0.038972,
		-0.094447, 0.600102, -0.794328,
		18.772133, 30.711578, 18.410727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308861, 30.857092, 19.028255>,  <18.838245, 30.291506, 18.966757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308861, 30.857092, 19.028255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046284, 31.008701, 18.767357>,  <18.888737, 31.099667, 18.610817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046284, 31.008701, 18.767357>,  <19.308861, 30.857092, 19.028255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046284, 31.008701, 18.767357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035489, 0.879176, 0.475174,
		0.753540, 0.288778, -0.590580,
		-0.656443, 0.379022, -0.652246,
		18.849350, 31.122408, 18.571684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616402, 31.376123, 18.811136>,  <19.308861, 30.857092, 19.028255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616402, 31.376123, 18.811136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.225716, 31.440857, 18.754795>,  <18.991304, 31.479696, 18.720989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.225716, 31.440857, 18.754795>,  <19.616402, 31.376123, 18.811136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.225716, 31.440857, 18.754795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046632, 0.800963, 0.596895,
		0.209417, 0.576427, -0.789859,
		-0.976714, 0.161833, -0.140855,
		18.932701, 31.489407, 18.712538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589460, 32.097225, 18.640882>,  <19.616402, 31.376123, 18.811136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589460, 32.097225, 18.640882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232185, 31.975529, 18.773335>,  <19.017820, 31.902510, 18.852806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232185, 31.975529, 18.773335>,  <19.589460, 32.097225, 18.640882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232185, 31.975529, 18.773335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112868, 0.864479, 0.489833,
		-0.435285, 0.400140, -0.806483,
		-0.893189, -0.304244, 0.331132,
		18.964228, 31.884256, 18.872675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324314, 32.726772, 18.655745>,  <19.589460, 32.097225, 18.640882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324314, 32.726772, 18.655745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.064713, 32.488789, 18.845402>,  <18.908951, 32.345997, 18.959196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.064713, 32.488789, 18.845402>,  <19.324314, 32.726772, 18.655745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.064713, 32.488789, 18.845402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157290, 0.714701, 0.681514,
		-0.744346, 0.367729, -0.557427,
		-0.649006, -0.594960, 0.474145,
		18.870010, 32.310299, 18.987646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717916, 33.148289, 18.776001>,  <19.324314, 32.726772, 18.655745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717916, 33.148289, 18.776001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702576, 32.845509, 19.036942>,  <18.693371, 32.663841, 19.193506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702576, 32.845509, 19.036942>,  <18.717916, 33.148289, 18.776001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702576, 32.845509, 19.036942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214064, 0.643898, 0.734555,
		-0.976066, -0.111473, -0.186731,
		-0.038353, -0.756947, 0.652350,
		18.691071, 32.618423, 19.232647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.061853, 33.159733, 19.141422>,  <18.717916, 33.148289, 18.776001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.061853, 33.159733, 19.141422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.339445, 32.978062, 19.364891>,  <18.506001, 32.869061, 19.498972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.339445, 32.978062, 19.364891>,  <18.061853, 33.159733, 19.141422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.339445, 32.978062, 19.364891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111885, 0.698488, 0.706821,
		-0.711248, -0.553027, 0.433921,
		0.693980, -0.454175, 0.558674,
		18.547640, 32.841808, 19.532494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878975, 33.399765, 19.830252>,  <18.061853, 33.159733, 19.141422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878975, 33.399765, 19.830252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234756, 33.221107, 19.868992>,  <18.448225, 33.113914, 19.892237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234756, 33.221107, 19.868992>,  <17.878975, 33.399765, 19.830252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234756, 33.221107, 19.868992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198511, 0.568450, 0.798410,
		-0.411661, -0.690922, 0.594274,
		0.889454, -0.446644, 0.096853,
		18.501593, 33.087116, 19.898048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923853, 33.162067, 20.564886>,  <17.878975, 33.399765, 19.830252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923853, 33.162067, 20.564886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282879, 33.212288, 20.395836>,  <18.498295, 33.242420, 20.294407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282879, 33.212288, 20.395836>,  <17.923853, 33.162067, 20.564886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282879, 33.212288, 20.395836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320165, 0.473396, 0.820604,
		0.303100, -0.871855, 0.384706,
		0.897566, 0.125556, -0.422624,
		18.552149, 33.249954, 20.269049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.488132, 33.073250, 21.124062>,  <17.923853, 33.162067, 20.564886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.488132, 33.073250, 21.124062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691462, 33.254356, 20.831047>,  <18.813459, 33.363022, 20.655239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691462, 33.254356, 20.831047>,  <18.488132, 33.073250, 21.124062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691462, 33.254356, 20.831047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495173, 0.542273, 0.678781,
		0.704566, -0.707771, 0.051449,
		0.508321, 0.452770, -0.732536,
		18.843958, 33.390186, 20.611286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.298941, 33.056599, 21.362381>,  <18.488132, 33.073250, 21.124062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.298941, 33.056599, 21.362381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270531, 33.345821, 21.087528>,  <19.253485, 33.519356, 20.922617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270531, 33.345821, 21.087528>,  <19.298941, 33.056599, 21.362381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270531, 33.345821, 21.087528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409070, 0.649391, 0.641056,
		0.909735, -0.235553, -0.341903,
		-0.071027, 0.723053, -0.687131,
		19.249224, 33.562737, 20.881390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898766, 33.398624, 21.405285>,  <19.298941, 33.056599, 21.362381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898766, 33.398624, 21.405285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678324, 33.647720, 21.183125>,  <19.546059, 33.797180, 21.049828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678324, 33.647720, 21.183125>,  <19.898766, 33.398624, 21.405285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678324, 33.647720, 21.183125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461893, 0.781996, 0.418493,
		0.694937, -0.025903, -0.718605,
		-0.551106, 0.622744, -0.555402,
		19.512993, 33.834545, 21.016504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398407, 33.872219, 21.063503>,  <19.898766, 33.398624, 21.405285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398407, 33.872219, 21.063503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028114, 34.022427, 21.081421>,  <19.805939, 34.112553, 21.092171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028114, 34.022427, 21.081421>,  <20.398407, 33.872219, 21.063503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028114, 34.022427, 21.081421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302731, 0.664826, 0.682906,
		0.226668, 0.645747, -0.729132,
		-0.925730, 0.375523, 0.044793,
		19.750395, 34.135082, 21.094858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.544769, 34.609234, 20.893909>,  <20.398407, 33.872219, 21.063503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.544769, 34.609234, 20.893909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.191679, 34.622494, 21.081398>,  <19.979826, 34.630451, 21.193892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.191679, 34.622494, 21.081398>,  <20.544769, 34.609234, 20.893909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.191679, 34.622494, 21.081398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229251, 0.901120, 0.368004,
		-0.410173, 0.432301, -0.803041,
		-0.882724, 0.033153, 0.468720,
		19.926861, 34.632439, 21.222013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263964, 35.173649, 20.712509>,  <20.544769, 34.609234, 20.893909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263964, 35.173649, 20.712509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095181, 35.067249, 21.059196>,  <19.993912, 35.003410, 21.267208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095181, 35.067249, 21.059196>,  <20.263964, 35.173649, 20.712509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095181, 35.067249, 21.059196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316623, 0.852562, 0.415797,
		-0.849530, 0.449871, -0.275525,
		-0.421957, -0.265995, 0.866717,
		19.968594, 34.987450, 21.319212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910709, 35.846169, 20.934006>,  <20.263964, 35.173649, 20.712509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910709, 35.846169, 20.934006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.955589, 35.614410, 21.256920>,  <19.982517, 35.475357, 21.450668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.955589, 35.614410, 21.256920>,  <19.910709, 35.846169, 20.934006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.955589, 35.614410, 21.256920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193195, 0.809633, 0.554229,
		-0.974724, 0.093779, 0.202778,
		0.112201, -0.579396, 0.807287,
		19.989250, 35.440590, 21.499105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.518705, 36.152863, 21.420660>,  <19.910709, 35.846169, 20.934006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.518705, 36.152863, 21.420660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768042, 35.920208, 21.629715>,  <19.917643, 35.780617, 21.755148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768042, 35.920208, 21.629715>,  <19.518705, 36.152863, 21.420660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768042, 35.920208, 21.629715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197296, 0.763734, 0.614642,
		-0.756653, -0.280016, 0.590819,
		0.623338, -0.581637, 0.522635,
		19.955044, 35.745716, 21.786505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.343607, 36.331600, 22.054508>,  <19.518705, 36.152863, 21.420660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.343607, 36.331600, 22.054508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700447, 36.151958, 22.074356>,  <19.914551, 36.044174, 22.086264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700447, 36.151958, 22.074356>,  <19.343607, 36.331600, 22.054508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700447, 36.151958, 22.074356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325875, 0.715580, 0.617860,
		-0.312990, -0.535024, 0.784721,
		0.892101, -0.449104, 0.049619,
		19.968077, 36.017227, 22.089241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400129, 36.199703, 22.844723>,  <19.343607, 36.331600, 22.054508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400129, 36.199703, 22.844723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756901, 36.201733, 22.663864>,  <19.970964, 36.202950, 22.555349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756901, 36.201733, 22.663864>,  <19.400129, 36.199703, 22.844723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756901, 36.201733, 22.663864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241798, 0.839612, 0.486400,
		0.382097, -0.543162, 0.747647,
		0.891928, 0.005073, -0.452148,
		20.024479, 36.203255, 22.528219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058867, 35.869858, 23.292639>,  <19.400129, 36.199703, 22.844723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058867, 35.869858, 23.292639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.758196, 36.113750, 23.393204>,  <18.577793, 36.260086, 23.453543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.758196, 36.113750, 23.393204>,  <19.058867, 35.869858, 23.292639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.758196, 36.113750, 23.393204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353765, 0.694467, -0.626551,
		-0.556628, -0.382022, -0.737716,
		-0.751675, 0.609734, 0.251414,
		18.532694, 36.296669, 23.468628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.695486, 36.139915, 22.726233>,  <19.058867, 35.869858, 23.292639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.695486, 36.139915, 22.726233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568720, 36.411026, 22.991619>,  <18.492661, 36.573692, 23.150850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568720, 36.411026, 22.991619>,  <18.695486, 36.139915, 22.726233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568720, 36.411026, 22.991619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111391, 0.721279, -0.683629,
		-0.941890, -0.142749, -0.304083,
		-0.316917, 0.677775, 0.663464,
		18.473644, 36.614357, 23.190659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190838, 36.496342, 22.376038>,  <18.695486, 36.139915, 22.726233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190838, 36.496342, 22.376038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342333, 36.726273, 22.666180>,  <18.433229, 36.864231, 22.840265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342333, 36.726273, 22.666180>,  <18.190838, 36.496342, 22.376038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342333, 36.726273, 22.666180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051417, 0.795596, -0.603642,
		-0.924076, 0.191325, 0.330876,
		0.378736, 0.574823, 0.725354,
		18.455954, 36.898720, 22.883785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748369, 37.111290, 22.569441>,  <18.190838, 36.496342, 22.376038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748369, 37.111290, 22.569441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126261, 37.213074, 22.652138>,  <18.352995, 37.274143, 22.701756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126261, 37.213074, 22.652138>,  <17.748369, 37.111290, 22.569441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126261, 37.213074, 22.652138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054973, 0.744598, -0.665246,
		-0.323218, 0.617110, 0.717430,
		0.944727, 0.254458, 0.206743,
		18.409679, 37.289410, 22.714161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773994, 37.781620, 22.650719>,  <17.748369, 37.111290, 22.569441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773994, 37.781620, 22.650719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.156927, 37.704582, 22.564537>,  <18.386686, 37.658360, 22.512829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.156927, 37.704582, 22.564537>,  <17.773994, 37.781620, 22.650719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.156927, 37.704582, 22.564537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045279, 0.836299, -0.546401,
		0.285418, 0.513332, 0.809337,
		0.957333, -0.192599, -0.215452,
		18.444126, 37.646801, 22.499901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.691460, 27.343519, 25.406952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.886129, 27.495659, 25.721527>,  <32.002930, 27.586943, 25.910273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.886129, 27.495659, 25.721527>,  <31.691460, 27.343519, 25.406952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886129, 27.495659, 25.721527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170712, 0.924292, -0.341381,
		-0.856743, 0.031886, 0.514758,
		0.486672, 0.380351, 0.786437,
		32.032131, 27.609764, 25.957458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291742, 28.014685, 25.637482>,  <31.691460, 27.343519, 25.406952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291742, 28.014685, 25.637482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.656931, 28.056099, 25.795349>,  <31.876045, 28.080948, 25.890070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.656931, 28.056099, 25.795349>,  <31.291742, 28.014685, 25.637482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656931, 28.056099, 25.795349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017661, 0.976391, -0.215285,
		-0.407638, 0.189579, 0.893247,
		0.912973, 0.103534, 0.394666,
		31.930822, 28.087160, 25.913750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296772, 28.500523, 26.290588>,  <31.291742, 28.014685, 25.637482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296772, 28.500523, 26.290588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633192, 28.481636, 26.075031>,  <31.835045, 28.470304, 25.945698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633192, 28.481636, 26.075031>,  <31.296772, 28.500523, 26.290588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633192, 28.481636, 26.075031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089857, 0.970150, -0.225243,
		0.533440, 0.237864, 0.811703,
		0.841051, -0.047216, -0.538891,
		31.885508, 28.467472, 25.913364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667118, 29.131752, 26.500845>,  <31.296772, 28.500523, 26.290588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667118, 29.131752, 26.500845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854364, 29.027752, 26.163025>,  <31.966713, 28.965351, 25.960333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854364, 29.027752, 26.163025>,  <31.667118, 29.131752, 26.500845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854364, 29.027752, 26.163025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142685, 0.965433, -0.218128,
		0.872071, -0.018395, 0.489034,
		0.468117, -0.260001, -0.844551,
		31.994799, 28.949751, 25.909660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255043, 29.682861, 26.413025>,  <31.667118, 29.131752, 26.500845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255043, 29.682861, 26.413025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.228996, 29.501114, 26.057652>,  <32.213367, 29.392065, 25.844427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.228996, 29.501114, 26.057652>,  <32.255043, 29.682861, 26.413025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228996, 29.501114, 26.057652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250393, 0.854397, -0.455313,
		0.965952, -0.252106, 0.058133,
		-0.065118, -0.454367, -0.888431,
		32.209461, 29.364803, 25.791122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904968, 29.915443, 26.014032>,  <32.255043, 29.682861, 26.413025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904968, 29.915443, 26.014032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.598480, 29.798302, 25.785244>,  <32.414589, 29.728016, 25.647972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.598480, 29.798302, 25.785244>,  <32.904968, 29.915443, 26.014032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598480, 29.798302, 25.785244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232858, 0.703067, -0.671918,
		0.598907, -0.648022, -0.470508,
		-0.766216, -0.292855, -0.571969,
		32.368614, 29.710445, 25.613653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182774, 29.928551, 25.378456>,  <32.904968, 29.915443, 26.014032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182774, 29.928551, 25.378456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.791683, 29.954708, 25.298687>,  <32.557030, 29.970402, 25.250826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.791683, 29.954708, 25.298687>,  <33.182774, 29.928551, 25.378456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791683, 29.954708, 25.298687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159599, 0.848727, -0.504173,
		0.136284, -0.524772, -0.840262,
		-0.977729, 0.065394, -0.199421,
		32.498363, 29.974327, 25.238861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129272, 30.136709, 24.609386>,  <33.182774, 29.928551, 25.378456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129272, 30.136709, 24.609386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.776676, 30.230228, 24.773491>,  <32.565117, 30.286339, 24.871954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.776676, 30.230228, 24.773491>,  <33.129272, 30.136709, 24.609386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776676, 30.230228, 24.773491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034980, 0.834108, -0.550492,
		-0.470906, -0.499603, -0.727079,
		-0.881489, 0.233797, 0.410263,
		32.512230, 30.300367, 24.896570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704575, 30.318150, 24.022570>,  <33.129272, 30.136709, 24.609386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704575, 30.318150, 24.022570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.456211, 30.451618, 24.306297>,  <32.307194, 30.531700, 24.476534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.456211, 30.451618, 24.306297>,  <32.704575, 30.318150, 24.022570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456211, 30.451618, 24.306297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246278, 0.776025, -0.580632,
		-0.744189, -0.535210, -0.399666,
		-0.620911, 0.333671, 0.709320,
		32.269939, 30.551720, 24.519093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089272, 30.507490, 23.709116>,  <32.704575, 30.318150, 24.022570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089272, 30.507490, 23.709116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.050064, 30.718685, 24.046547>,  <32.026539, 30.845402, 24.249006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.050064, 30.718685, 24.046547>,  <32.089272, 30.507490, 23.709116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050064, 30.718685, 24.046547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378747, 0.764081, -0.522237,
		-0.920296, -0.370690, 0.125079,
		-0.098017, 0.527985, 0.843578,
		32.020660, 30.877081, 24.299620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468254, 30.859632, 23.725357>,  <32.089272, 30.507490, 23.709116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468254, 30.859632, 23.725357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650278, 31.081062, 24.004349>,  <31.759493, 31.213921, 24.171743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650278, 31.081062, 24.004349>,  <31.468254, 30.859632, 23.725357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650278, 31.081062, 24.004349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408158, 0.825818, -0.389141,
		-0.791409, -0.107599, 0.601743,
		0.455059, 0.553576, 0.697478,
		31.786797, 31.247135, 24.213593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989002, 31.274048, 24.002399>,  <31.468254, 30.859632, 23.725357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989002, 31.274048, 24.002399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.320383, 31.469982, 24.111008>,  <31.519213, 31.587543, 24.176172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.320383, 31.469982, 24.111008>,  <30.989002, 31.274048, 24.002399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320383, 31.469982, 24.111008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490216, 0.868672, -0.071393,
		-0.270835, -0.073958, 0.959781,
		0.828454, 0.489836, 0.271522,
		31.568920, 31.616932, 24.192465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728367, 31.756506, 24.486063>,  <30.989002, 31.274048, 24.002399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728367, 31.756506, 24.486063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.078627, 31.865471, 24.326550>,  <31.288782, 31.930849, 24.230843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.078627, 31.865471, 24.326550>,  <30.728367, 31.756506, 24.486063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078627, 31.865471, 24.326550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377533, 0.901053, -0.213478,
		0.301170, 0.337485, 0.891852,
		0.875651, 0.272411, -0.398782,
		31.341322, 31.947195, 24.206915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915213, 32.377731, 24.870260>,  <30.728367, 31.756506, 24.486063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915213, 32.377731, 24.870260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.111002, 32.359848, 24.521912>,  <31.228476, 32.349117, 24.312902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.111002, 32.359848, 24.521912>,  <30.915213, 32.377731, 24.870260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111002, 32.359848, 24.521912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368869, 0.894319, -0.253237,
		0.790159, 0.445190, 0.421253,
		0.489473, -0.044710, -0.870871,
		31.257843, 32.346436, 24.260651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027372, 33.125858, 24.678810>,  <30.915213, 32.377731, 24.870260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027372, 33.125858, 24.678810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.117655, 32.947525, 24.332333>,  <31.171824, 32.840527, 24.124447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.117655, 32.947525, 24.332333>,  <31.027372, 33.125858, 24.678810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117655, 32.947525, 24.332333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004244, 0.889579, -0.456761,
		0.974186, 0.099417, 0.202674,
		0.225705, -0.445830, -0.866194,
		31.185366, 32.813774, 24.072474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566172, 33.540264, 24.399191>,  <31.027372, 33.125858, 24.678810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566172, 33.540264, 24.399191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404814, 33.346458, 24.088703>,  <31.307999, 33.230175, 23.902411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404814, 33.346458, 24.088703>,  <31.566172, 33.540264, 24.399191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404814, 33.346458, 24.088703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179063, 0.873701, -0.452308,
		0.897335, -0.043466, -0.439205,
		-0.403394, -0.484517, -0.776219,
		31.283794, 33.201103, 23.855837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944691, 33.703014, 23.868919>,  <31.566172, 33.540264, 24.399191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944691, 33.703014, 23.868919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596403, 33.586285, 23.710583>,  <31.387430, 33.516247, 23.615580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596403, 33.586285, 23.710583>,  <31.944691, 33.703014, 23.868919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596403, 33.586285, 23.710583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044879, 0.848706, -0.526957,
		0.489731, -0.441066, -0.752081,
		-0.870718, -0.291820, -0.395843,
		31.335188, 33.498737, 23.591829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860075, 34.081085, 23.252445>,  <31.944691, 33.703014, 23.868919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860075, 34.081085, 23.252445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.483637, 33.946857, 23.269119>,  <31.257774, 33.866322, 23.279123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.483637, 33.946857, 23.269119>,  <31.860075, 34.081085, 23.252445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483637, 33.946857, 23.269119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323095, 0.855982, -0.403615,
		0.099755, -0.393309, -0.913979,
		-0.941094, -0.335564, 0.041688,
		31.201309, 33.846188, 23.281626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537642, 33.874493, 22.525572>,  <31.860075, 34.081085, 23.252445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537642, 33.874493, 22.525572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.263731, 33.986259, 22.794796>,  <31.099384, 34.053318, 22.956329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.263731, 33.986259, 22.794796>,  <31.537642, 33.874493, 22.525572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263731, 33.986259, 22.794796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200258, 0.815874, -0.542445,
		-0.700697, -0.506240, -0.502738,
		-0.684778, 0.279413, 0.673059,
		31.058298, 34.070084, 22.996714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055500, 34.078991, 22.082199>,  <31.537642, 33.874493, 22.525572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055500, 34.078991, 22.082199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.938835, 34.213821, 22.440262>,  <30.868835, 34.294720, 22.655100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.938835, 34.213821, 22.440262>,  <31.055500, 34.078991, 22.082199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938835, 34.213821, 22.440262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352111, 0.832297, -0.428135,
		-0.889354, -0.440066, -0.124059,
		-0.291662, 0.337081, 0.895159,
		30.851337, 34.314945, 22.708809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263630, 34.321308, 21.982565>,  <31.055500, 34.078991, 22.082199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263630, 34.321308, 21.982565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.423727, 34.531452, 22.282913>,  <30.519785, 34.657539, 22.463121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.423727, 34.531452, 22.282913>,  <30.263630, 34.321308, 21.982565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423727, 34.531452, 22.282913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506509, 0.809653, -0.296496,
		-0.763710, -0.261652, 0.590156,
		0.400243, 0.525357, 0.750870,
		30.543800, 34.689060, 22.508175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710394, 34.840717, 22.182070>,  <30.263630, 34.321308, 21.982565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710394, 34.840717, 22.182070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.052374, 34.975250, 22.340027>,  <30.257561, 35.055969, 22.434801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.052374, 34.975250, 22.340027>,  <29.710394, 34.840717, 22.182070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052374, 34.975250, 22.340027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259044, 0.936409, -0.236715,
		-0.449399, 0.100084, 0.887707,
		0.854949, 0.336335, 0.394895,
		30.308859, 35.076149, 22.458496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134684, 34.626141, 21.898554>,  <29.710394, 34.840717, 22.182070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134684, 34.626141, 21.898554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.736820, 34.585190, 21.903831>,  <28.498102, 34.560619, 21.906998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.736820, 34.585190, 21.903831>,  <29.134684, 34.626141, 21.898554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736820, 34.585190, 21.903831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093398, -0.838190, 0.537323,
		-0.043951, 0.535685, 0.843274,
		-0.994658, -0.102376, 0.013193,
		28.438423, 34.554478, 21.907789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945292, 34.463413, 22.617931>,  <29.134684, 34.626141, 21.898554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945292, 34.463413, 22.617931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.633230, 34.344929, 22.397526>,  <28.445993, 34.273838, 22.265282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.633230, 34.344929, 22.397526>,  <28.945292, 34.463413, 22.617931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633230, 34.344929, 22.397526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147548, -0.768821, 0.622209,
		-0.607939, 0.566720, 0.556092,
		-0.780154, -0.296215, -0.551014,
		28.399183, 34.256065, 22.232222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345184, 34.319992, 23.021721>,  <28.945292, 34.463413, 22.617931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345184, 34.319992, 23.021721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.291679, 34.106167, 22.687931>,  <28.259577, 33.977871, 22.487658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.291679, 34.106167, 22.687931>,  <28.345184, 34.319992, 23.021721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291679, 34.106167, 22.687931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126661, -0.825914, 0.549384,
		-0.982886, 0.179183, 0.042768,
		-0.133763, -0.534565, -0.834474,
		28.251551, 33.945797, 22.437590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134817, 33.766289, 23.291983>,  <28.345184, 34.319992, 23.021721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134817, 33.766289, 23.291983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.180645, 33.627640, 22.919590>,  <28.208141, 33.544449, 22.696156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.180645, 33.627640, 22.919590>,  <28.134817, 33.766289, 23.291983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180645, 33.627640, 22.919590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245359, -0.917991, 0.311595,
		-0.962638, 0.192725, -0.190221,
		0.114569, -0.346626, -0.930980,
		28.215015, 33.523651, 22.640295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551451, 33.408840, 23.065807>,  <28.134817, 33.766289, 23.291983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551451, 33.408840, 23.065807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.844778, 33.276825, 22.828045>,  <28.020775, 33.197617, 22.685389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.844778, 33.276825, 22.828045>,  <27.551451, 33.408840, 23.065807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844778, 33.276825, 22.828045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200722, -0.940398, 0.274522,
		-0.649580, -0.082002, -0.755858,
		0.733319, -0.330041, -0.594404,
		28.064774, 33.177814, 22.649723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331841, 32.814304, 22.729574>,  <27.551451, 33.408840, 23.065807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331841, 32.814304, 22.729574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.731661, 32.802761, 22.726372>,  <27.971554, 32.795837, 22.724449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.731661, 32.802761, 22.726372>,  <27.331841, 32.814304, 22.729574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731661, 32.802761, 22.726372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025074, -0.952644, 0.303053,
		-0.016374, -0.302717, -0.952940,
		0.999552, -0.028856, -0.008008,
		28.031527, 32.794106, 22.723969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489058, 32.136353, 22.544100>,  <27.331841, 32.814304, 22.729574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489058, 32.136353, 22.544100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.823235, 32.282276, 22.708515>,  <28.023741, 32.369831, 22.807165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.823235, 32.282276, 22.708515>,  <27.489058, 32.136353, 22.544100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823235, 32.282276, 22.708515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251683, -0.918843, 0.303947,
		0.488562, -0.150478, -0.859455,
		0.835441, 0.364808, 0.411039,
		28.073868, 32.391720, 22.831827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006552, 31.667252, 22.323994>,  <27.489058, 32.136353, 22.544100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006552, 31.667252, 22.323994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158520, 31.841309, 22.650505>,  <28.249701, 31.945744, 22.846413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158520, 31.841309, 22.650505>,  <28.006552, 31.667252, 22.323994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158520, 31.841309, 22.650505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296186, -0.893211, 0.338301,
		0.876319, 0.113243, -0.468231,
		0.379919, 0.435143, 0.816279,
		28.272495, 31.971851, 22.895390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655735, 31.318407, 22.398243>,  <28.006552, 31.667252, 22.323994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655735, 31.318407, 22.398243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.583921, 31.496918, 22.748924>,  <28.540833, 31.604023, 22.959333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.583921, 31.496918, 22.748924>,  <28.655735, 31.318407, 22.398243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583921, 31.496918, 22.748924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461591, -0.748773, 0.475681,
		0.868735, 0.490079, -0.071565,
		-0.179535, 0.446275, 0.876702,
		28.530062, 31.630800, 23.011934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294600, 31.239252, 22.768721>,  <28.655735, 31.318407, 22.398243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294600, 31.239252, 22.768721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.994299, 31.302689, 23.025227>,  <28.814119, 31.340752, 23.179131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.994299, 31.302689, 23.025227>,  <29.294600, 31.239252, 22.768721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994299, 31.302689, 23.025227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292322, -0.790772, 0.537800,
		0.592385, 0.591210, 0.547313,
		-0.750752, 0.158593, 0.641265,
		28.769073, 31.350267, 23.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570253, 31.249146, 23.426659>,  <29.294600, 31.239252, 22.768721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570253, 31.249146, 23.426659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.181578, 31.185547, 23.496563>,  <28.948372, 31.147387, 23.538506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.181578, 31.185547, 23.496563>,  <29.570253, 31.249146, 23.426659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181578, 31.185547, 23.496563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230246, -0.803167, 0.549463,
		0.053000, 0.574145, 0.817037,
		-0.971688, -0.158997, 0.174762,
		28.890072, 31.137848, 23.548992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680729, 30.896370, 24.125826>,  <29.570253, 31.249146, 23.426659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680729, 30.896370, 24.125826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.325710, 30.840057, 23.950352>,  <29.112700, 30.806271, 23.845068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.325710, 30.840057, 23.950352>,  <29.680729, 30.896370, 24.125826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325710, 30.840057, 23.950352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004039, -0.954512, 0.298145,
		-0.460702, 0.262845, 0.847741,
		-0.887545, -0.140780, -0.438684,
		29.059446, 30.797823, 23.818747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175989, 30.634497, 24.665577>,  <29.680729, 30.896370, 24.125826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175989, 30.634497, 24.665577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.088835, 30.511539, 24.295055>,  <29.036543, 30.437765, 24.072742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.088835, 30.511539, 24.295055>,  <29.175989, 30.634497, 24.665577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088835, 30.511539, 24.295055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025713, -0.950583, 0.309403,
		-0.975636, 0.043596, 0.215022,
		-0.217885, -0.307393, -0.926302,
		29.023470, 30.419321, 24.017164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515078, 30.313898, 24.735771>,  <29.175989, 30.634497, 24.665577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515078, 30.313898, 24.735771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.716799, 30.179455, 24.417599>,  <28.837831, 30.098789, 24.226696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.716799, 30.179455, 24.417599>,  <28.515078, 30.313898, 24.735771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716799, 30.179455, 24.417599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079293, -0.935275, 0.344926,
		-0.859877, -0.110877, -0.498315,
		0.504306, -0.336107, -0.795429,
		28.868090, 30.078623, 24.178970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128939, 29.831308, 24.473993>,  <28.515078, 30.313898, 24.735771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128939, 29.831308, 24.473993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.494579, 29.732403, 24.345448>,  <28.713964, 29.673059, 24.268320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.494579, 29.732403, 24.345448>,  <28.128939, 29.831308, 24.473993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494579, 29.732403, 24.345448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137677, -0.934737, 0.327583,
		-0.381392, -0.255200, -0.888489,
		0.914103, -0.247263, -0.321366,
		28.768810, 29.658224, 24.249037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128704, 29.071112, 24.369581>,  <28.128939, 29.831308, 24.473993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128704, 29.071112, 24.369581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515814, 29.171528, 24.361717>,  <28.748079, 29.231777, 24.356998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515814, 29.171528, 24.361717>,  <28.128704, 29.071112, 24.369581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515814, 29.171528, 24.361717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246334, -0.927641, 0.280717,
		0.052234, -0.276514, -0.959589,
		0.967776, 0.251043, -0.019661,
		28.806147, 29.246841, 24.355820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422594, 28.488173, 24.067911>,  <28.128704, 29.071112, 24.369581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422594, 28.488173, 24.067911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.715084, 28.667942, 24.273174>,  <28.890577, 28.775805, 24.396332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.715084, 28.667942, 24.273174>,  <28.422594, 28.488173, 24.067911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715084, 28.667942, 24.273174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302202, -0.887857, 0.346963,
		0.611544, -0.098631, -0.785039,
		0.731224, 0.449423, 0.513158,
		28.934452, 28.802769, 24.427122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988665, 28.113297, 23.929844>,  <28.422594, 28.488173, 24.067911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988665, 28.113297, 23.929844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.115650, 28.314884, 24.251148>,  <29.191841, 28.435837, 24.443932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.115650, 28.314884, 24.251148>,  <28.988665, 28.113297, 23.929844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115650, 28.314884, 24.251148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492955, -0.811336, 0.314211,
		0.810068, 0.296220, -0.506006,
		0.317466, 0.503971, 0.803261,
		29.210890, 28.466076, 24.492126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.766613, 27.980173, 24.070560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.626129, 28.076599, 24.432453>,  <29.541840, 28.134455, 24.649590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.626129, 28.076599, 24.432453>,  <29.766613, 27.980173, 24.070560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626129, 28.076599, 24.432453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384571, -0.843877, 0.374135,
		0.853673, 0.479334, 0.203671,
		-0.351209, 0.241063, 0.904732,
		29.520767, 28.148918, 24.703873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259144, 27.759357, 24.524725>,  <29.766613, 27.980173, 24.070560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259144, 27.759357, 24.524725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948746, 27.798344, 24.773991>,  <29.762506, 27.821735, 24.923550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948746, 27.798344, 24.773991>,  <30.259144, 27.759357, 24.524725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948746, 27.798344, 24.773991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363135, -0.738784, 0.567742,
		0.515720, 0.666857, 0.537898,
		-0.775993, 0.097466, 0.623165,
		29.715948, 27.827583, 24.960939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506052, 27.887148, 25.236776>,  <30.259144, 27.759357, 24.524725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506052, 27.887148, 25.236776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147749, 27.709538, 25.245354>,  <29.932768, 27.602972, 25.250500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147749, 27.709538, 25.245354>,  <30.506052, 27.887148, 25.236776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147749, 27.709538, 25.245354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393845, -0.770305, 0.501513,
		-0.206166, 0.457680, 0.864884,
		-0.895757, -0.444026, 0.021445,
		29.879023, 27.576330, 25.251787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470087, 27.589964, 25.907928>,  <30.506052, 27.887148, 25.236776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470087, 27.589964, 25.907928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166874, 27.409962, 25.719086>,  <29.984947, 27.301960, 25.605780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166874, 27.409962, 25.719086>,  <30.470087, 27.589964, 25.907928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166874, 27.409962, 25.719086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178989, -0.839586, 0.512892,
		-0.627178, 0.304286, 0.716978,
		-0.758031, -0.450005, -0.472106,
		29.939465, 27.274960, 25.577454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989828, 27.376308, 26.420584>,  <30.470087, 27.589964, 25.907928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989828, 27.376308, 26.420584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.956358, 27.141106, 26.098778>,  <29.936275, 26.999985, 25.905693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.956358, 27.141106, 26.098778>,  <29.989828, 27.376308, 26.420584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956358, 27.141106, 26.098778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098745, -0.808267, 0.580478,
		-0.991589, -0.030871, 0.125695,
		-0.083675, -0.588007, -0.804516,
		29.931255, 26.964705, 25.857424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611650, 26.851639, 26.706644>,  <29.989828, 27.376308, 26.420584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611650, 26.851639, 26.706644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701052, 26.687889, 26.352818>,  <29.754692, 26.589640, 26.140522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701052, 26.687889, 26.352818>,  <29.611650, 26.851639, 26.706644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701052, 26.687889, 26.352818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020231, -0.905381, 0.424117,
		-0.974493, -0.112688, -0.194074,
		0.223503, -0.409373, -0.884568,
		29.768103, 26.565077, 26.087448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181795, 26.265537, 26.571026>,  <29.611650, 26.851639, 26.706644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181795, 26.265537, 26.571026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507391, 26.173023, 26.357887>,  <29.702749, 26.117514, 26.230003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507391, 26.173023, 26.357887>,  <29.181795, 26.265537, 26.571026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507391, 26.173023, 26.357887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068635, -0.949183, 0.307151,
		-0.576810, -0.213446, -0.788499,
		0.813990, -0.231286, -0.532848,
		29.751587, 26.103638, 26.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098040, 25.694839, 26.052963>,  <29.181795, 26.265537, 26.571026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098040, 25.694839, 26.052963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489038, 25.692558, 26.137314>,  <29.723637, 25.691189, 26.187923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489038, 25.692558, 26.137314>,  <29.098040, 25.694839, 26.052963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489038, 25.692558, 26.137314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084344, -0.926826, 0.365896,
		0.193358, -0.375448, -0.906450,
		0.977496, -0.005704, 0.210876,
		29.782288, 25.690847, 26.200577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429174, 25.038111, 25.722178>,  <29.098040, 25.694839, 26.052963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429174, 25.038111, 25.722178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.659388, 25.166508, 26.023037>,  <29.797516, 25.243546, 26.203552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.659388, 25.166508, 26.023037>,  <29.429174, 25.038111, 25.722178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659388, 25.166508, 26.023037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110120, -0.880948, 0.460222,
		0.810330, -0.347700, -0.471668,
		0.575534, 0.320992, 0.752147,
		29.832048, 25.262806, 26.248680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720064, 24.420624, 26.026417>,  <29.429174, 25.038111, 25.722178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720064, 24.420624, 26.026417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810883, 24.686443, 26.311184>,  <29.865374, 24.845936, 26.482044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810883, 24.686443, 26.311184>,  <29.720064, 24.420624, 26.026417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810883, 24.686443, 26.311184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013217, -0.733043, 0.680053,
		0.973795, -0.144993, -0.175217,
		0.227045, 0.664548, 0.711917,
		29.878996, 24.885807, 26.524759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064192, 24.033264, 26.496815>,  <29.720064, 24.420624, 26.026417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064192, 24.033264, 26.496815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.994007, 24.365505, 26.708214>,  <29.951897, 24.564850, 26.835054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.994007, 24.365505, 26.708214>,  <30.064192, 24.033264, 26.496815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994007, 24.365505, 26.708214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034753, -0.541718, 0.839841,
		0.983873, 0.128993, 0.123917,
		-0.175462, 0.830603, 0.528499,
		29.941368, 24.614687, 26.866764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478134, 23.992706, 27.110292>,  <30.064192, 24.033264, 26.496815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478134, 23.992706, 27.110292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188826, 24.258934, 27.183941>,  <30.015242, 24.418671, 27.228130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188826, 24.258934, 27.183941>,  <30.478134, 23.992706, 27.110292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188826, 24.258934, 27.183941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159226, -0.420169, 0.893367,
		0.671959, 0.616828, 0.409871,
		-0.723269, 0.665568, 0.184121,
		29.971846, 24.458605, 27.239178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667017, 24.354820, 27.664204>,  <30.478134, 23.992706, 27.110292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667017, 24.354820, 27.664204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.270937, 24.409000, 27.650574>,  <30.033289, 24.441507, 27.642395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.270937, 24.409000, 27.650574>,  <30.667017, 24.354820, 27.664204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270937, 24.409000, 27.650574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093248, -0.459471, 0.883284,
		0.103983, 0.877804, 0.467598,
		-0.990198, 0.135449, -0.034076,
		29.973877, 24.449635, 27.640350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404242, 24.589716, 28.289417>,  <30.667017, 24.354820, 27.664204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404242, 24.589716, 28.289417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066803, 24.441605, 28.133862>,  <29.864340, 24.352737, 28.040527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066803, 24.441605, 28.133862>,  <30.404242, 24.589716, 28.289417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066803, 24.441605, 28.133862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119855, -0.576112, 0.808535,
		-0.523427, 0.728690, 0.441628,
		-0.843599, -0.370278, -0.388890,
		29.813723, 24.330521, 28.017195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958481, 24.433483, 28.936956>,  <30.404242, 24.589716, 28.289417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958481, 24.433483, 28.936956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.791908, 24.214138, 28.646885>,  <29.691965, 24.082531, 28.472841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.791908, 24.214138, 28.646885>,  <29.958481, 24.433483, 28.936956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791908, 24.214138, 28.646885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329964, -0.652089, 0.682572,
		-0.847178, 0.523526, 0.090609,
		-0.416429, -0.548362, -0.725180,
		29.666979, 24.049629, 28.429331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416025, 24.216988, 29.302896>,  <29.958481, 24.433483, 28.936956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416025, 24.216988, 29.302896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459675, 23.978260, 28.984928>,  <29.485865, 23.835024, 28.794147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459675, 23.978260, 28.984928>,  <29.416025, 24.216988, 29.302896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459675, 23.978260, 28.984928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271144, -0.787243, 0.553831,
		-0.956333, 0.155101, -0.247732,
		0.109125, -0.596818, -0.794921,
		29.492413, 23.799215, 28.746452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785025, 23.844934, 29.184534>,  <29.416025, 24.216988, 29.302896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785025, 23.844934, 29.184534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045815, 23.590481, 29.019482>,  <29.202288, 23.437809, 28.920450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045815, 23.590481, 29.019482>,  <28.785025, 23.844934, 29.184534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045815, 23.590481, 29.019482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282412, -0.708767, 0.646446,
		-0.703672, -0.304947, -0.641758,
		0.651989, -0.636126, -0.412619,
		29.241407, 23.399641, 28.895693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400291, 23.218616, 29.137388>,  <28.785025, 23.844934, 29.184534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400291, 23.218616, 29.137388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777559, 23.090664, 29.101368>,  <29.003920, 23.013893, 29.079756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777559, 23.090664, 29.101368>,  <28.400291, 23.218616, 29.137388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777559, 23.090664, 29.101368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226712, -0.817501, 0.529428,
		-0.242968, -0.478925, -0.843562,
		0.943169, -0.319880, -0.090049,
		29.060511, 22.994699, 29.074354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403364, 22.490812, 29.121040>,  <28.400291, 23.218616, 29.137388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403364, 22.490812, 29.121040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792271, 22.535706, 29.203114>,  <29.025616, 22.562641, 29.252357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792271, 22.535706, 29.203114>,  <28.403364, 22.490812, 29.121040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792271, 22.535706, 29.203114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046750, -0.766353, 0.640716,
		0.229154, -0.632539, -0.739853,
		0.972267, 0.112235, 0.205183,
		29.083950, 22.569376, 29.264669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766588, 21.777906, 29.126064>,  <28.403364, 22.490812, 29.121040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766588, 21.777906, 29.126064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028419, 22.010124, 29.319763>,  <29.185518, 22.149454, 29.435982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028419, 22.010124, 29.319763>,  <28.766588, 21.777906, 29.126064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028419, 22.010124, 29.319763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154936, -0.729966, 0.665691,
		0.739948, -0.360719, -0.567766,
		0.654578, 0.580544, 0.484248,
		29.224792, 22.184288, 29.465038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330082, 21.400143, 29.216099>,  <28.766588, 21.777906, 29.126064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330082, 21.400143, 29.216099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337292, 21.674400, 29.507183>,  <29.341618, 21.838955, 29.681833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337292, 21.674400, 29.507183>,  <29.330082, 21.400143, 29.216099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337292, 21.674400, 29.507183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043438, -0.727681, 0.684539,
		0.998894, 0.019273, -0.042898,
		0.018023, 0.685645, 0.727713,
		29.342699, 21.880095, 29.725496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831196, 21.208725, 29.741011>,  <29.330082, 21.400143, 29.216099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831196, 21.208725, 29.741011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646641, 21.485725, 29.962845>,  <29.535908, 21.651926, 30.095945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646641, 21.485725, 29.962845>,  <29.831196, 21.208725, 29.741011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646641, 21.485725, 29.962845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181970, -0.537939, 0.823109,
		0.868338, 0.480689, 0.122183,
		-0.461386, 0.692503, 0.554584,
		29.508224, 21.693476, 30.129221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215351, 21.462248, 30.287289>,  <29.831196, 21.208725, 29.741011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215351, 21.462248, 30.287289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834959, 21.503403, 30.403942>,  <29.606724, 21.528095, 30.473934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834959, 21.503403, 30.403942>,  <30.215351, 21.462248, 30.287289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834959, 21.503403, 30.403942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213105, -0.465359, 0.859085,
		0.224104, 0.879122, 0.420622,
		-0.950980, 0.102888, 0.291634,
		29.549665, 21.534269, 30.491432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844551, 21.317188, 30.124067>,  <30.215351, 21.462248, 30.287289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844551, 21.317188, 30.124067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240421, 21.267769, 30.095009>,  <31.477943, 21.238117, 30.077574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240421, 21.267769, 30.095009>,  <30.844551, 21.317188, 30.124067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240421, 21.267769, 30.095009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050339, -0.174921, 0.983295,
		-0.134191, -0.976800, -0.166896,
		0.989676, -0.123548, -0.072644,
		31.537325, 21.230703, 30.073215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096821, 21.411547, 30.859110>,  <30.844551, 21.317188, 30.124067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096821, 21.411547, 30.859110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431093, 21.526466, 31.046341>,  <31.631657, 21.595419, 31.158680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431093, 21.526466, 31.046341>,  <31.096821, 21.411547, 30.859110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431093, 21.526466, 31.046341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077990, 0.781552, -0.618946,
		-0.543652, 0.553746, 0.630720,
		0.835679, 0.287301, 0.468079,
		31.681797, 21.612658, 31.186764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992300, 22.051424, 30.903006>,  <31.096821, 21.411547, 30.859110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992300, 22.051424, 30.903006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384666, 22.024632, 30.976017>,  <31.620087, 22.008556, 31.019825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384666, 22.024632, 30.976017>,  <30.992300, 22.051424, 30.903006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384666, 22.024632, 30.976017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169132, 0.757034, -0.631105,
		-0.095908, 0.649933, 0.753916,
		0.980916, -0.066983, 0.182530,
		31.678942, 22.004538, 31.030777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241756, 22.746058, 31.030890>,  <30.992300, 22.051424, 30.903006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241756, 22.746058, 31.030890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567747, 22.537312, 30.930115>,  <31.763342, 22.412064, 30.869650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567747, 22.537312, 30.930115>,  <31.241756, 22.746058, 31.030890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567747, 22.537312, 30.930115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396396, 0.819163, -0.414540,
		0.422709, 0.237974, 0.874463,
		0.814977, -0.521863, -0.251936,
		31.812241, 22.380753, 30.854534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767857, 23.295391, 31.093233>,  <31.241756, 22.746058, 31.030890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767857, 23.295391, 31.093233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.936853, 23.002331, 30.879795>,  <32.038250, 22.826494, 30.751732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.936853, 23.002331, 30.879795>,  <31.767857, 23.295391, 31.093233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936853, 23.002331, 30.879795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412632, 0.679649, -0.606475,
		0.806991, 0.036052, 0.589462,
		0.422492, -0.732651, -0.533594,
		32.063602, 22.782536, 30.719717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488220, 23.506414, 31.071121>,  <31.767857, 23.295391, 31.093233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488220, 23.506414, 31.071121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.398914, 23.268791, 30.761993>,  <32.345333, 23.126217, 30.576517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.398914, 23.268791, 30.761993>,  <32.488220, 23.506414, 31.071121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398914, 23.268791, 30.761993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285185, 0.718331, -0.634563,
		0.932108, -0.362069, 0.009042,
		-0.223260, -0.594060, -0.772818,
		32.331936, 23.090572, 30.530148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042679, 23.509239, 30.648893>,  <32.488220, 23.506414, 31.071121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042679, 23.509239, 30.648893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718315, 23.406296, 30.438675>,  <32.523697, 23.344530, 30.312544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718315, 23.406296, 30.438675>,  <33.042679, 23.509239, 30.648893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718315, 23.406296, 30.438675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193341, 0.729833, -0.655715,
		0.552315, -0.633332, -0.542068,
		-0.810905, -0.257358, -0.525547,
		32.475044, 23.329088, 30.281012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197018, 23.610065, 29.961880>,  <33.042679, 23.509239, 30.648893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197018, 23.610065, 29.961880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797150, 23.619862, 29.965038>,  <32.557228, 23.625740, 29.966934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797150, 23.619862, 29.965038>,  <33.197018, 23.610065, 29.961880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797150, 23.619862, 29.965038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009672, 0.642041, -0.766609,
		-0.023846, -0.766279, -0.642066,
		-0.999669, 0.024491, 0.007899,
		32.497250, 23.627209, 29.967407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107361, 23.745916, 29.281210>,  <33.197018, 23.610065, 29.961880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107361, 23.745916, 29.281210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731316, 23.796181, 29.407948>,  <32.505688, 23.826340, 29.483990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731316, 23.796181, 29.407948>,  <33.107361, 23.745916, 29.281210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731316, 23.796181, 29.407948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145111, 0.693560, -0.705633,
		-0.308420, -0.709355, -0.633792,
		-0.940117, 0.125661, 0.316843,
		32.449280, 23.833879, 29.503000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682640, 23.700470, 28.769957>,  <33.107361, 23.745916, 29.281210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682640, 23.700470, 28.769957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478180, 23.932163, 29.023952>,  <32.355503, 24.071178, 29.176350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478180, 23.932163, 29.023952>,  <32.682640, 23.700470, 28.769957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478180, 23.932163, 29.023952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198758, 0.639113, -0.742987,
		-0.836193, -0.505989, -0.211557,
		-0.511152, 0.579233, 0.634991,
		32.324833, 24.105932, 29.214449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097313, 23.822454, 28.505283>,  <32.682640, 23.700470, 28.769957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097313, 23.822454, 28.505283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083782, 24.120285, 28.771954>,  <32.075665, 24.298985, 28.931955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083782, 24.120285, 28.771954>,  <32.097313, 23.822454, 28.505283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083782, 24.120285, 28.771954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096597, 0.661501, -0.743698,
		-0.994749, -0.089556, 0.049547,
		-0.033828, 0.744578, 0.666678,
		32.073635, 24.343658, 28.971956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521856, 24.240364, 28.218483>,  <32.097313, 23.822454, 28.505283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521856, 24.240364, 28.218483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703251, 24.477810, 28.484406>,  <31.812088, 24.620277, 28.643959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703251, 24.477810, 28.484406>,  <31.521856, 24.240364, 28.218483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703251, 24.477810, 28.484406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044179, 0.730028, -0.681987,
		-0.890167, 0.338644, 0.304834,
		0.453488, 0.593615, 0.664808,
		31.839296, 24.655895, 28.683847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139158, 24.823172, 28.185566>,  <31.521856, 24.240364, 28.218483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139158, 24.823172, 28.185566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.499540, 24.924309, 28.326618>,  <31.715769, 24.984991, 28.411249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.499540, 24.924309, 28.326618>,  <31.139158, 24.823172, 28.185566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499540, 24.924309, 28.326618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099446, 0.670729, -0.735005,
		-0.422362, 0.697275, 0.579153,
		0.900955, 0.252844, 0.352631,
		31.769827, 25.000162, 28.432407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159140, 25.505219, 28.437277>,  <31.139158, 24.823172, 28.185566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159140, 25.505219, 28.437277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546608, 25.434650, 28.367363>,  <31.779089, 25.392309, 28.325415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546608, 25.434650, 28.367363>,  <31.159140, 25.505219, 28.437277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546608, 25.434650, 28.367363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026659, 0.773608, -0.633104,
		0.246907, 0.608611, 0.754076,
		0.968672, -0.176421, -0.174784,
		31.837210, 25.381723, 28.314928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506277, 26.245707, 28.580910>,  <31.159140, 25.505219, 28.437277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506277, 26.245707, 28.580910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.745752, 26.021633, 28.351906>,  <31.889439, 25.887190, 28.214504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.745752, 26.021633, 28.351906>,  <31.506277, 26.245707, 28.580910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745752, 26.021633, 28.351906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183980, 0.791824, -0.582380,
		0.779565, 0.243334, 0.577119,
		0.598689, -0.560182, -0.572510,
		31.925360, 25.853579, 28.180153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079819, 26.700605, 28.339617>,  <31.506277, 26.245707, 28.580910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079819, 26.700605, 28.339617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079681, 26.392307, 28.084759>,  <32.079601, 26.207329, 27.931843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079681, 26.392307, 28.084759>,  <32.079819, 26.700605, 28.339617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079681, 26.392307, 28.084759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095524, 0.634207, -0.767239,
		0.995427, -0.061124, 0.073408,
		-0.000341, -0.770743, -0.637146,
		32.079578, 26.161085, 27.893616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630547, 26.895128, 27.918587>,  <32.079819, 26.700605, 28.339617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630547, 26.895128, 27.918587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459476, 26.607777, 27.699123>,  <32.356834, 26.435366, 27.567446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459476, 26.607777, 27.699123>,  <32.630547, 26.895128, 27.918587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459476, 26.607777, 27.699123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105153, 0.563308, -0.819528,
		0.897796, -0.408184, -0.165372,
		-0.427674, -0.718381, -0.548658,
		32.331173, 26.392263, 27.534527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068977, 26.559887, 27.467033>,  <32.630547, 26.895128, 27.918587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068977, 26.559887, 27.467033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693584, 26.541397, 27.330143>,  <32.468349, 26.530302, 27.248009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693584, 26.541397, 27.330143>,  <33.068977, 26.559887, 27.467033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693584, 26.541397, 27.330143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252172, 0.585325, -0.770587,
		0.235936, -0.809480, -0.537659,
		-0.938480, -0.046226, -0.342227,
		32.412041, 26.527529, 27.227474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047932, 26.484043, 26.725079>,  <33.068977, 26.559887, 27.467033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047932, 26.484043, 26.725079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678120, 26.620464, 26.793114>,  <32.456234, 26.702318, 26.833935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678120, 26.620464, 26.793114>,  <33.047932, 26.484043, 26.725079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678120, 26.620464, 26.793114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102600, 0.652546, -0.750771,
		-0.367044, -0.676658, -0.638289,
		-0.924528, 0.341054, 0.170088,
		32.400761, 26.722780, 26.844139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860340, 26.633232, 26.075768>,  <33.047932, 26.484043, 26.725079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860340, 26.633232, 26.075768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590027, 26.829941, 26.295395>,  <32.427837, 26.947966, 26.427172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590027, 26.829941, 26.295395>,  <32.860340, 26.633232, 26.075768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590027, 26.829941, 26.295395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118349, 0.662851, -0.739339,
		-0.727537, -0.564615, -0.389743,
		-0.675783, 0.491771, 0.549071,
		32.387291, 26.977472, 26.460115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301216, 26.792273, 25.609694>,  <32.860340, 26.633232, 26.075768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301216, 26.792273, 25.609694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249882, 27.053314, 25.908394>,  <32.219082, 27.209940, 26.087614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249882, 27.053314, 25.908394>,  <32.301216, 26.792273, 25.609694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249882, 27.053314, 25.908394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249574, 0.707492, -0.661186,
		-0.959814, -0.271224, 0.072076,
		-0.128336, 0.652604, 0.746751,
		32.211380, 27.249096, 26.132420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.202984, 31.495798, 15.536491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542078, 31.406498, 15.728950>,  <22.745535, 31.352919, 15.844424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542078, 31.406498, 15.728950>,  <22.202984, 31.495798, 15.536491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.542078, 31.406498, 15.728950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420422, 0.270256, 0.866145,
		-0.323399, -0.936547, 0.135247,
		0.847737, -0.223250, 0.481145,
		22.796400, 31.339523, 15.873293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.989235, 31.149303, 16.038050>,  <22.202984, 31.495798, 15.536491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.989235, 31.149303, 16.038050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.356730, 31.248562, 16.160915>,  <22.577227, 31.308117, 16.234634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.356730, 31.248562, 16.160915>,  <21.989235, 31.149303, 16.038050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.356730, 31.248562, 16.160915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349875, 0.150925, 0.924559,
		0.183075, -0.956891, 0.225483,
		0.918733, 0.248155, 0.307162,
		22.632351, 31.323006, 16.253065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.102282, 30.793472, 16.667767>,  <21.989235, 31.149303, 16.038050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.102282, 30.793472, 16.667767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.334291, 31.119297, 16.664589>,  <22.473497, 31.314793, 16.662682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.334291, 31.119297, 16.664589>,  <22.102282, 30.793472, 16.667767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.334291, 31.119297, 16.664589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213183, 0.161200, 0.963622,
		0.786211, -0.557229, 0.267150,
		0.580023, 0.814562, -0.007945,
		22.508299, 31.363665, 16.662205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437866, 30.757757, 17.298750>,  <22.102282, 30.793472, 16.667767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437866, 30.757757, 17.298750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465895, 31.135086, 17.168991>,  <22.482712, 31.361483, 17.091137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465895, 31.135086, 17.168991>,  <22.437866, 30.757757, 17.298750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465895, 31.135086, 17.168991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431088, 0.321897, 0.842939,
		0.899585, 0.080778, 0.429211,
		0.070071, 0.943323, -0.324395,
		22.486916, 31.418083, 17.071672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658024, 31.154352, 17.992598>,  <22.437866, 30.757757, 17.298750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658024, 31.154352, 17.992598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.540407, 31.430836, 17.728546>,  <22.469837, 31.596725, 17.570116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.540407, 31.430836, 17.728546>,  <22.658024, 31.154352, 17.992598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540407, 31.430836, 17.728546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185990, 0.636080, 0.748873,
		0.937521, 0.342979, -0.058477,
		-0.294044, 0.691208, -0.660129,
		22.452194, 31.638199, 17.530508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.940666, 31.768536, 18.211620>,  <22.658024, 31.154352, 17.992598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.940666, 31.768536, 18.211620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.619280, 31.890430, 18.007042>,  <22.426447, 31.963568, 17.884295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.619280, 31.890430, 18.007042>,  <22.940666, 31.768536, 18.211620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.619280, 31.890430, 18.007042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122889, 0.755677, 0.643313,
		0.582527, 0.579732, -0.569713,
		-0.803468, 0.304736, -0.511444,
		22.378239, 31.981852, 17.853609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.061573, 32.464214, 18.064816>,  <22.940666, 31.768536, 18.211620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.061573, 32.464214, 18.064816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.667150, 32.399681, 18.048504>,  <22.430496, 32.360962, 18.038717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.667150, 32.399681, 18.048504>,  <23.061573, 32.464214, 18.064816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667150, 32.399681, 18.048504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156689, 0.817631, 0.554011,
		-0.056040, 0.552675, -0.831510,
		-0.986057, -0.161335, -0.040778,
		22.371334, 32.351280, 18.036270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.835802, 33.153908, 18.043577>,  <23.061573, 32.464214, 18.064816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.835802, 33.153908, 18.043577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.497478, 32.956642, 18.124962>,  <22.294485, 32.838284, 18.173792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.497478, 32.956642, 18.124962>,  <22.835802, 33.153908, 18.043577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.497478, 32.956642, 18.124962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247168, 0.700231, 0.669765,
		-0.472774, 0.516204, -0.714155,
		-0.845809, -0.493163, 0.203462,
		22.243736, 32.808693, 18.186001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.386150, 33.706196, 18.149757>,  <22.835802, 33.153908, 18.043577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.386150, 33.706196, 18.149757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.218370, 33.391579, 18.331043>,  <22.117702, 33.202808, 18.439816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.218370, 33.391579, 18.331043>,  <22.386150, 33.706196, 18.149757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.218370, 33.391579, 18.331043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219637, 0.572357, 0.790042,
		-0.880807, 0.231841, -0.412831,
		-0.419451, -0.786548, 0.453215,
		22.092535, 33.155613, 18.467009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803310, 33.990131, 18.432619>,  <22.386150, 33.706196, 18.149757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803310, 33.990131, 18.432619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865984, 33.652302, 18.637417>,  <21.903589, 33.449604, 18.760296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865984, 33.652302, 18.637417>,  <21.803310, 33.990131, 18.432619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865984, 33.652302, 18.637417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275089, 0.460563, 0.843924,
		-0.948565, -0.273074, -0.160171,
		0.156685, -0.844578, 0.511994,
		21.912989, 33.398930, 18.791016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.284357, 33.933743, 18.970776>,  <21.803310, 33.990131, 18.432619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.284357, 33.933743, 18.970776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598463, 33.716782, 19.090214>,  <21.786926, 33.586605, 19.161877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598463, 33.716782, 19.090214>,  <21.284357, 33.933743, 18.970776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598463, 33.716782, 19.090214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099000, 0.366059, 0.925311,
		-0.611194, -0.756175, 0.233755,
		0.785265, -0.542402, 0.298594,
		21.834044, 33.554062, 19.179792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108313, 33.735504, 19.581936>,  <21.284357, 33.933743, 18.970776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108313, 33.735504, 19.581936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.493425, 33.630112, 19.606022>,  <21.724493, 33.566875, 19.620474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.493425, 33.630112, 19.606022>,  <21.108313, 33.735504, 19.581936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.493425, 33.630112, 19.606022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041969, 0.365841, 0.929730,
		-0.266997, -0.892601, 0.363284,
		0.962783, -0.263482, 0.060217,
		21.782261, 33.551067, 19.624086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202839, 33.386662, 20.260103>,  <21.108313, 33.735504, 19.581936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202839, 33.386662, 20.260103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.570070, 33.495533, 20.144825>,  <21.790409, 33.560856, 20.075657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.570070, 33.495533, 20.144825>,  <21.202839, 33.386662, 20.260103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570070, 33.495533, 20.144825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186245, 0.345621, 0.919706,
		0.349969, -0.898023, 0.266602,
		0.918060, 0.272215, -0.288208,
		21.845493, 33.577187, 20.058367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.786333, 33.015251, 20.632969>,  <21.202839, 33.386662, 20.260103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.786333, 33.015251, 20.632969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.884781, 33.387012, 20.522957>,  <21.943850, 33.610069, 20.456949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.884781, 33.387012, 20.522957>,  <21.786333, 33.015251, 20.632969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884781, 33.387012, 20.522957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003344, 0.282941, 0.959132,
		0.969233, -0.236983, 0.066530,
		0.246122, 0.929400, -0.275029,
		21.958618, 33.665833, 20.440449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.191048, 33.284920, 21.286999>,  <21.786333, 33.015251, 20.632969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.191048, 33.284920, 21.286999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186905, 33.618095, 21.065693>,  <22.184420, 33.818001, 20.932909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186905, 33.618095, 21.065693>,  <22.191048, 33.284920, 21.286999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.186905, 33.618095, 21.065693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062582, 0.552752, 0.830993,
		0.997986, -0.026018, -0.057852,
		-0.010357, 0.832940, -0.553267,
		22.183798, 33.867977, 20.899714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.563185, 33.756687, 21.621479>,  <22.191048, 33.284920, 21.286999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.563185, 33.756687, 21.621479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.381525, 34.000374, 21.361446>,  <22.272530, 34.146584, 21.205427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.381525, 34.000374, 21.361446>,  <22.563185, 33.756687, 21.621479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.381525, 34.000374, 21.361446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032836, 0.717731, 0.695546,
		0.890320, 0.337228, -0.305953,
		-0.454149, 0.609213, -0.650083,
		22.245279, 34.183136, 21.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.899477, 34.300922, 21.756102>,  <22.563185, 33.756687, 21.621479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.899477, 34.300922, 21.756102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.568264, 34.430611, 21.573128>,  <22.369535, 34.508423, 21.463343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.568264, 34.430611, 21.573128>,  <22.899477, 34.300922, 21.756102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568264, 34.430611, 21.573128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018184, 0.799898, 0.599861,
		0.560386, 0.505022, -0.656446,
		-0.828032, 0.324217, -0.457434,
		22.319855, 34.527874, 21.435898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.065573, 34.988892, 21.463223>,  <22.899477, 34.300922, 21.756102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.065573, 34.988892, 21.463223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.674147, 34.949574, 21.535603>,  <22.439291, 34.925983, 21.579031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.674147, 34.949574, 21.535603>,  <23.065573, 34.988892, 21.463223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.674147, 34.949574, 21.535603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016193, 0.839268, 0.543477,
		-0.205289, 0.534759, -0.819688,
		-0.978567, -0.098297, 0.180952,
		22.380577, 34.920086, 21.589888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825451, 35.667767, 21.425776>,  <23.065573, 34.988892, 21.463223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825451, 35.667767, 21.425776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.527937, 35.481121, 21.617214>,  <22.349428, 35.369133, 21.732079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.527937, 35.481121, 21.617214>,  <22.825451, 35.667767, 21.425776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.527937, 35.481121, 21.617214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025902, 0.695357, 0.718197,
		-0.667916, 0.546582, -0.505110,
		-0.743786, -0.466612, 0.478598,
		22.304802, 35.341137, 21.760794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.431967, 36.256264, 21.583342>,  <22.825451, 35.667767, 21.425776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.431967, 36.256264, 21.583342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.307125, 35.968033, 21.831009>,  <22.232220, 35.795094, 21.979609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.307125, 35.968033, 21.831009>,  <22.431967, 36.256264, 21.583342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.307125, 35.968033, 21.831009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120412, 0.676467, 0.726563,
		-0.942387, 0.152207, -0.297892,
		-0.312102, -0.720573, 0.619166,
		22.213495, 35.751862, 22.016758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744331, 36.460419, 21.874100>,  <22.431967, 36.256264, 21.583342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744331, 36.460419, 21.874100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.921480, 36.225368, 22.144970>,  <22.027769, 36.084339, 22.307491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.921480, 36.225368, 22.144970>,  <21.744331, 36.460419, 21.874100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.921480, 36.225368, 22.144970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101227, 0.717683, 0.688974,
		-0.890853, -0.373675, 0.258358,
		0.442871, -0.587621, 0.677175,
		22.054342, 36.049084, 22.348122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.284027, 36.019169, 22.171621>,  <21.744331, 36.460419, 21.874100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.284027, 36.019169, 22.171621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.900373, 36.095814, 22.254902>,  <20.670181, 36.141800, 22.304871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.900373, 36.095814, 22.254902>,  <21.284027, 36.019169, 22.171621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.900373, 36.095814, 22.254902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258510, -0.892583, -0.369417,
		0.115049, -0.408142, 0.905640,
		-0.959133, 0.191616, 0.208200,
		20.612633, 36.153297, 22.317362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.073404, 35.430565, 22.375793>,  <21.284027, 36.019169, 22.171621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.073404, 35.430565, 22.375793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.722389, 35.607094, 22.300785>,  <20.511780, 35.713009, 22.255779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.722389, 35.607094, 22.300785>,  <21.073404, 35.430565, 22.375793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.722389, 35.607094, 22.300785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306901, -0.817402, -0.487509,
		-0.368428, -0.370257, 0.852743,
		-0.877538, 0.441319, -0.187522,
		20.459127, 35.739491, 22.244528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682621, 34.855583, 22.418804>,  <21.073404, 35.430565, 22.375793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682621, 34.855583, 22.418804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.469332, 35.145794, 22.244778>,  <20.341358, 35.319920, 22.140362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.469332, 35.145794, 22.244778>,  <20.682621, 34.855583, 22.418804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.469332, 35.145794, 22.244778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392883, -0.667832, -0.632173,
		-0.749211, -0.166159, 0.641151,
		-0.533223, 0.725528, -0.435066,
		20.309364, 35.363453, 22.114258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071775, 34.667751, 22.605778>,  <20.682621, 34.855583, 22.418804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071775, 34.667751, 22.605778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.027094, 34.899918, 22.283131>,  <20.000284, 35.039219, 22.089542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.027094, 34.899918, 22.283131>,  <20.071775, 34.667751, 22.605778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027094, 34.899918, 22.283131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333125, -0.786605, -0.519884,
		-0.936242, 0.210632, 0.281221,
		-0.111705, 0.580420, -0.806620,
		19.993582, 35.074043, 22.041145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.347643, 34.727062, 22.388851>,  <20.071775, 34.667751, 22.605778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.347643, 34.727062, 22.388851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.565823, 34.799217, 22.061451>,  <19.696732, 34.842510, 21.865011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.565823, 34.799217, 22.061451>,  <19.347643, 34.727062, 22.388851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565823, 34.799217, 22.061451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516649, -0.696601, -0.497815,
		-0.659967, 0.694412, -0.286766,
		0.545450, 0.180384, -0.818502,
		19.729458, 34.853333, 21.815901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841761, 34.704716, 21.941193>,  <19.347643, 34.727062, 22.388851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841761, 34.704716, 21.941193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.157085, 34.695675, 21.695248>,  <19.346281, 34.690250, 21.547682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.157085, 34.695675, 21.695248>,  <18.841761, 34.704716, 21.941193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.157085, 34.695675, 21.695248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473223, -0.660938, -0.582427,
		-0.393221, 0.750100, -0.531720,
		0.788312, -0.022600, -0.614860,
		19.393579, 34.688896, 21.510790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548838, 34.583130, 21.249722>,  <18.841761, 34.704716, 21.941193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548838, 34.583130, 21.249722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.930088, 34.483196, 21.181450>,  <19.158838, 34.423237, 21.140486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.930088, 34.483196, 21.181450>,  <18.548838, 34.583130, 21.249722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.930088, 34.483196, 21.181450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267883, -0.434505, -0.859909,
		0.140676, 0.865324, -0.481065,
		0.953126, -0.249838, -0.170681,
		19.216026, 34.408245, 21.130245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714069, 34.848930, 20.526672>,  <18.548838, 34.583130, 21.249722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.714069, 34.848930, 20.526672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.933306, 34.539791, 20.654610>,  <19.064848, 34.354309, 20.731373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.933306, 34.539791, 20.654610>,  <18.714069, 34.848930, 20.526672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933306, 34.539791, 20.654610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360170, -0.563205, -0.743692,
		0.754899, 0.292414, -0.587045,
		0.548093, -0.772848, 0.319844,
		19.097734, 34.307938, 20.750563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950457, 34.438046, 19.948339>,  <18.714069, 34.848930, 20.526672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.950457, 34.438046, 19.948339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.055021, 34.176434, 20.232285>,  <19.117760, 34.019466, 20.402653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.055021, 34.176434, 20.232285>,  <18.950457, 34.438046, 19.948339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055021, 34.176434, 20.232285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227102, -0.756466, -0.613339,
		0.938131, -0.000879, -0.346280,
		0.261410, -0.654033, 0.709864,
		19.133444, 33.980225, 20.445244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437923, 33.969353, 19.586466>,  <18.950457, 34.438046, 19.948339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437923, 33.969353, 19.586466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.281916, 33.787197, 19.906593>,  <19.188311, 33.677906, 20.098669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.281916, 33.787197, 19.906593>,  <19.437923, 33.969353, 19.586466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.281916, 33.787197, 19.906593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311037, -0.752907, -0.579989,
		0.866683, -0.475136, 0.152007,
		-0.390021, -0.455387, 0.800316,
		19.164909, 33.650581, 20.146688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757608, 33.303623, 19.778175>,  <19.437923, 33.969353, 19.586466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757608, 33.303623, 19.778175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.393908, 33.274601, 19.942127>,  <19.175688, 33.257187, 20.040499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.393908, 33.274601, 19.942127>,  <19.757608, 33.303623, 19.778175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393908, 33.274601, 19.942127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211575, -0.767449, -0.605193,
		0.358470, -0.636992, 0.682452,
		-0.909250, -0.072553, 0.409879,
		19.121132, 33.252834, 20.065090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706793, 32.607254, 19.898495>,  <19.757608, 33.303623, 19.778175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706793, 32.607254, 19.898495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337049, 32.759865, 19.898937>,  <19.115204, 32.851433, 19.899202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337049, 32.759865, 19.898937>,  <19.706793, 32.607254, 19.898495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337049, 32.759865, 19.898937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319169, -0.771679, -0.550130,
		-0.209037, -0.508869, 0.835079,
		-0.924356, 0.381528, 0.001105,
		19.059742, 32.874325, 19.899269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.251999, 32.069035, 20.238153>,  <19.706793, 32.607254, 19.898495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.251999, 32.069035, 20.238153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.065926, 32.317677, 19.986053>,  <18.954281, 32.466862, 19.834793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.065926, 32.317677, 19.986053>,  <19.251999, 32.069035, 20.238153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.065926, 32.317677, 19.986053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278754, -0.778617, -0.562185,
		-0.840178, -0.085835, 0.535475,
		-0.465185, 0.621601, -0.630250,
		18.926371, 32.504158, 19.796978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658480, 31.718407, 20.138229>,  <19.251999, 32.069035, 20.238153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658480, 31.718407, 20.138229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.662289, 31.997128, 19.851349>,  <18.664574, 32.164360, 19.679220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.662289, 31.997128, 19.851349>,  <18.658480, 31.718407, 20.138229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.662289, 31.997128, 19.851349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303368, -0.681416, -0.666064,
		-0.952826, 0.223919, 0.204897,
		0.009525, 0.696802, -0.717200,
		18.665146, 32.206169, 19.636189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089111, 31.656450, 19.799601>,  <18.658480, 31.718407, 20.138229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.089111, 31.656450, 19.799601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.303125, 31.845177, 19.519279>,  <18.431534, 31.958412, 19.351088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.303125, 31.845177, 19.519279>,  <18.089111, 31.656450, 19.799601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303125, 31.845177, 19.519279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211040, -0.728580, -0.651639,
		-0.818045, 0.496548, -0.290245,
		0.535037, 0.471817, -0.700803,
		18.463636, 31.986721, 19.309038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751242, 31.474234, 19.147882>,  <18.089111, 31.656450, 19.799601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751242, 31.474234, 19.147882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.116096, 31.614780, 19.063457>,  <18.335009, 31.699108, 19.012802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.116096, 31.614780, 19.063457>,  <17.751242, 31.474234, 19.147882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.116096, 31.614780, 19.063457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116019, -0.715193, -0.689230,
		-0.393124, 0.604185, -0.693119,
		0.912136, 0.351368, -0.211063,
		18.389738, 31.720190, 19.000139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643188, 31.634975, 18.494263>,  <17.751242, 31.474234, 19.147882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643188, 31.634975, 18.494263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.033823, 31.595257, 18.570599>,  <18.268204, 31.571426, 18.616400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.033823, 31.595257, 18.570599>,  <17.643188, 31.634975, 18.494263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033823, 31.595257, 18.570599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076844, -0.667562, -0.740578,
		0.200933, 0.737903, -0.644301,
		0.976586, -0.099296, 0.190839,
		18.326799, 31.565468, 18.627850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994978, 31.572701, 17.756243>,  <17.643188, 31.634975, 18.494263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994978, 31.572701, 17.756243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.266417, 31.446487, 18.021557>,  <18.429279, 31.370760, 18.180744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.266417, 31.446487, 18.021557>,  <17.994978, 31.572701, 17.756243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266417, 31.446487, 18.021557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219904, -0.774332, -0.593339,
		0.700819, 0.548497, -0.456073,
		0.678597, -0.315531, 0.663284,
		18.469995, 31.351828, 18.220543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546791, 31.413740, 17.348131>,  <17.994978, 31.572701, 17.756243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546791, 31.413740, 17.348131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.619116, 31.199699, 17.678215>,  <18.662512, 31.071276, 17.876266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.619116, 31.199699, 17.678215>,  <18.546791, 31.413740, 17.348131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619116, 31.199699, 17.678215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209944, -0.798702, -0.563913,
		0.960848, 0.275211, -0.032075,
		0.180814, -0.535101, 0.825211,
		18.673361, 31.039169, 17.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.281172, 31.165709, 17.324265>,  <18.546791, 31.413740, 17.348131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.281172, 31.165709, 17.324265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.074554, 30.914360, 17.556931>,  <18.950584, 30.763550, 17.696529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.074554, 30.914360, 17.556931>,  <19.281172, 31.165709, 17.324265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.074554, 30.914360, 17.556931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404996, -0.777810, -0.480615,
		0.754429, -0.012687, 0.656259,
		-0.516542, -0.628372, 0.581664,
		18.919592, 30.725849, 17.731430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719877, 30.607430, 17.451950>,  <19.281172, 31.165709, 17.324265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719877, 30.607430, 17.451950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.370832, 30.458725, 17.578659>,  <19.161406, 30.369501, 17.654684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.370832, 30.458725, 17.578659>,  <19.719877, 30.607430, 17.451950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370832, 30.458725, 17.578659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241202, -0.891970, -0.382375,
		0.424704, -0.257258, 0.868012,
		-0.872610, -0.371763, 0.316773,
		19.109049, 30.347197, 17.673691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.837112, 30.430452, 23.643593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206141, 30.559982, 23.727501>,  <28.427557, 30.637701, 23.777845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206141, 30.559982, 23.727501>,  <27.837112, 30.430452, 23.643593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206141, 30.559982, 23.727501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214370, 0.882247, -0.419149,
		-0.320799, 0.341726, 0.883352,
		0.922569, 0.323827, 0.209768,
		28.482912, 30.657131, 23.790432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687717, 30.994267, 23.993338>,  <27.837112, 30.430452, 23.643593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687717, 30.994267, 23.993338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068419, 31.021820, 23.873726>,  <28.296839, 31.038353, 23.801958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068419, 31.021820, 23.873726>,  <27.687717, 30.994267, 23.993338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068419, 31.021820, 23.873726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102361, 0.989933, -0.097754,
		0.289285, 0.123647, 0.949224,
		0.951755, 0.068885, -0.299029,
		28.353945, 31.042486, 23.784018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944008, 31.564276, 24.227476>,  <27.687717, 30.994267, 23.993338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944008, 31.564276, 24.227476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178299, 31.510769, 23.907719>,  <28.318872, 31.478664, 23.715864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178299, 31.510769, 23.907719>,  <27.944008, 31.564276, 24.227476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178299, 31.510769, 23.907719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077305, 0.972571, -0.219387,
		0.806814, 0.190298, 0.559319,
		0.585726, -0.133766, -0.799395,
		28.354017, 31.470638, 23.667900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400379, 32.142708, 24.230164>,  <27.944008, 31.564276, 24.227476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400379, 32.142708, 24.230164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427614, 32.001438, 23.856934>,  <28.443954, 31.916676, 23.632996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427614, 32.001438, 23.856934>,  <28.400379, 32.142708, 24.230164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427614, 32.001438, 23.856934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190476, 0.922644, -0.335331,
		0.979328, -0.154897, 0.130091,
		0.068085, -0.353178, -0.933075,
		28.448040, 31.895485, 23.577011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914673, 32.506458, 23.972420>,  <28.400379, 32.142708, 24.230164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914673, 32.506458, 23.972420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709623, 32.374229, 23.655449>,  <28.586594, 32.294891, 23.465267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709623, 32.374229, 23.655449>,  <28.914673, 32.506458, 23.972420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709623, 32.374229, 23.655449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129363, 0.882642, -0.451894,
		0.848811, -0.334163, -0.409700,
		-0.512625, -0.330573, -0.792425,
		28.555836, 32.275059, 23.417721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182421, 32.784336, 23.429310>,  <28.914673, 32.506458, 23.972420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182421, 32.784336, 23.429310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847332, 32.656303, 23.252327>,  <28.646278, 32.579483, 23.146137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847332, 32.656303, 23.252327>,  <29.182421, 32.784336, 23.429310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847332, 32.656303, 23.252327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017034, 0.825139, -0.564672,
		0.545832, -0.465501, -0.696689,
		-0.837722, -0.320083, -0.442458,
		28.596016, 32.560280, 23.119589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297192, 32.693077, 22.657640>,  <29.182421, 32.784336, 23.429310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297192, 32.693077, 22.657640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898493, 32.708870, 22.685738>,  <28.659273, 32.718346, 22.702597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898493, 32.708870, 22.685738>,  <29.297192, 32.693077, 22.657640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898493, 32.708870, 22.685738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014831, 0.766926, -0.641564,
		-0.079203, -0.640519, -0.763847,
		-0.996748, 0.039485, 0.070243,
		28.599468, 32.720715, 22.706810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033606, 32.637997, 21.949560>,  <29.297192, 32.693077, 22.657640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033606, 32.637997, 21.949560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758154, 32.822723, 22.173172>,  <28.592882, 32.933559, 22.307339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758154, 32.822723, 22.173172>,  <29.033606, 32.637997, 21.949560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758154, 32.822723, 22.173172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054525, 0.735793, -0.675008,
		-0.723060, -0.495312, -0.481509,
		-0.688630, 0.461817, 0.559029,
		28.551565, 32.961269, 22.340881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554226, 33.013847, 21.524811>,  <29.033606, 32.637997, 21.949560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554226, 33.013847, 21.524811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449606, 33.180611, 21.873013>,  <28.386833, 33.280670, 22.081934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449606, 33.180611, 21.873013>,  <28.554226, 33.013847, 21.524811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449606, 33.180611, 21.873013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445952, 0.747663, -0.492065,
		-0.855990, -0.516903, -0.009632,
		-0.261551, 0.416907, 0.870505,
		28.371141, 33.305683, 22.134165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905832, 33.192226, 21.476908>,  <28.554226, 33.013847, 21.524811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905832, 33.192226, 21.476908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041815, 33.433788, 21.765278>,  <28.123404, 33.578724, 21.938299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041815, 33.433788, 21.765278>,  <27.905832, 33.192226, 21.476908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041815, 33.433788, 21.765278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447833, 0.778039, -0.440570,
		-0.826967, -0.173079, 0.534947,
		0.339956, 0.603904, 0.720923,
		28.143801, 33.614960, 21.981554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450817, 33.830746, 21.441301>,  <27.905832, 33.192226, 21.476908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450817, 33.830746, 21.441301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730503, 33.964649, 21.693977>,  <27.898315, 34.044991, 21.845583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730503, 33.964649, 21.693977>,  <27.450817, 33.830746, 21.441301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730503, 33.964649, 21.693977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059860, 0.907906, -0.414877,
		-0.712400, 0.252276, 0.654861,
		0.699216, 0.334758, 0.631692,
		27.940268, 34.065075, 21.883486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157303, 34.215202, 21.936472>,  <27.450817, 33.830746, 21.441301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157303, 34.215202, 21.936472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520079, 34.326313, 21.809788>,  <27.737743, 34.392979, 21.733778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520079, 34.326313, 21.809788>,  <27.157303, 34.215202, 21.936472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520079, 34.326313, 21.809788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379440, 0.865230, -0.327722,
		0.182994, 0.417396, 0.890109,
		0.906939, 0.277772, -0.316708,
		27.792160, 34.409645, 21.714775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398905, 34.185062, 21.753952>,  <27.157303, 34.215202, 21.936472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398905, 34.185062, 21.753952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124722, 34.007084, 21.523415>,  <25.960213, 33.900295, 21.385092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124722, 34.007084, 21.523415>,  <26.398905, 34.185062, 21.753952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124722, 34.007084, 21.523415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475011, -0.873181, 0.109175,
		-0.551828, -0.198934, 0.809883,
		-0.685456, -0.444949, -0.576342,
		25.919085, 33.873600, 21.350512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226810, 33.662117, 22.139385>,  <26.398905, 34.185062, 21.753952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226810, 33.662117, 22.139385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140585, 33.577763, 21.758007>,  <26.088850, 33.527149, 21.529181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140585, 33.577763, 21.758007>,  <26.226810, 33.662117, 22.139385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140585, 33.577763, 21.758007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423345, -0.900053, 0.103362,
		-0.879950, -0.381355, 0.283296,
		-0.215563, -0.210886, -0.953446,
		26.075916, 33.514496, 21.471973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402464, 34.075935, 22.716961>,  <26.226810, 33.662117, 22.139385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402464, 34.075935, 22.716961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225554, 34.430305, 22.772850>,  <26.119408, 34.642929, 22.806383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225554, 34.430305, 22.772850>,  <26.402464, 34.075935, 22.716961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225554, 34.430305, 22.772850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519933, 0.126324, 0.844815,
		0.730794, 0.446290, -0.516493,
		-0.442278, 0.885927, 0.139724,
		26.092871, 34.696083, 22.814768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835102, 34.537575, 22.751451>,  <26.402464, 34.075935, 22.716961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835102, 34.537575, 22.751451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507410, 34.654964, 22.948524>,  <26.310795, 34.725399, 23.066769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507410, 34.654964, 22.948524>,  <26.835102, 34.537575, 22.751451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507410, 34.654964, 22.948524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517394, 0.007733, 0.855712,
		0.247323, 0.955935, -0.158179,
		-0.819228, 0.293478, 0.492682,
		26.261642, 34.743008, 23.096329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983387, 35.155205, 23.166193>,  <26.835102, 34.537575, 22.751451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983387, 35.155205, 23.166193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686943, 34.968597, 23.359322>,  <26.509077, 34.856632, 23.475199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686943, 34.968597, 23.359322>,  <26.983387, 35.155205, 23.166193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686943, 34.968597, 23.359322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554378, -0.019572, 0.832035,
		-0.378707, 0.884297, 0.273130,
		-0.741112, -0.466514, 0.482823,
		26.464609, 34.828644, 23.504168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931952, 35.515499, 23.798746>,  <26.983387, 35.155205, 23.166193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931952, 35.515499, 23.798746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764740, 35.160538, 23.876472>,  <26.664413, 34.947559, 23.923109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764740, 35.160538, 23.876472>,  <26.931952, 35.515499, 23.798746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764740, 35.160538, 23.876472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530700, -0.064950, 0.845068,
		-0.737298, 0.456388, 0.498098,
		-0.418030, -0.887407, 0.194318,
		26.639332, 34.894314, 23.934769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615259, 35.547913, 24.587788>,  <26.931952, 35.515499, 23.798746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615259, 35.547913, 24.587788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645977, 35.165531, 24.474476>,  <26.664408, 34.936100, 24.406488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645977, 35.165531, 24.474476>,  <26.615259, 35.547913, 24.587788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645977, 35.165531, 24.474476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395699, -0.231564, 0.888707,
		-0.915164, -0.180341, 0.360489,
		0.076794, -0.955958, -0.283280,
		26.669016, 34.878742, 24.389492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414011, 35.186825, 25.163198>,  <26.615259, 35.547913, 24.587788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414011, 35.186825, 25.163198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622293, 34.924603, 24.944435>,  <26.747263, 34.767269, 24.813177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622293, 34.924603, 24.944435>,  <26.414011, 35.186825, 25.163198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622293, 34.924603, 24.944435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453075, -0.330764, 0.827839,
		-0.723594, -0.678852, 0.124786,
		0.520705, -0.655557, -0.546910,
		26.778505, 34.727936, 24.780361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352314, 34.481308, 25.455179>,  <26.414011, 35.186825, 25.163198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352314, 34.481308, 25.455179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700916, 34.497219, 25.259670>,  <26.910078, 34.506763, 25.142365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700916, 34.497219, 25.259670>,  <26.352314, 34.481308, 25.455179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700916, 34.497219, 25.259670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438614, -0.508969, 0.740654,
		-0.219310, -0.859865, -0.461015,
		0.871505, 0.039775, -0.488771,
		26.962368, 34.509151, 25.113039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664845, 33.816021, 25.538492>,  <26.352314, 34.481308, 25.455179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664845, 33.816021, 25.538492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963900, 34.039062, 25.394203>,  <27.143332, 34.172886, 25.307631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963900, 34.039062, 25.394203>,  <26.664845, 33.816021, 25.538492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963900, 34.039062, 25.394203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661561, -0.577796, 0.478004,
		0.058113, -0.596013, -0.800869,
		0.747636, 0.557602, -0.360722,
		27.188190, 34.206345, 25.285986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174967, 33.349438, 25.446905>,  <26.664845, 33.816021, 25.538492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174967, 33.349438, 25.446905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382969, 33.691051, 25.452820>,  <27.507771, 33.896019, 25.456369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382969, 33.691051, 25.452820>,  <27.174967, 33.349438, 25.446905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382969, 33.691051, 25.452820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731683, -0.454306, 0.508179,
		0.440720, -0.253437, -0.861124,
		0.520005, 0.854035, 0.014786,
		27.538971, 33.947262, 25.457256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845503, 33.169899, 25.276932>,  <27.174967, 33.349438, 25.446905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845503, 33.169899, 25.276932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895794, 33.530151, 25.443333>,  <27.925968, 33.746304, 25.543173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895794, 33.530151, 25.443333>,  <27.845503, 33.169899, 25.276932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895794, 33.530151, 25.443333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700401, -0.377556, 0.605714,
		0.702589, 0.215213, -0.678272,
		0.125727, 0.900630, 0.416002,
		27.933512, 33.800339, 25.568132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649275, 33.341778, 25.279760>,  <27.845503, 33.169899, 25.276932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649275, 33.341778, 25.279760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468472, 33.542004, 25.575092>,  <28.359989, 33.662140, 25.752291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468472, 33.542004, 25.575092>,  <28.649275, 33.341778, 25.279760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468472, 33.542004, 25.575092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763969, -0.210045, 0.610108,
		0.460479, 0.839833, -0.287471,
		-0.452007, 0.500561, 0.738328,
		28.332869, 33.692173, 25.796591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204279, 33.651485, 25.618931>,  <28.649275, 33.341778, 25.279760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204279, 33.651485, 25.618931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904301, 33.644485, 25.883438>,  <28.724314, 33.640285, 26.042143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904301, 33.644485, 25.883438>,  <29.204279, 33.651485, 25.618931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904301, 33.644485, 25.883438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609426, -0.407040, 0.680381,
		0.257257, 0.913243, 0.315922,
		-0.749946, -0.017498, 0.661267,
		28.679317, 33.639236, 26.081818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515858, 33.739071, 26.287384>,  <29.204279, 33.651485, 25.618931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515858, 33.739071, 26.287384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151785, 33.606014, 26.386112>,  <28.933342, 33.526180, 26.445349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151785, 33.606014, 26.386112>,  <29.515858, 33.739071, 26.287384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151785, 33.606014, 26.386112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396502, -0.527321, 0.751478,
		-0.119820, 0.781846, 0.611850,
		-0.910181, -0.332642, 0.246820,
		28.878731, 33.506222, 26.460157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379461, 33.795197, 26.977194>,  <29.515858, 33.739071, 26.287384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379461, 33.795197, 26.977194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138275, 33.501640, 26.852077>,  <28.993563, 33.325508, 26.777008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138275, 33.501640, 26.852077>,  <29.379461, 33.795197, 26.977194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138275, 33.501640, 26.852077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296105, -0.569960, 0.766464,
		-0.740778, 0.369533, 0.560975,
		-0.602967, -0.733888, -0.312793,
		28.957384, 33.281475, 26.758240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382143, 34.060623, 27.695194>,  <29.379461, 33.795197, 26.977194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382143, 34.060623, 27.695194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587004, 34.275627, 27.963158>,  <29.709921, 34.404629, 28.123936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587004, 34.275627, 27.963158>,  <29.382143, 34.060623, 27.695194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587004, 34.275627, 27.963158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139581, 0.717512, -0.682417,
		-0.847477, 0.443008, 0.292449,
		0.512153, 0.537513, 0.669911,
		29.740650, 34.436882, 28.164131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073273, 34.744976, 27.783871>,  <29.382143, 34.060623, 27.695194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073273, 34.744976, 27.783871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456371, 34.810558, 27.878387>,  <29.686232, 34.849907, 27.935099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456371, 34.810558, 27.878387>,  <29.073273, 34.744976, 27.783871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456371, 34.810558, 27.878387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063732, 0.680173, -0.730276,
		-0.280457, 0.714480, 0.640985,
		0.957749, 0.163960, 0.236294,
		29.743696, 34.859745, 27.949276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196833, 35.421429, 27.758865>,  <29.073273, 34.744976, 27.783871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196833, 35.421429, 27.758865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578421, 35.302258, 27.745121>,  <29.807373, 35.230755, 27.736876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578421, 35.302258, 27.745121>,  <29.196833, 35.421429, 27.758865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578421, 35.302258, 27.745121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197688, 0.710841, -0.675000,
		0.225528, 0.637136, 0.737017,
		0.953969, -0.297931, -0.034360,
		29.864611, 35.212879, 27.734814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594389, 36.049904, 27.609077>,  <29.196833, 35.421429, 27.758865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594389, 36.049904, 27.609077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831985, 35.740200, 27.521721>,  <29.974543, 35.554379, 27.469307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831985, 35.740200, 27.521721>,  <29.594389, 36.049904, 27.609077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831985, 35.740200, 27.521721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428407, 0.534215, -0.728754,
		0.680914, 0.339313, 0.649017,
		0.593990, -0.774262, -0.218390,
		30.010183, 35.507923, 27.456203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182283, 36.308483, 27.497990>,  <29.594389, 36.049904, 27.609077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182283, 36.308483, 27.497990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215940, 35.975071, 27.279579>,  <30.236135, 35.775024, 27.148533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215940, 35.975071, 27.279579>,  <30.182283, 36.308483, 27.497990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215940, 35.975071, 27.279579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392831, 0.531341, -0.750573,
		0.915753, -0.151340, 0.372146,
		0.084145, -0.833530, -0.546028,
		30.241184, 35.725014, 27.115770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884720, 36.285889, 27.169216>,  <30.182283, 36.308483, 27.497990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884720, 36.285889, 27.169216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699770, 36.012657, 26.943077>,  <30.588800, 35.848721, 26.807394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699770, 36.012657, 26.943077>,  <30.884720, 36.285889, 27.169216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699770, 36.012657, 26.943077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496841, 0.328507, -0.803264,
		0.734410, -0.652296, 0.187487,
		-0.462375, -0.683076, -0.565347,
		30.561058, 35.807735, 26.773474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444828, 35.871193, 26.766783>,  <30.884720, 36.285889, 27.169216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444828, 35.871193, 26.766783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106272, 35.821548, 26.559624>,  <30.903137, 35.791763, 26.435329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106272, 35.821548, 26.559624>,  <31.444828, 35.871193, 26.766783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106272, 35.821548, 26.559624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503121, 0.132496, -0.853999,
		0.174609, -0.983383, -0.049701,
		-0.846393, -0.124110, -0.517896,
		30.852354, 35.784317, 26.404255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664320, 35.431629, 26.236475>,  <31.444828, 35.871193, 26.766783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664320, 35.431629, 26.236475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331181, 35.610062, 26.105404>,  <31.131296, 35.717121, 26.026762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331181, 35.610062, 26.105404>,  <31.664320, 35.431629, 26.236475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331181, 35.610062, 26.105404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410046, 0.099602, -0.906610,
		-0.371785, -0.889433, -0.265867,
		-0.832850, 0.446081, -0.327678,
		31.081326, 35.743885, 26.007101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520304, 35.112614, 25.643192>,  <31.664320, 35.431629, 26.236475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520304, 35.112614, 25.643192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339622, 35.467480, 25.605461>,  <31.231215, 35.680401, 25.582823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339622, 35.467480, 25.605461>,  <31.520304, 35.112614, 25.643192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339622, 35.467480, 25.605461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329628, 0.067705, -0.941680,
		-0.829043, -0.456451, -0.323018,
		-0.451701, 0.887169, -0.094329,
		31.204113, 35.733631, 25.577162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142731, 35.073841, 25.014935>,  <31.520304, 35.112614, 25.643192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142731, 35.073841, 25.014935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146019, 35.466091, 25.093216>,  <31.147991, 35.701443, 25.140184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146019, 35.466091, 25.093216>,  <31.142731, 35.073841, 25.014935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146019, 35.466091, 25.093216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351277, 0.180405, -0.918726,
		-0.936235, 0.076297, -0.342990,
		0.008219, 0.980629, 0.195703,
		31.148485, 35.760281, 25.151926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813196, 35.325459, 24.495958>,  <31.142731, 35.073841, 25.014935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813196, 35.325459, 24.495958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992384, 35.661266, 24.618938>,  <31.099895, 35.862751, 24.692726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992384, 35.661266, 24.618938>,  <30.813196, 35.325459, 24.495958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992384, 35.661266, 24.618938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112118, 0.288417, -0.950918,
		-0.886992, 0.460451, 0.035076,
		0.447968, 0.839524, 0.307449,
		31.126774, 35.913124, 24.711172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586357, 35.862186, 24.066326>,  <30.813196, 35.325459, 24.495958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586357, 35.862186, 24.066326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930033, 35.989422, 24.226631>,  <31.136238, 36.065762, 24.322815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930033, 35.989422, 24.226631>,  <30.586357, 35.862186, 24.066326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930033, 35.989422, 24.226631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332715, 0.247709, -0.909913,
		-0.388704, 0.915129, 0.106997,
		0.859191, 0.318087, 0.400763,
		31.187790, 36.084846, 24.346861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.170628, 31.497019, 30.644396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.548922, 31.624870, 30.620987>,  <29.775898, 31.701580, 30.606941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.548922, 31.624870, 30.620987>,  <29.170628, 31.497019, 30.644396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548922, 31.624870, 30.620987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324118, 0.915109, -0.239838,
		-0.023105, 0.245791, 0.969048,
		0.945735, 0.319627, -0.058522,
		29.832642, 31.720758, 30.603430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108805, 32.248005, 30.818848>,  <29.170628, 31.497019, 30.644396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108805, 32.248005, 30.818848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.480190, 32.189957, 30.682091>,  <29.703022, 32.155128, 30.600037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.480190, 32.189957, 30.682091>,  <29.108805, 32.248005, 30.818848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480190, 32.189957, 30.682091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026885, 0.944352, -0.327836,
		0.370445, 0.295193, 0.880699,
		0.928465, -0.145123, -0.341894,
		29.758730, 32.146420, 30.579523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547884, 32.880013, 31.064577>,  <29.108805, 32.248005, 30.818848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547884, 32.880013, 31.064577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.737125, 32.714165, 30.753639>,  <29.850670, 32.614655, 30.567078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.737125, 32.714165, 30.753639>,  <29.547884, 32.880013, 31.064577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737125, 32.714165, 30.753639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212274, 0.909987, -0.356179,
		0.855052, 0.003500, 0.518531,
		0.473103, -0.414621, -0.777344,
		29.879057, 32.589779, 30.520435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981028, 33.328922, 30.922163>,  <29.547884, 32.880013, 31.064577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981028, 33.328922, 30.922163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.031143, 33.108265, 30.592316>,  <30.061213, 32.975872, 30.394407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.031143, 33.108265, 30.592316>,  <29.981028, 33.328922, 30.922163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031143, 33.108265, 30.592316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080755, 0.834081, -0.545699,
		0.988828, 0.001778, 0.149048,
		0.125288, -0.551639, -0.824620,
		30.068729, 32.942772, 30.344931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538723, 33.589478, 30.530302>,  <29.981028, 33.328922, 30.922163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538723, 33.589478, 30.530302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.302605, 33.396450, 30.271481>,  <30.160934, 33.280636, 30.116188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.302605, 33.396450, 30.271481>,  <30.538723, 33.589478, 30.530302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302605, 33.396450, 30.271481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171491, 0.708341, -0.684721,
		0.788761, -0.515151, -0.335373,
		-0.590294, -0.482568, -0.647056,
		30.125517, 33.251678, 30.077364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816818, 33.581257, 29.850891>,  <30.538723, 33.589478, 30.530302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816818, 33.581257, 29.850891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.451925, 33.501804, 29.707569>,  <30.232990, 33.454132, 29.621576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.451925, 33.501804, 29.707569>,  <30.816818, 33.581257, 29.850891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451925, 33.501804, 29.707569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162532, 0.627361, -0.761579,
		0.376057, -0.752971, -0.540014,
		-0.912230, -0.198628, -0.358305,
		30.178257, 33.442215, 29.600077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852083, 33.494026, 29.093950>,  <30.816818, 33.581257, 29.850891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852083, 33.494026, 29.093950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.470051, 33.590954, 29.162186>,  <30.240831, 33.649109, 29.203127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.470051, 33.590954, 29.162186>,  <30.852083, 33.494026, 29.093950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470051, 33.590954, 29.162186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035395, 0.478253, -0.877509,
		-0.294220, -0.844131, -0.448194,
		-0.955082, 0.242317, 0.170589,
		30.183527, 33.663651, 29.213362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477179, 33.363239, 28.441319>,  <30.852083, 33.494026, 29.093950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477179, 33.363239, 28.441319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.268347, 33.623772, 28.661572>,  <30.143047, 33.780090, 28.793724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.268347, 33.623772, 28.661572>,  <30.477179, 33.363239, 28.441319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268347, 33.623772, 28.661572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111039, 0.588204, -0.801054,
		-0.845639, -0.479355, -0.234765,
		-0.522079, 0.651334, 0.550634,
		30.111723, 33.819172, 28.826761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891268, 33.556122, 28.028549>,  <30.477179, 33.363239, 28.441319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891268, 33.556122, 28.028549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.916618, 33.872070, 28.272545>,  <29.931829, 34.061638, 28.418941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.916618, 33.872070, 28.272545>,  <29.891268, 33.556122, 28.028549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916618, 33.872070, 28.272545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166518, 0.611017, -0.773905,
		-0.984000, -0.052526, 0.170252,
		0.063377, 0.789873, 0.609987,
		29.935631, 34.109032, 28.455542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183741, 33.368042, 27.754778>,  <29.891268, 33.556122, 28.028549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183741, 33.368042, 27.754778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.081167, 33.143997, 27.439686>,  <29.019623, 33.009571, 27.250631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.081167, 33.143997, 27.439686>,  <29.183741, 33.368042, 27.754778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081167, 33.143997, 27.439686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537220, -0.760096, 0.365580,
		-0.803516, -0.329438, 0.495816,
		-0.256432, -0.560112, -0.787729,
		29.004238, 32.975964, 27.203367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886759, 32.753223, 27.902868>,  <29.183741, 33.368042, 27.754778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886759, 32.753223, 27.902868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.040285, 32.679504, 27.540936>,  <29.132401, 32.635273, 27.323776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.040285, 32.679504, 27.540936>,  <28.886759, 32.753223, 27.902868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040285, 32.679504, 27.540936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356923, -0.874114, 0.329439,
		-0.851639, -0.449400, -0.269723,
		0.383819, -0.184293, -0.904831,
		29.155430, 32.624218, 27.269485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648880, 32.001209, 27.787970>,  <28.886759, 32.753223, 27.902868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648880, 32.001209, 27.787970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.937923, 32.103149, 27.530945>,  <29.111349, 32.164314, 27.376730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.937923, 32.103149, 27.530945>,  <28.648880, 32.001209, 27.787970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937923, 32.103149, 27.530945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346507, -0.937880, 0.017690,
		-0.598136, -0.235435, -0.766031,
		0.722610, 0.254855, -0.642560,
		29.154707, 32.179607, 27.338177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591238, 31.597546, 27.143570>,  <28.648880, 32.001209, 27.787970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591238, 31.597546, 27.143570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.970652, 31.713238, 27.195148>,  <29.198299, 31.782654, 27.226095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.970652, 31.713238, 27.195148>,  <28.591238, 31.597546, 27.143570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970652, 31.713238, 27.195148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269769, -0.951277, 0.149322,
		0.165851, -0.106852, -0.980345,
		0.948535, 0.289232, 0.128944,
		29.255213, 31.800007, 27.233831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940874, 31.111469, 26.737255>,  <28.591238, 31.597546, 27.143570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940874, 31.111469, 26.737255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.238264, 31.288368, 26.937920>,  <29.416698, 31.394508, 27.058317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.238264, 31.288368, 26.937920>,  <28.940874, 31.111469, 26.737255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238264, 31.288368, 26.937920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437330, -0.889020, 0.135597,
		0.505953, 0.118579, -0.854372,
		0.743474, 0.442248, 0.501660,
		29.461306, 31.421043, 27.088417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584658, 30.865822, 26.471710>,  <28.940874, 31.111469, 26.737255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584658, 30.865822, 26.471710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.664047, 30.987408, 26.844421>,  <29.711681, 31.060360, 27.068048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.664047, 30.987408, 26.844421>,  <29.584658, 30.865822, 26.471710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664047, 30.987408, 26.844421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488872, -0.854687, 0.174684,
		0.849478, 0.420851, -0.318233,
		0.198474, 0.303965, 0.931780,
		29.723589, 31.078598, 27.123955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312607, 30.688379, 26.638420>,  <29.584658, 30.865822, 26.471710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312607, 30.688379, 26.638420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.138079, 30.721928, 26.996769>,  <30.033361, 30.742058, 27.211779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.138079, 30.721928, 26.996769>,  <30.312607, 30.688379, 26.638420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138079, 30.721928, 26.996769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464661, -0.831611, 0.304161,
		0.770529, 0.548989, 0.323877,
		-0.436321, 0.083872, 0.895874,
		30.007183, 30.747089, 27.265532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819719, 30.520065, 27.109591>,  <30.312607, 30.688379, 26.638420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819719, 30.520065, 27.109591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.478069, 30.467487, 27.310863>,  <30.273079, 30.435940, 27.431627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.478069, 30.467487, 27.310863>,  <30.819719, 30.520065, 27.109591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478069, 30.467487, 27.310863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399735, -0.784865, 0.473496,
		0.332692, 0.605564, 0.722916,
		-0.854124, -0.131446, 0.503184,
		30.221832, 30.428053, 27.461819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009602, 30.369719, 27.884811>,  <30.819719, 30.520065, 27.109591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009602, 30.369719, 27.884811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.641029, 30.223000, 27.833549>,  <30.419886, 30.134968, 27.802792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.641029, 30.223000, 27.833549>,  <31.009602, 30.369719, 27.884811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641029, 30.223000, 27.833549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277118, -0.851605, 0.444943,
		-0.272341, 0.374470, 0.886342,
		-0.921431, -0.366798, -0.128154,
		30.364599, 30.112961, 27.795103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919086, 30.014603, 28.492128>,  <31.009602, 30.369719, 27.884811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919086, 30.014603, 28.492128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.648943, 29.859295, 28.241325>,  <30.486856, 29.766109, 28.090843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.648943, 29.859295, 28.241325>,  <30.919086, 30.014603, 28.492128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648943, 29.859295, 28.241325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066053, -0.878619, 0.472932,
		-0.734527, 0.277983, 0.619028,
		-0.675357, -0.388270, -0.627008,
		30.446335, 29.742813, 28.053223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455124, 29.804775, 28.918627>,  <30.919086, 30.014603, 28.492128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455124, 29.804775, 28.918627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.369003, 29.610699, 28.579632>,  <30.317331, 29.494253, 28.376236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.369003, 29.610699, 28.579632>,  <30.455124, 29.804775, 28.918627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369003, 29.610699, 28.579632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165757, -0.837089, 0.521352,
		-0.962377, 0.252725, 0.099804,
		-0.215304, -0.485194, -0.847485,
		30.304413, 29.465141, 28.325386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846621, 29.461506, 28.986502>,  <30.455124, 29.804775, 28.918627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846621, 29.461506, 28.986502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.032034, 29.253975, 28.699181>,  <30.143282, 29.129456, 28.526789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.032034, 29.253975, 28.699181>,  <29.846621, 29.461506, 28.986502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032034, 29.253975, 28.699181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345924, -0.852281, 0.392369,
		-0.815766, 0.066603, -0.574535,
		0.463532, -0.518827, -0.718301,
		30.171093, 29.098328, 28.483690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377651, 28.965265, 28.819679>,  <29.846621, 29.461506, 28.986502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377651, 28.965265, 28.819679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.708109, 28.819683, 28.647621>,  <29.906384, 28.732334, 28.544386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.708109, 28.819683, 28.647621>,  <29.377651, 28.965265, 28.819679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708109, 28.819683, 28.647621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182968, -0.895309, 0.406133,
		-0.532925, -0.256821, -0.806246,
		0.826144, -0.363956, -0.430143,
		29.955952, 28.710497, 28.518578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132561, 28.329927, 28.451996>,  <29.377651, 28.965265, 28.819679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132561, 28.329927, 28.451996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.527969, 28.269653, 28.447697>,  <29.765215, 28.233488, 28.445116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.527969, 28.269653, 28.447697>,  <29.132561, 28.329927, 28.451996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527969, 28.269653, 28.447697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133259, -0.903285, 0.407821,
		-0.071163, -0.401708, -0.912999,
		0.988523, -0.150687, -0.010749,
		29.824526, 28.224447, 28.444471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.206055, 27.055502, 28.882378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893597, 27.285713, 28.979187>,  <33.706120, 27.423840, 29.037271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893597, 27.285713, 28.979187>,  <34.206055, 27.055502, 28.882378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893597, 27.285713, 28.979187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336731, 0.714789, -0.612934,
		-0.525755, -0.397297, -0.752155,
		-0.781149, 0.575527, 0.242022,
		33.659252, 27.458372, 29.051794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818024, 27.325911, 28.329445>,  <34.206055, 27.055502, 28.882378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818024, 27.325911, 28.329445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717377, 27.589256, 28.613205>,  <33.656990, 27.747263, 28.783461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717377, 27.589256, 28.613205>,  <33.818024, 27.325911, 28.329445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717377, 27.589256, 28.613205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093257, 0.746062, -0.659313,
		-0.963323, -0.099739, -0.249119,
		-0.251618, 0.658364, 0.709398,
		33.641891, 27.786766, 28.826025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367271, 27.762220, 27.906775>,  <33.818024, 27.325911, 28.329445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367271, 27.762220, 27.906775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440495, 27.976379, 28.236584>,  <33.484428, 28.104876, 28.434469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440495, 27.976379, 28.236584>,  <33.367271, 27.762220, 27.906775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440495, 27.976379, 28.236584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107056, 0.844564, -0.524643,
		-0.977255, 0.007771, 0.211924,
		0.183061, 0.535398, 0.824522,
		33.495411, 28.136999, 28.483940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777367, 28.336361, 27.992107>,  <33.367271, 27.762220, 27.906775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777367, 28.336361, 27.992107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122738, 28.441124, 28.164570>,  <33.329960, 28.503981, 28.268047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122738, 28.441124, 28.164570>,  <32.777367, 28.336361, 27.992107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122738, 28.441124, 28.164570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046374, 0.892258, -0.449138,
		-0.502333, 0.367805, 0.782548,
		0.863430, 0.261907, 0.431154,
		33.381767, 28.519695, 28.293917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651958, 28.909058, 28.316624>,  <32.777367, 28.336361, 27.992107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651958, 28.909058, 28.316624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.049385, 28.926674, 28.274906>,  <33.287842, 28.937244, 28.249876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.049385, 28.926674, 28.274906>,  <32.651958, 28.909058, 28.316624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049385, 28.926674, 28.274906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078304, 0.932674, -0.352120,
		0.081762, 0.358022, 0.930126,
		0.993571, 0.044043, -0.104292,
		33.347458, 28.939886, 28.243618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897739, 29.574608, 28.518332>,  <32.651958, 28.909058, 28.316624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897739, 29.574608, 28.518332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.248135, 29.488262, 28.345795>,  <33.458370, 29.436455, 28.242273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.248135, 29.488262, 28.345795>,  <32.897739, 29.574608, 28.518332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248135, 29.488262, 28.345795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050880, 0.930632, -0.362403,
		0.479649, 0.295513, 0.826202,
		0.875984, -0.215864, -0.431340,
		33.510929, 29.423504, 28.216393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366219, 30.122988, 28.727945>,  <32.897739, 29.574608, 28.518332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366219, 30.122988, 28.727945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.498074, 29.953354, 28.390545>,  <33.577187, 29.851574, 28.188105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.498074, 29.953354, 28.390545>,  <33.366219, 30.122988, 28.727945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498074, 29.953354, 28.390545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023828, 0.889414, -0.456480,
		0.943808, 0.170571, 0.283077,
		0.329635, -0.424085, -0.843500,
		33.596966, 29.826128, 28.137495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886463, 30.659380, 28.414156>,  <33.366219, 30.122988, 28.727945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886463, 30.659380, 28.414156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768307, 30.412422, 28.122520>,  <33.697414, 30.264248, 27.947538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768307, 30.412422, 28.122520>,  <33.886463, 30.659380, 28.414156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768307, 30.412422, 28.122520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139080, 0.782803, -0.606528,
		0.945200, -0.077758, -0.317097,
		-0.295387, -0.617393, -0.729091,
		33.679691, 30.227205, 27.903793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401466, 30.835461, 27.838093>,  <33.886463, 30.659380, 28.414156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401466, 30.835461, 27.838093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085423, 30.656212, 27.670803>,  <33.895798, 30.548662, 27.570429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085423, 30.656212, 27.670803>,  <34.401466, 30.835461, 27.838093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085423, 30.656212, 27.670803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014864, 0.668094, -0.743929,
		0.612785, -0.594002, -0.521207,
		-0.790110, -0.448121, -0.418227,
		33.848389, 30.521776, 27.545336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626091, 30.701946, 27.182558>,  <34.401466, 30.835461, 27.838093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626091, 30.701946, 27.182558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226456, 30.696533, 27.166397>,  <33.986675, 30.693285, 27.156700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226456, 30.696533, 27.166397>,  <34.626091, 30.701946, 27.182558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226456, 30.696533, 27.166397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009762, 0.850318, -0.526179,
		0.041475, -0.526095, -0.849414,
		-0.999092, -0.013531, -0.040403,
		33.926727, 30.692474, 27.154276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487244, 30.739763, 26.424221>,  <34.626091, 30.701946, 27.182558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487244, 30.739763, 26.424221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134377, 30.820396, 26.594463>,  <33.922657, 30.868776, 26.696609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134377, 30.820396, 26.594463>,  <34.487244, 30.739763, 26.424221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134377, 30.820396, 26.594463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145854, 0.742365, -0.653928,
		-0.447775, -0.638951, -0.625491,
		-0.882170, 0.201582, 0.425606,
		33.869724, 30.880871, 26.722145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945339, 30.670351, 25.978325>,  <34.487244, 30.739763, 26.424221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945339, 30.670351, 25.978325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820335, 30.936737, 26.249271>,  <33.745335, 31.096569, 26.411840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820335, 30.936737, 26.249271>,  <33.945339, 30.670351, 25.978325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820335, 30.936737, 26.249271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006095, 0.711662, -0.702496,
		-0.949895, -0.223664, -0.218342,
		-0.312508, 0.665967, 0.677367,
		33.726582, 31.136528, 26.452482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436798, 30.986013, 25.667356>,  <33.945339, 30.670351, 25.978325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436798, 30.986013, 25.667356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554340, 31.232353, 25.959763>,  <33.624866, 31.380157, 26.135206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554340, 31.232353, 25.959763>,  <33.436798, 30.986013, 25.667356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554340, 31.232353, 25.959763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132283, 0.731218, -0.669195,
		-0.946653, 0.293346, 0.133404,
		0.293853, 0.615848, 0.731014,
		33.642494, 31.417109, 26.179068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916710, 31.516142, 25.653507>,  <33.436798, 30.986013, 25.667356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916710, 31.516142, 25.653507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253166, 31.656174, 25.818398>,  <33.455040, 31.740192, 25.917332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253166, 31.656174, 25.818398>,  <32.916710, 31.516142, 25.653507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253166, 31.656174, 25.818398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062049, 0.694718, -0.716601,
		-0.537248, 0.628339, 0.562632,
		0.841139, 0.350082, 0.412224,
		33.505508, 31.761198, 25.942064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115372, 31.537157, 25.429083>,  <32.916710, 31.516142, 25.653507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115372, 31.537157, 25.429083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091793, 31.337704, 25.083160>,  <32.077648, 31.218031, 24.875607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091793, 31.337704, 25.083160>,  <32.115372, 31.537157, 25.429083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091793, 31.337704, 25.083160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068066, -0.866304, 0.494857,
		-0.995938, -0.029696, 0.085002,
		-0.058943, -0.498633, -0.864807,
		32.074112, 31.188114, 24.823719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654669, 31.095692, 25.567221>,  <32.115372, 31.537157, 25.429083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654669, 31.095692, 25.567221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850397, 30.945034, 25.252590>,  <31.967834, 30.854639, 25.063812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850397, 30.945034, 25.252590>,  <31.654669, 31.095692, 25.567221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850397, 30.945034, 25.252590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130362, -0.923387, 0.361058,
		-0.862306, -0.074132, -0.500931,
		0.489319, -0.376645, -0.786578,
		31.997192, 30.832041, 25.016617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260229, 30.556128, 25.272245>,  <31.654669, 31.095692, 25.567221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260229, 30.556128, 25.272245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.641249, 30.472370, 25.183880>,  <31.869862, 30.422115, 25.130861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.641249, 30.472370, 25.183880>,  <31.260229, 30.556128, 25.272245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641249, 30.472370, 25.183880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133125, -0.939277, 0.316285,
		-0.273726, -0.271869, -0.922584,
		0.952550, -0.209395, -0.220912,
		31.927013, 30.409552, 25.117605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263428, 29.853750, 25.020483>,  <31.260229, 30.556128, 25.272245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263428, 29.853750, 25.020483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652094, 29.909847, 25.096588>,  <31.885294, 29.943506, 25.142252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652094, 29.909847, 25.096588>,  <31.263428, 29.853750, 25.020483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652094, 29.909847, 25.096588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102862, -0.975628, 0.193830,
		0.212808, -0.168767, -0.962409,
		0.971665, 0.140244, 0.190262,
		31.943594, 29.951920, 25.153667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452240, 29.269073, 24.769899>,  <31.263428, 29.853750, 25.020483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452240, 29.269073, 24.769899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748922, 29.395969, 25.006283>,  <31.926931, 29.472107, 25.148113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748922, 29.395969, 25.006283>,  <31.452240, 29.269073, 24.769899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748922, 29.395969, 25.006283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144752, -0.936022, 0.320796,
		0.654921, -0.152394, -0.740172,
		0.741705, 0.317237, 0.590961,
		31.971434, 29.491140, 25.183571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926060, 28.681236, 24.692396>,  <31.452240, 29.269073, 24.769899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926060, 28.681236, 24.692396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033302, 28.904205, 25.006695>,  <32.097649, 29.037987, 25.195274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033302, 28.904205, 25.006695>,  <31.926060, 28.681236, 24.692396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033302, 28.904205, 25.006695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186105, -0.830213, 0.525463,
		0.945242, 0.005351, -0.326325,
		0.268107, 0.557421, 0.785749,
		32.113735, 29.071432, 25.242420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608322, 28.415615, 24.935747>,  <31.926060, 28.681236, 24.692396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608322, 28.415615, 24.935747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412720, 28.597435, 25.233540>,  <32.295357, 28.706526, 25.412216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412720, 28.597435, 25.233540>,  <32.608322, 28.415615, 24.935747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412720, 28.597435, 25.233540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057187, -0.834949, 0.547347,
		0.870401, 0.310233, 0.382305,
		-0.489011, 0.454549, 0.744482,
		32.266018, 28.733799, 25.456884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098679, 28.448633, 25.497871>,  <32.608322, 28.415615, 24.935747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098679, 28.448633, 25.497871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718559, 28.470924, 25.620396>,  <32.490486, 28.484299, 25.693911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718559, 28.470924, 25.620396>,  <33.098679, 28.448633, 25.497871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718559, 28.470924, 25.620396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143079, -0.795630, 0.588643,
		0.276513, 0.603214, 0.748114,
		-0.950300, 0.055728, 0.306309,
		32.433468, 28.487642, 25.712288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131683, 28.257460, 26.172035>,  <33.098679, 28.448633, 25.497871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131683, 28.257460, 26.172035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.743652, 28.186512, 26.105724>,  <32.510834, 28.143944, 26.065939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.743652, 28.186512, 26.105724>,  <33.131683, 28.257460, 26.172035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743652, 28.186512, 26.105724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020147, -0.739285, 0.673091,
		-0.241940, 0.649614, 0.720740,
		-0.970082, -0.177369, -0.165775,
		32.452629, 28.133301, 26.055992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730457, 28.168446, 26.882408>,  <33.131683, 28.257460, 26.172035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730457, 28.168446, 26.882408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504822, 28.005875, 26.594902>,  <32.369442, 27.908331, 26.422400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504822, 28.005875, 26.594902>,  <32.730457, 28.168446, 26.882408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504822, 28.005875, 26.594902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330650, -0.686451, 0.647653,
		-0.756621, 0.602993, 0.252833,
		-0.564088, -0.406428, -0.718763,
		32.335594, 27.883945, 26.379272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020073, 28.073902, 27.112402>,  <32.730457, 28.168446, 26.882408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020073, 28.073902, 27.112402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101475, 27.800121, 26.832371>,  <32.150314, 27.635853, 26.664352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101475, 27.800121, 26.832371>,  <32.020073, 28.073902, 27.112402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101475, 27.800121, 26.832371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325555, -0.721660, 0.610917,
		-0.923363, 0.103590, -0.369688,
		0.203505, -0.684452, -0.700079,
		32.162525, 27.594786, 26.622347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489931, 27.597893, 27.231308>,  <32.020073, 28.073902, 27.112402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489931, 27.597893, 27.231308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764799, 27.421661, 27.000244>,  <31.929720, 27.315922, 26.861607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764799, 27.421661, 27.000244>,  <31.489931, 27.597893, 27.231308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764799, 27.421661, 27.000244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139495, -0.860349, 0.490245,
		-0.712981, -0.256300, -0.652662,
		0.687167, -0.440578, -0.577660,
		31.970949, 27.289488, 26.826946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170021, 27.067539, 26.813896>,  <31.489931, 27.597893, 27.231308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170021, 27.067539, 26.813896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553299, 26.962349, 26.858978>,  <31.783266, 26.899235, 26.886028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553299, 26.962349, 26.858978>,  <31.170021, 27.067539, 26.813896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553299, 26.962349, 26.858978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286108, -0.879850, 0.379482,
		-0.000630, -0.395865, -0.918309,
		0.958197, -0.262975, 0.112705,
		31.840757, 26.883457, 26.892790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233027, 26.250263, 26.766615>,  <31.170021, 27.067539, 26.813896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233027, 26.250263, 26.766615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.586409, 26.348923, 26.925949>,  <31.798437, 26.408117, 27.021549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.586409, 26.348923, 26.925949>,  <31.233027, 26.250263, 26.766615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586409, 26.348923, 26.925949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071034, -0.769864, 0.634242,
		0.463099, -0.588620, -0.662621,
		0.883456, 0.246648, 0.398335,
		31.851446, 26.422916, 27.045450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019510, 25.710997, 26.225969>,  <31.233027, 26.250263, 26.766615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019510, 25.710997, 26.225969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.620218, 25.687225, 26.226688>,  <30.380642, 25.672962, 26.227119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.620218, 25.687225, 26.226688>,  <31.019510, 25.710997, 26.225969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620218, 25.687225, 26.226688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042040, 0.684148, -0.728131,
		0.042042, -0.726919, -0.685436,
		-0.998231, -0.059428, 0.001797,
		30.320749, 25.669397, 26.227228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793648, 25.804821, 25.458799>,  <31.019510, 25.710997, 26.225969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793648, 25.804821, 25.458799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.501534, 25.914227, 25.709198>,  <30.326265, 25.979870, 25.859438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.501534, 25.914227, 25.709198>,  <30.793648, 25.804821, 25.458799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501534, 25.914227, 25.709198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179379, 0.807420, -0.562047,
		-0.659172, -0.522745, -0.540583,
		-0.730285, 0.273516, 0.625998,
		30.282448, 25.996281, 25.896997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224436, 26.042370, 24.918436>,  <30.793648, 25.804821, 25.458799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224436, 26.042370, 24.918436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104313, 26.203156, 25.264439>,  <30.032240, 26.299627, 25.472040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104313, 26.203156, 25.264439>,  <30.224436, 26.042370, 24.918436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104313, 26.203156, 25.264439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398122, 0.771273, -0.496625,
		-0.866784, -0.493519, -0.071586,
		-0.300306, 0.401966, 0.865008,
		30.014221, 26.323746, 25.523941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619499, 26.256208, 24.760769>,  <30.224436, 26.042370, 24.918436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619499, 26.256208, 24.760769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.687860, 26.461395, 25.097260>,  <29.728878, 26.584507, 25.299154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.687860, 26.461395, 25.097260>,  <29.619499, 26.256208, 24.760769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687860, 26.461395, 25.097260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392948, 0.818433, -0.419236,
		-0.903540, -0.258909, 0.341442,
		0.170903, 0.512965, 0.841225,
		29.739132, 26.615284, 25.349627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039751, 26.614483, 25.018539>,  <29.619499, 26.256208, 24.760769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039751, 26.614483, 25.018539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.325377, 26.825268, 25.202900>,  <29.496752, 26.951738, 25.313517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.325377, 26.825268, 25.202900>,  <29.039751, 26.614483, 25.018539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325377, 26.825268, 25.202900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363052, 0.841637, -0.399800,
		-0.598590, 0.118151, 0.792295,
		0.714061, 0.526960, 0.460900,
		29.539595, 26.983356, 25.341169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689083, 27.128447, 25.405121>,  <29.039751, 26.614483, 25.018539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689083, 27.128447, 25.405121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.056328, 27.264156, 25.323181>,  <29.276674, 27.345581, 25.274017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.056328, 27.264156, 25.323181>,  <28.689083, 27.128447, 25.405121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056328, 27.264156, 25.323181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394450, 0.832415, -0.389223,
		0.038468, 0.438154, 0.898077,
		0.918112, 0.339274, -0.204851,
		29.331762, 27.365938, 25.261726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634016, 27.880280, 25.651112>,  <28.689083, 27.128447, 25.405121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634016, 27.880280, 25.651112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.981569, 27.865376, 25.453667>,  <29.190102, 27.856434, 25.335199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.981569, 27.865376, 25.453667>,  <28.634016, 27.880280, 25.651112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981569, 27.865376, 25.453667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121744, 0.950451, -0.286045,
		0.479813, 0.308634, 0.821295,
		0.868883, -0.037260, -0.493612,
		29.242235, 27.854197, 25.305582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975218, 28.476908, 25.815298>,  <28.634016, 27.880280, 25.651112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975218, 28.476908, 25.815298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.150572, 28.370220, 25.471977>,  <29.255785, 28.306208, 25.265985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.150572, 28.370220, 25.471977>,  <28.975218, 28.476908, 25.815298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150572, 28.370220, 25.471977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112635, 0.931123, -0.346878,
		0.891701, 0.248741, 0.378150,
		0.438386, -0.266718, -0.858300,
		29.282087, 28.290205, 25.214487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515020, 29.016764, 25.601566>,  <28.975218, 28.476908, 25.815298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515020, 29.016764, 25.601566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.402479, 28.829189, 25.266678>,  <29.334953, 28.716644, 25.065744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.402479, 28.829189, 25.266678>,  <29.515020, 29.016764, 25.601566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402479, 28.829189, 25.266678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174964, 0.882909, -0.435730,
		0.943519, 0.023889, -0.330456,
		-0.281353, -0.468937, -0.837221,
		29.318073, 28.688509, 25.015512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865738, 29.422695, 25.166637>,  <29.515020, 29.016764, 25.601566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865738, 29.422695, 25.166637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602655, 29.220348, 24.943382>,  <29.444805, 29.098940, 24.809429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602655, 29.220348, 24.943382>,  <29.865738, 29.422695, 25.166637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602655, 29.220348, 24.943382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127011, 0.804818, -0.579773,
		0.742487, -0.310433, -0.593587,
		-0.657709, -0.505866, -0.558138,
		29.405344, 29.068588, 24.775940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064859, 29.463943, 24.464493>,  <29.865738, 29.422695, 25.166637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064859, 29.463943, 24.464493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671144, 29.393570, 24.458466>,  <29.434916, 29.351345, 24.454849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671144, 29.393570, 24.458466>,  <30.064859, 29.463943, 24.464493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671144, 29.393570, 24.458466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127652, 0.767919, -0.627698,
		0.122006, -0.615911, -0.778311,
		-0.984286, -0.175936, -0.015068,
		29.375858, 29.340790, 24.453945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950569, 29.426407, 23.833838>,  <30.064859, 29.463943, 24.464493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950569, 29.426407, 23.833838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591465, 29.530872, 23.975723>,  <29.376003, 29.593552, 24.060854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591465, 29.530872, 23.975723>,  <29.950569, 29.426407, 23.833838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591465, 29.530872, 23.975723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121968, 0.626408, -0.769894,
		-0.423263, -0.734444, -0.530510,
		-0.897759, 0.261162, 0.354714,
		29.322138, 29.609221, 24.082138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455698, 29.376947, 23.285301>,  <29.950569, 29.426407, 23.833838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455698, 29.376947, 23.285301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.278681, 29.620956, 23.548218>,  <29.172470, 29.767361, 23.705967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.278681, 29.620956, 23.548218>,  <29.455698, 29.376947, 23.285301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278681, 29.620956, 23.548218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318630, 0.578176, -0.751124,
		-0.838232, -0.541836, -0.061496,
		-0.442541, 0.610021, 0.657291,
		29.145918, 29.803963, 23.745405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986092, 29.822083, 22.860130>,  <29.455698, 29.376947, 23.285301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986092, 29.822083, 22.860130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.002068, 30.028603, 23.202320>,  <29.011654, 30.152515, 23.407635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.002068, 30.028603, 23.202320>,  <28.986092, 29.822083, 22.860130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002068, 30.028603, 23.202320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274815, 0.828816, -0.487381,
		-0.960667, -0.215631, 0.174990,
		0.039940, 0.516301, 0.855475,
		29.014050, 30.183493, 23.458963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.611942, 32.499939, 30.647568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.879601, 32.253773, 30.814186>,  <38.040195, 32.106075, 30.914158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.879601, 32.253773, 30.814186>,  <37.611942, 32.499939, 30.647568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879601, 32.253773, 30.814186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731592, 0.643937, -0.223871,
		-0.130457, 0.454545, 0.881118,
		0.669144, -0.615413, 0.416548,
		38.080345, 32.069149, 30.939150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096668, 32.860981, 31.218281>,  <37.611942, 32.499939, 30.647568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096668, 32.860981, 31.218281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.282608, 32.533886, 31.082508>,  <38.394173, 32.337627, 31.001043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.282608, 32.533886, 31.082508>,  <38.096668, 32.860981, 31.218281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282608, 32.533886, 31.082508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682119, 0.575183, -0.451528,
		0.564468, -0.021640, 0.825171,
		0.464853, -0.817739, -0.339433,
		38.422066, 32.288563, 30.980679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773571, 32.905178, 31.407183>,  <38.096668, 32.860981, 31.218281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773571, 32.905178, 31.407183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758423, 32.652126, 31.097771>,  <38.749336, 32.500294, 30.912125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758423, 32.652126, 31.097771>,  <38.773571, 32.905178, 31.407183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758423, 32.652126, 31.097771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734216, 0.507482, -0.450987,
		0.677860, -0.585014, 0.445269,
		-0.037868, -0.632630, -0.773528,
		38.747063, 32.462337, 30.865713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395344, 32.817856, 31.326214>,  <38.773571, 32.905178, 31.407183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395344, 32.817856, 31.326214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250370, 32.695557, 30.974041>,  <39.163387, 32.622177, 30.762737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250370, 32.695557, 30.974041>,  <39.395344, 32.817856, 31.326214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250370, 32.695557, 30.974041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854394, 0.268416, -0.444931,
		0.372360, -0.913493, 0.163950,
		-0.362434, -0.305753, -0.880430,
		39.141640, 32.603832, 30.709911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975288, 32.448162, 31.005613>,  <39.395344, 32.817856, 31.326214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975288, 32.448162, 31.005613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.734238, 32.549973, 30.703075>,  <39.589607, 32.611061, 30.521553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.734238, 32.549973, 30.703075>,  <39.975288, 32.448162, 31.005613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734238, 32.549973, 30.703075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775397, 0.410850, -0.479543,
		0.188687, -0.875453, -0.444949,
		-0.602624, 0.254528, -0.756346,
		39.553452, 32.626331, 30.476171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177818, 31.998465, 30.403967>,  <39.975288, 32.448162, 31.005613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177818, 31.998465, 30.403967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.993103, 32.328056, 30.272629>,  <39.882275, 32.525810, 30.193825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.993103, 32.328056, 30.272629>,  <40.177818, 31.998465, 30.403967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993103, 32.328056, 30.272629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779242, 0.200031, -0.593945,
		-0.423719, -0.530136, -0.734451,
		-0.461784, 0.823980, -0.328347,
		39.854568, 32.575249, 30.174124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462524, 32.120380, 29.778160>,  <40.177818, 31.998465, 30.403967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462524, 32.120380, 29.778160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.265312, 32.468384, 29.778515>,  <40.146984, 32.677185, 29.778727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.265312, 32.468384, 29.778515>,  <40.462524, 32.120380, 29.778160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265312, 32.468384, 29.778515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639326, 0.362989, -0.677866,
		-0.590073, -0.333641, -0.735186,
		-0.493028, 0.870013, 0.000885,
		40.117405, 32.729389, 29.778780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207958, 32.188663, 29.066195>,  <40.462524, 32.120380, 29.778160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207958, 32.188663, 29.066195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210827, 32.557232, 29.221592>,  <40.212547, 32.778374, 29.314831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210827, 32.557232, 29.221592>,  <40.207958, 32.188663, 29.066195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210827, 32.557232, 29.221592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542646, 0.322737, -0.775485,
		-0.839931, 0.216379, -0.497691,
		0.007175, 0.921423, 0.388494,
		40.212978, 32.833660, 29.338140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082653, 32.561840, 28.563705>,  <40.207958, 32.188663, 29.066195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082653, 32.561840, 28.563705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232628, 32.843040, 28.805439>,  <40.322613, 33.011761, 28.950480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232628, 32.843040, 28.805439>,  <40.082653, 32.561840, 28.563705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232628, 32.843040, 28.805439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501330, 0.394590, -0.770043,
		-0.779803, 0.591686, -0.204488,
		0.374935, 0.702998, 0.604333,
		40.345108, 33.053940, 28.986738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961864, 33.303055, 28.272564>,  <40.082653, 32.561840, 28.563705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961864, 33.303055, 28.272564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273849, 33.292614, 28.522678>,  <40.461040, 33.286350, 28.672747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273849, 33.292614, 28.522678>,  <39.961864, 33.303055, 28.272564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273849, 33.292614, 28.522678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572289, 0.434093, -0.695736,
		-0.253275, 0.900490, 0.353510,
		0.779960, -0.026097, 0.625286,
		40.507839, 33.284786, 28.710264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321030, 33.904861, 28.148233>,  <39.961864, 33.303055, 28.272564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321030, 33.904861, 28.148233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599205, 33.690567, 28.339794>,  <40.766109, 33.561989, 28.454731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599205, 33.690567, 28.339794>,  <40.321030, 33.904861, 28.148233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599205, 33.690567, 28.339794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716660, 0.468347, -0.516768,
		0.052562, 0.702590, 0.709651,
		0.695439, -0.535741, 0.478902,
		40.807838, 33.529846, 28.483465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856979, 34.386890, 28.148211>,  <40.321030, 33.904861, 28.148233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856979, 34.386890, 28.148211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.020405, 34.031441, 28.231567>,  <41.118458, 33.818172, 28.281582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.020405, 34.031441, 28.231567>,  <40.856979, 34.386890, 28.148211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020405, 34.031441, 28.231567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743862, 0.191871, -0.640199,
		0.528912, 0.416573, 0.739404,
		0.408560, -0.888624, 0.208390,
		41.142971, 33.764854, 28.294085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575661, 34.468544, 28.273188>,  <40.856979, 34.386890, 28.148211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575661, 34.468544, 28.273188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.552567, 34.084064, 28.165287>,  <41.538712, 33.853378, 28.100546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.552567, 34.084064, 28.165287>,  <41.575661, 34.468544, 28.273188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552567, 34.084064, 28.165287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625378, 0.175797, -0.760261,
		0.778183, -0.212593, 0.590962,
		-0.057737, -0.961197, -0.269753,
		41.535244, 33.795704, 28.084362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260799, 34.254845, 28.259506>,  <41.575661, 34.468544, 28.273188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260799, 34.254845, 28.259506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.048691, 34.007450, 28.027546>,  <41.921425, 33.859013, 27.888369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.048691, 34.007450, 28.027546>,  <42.260799, 34.254845, 28.259506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048691, 34.007450, 28.027546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685641, 0.089502, -0.722416,
		0.498709, -0.780680, 0.376602,
		-0.530269, -0.618489, -0.579901,
		41.889610, 33.821903, 27.853575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760334, 33.894665, 27.894894>,  <42.260799, 34.254845, 28.259506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760334, 33.894665, 27.894894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424374, 33.853222, 27.681793>,  <42.222797, 33.828358, 27.553932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424374, 33.853222, 27.681793>,  <42.760334, 33.894665, 27.894894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424374, 33.853222, 27.681793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516054, 0.151527, -0.843047,
		0.168070, -0.983008, -0.073803,
		-0.839906, -0.103605, -0.532752,
		42.172401, 33.822140, 27.521967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946621, 33.442230, 27.352148>,  <42.760334, 33.894665, 27.894894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946621, 33.442230, 27.352148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.603176, 33.579136, 27.199493>,  <42.397110, 33.661278, 27.107901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.603176, 33.579136, 27.199493>,  <42.946621, 33.442230, 27.352148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603176, 33.579136, 27.199493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448301, 0.140250, -0.882812,
		-0.248628, -0.929079, -0.273856,
		-0.858610, 0.342262, -0.381637,
		42.345592, 33.681816, 27.085003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802757, 33.132645, 26.593847>,  <42.946621, 33.442230, 27.352148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802757, 33.132645, 26.593847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.598751, 33.475212, 26.625919>,  <42.476345, 33.680752, 26.645163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.598751, 33.475212, 26.625919>,  <42.802757, 33.132645, 26.593847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598751, 33.475212, 26.625919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104972, 0.154489, -0.982402,
		-0.853734, -0.492627, -0.168692,
		-0.510019, 0.856418, 0.080181,
		42.445744, 33.732136, 26.649973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287334, 33.150826, 25.972921>,  <42.802757, 33.132645, 26.593847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287334, 33.150826, 25.972921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.343224, 33.521381, 26.112793>,  <42.376759, 33.743717, 26.196716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.343224, 33.521381, 26.112793>,  <42.287334, 33.150826, 25.972921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343224, 33.521381, 26.112793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071393, 0.342800, -0.936691,
		-0.987614, 0.155841, -0.018241,
		0.139722, 0.926391, 0.349680,
		42.385139, 33.799297, 26.217697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997749, 33.527225, 25.417921>,  <42.287334, 33.150826, 25.972921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997749, 33.527225, 25.417921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.227306, 33.771191, 25.636520>,  <42.365040, 33.917568, 25.767681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.227306, 33.771191, 25.636520>,  <41.997749, 33.527225, 25.417921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227306, 33.771191, 25.636520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245363, 0.508617, -0.825292,
		-0.781312, 0.607717, 0.142240,
		0.573889, 0.609910, 0.546499,
		42.399471, 33.954163, 25.800470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938019, 34.215294, 25.074587>,  <41.997749, 33.527225, 25.417921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938019, 34.215294, 25.074587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.274113, 34.261318, 25.286537>,  <42.475769, 34.288933, 25.413708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.274113, 34.261318, 25.286537>,  <41.938019, 34.215294, 25.074587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274113, 34.261318, 25.286537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430907, 0.451480, -0.781336,
		-0.329131, 0.884831, 0.329767,
		0.840233, 0.115063, 0.529876,
		42.526184, 34.295837, 25.445499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071518, 34.948574, 25.072660>,  <41.938019, 34.215294, 25.074587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071518, 34.948574, 25.072660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.411648, 34.750534, 25.144012>,  <42.615726, 34.631710, 25.186825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.411648, 34.750534, 25.144012>,  <42.071518, 34.948574, 25.072660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411648, 34.750534, 25.144012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439632, 0.481991, -0.757897,
		0.289258, 0.722882, 0.627512,
		0.850326, -0.495102, 0.178382,
		42.666744, 34.602005, 25.197527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785748, 35.027618, 24.404713>,  <42.071518, 34.948574, 25.072660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785748, 35.027618, 24.404713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.447178, 35.033493, 24.191792>,  <41.244034, 35.037018, 24.064039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.447178, 35.033493, 24.191792>,  <41.785748, 35.027618, 24.404713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447178, 35.033493, 24.191792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525494, 0.138613, 0.839430,
		0.086112, 0.990238, -0.109608,
		-0.846428, 0.014687, -0.532300,
		41.193249, 35.037899, 24.032101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445229, 35.675430, 24.550880>,  <41.785748, 35.027618, 24.404713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445229, 35.675430, 24.550880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.163776, 35.419888, 24.426453>,  <40.994907, 35.266560, 24.351795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.163776, 35.419888, 24.426453>,  <41.445229, 35.675430, 24.550880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163776, 35.419888, 24.426453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596491, 0.293158, 0.747167,
		-0.386143, 0.711278, -0.587348,
		-0.703628, -0.638861, -0.311070,
		40.952686, 35.228230, 24.333132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788494, 36.036541, 24.703564>,  <41.445229, 35.675430, 24.550880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788494, 36.036541, 24.703564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.680344, 35.653553, 24.663284>,  <40.615452, 35.423759, 24.639116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.680344, 35.653553, 24.663284>,  <40.788494, 36.036541, 24.703564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680344, 35.653553, 24.663284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729695, 0.135572, 0.670198,
		-0.628045, 0.254686, -0.735319,
		-0.270379, -0.957473, -0.100697,
		40.599232, 35.366310, 24.633076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113186, 36.029259, 24.769325>,  <40.788494, 36.036541, 24.703564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113186, 36.029259, 24.769325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230602, 35.659767, 24.867756>,  <40.301052, 35.438072, 24.926813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230602, 35.659767, 24.867756>,  <40.113186, 36.029259, 24.769325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230602, 35.659767, 24.867756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628159, 0.007652, 0.778048,
		-0.720591, -0.382960, -0.578005,
		0.293538, -0.923733, 0.246074,
		40.318665, 35.382648, 24.941578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513996, 35.722488, 25.059347>,  <40.113186, 36.029259, 24.769325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513996, 35.722488, 25.059347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.804390, 35.463749, 25.152748>,  <39.978626, 35.308506, 25.208790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.804390, 35.463749, 25.152748>,  <39.513996, 35.722488, 25.059347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804390, 35.463749, 25.152748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493551, -0.253625, 0.831915,
		-0.478903, -0.719207, -0.503383,
		0.725989, -0.646851, 0.233503,
		40.022186, 35.269695, 25.222799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206375, 35.175339, 25.204315>,  <39.513996, 35.722488, 25.059347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206375, 35.175339, 25.204315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.554359, 35.108536, 25.389904>,  <39.763149, 35.068455, 25.501257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.554359, 35.108536, 25.389904>,  <39.206375, 35.175339, 25.204315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554359, 35.108536, 25.389904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493115, -0.295984, 0.818066,
		0.000702, -0.940479, -0.339851,
		0.869964, -0.167011, 0.463972,
		39.815350, 35.058434, 25.529095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206600, 34.482571, 25.437397>,  <39.206375, 35.175339, 25.204315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206600, 34.482571, 25.437397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469444, 34.679817, 25.665447>,  <39.627151, 34.798164, 25.802277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469444, 34.679817, 25.665447>,  <39.206600, 34.482571, 25.437397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469444, 34.679817, 25.665447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522102, -0.247799, 0.816092,
		0.543704, -0.833925, 0.094626,
		0.657111, 0.493117, 0.570123,
		39.666576, 34.827751, 25.836485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355289, 34.077919, 25.971539>,  <39.206600, 34.482571, 25.437397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355289, 34.077919, 25.971539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.447693, 34.436539, 26.122711>,  <39.503136, 34.651711, 26.213415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.447693, 34.436539, 26.122711>,  <39.355289, 34.077919, 25.971539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447693, 34.436539, 26.122711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294434, -0.305805, 0.905424,
		0.927331, -0.320438, 0.193331,
		0.231011, 0.896550, 0.377930,
		39.516994, 34.705505, 26.236090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509548, 33.882191, 26.572327>,  <39.355289, 34.077919, 25.971539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509548, 33.882191, 26.572327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505150, 34.278339, 26.627529>,  <39.502510, 34.516029, 26.660650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505150, 34.278339, 26.627529>,  <39.509548, 33.882191, 26.572327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505150, 34.278339, 26.627529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367050, -0.132376, 0.920734,
		0.930136, -0.040529, 0.364971,
		-0.010997, 0.990370, 0.138004,
		39.501850, 34.575451, 26.668930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744362, 33.988464, 27.221411>,  <39.509548, 33.882191, 26.572327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744362, 33.988464, 27.221411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539631, 34.321609, 27.137161>,  <39.416790, 34.521496, 27.086611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539631, 34.321609, 27.137161>,  <39.744362, 33.988464, 27.221411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539631, 34.321609, 27.137161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460220, -0.058800, 0.885855,
		0.725414, 0.550343, 0.413398,
		-0.511832, 0.832866, -0.210624,
		39.386082, 34.571468, 27.073975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794704, 34.351482, 27.801388>,  <39.744362, 33.988464, 27.221411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794704, 34.351482, 27.801388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469936, 34.467426, 27.598698>,  <39.275078, 34.536991, 27.477083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469936, 34.467426, 27.598698>,  <39.794704, 34.351482, 27.801388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469936, 34.467426, 27.598698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557793, -0.129142, 0.819871,
		0.172206, 0.948317, 0.266534,
		-0.811919, 0.289857, -0.506726,
		39.226360, 34.554382, 27.446680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439655, 34.737961, 28.316275>,  <39.794704, 34.351482, 27.801388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439655, 34.737961, 28.316275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166748, 34.637951, 28.041466>,  <39.003002, 34.577946, 27.876581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166748, 34.637951, 28.041466>,  <39.439655, 34.737961, 28.316275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166748, 34.637951, 28.041466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661175, -0.190045, 0.725762,
		-0.312025, 0.949405, -0.035650,
		-0.682267, -0.250026, -0.687021,
		38.962067, 34.562943, 27.835360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726765, 34.999928, 28.683893>,  <39.439655, 34.737961, 28.316275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726765, 34.999928, 28.683893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.604507, 34.770527, 28.379871>,  <38.531151, 34.632889, 28.197458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.604507, 34.770527, 28.379871>,  <38.726765, 34.999928, 28.683893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604507, 34.770527, 28.379871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813305, -0.257819, 0.521597,
		-0.495091, 0.777579, -0.387628,
		-0.305645, -0.573498, -0.760054,
		38.512814, 34.598476, 28.151855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951496, 35.090511, 28.661171>,  <38.726765, 34.999928, 28.683893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951496, 35.090511, 28.661171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046467, 34.764545, 28.449684>,  <38.103447, 34.568966, 28.322792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046467, 34.764545, 28.449684>,  <37.951496, 35.090511, 28.661171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046467, 34.764545, 28.449684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870997, -0.419578, 0.255576,
		-0.430111, 0.399833, -0.809406,
		0.237421, -0.814916, -0.528719,
		38.117695, 34.520069, 28.291069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295326, 34.821507, 28.478231>,  <37.951496, 35.090511, 28.661171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295326, 34.821507, 28.478231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.526920, 34.498898, 28.430397>,  <37.665878, 34.305332, 28.401695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.526920, 34.498898, 28.430397>,  <37.295326, 34.821507, 28.478231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526920, 34.498898, 28.430397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737597, -0.580622, 0.344716,
		-0.347455, -0.111379, -0.931059,
		0.578987, -0.806519, -0.119587,
		37.700615, 34.256943, 28.394522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887001, 34.349072, 27.994972>,  <37.295326, 34.821507, 28.478231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887001, 34.349072, 27.994972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.167446, 34.128124, 28.175339>,  <37.335712, 33.995556, 28.283560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.167446, 34.128124, 28.175339>,  <36.887001, 34.349072, 27.994972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167446, 34.128124, 28.175339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699681, -0.654813, 0.285774,
		0.137415, -0.515859, -0.845581,
		0.701116, -0.552367, 0.450918,
		37.377781, 33.962414, 28.310614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687134, 33.645851, 27.813189>,  <36.887001, 34.349072, 27.994972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687134, 33.645851, 27.813189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.929169, 33.625408, 28.130997>,  <37.074390, 33.613144, 28.321682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.929169, 33.625408, 28.130997>,  <36.687134, 33.645851, 27.813189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929169, 33.625408, 28.130997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548362, -0.750249, 0.369358,
		0.577210, -0.659177, -0.481990,
		0.605085, -0.051107, 0.794519,
		37.110695, 33.610077, 28.369352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971130, 32.978123, 27.916431>,  <36.687134, 33.645851, 27.813189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971130, 32.978123, 27.916431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004055, 33.144691, 28.278606>,  <37.023811, 33.244633, 28.495913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004055, 33.144691, 28.278606>,  <36.971130, 32.978123, 27.916431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004055, 33.144691, 28.278606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582842, -0.716840, 0.382668,
		0.808405, -0.559228, 0.183698,
		0.082316, 0.416418, 0.905439,
		37.028751, 33.269615, 28.550238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211044, 32.485958, 28.316374>,  <36.971130, 32.978123, 27.916431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211044, 32.485958, 28.316374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.058216, 32.754803, 28.570076>,  <36.966518, 32.916111, 28.722298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.058216, 32.754803, 28.570076>,  <37.211044, 32.485958, 28.316374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058216, 32.754803, 28.570076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511380, -0.725437, 0.460687,
		0.769748, -0.148330, 0.620876,
		-0.382073, 0.672116, 0.634256,
		36.943596, 32.956436, 28.760353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337799, 32.189373, 29.032282>,  <37.211044, 32.485958, 28.316374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337799, 32.189373, 29.032282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051823, 32.468601, 29.048012>,  <36.880234, 32.636139, 29.057449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051823, 32.468601, 29.048012>,  <37.337799, 32.189373, 29.032282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051823, 32.468601, 29.048012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579432, -0.623038, 0.525434,
		0.391293, 0.352870, 0.849925,
		-0.714946, 0.698073, 0.039327,
		36.837337, 32.678024, 29.059809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289722, 32.300186, 29.705475>,  <37.337799, 32.189373, 29.032282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289722, 32.300186, 29.705475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.951771, 32.407959, 29.520615>,  <36.749001, 32.472622, 29.409698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.951771, 32.407959, 29.520615>,  <37.289722, 32.300186, 29.705475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951771, 32.407959, 29.520615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502675, -0.695401, 0.513551,
		-0.183014, 0.666201, 0.722967,
		-0.844881, 0.269431, -0.462151,
		36.698307, 32.488789, 29.381969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.215900, 27.664986, 28.055347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.544992, 27.727310, 28.274010>,  <29.742449, 27.764704, 28.405207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.544992, 27.727310, 28.274010>,  <29.215900, 27.664986, 28.055347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544992, 27.727310, 28.274010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080633, -0.919984, 0.383572,
		0.562681, -0.359655, -0.744337,
		0.822732, 0.155810, 0.546658,
		29.791813, 27.774054, 28.438007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721521, 27.087597, 27.957558>,  <29.215900, 27.664986, 28.055347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721521, 27.087597, 27.957558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807018, 27.248932, 28.313454>,  <29.858316, 27.345732, 28.526991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807018, 27.248932, 28.313454>,  <29.721521, 27.087597, 27.957558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807018, 27.248932, 28.313454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057998, -0.903941, 0.423707,
		0.975166, -0.142168, -0.169820,
		0.213744, 0.403336, 0.889738,
		29.871141, 27.369932, 28.580376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065119, 26.524124, 28.315231>,  <29.721521, 27.087597, 27.957558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065119, 26.524124, 28.315231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.999847, 26.775848, 28.619164>,  <29.960684, 26.926882, 28.801523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.999847, 26.775848, 28.619164>,  <30.065119, 26.524124, 28.315231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999847, 26.775848, 28.619164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175714, -0.776378, 0.605278,
		0.970823, -0.034744, 0.237268,
		-0.163180, 0.629309, 0.759830,
		29.950893, 26.964642, 28.847113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519575, 26.385668, 28.876143>,  <30.065119, 26.524124, 28.315231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519575, 26.385668, 28.876143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191185, 26.567963, 29.013725>,  <29.994150, 26.677340, 29.096275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191185, 26.567963, 29.013725>,  <30.519575, 26.385668, 28.876143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191185, 26.567963, 29.013725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142248, -0.746673, 0.649804,
		0.552961, 0.484546, 0.677827,
		-0.820975, 0.455735, 0.343955,
		29.944893, 26.704683, 29.116911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533518, 26.143127, 29.518023>,  <30.519575, 26.385668, 28.876143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533518, 26.143127, 29.518023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172300, 26.314091, 29.500908>,  <29.955570, 26.416668, 29.490639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172300, 26.314091, 29.500908>,  <30.533518, 26.143127, 29.518023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172300, 26.314091, 29.500908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359197, -0.696768, 0.620880,
		0.235555, 0.576053, 0.782737,
		-0.903046, 0.427408, -0.042789,
		29.901386, 26.442312, 29.488071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288679, 26.191727, 30.234457>,  <30.533518, 26.143127, 29.518023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288679, 26.191727, 30.234457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.956219, 26.200336, 30.012203>,  <29.756742, 26.205502, 29.878851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.956219, 26.200336, 30.012203>,  <30.288679, 26.191727, 30.234457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956219, 26.200336, 30.012203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398740, -0.719524, 0.568587,
		-0.387552, 0.694134, 0.606615,
		-0.831150, 0.021524, -0.555632,
		29.706873, 26.206793, 29.845514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668013, 26.386700, 30.595963>,  <30.288679, 26.191727, 30.234457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668013, 26.386700, 30.595963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505222, 26.195652, 30.284515>,  <29.407549, 26.081022, 30.097647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505222, 26.195652, 30.284515>,  <29.668013, 26.386700, 30.595963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505222, 26.195652, 30.284515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561718, -0.541317, 0.625659,
		-0.720308, 0.691992, -0.047985,
		-0.406976, -0.477621, -0.778620,
		29.383129, 26.052366, 30.050930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983780, 26.243925, 30.807495>,  <29.668013, 26.386700, 30.595963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983780, 26.243925, 30.807495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.052591, 26.007141, 30.492538>,  <29.093878, 25.865070, 30.303564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.052591, 26.007141, 30.492538>,  <28.983780, 26.243925, 30.807495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052591, 26.007141, 30.492538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686912, -0.645007, 0.334840,
		-0.706086, 0.483266, -0.517587,
		0.172031, -0.591962, -0.787392,
		29.104200, 25.829552, 30.256321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257435, 25.959307, 30.529623>,  <28.983780, 26.243925, 30.807495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257435, 25.959307, 30.529623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.558254, 25.717087, 30.425522>,  <28.738747, 25.571754, 30.363062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.558254, 25.717087, 30.425522>,  <28.257435, 25.959307, 30.529623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558254, 25.717087, 30.425522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537913, -0.792071, 0.288571,
		-0.380882, -0.077026, -0.921410,
		0.752049, -0.605550, -0.260252,
		28.783869, 25.535421, 30.347446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924776, 25.506315, 30.192686>,  <28.257435, 25.959307, 30.529623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924776, 25.506315, 30.192686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.275215, 25.340553, 30.291252>,  <28.485479, 25.241096, 30.350391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.275215, 25.340553, 30.291252>,  <27.924776, 25.506315, 30.192686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275215, 25.340553, 30.291252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478628, -0.809072, 0.341055,
		0.058033, -0.416739, -0.907172,
		0.876098, -0.414405, 0.246415,
		28.538044, 25.216232, 30.365177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928864, 24.904480, 29.863613>,  <27.924776, 25.506315, 30.192686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928864, 24.904480, 29.863613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.195351, 24.870083, 30.159927>,  <28.355242, 24.849445, 30.337715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.195351, 24.870083, 30.159927>,  <27.928864, 24.904480, 29.863613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195351, 24.870083, 30.159927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465980, -0.823546, 0.323474,
		0.582253, -0.560694, -0.588730,
		0.666216, -0.085993, 0.740785,
		28.395216, 24.844284, 30.382162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234177, 24.267311, 29.767096>,  <27.928864, 24.904480, 29.863613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234177, 24.267311, 29.767096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.282267, 24.360142, 30.153191>,  <28.311121, 24.415840, 30.384848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.282267, 24.360142, 30.153191>,  <28.234177, 24.267311, 29.767096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282267, 24.360142, 30.153191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330031, -0.907647, 0.259337,
		0.936283, -0.349738, -0.032530,
		0.120226, 0.232077, 0.965239,
		28.318335, 24.429766, 30.442762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688402, 23.777573, 30.188805>,  <28.234177, 24.267311, 29.767096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688402, 23.777573, 30.188805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408098, 23.946461, 30.418819>,  <28.239916, 24.047792, 30.556828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408098, 23.946461, 30.418819>,  <28.688402, 23.777573, 30.188805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408098, 23.946461, 30.418819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433205, -0.892271, 0.127227,
		0.566806, -0.159953, 0.808175,
		-0.700760, 0.422218, 0.575036,
		28.197870, 24.073126, 30.591330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662289, 23.361338, 30.883295>,  <28.688402, 23.777573, 30.188805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662289, 23.361338, 30.883295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.313663, 23.518818, 30.766415>,  <28.104488, 23.613306, 30.696287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.313663, 23.518818, 30.766415>,  <28.662289, 23.361338, 30.883295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313663, 23.518818, 30.766415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410076, -0.912034, -0.005680,
		-0.268732, 0.114873, 0.956341,
		-0.871562, 0.393698, -0.292199,
		28.052195, 23.636927, 30.678755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866840, 22.667532, 30.791084>,  <28.662289, 23.361338, 30.883295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866840, 22.667532, 30.791084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.076628, 22.378830, 30.610416>,  <29.202499, 22.205608, 30.502016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.076628, 22.378830, 30.610416>,  <28.866840, 22.667532, 30.791084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076628, 22.378830, 30.610416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143661, 0.597894, -0.788596,
		0.839223, 0.348705, 0.417264,
		0.524467, -0.721753, -0.451671,
		29.233967, 22.162304, 30.474915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497385, 22.918694, 30.549355>,  <28.866840, 22.667532, 30.791084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497385, 22.918694, 30.549355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455429, 22.604401, 30.305511>,  <29.430256, 22.415825, 30.159204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455429, 22.604401, 30.305511>,  <29.497385, 22.918694, 30.549355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455429, 22.604401, 30.305511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165291, 0.590690, -0.789787,
		0.980651, -0.183604, 0.067917,
		-0.104890, -0.785732, -0.609609,
		29.423962, 22.368681, 30.122629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031084, 22.954058, 30.169975>,  <29.497385, 22.918694, 30.549355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031084, 22.954058, 30.169975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.781464, 22.727768, 29.954376>,  <29.631691, 22.591993, 29.825018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.781464, 22.727768, 29.954376>,  <30.031084, 22.954058, 30.169975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781464, 22.727768, 29.954376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266190, 0.494619, -0.827342,
		0.734645, -0.659779, -0.158077,
		-0.624051, -0.565724, -0.538996,
		29.594248, 22.558050, 29.792677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316498, 22.889730, 29.602352>,  <30.031084, 22.954058, 30.169975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316498, 22.889730, 29.602352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.941875, 22.802101, 29.492901>,  <29.717102, 22.749523, 29.427231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.941875, 22.802101, 29.492901>,  <30.316498, 22.889730, 29.602352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941875, 22.802101, 29.492901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111708, 0.553389, -0.825398,
		0.332244, -0.803597, -0.493807,
		-0.936555, -0.219072, -0.273628,
		29.660910, 22.736380, 29.410812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304087, 22.605173, 28.915602>,  <30.316498, 22.889730, 29.602352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304087, 22.605173, 28.915602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.931751, 22.738186, 28.976215>,  <29.708349, 22.817993, 29.012583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.931751, 22.738186, 28.976215>,  <30.304087, 22.605173, 28.915602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931751, 22.738186, 28.976215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071900, 0.573222, -0.816239,
		-0.358285, -0.748892, -0.557487,
		-0.930839, 0.332530, 0.151532,
		29.652500, 22.837944, 29.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029842, 22.621941, 28.264214>,  <30.304087, 22.605173, 28.915602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029842, 22.621941, 28.264214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787884, 22.865528, 28.469448>,  <29.642708, 23.011681, 28.592588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787884, 22.865528, 28.469448>,  <30.029842, 22.621941, 28.264214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787884, 22.865528, 28.469448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017269, 0.634151, -0.773016,
		-0.796116, -0.476456, -0.373080,
		-0.604897, 0.608968, 0.513086,
		29.606415, 23.048218, 28.623373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564619, 22.878599, 27.789080>,  <30.029842, 22.621941, 28.264214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564619, 22.878599, 27.789080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.542171, 23.172062, 28.059959>,  <29.528704, 23.348139, 28.222488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.542171, 23.172062, 28.059959>,  <29.564619, 22.878599, 27.789080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542171, 23.172062, 28.059959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014000, 0.678781, -0.734207,
		-0.998326, -0.031722, -0.048364,
		-0.056119, 0.733655, 0.677201,
		29.525335, 23.392159, 28.263119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048281, 23.328663, 27.545490>,  <29.564619, 22.878599, 27.789080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048281, 23.328663, 27.545490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.239737, 23.565758, 27.804585>,  <29.354610, 23.708015, 27.960041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.239737, 23.565758, 27.804585>,  <29.048281, 23.328663, 27.545490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239737, 23.565758, 27.804585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106349, 0.771440, -0.627352,
		-0.871546, 0.231390, 0.432280,
		0.478642, 0.592738, 0.647738,
		29.383329, 23.743580, 27.998905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684959, 24.030643, 27.483820>,  <29.048281, 23.328663, 27.545490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684959, 24.030643, 27.483820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.037907, 24.117405, 27.650856>,  <29.249674, 24.169462, 27.751078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.037907, 24.117405, 27.650856>,  <28.684959, 24.030643, 27.483820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037907, 24.117405, 27.650856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174246, 0.673737, -0.718134,
		-0.437114, 0.706420, 0.556688,
		0.882366, 0.216905, 0.417591,
		29.302616, 24.182476, 27.776133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712715, 24.725924, 27.569416>,  <28.684959, 24.030643, 27.483820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712715, 24.725924, 27.569416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.094143, 24.605629, 27.575912>,  <29.323000, 24.533453, 27.579809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.094143, 24.605629, 27.575912>,  <28.712715, 24.725924, 27.569416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094143, 24.605629, 27.575912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227832, 0.685039, -0.691964,
		0.196974, 0.663536, 0.721749,
		0.953569, -0.300736, 0.016240,
		29.380213, 24.515408, 27.580784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962608, 25.297909, 27.351286>,  <28.712715, 24.725924, 27.569416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962608, 25.297909, 27.351286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.275259, 25.048897, 27.335709>,  <29.462849, 24.899488, 27.326363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.275259, 25.048897, 27.335709>,  <28.962608, 25.297909, 27.351286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275259, 25.048897, 27.335709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430875, 0.584024, -0.687941,
		0.451009, 0.520932, 0.724721,
		0.781625, -0.622532, -0.038943,
		29.509747, 24.862137, 27.324026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580912, 25.673536, 27.539976>,  <28.962608, 25.297909, 27.351286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580912, 25.673536, 27.539976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707203, 25.360538, 27.325306>,  <29.782978, 25.172741, 27.196505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707203, 25.360538, 27.325306>,  <29.580912, 25.673536, 27.539976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707203, 25.360538, 27.325306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386584, 0.622616, -0.680369,
		0.866527, 0.007342, 0.499077,
		0.315728, -0.782493, -0.536675,
		29.801922, 25.125790, 27.164303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365669, 25.646332, 27.410025>,  <29.580912, 25.673536, 27.539976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365669, 25.646332, 27.410025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.199530, 25.414124, 27.129887>,  <30.099846, 25.274799, 26.961803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.199530, 25.414124, 27.129887>,  <30.365669, 25.646332, 27.410025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199530, 25.414124, 27.129887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461316, 0.529129, -0.712187,
		0.784011, -0.618886, 0.048030,
		-0.415349, -0.580519, -0.700345,
		30.074924, 25.239967, 26.919783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895609, 25.484514, 26.975582>,  <30.365669, 25.646332, 27.410025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895609, 25.484514, 26.975582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.548948, 25.457130, 26.777905>,  <30.340952, 25.440701, 26.659298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.548948, 25.457130, 26.777905>,  <30.895609, 25.484514, 26.975582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548948, 25.457130, 26.777905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378004, 0.556376, -0.739972,
		0.325615, -0.828106, -0.456307,
		-0.866653, -0.068461, -0.494192,
		30.288952, 25.436592, 26.629646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610895, 25.551704, 26.900600>,  <30.895609, 25.484514, 26.975582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610895, 25.551704, 26.900600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823816, 25.803722, 27.126766>,  <31.951569, 25.954933, 27.262466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823816, 25.803722, 27.126766>,  <31.610895, 25.551704, 26.900600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823816, 25.803722, 27.126766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173702, -0.734980, 0.655464,
		0.828541, -0.250692, -0.500673,
		0.532304, 0.630046, 0.565415,
		31.983507, 25.992737, 27.296391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213501, 25.132133, 27.121113>,  <31.610895, 25.551704, 26.900600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213501, 25.132133, 27.121113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.165268, 25.439976, 27.371925>,  <32.136330, 25.624681, 27.522413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.165268, 25.439976, 27.371925>,  <32.213501, 25.132133, 27.121113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165268, 25.439976, 27.371925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220349, -0.595131, 0.772829,
		0.967940, 0.231353, -0.097821,
		-0.120580, 0.769607, 0.627029,
		32.129093, 25.670858, 27.560034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798779, 25.160099, 27.540680>,  <32.213501, 25.132133, 27.121113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798779, 25.160099, 27.540680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.520325, 25.370117, 27.736526>,  <32.353252, 25.496128, 27.854034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.520325, 25.370117, 27.736526>,  <32.798779, 25.160099, 27.540680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520325, 25.370117, 27.736526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155132, -0.555873, 0.816663,
		0.700949, 0.644463, 0.305512,
		-0.696135, 0.525045, 0.489616,
		32.311485, 25.527630, 27.883411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091705, 25.151041, 28.263453>,  <32.798779, 25.160099, 27.540680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091705, 25.151041, 28.263453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704166, 25.248459, 28.281425>,  <32.471642, 25.306910, 28.292210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704166, 25.248459, 28.281425>,  <33.091705, 25.151041, 28.263453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704166, 25.248459, 28.281425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072611, -0.452812, 0.888645,
		0.236771, 0.857699, 0.456390,
		-0.968848, 0.243544, 0.044934,
		32.413513, 25.321522, 28.294907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917118, 25.481886, 28.889982>,  <33.091705, 25.151041, 28.263453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917118, 25.481886, 28.889982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580116, 25.312698, 28.756546>,  <32.377914, 25.211185, 28.676485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580116, 25.312698, 28.756546>,  <32.917118, 25.481886, 28.889982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580116, 25.312698, 28.756546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105727, -0.477382, 0.872312,
		-0.528209, 0.770198, 0.357478,
		-0.842506, -0.422968, -0.333588,
		32.327366, 25.185808, 28.656469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591309, 25.287352, 29.501539>,  <32.917118, 25.481886, 28.889982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591309, 25.287352, 29.501539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337914, 25.103516, 29.252552>,  <32.185875, 24.993214, 29.103159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337914, 25.103516, 29.252552>,  <32.591309, 25.287352, 29.501539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337914, 25.103516, 29.252552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287514, -0.607060, 0.740820,
		-0.718348, 0.648271, 0.252429,
		-0.633492, -0.459590, -0.622467,
		32.147865, 24.965639, 29.065811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953465, 25.234680, 29.894463>,  <32.591309, 25.287352, 29.501539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953465, 25.234680, 29.894463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967943, 24.958149, 29.605808>,  <31.976631, 24.792231, 29.432615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967943, 24.958149, 29.605808>,  <31.953465, 25.234680, 29.894463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967943, 24.958149, 29.605808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228699, -0.708675, 0.667440,
		-0.972824, 0.140877, -0.183759,
		0.036198, -0.691327, -0.721634,
		31.978802, 24.750751, 29.389318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741465, 25.596001, 30.525373>,  <31.953465, 25.234680, 29.894463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741465, 25.596001, 30.525373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102848, 25.607117, 30.696484>,  <32.319679, 25.613787, 30.799149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102848, 25.607117, 30.696484>,  <31.741465, 25.596001, 30.525373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102848, 25.607117, 30.696484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221246, 0.824489, -0.520835,
		-0.367170, 0.565196, 0.738742,
		0.903458, 0.027791, 0.427775,
		32.373886, 25.615454, 30.824816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793306, 26.264250, 30.702715>,  <31.741465, 25.596001, 30.525373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793306, 26.264250, 30.702715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173962, 26.141918, 30.714397>,  <32.402355, 26.068520, 30.721407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173962, 26.141918, 30.714397>,  <31.793306, 26.264250, 30.702715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173962, 26.141918, 30.714397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279983, 0.824199, -0.492246,
		0.126470, 0.476617, 0.869966,
		0.951638, -0.305831, 0.029208,
		32.459454, 26.050169, 30.723160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196339, 26.794683, 30.978809>,  <31.793306, 26.264250, 30.702715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196339, 26.794683, 30.978809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438087, 26.561085, 30.762039>,  <32.583138, 26.420925, 30.631977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438087, 26.561085, 30.762039>,  <32.196339, 26.794683, 30.978809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438087, 26.561085, 30.762039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358670, 0.806823, -0.469459,
		0.711399, 0.089357, 0.697085,
		0.604374, -0.583996, -0.541923,
		32.619400, 26.385885, 30.599463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597530, 27.334408, 30.694233>,  <32.196339, 26.794683, 30.978809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597530, 27.334408, 30.694233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727184, 27.012897, 30.494682>,  <32.804977, 26.819990, 30.374952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727184, 27.012897, 30.494682>,  <32.597530, 27.334408, 30.694233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727184, 27.012897, 30.494682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570460, 0.586753, -0.574715,
		0.754660, -0.098303, 0.648710,
		0.324136, -0.803777, -0.498876,
		32.824425, 26.771765, 30.345020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271839, 27.434504, 30.692087>,  <32.597530, 27.334408, 30.694233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271839, 27.434504, 30.692087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218479, 27.183735, 30.385056>,  <33.186462, 27.033274, 30.200836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218479, 27.183735, 30.385056>,  <33.271839, 27.434504, 30.692087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218479, 27.183735, 30.385056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501949, 0.625077, -0.597767,
		0.854548, -0.465027, 0.231297,
		-0.133399, -0.626920, -0.767578,
		33.178459, 26.995659, 30.154781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929638, 27.239546, 30.269274>,  <33.271839, 27.434504, 30.692087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929638, 27.239546, 30.269274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622910, 27.184799, 30.018433>,  <33.438873, 27.151951, 29.867928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622910, 27.184799, 30.018433>,  <33.929638, 27.239546, 30.269274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622910, 27.184799, 30.018433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501072, 0.482952, -0.718112,
		0.401147, -0.864884, -0.301755,
		-0.766817, -0.136868, -0.627104,
		33.392864, 27.143740, 29.830301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208191, 27.014622, 29.592402>,  <33.929638, 27.239546, 30.269274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208191, 27.014622, 29.592402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840862, 27.162014, 29.534565>,  <33.620464, 27.250450, 29.499863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840862, 27.162014, 29.534565>,  <34.208191, 27.014622, 29.592402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840862, 27.162014, 29.534565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338505, 0.541698, -0.769401,
		-0.205186, -0.755502, -0.622186,
		-0.918321, 0.368483, -0.144592,
		33.565365, 27.272558, 29.491188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.306767, 25.374193, 33.362503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.092884, 25.419403, 33.027527>,  <28.964554, 25.446529, 32.826542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.092884, 25.419403, 33.027527>,  <29.306767, 25.374193, 33.362503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092884, 25.419403, 33.027527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364722, 0.924825, -0.108057,
		0.762276, -0.363214, -0.535734,
		-0.534708, 0.113025, -0.837444,
		28.932472, 25.453310, 32.776295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799149, 25.574022, 32.860386>,  <29.306767, 25.374193, 33.362503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799149, 25.574022, 32.860386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.445969, 25.720200, 32.742508>,  <29.234060, 25.807907, 32.671780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.445969, 25.720200, 32.742508>,  <29.799149, 25.574022, 32.860386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445969, 25.720200, 32.742508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428345, 0.884028, -0.187122,
		0.192139, -0.291452, -0.937090,
		-0.882951, 0.365445, -0.294698,
		29.181084, 25.829834, 32.654099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060604, 26.107149, 32.634571>,  <29.799149, 25.574022, 32.860386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060604, 26.107149, 32.634571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.675507, 26.202911, 32.584282>,  <29.444448, 26.260368, 32.554108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.675507, 26.202911, 32.584282>,  <30.060604, 26.107149, 32.634571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675507, 26.202911, 32.584282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262749, 0.938101, -0.225678,
		0.063913, -0.250304, -0.966055,
		-0.962745, 0.239406, -0.125724,
		29.386683, 26.274733, 32.546566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002981, 26.241604, 31.870758>,  <30.060604, 26.107149, 32.634571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002981, 26.241604, 31.870758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.722687, 26.416275, 32.096424>,  <29.554510, 26.521078, 32.231823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.722687, 26.416275, 32.096424>,  <30.002981, 26.241604, 31.870758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722687, 26.416275, 32.096424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305358, 0.898273, -0.316011,
		-0.644767, -0.049168, -0.762796,
		-0.700736, 0.436679, 0.564163,
		29.512466, 26.547279, 32.265675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657038, 26.618095, 31.398241>,  <30.002981, 26.241604, 31.870758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657038, 26.618095, 31.398241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.545708, 26.794830, 31.739372>,  <29.478909, 26.900871, 31.944050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.545708, 26.794830, 31.739372>,  <29.657038, 26.618095, 31.398241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545708, 26.794830, 31.739372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259465, 0.889487, -0.376154,
		-0.924777, 0.116585, -0.362209,
		-0.278327, 0.441839, 0.852826,
		29.462210, 26.927382, 31.995220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208715, 27.154015, 31.253962>,  <29.657038, 26.618095, 31.398241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208715, 27.154015, 31.253962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.307819, 27.265274, 31.625175>,  <29.367281, 27.332029, 31.847904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.307819, 27.265274, 31.625175>,  <29.208715, 27.154015, 31.253962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307819, 27.265274, 31.625175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348660, 0.868120, -0.353275,
		-0.903909, 0.411096, 0.118106,
		0.247760, 0.278150, 0.928034,
		29.382147, 27.348719, 31.903585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089020, 27.851309, 31.138062>,  <29.208715, 27.154015, 31.253962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089020, 27.851309, 31.138062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270557, 27.810890, 31.492195>,  <29.379480, 27.786638, 31.704676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270557, 27.810890, 31.492195>,  <29.089020, 27.851309, 31.138062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270557, 27.810890, 31.492195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376894, 0.922070, -0.087966,
		-0.807451, 0.373600, 0.456559,
		0.453844, -0.101046, 0.885334,
		29.406710, 27.780577, 31.757795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949255, 28.424013, 31.685024>,  <29.089020, 27.851309, 31.138062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949255, 28.424013, 31.685024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.315779, 28.292847, 31.776978>,  <29.535694, 28.214148, 31.832150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.315779, 28.292847, 31.776978>,  <28.949255, 28.424013, 31.685024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315779, 28.292847, 31.776978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321574, 0.944606, 0.065643,
		-0.238676, 0.013776, 0.971001,
		0.916310, -0.327916, 0.229885,
		29.590672, 28.194471, 31.845943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186291, 29.015604, 32.088737>,  <28.949255, 28.424013, 31.685024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186291, 29.015604, 32.088737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.514235, 28.804523, 31.999866>,  <29.711000, 28.677876, 31.946545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.514235, 28.804523, 31.999866>,  <29.186291, 29.015604, 32.088737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514235, 28.804523, 31.999866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549130, 0.834571, 0.044128,
		0.162136, -0.158182, 0.974007,
		0.819859, -0.527702, -0.222176,
		29.760193, 28.646214, 31.933214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736284, 29.164270, 32.605247>,  <29.186291, 29.015604, 32.088737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736284, 29.164270, 32.605247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.871895, 29.057869, 32.244293>,  <29.953262, 28.994028, 32.027721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.871895, 29.057869, 32.244293>,  <29.736284, 29.164270, 32.605247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871895, 29.057869, 32.244293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306073, 0.938197, -0.161569,
		0.889595, -0.221420, 0.399492,
		0.339028, -0.266005, -0.902386,
		29.973602, 28.978067, 31.973577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425653, 29.317492, 32.688072>,  <29.736284, 29.164270, 32.605247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425653, 29.317492, 32.688072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.339268, 29.292419, 32.298317>,  <30.287436, 29.277376, 32.064465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.339268, 29.292419, 32.298317>,  <30.425653, 29.317492, 32.688072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339268, 29.292419, 32.298317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342831, 0.929532, -0.135782,
		0.914236, -0.363374, -0.179255,
		-0.215963, -0.062683, -0.974387,
		30.274479, 29.273615, 32.006001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903257, 29.696272, 32.434090>,  <30.425653, 29.317492, 32.688072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903257, 29.696272, 32.434090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.675051, 29.667358, 32.106850>,  <30.538126, 29.650011, 31.910505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.675051, 29.667358, 32.106850>,  <30.903257, 29.696272, 32.434090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675051, 29.667358, 32.106850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227528, 0.943219, -0.242009,
		0.789140, -0.324211, -0.521676,
		-0.570517, -0.072283, -0.818099,
		30.503895, 29.645674, 31.861420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527336, 29.308783, 32.003963>,  <30.903257, 29.696272, 32.434090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527336, 29.308783, 32.003963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906153, 29.249397, 32.117855>,  <32.133442, 29.213766, 32.186192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906153, 29.249397, 32.117855>,  <31.527336, 29.308783, 32.003963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906153, 29.249397, 32.117855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282256, -0.807674, 0.517682,
		0.153114, -0.570633, -0.806805,
		0.947042, -0.148461, 0.284731,
		32.190266, 29.204859, 32.203274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608315, 28.594109, 31.970167>,  <31.527336, 29.308783, 32.003963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608315, 28.594109, 31.970167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.937296, 28.671818, 32.184021>,  <32.134686, 28.718443, 32.312332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.937296, 28.671818, 32.184021>,  <31.608315, 28.594109, 31.970167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937296, 28.671818, 32.184021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214927, -0.764072, 0.608277,
		0.526669, -0.615185, -0.586657,
		0.822451, 0.194272, 0.534633,
		32.184032, 28.730099, 32.344410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962631, 28.008156, 32.026390>,  <31.608315, 28.594109, 31.970167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962631, 28.008156, 32.026390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096531, 28.236469, 32.326298>,  <32.176868, 28.373457, 32.506241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096531, 28.236469, 32.326298>,  <31.962631, 28.008156, 32.026390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096531, 28.236469, 32.326298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138373, -0.757272, 0.638273,
		0.932093, -0.317408, -0.174513,
		0.334747, 0.570782, 0.749768,
		32.196957, 28.407703, 32.551228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437550, 27.613411, 32.460400>,  <31.962631, 28.008156, 32.026390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437550, 27.613411, 32.460400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.334042, 27.900188, 32.719330>,  <32.271938, 28.072254, 32.874687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.334042, 27.900188, 32.719330>,  <32.437550, 27.613411, 32.460400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334042, 27.900188, 32.719330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098943, -0.686302, 0.720555,
		0.960858, 0.122410, 0.248532,
		-0.258771, 0.716942, 0.647327,
		32.256409, 28.115271, 32.913528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785545, 27.404011, 33.066048>,  <32.437550, 27.613411, 32.460400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785545, 27.404011, 33.066048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.530495, 27.679092, 33.204895>,  <32.377464, 27.844141, 33.288204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.530495, 27.679092, 33.204895>,  <32.785545, 27.404011, 33.066048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530495, 27.679092, 33.204895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266355, -0.619628, 0.738319,
		0.722833, 0.378314, 0.578265,
		-0.637626, 0.687706, 0.347122,
		32.339207, 27.885405, 33.309032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936012, 27.728539, 33.757298>,  <32.785545, 27.404011, 33.066048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936012, 27.728539, 33.757298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540760, 27.736229, 33.696339>,  <32.303608, 27.740843, 33.659763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540760, 27.736229, 33.696339>,  <32.936012, 27.728539, 33.757298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540760, 27.736229, 33.696339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133451, -0.598768, 0.789726,
		-0.076069, 0.800692, 0.594228,
		-0.988132, 0.019227, -0.152401,
		32.244320, 27.741997, 33.650620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613869, 27.820196, 34.499645>,  <32.936012, 27.728539, 33.757298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613869, 27.820196, 34.499645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337215, 27.681606, 34.246159>,  <32.171223, 27.598452, 34.094067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337215, 27.681606, 34.246159>,  <32.613869, 27.820196, 34.499645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337215, 27.681606, 34.246159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332844, -0.625795, 0.705404,
		-0.640984, 0.698810, 0.317497,
		-0.691631, -0.346476, -0.633719,
		32.129726, 27.577663, 34.056042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087017, 27.599949, 34.856735>,  <32.613869, 27.820196, 34.499645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087017, 27.599949, 34.856735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.021236, 27.401466, 34.515739>,  <31.981768, 27.282377, 34.311142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.021236, 27.401466, 34.515739>,  <32.087017, 27.599949, 34.856735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021236, 27.401466, 34.515739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461158, -0.725306, 0.511140,
		-0.871944, 0.477192, -0.109548,
		-0.164455, -0.496205, -0.852488,
		31.971899, 27.252605, 34.259995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425356, 27.414433, 35.001472>,  <32.087017, 27.599949, 34.856735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425356, 27.414433, 35.001472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.570976, 27.177948, 34.713600>,  <31.658348, 27.036057, 34.540878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.570976, 27.177948, 34.713600>,  <31.425356, 27.414433, 35.001472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570976, 27.177948, 34.713600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261531, -0.806503, 0.530240,
		-0.893907, -0.004815, -0.448227,
		0.364050, -0.591211, -0.719679,
		31.680191, 27.000586, 34.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175888, 26.746349, 35.098728>,  <31.425356, 27.414433, 35.001472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175888, 26.746349, 35.098728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434780, 26.610577, 34.825706>,  <31.590115, 26.529114, 34.661892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434780, 26.610577, 34.825706>,  <31.175888, 26.746349, 35.098728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434780, 26.610577, 34.825706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091150, -0.854510, 0.511374,
		-0.756827, -0.393191, -0.522125,
		0.647229, -0.339430, -0.682555,
		31.628948, 26.508747, 34.620941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963604, 26.121479, 34.889599>,  <31.175888, 26.746349, 35.098728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963604, 26.121479, 34.889599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351097, 26.102135, 34.792255>,  <31.583593, 26.090528, 34.733849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351097, 26.102135, 34.792255>,  <30.963604, 26.121479, 34.889599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351097, 26.102135, 34.792255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033885, -0.945842, 0.322854,
		-0.245788, -0.321005, -0.914628,
		0.968731, -0.048361, -0.243354,
		31.641716, 26.087626, 34.719250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071730, 25.478331, 34.568066>,  <30.963604, 26.121479, 34.889599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071730, 25.478331, 34.568066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.446468, 25.570263, 34.673512>,  <31.671312, 25.625423, 34.736778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.446468, 25.570263, 34.673512>,  <31.071730, 25.478331, 34.568066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446468, 25.570263, 34.673512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181214, -0.963679, 0.196171,
		0.299130, -0.136010, -0.944469,
		0.936847, 0.229832, 0.263619,
		31.727522, 25.639212, 34.752598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493668, 24.937780, 34.212093>,  <31.071730, 25.478331, 34.568066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493668, 24.937780, 34.212093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650139, 25.111164, 34.536831>,  <31.744020, 25.215195, 34.731674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650139, 25.111164, 34.536831>,  <31.493668, 24.937780, 34.212093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650139, 25.111164, 34.536831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066369, -0.893129, 0.444877,
		0.917920, -0.120144, -0.378139,
		0.391176, 0.433458, 0.811847,
		31.767492, 25.241201, 34.780384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071316, 24.585161, 34.343506>,  <31.493668, 24.937780, 34.212093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071316, 24.585161, 34.343506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981470, 24.776215, 34.683250>,  <31.927563, 24.890846, 34.887096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981470, 24.776215, 34.683250>,  <32.071316, 24.585161, 34.343506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981470, 24.776215, 34.683250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057174, -0.863671, 0.500802,
		0.972769, 0.161050, 0.166686,
		-0.224616, 0.477635, 0.849360,
		31.914085, 24.919504, 34.938057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951668, 24.934698, 33.661415>,  <32.071316, 24.585161, 34.343506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951668, 24.934698, 33.661415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.936060, 24.578907, 33.479290>,  <31.926695, 24.365433, 33.370014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.936060, 24.578907, 33.479290>,  <31.951668, 24.934698, 33.661415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936060, 24.578907, 33.479290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471367, 0.385392, -0.793276,
		0.881074, -0.245573, 0.404231,
		-0.039019, -0.889476, -0.455314,
		31.924355, 24.312065, 33.342697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667061, 24.794767, 33.338608>,  <31.951668, 24.934698, 33.661415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667061, 24.794767, 33.338608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.424259, 24.540867, 33.147346>,  <32.278580, 24.388527, 33.032589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.424259, 24.540867, 33.147346>,  <32.667061, 24.794767, 33.338608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424259, 24.540867, 33.147346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318558, 0.356881, -0.878155,
		0.728058, -0.685364, -0.014422,
		-0.607003, -0.634753, -0.478158,
		32.242157, 24.350441, 33.003899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031300, 24.425524, 32.811104>,  <32.667061, 24.794767, 33.338608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031300, 24.425524, 32.811104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.649494, 24.388103, 32.697861>,  <32.420410, 24.365652, 32.629913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.649494, 24.388103, 32.697861>,  <33.031300, 24.425524, 32.811104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649494, 24.388103, 32.697861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239204, 0.326578, -0.914400,
		0.178000, -0.940529, -0.289346,
		-0.954515, -0.093550, -0.283109,
		32.363140, 24.360039, 32.612926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079472, 24.054941, 32.245380>,  <33.031300, 24.425524, 32.811104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079472, 24.054941, 32.245380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.731895, 24.246998, 32.197365>,  <32.523350, 24.362232, 32.168556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.731895, 24.246998, 32.197365>,  <33.079472, 24.054941, 32.245380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731895, 24.246998, 32.197365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351550, 0.428060, -0.832573,
		-0.348368, -0.765655, -0.540751,
		-0.868938, 0.480143, -0.120043,
		32.471214, 24.391041, 32.161350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939728, 24.006489, 31.506466>,  <33.079472, 24.054941, 32.245380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939728, 24.006489, 31.506466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714226, 24.308613, 31.640144>,  <32.578926, 24.489887, 31.720352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714226, 24.308613, 31.640144>,  <32.939728, 24.006489, 31.506466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714226, 24.308613, 31.640144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242953, 0.538371, -0.806927,
		-0.789405, -0.373711, -0.487012,
		-0.563750, 0.755312, 0.334198,
		32.545101, 24.535206, 31.740404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645954, 24.287579, 30.916870>,  <32.939728, 24.006489, 31.506466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645954, 24.287579, 30.916870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.560959, 24.590576, 31.163788>,  <32.509960, 24.772375, 31.311937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.560959, 24.590576, 31.163788>,  <32.645954, 24.287579, 30.916870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560959, 24.590576, 31.163788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096097, 0.612458, -0.784640,
		-0.972427, -0.226048, -0.057348,
		-0.212489, 0.757494, 0.617293,
		32.497211, 24.817825, 31.348976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164703, 24.721066, 30.513824>,  <32.645954, 24.287579, 30.916870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164703, 24.721066, 30.513824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.300571, 24.969196, 30.796616>,  <32.382092, 25.118074, 30.966290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.300571, 24.969196, 30.796616>,  <32.164703, 24.721066, 30.513824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300571, 24.969196, 30.796616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019651, 0.756184, -0.654063,
		-0.940340, 0.208271, 0.269041,
		0.339667, 0.620329, 0.706978,
		32.402470, 25.155294, 31.008709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566628, 24.621992, 30.102180>,  <32.164703, 24.721066, 30.513824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566628, 24.621992, 30.102180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770571, 24.443142, 29.808208>,  <31.892937, 24.335833, 29.631824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770571, 24.443142, 29.808208>,  <31.566628, 24.621992, 30.102180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770571, 24.443142, 29.808208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008162, -0.851762, 0.523866,
		-0.860220, -0.273096, -0.430628,
		0.509858, -0.447125, -0.734931,
		31.923527, 24.309004, 29.587729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242735, 24.083969, 29.943445>,  <31.566628, 24.621992, 30.102180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242735, 24.083969, 29.943445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595701, 23.987820, 29.781673>,  <31.807482, 23.930130, 29.684610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595701, 23.987820, 29.781673>,  <31.242735, 24.083969, 29.943445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595701, 23.987820, 29.781673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077236, -0.773947, 0.628523,
		-0.464086, -0.585855, -0.664377,
		0.882416, -0.240375, -0.404427,
		31.860426, 23.915707, 29.660345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239132, 23.423471, 29.629084>,  <31.242735, 24.083969, 29.943445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239132, 23.423471, 29.629084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.625246, 23.481129, 29.716213>,  <31.856915, 23.515722, 29.768490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.625246, 23.481129, 29.716213>,  <31.239132, 23.423471, 29.629084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625246, 23.481129, 29.716213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026272, -0.883289, 0.468091,
		0.259872, -0.446119, -0.856413,
		0.965285, 0.144144, 0.217822,
		31.914831, 23.524372, 29.781559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440556, 22.855471, 29.589445>,  <31.239132, 23.423471, 29.629084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440556, 22.855471, 29.589445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764688, 22.997509, 29.775894>,  <31.959167, 23.082731, 29.887764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764688, 22.997509, 29.775894>,  <31.440556, 22.855471, 29.589445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764688, 22.997509, 29.775894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032722, -0.766808, 0.641042,
		0.585060, -0.534708, -0.609748,
		0.810330, 0.355096, 0.466125,
		32.007786, 23.104038, 29.915731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053185, 22.304916, 29.573643>,  <31.440556, 22.855471, 29.589445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053185, 22.304916, 29.573643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163116, 22.548683, 29.871120>,  <32.229076, 22.694942, 30.049608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163116, 22.548683, 29.871120>,  <32.053185, 22.304916, 29.573643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163116, 22.548683, 29.871120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151772, -0.791279, 0.592320,
		0.949439, -0.049914, -0.309959,
		0.274829, 0.609415, 0.743695,
		32.245564, 22.731508, 30.094229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557076, 21.887674, 29.913275>,  <32.053185, 22.304916, 29.573643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557076, 21.887674, 29.913275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400688, 22.164703, 30.155758>,  <32.306858, 22.330921, 30.301249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400688, 22.164703, 30.155758>,  <32.557076, 21.887674, 29.913275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400688, 22.164703, 30.155758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041199, -0.671139, 0.740185,
		0.919483, 0.264412, 0.290926,
		-0.390966, 0.692574, 0.606207,
		32.283398, 22.372475, 30.337620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941189, 21.785173, 30.609392>,  <32.557076, 21.887674, 29.913275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941189, 21.785173, 30.609392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598221, 21.974522, 30.690144>,  <32.392441, 22.088131, 30.738594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598221, 21.974522, 30.690144>,  <32.941189, 21.785173, 30.609392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598221, 21.974522, 30.690144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153640, -0.609861, 0.777473,
		0.491152, 0.635602, 0.595634,
		-0.857417, 0.473371, 0.201880,
		32.340996, 22.116533, 30.750708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933960, 22.173004, 31.210310>,  <32.941189, 21.785173, 30.609392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933960, 22.173004, 31.210310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.546547, 22.089272, 31.156460>,  <32.314098, 22.039032, 31.124149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.546547, 22.089272, 31.156460>,  <32.933960, 22.173004, 31.210310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546547, 22.089272, 31.156460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058995, -0.332404, 0.941290,
		-0.241794, 0.919613, 0.309595,
		-0.968533, -0.209333, -0.134626,
		32.255985, 22.026472, 31.116072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694107, 22.092157, 31.842686>,  <32.933960, 22.173004, 31.210310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694107, 22.092157, 31.842686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.367851, 21.963322, 31.650440>,  <32.172096, 21.886021, 31.535093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.367851, 21.963322, 31.650440>,  <32.694107, 22.092157, 31.842686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367851, 21.963322, 31.650440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186141, -0.640449, 0.745102,
		-0.547799, 0.697196, 0.462421,
		-0.815640, -0.322090, -0.480614,
		32.123158, 21.866695, 31.506256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.407684, 35.479912, 22.979643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050629, 35.360130, 22.844868>,  <30.836395, 35.288261, 22.764002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050629, 35.360130, 22.844868>,  <31.407684, 35.479912, 22.979643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050629, 35.360130, 22.844868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045700, -0.803729, 0.593238,
		-0.448453, 0.514148, 0.731123,
		-0.892637, -0.299452, -0.336938,
		30.782837, 35.270294, 22.743786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006697, 35.310993, 23.515377>,  <31.407684, 35.479912, 22.979643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006697, 35.310993, 23.515377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862429, 35.112713, 23.199352>,  <30.775867, 34.993744, 23.009737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862429, 35.112713, 23.199352>,  <31.006697, 35.310993, 23.515377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862429, 35.112713, 23.199352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106774, -0.863452, 0.493002,
		-0.926561, 0.093454, 0.364350,
		-0.360672, -0.495699, -0.790062,
		30.754227, 34.964005, 22.962334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482134, 34.855560, 23.797197>,  <31.006697, 35.310993, 23.515377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482134, 34.855560, 23.797197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587221, 34.693615, 23.446869>,  <30.650272, 34.596447, 23.236671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587221, 34.693615, 23.446869>,  <30.482134, 34.855560, 23.797197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587221, 34.693615, 23.446869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006815, -0.908463, 0.417910,
		-0.964849, -0.103823, -0.241428,
		0.262717, -0.404865, -0.875822,
		30.666037, 34.572155, 23.184122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102797, 34.225891, 23.764772>,  <30.482134, 34.855560, 23.797197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102797, 34.225891, 23.764772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387291, 34.168144, 23.489586>,  <30.557987, 34.133495, 23.324474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387291, 34.168144, 23.489586>,  <30.102797, 34.225891, 23.764772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387291, 34.168144, 23.489586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037586, -0.969473, 0.242302,
		-0.701947, -0.198192, -0.684098,
		0.711237, -0.144370, -0.687967,
		30.600662, 34.124832, 23.283195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942183, 33.569099, 23.432392>,  <30.102797, 34.225891, 23.764772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942183, 33.569099, 23.432392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333416, 33.638054, 23.385674>,  <30.568155, 33.679424, 23.357643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333416, 33.638054, 23.385674>,  <29.942183, 33.569099, 23.432392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333416, 33.638054, 23.385674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202345, -0.919208, 0.337806,
		-0.049126, -0.354034, -0.933941,
		0.978081, 0.172383, -0.116794,
		30.626841, 33.689770, 23.350636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232014, 33.068470, 22.991385>,  <29.942183, 33.569099, 23.432392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232014, 33.068470, 22.991385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547916, 33.209560, 23.192131>,  <30.737457, 33.294216, 23.312578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547916, 33.209560, 23.192131>,  <30.232014, 33.068470, 22.991385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547916, 33.209560, 23.192131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248957, -0.932036, 0.263304,
		0.560632, -0.083003, -0.823895,
		0.789755, 0.352730, 0.501865,
		30.784843, 33.315380, 23.342691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641899, 32.531040, 22.880985>,  <30.232014, 33.068470, 22.991385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641899, 32.531040, 22.880985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834213, 32.750095, 23.154903>,  <30.949602, 32.881527, 23.319254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834213, 32.750095, 23.154903>,  <30.641899, 32.531040, 22.880985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834213, 32.750095, 23.154903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506138, -0.811063, 0.293261,
		0.716011, 0.205605, -0.667124,
		0.480784, 0.547635, 0.684794,
		30.978449, 32.914387, 23.360342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269344, 32.206295, 22.982212>,  <30.641899, 32.531040, 22.880985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269344, 32.206295, 22.982212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249063, 32.410942, 23.325298>,  <31.236895, 32.533730, 23.531149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249063, 32.410942, 23.325298>,  <31.269344, 32.206295, 22.982212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249063, 32.410942, 23.325298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620642, -0.656710, 0.428409,
		0.782453, 0.554054, -0.284237,
		-0.050700, 0.511620, 0.857715,
		31.233854, 32.564426, 23.582613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028130, 32.347534, 23.156702>,  <31.269344, 32.206295, 22.982212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028130, 32.347534, 23.156702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786409, 32.340118, 23.475319>,  <31.641378, 32.335667, 23.666489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786409, 32.340118, 23.475319>,  <32.028130, 32.347534, 23.156702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786409, 32.340118, 23.475319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583807, -0.690642, 0.426829,
		0.542212, 0.722959, 0.428177,
		-0.604297, -0.018541, 0.796543,
		31.605120, 32.334557, 23.714281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491508, 32.338039, 23.650133>,  <32.028130, 32.347534, 23.156702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491508, 32.338039, 23.650133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148758, 32.224606, 23.822338>,  <31.943108, 32.156544, 23.925661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148758, 32.224606, 23.822338>,  <32.491508, 32.338039, 23.650133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148758, 32.224606, 23.822338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493021, -0.694812, 0.523609,
		0.150639, 0.660921, 0.735181,
		-0.856877, -0.283584, 0.430513,
		31.891695, 32.139530, 23.951492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701969, 32.243607, 24.393280>,  <32.491508, 32.338039, 23.650133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701969, 32.243607, 24.393280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361160, 32.045010, 24.326893>,  <32.156673, 31.925852, 24.287060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361160, 32.045010, 24.326893>,  <32.701969, 32.243607, 24.393280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361160, 32.045010, 24.326893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369332, -0.794788, 0.481567,
		-0.371006, 0.349010, 0.860550,
		-0.852026, -0.496493, -0.165970,
		32.105553, 31.896061, 24.277102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580059, 31.954952, 25.053028>,  <32.701969, 32.243607, 24.393280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580059, 31.954952, 25.053028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347164, 31.753593, 24.797657>,  <32.207428, 31.632778, 24.644434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347164, 31.753593, 24.797657>,  <32.580059, 31.954952, 25.053028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347164, 31.753593, 24.797657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277947, -0.861190, 0.425556,
		-0.764031, 0.070326, 0.641335,
		-0.582238, -0.503396, -0.638429,
		32.172493, 31.602575, 24.606129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871780, 32.402031, 25.601719>,  <32.580059, 31.954952, 25.053028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871780, 32.402031, 25.601719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252323, 32.300167, 25.671085>,  <33.480648, 32.239048, 25.712706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252323, 32.300167, 25.671085>,  <32.871780, 32.402031, 25.601719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252323, 32.300167, 25.671085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296757, 0.606097, -0.737958,
		0.082816, 0.753523, 0.652184,
		0.951355, -0.254655, 0.173418,
		33.537731, 32.223770, 25.723110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191040, 33.052914, 25.617872>,  <32.871780, 32.402031, 25.601719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191040, 33.052914, 25.617872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486275, 32.787109, 25.571125>,  <33.663414, 32.627625, 25.543077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486275, 32.787109, 25.571125>,  <33.191040, 33.052914, 25.617872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486275, 32.787109, 25.571125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367605, 0.541297, -0.756217,
		0.565775, 0.515190, 0.643799,
		0.738082, -0.664513, -0.116866,
		33.707699, 32.587757, 25.536066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775997, 33.498322, 25.598694>,  <33.191040, 33.052914, 25.617872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775997, 33.498322, 25.598694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886417, 33.147301, 25.441879>,  <33.952671, 32.936687, 25.347790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886417, 33.147301, 25.441879>,  <33.775997, 33.498322, 25.598694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886417, 33.147301, 25.441879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566304, 0.478070, -0.671379,
		0.776593, -0.036678, 0.628934,
		0.276050, -0.877556, -0.392037,
		33.969231, 32.884033, 25.324268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462997, 33.512383, 25.601570>,  <33.775997, 33.498322, 25.598694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462997, 33.512383, 25.601570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401390, 33.220036, 25.335606>,  <34.364426, 33.044628, 25.176027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401390, 33.220036, 25.335606>,  <34.462997, 33.512383, 25.601570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401390, 33.220036, 25.335606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556890, 0.491664, -0.669433,
		0.816181, -0.473387, 0.331290,
		-0.154018, -0.730870, -0.664911,
		34.355186, 33.000774, 25.136131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077091, 33.458561, 25.356033>,  <34.462997, 33.512383, 25.601570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077091, 33.458561, 25.356033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819828, 33.306141, 25.090359>,  <34.665470, 33.214687, 24.930954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819828, 33.306141, 25.090359>,  <35.077091, 33.458561, 25.356033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819828, 33.306141, 25.090359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426922, 0.541624, -0.724142,
		0.635675, -0.749296, -0.185672,
		-0.643160, -0.381051, -0.664187,
		34.626881, 33.191826, 24.891102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418385, 33.125626, 24.845480>,  <35.077091, 33.458561, 25.356033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418385, 33.125626, 24.845480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080647, 33.239178, 24.663712>,  <34.878006, 33.307308, 24.554649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080647, 33.239178, 24.663712>,  <35.418385, 33.125626, 24.845480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080647, 33.239178, 24.663712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535303, 0.410216, -0.738359,
		-0.023192, -0.866681, -0.498323,
		-0.844342, 0.283878, -0.454423,
		34.827343, 33.324341, 24.527384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625362, 33.091228, 24.167007>,  <35.418385, 33.125626, 24.845480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625362, 33.091228, 24.167007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297043, 33.319702, 24.164848>,  <35.100052, 33.456787, 24.163553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297043, 33.319702, 24.164848>,  <35.625362, 33.091228, 24.167007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297043, 33.319702, 24.164848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371834, 0.527113, -0.764128,
		-0.433615, -0.629205, -0.645042,
		-0.820803, 0.571186, -0.005396,
		35.050800, 33.491058, 24.163229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391590, 33.163288, 23.501539>,  <35.625362, 33.091228, 24.167007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391590, 33.163288, 23.501539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261932, 33.485737, 23.699570>,  <35.184139, 33.679207, 23.818388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261932, 33.485737, 23.699570>,  <35.391590, 33.163288, 23.501539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261932, 33.485737, 23.699570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508406, 0.589773, -0.627448,
		-0.797782, 0.048317, -0.601008,
		-0.324142, 0.806122, 0.495075,
		35.164688, 33.727573, 23.848093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629192, 33.674168, 23.121889>,  <35.391590, 33.163288, 23.501539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629192, 33.674168, 23.121889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470486, 33.904404, 23.407902>,  <35.375259, 34.042545, 23.579510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470486, 33.904404, 23.407902>,  <35.629192, 33.674168, 23.121889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470486, 33.904404, 23.407902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378016, 0.812309, -0.444138,
		-0.836467, 0.094073, -0.539882,
		-0.396770, 0.575591, 0.715031,
		35.351456, 34.077080, 23.622412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517174, 34.379654, 22.778454>,  <35.629192, 33.674168, 23.121889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517174, 34.379654, 22.778454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519627, 34.437878, 23.174187>,  <35.521099, 34.472813, 23.411627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519627, 34.437878, 23.174187>,  <35.517174, 34.379654, 22.778454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519627, 34.437878, 23.174187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372408, 0.917850, -0.137345,
		-0.928049, 0.369276, -0.048579,
		0.006130, 0.145555, 0.989331,
		35.521465, 34.481544, 23.470985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183723, 34.964981, 22.833055>,  <35.517174, 34.379654, 22.778454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183723, 34.964981, 22.833055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422791, 34.937988, 23.152615>,  <35.566231, 34.921791, 23.344351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422791, 34.937988, 23.152615>,  <35.183723, 34.964981, 22.833055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422791, 34.937988, 23.152615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446953, 0.855292, -0.262122,
		-0.665602, 0.513732, 0.541343,
		0.597668, -0.067486, 0.798899,
		35.602089, 34.917744, 23.392284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245773, 35.619225, 23.115679>,  <35.183723, 34.964981, 22.833055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245773, 35.619225, 23.115679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562092, 35.435020, 23.276955>,  <35.751884, 35.324497, 23.373720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562092, 35.435020, 23.276955>,  <35.245773, 35.619225, 23.115679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562092, 35.435020, 23.276955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533778, 0.841230, -0.086096,
		-0.299528, 0.283299, 0.911057,
		0.790800, -0.460514, 0.403191,
		35.799332, 35.296867, 23.397911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466209, 36.139175, 23.507746>,  <35.245773, 35.619225, 23.115679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466209, 36.139175, 23.507746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784386, 35.896896, 23.515728>,  <35.975292, 35.751530, 23.520517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784386, 35.896896, 23.515728>,  <35.466209, 36.139175, 23.507746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784386, 35.896896, 23.515728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605981, 0.795363, -0.013548,
		-0.007668, 0.022871, 0.999709,
		0.795442, -0.605701, 0.019958,
		36.023018, 35.715187, 23.521715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835030, 36.391075, 24.042950>,  <35.466209, 36.139175, 23.507746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835030, 36.391075, 24.042950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067127, 36.190548, 23.786201>,  <36.206387, 36.070232, 23.632153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067127, 36.190548, 23.786201>,  <35.835030, 36.391075, 24.042950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067127, 36.190548, 23.786201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491967, 0.843825, -0.214310,
		0.649064, -0.191428, 0.736255,
		0.580245, -0.501314, -0.641872,
		36.241199, 36.040154, 23.593639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266052, 36.139980, 24.612162>,  <35.835030, 36.391075, 24.042950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266052, 36.139980, 24.612162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155891, 35.948524, 24.278683>,  <35.089794, 35.833649, 24.078594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155891, 35.948524, 24.278683>,  <35.266052, 36.139980, 24.612162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155891, 35.948524, 24.278683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566688, -0.619703, 0.542985,
		-0.776542, 0.621987, -0.100572,
		-0.275405, -0.478644, -0.833698,
		35.073269, 35.804932, 24.028574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476463, 36.090351, 24.340843>,  <35.266052, 36.139980, 24.612162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476463, 36.090351, 24.340843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659138, 35.756390, 24.217960>,  <34.768742, 35.556015, 24.144230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659138, 35.756390, 24.217960>,  <34.476463, 36.090351, 24.340843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659138, 35.756390, 24.217960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701789, -0.550329, 0.452360,
		-0.546734, 0.008994, -0.837258,
		0.456699, -0.834899, -0.307196,
		34.796146, 35.505920, 24.125799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289471, 36.588844, 24.913462>,  <34.476463, 36.090351, 24.340843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289471, 36.588844, 24.913462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916126, 36.610695, 25.055367>,  <33.692120, 36.623806, 25.140509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916126, 36.610695, 25.055367>,  <34.289471, 36.588844, 24.913462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916126, 36.610695, 25.055367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280934, -0.504011, 0.816731,
		0.223415, 0.861968, 0.455078,
		-0.933360, 0.054623, 0.354760,
		33.636120, 36.627083, 25.161795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385586, 36.608707, 25.643330>,  <34.289471, 36.588844, 24.913462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385586, 36.608707, 25.643330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002941, 36.505615, 25.588963>,  <33.773354, 36.443760, 25.556341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002941, 36.505615, 25.588963>,  <34.385586, 36.608707, 25.643330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002941, 36.505615, 25.588963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026262, -0.540835, 0.840719,
		-0.290192, 0.800669, 0.524136,
		-0.956608, -0.257734, -0.135919,
		33.715958, 36.428295, 25.548187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967285, 36.813438, 26.245499>,  <34.385586, 36.608707, 25.643330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967285, 36.813438, 26.245499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804184, 36.495659, 26.065464>,  <33.706322, 36.304989, 25.957443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804184, 36.495659, 26.065464>,  <33.967285, 36.813438, 26.245499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804184, 36.495659, 26.065464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064169, -0.516641, 0.853794,
		-0.910833, 0.319258, 0.261643,
		-0.407756, -0.794453, -0.450088,
		33.681858, 36.257324, 25.930437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495857, 36.524494, 26.757080>,  <33.967285, 36.813438, 26.245499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495857, 36.524494, 26.757080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522823, 36.208584, 26.513206>,  <33.539001, 36.019039, 26.366882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522823, 36.208584, 26.513206>,  <33.495857, 36.524494, 26.757080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522823, 36.208584, 26.513206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239059, -0.606059, 0.758645,
		-0.968662, 0.094609, -0.229658,
		0.067411, -0.789773, -0.609684,
		33.543045, 35.971653, 26.330301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023121, 36.118931, 27.034504>,  <33.495857, 36.524494, 26.757080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023121, 36.118931, 27.034504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240543, 35.869038, 26.810272>,  <33.370998, 35.719101, 26.675734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240543, 35.869038, 26.810272>,  <33.023121, 36.118931, 27.034504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240543, 35.869038, 26.810272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145619, -0.727915, 0.670027,
		-0.826645, -0.282566, -0.486635,
		0.543556, -0.624738, -0.560580,
		33.403610, 35.681618, 26.642099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633537, 35.468166, 26.824614>,  <33.023121, 36.118931, 27.034504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633537, 35.468166, 26.824614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025234, 35.391853, 26.797218>,  <33.260250, 35.346066, 26.780781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025234, 35.391853, 26.797218>,  <32.633537, 35.468166, 26.824614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025234, 35.391853, 26.797218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122906, -0.827505, 0.547841,
		-0.161194, -0.528050, -0.833774,
		0.979240, -0.190785, -0.068488,
		33.319008, 35.334618, 26.776672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637165, 34.696053, 26.702553>,  <32.633537, 35.468166, 26.824614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637165, 34.696053, 26.702553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984715, 34.808498, 26.865540>,  <33.193245, 34.875965, 26.963331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984715, 34.808498, 26.865540>,  <32.637165, 34.696053, 26.702553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984715, 34.808498, 26.865540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045508, -0.864990, 0.499721,
		0.492934, -0.415652, -0.764362,
		0.868876, 0.281114, 0.407467,
		33.245377, 34.892834, 26.987780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095245, 34.078239, 26.661486>,  <32.637165, 34.696053, 26.702553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095245, 34.078239, 26.661486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282330, 34.298302, 26.938202>,  <33.394581, 34.430340, 27.104233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282330, 34.298302, 26.938202>,  <33.095245, 34.078239, 26.661486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282330, 34.298302, 26.938202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116056, -0.814121, 0.568979,
		0.876231, -0.185829, -0.444620,
		0.467708, 0.550158, 0.691792,
		33.422642, 34.463348, 27.145739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548893, 33.613815, 26.989019>,  <33.095245, 34.078239, 26.661486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548893, 33.613815, 26.989019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525551, 33.929462, 27.233604>,  <33.511547, 34.118851, 27.380356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525551, 33.929462, 27.233604>,  <33.548893, 33.613815, 26.989019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525551, 33.929462, 27.233604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002603, -0.612624, 0.790370,
		0.998292, 0.044531, 0.037805,
		-0.058356, 0.789119, 0.611462,
		33.508045, 34.166199, 27.417044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026222, 33.361385, 27.547850>,  <33.548893, 33.613815, 26.989019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026222, 33.361385, 27.547850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797348, 33.667255, 27.666420>,  <33.660023, 33.850777, 27.737562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797348, 33.667255, 27.666420>,  <34.026222, 33.361385, 27.547850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797348, 33.667255, 27.666420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074445, -0.408376, 0.909773,
		0.816738, 0.498492, 0.290594,
		-0.572186, 0.764679, 0.296426,
		33.625690, 33.896660, 27.755348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119919, 33.449490, 28.184742>,  <34.026222, 33.361385, 27.547850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119919, 33.449490, 28.184742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780010, 33.660130, 28.194401>,  <33.576065, 33.786514, 28.200195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780010, 33.660130, 28.194401>,  <34.119919, 33.449490, 28.184742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780010, 33.660130, 28.194401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167242, -0.312752, 0.934995,
		0.499917, 0.790495, 0.353837,
		-0.849772, 0.526597, 0.024146,
		33.525078, 33.818108, 28.201645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092857, 33.791664, 28.924049>,  <34.119919, 33.449490, 28.184742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092857, 33.791664, 28.924049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747543, 33.735973, 28.729996>,  <33.540356, 33.702557, 28.613564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747543, 33.735973, 28.729996>,  <34.092857, 33.791664, 28.924049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747543, 33.735973, 28.729996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346765, -0.534801, 0.770546,
		-0.366734, 0.833428, 0.413405,
		-0.863285, -0.139231, -0.485134,
		33.488560, 33.694202, 28.584455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715446, 33.834469, 29.429394>,  <34.092857, 33.791664, 28.924049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715446, 33.834469, 29.429394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497841, 33.657780, 29.144035>,  <33.367279, 33.551765, 28.972820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497841, 33.657780, 29.144035>,  <33.715446, 33.834469, 29.429394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497841, 33.657780, 29.144035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285877, -0.701773, 0.652525,
		-0.788878, 0.558924, 0.255493,
		-0.544010, -0.441723, -0.713396,
		33.334637, 33.525265, 28.930016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117577, 33.605278, 29.745359>,  <33.715446, 33.834469, 29.429394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117577, 33.605278, 29.745359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102154, 33.371483, 29.421165>,  <33.092899, 33.231205, 29.226648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102154, 33.371483, 29.421165>,  <33.117577, 33.605278, 29.745359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102154, 33.371483, 29.421165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399097, -0.734584, 0.548734,
		-0.916098, 0.344619, -0.204946,
		-0.038554, -0.584487, -0.810487,
		33.090588, 33.196136, 29.178019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453438, 33.237724, 29.834665>,  <33.117577, 33.605278, 29.745359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453438, 33.237724, 29.834665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683273, 33.034588, 29.577934>,  <32.821175, 32.912704, 29.423897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683273, 33.034588, 29.577934>,  <32.453438, 33.237724, 29.834665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683273, 33.034588, 29.577934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209061, -0.849263, 0.484816,
		-0.791289, -0.144391, -0.594149,
		0.574592, -0.507843, -0.641826,
		32.855652, 32.882236, 29.385386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142384, 32.643486, 29.776295>,  <32.453438, 33.237724, 29.834665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142384, 32.643486, 29.776295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482597, 32.523026, 29.603828>,  <32.686726, 32.450748, 29.500349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482597, 32.523026, 29.603828>,  <32.142384, 32.643486, 29.776295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482597, 32.523026, 29.603828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017097, -0.835224, 0.549644,
		-0.525647, -0.460118, -0.715533,
		0.850531, -0.301152, -0.431166,
		32.737755, 32.432678, 29.474478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982752, 32.020084, 29.605875>,  <32.142384, 32.643486, 29.776295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982752, 32.020084, 29.605875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382587, 32.029667, 29.612148>,  <32.622490, 32.035416, 29.615911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382587, 32.029667, 29.612148>,  <31.982752, 32.020084, 29.605875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382587, 32.029667, 29.612148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009166, -0.786680, 0.617293,
		0.027123, -0.616896, -0.786577,
		0.999590, 0.023952, 0.015683,
		32.682465, 32.036854, 29.616854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267437, 31.331869, 29.418919>,  <31.982752, 32.020084, 29.605875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267437, 31.331869, 29.418919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545689, 31.517933, 29.637909>,  <32.712639, 31.629572, 29.769304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545689, 31.517933, 29.637909>,  <32.267437, 31.331869, 29.418919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545689, 31.517933, 29.637909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039514, -0.785694, 0.617352,
		0.717317, -0.407813, -0.564930,
		0.695626, 0.465159, 0.547477,
		32.754375, 31.657480, 29.802153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731094, 30.792341, 29.639566>,  <32.267437, 31.331869, 29.418919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731094, 30.792341, 29.639566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844837, 31.106953, 29.858845>,  <32.913082, 31.295719, 29.990412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844837, 31.106953, 29.858845>,  <32.731094, 30.792341, 29.639566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844837, 31.106953, 29.858845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218552, -0.609924, 0.761727,
		0.933475, -0.096794, -0.345334,
		0.284357, 0.786527, 0.548194,
		32.930145, 31.342911, 30.023302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380478, 30.710777, 29.722279>,  <32.731094, 30.792341, 29.639566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380478, 30.710777, 29.722279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243439, 30.938141, 30.021488>,  <33.161217, 31.074558, 30.201014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243439, 30.938141, 30.021488>,  <33.380478, 30.710777, 29.722279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243439, 30.938141, 30.021488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072814, -0.777749, 0.624343,
		0.936657, 0.268365, 0.225066,
		-0.342597, 0.568407, 0.748024,
		33.140659, 31.108664, 30.245895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743542, 30.507702, 30.365414>,  <33.380478, 30.710777, 29.722279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743542, 30.507702, 30.365414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404003, 30.693371, 30.466606>,  <33.200279, 30.804771, 30.527323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404003, 30.693371, 30.466606>,  <33.743542, 30.507702, 30.365414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404003, 30.693371, 30.466606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170762, -0.693665, 0.699764,
		0.500295, 0.550794, 0.668080,
		-0.848849, 0.464171, 0.252982,
		33.149349, 30.832623, 30.542501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749050, 30.556816, 31.088150>,  <33.743542, 30.507702, 30.365414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749050, 30.556816, 31.088150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363216, 30.577408, 30.984673>,  <33.131714, 30.589764, 30.922586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363216, 30.577408, 30.984673>,  <33.749050, 30.556816, 31.088150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363216, 30.577408, 30.984673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212414, -0.733068, 0.646136,
		-0.156378, 0.678204, 0.718042,
		-0.964586, 0.051481, -0.258696,
		33.073841, 30.592852, 30.907064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495476, 30.703960, 31.681328>,  <33.749050, 30.556816, 31.088150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495476, 30.703960, 31.681328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191628, 30.559040, 31.465282>,  <33.009319, 30.472088, 31.335655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191628, 30.559040, 31.465282>,  <33.495476, 30.703960, 31.681328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191628, 30.559040, 31.465282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194913, -0.665480, 0.720518,
		-0.620477, 0.652592, 0.434893,
		-0.759616, -0.362299, -0.540114,
		32.963741, 30.450350, 31.303247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934738, 30.713095, 32.089252>,  <33.495476, 30.703960, 31.681328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934738, 30.713095, 32.089252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806671, 30.453064, 31.813602>,  <32.729832, 30.297045, 31.648212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806671, 30.453064, 31.813602>,  <32.934738, 30.713095, 32.089252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806671, 30.453064, 31.813602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346894, -0.596449, 0.723818,
		-0.881566, 0.470795, -0.034544,
		-0.320166, -0.650077, -0.689125,
		32.710621, 30.258041, 31.606865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246319, 30.549759, 32.214512>,  <32.934738, 30.713095, 32.089252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246319, 30.549759, 32.214512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374939, 30.227081, 32.016178>,  <32.452110, 30.033474, 31.897179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374939, 30.227081, 32.016178>,  <32.246319, 30.549759, 32.214512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374939, 30.227081, 32.016178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409170, -0.590605, 0.695533,
		-0.853923, -0.020770, -0.519985,
		0.321551, -0.806694, -0.495833,
		32.471405, 29.985073, 31.867428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739489, 29.983706, 32.158596>,  <32.246319, 30.549759, 32.214512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739489, 29.983706, 32.158596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080353, 29.779644, 32.112011>,  <32.284870, 29.657207, 32.084061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080353, 29.779644, 32.112011>,  <31.739489, 29.983706, 32.158596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080353, 29.779644, 32.112011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298672, -0.656940, 0.692261,
		-0.429666, -0.555136, -0.712188,
		0.852163, -0.510152, -0.116462,
		32.336002, 29.626598, 32.077072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349226, 30.146788, 31.597361>,  <31.739489, 29.983706, 32.158596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349226, 30.146788, 31.597361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952719, 30.105640, 31.564358>,  <30.714815, 30.080952, 31.544556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952719, 30.105640, 31.564358>,  <31.349226, 30.146788, 31.597361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952719, 30.105640, 31.564358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078796, 0.963748, -0.254913,
		0.105740, -0.246186, -0.963438,
		-0.991267, -0.102869, -0.082508,
		30.655338, 30.074780, 31.539606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163891, 30.235991, 30.847729>,  <31.349226, 30.146788, 31.597361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163891, 30.235991, 30.847729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834732, 30.323139, 31.057632>,  <30.637236, 30.375429, 31.183575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834732, 30.323139, 31.057632>,  <31.163891, 30.235991, 30.847729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834732, 30.323139, 31.057632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086485, 0.864770, -0.494664,
		-0.561568, -0.452442, -0.692775,
		-0.822898, 0.217873, 0.524757,
		30.587862, 30.388500, 31.215059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714180, 30.525894, 30.364567>,  <31.163891, 30.235991, 30.847729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714180, 30.525894, 30.364567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514854, 30.619743, 30.698425>,  <30.395260, 30.676052, 30.898741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514854, 30.619743, 30.698425>,  <30.714180, 30.525894, 30.364567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514854, 30.619743, 30.698425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246060, 0.884832, -0.395635,
		-0.831347, -0.402524, -0.383192,
		-0.498313, 0.234622, 0.834648,
		30.365360, 30.690130, 30.948820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174725, 30.794542, 30.053736>,  <30.714180, 30.525894, 30.364567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174725, 30.794542, 30.053736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197811, 30.963955, 30.415352>,  <30.211664, 31.065603, 30.632322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197811, 30.963955, 30.415352>,  <30.174725, 30.794542, 30.053736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197811, 30.963955, 30.415352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514803, 0.788494, -0.336534,
		-0.855363, -0.445978, 0.263547,
		0.057719, 0.423533, 0.904040,
		30.215126, 31.091015, 30.686563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484337, 31.021261, 30.208145>,  <30.174725, 30.794542, 30.053736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484337, 31.021261, 30.208145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753880, 31.218124, 30.428581>,  <29.915606, 31.336243, 30.560843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753880, 31.218124, 30.428581>,  <29.484337, 31.021261, 30.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753880, 31.218124, 30.428581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377449, 0.870492, -0.315873,
		-0.635178, 0.004846, 0.772351,
		0.673856, 0.492159, 0.551088,
		29.956036, 31.365772, 30.593908>
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
