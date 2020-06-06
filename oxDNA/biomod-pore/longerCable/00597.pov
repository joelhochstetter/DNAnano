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
	<23.988506, 34.665752, 35.011803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291344, 34.725430, 35.266220>,  <24.473045, 34.761234, 35.418873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291344, 34.725430, 35.266220>,  <23.988506, 34.665752, 35.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291344, 34.725430, 35.266220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109444, 0.988781, -0.101658,
		-0.644077, 0.007353, 0.764925,
		0.757091, 0.149192, 0.636046,
		24.518471, 34.770187, 35.457035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003277, 35.466850, 35.130081>,  <23.988506, 34.665752, 35.011803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003277, 35.466850, 35.130081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320301, 35.300426, 35.308403>,  <24.510515, 35.200573, 35.415398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320301, 35.300426, 35.308403>,  <24.003277, 35.466850, 35.130081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.320301, 35.300426, 35.308403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449062, 0.892819, 0.034893,
		-0.412540, 0.172539, 0.894450,
		0.792562, -0.416058, 0.445805,
		24.558069, 35.175610, 35.442142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087347, 35.791210, 35.692551>,  <24.003277, 35.466850, 35.130081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087347, 35.791210, 35.692551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456303, 35.672771, 35.593334>,  <24.677675, 35.601707, 35.533806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456303, 35.672771, 35.593334>,  <24.087347, 35.791210, 35.692551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456303, 35.672771, 35.593334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315724, 0.947898, 0.042524,
		0.222523, -0.117535, 0.967817,
		0.922389, -0.296100, -0.248038,
		24.733019, 35.583942, 35.518925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723618, 35.999123, 36.178005>,  <24.087347, 35.791210, 35.692551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723618, 35.999123, 36.178005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824528, 35.993839, 35.790977>,  <24.885073, 35.990669, 35.558762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824528, 35.993839, 35.790977>,  <24.723618, 35.999123, 36.178005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824528, 35.993839, 35.790977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028134, 0.999384, -0.020979,
		0.967247, 0.032514, 0.251747,
		0.252275, -0.013209, -0.967566,
		24.900209, 35.989876, 35.500710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412853, 36.233284, 35.999847>,  <24.723618, 35.999123, 36.178005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412853, 36.233284, 35.999847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138079, 36.331211, 35.726151>,  <24.973213, 36.389969, 35.561932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138079, 36.331211, 35.726151>,  <25.412853, 36.233284, 35.999847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138079, 36.331211, 35.726151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271770, 0.959772, 0.070562,
		0.673987, -0.137483, -0.725837,
		-0.686937, 0.244819, -0.684238,
		24.931997, 36.404655, 35.520878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762247, 35.674809, 36.414665>,  <25.412853, 36.233284, 35.999847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762247, 35.674809, 36.414665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080587, 35.914188, 36.451492>,  <26.271591, 36.057816, 36.473587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080587, 35.914188, 36.451492>,  <25.762247, 35.674809, 36.414665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080587, 35.914188, 36.451492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404865, 0.412902, 0.815841,
		0.450225, -0.686564, 0.570900,
		0.795852, 0.598450, 0.092067,
		26.319344, 36.093723, 36.479111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178247, 35.031570, 36.244415>,  <25.762247, 35.674809, 36.414665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178247, 35.031570, 36.244415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415625, 34.957447, 36.557716>,  <26.558050, 34.912971, 36.745697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415625, 34.957447, 36.557716>,  <26.178247, 35.031570, 36.244415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415625, 34.957447, 36.557716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029418, -0.967490, -0.251191,
		0.804340, 0.172109, -0.568696,
		0.593441, -0.185313, 0.783254,
		26.593657, 34.901852, 36.792694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930252, 35.401443, 36.067440>,  <26.178247, 35.031570, 36.244415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930252, 35.401443, 36.067440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223705, 35.279583, 36.310413>,  <27.399776, 35.206467, 36.456196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223705, 35.279583, 36.310413>,  <26.930252, 35.401443, 36.067440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223705, 35.279583, 36.310413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449658, -0.452570, -0.770058,
		0.509501, 0.838076, -0.195033,
		0.733633, -0.304647, 0.607432,
		27.443794, 35.188190, 36.492641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579247, 35.574211, 35.764034>,  <26.930252, 35.401443, 36.067440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579247, 35.574211, 35.764034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547306, 35.216389, 35.939938>,  <27.528141, 35.001694, 36.045479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547306, 35.216389, 35.939938>,  <27.579247, 35.574211, 35.764034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547306, 35.216389, 35.939938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295013, -0.442610, -0.846796,
		0.952151, 0.062116, 0.299250,
		-0.079851, -0.894560, 0.439756,
		27.523350, 34.948021, 36.071865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352934, 34.950191, 35.401611>,  <27.579247, 35.574211, 35.764034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352934, 34.950191, 35.401611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625252, 35.036446, 35.121605>,  <27.788643, 35.088200, 34.953602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625252, 35.036446, 35.121605>,  <27.352934, 34.950191, 35.401611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625252, 35.036446, 35.121605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655394, -0.606074, 0.450703,
		-0.327072, -0.765621, -0.553939,
		0.680795, 0.215636, -0.700013,
		27.829491, 35.101135, 34.911602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943428, 34.560310, 35.524891>,  <27.352934, 34.950191, 35.401611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943428, 34.560310, 35.524891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332327, 34.618134, 35.598469>,  <28.565666, 34.652828, 35.642616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332327, 34.618134, 35.598469>,  <27.943428, 34.560310, 35.524891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332327, 34.618134, 35.598469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208608, 0.891605, 0.401901,
		-0.105909, -0.429120, 0.897017,
		0.972248, 0.144560, 0.183946,
		28.624001, 34.661503, 35.653652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050455, 34.764153, 36.245266>,  <27.943428, 34.560310, 35.524891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050455, 34.764153, 36.245266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316132, 34.931442, 35.997414>,  <28.475536, 35.031815, 35.848701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316132, 34.931442, 35.997414>,  <28.050455, 34.764153, 36.245266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316132, 34.931442, 35.997414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237683, 0.903996, 0.355385,
		0.708773, -0.088767, 0.699829,
		0.664190, 0.418225, -0.619630,
		28.515388, 35.056911, 35.811523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481468, 35.170387, 36.679222>,  <28.050455, 34.764153, 36.245266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481468, 35.170387, 36.679222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490929, 35.346169, 36.320042>,  <28.496605, 35.451637, 36.104534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490929, 35.346169, 36.320042>,  <28.481468, 35.170387, 36.679222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490929, 35.346169, 36.320042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174355, 0.886252, 0.429136,
		0.984399, 0.146412, 0.097583,
		0.023652, 0.439455, -0.897953,
		28.498024, 35.478004, 36.050655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146461, 34.656208, 36.919868>,  <28.481468, 35.170387, 36.679222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146461, 34.656208, 36.919868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186138, 34.275448, 37.035828>,  <29.209944, 34.046989, 37.105404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186138, 34.275448, 37.035828>,  <29.146461, 34.656208, 36.919868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186138, 34.275448, 37.035828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843569, -0.074078, -0.531888,
		0.527781, 0.297306, 0.795648,
		0.099194, -0.951904, 0.289895,
		29.215897, 33.989876, 37.122795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832294, 34.552963, 37.443699>,  <29.146461, 34.656208, 36.919868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832294, 34.552963, 37.443699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677929, 34.296082, 37.178780>,  <29.585310, 34.141953, 37.019829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677929, 34.296082, 37.178780>,  <29.832294, 34.552963, 37.443699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677929, 34.296082, 37.178780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876749, -0.031951, -0.479886,
		0.287026, -0.765864, 0.575386,
		-0.385911, -0.642209, -0.662299,
		29.562155, 34.103420, 36.980091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780775, 35.274586, 37.463299>,  <29.832294, 34.552963, 37.443699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780775, 35.274586, 37.463299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844086, 35.659195, 37.373474>,  <29.882072, 35.889961, 37.319580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844086, 35.659195, 37.373474>,  <29.780775, 35.274586, 37.463299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844086, 35.659195, 37.373474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906321, -0.051222, 0.419474,
		0.391830, -0.269917, -0.879553,
		0.158275, 0.961520, -0.224561,
		29.891569, 35.947651, 37.306107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539896, 35.329426, 37.436356>,  <29.780775, 35.274586, 37.463299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539896, 35.329426, 37.436356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420012, 35.711037, 37.436848>,  <30.348080, 35.940002, 37.437141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420012, 35.711037, 37.436848>,  <30.539896, 35.329426, 37.436356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420012, 35.711037, 37.436848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923370, 0.289758, 0.251851,
		0.239917, 0.076616, -0.967765,
		-0.299713, 0.954029, 0.001227,
		30.330097, 35.997246, 37.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941961, 35.724491, 36.997036>,  <30.539896, 35.329426, 37.436356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941961, 35.724491, 36.997036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797657, 35.949268, 37.294781>,  <30.711075, 36.084133, 37.473427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797657, 35.949268, 37.294781>,  <30.941961, 35.724491, 36.997036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797657, 35.949268, 37.294781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916939, 0.359612, 0.172921,
		-0.170511, 0.744918, -0.644998,
		-0.360761, 0.561939, 0.744363,
		30.689428, 36.117851, 37.518089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235229, 36.412281, 36.855656>,  <30.941961, 35.724491, 36.997036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235229, 36.412281, 36.855656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146891, 36.362244, 37.242558>,  <31.093887, 36.332222, 37.474697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146891, 36.362244, 37.242558>,  <31.235229, 36.412281, 36.855656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146891, 36.362244, 37.242558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913237, 0.321623, 0.250112,
		-0.342379, 0.938568, 0.043211,
		-0.220850, -0.125095, 0.967252,
		31.080635, 36.324715, 37.532734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536465, 37.026081, 37.209045>,  <31.235229, 36.412281, 36.855656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536465, 37.026081, 37.209045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469275, 36.783081, 37.519588>,  <31.428961, 36.637280, 37.705914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469275, 36.783081, 37.519588>,  <31.536465, 37.026081, 37.209045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469275, 36.783081, 37.519588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914124, 0.198801, 0.353348,
		-0.368999, 0.769039, 0.521938,
		-0.167976, -0.607501, 0.776354,
		31.418882, 36.600830, 37.752495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862373, 37.345947, 37.772865>,  <31.536465, 37.026081, 37.209045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862373, 37.345947, 37.772865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824959, 36.950085, 37.816376>,  <31.802509, 36.712566, 37.842484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824959, 36.950085, 37.816376>,  <31.862373, 37.345947, 37.772865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824959, 36.950085, 37.816376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974268, -0.068479, 0.214740,
		-0.205069, 0.126067, 0.970595,
		-0.093537, -0.989655, 0.108780,
		31.796898, 36.653187, 37.849010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107719, 37.120106, 38.477139>,  <31.862373, 37.345947, 37.772865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107719, 37.120106, 38.477139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160564, 36.824257, 38.213165>,  <32.192272, 36.646748, 38.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160564, 36.824257, 38.213165>,  <32.107719, 37.120106, 38.477139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160564, 36.824257, 38.213165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913391, -0.167785, 0.370898,
		-0.385050, -0.651773, 0.653398,
		0.132111, -0.739622, -0.659929,
		32.200199, 36.602371, 38.015186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061680, 36.461018, 38.488060>,  <32.107719, 37.120106, 38.477139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061680, 36.461018, 38.488060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756872, 36.353851, 38.723873>,  <31.573988, 36.289551, 38.865360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756872, 36.353851, 38.723873>,  <32.061680, 36.461018, 38.488060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756872, 36.353851, 38.723873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578524, -0.127362, -0.805660,
		0.290935, -0.954987, -0.057945,
		-0.762015, -0.267918, 0.589537,
		31.528267, 36.273476, 38.900734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719828, 35.940380, 38.160484>,  <32.061680, 36.461018, 38.488060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719828, 35.940380, 38.160484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469204, 36.141964, 38.398293>,  <31.318829, 36.262913, 38.540977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469204, 36.141964, 38.398293>,  <31.719828, 35.940380, 38.160484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469204, 36.141964, 38.398293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664122, 0.053978, -0.745673,
		-0.407877, -0.862041, 0.300868,
		-0.626561, 0.503956, 0.594516,
		31.281235, 36.293152, 38.576649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070601, 35.620903, 38.068539>,  <31.719828, 35.940380, 38.160484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070601, 35.620903, 38.068539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050758, 36.004730, 38.179371>,  <31.038853, 36.235027, 38.245869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050758, 36.004730, 38.179371>,  <31.070601, 35.620903, 38.068539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050758, 36.004730, 38.179371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739723, 0.151106, -0.655726,
		-0.671081, -0.237488, 0.702317,
		-0.049603, 0.959565, 0.277080,
		31.035877, 36.292599, 38.262493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429142, 36.061890, 38.484451>,  <31.070601, 35.620903, 38.068539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429142, 36.061890, 38.484451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638126, 36.272152, 38.215908>,  <30.763517, 36.398308, 38.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638126, 36.272152, 38.215908>,  <30.429142, 36.061890, 38.484451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638126, 36.272152, 38.215908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807009, 0.050654, -0.588363,
		-0.275268, 0.849189, 0.450672,
		0.522460, 0.525654, -0.671360,
		30.794865, 36.429848, 38.014500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081356, 36.611580, 38.427910>,  <30.429142, 36.061890, 38.484451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081356, 36.611580, 38.427910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300747, 36.526318, 38.104492>,  <30.432383, 36.475163, 37.910442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300747, 36.526318, 38.104492>,  <30.081356, 36.611580, 38.427910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300747, 36.526318, 38.104492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834746, -0.083263, -0.544304,
		0.048699, 0.973464, -0.223597,
		0.548478, -0.213154, -0.808540,
		30.465290, 36.462372, 37.861931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952734, 37.137962, 37.856861>,  <30.081356, 36.611580, 38.427910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952734, 37.137962, 37.856861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079742, 36.797165, 37.690346>,  <30.155947, 36.592686, 37.590435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079742, 36.797165, 37.690346>,  <29.952734, 37.137962, 37.856861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079742, 36.797165, 37.690346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854408, -0.066636, -0.515312,
		0.411301, 0.519301, -0.749105,
		0.317520, -0.851989, -0.416288,
		30.174999, 36.541569, 37.565460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972944, 37.247787, 37.129257>,  <29.952734, 37.137962, 37.856861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972944, 37.247787, 37.129257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953545, 36.853748, 37.195274>,  <29.941906, 36.617325, 37.234886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953545, 36.853748, 37.195274>,  <29.972944, 37.247787, 37.129257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953545, 36.853748, 37.195274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847203, -0.046952, -0.529191,
		0.529052, -0.165488, -0.832297,
		-0.048497, -0.985093, 0.165042,
		29.938995, 36.558220, 37.244785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974186, 36.734421, 36.503841>,  <29.972944, 37.247787, 37.129257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974186, 36.734421, 36.503841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754885, 36.560150, 36.789391>,  <29.623304, 36.455589, 36.960720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754885, 36.560150, 36.789391>,  <29.974186, 36.734421, 36.503841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754885, 36.560150, 36.789391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741252, -0.142110, -0.656011,
		0.387256, -0.888815, -0.245033,
		-0.548251, -0.435675, 0.713868,
		29.590410, 36.429447, 37.003551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554140, 36.371624, 36.130543>,  <29.974186, 36.734421, 36.503841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554140, 36.371624, 36.130543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393463, 36.360825, 36.496693>,  <29.297058, 36.354343, 36.716385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393463, 36.360825, 36.496693>,  <29.554140, 36.371624, 36.130543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393463, 36.360825, 36.496693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892251, -0.213565, -0.397841,
		0.206234, -0.976556, 0.061698,
		-0.401690, -0.026998, 0.915378,
		29.272957, 36.352726, 36.771305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930861, 35.929520, 35.766636>,  <29.554140, 36.371624, 36.130543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930861, 35.929520, 35.766636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259275, 35.706039, 35.719727>,  <30.456324, 35.571953, 35.691582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259275, 35.706039, 35.719727>,  <29.930861, 35.929520, 35.766636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259275, 35.706039, 35.719727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222722, 0.502630, -0.835319,
		0.525636, 0.659709, 0.537113,
		0.821037, -0.558701, -0.117269,
		30.505587, 35.538429, 35.684547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686909, 36.292641, 35.762501>,  <29.930861, 35.929520, 35.766636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686909, 36.292641, 35.762501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670103, 35.962097, 35.537872>,  <30.660019, 35.763771, 35.403095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670103, 35.962097, 35.537872>,  <30.686909, 36.292641, 35.762501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670103, 35.962097, 35.537872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108086, 0.555006, -0.824795,
		0.993253, -0.095353, 0.065999,
		-0.042016, -0.826364, -0.561567,
		30.657497, 35.714188, 35.369404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249304, 36.311722, 35.237186>,  <30.686909, 36.292641, 35.762501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249304, 36.311722, 35.237186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952549, 36.080868, 35.100647>,  <30.774496, 35.942356, 35.018723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952549, 36.080868, 35.100647>,  <31.249304, 36.311722, 35.237186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952549, 36.080868, 35.100647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062200, 0.447645, -0.892045,
		0.667636, -0.683027, -0.296203,
		-0.741885, -0.577138, -0.341348,
		30.729984, 35.907726, 34.998241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376537, 35.888210, 34.637371>,  <31.249304, 36.311722, 35.237186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376537, 35.888210, 34.637371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984007, 35.965157, 34.637447>,  <30.748489, 36.011322, 34.637493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984007, 35.965157, 34.637447>,  <31.376537, 35.888210, 34.637371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984007, 35.965157, 34.637447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086624, 0.442809, -0.892422,
		-0.171756, -0.875738, -0.451203,
		-0.981324, 0.192364, 0.000195,
		30.689610, 36.022865, 34.637505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145718, 35.573223, 33.977802>,  <31.376537, 35.888210, 34.637371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145718, 35.573223, 33.977802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931320, 35.869545, 34.139748>,  <30.802681, 36.047340, 34.236916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931320, 35.869545, 34.139748>,  <31.145718, 35.573223, 33.977802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931320, 35.869545, 34.139748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220233, 0.585660, -0.780064,
		-0.814990, -0.328944, -0.477060,
		-0.535993, 0.740809, 0.404862,
		30.770523, 36.091789, 34.261208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651091, 35.821732, 33.462482>,  <31.145718, 35.573223, 33.977802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651091, 35.821732, 33.462482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807749, 36.053082, 33.748726>,  <30.901743, 36.191891, 33.920471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807749, 36.053082, 33.748726>,  <30.651091, 35.821732, 33.462482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807749, 36.053082, 33.748726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479636, 0.535379, -0.695211,
		-0.785215, 0.615508, -0.067731,
		0.391646, 0.578377, 0.715607,
		30.925243, 36.226593, 33.963409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747808, 36.545933, 33.235035>,  <30.651091, 35.821732, 33.462482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747808, 36.545933, 33.235035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006618, 36.477924, 33.532345>,  <31.161903, 36.437119, 33.710732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006618, 36.477924, 33.532345>,  <30.747808, 36.545933, 33.235035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006618, 36.477924, 33.532345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713612, 0.478372, -0.511779,
		-0.268549, 0.861542, 0.430844,
		0.647023, -0.170018, 0.743273,
		31.200726, 36.426918, 33.755325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013781, 37.183395, 33.129402>,  <30.747808, 36.545933, 33.235035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013781, 37.183395, 33.129402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279678, 37.147686, 32.832714>,  <31.439217, 37.126263, 32.654701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279678, 37.147686, 32.832714>,  <31.013781, 37.183395, 33.129402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279678, 37.147686, 32.832714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747069, 0.076349, 0.660348,
		-0.002322, -0.993077, 0.117445,
		0.664743, -0.089273, -0.741719,
		31.479101, 37.120903, 32.610199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464277, 36.559662, 33.215553>,  <31.013781, 37.183395, 33.129402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464277, 36.559662, 33.215553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640173, 36.852867, 33.007969>,  <31.745710, 37.028790, 32.883419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640173, 36.852867, 33.007969>,  <31.464277, 36.559662, 33.215553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640173, 36.852867, 33.007969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701909, 0.080004, 0.707759,
		0.560316, -0.675493, -0.479328,
		0.439738, 0.733014, -0.518962,
		31.772095, 37.072773, 32.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172806, 36.371700, 33.023285>,  <31.464277, 36.559662, 33.215553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172806, 36.371700, 33.023285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075047, 36.752449, 33.097263>,  <32.016392, 36.980900, 33.141651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075047, 36.752449, 33.097263>,  <32.172806, 36.371700, 33.023285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075047, 36.752449, 33.097263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698639, 0.040588, 0.714322,
		0.672439, 0.303788, -0.674936,
		-0.244397, 0.951875, 0.184945,
		32.001728, 37.038010, 33.152748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770111, 36.798882, 32.979374>,  <32.172806, 36.371700, 33.023285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770111, 36.798882, 32.979374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524349, 36.997585, 33.224564>,  <32.376892, 37.116810, 33.371677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524349, 36.997585, 33.224564>,  <32.770111, 36.798882, 32.979374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524349, 36.997585, 33.224564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708579, 0.005702, 0.705609,
		0.347024, 0.867868, -0.355498,
		-0.614402, 0.496762, 0.612974,
		32.340027, 37.146614, 33.408455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036285, 37.412285, 33.280323>,  <32.770111, 36.798882, 32.979374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036285, 37.412285, 33.280323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764500, 37.257694, 33.529793>,  <32.601429, 37.164940, 33.679474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764500, 37.257694, 33.529793>,  <33.036285, 37.412285, 33.280323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764500, 37.257694, 33.529793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692002, -0.055042, 0.719794,
		-0.243852, 0.920657, 0.304839,
		-0.679462, -0.386473, 0.623674,
		32.560661, 37.141754, 33.716896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970181, 37.765560, 33.963039>,  <33.036285, 37.412285, 33.280323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970181, 37.765560, 33.963039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922585, 37.374630, 34.033104>,  <32.894028, 37.140072, 34.075142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922585, 37.374630, 34.033104>,  <32.970181, 37.765560, 33.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922585, 37.374630, 34.033104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713080, 0.038640, 0.700016,
		-0.690911, 0.208195, 0.692313,
		-0.118989, -0.977324, 0.175157,
		32.886887, 37.081432, 34.085651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921936, 37.686237, 34.684196>,  <32.970181, 37.765560, 33.963039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921936, 37.686237, 34.684196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086998, 37.396160, 34.463718>,  <33.186035, 37.222115, 34.331432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086998, 37.396160, 34.463718>,  <32.921936, 37.686237, 34.684196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086998, 37.396160, 34.463718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891512, 0.197398, 0.407726,
		-0.186874, -0.659648, 0.727972,
		0.412656, -0.725189, -0.551196,
		33.210796, 37.178604, 34.298359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240604, 37.238911, 35.141365>,  <32.921936, 37.686237, 34.684196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240604, 37.238911, 35.141365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406918, 37.204327, 34.779228>,  <33.506706, 37.183575, 34.561947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406918, 37.204327, 34.779228>,  <33.240604, 37.238911, 35.141365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406918, 37.204327, 34.779228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900061, -0.103654, 0.423256,
		-0.130438, -0.990848, 0.034723,
		0.415783, -0.086462, -0.905345,
		33.531654, 37.178391, 34.507626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649357, 36.767117, 35.229240>,  <33.240604, 37.238911, 35.141365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649357, 36.767117, 35.229240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791470, 36.967522, 34.913582>,  <33.876740, 37.087765, 34.724186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791470, 36.967522, 34.913582>,  <33.649357, 36.767117, 35.229240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791470, 36.967522, 34.913582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933263, -0.142400, 0.329761,
		0.052841, -0.853642, -0.518173,
		0.355285, 0.501017, -0.789147,
		33.898056, 37.117828, 34.676838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224091, 36.842831, 35.661129>,  <33.649357, 36.767117, 35.229240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224091, 36.842831, 35.661129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595951, 36.717461, 35.738602>,  <34.819065, 36.642239, 35.785088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595951, 36.717461, 35.738602>,  <34.224091, 36.842831, 35.661129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595951, 36.717461, 35.738602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088678, -0.700570, -0.708052,
		0.357615, 0.641064, -0.679079,
		0.929649, -0.313429, 0.193686,
		34.874847, 36.623432, 35.796707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587090, 36.632935, 35.095028>,  <34.224091, 36.842831, 35.661129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587090, 36.632935, 35.095028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745811, 36.422649, 35.396004>,  <34.841045, 36.296478, 35.576591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745811, 36.422649, 35.396004>,  <34.587090, 36.632935, 35.095028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745811, 36.422649, 35.396004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149514, -0.845811, -0.512102,
		0.905645, 0.090703, -0.414221,
		0.396802, -0.525715, 0.752444,
		34.864853, 36.264935, 35.621738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170822, 36.126518, 34.811844>,  <34.587090, 36.632935, 35.095028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170822, 36.126518, 34.811844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002659, 35.989273, 35.147827>,  <34.901760, 35.906925, 35.349419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002659, 35.989273, 35.147827>,  <35.170822, 36.126518, 34.811844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002659, 35.989273, 35.147827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151305, -0.886269, -0.437760,
		0.894629, -0.311129, 0.320684,
		-0.420412, -0.343111, 0.839957,
		34.876534, 35.886341, 35.399815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507683, 35.688519, 35.121449>,  <35.170822, 36.126518, 34.811844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507683, 35.688519, 35.121449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134342, 35.598526, 35.233341>,  <34.910339, 35.544533, 35.300476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134342, 35.598526, 35.233341>,  <35.507683, 35.688519, 35.121449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134342, 35.598526, 35.233341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109301, -0.920350, -0.375512,
		0.341931, -0.319908, 0.883596,
		-0.933347, -0.224978, 0.279730,
		34.854340, 35.531033, 35.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466103, 35.154396, 35.597927>,  <35.507683, 35.688519, 35.121449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466103, 35.154396, 35.597927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135948, 35.147717, 35.372200>,  <34.937855, 35.143711, 35.236763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135948, 35.147717, 35.372200>,  <35.466103, 35.154396, 35.597927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135948, 35.147717, 35.372200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138163, -0.975142, -0.173230,
		-0.547396, -0.220950, 0.807180,
		-0.825390, -0.016697, -0.564316,
		34.888332, 35.142708, 35.202904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999165, 34.608036, 35.881130>,  <35.466103, 35.154396, 35.597927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999165, 34.608036, 35.881130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937252, 34.694305, 35.495483>,  <34.900105, 34.746067, 35.264095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937252, 34.694305, 35.495483>,  <34.999165, 34.608036, 35.881130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937252, 34.694305, 35.495483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023996, -0.976414, -0.214569,
		-0.987658, -0.010075, 0.156304,
		-0.154779, 0.215672, -0.964121,
		34.890820, 34.759007, 35.206245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933201, 34.009727, 36.391556>,  <34.999165, 34.608036, 35.881130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933201, 34.009727, 36.391556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723831, 33.972351, 36.730328>,  <34.598209, 33.949924, 36.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723831, 33.972351, 36.730328>,  <34.933201, 34.009727, 36.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723831, 33.972351, 36.730328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109020, -0.993144, -0.042192,
		0.845069, 0.070248, 0.530022,
		-0.523424, -0.093438, 0.846934,
		34.566803, 33.944321, 36.984409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294994, 33.556465, 36.695824>,  <34.933201, 34.009727, 36.391556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294994, 33.556465, 36.695824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935310, 33.564476, 36.870651>,  <34.719501, 33.569283, 36.975548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935310, 33.564476, 36.870651>,  <35.294994, 33.556465, 36.695824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935310, 33.564476, 36.870651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054182, -0.986166, 0.156658,
		0.434158, 0.164549, 0.885680,
		-0.899206, 0.020026, 0.437068,
		34.665550, 33.570484, 37.001770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279911, 33.101006, 37.313171>,  <35.294994, 33.556465, 36.695824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279911, 33.101006, 37.313171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916477, 33.133823, 37.149345>,  <34.698418, 33.153515, 37.051048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916477, 33.133823, 37.149345>,  <35.279911, 33.101006, 37.313171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916477, 33.133823, 37.149345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069316, -0.996540, -0.045859,
		-0.411914, -0.013277, 0.911126,
		-0.908583, 0.082045, -0.409568,
		34.643902, 33.158436, 37.026474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864006, 32.691067, 37.722878>,  <35.279911, 33.101006, 37.313171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864006, 32.691067, 37.722878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759773, 32.728691, 37.338535>,  <34.697235, 32.751266, 37.107929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759773, 32.728691, 37.338535>,  <34.864006, 32.691067, 37.722878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759773, 32.728691, 37.338535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070489, -0.994440, -0.078233,
		-0.962875, 0.047344, 0.265764,
		-0.260582, 0.094062, -0.960859,
		34.681599, 32.756908, 37.050278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211967, 32.250065, 37.652863>,  <34.864006, 32.691067, 37.722878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211967, 32.250065, 37.652863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382526, 32.315674, 37.297047>,  <34.484863, 32.355042, 37.083557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382526, 32.315674, 37.297047>,  <34.211967, 32.250065, 37.652863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382526, 32.315674, 37.297047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140596, -0.959450, -0.244311,
		-0.893543, 0.229239, -0.386045,
		0.426396, 0.164026, -0.889540,
		34.510445, 32.364880, 37.030186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751793, 31.961130, 37.191502>,  <34.211967, 32.250065, 37.652863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751793, 31.961130, 37.191502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127895, 31.981464, 37.056835>,  <34.353558, 31.993666, 36.976036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127895, 31.981464, 37.056835>,  <33.751793, 31.961130, 37.191502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127895, 31.981464, 37.056835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019268, -0.979262, -0.201681,
		-0.339933, 0.196118, -0.919774,
		0.940252, 0.050836, -0.336662,
		34.409969, 31.996716, 36.955837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729713, 31.430021, 36.688992>,  <33.751793, 31.961130, 37.191502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729713, 31.430021, 36.688992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116234, 31.484268, 36.776505>,  <34.348148, 31.516817, 36.829010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116234, 31.484268, 36.776505>,  <33.729713, 31.430021, 36.688992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116234, 31.484268, 36.776505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191228, -0.947172, -0.257482,
		0.172302, 0.290643, -0.941190,
		0.966304, 0.135617, 0.218779,
		34.406124, 31.524954, 36.842136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013294, 31.555790, 36.550694>,  <33.729713, 31.430021, 36.688992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013294, 31.555790, 36.550694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158524, 31.808544, 36.276791>,  <33.245663, 31.960197, 36.112450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158524, 31.808544, 36.276791>,  <33.013294, 31.555790, 36.550694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158524, 31.808544, 36.276791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843224, -0.089842, -0.530001,
		-0.396420, 0.769837, 0.500202,
		0.363075, 0.631886, -0.684760,
		33.267445, 31.998110, 36.071362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600681, 32.157051, 36.513592>,  <33.013294, 31.555790, 36.550694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600681, 32.157051, 36.513592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783798, 32.009327, 36.190102>,  <32.893669, 31.920692, 35.996006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783798, 32.009327, 36.190102>,  <32.600681, 32.157051, 36.513592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783798, 32.009327, 36.190102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888022, -0.233876, -0.395876,
		-0.042939, 0.899394, -0.435025,
		0.457791, -0.369314, -0.808724,
		32.921135, 31.898533, 35.947483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387131, 32.446148, 35.819016>,  <32.600681, 32.157051, 36.513592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387131, 32.446148, 35.819016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504135, 32.068893, 35.755856>,  <32.574337, 31.842541, 35.717960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504135, 32.068893, 35.755856>,  <32.387131, 32.446148, 35.819016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504135, 32.068893, 35.755856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805386, -0.153959, -0.572407,
		0.515548, 0.294604, -0.804623,
		0.292513, -0.943135, -0.157897,
		32.591888, 31.785954, 35.708485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644829, 32.406349, 35.119911>,  <32.387131, 32.446148, 35.819016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644829, 32.406349, 35.119911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488007, 32.076118, 35.282253>,  <32.393913, 31.877981, 35.379658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488007, 32.076118, 35.282253>,  <32.644829, 32.406349, 35.119911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488007, 32.076118, 35.282253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722618, 0.003350, -0.691239,
		0.569310, -0.564283, -0.597889,
		-0.392058, -0.825575, 0.405854,
		32.370388, 31.828445, 35.404011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740726, 31.722248, 34.651310>,  <32.644829, 32.406349, 35.119911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740726, 31.722248, 34.651310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417095, 31.752338, 34.884457>,  <32.222916, 31.770393, 35.024345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417095, 31.752338, 34.884457>,  <32.740726, 31.722248, 34.651310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417095, 31.752338, 34.884457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579457, 0.063386, -0.812534,
		-0.098073, -0.995149, -0.007691,
		-0.809080, 0.075231, 0.582863,
		32.174370, 31.774906, 35.059315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421169, 31.164635, 34.357426>,  <32.740726, 31.722248, 34.651310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421169, 31.164635, 34.357426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190948, 31.455042, 34.507965>,  <32.052814, 31.629286, 34.598289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190948, 31.455042, 34.507965>,  <32.421169, 31.164635, 34.357426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190948, 31.455042, 34.507965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543546, 0.004208, -0.839369,
		-0.610980, -0.687664, 0.392202,
		-0.575553, 0.726017, 0.376348,
		32.018284, 31.672848, 34.620869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673695, 31.109705, 34.246265>,  <32.421169, 31.164635, 34.357426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673695, 31.109705, 34.246265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787374, 31.492891, 34.230621>,  <31.855583, 31.722803, 34.221237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787374, 31.492891, 34.230621>,  <31.673695, 31.109705, 34.246265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787374, 31.492891, 34.230621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121835, -0.004374, -0.992541,
		-0.950992, 0.286845, 0.115471,
		0.284201, 0.957967, -0.039107,
		31.872635, 31.780281, 34.218887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259867, 31.353838, 33.744423>,  <31.673695, 31.109705, 34.246265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259867, 31.353838, 33.744423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574507, 31.600140, 33.762791>,  <31.763290, 31.747921, 33.773811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574507, 31.600140, 33.762791>,  <31.259867, 31.353838, 33.744423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574507, 31.600140, 33.762791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088190, 0.185642, -0.978652,
		-0.611135, 0.765756, 0.200329,
		0.786598, 0.615755, 0.045920,
		31.810486, 31.784866, 33.776566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038467, 31.882381, 33.382370>,  <31.259867, 31.353838, 33.744423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038467, 31.882381, 33.382370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436213, 31.924788, 33.383064>,  <31.674860, 31.950232, 33.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436213, 31.924788, 33.383064>,  <31.038467, 31.882381, 33.382370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436213, 31.924788, 33.383064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027911, 0.277495, -0.960322,
		-0.102290, 0.954860, 0.278889,
		0.994363, 0.106015, 0.001734,
		31.734522, 31.956593, 33.383583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166922, 32.581738, 33.260128>,  <31.038467, 31.882381, 33.382370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166922, 32.581738, 33.260128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498020, 32.381397, 33.158943>,  <31.696678, 32.261192, 33.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498020, 32.381397, 33.158943>,  <31.166922, 32.581738, 33.260128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498020, 32.381397, 33.158943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097090, 0.316184, -0.943717,
		0.552642, 0.805717, 0.213092,
		0.827745, -0.500848, -0.252964,
		31.746344, 32.231144, 33.083054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482740, 33.035370, 32.827465>,  <31.166922, 32.581738, 33.260128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482740, 33.035370, 32.827465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694681, 32.704926, 32.750729>,  <31.821846, 32.506660, 32.704689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694681, 32.704926, 32.750729>,  <31.482740, 33.035370, 32.827465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694681, 32.704926, 32.750729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041407, 0.251130, -0.967067,
		0.847078, 0.504460, 0.167268,
		0.529852, -0.826108, -0.191839,
		31.853638, 32.457092, 32.693176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191448, 33.147755, 32.445812>,  <31.482740, 33.035370, 32.827465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191448, 33.147755, 32.445812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079788, 32.770596, 32.373131>,  <32.012791, 32.544300, 32.329521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079788, 32.770596, 32.373131>,  <32.191448, 33.147755, 32.445812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079788, 32.770596, 32.373131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053231, 0.173738, -0.983352,
		0.958771, -0.284174, 0.001693,
		-0.279149, -0.942900, -0.181702,
		31.996044, 32.487724, 32.318619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607655, 32.934669, 31.907843>,  <32.191448, 33.147755, 32.445812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607655, 32.934669, 31.907843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306934, 32.671146, 31.918972>,  <32.126503, 32.513035, 31.925650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306934, 32.671146, 31.918972>,  <32.607655, 32.934669, 31.907843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306934, 32.671146, 31.918972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055939, -0.105765, -0.992816,
		0.657016, -0.744842, 0.116367,
		-0.751799, -0.658805, 0.027824,
		32.081394, 32.473503, 31.927319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782444, 32.604836, 31.381538>,  <32.607655, 32.934669, 31.907843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782444, 32.604836, 31.381538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417446, 32.448944, 31.431282>,  <32.198448, 32.355412, 31.461128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417446, 32.448944, 31.431282>,  <32.782444, 32.604836, 31.381538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417446, 32.448944, 31.431282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127091, -0.018883, -0.991711,
		0.388844, -0.920737, -0.032300,
		-0.912496, -0.389726, 0.124360,
		32.143696, 32.332027, 31.468590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616009, 32.083469, 30.819775>,  <32.782444, 32.604836, 31.381538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616009, 32.083469, 30.819775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253216, 32.195400, 30.945679>,  <32.035538, 32.262558, 31.021221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253216, 32.195400, 30.945679>,  <32.616009, 32.083469, 30.819775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253216, 32.195400, 30.945679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303523, 0.083828, -0.949129,
		-0.291979, -0.956383, 0.008903,
		-0.906985, 0.279828, 0.314760,
		31.981121, 32.279350, 31.040108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109509, 31.777119, 30.371273>,  <32.616009, 32.083469, 30.819775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109509, 31.777119, 30.371273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872684, 32.059315, 30.527088>,  <31.730589, 32.228634, 30.620577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872684, 32.059315, 30.527088>,  <32.109509, 31.777119, 30.371273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872684, 32.059315, 30.527088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454650, 0.106693, -0.884257,
		-0.665398, -0.700640, 0.257583,
		-0.592063, 0.705492, 0.389540,
		31.695065, 32.270962, 30.643950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450912, 31.697031, 30.012215>,  <32.109509, 31.777119, 30.371273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450912, 31.697031, 30.012215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428488, 32.073380, 30.145853>,  <31.415033, 32.299187, 30.226036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428488, 32.073380, 30.145853>,  <31.450912, 31.697031, 30.012215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428488, 32.073380, 30.145853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510339, 0.260603, -0.819536,
		-0.858144, -0.216449, 0.465552,
		-0.056064, 0.940870, 0.334098,
		31.411669, 32.355640, 30.246082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910826, 31.956945, 29.753761>,  <31.450912, 31.697031, 30.012215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910826, 31.956945, 29.753761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081316, 32.299671, 29.869829>,  <31.183611, 32.505306, 29.939470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081316, 32.299671, 29.869829>,  <30.910826, 31.956945, 29.753761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081316, 32.299671, 29.869829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410652, 0.469070, -0.781881,
		-0.806038, 0.214100, 0.551783,
		0.426225, 0.856816, 0.290167,
		31.209183, 32.556717, 29.956879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386765, 32.477814, 29.783354>,  <30.910826, 31.956945, 29.753761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386765, 32.477814, 29.783354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734535, 32.667885, 29.729244>,  <30.943197, 32.781929, 29.696777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734535, 32.667885, 29.729244>,  <30.386765, 32.477814, 29.783354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734535, 32.667885, 29.729244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417463, 0.560126, -0.715530,
		-0.264233, 0.678575, 0.685359,
		0.869429, 0.475178, -0.135276,
		30.995363, 32.810440, 29.688662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318281, 33.221458, 29.594845>,  <30.386765, 32.477814, 29.783354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318281, 33.221458, 29.594845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700024, 33.189587, 29.479708>,  <30.929070, 33.170464, 29.410625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700024, 33.189587, 29.479708>,  <30.318281, 33.221458, 29.594845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700024, 33.189587, 29.479708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132200, 0.751510, -0.646340,
		0.267814, 0.654893, 0.706676,
		0.954358, -0.079676, -0.287842,
		30.986332, 33.165684, 29.393354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658897, 33.948933, 29.604687>,  <30.318281, 33.221458, 29.594845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658897, 33.948933, 29.604687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828333, 33.696079, 29.345156>,  <30.929995, 33.544369, 29.189436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828333, 33.696079, 29.345156>,  <30.658897, 33.948933, 29.604687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828333, 33.696079, 29.345156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059939, 0.695134, -0.716377,
		0.903869, 0.342340, 0.256562,
		0.423590, -0.632133, -0.648830,
		30.955410, 33.506439, 29.150507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914368, 34.358784, 29.150028>,  <30.658897, 33.948933, 29.604687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914368, 34.358784, 29.150028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994438, 34.028229, 28.939501>,  <31.042480, 33.829895, 28.813185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994438, 34.028229, 28.939501>,  <30.914368, 34.358784, 29.150028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994438, 34.028229, 28.939501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012414, 0.539289, -0.842029,
		0.979681, 0.162022, 0.118213,
		0.200178, -0.826387, -0.526320,
		31.054491, 33.780312, 28.781605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505924, 34.486000, 28.683653>,  <30.914368, 34.358784, 29.150028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505924, 34.486000, 28.683653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303562, 34.187134, 28.511234>,  <31.182144, 34.007812, 28.407784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303562, 34.187134, 28.511234>,  <31.505924, 34.486000, 28.683653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303562, 34.187134, 28.511234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185176, 0.582135, -0.791726,
		0.842478, -0.320719, -0.432862,
		-0.505906, -0.747167, -0.431046,
		31.151791, 33.962982, 28.381920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764202, 34.260624, 27.994205>,  <31.505924, 34.486000, 28.683653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764202, 34.260624, 27.994205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371361, 34.187782, 28.013418>,  <31.135656, 34.144077, 28.024946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371361, 34.187782, 28.013418>,  <31.764202, 34.260624, 27.994205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371361, 34.187782, 28.013418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140858, 0.540961, -0.829168,
		0.125011, -0.821096, -0.556932,
		-0.982106, -0.182104, 0.048032,
		31.076729, 34.133152, 28.027828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522762, 34.489674, 27.420336>,  <31.764202, 34.260624, 27.994205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522762, 34.489674, 27.420336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161501, 34.397430, 27.565186>,  <30.944744, 34.342083, 27.652096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161501, 34.397430, 27.565186>,  <31.522762, 34.489674, 27.420336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161501, 34.397430, 27.565186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427997, 0.549780, -0.717328,
		-0.033667, -0.802846, -0.595236,
		-0.903153, -0.230608, 0.362125,
		30.890554, 34.328247, 27.673822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148947, 34.240227, 26.882807>,  <31.522762, 34.489674, 27.420336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148947, 34.240227, 26.882807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913439, 34.375500, 27.176468>,  <30.772133, 34.456665, 27.352665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913439, 34.375500, 27.176468>,  <31.148947, 34.240227, 26.882807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913439, 34.375500, 27.176468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529487, 0.524898, -0.666427,
		-0.610731, -0.781097, -0.129980,
		-0.588771, 0.338185, 0.734153,
		30.736807, 34.476955, 27.396713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590548, 34.294918, 26.601660>,  <31.148947, 34.240227, 26.882807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590548, 34.294918, 26.601660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545006, 34.543087, 26.912045>,  <30.517681, 34.691986, 27.098276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545006, 34.543087, 26.912045>,  <30.590548, 34.294918, 26.601660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545006, 34.543087, 26.912045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589900, 0.586241, -0.555283,
		-0.799409, -0.520963, 0.299238,
		-0.113856, 0.620419, 0.775962,
		30.510849, 34.729214, 27.144833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879295, 34.399136, 26.656820>,  <30.590548, 34.294918, 26.601660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879295, 34.399136, 26.656820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046143, 34.712563, 26.841009>,  <30.146252, 34.900620, 26.951523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046143, 34.712563, 26.841009>,  <29.879295, 34.399136, 26.656820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046143, 34.712563, 26.841009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533933, 0.621272, -0.573530,
		-0.735478, -0.006630, 0.677516,
		0.417119, 0.783567, 0.460472,
		30.171278, 34.947632, 26.979151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316854, 34.886341, 26.809689>,  <29.879295, 34.399136, 26.656820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316854, 34.886341, 26.809689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652563, 35.103207, 26.826088>,  <29.853989, 35.233326, 26.835928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652563, 35.103207, 26.826088>,  <29.316854, 34.886341, 26.809689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652563, 35.103207, 26.826088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424971, 0.701152, -0.572525,
		-0.339147, 0.463082, 0.818861,
		0.839272, 0.542163, 0.040997,
		29.904345, 35.265854, 26.838387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096283, 35.534996, 26.823338>,  <29.316854, 34.886341, 26.809689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096283, 35.534996, 26.823338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470505, 35.591385, 26.693806>,  <29.695038, 35.625217, 26.616087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470505, 35.591385, 26.693806>,  <29.096283, 35.534996, 26.823338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470505, 35.591385, 26.693806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339584, 0.611047, -0.715056,
		0.097071, 0.778940, 0.619539,
		0.935553, 0.140974, -0.323830,
		29.751171, 35.633678, 26.596657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083069, 36.172993, 26.593418>,  <29.096283, 35.534996, 26.823338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083069, 36.172993, 26.593418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401278, 36.010818, 26.413300>,  <29.592203, 35.913513, 26.305227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401278, 36.010818, 26.413300>,  <29.083069, 36.172993, 26.593418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401278, 36.010818, 26.413300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157086, 0.579753, -0.799506,
		0.585208, 0.706761, 0.397519,
		0.795522, -0.405433, -0.450298,
		29.639935, 35.889187, 26.278210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496025, 36.769779, 26.397604>,  <29.083069, 36.172993, 26.593418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496025, 36.769779, 26.397604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576914, 36.456982, 26.161777>,  <29.625448, 36.269302, 26.020281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576914, 36.456982, 26.161777>,  <29.496025, 36.769779, 26.397604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576914, 36.456982, 26.161777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035190, 0.595815, -0.802350,
		0.978707, 0.183001, 0.092970,
		0.202224, -0.781994, -0.589568,
		29.637581, 36.222382, 25.984907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935658, 37.041100, 25.949139>,  <29.496025, 36.769779, 26.397604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935658, 37.041100, 25.949139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788261, 36.717228, 25.766430>,  <29.699823, 36.522907, 25.656805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788261, 36.717228, 25.766430>,  <29.935658, 37.041100, 25.949139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788261, 36.717228, 25.766430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178978, 0.543944, -0.819812,
		0.912240, -0.220342, -0.345353,
		-0.368491, -0.809676, -0.456771,
		29.677713, 36.474327, 25.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167049, 37.089848, 25.258230>,  <29.935658, 37.041100, 25.949139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167049, 37.089848, 25.258230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867460, 36.827404, 25.221222>,  <29.687706, 36.669937, 25.199017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867460, 36.827404, 25.221222>,  <30.167049, 37.089848, 25.258230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867460, 36.827404, 25.221222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274414, 0.434240, -0.857982,
		0.603106, -0.617216, -0.505279,
		-0.748973, -0.656109, -0.092520,
		29.642769, 36.630573, 25.193466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211372, 36.837753, 24.600960>,  <30.167049, 37.089848, 25.258230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211372, 36.837753, 24.600960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839094, 36.719997, 24.687807>,  <29.615726, 36.649345, 24.739916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839094, 36.719997, 24.687807>,  <30.211372, 36.837753, 24.600960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839094, 36.719997, 24.687807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320985, 0.372610, -0.870707,
		0.175427, -0.880055, -0.441281,
		-0.930696, -0.294390, 0.217119,
		29.559885, 36.631680, 24.752943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071640, 36.480083, 24.072622>,  <30.211372, 36.837753, 24.600960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071640, 36.480083, 24.072622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726971, 36.604458, 24.233042>,  <29.520168, 36.679081, 24.329292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726971, 36.604458, 24.233042>,  <30.071640, 36.480083, 24.072622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726971, 36.604458, 24.233042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244755, 0.437658, -0.865188,
		-0.444539, -0.843668, -0.301015,
		-0.861673, 0.310935, 0.401048,
		29.468470, 36.697739, 24.353355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562393, 36.252029, 23.499657>,  <30.071640, 36.480083, 24.072622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562393, 36.252029, 23.499657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425718, 36.543484, 23.737089>,  <29.343714, 36.718357, 23.879549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425718, 36.543484, 23.737089>,  <29.562393, 36.252029, 23.499657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425718, 36.543484, 23.737089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274202, 0.526822, -0.804532,
		-0.898924, -0.437657, 0.019787,
		-0.341685, 0.728639, 0.593579,
		29.323212, 36.762077, 23.915163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942335, 36.390587, 23.190899>,  <29.562393, 36.252029, 23.499657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942335, 36.390587, 23.190899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007700, 36.723225, 23.403219>,  <29.046919, 36.922806, 23.530611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007700, 36.723225, 23.403219>,  <28.942335, 36.390587, 23.190899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007700, 36.723225, 23.403219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374012, 0.550092, -0.746669,
		-0.912914, -0.076511, 0.400917,
		0.163413, 0.831592, 0.530802,
		29.056725, 36.972702, 23.562460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348818, 36.722328, 23.147827>,  <28.942335, 36.390587, 23.190899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348818, 36.722328, 23.147827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601646, 37.005466, 23.273964>,  <28.753344, 37.175350, 23.349646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601646, 37.005466, 23.273964>,  <28.348818, 36.722328, 23.147827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601646, 37.005466, 23.273964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336983, 0.617525, -0.710708,
		-0.697804, 0.342952, 0.628851,
		0.632070, 0.707847, 0.315342,
		28.791267, 37.217819, 23.368567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993284, 37.373959, 23.008080>,  <28.348818, 36.722328, 23.147827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993284, 37.373959, 23.008080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375784, 37.476288, 23.064846>,  <28.605284, 37.537685, 23.098906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375784, 37.476288, 23.064846>,  <27.993284, 37.373959, 23.008080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375784, 37.476288, 23.064846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028877, 0.565279, -0.824394,
		-0.291119, 0.784229, 0.547936,
		0.956251, 0.255820, 0.141918,
		28.662659, 37.553032, 23.107422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015846, 38.165489, 23.030769>,  <27.993284, 37.373959, 23.008080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015846, 38.165489, 23.030769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357782, 37.993523, 22.914551>,  <28.562944, 37.890343, 22.844820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357782, 37.993523, 22.914551>,  <28.015846, 38.165489, 23.030769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357782, 37.993523, 22.914551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013673, 0.578404, -0.815636,
		0.518709, 0.693267, 0.500322,
		0.854842, -0.429918, -0.290544,
		28.614235, 37.864548, 22.827387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509085, 38.823200, 22.921276>,  <28.015846, 38.165489, 23.030769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509085, 38.823200, 22.921276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651947, 38.499878, 22.734053>,  <28.737663, 38.305885, 22.621719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651947, 38.499878, 22.734053>,  <28.509085, 38.823200, 22.921276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651947, 38.499878, 22.734053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229120, 0.561615, -0.795042,
		0.905508, 0.176711, 0.385783,
		0.357154, -0.808308, -0.468059,
		28.759094, 38.257385, 22.593636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156660, 38.993961, 22.682615>,  <28.509085, 38.823200, 22.921276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156660, 38.993961, 22.682615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025595, 38.703144, 22.441269>,  <28.946957, 38.528652, 22.296461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025595, 38.703144, 22.441269>,  <29.156660, 38.993961, 22.682615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025595, 38.703144, 22.441269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079091, 0.615269, -0.784339,
		0.941479, -0.304719, -0.144098,
		-0.327662, -0.727042, -0.603364,
		28.927296, 38.485031, 22.260260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515318, 39.126392, 22.063290>,  <29.156660, 38.993961, 22.682615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515318, 39.126392, 22.063290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244829, 38.860966, 21.935291>,  <29.082535, 38.701710, 21.858492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244829, 38.860966, 21.935291>,  <29.515318, 39.126392, 22.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244829, 38.860966, 21.935291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234743, 0.605810, -0.760191,
		0.698297, -0.438941, -0.565431,
		-0.676223, -0.663570, -0.319996,
		29.041962, 38.661896, 21.839293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659893, 39.010220, 21.487967>,  <29.515318, 39.126392, 22.063290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659893, 39.010220, 21.487967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291264, 38.865601, 21.431423>,  <29.070086, 38.778828, 21.397497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291264, 38.865601, 21.431423>,  <29.659893, 39.010220, 21.487967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291264, 38.865601, 21.431423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106041, 0.584743, -0.804258,
		0.373437, -0.726194, -0.577223,
		-0.921575, -0.361549, -0.141358,
		29.014791, 38.757137, 21.389015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590532, 38.734035, 20.780777>,  <29.659893, 39.010220, 21.487967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590532, 38.734035, 20.780777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218477, 38.824242, 20.896700>,  <28.995245, 38.878365, 20.966253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218477, 38.824242, 20.896700>,  <29.590532, 38.734035, 20.780777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218477, 38.824242, 20.896700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180786, 0.405712, -0.895943,
		-0.319632, -0.885742, -0.336596,
		-0.930135, 0.225520, 0.289808,
		28.939436, 38.891899, 20.983643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087906, 38.725380, 20.109192>,  <29.590532, 38.734035, 20.780777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087906, 38.725380, 20.109192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872351, 38.935791, 20.372370>,  <28.743017, 39.062038, 20.530275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872351, 38.935791, 20.372370>,  <29.087906, 38.725380, 20.109192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872351, 38.935791, 20.372370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284066, 0.621826, -0.729821,
		-0.793035, -0.580192, -0.185667,
		-0.538889, 0.526032, 0.657943,
		28.710684, 39.093601, 20.569752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409197, 38.717388, 19.900553>,  <29.087906, 38.725380, 20.109192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409197, 38.717388, 19.900553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452585, 39.046745, 20.123358>,  <28.478619, 39.244358, 20.257040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452585, 39.046745, 20.123358>,  <28.409197, 38.717388, 19.900553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452585, 39.046745, 20.123358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288179, 0.562302, -0.775093,
		-0.951413, -0.076445, 0.298276,
		0.108470, 0.823391, 0.557011,
		28.485126, 39.293762, 20.290461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765997, 39.042065, 19.850143>,  <28.409197, 38.717388, 19.900553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765997, 39.042065, 19.850143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027243, 39.325977, 19.955706>,  <28.183990, 39.496326, 20.019043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027243, 39.325977, 19.955706>,  <27.765997, 39.042065, 19.850143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027243, 39.325977, 19.955706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268302, 0.542791, -0.795859,
		-0.708134, 0.448982, 0.544942,
		0.653116, 0.709784, 0.263906,
		28.223177, 39.538914, 20.034878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448721, 39.726265, 19.840630>,  <27.765997, 39.042065, 19.850143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448721, 39.726265, 19.840630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842323, 39.769974, 19.784351>,  <28.078484, 39.796200, 19.750584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842323, 39.769974, 19.784351>,  <27.448721, 39.726265, 19.840630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842323, 39.769974, 19.784351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175419, 0.731961, -0.658378,
		0.031043, 0.672528, 0.739420,
		0.984004, 0.109270, -0.140696,
		28.137526, 39.802753, 19.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396105, 40.306541, 19.524307>,  <27.448721, 39.726265, 19.840630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396105, 40.306541, 19.524307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794977, 40.278439, 19.513803>,  <28.034302, 40.261578, 19.507502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794977, 40.278439, 19.513803>,  <27.396105, 40.306541, 19.524307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794977, 40.278439, 19.513803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038473, 0.779681, -0.624994,
		0.064384, 0.622223, 0.780188,
		0.997183, -0.070256, -0.026260,
		28.094131, 40.257362, 19.505926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670050, 41.011505, 19.545702>,  <27.396105, 40.306541, 19.524307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670050, 41.011505, 19.545702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939260, 40.765949, 19.380690>,  <28.100786, 40.618618, 19.281683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939260, 40.765949, 19.380690>,  <27.670050, 41.011505, 19.545702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939260, 40.765949, 19.380690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182154, 0.678156, -0.711987,
		0.716837, 0.404042, 0.568238,
		0.673026, -0.613885, -0.412529,
		28.141169, 40.581783, 19.256931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229338, 41.516453, 19.856461>,  <27.670050, 41.011505, 19.545702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229338, 41.516453, 19.856461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354757, 41.462154, 20.232388>,  <28.430010, 41.429573, 20.457943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354757, 41.462154, 20.232388>,  <28.229338, 41.516453, 19.856461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354757, 41.462154, 20.232388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067263, -0.990418, -0.120617,
		0.947186, -0.025396, -0.319677,
		0.313551, -0.135749, 0.939818,
		28.448822, 41.421429, 20.514334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510832, 42.168610, 19.542824>,  <28.229338, 41.516453, 19.856461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510832, 42.168610, 19.542824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196281, 42.151306, 19.296331>,  <28.007551, 42.140923, 19.148436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196281, 42.151306, 19.296331>,  <28.510832, 42.168610, 19.542824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196281, 42.151306, 19.296331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569991, -0.435405, -0.696801,
		-0.238165, -0.899194, 0.367051,
		-0.786376, -0.043262, -0.616231,
		27.960369, 42.138329, 19.111462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591625, 41.578381, 19.083984>,  <28.510832, 42.168610, 19.542824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591625, 41.578381, 19.083984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353613, 41.831814, 18.886196>,  <28.210806, 41.983875, 18.767523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353613, 41.831814, 18.886196>,  <28.591625, 41.578381, 19.083984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353613, 41.831814, 18.886196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491641, -0.199755, -0.847578,
		-0.635788, -0.747438, -0.192637,
		-0.595032, 0.633588, -0.494473,
		28.175104, 42.021889, 18.737854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210100, 41.522923, 18.599407>,  <28.591625, 41.578381, 19.083984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210100, 41.522923, 18.599407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594769, 41.629082, 18.626984>,  <29.825569, 41.692776, 18.643530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594769, 41.629082, 18.626984>,  <29.210100, 41.522923, 18.599407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594769, 41.629082, 18.626984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128472, -0.658212, 0.741790,
		0.242249, -0.704500, -0.667079,
		0.961671, 0.265399, 0.068943,
		29.883270, 41.708702, 18.647667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522821, 40.995033, 19.057161>,  <29.210100, 41.522923, 18.599407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522821, 40.995033, 19.057161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820854, 41.254841, 18.996525>,  <29.999674, 41.410725, 18.960144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820854, 41.254841, 18.996525>,  <29.522821, 40.995033, 19.057161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820854, 41.254841, 18.996525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521340, -0.425396, 0.739759,
		0.415999, -0.630212, -0.655574,
		0.745083, 0.649516, -0.151590,
		30.044378, 41.449696, 18.951048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304346, 40.707047, 18.978029>,  <29.522821, 40.995033, 19.057161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304346, 40.707047, 18.978029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285822, 41.079777, 19.122007>,  <30.274708, 41.303413, 19.208393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285822, 41.079777, 19.122007>,  <30.304346, 40.707047, 18.978029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285822, 41.079777, 19.122007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525393, -0.283742, 0.802155,
		0.849598, 0.226262, -0.476433,
		-0.046313, 0.931824, 0.359944,
		30.271929, 41.359325, 19.229990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928913, 41.022388, 19.214663>,  <30.304346, 40.707047, 18.978029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928913, 41.022388, 19.214663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638935, 41.195587, 19.428940>,  <30.464949, 41.299507, 19.557507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638935, 41.195587, 19.428940>,  <30.928913, 41.022388, 19.214663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638935, 41.195587, 19.428940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503593, -0.197427, 0.841081,
		0.469943, 0.879511, -0.074929,
		-0.724946, 0.432994, 0.535695,
		30.421452, 41.325485, 19.589649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298590, 41.334312, 19.747496>,  <30.928913, 41.022388, 19.214663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298590, 41.334312, 19.747496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933744, 41.233883, 19.877117>,  <30.714838, 41.173626, 19.954889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933744, 41.233883, 19.877117>,  <31.298590, 41.334312, 19.747496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933744, 41.233883, 19.877117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386933, -0.266211, 0.882845,
		-0.135395, 0.930641, 0.339964,
		-0.912114, -0.251076, 0.324051,
		30.660110, 41.158562, 19.974333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316704, 41.531597, 20.423729>,  <31.298590, 41.334312, 19.747496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316704, 41.531597, 20.423729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994907, 41.296158, 20.455605>,  <30.801830, 41.154896, 20.474730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994907, 41.296158, 20.455605>,  <31.316704, 41.531597, 20.423729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994907, 41.296158, 20.455605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323864, -0.322223, 0.889542,
		-0.497901, 0.741438, 0.449850,
		-0.804492, -0.588594, 0.079690,
		30.753559, 41.119579, 20.479511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897882, 41.667946, 21.047369>,  <31.316704, 41.531597, 20.423729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897882, 41.667946, 21.047369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783358, 41.295372, 20.957521>,  <30.714643, 41.071827, 20.903614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783358, 41.295372, 20.957521>,  <30.897882, 41.667946, 21.047369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783358, 41.295372, 20.957521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281773, -0.305918, 0.909405,
		-0.915768, 0.197082, 0.350041,
		-0.286311, -0.931436, -0.224618,
		30.697464, 41.015942, 20.890137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360231, 41.464417, 21.480623>,  <30.897882, 41.667946, 21.047369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360231, 41.464417, 21.480623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486343, 41.112686, 21.337858>,  <30.562010, 40.901649, 21.252199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486343, 41.112686, 21.337858>,  <30.360231, 41.464417, 21.480623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486343, 41.112686, 21.337858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129213, -0.332814, 0.934098,
		-0.940161, -0.340619, 0.008691,
		0.315279, -0.879325, -0.356912,
		30.580927, 40.848888, 21.230785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027754, 40.933918, 21.960938>,  <30.360231, 41.464417, 21.480623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027754, 40.933918, 21.960938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347393, 40.784016, 21.772894>,  <30.539177, 40.694077, 21.660067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347393, 40.784016, 21.772894>,  <30.027754, 40.933918, 21.960938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347393, 40.784016, 21.772894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321687, -0.394072, 0.860944,
		-0.507900, -0.839206, -0.194348,
		0.799096, -0.374754, -0.470111,
		30.587122, 40.671589, 21.631861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057461, 40.285343, 22.183002>,  <30.027754, 40.933918, 21.960938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057461, 40.285343, 22.183002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427061, 40.331707, 22.037241>,  <30.648821, 40.359524, 21.949783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427061, 40.331707, 22.037241>,  <30.057461, 40.285343, 22.183002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427061, 40.331707, 22.037241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382096, -0.317529, 0.867858,
		-0.015119, -0.941138, -0.337684,
		0.923999, 0.115906, -0.364406,
		30.704260, 40.366478, 21.927919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353420, 39.716385, 22.543402>,  <30.057461, 40.285343, 22.183002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353420, 39.716385, 22.543402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627951, 39.950058, 22.370111>,  <30.792669, 40.090263, 22.266138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627951, 39.950058, 22.370111>,  <30.353420, 39.716385, 22.543402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627951, 39.950058, 22.370111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668009, -0.270784, 0.693138,
		0.287609, -0.765118, -0.576086,
		0.686327, 0.584183, -0.433226,
		30.833849, 40.125313, 22.240143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953056, 39.249981, 22.274883>,  <30.353420, 39.716385, 22.543402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953056, 39.249981, 22.274883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070322, 39.621254, 22.366554>,  <31.140682, 39.844017, 22.421556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070322, 39.621254, 22.366554>,  <30.953056, 39.249981, 22.274883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070322, 39.621254, 22.366554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525959, -0.356756, 0.772071,
		0.798387, -0.105805, -0.592776,
		0.293166, 0.928187, 0.229180,
		31.158272, 39.899712, 22.435308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717382, 39.252258, 22.352131>,  <30.953056, 39.249981, 22.274883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717382, 39.252258, 22.352131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592916, 39.575462, 22.552248>,  <31.518236, 39.769386, 22.672319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592916, 39.575462, 22.552248>,  <31.717382, 39.252258, 22.352131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592916, 39.575462, 22.552248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585716, -0.251512, 0.770505,
		0.748407, 0.532785, -0.395003,
		-0.311165, 0.808011, 0.500294,
		31.499567, 39.817867, 22.702335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327152, 39.434345, 22.663239>,  <31.717382, 39.252258, 22.352131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327152, 39.434345, 22.663239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022305, 39.579212, 22.877905>,  <31.839396, 39.666134, 23.006704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022305, 39.579212, 22.877905>,  <32.327152, 39.434345, 22.663239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022305, 39.579212, 22.877905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487628, -0.224192, 0.843775,
		0.425904, 0.904750, -0.005742,
		-0.762119, 0.362167, 0.536666,
		31.793669, 39.687862, 23.038904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667976, 39.858089, 23.217394>,  <32.327152, 39.434345, 22.663239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667976, 39.858089, 23.217394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299305, 39.823650, 23.368704>,  <32.078102, 39.802986, 23.459490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299305, 39.823650, 23.368704>,  <32.667976, 39.858089, 23.217394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299305, 39.823650, 23.368704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386929, -0.133291, 0.912425,
		-0.028139, 0.987330, 0.156166,
		-0.921680, -0.086100, 0.378276,
		32.022800, 39.797821, 23.482187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713295, 40.238491, 23.857082>,  <32.667976, 39.858089, 23.217394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713295, 40.238491, 23.857082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414299, 39.976646, 23.902250>,  <32.234901, 39.819542, 23.929350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414299, 39.976646, 23.902250>,  <32.713295, 40.238491, 23.857082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414299, 39.976646, 23.902250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321808, -0.208142, 0.923643,
		-0.581121, 0.726750, 0.366242,
		-0.747488, -0.654608, 0.112919,
		32.190052, 39.780266, 23.936127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473763, 40.386677, 24.553537>,  <32.713295, 40.238491, 23.857082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473763, 40.386677, 24.553537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277813, 40.051216, 24.458305>,  <32.160244, 39.849937, 24.401167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277813, 40.051216, 24.458305>,  <32.473763, 40.386677, 24.553537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277813, 40.051216, 24.458305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073962, -0.312088, 0.947170,
		-0.868652, 0.446383, 0.214912,
		-0.489872, -0.838656, -0.238081,
		32.130852, 39.799618, 24.386881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941708, 40.332607, 24.982140>,  <32.473763, 40.386677, 24.553537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941708, 40.332607, 24.982140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011864, 39.958836, 24.858149>,  <32.053959, 39.734573, 24.783754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011864, 39.958836, 24.858149>,  <31.941708, 40.332607, 24.982140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011864, 39.958836, 24.858149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061699, -0.303808, 0.950733,
		-0.982564, -0.185875, 0.004368,
		0.175390, -0.934425, -0.309980,
		32.064480, 39.678509, 24.765154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534864, 39.948757, 25.370365>,  <31.941708, 40.332607, 24.982140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534864, 39.948757, 25.370365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825554, 39.698692, 25.256493>,  <31.999968, 39.548653, 25.188169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825554, 39.698692, 25.256493>,  <31.534864, 39.948757, 25.370365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825554, 39.698692, 25.256493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101721, -0.311922, 0.944647,
		-0.679359, -0.715454, -0.163088,
		0.726722, -0.625164, -0.284684,
		32.043571, 39.511143, 25.171087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398787, 39.317551, 25.759274>,  <31.534864, 39.948757, 25.370365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398787, 39.317551, 25.759274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786348, 39.307575, 25.660803>,  <32.018887, 39.301590, 25.601721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786348, 39.307575, 25.660803>,  <31.398787, 39.317551, 25.759274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786348, 39.307575, 25.660803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212618, -0.424998, 0.879870,
		-0.126568, -0.904851, -0.406480,
		0.968904, -0.024939, -0.246178,
		32.077019, 39.300095, 25.586948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560978, 38.673565, 25.907179>,  <31.398787, 39.317551, 25.759274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560978, 38.673565, 25.907179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903275, 38.880386, 25.914808>,  <32.108654, 39.004478, 25.919386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903275, 38.880386, 25.914808>,  <31.560978, 38.673565, 25.907179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903275, 38.880386, 25.914808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281484, -0.496171, 0.821329,
		0.434132, -0.697477, -0.570136,
		0.855743, 0.517050, 0.019075,
		32.159996, 39.035500, 25.920530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968912, 38.181938, 26.250854>,  <31.560978, 38.673565, 25.907179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968912, 38.181938, 26.250854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161198, 38.532516, 26.261852>,  <32.276569, 38.742863, 26.268450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161198, 38.532516, 26.261852>,  <31.968912, 38.181938, 26.250854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161198, 38.532516, 26.261852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575235, -0.338860, 0.744499,
		0.661829, -0.342076, -0.667058,
		0.480714, 0.876446, 0.027493,
		32.305412, 38.795452, 26.270100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658447, 38.022930, 26.201262>,  <31.968912, 38.181938, 26.250854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658447, 38.022930, 26.201262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618904, 38.372284, 26.392021>,  <32.595177, 38.581894, 26.506477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618904, 38.372284, 26.392021>,  <32.658447, 38.022930, 26.201262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618904, 38.372284, 26.392021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453518, -0.387037, 0.802822,
		0.885747, 0.295647, -0.357833,
		-0.098857, 0.873381, 0.476899,
		32.589249, 38.634300, 26.535091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303963, 38.232040, 26.502144>,  <32.658447, 38.022930, 26.201262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303963, 38.232040, 26.502144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043777, 38.445686, 26.718153>,  <32.887669, 38.573875, 26.847759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043777, 38.445686, 26.718153>,  <33.303963, 38.232040, 26.502144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043777, 38.445686, 26.718153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423485, -0.335187, 0.841611,
		0.630525, 0.776126, -0.008163,
		-0.650460, 0.534114, 0.540022,
		32.848640, 38.605919, 26.880159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636684, 38.515388, 27.043198>,  <33.303963, 38.232040, 26.502144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636684, 38.515388, 27.043198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263325, 38.545639, 27.183510>,  <33.039310, 38.563789, 27.267696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263325, 38.545639, 27.183510>,  <33.636684, 38.515388, 27.043198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263325, 38.545639, 27.183510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320099, -0.266328, 0.909179,
		0.162179, 0.960911, 0.224383,
		-0.933399, 0.075625, 0.350780,
		32.983303, 38.568325, 27.288744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638008, 38.852619, 27.669420>,  <33.636684, 38.515388, 27.043198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638008, 38.852619, 27.669420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281631, 38.673439, 27.699249>,  <33.067806, 38.565929, 27.717148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281631, 38.673439, 27.699249>,  <33.638008, 38.852619, 27.669420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281631, 38.673439, 27.699249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211895, -0.264837, 0.940724,
		-0.401646, 0.853934, 0.330873,
		-0.890944, -0.447949, 0.074574,
		33.014347, 38.539055, 27.721621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351738, 39.083138, 28.367388>,  <33.638008, 38.852619, 27.669420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351738, 39.083138, 28.367388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153831, 38.759144, 28.241453>,  <33.035088, 38.564747, 28.165892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153831, 38.759144, 28.241453>,  <33.351738, 39.083138, 28.367388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153831, 38.759144, 28.241453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018171, -0.352567, 0.935610,
		-0.868834, 0.468632, 0.159721,
		-0.494770, -0.809988, -0.314837,
		33.005402, 38.516148, 28.147001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957268, 38.797035, 28.907009>,  <33.351738, 39.083138, 28.367388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957268, 38.797035, 28.907009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939770, 38.479023, 28.665010>,  <32.929272, 38.288216, 28.519812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939770, 38.479023, 28.665010>,  <32.957268, 38.797035, 28.907009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939770, 38.479023, 28.665010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101029, -0.605991, 0.789030,
		-0.993921, -0.026604, 0.106831,
		-0.043748, -0.795026, -0.604995,
		32.926647, 38.240517, 28.483511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369923, 38.429123, 29.063950>,  <32.957268, 38.797035, 28.907009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369923, 38.429123, 29.063950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619392, 38.176300, 28.879976>,  <32.769073, 38.024609, 28.769592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619392, 38.176300, 28.879976>,  <32.369923, 38.429123, 29.063950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619392, 38.176300, 28.879976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002999, -0.586446, 0.809983,
		-0.781679, -0.506544, -0.363855,
		0.623673, -0.632055, -0.459932,
		32.806496, 37.986683, 28.741997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048077, 37.806740, 29.118364>,  <32.369923, 38.429123, 29.063950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048077, 37.806740, 29.118364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440285, 37.741550, 29.074512>,  <32.675610, 37.702438, 29.048203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440285, 37.741550, 29.074512>,  <32.048077, 37.806740, 29.118364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440285, 37.741550, 29.074512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026230, -0.661805, 0.749216,
		-0.194651, -0.731748, -0.653189,
		0.980521, -0.162969, -0.109627,
		32.734440, 37.692661, 29.041624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109535, 37.224552, 29.375362>,  <32.048077, 37.806740, 29.118364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109535, 37.224552, 29.375362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496593, 37.325226, 29.368210>,  <32.728828, 37.385632, 29.363918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496593, 37.325226, 29.368210>,  <32.109535, 37.224552, 29.375362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496593, 37.325226, 29.368210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151883, -0.524411, 0.837809,
		0.201488, -0.813416, -0.545670,
		0.967643, 0.251687, -0.017882,
		32.786888, 37.400730, 29.362844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475544, 36.551571, 29.486858>,  <32.109535, 37.224552, 29.375362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475544, 36.551571, 29.486858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743080, 36.831306, 29.587717>,  <32.903603, 36.999146, 29.648232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743080, 36.831306, 29.587717>,  <32.475544, 36.551571, 29.486858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743080, 36.831306, 29.587717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132950, -0.446236, 0.884985,
		0.731418, -0.558394, -0.391439,
		0.668844, 0.699336, 0.252147,
		32.943733, 37.041107, 29.663361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252365, 36.221302, 29.601627>,  <32.475544, 36.551571, 29.486858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252365, 36.221302, 29.601627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239796, 36.560905, 29.812605>,  <33.232254, 36.764668, 29.939192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239796, 36.560905, 29.812605>,  <33.252365, 36.221302, 29.601627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239796, 36.560905, 29.812605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180032, -0.514267, 0.838521,
		0.983159, 0.121303, -0.136691,
		-0.031420, 0.849008, 0.527445,
		33.230370, 36.815609, 29.970839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788319, 36.095730, 30.054150>,  <33.252365, 36.221302, 29.601627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788319, 36.095730, 30.054150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580898, 36.401203, 30.207972>,  <33.456444, 36.584488, 30.300264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580898, 36.401203, 30.207972>,  <33.788319, 36.095730, 30.054150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580898, 36.401203, 30.207972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103431, -0.390422, 0.914808,
		0.848766, 0.514152, 0.123466,
		-0.518554, 0.763687, 0.384556,
		33.425331, 36.630310, 30.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150112, 36.494041, 30.530615>,  <33.788319, 36.095730, 30.054150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150112, 36.494041, 30.530615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773262, 36.544155, 30.655005>,  <33.547153, 36.574223, 30.729639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773262, 36.544155, 30.655005>,  <34.150112, 36.494041, 30.530615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773262, 36.544155, 30.655005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245200, -0.375096, 0.893969,
		0.228647, 0.918481, 0.322667,
		-0.942124, 0.125285, 0.310976,
		33.490623, 36.581741, 30.748297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191422, 36.584919, 31.171930>,  <34.150112, 36.494041, 30.530615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191422, 36.584919, 31.171930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793781, 36.541588, 31.173929>,  <33.555195, 36.515591, 31.175129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793781, 36.541588, 31.173929>,  <34.191422, 36.584919, 31.171930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793781, 36.541588, 31.173929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074216, -0.646013, 0.759710,
		-0.079068, 0.755601, 0.650243,
		-0.994103, -0.108328, 0.004999,
		33.495552, 36.509090, 31.175428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912300, 36.731052, 31.873476>,  <34.191422, 36.584919, 31.171930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912300, 36.731052, 31.873476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682217, 36.474926, 31.669857>,  <33.544167, 36.321251, 31.547686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682217, 36.474926, 31.669857>,  <33.912300, 36.731052, 31.873476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682217, 36.474926, 31.669857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164696, -0.700210, 0.694681,
		-0.801257, 0.315748, 0.508223,
		-0.575207, -0.640320, -0.509045,
		33.509655, 36.282829, 31.517143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393181, 36.467354, 32.446365>,  <33.912300, 36.731052, 31.873476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393181, 36.467354, 32.446365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419579, 36.198757, 32.151138>,  <33.435417, 36.037601, 31.974001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419579, 36.198757, 32.151138>,  <33.393181, 36.467354, 32.446365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419579, 36.198757, 32.151138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075424, -0.734210, 0.674720,
		-0.994965, -0.100197, 0.002191,
		0.065996, -0.671488, -0.738070,
		33.439377, 35.997311, 31.929718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144356, 35.873432, 32.758018>,  <33.393181, 36.467354, 32.446365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144356, 35.873432, 32.758018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298000, 35.709209, 32.427227>,  <33.390186, 35.610676, 32.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298000, 35.709209, 32.427227>,  <33.144356, 35.873432, 32.758018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298000, 35.709209, 32.427227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108014, -0.909525, 0.401369,
		-0.916946, -0.064846, -0.393707,
		0.384114, -0.410559, -0.826981,
		33.413235, 35.586040, 32.179131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688461, 35.318779, 32.586105>,  <33.144356, 35.873432, 32.758018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688461, 35.318779, 32.586105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043781, 35.227962, 32.426418>,  <33.256973, 35.173473, 32.330608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043781, 35.227962, 32.426418>,  <32.688461, 35.318779, 32.586105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043781, 35.227962, 32.426418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011912, -0.880352, 0.474171,
		-0.459106, -0.416451, -0.784723,
		0.888301, -0.227042, -0.399215,
		33.310272, 35.159851, 32.306652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648472, 34.546196, 32.616451>,  <32.688461, 35.318779, 32.586105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648472, 34.546196, 32.616451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025715, 34.607037, 32.498188>,  <33.252060, 34.643539, 32.427231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025715, 34.607037, 32.498188>,  <32.648472, 34.546196, 32.616451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025715, 34.607037, 32.498188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263339, -0.884570, 0.384951,
		-0.202976, -0.440908, -0.874300,
		0.943108, 0.152102, -0.295655,
		33.308647, 34.652668, 32.409492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933472, 33.991493, 32.136719>,  <32.648472, 34.546196, 32.616451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933472, 33.991493, 32.136719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240108, 34.143669, 32.343643>,  <33.424091, 34.234974, 32.467796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240108, 34.143669, 32.343643>,  <32.933472, 33.991493, 32.136719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240108, 34.143669, 32.343643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158321, -0.892711, 0.421903,
		0.622317, -0.241524, -0.744572,
		0.766587, 0.380439, 0.517310,
		33.470085, 34.257801, 32.498837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425968, 33.464607, 32.156441>,  <32.933472, 33.991493, 32.136719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425968, 33.464607, 32.156441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610374, 33.720524, 32.402412>,  <33.721020, 33.874073, 32.549995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610374, 33.720524, 32.402412>,  <33.425968, 33.464607, 32.156441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610374, 33.720524, 32.402412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383015, -0.768551, 0.512474,
		0.800476, -0.000734, -0.599364,
		0.461018, 0.639789, 0.614925,
		33.748680, 33.912460, 32.586891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121834, 33.241749, 32.210388>,  <33.425968, 33.464607, 32.156441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121834, 33.241749, 32.210388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011173, 33.446270, 32.535851>,  <33.944778, 33.568981, 32.731129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011173, 33.446270, 32.535851>,  <34.121834, 33.241749, 32.210388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011173, 33.446270, 32.535851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221131, -0.790109, 0.571690,
		0.935182, 0.338084, 0.105521,
		-0.276652, 0.511300, 0.813656,
		33.928177, 33.599659, 32.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631977, 33.597294, 31.739992>,  <34.121834, 33.241749, 32.210388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631977, 33.597294, 31.739992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018475, 33.496952, 31.763445>,  <35.250374, 33.436745, 31.777517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018475, 33.496952, 31.763445>,  <34.631977, 33.597294, 31.739992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018475, 33.496952, 31.763445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229906, 0.736997, -0.635593,
		0.116231, 0.627620, 0.769794,
		0.966247, -0.250856, 0.058632,
		35.308350, 33.421696, 31.781034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012768, 34.289978, 31.817251>,  <34.631977, 33.597294, 31.739992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012768, 34.289978, 31.817251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267170, 34.012596, 31.681837>,  <35.419811, 33.846165, 31.600588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267170, 34.012596, 31.681837>,  <35.012768, 34.289978, 31.817251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267170, 34.012596, 31.681837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296776, 0.624765, -0.722214,
		0.712332, 0.358864, 0.603158,
		0.636009, -0.693459, -0.338538,
		35.457973, 33.804558, 31.580276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522728, 34.678604, 31.671772>,  <35.012768, 34.289978, 31.817251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522728, 34.678604, 31.671772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620049, 34.340763, 31.481003>,  <35.678440, 34.138058, 31.366541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620049, 34.340763, 31.481003>,  <35.522728, 34.678604, 31.671772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620049, 34.340763, 31.481003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345635, 0.534912, -0.770977,
		0.906280, 0.022736, 0.422067,
		0.243298, -0.844602, -0.476921,
		35.693039, 34.087383, 31.337927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242016, 34.721676, 31.495337>,  <35.522728, 34.678604, 31.671772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242016, 34.721676, 31.495337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062145, 34.462383, 31.249546>,  <35.954224, 34.306808, 31.102072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062145, 34.462383, 31.249546>,  <36.242016, 34.721676, 31.495337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062145, 34.462383, 31.249546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353212, 0.502824, -0.788929,
		0.820383, -0.571807, 0.002853,
		-0.449680, -0.648232, -0.614478,
		35.927242, 34.267914, 31.065203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726212, 34.646515, 30.958630>,  <36.242016, 34.721676, 31.495337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726212, 34.646515, 30.958630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386024, 34.503487, 30.804304>,  <36.181911, 34.417671, 30.711708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386024, 34.503487, 30.804304>,  <36.726212, 34.646515, 30.958630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386024, 34.503487, 30.804304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225369, 0.415045, -0.881446,
		0.475310, -0.836589, -0.272396,
		-0.850464, -0.357570, -0.385816,
		36.130886, 34.396217, 30.688559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911869, 34.485435, 30.172577>,  <36.726212, 34.646515, 30.958630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911869, 34.485435, 30.172577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515770, 34.505867, 30.224413>,  <36.278111, 34.518127, 30.255514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515770, 34.505867, 30.224413>,  <36.911869, 34.485435, 30.172577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515770, 34.505867, 30.224413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085105, 0.514639, -0.853172,
		-0.110270, -0.855884, -0.505275,
		-0.990252, 0.051078, 0.129590,
		36.218693, 34.521191, 30.263290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648888, 34.036980, 29.688847>,  <36.911869, 34.485435, 30.172577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648888, 34.036980, 29.688847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401047, 34.324520, 29.814928>,  <36.252342, 34.497044, 29.890577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401047, 34.324520, 29.814928>,  <36.648888, 34.036980, 29.688847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401047, 34.324520, 29.814928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094728, 0.467122, -0.879104,
		-0.779182, -0.514833, -0.357523,
		-0.619598, 0.718849, 0.315204,
		36.215168, 34.540176, 29.909489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102791, 33.949726, 29.207735>,  <36.648888, 34.036980, 29.688847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102791, 33.949726, 29.207735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081524, 34.300800, 29.398245>,  <36.068764, 34.511444, 29.512550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081524, 34.300800, 29.398245>,  <36.102791, 33.949726, 29.207735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081524, 34.300800, 29.398245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005680, 0.477206, -0.878773,
		-0.998569, -0.044017, -0.030357,
		-0.053167, 0.877688, 0.476273,
		36.065575, 34.564106, 29.541126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524734, 34.366554, 28.917643>,  <36.102791, 33.949726, 29.207735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524734, 34.366554, 28.917643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754436, 34.633930, 29.106710>,  <35.892258, 34.794357, 29.220152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754436, 34.633930, 29.106710>,  <35.524734, 34.366554, 28.917643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754436, 34.633930, 29.106710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038842, 0.598955, -0.799840,
		-0.817757, 0.440950, 0.369915,
		0.574252, 0.668443, 0.472672,
		35.926712, 34.834465, 29.248512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243301, 35.028023, 28.776453>,  <35.524734, 34.366554, 28.917643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243301, 35.028023, 28.776453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609749, 35.118355, 28.908953>,  <35.829617, 35.172554, 28.988453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609749, 35.118355, 28.908953>,  <35.243301, 35.028023, 28.776453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609749, 35.118355, 28.908953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074621, 0.715764, -0.694344,
		-0.393896, 0.660821, 0.638875,
		0.916121, 0.225826, 0.331248,
		35.884586, 35.186104, 29.008327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210308, 35.802197, 28.936794>,  <35.243301, 35.028023, 28.776453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210308, 35.802197, 28.936794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583878, 35.674744, 28.871964>,  <35.808018, 35.598274, 28.833065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583878, 35.674744, 28.871964>,  <35.210308, 35.802197, 28.936794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583878, 35.674744, 28.871964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134811, 0.733823, -0.665831,
		0.331089, 0.599983, 0.728286,
		0.933920, -0.318630, -0.162076,
		35.864052, 35.579155, 28.823341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686886, 36.419323, 28.892202>,  <35.210308, 35.802197, 28.936794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686886, 36.419323, 28.892202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895863, 36.128147, 28.714596>,  <36.021248, 35.953442, 28.608032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895863, 36.128147, 28.714596>,  <35.686886, 36.419323, 28.892202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895863, 36.128147, 28.714596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182358, 0.604074, -0.775783,
		0.832945, 0.324334, 0.448341,
		0.522444, -0.727944, -0.444016,
		36.052597, 35.909763, 28.581390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299362, 36.713886, 28.728539>,  <35.686886, 36.419323, 28.892202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299362, 36.713886, 28.728539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319778, 36.407043, 28.472746>,  <36.332027, 36.222939, 28.319271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319778, 36.407043, 28.472746>,  <36.299362, 36.713886, 28.728539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319778, 36.407043, 28.472746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006710, 0.640565, -0.767875,
		0.998674, 0.034899, 0.037839,
		0.051036, -0.767111, -0.639482,
		36.335091, 36.176910, 28.280901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739845, 37.016014, 28.131163>,  <36.299362, 36.713886, 28.728539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739845, 37.016014, 28.131163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560230, 36.689651, 27.985470>,  <36.452461, 36.493835, 27.898054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560230, 36.689651, 27.985470>,  <36.739845, 37.016014, 28.131163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560230, 36.689651, 27.985470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027565, 0.394794, -0.918356,
		0.893090, -0.422412, -0.154785,
		-0.449033, -0.815908, -0.364231,
		36.425522, 36.444878, 27.876200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908672, 37.051952, 27.408424>,  <36.739845, 37.016014, 28.131163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908672, 37.051952, 27.408424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591877, 36.808048, 27.420750>,  <36.401798, 36.661705, 27.428144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591877, 36.808048, 27.420750>,  <36.908672, 37.051952, 27.408424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591877, 36.808048, 27.420750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189856, 0.198001, -0.961639,
		0.580268, -0.767456, -0.272581,
		-0.791987, -0.609760, 0.030813,
		36.354282, 36.625122, 27.429993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935844, 36.782013, 26.743441>,  <36.908672, 37.051952, 27.408424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935844, 36.782013, 26.743441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556252, 36.762920, 26.868118>,  <36.328495, 36.751465, 26.942924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556252, 36.762920, 26.868118>,  <36.935844, 36.782013, 26.743441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556252, 36.762920, 26.868118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312132, 0.282599, -0.907035,
		-0.044790, -0.958050, -0.283080,
		-0.948982, -0.047732, 0.311695,
		36.271557, 36.748600, 26.961626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582909, 36.454784, 26.255894>,  <36.935844, 36.782013, 26.743441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582909, 36.454784, 26.255894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310478, 36.675919, 26.447939>,  <36.147018, 36.808598, 26.563166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310478, 36.675919, 26.447939>,  <36.582909, 36.454784, 26.255894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310478, 36.675919, 26.447939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507071, 0.116913, -0.853938,
		-0.528217, -0.825049, 0.200699,
		-0.681076, 0.552833, 0.480114,
		36.106155, 36.841770, 26.591972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990303, 36.302750, 25.906130>,  <36.582909, 36.454784, 26.255894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990303, 36.302750, 25.906130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884766, 36.617283, 26.129583>,  <35.821442, 36.806004, 26.263655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884766, 36.617283, 26.129583>,  <35.990303, 36.302750, 25.906130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884766, 36.617283, 26.129583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630160, 0.297952, -0.717023,
		-0.730263, -0.541212, 0.416901,
		-0.263845, 0.786330, 0.558633,
		35.805611, 36.853180, 26.297173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242844, 36.267311, 26.006615>,  <35.990303, 36.302750, 25.906130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242844, 36.267311, 26.006615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354664, 36.647396, 26.061670>,  <35.421757, 36.875446, 26.094704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354664, 36.647396, 26.061670>,  <35.242844, 36.267311, 26.006615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354664, 36.647396, 26.061670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744111, 0.305014, -0.594361,
		-0.606752, 0.063736, 0.792332,
		0.279554, 0.950212, 0.137641,
		35.438530, 36.932461, 26.102962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598976, 36.732052, 26.183319>,  <35.242844, 36.267311, 26.006615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598976, 36.732052, 26.183319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893562, 36.979713, 26.074314>,  <35.070312, 37.128311, 26.008911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893562, 36.979713, 26.074314>,  <34.598976, 36.732052, 26.183319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893562, 36.979713, 26.074314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659021, 0.565752, -0.495596,
		-0.152677, 0.544581, 0.824694,
		0.736465, 0.619157, -0.272513,
		35.114502, 37.165459, 25.992559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356071, 37.396004, 26.174368>,  <34.598976, 36.732052, 26.183319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356071, 37.396004, 26.174368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677856, 37.461922, 25.946093>,  <34.870926, 37.501472, 25.809128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677856, 37.461922, 25.946093>,  <34.356071, 37.396004, 26.174368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677856, 37.461922, 25.946093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524574, 0.647843, -0.552379,
		0.278684, 0.743735, 0.607614,
		0.804461, 0.164799, -0.570687,
		34.919193, 37.511360, 25.774887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382595, 38.177464, 26.038704>,  <34.356071, 37.396004, 26.174368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382595, 38.177464, 26.038704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574715, 37.987293, 25.743874>,  <34.689987, 37.873192, 25.566977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574715, 37.987293, 25.743874>,  <34.382595, 38.177464, 26.038704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574715, 37.987293, 25.743874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463988, 0.575417, -0.673507,
		0.744329, 0.665479, 0.055779,
		0.480301, -0.475430, -0.737074,
		34.718803, 37.844666, 25.522751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630909, 38.620586, 25.561789>,  <34.382595, 38.177464, 26.038704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630909, 38.620586, 25.561789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602520, 38.284348, 25.346992>,  <34.585487, 38.082603, 25.218115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602520, 38.284348, 25.346992>,  <34.630909, 38.620586, 25.561789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602520, 38.284348, 25.346992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387526, 0.519293, -0.761681,
		0.919123, 0.154041, -0.362608,
		-0.070970, -0.840598, -0.536989,
		34.581230, 38.032169, 25.185896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733135, 38.878868, 24.955608>,  <34.630909, 38.620586, 25.561789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733135, 38.878868, 24.955608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594250, 38.513763, 24.869539>,  <34.510918, 38.294701, 24.817898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594250, 38.513763, 24.869539>,  <34.733135, 38.878868, 24.955608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594250, 38.513763, 24.869539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473365, 0.368662, -0.800009,
		0.809548, -0.175919, -0.560076,
		-0.347215, -0.912765, -0.215175,
		34.490086, 38.239933, 24.804987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858521, 38.835785, 24.253036>,  <34.733135, 38.878868, 24.955608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858521, 38.835785, 24.253036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588459, 38.553688, 24.339575>,  <34.426422, 38.384430, 24.391499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588459, 38.553688, 24.339575>,  <34.858521, 38.835785, 24.253036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588459, 38.553688, 24.339575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488870, 0.208133, -0.847164,
		0.552424, -0.677731, -0.485292,
		-0.675154, -0.705239, 0.216345,
		34.385914, 38.342117, 24.404478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002937, 38.364414, 23.804489>,  <34.858521, 38.835785, 24.253036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002937, 38.364414, 23.804489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622757, 38.302795, 23.912498>,  <34.394650, 38.265823, 23.977304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622757, 38.302795, 23.912498>,  <35.002937, 38.364414, 23.804489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622757, 38.302795, 23.912498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294664, 0.169607, -0.940429,
		0.099066, -0.973399, -0.206594,
		-0.950452, -0.154040, 0.270023,
		34.337620, 38.256580, 23.993505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715015, 37.907928, 23.373583>,  <35.002937, 38.364414, 23.804489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715015, 37.907928, 23.373583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384026, 38.079460, 23.518578>,  <34.185432, 38.182377, 23.605574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384026, 38.079460, 23.518578>,  <34.715015, 37.907928, 23.373583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384026, 38.079460, 23.518578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339903, 0.131301, -0.931250,
		-0.446940, -0.893794, 0.037112,
		-0.827473, 0.428827, 0.362486,
		34.135784, 38.208107, 23.627323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183128, 37.558086, 23.055080>,  <34.715015, 37.907928, 23.373583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183128, 37.558086, 23.055080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021336, 37.905674, 23.169121>,  <33.924259, 38.114227, 23.237545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021336, 37.905674, 23.169121>,  <34.183128, 37.558086, 23.055080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021336, 37.905674, 23.169121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389303, 0.118488, -0.913457,
		-0.827548, -0.480470, 0.290366,
		-0.404484, 0.868970, 0.285103,
		33.899990, 38.166367, 23.254652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519180, 37.536400, 22.790159>,  <34.183128, 37.558086, 23.055080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519180, 37.536400, 22.790159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611893, 37.918762, 22.862291>,  <33.667522, 38.148178, 22.905571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611893, 37.918762, 22.862291>,  <33.519180, 37.536400, 22.790159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611893, 37.918762, 22.862291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150077, 0.218297, -0.964273,
		-0.961121, 0.196439, 0.194057,
		0.231783, 0.955907, 0.180329,
		33.681427, 38.205536, 22.916389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992233, 37.839329, 22.429657>,  <33.519180, 37.536400, 22.790159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992233, 37.839329, 22.429657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252159, 38.136333, 22.494665>,  <33.408115, 38.314537, 22.533670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252159, 38.136333, 22.494665>,  <32.992233, 37.839329, 22.429657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252159, 38.136333, 22.494665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149978, 0.334867, -0.930253,
		-0.745149, 0.580118, 0.328962,
		0.649815, 0.742514, 0.162521,
		33.447105, 38.359089, 22.543421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614475, 38.330315, 22.149582>,  <32.992233, 37.839329, 22.429657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614475, 38.330315, 22.149582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985741, 38.475254, 22.183571>,  <33.208500, 38.562218, 22.203964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985741, 38.475254, 22.183571>,  <32.614475, 38.330315, 22.149582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985741, 38.475254, 22.183571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117710, 0.502392, -0.856590,
		-0.353070, 0.785053, 0.508953,
		0.928162, 0.362346, 0.084971,
		33.264191, 38.583958, 22.209063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495064, 38.979740, 21.955845>,  <32.614475, 38.330315, 22.149582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495064, 38.979740, 21.955845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876904, 38.874390, 21.900177>,  <33.106007, 38.811180, 21.866777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876904, 38.874390, 21.900177>,  <32.495064, 38.979740, 21.955845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876904, 38.874390, 21.900177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063205, 0.277469, -0.958653,
		0.291101, 0.923929, 0.248226,
		0.954602, -0.263376, -0.139168,
		33.163284, 38.795376, 21.858427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757278, 39.490036, 21.522963>,  <32.495064, 38.979740, 21.955845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757278, 39.490036, 21.522963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036316, 39.204849, 21.494539>,  <33.203739, 39.033737, 21.477486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036316, 39.204849, 21.494539>,  <32.757278, 39.490036, 21.522963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036316, 39.204849, 21.494539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015177, 0.113853, -0.993382,
		0.716336, 0.691895, 0.090244,
		0.697590, -0.712965, -0.071057,
		33.245594, 38.990959, 21.473223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498562, 39.802402, 21.190512>,  <32.757278, 39.490036, 21.522963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498562, 39.802402, 21.190512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445774, 39.410896, 21.127762>,  <33.414101, 39.175995, 21.090113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445774, 39.410896, 21.127762>,  <33.498562, 39.802402, 21.190512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445774, 39.410896, 21.127762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169608, 0.133627, -0.976410,
		0.976635, -0.155467, 0.148370,
		-0.131974, -0.978761, -0.156873,
		33.406181, 39.117268, 21.080700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995602, 39.580185, 20.627813>,  <33.498562, 39.802402, 21.190512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995602, 39.580185, 20.627813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740841, 39.272270, 20.644690>,  <33.587986, 39.087521, 20.654816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740841, 39.272270, 20.644690>,  <33.995602, 39.580185, 20.627813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740841, 39.272270, 20.644690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048663, -0.094758, -0.994310,
		0.769408, -0.631225, 0.097812,
		-0.636901, -0.769790, 0.042190,
		33.549770, 39.041332, 20.657347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304852, 39.060848, 20.229548>,  <33.995602, 39.580185, 20.627813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304852, 39.060848, 20.229548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910473, 38.994888, 20.240265>,  <33.673847, 38.955311, 20.246695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910473, 38.994888, 20.240265>,  <34.304852, 39.060848, 20.229548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910473, 38.994888, 20.240265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010675, -0.222236, -0.974934,
		0.166724, -0.960946, 0.220873,
		-0.985946, -0.164902, 0.026794,
		33.614689, 38.945419, 20.248302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225899, 38.399475, 19.830891>,  <34.304852, 39.060848, 20.229548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225899, 38.399475, 19.830891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872730, 38.582985, 19.790937>,  <33.660831, 38.693092, 19.766966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872730, 38.582985, 19.790937>,  <34.225899, 38.399475, 19.830891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872730, 38.582985, 19.790937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128232, 0.030974, -0.991261,
		-0.451676, -0.888011, -0.086177,
		-0.882919, 0.458779, -0.099881,
		33.607853, 38.720619, 19.760973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853664, 38.080898, 19.309330>,  <34.225899, 38.399475, 19.830891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853664, 38.080898, 19.309330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704197, 38.451759, 19.320395>,  <33.614517, 38.674274, 19.327034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704197, 38.451759, 19.320395>,  <33.853664, 38.080898, 19.309330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704197, 38.451759, 19.320395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035753, 0.044198, -0.998383,
		-0.926872, -0.372077, -0.049664,
		-0.373670, 0.927149, 0.027663,
		33.592094, 38.729904, 19.328693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196037, 37.946140, 18.912909>,  <33.853664, 38.080898, 19.309330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196037, 37.946140, 18.912909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304565, 37.643494, 18.674946>,  <33.369682, 37.461906, 18.532169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304565, 37.643494, 18.674946>,  <33.196037, 37.946140, 18.912909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304565, 37.643494, 18.674946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453814, -0.444508, 0.772312,
		-0.848786, -0.479520, 0.222760,
		0.271320, -0.756619, -0.594906,
		33.385963, 37.416508, 18.496473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916492, 37.287350, 19.219187>,  <33.196037, 37.946140, 18.912909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916492, 37.287350, 19.219187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225765, 37.203033, 18.979937>,  <33.411331, 37.152443, 18.836386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225765, 37.203033, 18.979937>,  <32.916492, 37.287350, 19.219187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225765, 37.203033, 18.979937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466786, -0.449288, 0.761742,
		-0.429287, -0.868167, -0.248996,
		0.773190, -0.210778, -0.598122,
		33.457722, 37.139797, 18.800499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086391, 36.632107, 19.378569>,  <32.916492, 37.287350, 19.219187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086391, 36.632107, 19.378569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418304, 36.754402, 19.191813>,  <33.617451, 36.827782, 19.079760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418304, 36.754402, 19.191813>,  <33.086391, 36.632107, 19.378569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418304, 36.754402, 19.191813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558001, -0.469346, 0.684360,
		-0.009895, -0.828394, -0.560059,
		0.829781, 0.305742, -0.466889,
		33.667240, 36.846127, 19.051746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494934, 35.977821, 19.267139>,  <33.086391, 36.632107, 19.378569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494934, 35.977821, 19.267139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726196, 36.303417, 19.244688>,  <33.864956, 36.498775, 19.231216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726196, 36.303417, 19.244688>,  <33.494934, 35.977821, 19.267139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726196, 36.303417, 19.244688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708200, -0.466473, 0.529958,
		0.405199, -0.346150, -0.846164,
		0.578157, 0.813992, -0.056129,
		33.899643, 36.547615, 19.227850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166389, 35.663082, 19.322287>,  <33.494934, 35.977821, 19.267139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166389, 35.663082, 19.322287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194572, 36.055195, 19.396135>,  <34.211483, 36.290462, 19.440445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194572, 36.055195, 19.396135>,  <34.166389, 35.663082, 19.322287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194572, 36.055195, 19.396135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654697, -0.185081, 0.732883,
		0.752601, 0.069236, -0.654827,
		0.070455, 0.980281, 0.184621,
		34.215710, 36.349277, 19.451521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986755, 35.786442, 19.388182>,  <34.166389, 35.663082, 19.322287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986755, 35.786442, 19.388182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782707, 36.084949, 19.559231>,  <34.660278, 36.264053, 19.661861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782707, 36.084949, 19.559231>,  <34.986755, 35.786442, 19.388182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782707, 36.084949, 19.559231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651100, 0.010193, 0.758923,
		0.561999, 0.665570, -0.491094,
		-0.510123, 0.746266, 0.427624,
		34.629669, 36.308830, 19.687517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503170, 36.206623, 19.495731>,  <34.986755, 35.786442, 19.388182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503170, 36.206623, 19.495731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205677, 36.310246, 19.742226>,  <35.027180, 36.372417, 19.890121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205677, 36.310246, 19.742226>,  <35.503170, 36.206623, 19.495731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205677, 36.310246, 19.742226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607148, -0.123929, 0.784865,
		0.279691, 0.957880, -0.065113,
		-0.743737, 0.259053, 0.616236,
		34.982555, 36.387962, 19.927097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816006, 36.599869, 19.971319>,  <35.503170, 36.206623, 19.495731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816006, 36.599869, 19.971319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475834, 36.496319, 20.154510>,  <35.271729, 36.434189, 20.264425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475834, 36.496319, 20.154510>,  <35.816006, 36.599869, 19.971319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475834, 36.496319, 20.154510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507963, -0.177557, 0.842880,
		-0.136886, 0.949450, 0.282501,
		-0.850433, -0.258878, 0.457980,
		35.220703, 36.418655, 20.291904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755074, 37.114399, 20.538136>,  <35.816006, 36.599869, 19.971319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755074, 37.114399, 20.538136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537647, 36.793705, 20.637541>,  <35.407192, 36.601288, 20.697184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537647, 36.793705, 20.637541>,  <35.755074, 37.114399, 20.538136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537647, 36.793705, 20.637541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474187, -0.049006, 0.879059,
		-0.692595, 0.595666, 0.406811,
		-0.543562, -0.801736, 0.248515,
		35.374580, 36.553185, 20.712095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555023, 37.196377, 21.274372>,  <35.755074, 37.114399, 20.538136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555023, 37.196377, 21.274372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495483, 36.804314, 21.222002>,  <35.459759, 36.569077, 21.190580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495483, 36.804314, 21.222002>,  <35.555023, 37.196377, 21.274372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495483, 36.804314, 21.222002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280087, -0.168769, 0.945023,
		-0.948364, 0.103996, 0.299650,
		-0.148851, -0.980154, -0.130927,
		35.450829, 36.510269, 21.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173382, 36.895664, 21.768993>,  <35.555023, 37.196377, 21.274372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173382, 36.895664, 21.768993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351265, 36.558487, 21.647877>,  <35.457993, 36.356182, 21.575207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351265, 36.558487, 21.647877>,  <35.173382, 36.895664, 21.768993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351265, 36.558487, 21.647877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342762, -0.152165, 0.927017,
		-0.827497, -0.516035, 0.221260,
		0.444705, -0.842943, -0.302793,
		35.484676, 36.305603, 21.557039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957016, 36.417923, 22.286522>,  <35.173382, 36.895664, 21.768993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957016, 36.417923, 22.286522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294018, 36.287289, 22.115156>,  <35.496220, 36.208908, 22.012337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294018, 36.287289, 22.115156>,  <34.957016, 36.417923, 22.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294018, 36.287289, 22.115156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335578, -0.303941, 0.891632,
		-0.421407, -0.894964, -0.146475,
		0.842499, -0.326586, -0.428413,
		35.546768, 36.189312, 21.986633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104351, 35.733047, 22.698490>,  <34.957016, 36.417923, 22.286522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104351, 35.733047, 22.698490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444073, 35.840572, 22.516760>,  <35.647907, 35.905087, 22.407721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444073, 35.840572, 22.516760>,  <35.104351, 35.733047, 22.698490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444073, 35.840572, 22.516760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527216, -0.388255, 0.755845,
		0.026789, -0.881474, -0.471472,
		0.849309, 0.268816, -0.454327,
		35.698864, 35.921219, 22.380463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545746, 35.124237, 22.726620>,  <35.104351, 35.733047, 22.698490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545746, 35.124237, 22.726620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794548, 35.435688, 22.693527>,  <35.943829, 35.622559, 22.673672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794548, 35.435688, 22.693527>,  <35.545746, 35.124237, 22.726620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794548, 35.435688, 22.693527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601082, -0.407102, 0.687727,
		0.501803, -0.477500, -0.721240,
		0.622008, 0.778628, -0.082731,
		35.981152, 35.669277, 22.668709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318707, 34.871506, 22.705587>,  <35.545746, 35.124237, 22.726620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318707, 34.871506, 22.705587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356808, 35.256145, 22.808548>,  <36.379669, 35.486931, 22.870323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356808, 35.256145, 22.808548>,  <36.318707, 34.871506, 22.705587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356808, 35.256145, 22.808548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601936, -0.261586, 0.754484,
		0.792843, 0.083072, -0.603737,
		0.095253, 0.961599, 0.257400,
		36.385384, 35.544624, 22.885769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971718, 34.920967, 22.790398>,  <36.318707, 34.871506, 22.705587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971718, 34.920967, 22.790398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803616, 35.213329, 23.005493>,  <36.702755, 35.388748, 23.134550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803616, 35.213329, 23.005493>,  <36.971718, 34.920967, 22.790398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803616, 35.213329, 23.005493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623394, -0.198062, 0.756407,
		0.659370, 0.653103, -0.372407,
		-0.420252, 0.730908, 0.537737,
		36.677540, 35.432602, 23.166815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579739, 35.333363, 23.157541>,  <36.971718, 34.920967, 22.790398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579739, 35.333363, 23.157541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256130, 35.448879, 23.362318>,  <37.061966, 35.518188, 23.485184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256130, 35.448879, 23.362318>,  <37.579739, 35.333363, 23.157541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256130, 35.448879, 23.362318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465710, -0.216450, 0.858058,
		0.358612, 0.932603, 0.040618,
		-0.809019, 0.288793, 0.511944,
		37.013424, 35.535519, 23.515902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807705, 35.695583, 23.695259>,  <37.579739, 35.333363, 23.157541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807705, 35.695583, 23.695259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443108, 35.617195, 23.839914>,  <37.224350, 35.570164, 23.926708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443108, 35.617195, 23.839914>,  <37.807705, 35.695583, 23.695259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443108, 35.617195, 23.839914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388483, -0.121256, 0.913443,
		-0.135154, 0.973085, 0.186653,
		-0.911490, -0.195967, 0.361639,
		37.169662, 35.558407, 23.948406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831306, 36.061081, 24.357378>,  <37.807705, 35.695583, 23.695259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831306, 36.061081, 24.357378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530296, 35.798485, 24.378246>,  <37.349689, 35.640926, 24.390766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530296, 35.798485, 24.378246>,  <37.831306, 36.061081, 24.357378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530296, 35.798485, 24.378246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230882, -0.188809, 0.954487,
		-0.616762, 0.730322, 0.293656,
		-0.752527, -0.656491, 0.052168,
		37.304539, 35.601536, 24.393896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392151, 36.181652, 25.041988>,  <37.831306, 36.061081, 24.357378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392151, 36.181652, 25.041988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348263, 35.803928, 24.917892>,  <37.321930, 35.577293, 24.843435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348263, 35.803928, 24.917892>,  <37.392151, 36.181652, 25.041988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348263, 35.803928, 24.917892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073469, -0.318977, 0.944910,
		-0.991243, 0.080885, 0.104376,
		-0.109722, -0.944305, -0.310241,
		37.315346, 35.520638, 24.824820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917507, 36.003166, 25.551531>,  <37.392151, 36.181652, 25.041988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917507, 36.003166, 25.551531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062294, 35.673531, 25.377241>,  <37.149166, 35.475750, 25.272667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062294, 35.673531, 25.377241>,  <36.917507, 36.003166, 25.551531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062294, 35.673531, 25.377241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026584, -0.476353, 0.878852,
		-0.931813, -0.306528, -0.194330,
		0.361963, -0.824092, -0.435724,
		37.170883, 35.426304, 25.246525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550983, 35.447063, 25.867430>,  <36.917507, 36.003166, 25.551531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550983, 35.447063, 25.867430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870346, 35.270512, 25.703609>,  <37.061962, 35.164581, 25.605318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870346, 35.270512, 25.703609>,  <36.550983, 35.447063, 25.867430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870346, 35.270512, 25.703609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038961, -0.716628, 0.696367,
		-0.600854, -0.540029, -0.589358,
		0.798408, -0.441377, -0.409549,
		37.109867, 35.138100, 25.580744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409462, 34.731049, 25.689095>,  <36.550983, 35.447063, 25.867430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409462, 34.731049, 25.689095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802383, 34.760670, 25.757898>,  <37.038136, 34.778442, 25.799181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802383, 34.760670, 25.757898>,  <36.409462, 34.731049, 25.689095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802383, 34.760670, 25.757898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055833, -0.760924, 0.646434,
		0.178755, -0.644602, -0.743327,
		0.982308, 0.074051, 0.172009,
		37.097076, 34.782887, 25.809502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582726, 34.087688, 25.892630>,  <36.409462, 34.731049, 25.689095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582726, 34.087688, 25.892630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892937, 34.304123, 26.022724>,  <37.079063, 34.433983, 26.100780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892937, 34.304123, 26.022724>,  <36.582726, 34.087688, 25.892630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892937, 34.304123, 26.022724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098640, -0.612703, 0.784133,
		0.623560, -0.576035, -0.528541,
		0.775528, 0.541089, 0.325238,
		37.125595, 34.466450, 26.120295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131222, 33.616241, 26.068043>,  <36.582726, 34.087688, 25.892630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131222, 33.616241, 26.068043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262169, 33.942703, 26.258501>,  <37.340736, 34.138580, 26.372776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262169, 33.942703, 26.258501>,  <37.131222, 33.616241, 26.068043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262169, 33.942703, 26.258501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290793, -0.566480, 0.771064,
		0.899037, -0.113965, -0.422783,
		0.327372, 0.816157, 0.476146,
		37.360382, 34.187550, 26.401344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648457, 33.365967, 26.386932>,  <37.131222, 33.616241, 26.068043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648457, 33.365967, 26.386932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575417, 33.710606, 26.576376>,  <37.531593, 33.917389, 26.690042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575417, 33.710606, 26.576376>,  <37.648457, 33.365967, 26.386932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575417, 33.710606, 26.576376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302707, -0.409039, 0.860846,
		0.935428, 0.300554, -0.186122,
		-0.182599, 0.861600, 0.473607,
		37.520638, 33.969086, 26.718458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140907, 33.385677, 26.813875>,  <37.648457, 33.365967, 26.386932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140907, 33.385677, 26.813875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848293, 33.615322, 26.960983>,  <37.672726, 33.753109, 27.049248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848293, 33.615322, 26.960983>,  <38.140907, 33.385677, 26.813875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848293, 33.615322, 26.960983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030402, -0.511402, 0.858804,
		0.681131, 0.639422, 0.356652,
		-0.731530, 0.574115, 0.367771,
		37.628834, 33.787556, 27.071314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426388, 33.556229, 27.458218>,  <38.140907, 33.385677, 26.813875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426388, 33.556229, 27.458218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032917, 33.628166, 27.460827>,  <37.796837, 33.671329, 27.462393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032917, 33.628166, 27.460827>,  <38.426388, 33.556229, 27.458218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032917, 33.628166, 27.460827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069549, -0.413332, 0.907921,
		0.165984, 0.892643, 0.419091,
		-0.983673, 0.179848, 0.006524,
		37.737816, 33.682121, 27.462784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256939, 33.880493, 28.119282>,  <38.426388, 33.556229, 27.458218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256939, 33.880493, 28.119282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910957, 33.718491, 28.000744>,  <37.703369, 33.621288, 27.929621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910957, 33.718491, 28.000744>,  <38.256939, 33.880493, 28.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910957, 33.718491, 28.000744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108915, -0.424934, 0.898648,
		-0.489884, 0.809569, 0.323439,
		-0.864957, -0.405006, -0.296342,
		37.651470, 33.596989, 27.911840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690979, 33.994785, 28.673693>,  <38.256939, 33.880493, 28.119282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690979, 33.994785, 28.673693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607853, 33.671249, 28.453659>,  <37.557980, 33.477127, 28.321638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607853, 33.671249, 28.453659>,  <37.690979, 33.994785, 28.673693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607853, 33.671249, 28.453659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120815, -0.536832, 0.834995,
		-0.970679, 0.239981, 0.013840,
		-0.207813, -0.808839, -0.550084,
		37.545509, 33.428596, 28.288633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259708, 33.601299, 29.124506>,  <37.690979, 33.994785, 28.673693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259708, 33.601299, 29.124506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381523, 33.341118, 28.846176>,  <37.454613, 33.185009, 28.679178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381523, 33.341118, 28.846176>,  <37.259708, 33.601299, 29.124506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381523, 33.341118, 28.846176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067882, -0.713844, 0.697006,
		-0.950079, -0.259497, -0.173237,
		0.304535, -0.650452, -0.695824,
		37.472885, 33.145981, 28.637428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700779, 33.020004, 29.104309>,  <37.259708, 33.601299, 29.124506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700779, 33.020004, 29.104309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022114, 32.863438, 28.924782>,  <37.214916, 32.769497, 28.817064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022114, 32.863438, 28.924782>,  <36.700779, 33.020004, 29.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022114, 32.863438, 28.924782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061620, -0.804247, 0.591092,
		-0.592324, -0.447192, -0.670202,
		0.803340, -0.391416, -0.448819,
		37.263115, 32.746014, 28.790136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544403, 32.395607, 29.032913>,  <36.700779, 33.020004, 29.104309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544403, 32.395607, 29.032913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943756, 32.390690, 29.010719>,  <37.183369, 32.387741, 28.997404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943756, 32.390690, 29.010719>,  <36.544403, 32.395607, 29.032913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943756, 32.390690, 29.010719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015883, -0.877055, 0.480127,
		-0.054563, -0.480232, -0.875443,
		0.998384, -0.012293, -0.055482,
		37.243271, 32.387001, 28.994074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717773, 31.755993, 28.808516>,  <36.544403, 32.395607, 29.032913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717773, 31.755993, 28.808516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057068, 31.887396, 28.974688>,  <37.260643, 31.966238, 29.074390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057068, 31.887396, 28.974688>,  <36.717773, 31.755993, 28.808516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057068, 31.887396, 28.974688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130063, -0.889575, 0.437882,
		0.513402, -0.317395, -0.797295,
		0.848235, 0.328508, 0.415428,
		37.311539, 31.985949, 29.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154419, 31.200964, 28.860731>,  <36.717773, 31.755993, 28.808516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154419, 31.200964, 28.860731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321930, 31.459316, 29.116064>,  <37.422436, 31.614326, 29.269264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321930, 31.459316, 29.116064>,  <37.154419, 31.200964, 28.860731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321930, 31.459316, 29.116064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077416, -0.725773, 0.683565,
		0.904783, -0.236844, -0.353938,
		0.418777, 0.645879, 0.638331,
		37.447563, 31.653080, 29.307564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746868, 30.958366, 29.111917>,  <37.154419, 31.200964, 28.860731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746868, 30.958366, 29.111917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642006, 31.219135, 29.396528>,  <37.579090, 31.375597, 29.567295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642006, 31.219135, 29.396528>,  <37.746868, 30.958366, 29.111917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642006, 31.219135, 29.396528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042146, -0.728876, 0.683347,
		0.964105, 0.209130, 0.163602,
		-0.262154, 0.651923, 0.711528,
		37.563358, 31.414713, 29.609987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221859, 30.827322, 29.735861>,  <37.746868, 30.958366, 29.111917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221859, 30.827322, 29.735861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908623, 31.033945, 29.874388>,  <37.720680, 31.157919, 29.957504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908623, 31.033945, 29.874388>,  <38.221859, 30.827322, 29.735861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908623, 31.033945, 29.874388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026585, -0.584158, 0.811204,
		0.621336, 0.626042, 0.471182,
		-0.783093, 0.516557, 0.346315,
		37.673695, 31.188911, 29.978283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432053, 31.169439, 30.401646>,  <38.221859, 30.827322, 29.735861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432053, 31.169439, 30.401646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034996, 31.128561, 30.375687>,  <37.796761, 31.104034, 30.360111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034996, 31.128561, 30.375687>,  <38.432053, 31.169439, 30.401646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034996, 31.128561, 30.375687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019785, -0.391917, 0.919788,
		-0.119431, 0.914307, 0.387013,
		-0.992645, -0.102194, -0.064897,
		37.737202, 31.097902, 30.356218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336422, 31.145069, 31.051214>,  <38.432053, 31.169439, 30.401646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336422, 31.145069, 31.051214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973843, 31.027128, 30.930275>,  <37.756294, 30.956364, 30.857712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973843, 31.027128, 30.930275>,  <38.336422, 31.145069, 31.051214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973843, 31.027128, 30.930275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075841, -0.590637, 0.803365,
		-0.415450, 0.751140, 0.513021,
		-0.906449, -0.294850, -0.302348,
		37.701908, 30.938673, 30.839571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820587, 31.135492, 31.634426>,  <38.336422, 31.145069, 31.051214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820587, 31.135492, 31.634426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673618, 30.858774, 31.385775>,  <37.585438, 30.692743, 31.236584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673618, 30.858774, 31.385775>,  <37.820587, 31.135492, 31.634426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673618, 30.858774, 31.385775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271957, -0.559250, 0.783121,
		-0.889403, 0.456795, 0.017344,
		-0.367425, -0.691793, -0.621627,
		37.563389, 30.651236, 31.199286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037342, 31.900848, 31.665804>,  <37.820587, 31.135492, 31.634426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037342, 31.900848, 31.665804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751911, 32.129749, 31.827465>,  <37.580654, 32.267090, 31.924461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751911, 32.129749, 31.827465>,  <38.037342, 31.900848, 31.665804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751911, 32.129749, 31.827465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054642, -0.620587, 0.782232,
		0.698445, 0.536097, 0.474104,
		-0.713574, 0.572252, 0.404152,
		37.537838, 32.301426, 31.948711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046482, 31.959732, 32.479046>,  <38.037342, 31.900848, 31.665804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046482, 31.959732, 32.479046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670689, 31.992371, 32.345955>,  <37.445213, 32.011951, 32.266102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670689, 31.992371, 32.345955>,  <38.046482, 31.959732, 32.479046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670689, 31.992371, 32.345955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284574, -0.726622, 0.625330,
		-0.190744, 0.682175, 0.705871,
		-0.939486, 0.081594, -0.332728,
		37.388844, 32.016850, 32.246136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704552, 32.043610, 33.060089>,  <38.046482, 31.959732, 32.479046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704552, 32.043610, 33.060089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526321, 31.880417, 32.741337>,  <37.419384, 31.782501, 32.550087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526321, 31.880417, 32.741337>,  <37.704552, 32.043610, 33.060089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526321, 31.880417, 32.741337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054166, -0.900776, 0.430893,
		-0.893606, 0.148831, 0.423460,
		-0.445573, -0.407985, -0.796877,
		37.392651, 31.758020, 32.502274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901791, 31.795021, 33.020672>,  <37.704552, 32.043610, 33.060089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901791, 31.795021, 33.020672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186924, 31.584684, 32.835041>,  <37.358002, 31.458483, 32.723663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186924, 31.584684, 32.835041>,  <36.901791, 31.795021, 33.020672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186924, 31.584684, 32.835041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160739, -0.766577, 0.621709,
		-0.682668, -0.368579, -0.630962,
		0.712830, -0.525841, -0.464073,
		37.400772, 31.426931, 32.695820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692837, 31.048401, 32.640697>,  <36.901791, 31.795021, 33.020672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692837, 31.048401, 32.640697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065639, 31.051327, 32.785648>,  <37.289322, 31.053082, 32.872620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065639, 31.051327, 32.785648>,  <36.692837, 31.048401, 32.640697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065639, 31.051327, 32.785648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217300, -0.788912, 0.574803,
		0.290089, -0.614462, -0.733679,
		0.932003, 0.007315, 0.362377,
		37.345242, 31.053522, 32.894360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610935, 30.606722, 33.191086>,  <36.692837, 31.048401, 32.640697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610935, 30.606722, 33.191086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009987, 30.634052, 33.187847>,  <37.249416, 30.650452, 33.185902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009987, 30.634052, 33.187847>,  <36.610935, 30.606722, 33.191086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009987, 30.634052, 33.187847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057186, -0.757923, 0.649833,
		0.038262, -0.648756, -0.760035,
		0.997630, 0.068328, -0.008100,
		37.309277, 30.654551, 33.185417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810398, 29.999620, 33.185665>,  <36.610935, 30.606722, 33.191086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810398, 29.999620, 33.185665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126854, 30.156395, 33.373486>,  <37.316727, 30.250460, 33.486179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126854, 30.156395, 33.373486>,  <36.810398, 29.999620, 33.185665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126854, 30.156395, 33.373486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011467, -0.777075, 0.629303,
		0.611527, -0.492482, -0.619270,
		0.791140, 0.391937, 0.469555,
		37.364197, 30.273975, 33.514351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324306, 29.556002, 33.077705>,  <36.810398, 29.999620, 33.185665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324306, 29.556002, 33.077705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340252, 29.758066, 33.422546>,  <37.349819, 29.879305, 33.629452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340252, 29.758066, 33.422546>,  <37.324306, 29.556002, 33.077705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340252, 29.758066, 33.422546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104463, -0.860168, 0.499197,
		0.993729, 0.070157, -0.087061,
		0.039865, 0.505162, 0.862104,
		37.352211, 29.909615, 33.681179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872066, 29.478645, 33.399456>,  <37.324306, 29.556002, 33.077705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872066, 29.478645, 33.399456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645615, 29.570002, 33.716274>,  <37.509743, 29.624815, 33.906364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645615, 29.570002, 33.716274>,  <37.872066, 29.478645, 33.399456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645615, 29.570002, 33.716274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357075, -0.798079, 0.485354,
		0.742965, 0.557592, 0.370262,
		-0.566127, 0.228390, 0.792047,
		37.475777, 29.638519, 33.953888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319477, 29.463709, 34.018383>,  <37.872066, 29.478645, 33.399456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319477, 29.463709, 34.018383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941051, 29.344353, 34.068851>,  <37.713997, 29.272739, 34.099133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941051, 29.344353, 34.068851>,  <38.319477, 29.463709, 34.018383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941051, 29.344353, 34.068851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312106, -0.735023, 0.601940,
		-0.086870, 0.608856, 0.788510,
		-0.946067, -0.298389, 0.126176,
		37.657230, 29.254835, 34.106705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094524, 29.365871, 34.599541>,  <38.319477, 29.463709, 34.018383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094524, 29.365871, 34.599541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901848, 29.096495, 34.375237>,  <37.786243, 28.934868, 34.240654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901848, 29.096495, 34.375237>,  <38.094524, 29.365871, 34.599541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901848, 29.096495, 34.375237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322814, -0.731244, 0.600894,
		-0.814718, 0.108426, 0.569630,
		-0.481691, -0.673444, -0.560756,
		37.757339, 28.894461, 34.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633934, 28.991989, 35.087185>,  <38.094524, 29.365871, 34.599541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633934, 28.991989, 35.087185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740654, 28.761267, 34.778351>,  <37.804688, 28.622833, 34.593052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740654, 28.761267, 34.778351>,  <37.633934, 28.991989, 35.087185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740654, 28.761267, 34.778351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050460, -0.808383, 0.586490,
		-0.962429, -0.117518, -0.244785,
		0.266803, -0.576807, -0.772081,
		37.820694, 28.588224, 34.546726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589462, 29.793694, 35.118851>,  <37.633934, 28.991989, 35.087185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589462, 29.793694, 35.118851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335670, 30.057629, 34.957832>,  <37.183395, 30.215990, 34.861221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335670, 30.057629, 34.957832>,  <37.589462, 29.793694, 35.118851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335670, 30.057629, 34.957832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737769, -0.672307, 0.060832,
		-0.230496, 0.335583, 0.913376,
		-0.634483, 0.659839, -0.402547,
		37.145325, 30.255581, 34.837067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975811, 29.978767, 35.487255>,  <37.589462, 29.793694, 35.118851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975811, 29.978767, 35.487255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840008, 30.031618, 35.114742>,  <36.758526, 30.063328, 34.891235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840008, 30.031618, 35.114742>,  <36.975811, 29.978767, 35.487255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840008, 30.031618, 35.114742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772072, -0.604662, 0.195677,
		-0.537255, 0.785447, 0.307295,
		-0.339503, 0.132125, -0.931279,
		36.738155, 30.071257, 34.835358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589607, 29.975735, 36.142799>,  <36.975811, 29.978767, 35.487255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589607, 29.975735, 36.142799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470074, 29.638618, 36.321865>,  <36.398354, 29.436348, 36.429306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470074, 29.638618, 36.321865>,  <36.589607, 29.975735, 36.142799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470074, 29.638618, 36.321865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860998, 0.440416, 0.254394,
		-0.411559, -0.309415, -0.857252,
		-0.298834, -0.842791, 0.447663,
		36.380424, 29.385780, 36.456165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968121, 29.840656, 35.835014>,  <36.589607, 29.975735, 36.142799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968121, 29.840656, 35.835014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027447, 29.749542, 36.219955>,  <36.063042, 29.694874, 36.450920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027447, 29.749542, 36.219955>,  <35.968121, 29.840656, 35.835014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027447, 29.749542, 36.219955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821303, 0.513687, 0.248166,
		-0.550874, -0.827188, -0.110890,
		0.148317, -0.227783, 0.962349,
		36.071941, 29.681208, 36.508659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354050, 29.615017, 36.175732>,  <35.968121, 29.840656, 35.835014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354050, 29.615017, 36.175732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635834, 29.805294, 36.386425>,  <35.804905, 29.919460, 36.512840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635834, 29.805294, 36.386425>,  <35.354050, 29.615017, 36.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635834, 29.805294, 36.386425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668413, 0.694214, 0.267002,
		-0.238655, -0.540169, 0.807007,
		0.704463, 0.475693, 0.526734,
		35.847172, 29.948002, 36.544445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026646, 29.785206, 36.720432>,  <35.354050, 29.615017, 36.175732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026646, 29.785206, 36.720432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357883, 30.008839, 36.703957>,  <35.556625, 30.143019, 36.694073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357883, 30.008839, 36.703957>,  <35.026646, 29.785206, 36.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357883, 30.008839, 36.703957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538234, 0.813453, 0.220448,
		0.156752, -0.160383, 0.974529,
		0.828090, 0.559080, -0.041186,
		35.606312, 30.176563, 36.691601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989071, 30.014410, 37.362377>,  <35.026646, 29.785206, 36.720432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989071, 30.014410, 37.362377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137783, 30.225676, 37.057007>,  <35.227009, 30.352434, 36.873783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137783, 30.225676, 37.057007>,  <34.989071, 30.014410, 37.362377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137783, 30.225676, 37.057007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493808, 0.808892, 0.319136,
		0.786086, 0.258337, 0.561544,
		0.371784, 0.528162, -0.763427,
		35.249317, 30.384125, 36.827980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955967, 30.767822, 37.567543>,  <34.989071, 30.014410, 37.362377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955967, 30.767822, 37.567543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049904, 30.835474, 37.184658>,  <35.106266, 30.876064, 36.954929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049904, 30.835474, 37.184658>,  <34.955967, 30.767822, 37.567543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049904, 30.835474, 37.184658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407865, 0.911009, 0.060901,
		0.882325, 0.376109, 0.282921,
		0.234838, 0.169128, -0.957208,
		35.120354, 30.886213, 36.897495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437168, 31.338264, 37.371891>,  <34.955967, 30.767822, 37.567543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437168, 31.338264, 37.371891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192322, 31.285210, 37.060066>,  <35.045414, 31.253376, 36.872971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192322, 31.285210, 37.060066>,  <35.437168, 31.338264, 37.371891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192322, 31.285210, 37.060066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217522, 0.976044, 0.004733,
		0.760259, 0.172469, -0.626307,
		-0.612119, -0.132637, -0.779562,
		35.008686, 31.245419, 36.826199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667442, 31.788179, 36.800293>,  <35.437168, 31.338264, 37.371891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667442, 31.788179, 36.800293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277618, 31.700977, 36.821140>,  <35.043724, 31.648657, 36.833649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277618, 31.700977, 36.821140>,  <35.667442, 31.788179, 36.800293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277618, 31.700977, 36.821140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223977, 0.956169, -0.188614,
		-0.008714, -0.195488, -0.980667,
		-0.974555, -0.218003, 0.052117,
		34.985252, 31.635576, 36.836777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522453, 32.080467, 36.252853>,  <35.667442, 31.788179, 36.800293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522453, 32.080467, 36.252853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183697, 32.053120, 36.463795>,  <34.980442, 32.036709, 36.590359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183697, 32.053120, 36.463795>,  <35.522453, 32.080467, 36.252853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183697, 32.053120, 36.463795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134777, 0.986917, -0.088484,
		-0.514409, -0.146012, -0.845023,
		-0.846888, -0.068373, 0.527358,
		34.929630, 32.032608, 36.622002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050983, 32.552612, 35.830303>,  <35.522453, 32.080467, 36.252853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050983, 32.552612, 35.830303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893379, 32.513260, 36.195835>,  <34.798817, 32.489647, 36.415154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893379, 32.513260, 36.195835>,  <35.050983, 32.552612, 35.830303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893379, 32.513260, 36.195835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193107, 0.980923, 0.022345,
		-0.898592, -0.167662, -0.405490,
		-0.394008, -0.098382, 0.913826,
		34.775177, 32.483746, 36.469982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381378, 32.844971, 35.751274>,  <35.050983, 32.552612, 35.830303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381378, 32.844971, 35.751274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488617, 32.839680, 36.136597>,  <34.552959, 32.836506, 36.367790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488617, 32.839680, 36.136597>,  <34.381378, 32.844971, 35.751274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488617, 32.839680, 36.136597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117152, 0.992038, 0.046228,
		-0.956243, -0.125246, 0.264410,
		0.268094, -0.013229, 0.963302,
		34.569046, 32.835712, 36.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862953, 33.159576, 36.204594>,  <34.381378, 32.844971, 35.751274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862953, 33.159576, 36.204594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239758, 33.191616, 36.334946>,  <34.465839, 33.210838, 36.413155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239758, 33.191616, 36.334946>,  <33.862953, 33.159576, 36.204594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239758, 33.191616, 36.334946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164821, 0.956327, 0.241397,
		-0.292309, -0.281110, 0.914075,
		0.942013, 0.080096, 0.325876,
		34.522362, 33.215645, 36.432709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688831, 33.660156, 35.693329>,  <33.862953, 33.159576, 36.204594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688831, 33.660156, 35.693329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594059, 33.772572, 35.321331>,  <33.537197, 33.840019, 35.098133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594059, 33.772572, 35.321331>,  <33.688831, 33.660156, 35.693329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594059, 33.772572, 35.321331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281959, 0.935937, 0.211002,
		0.929712, -0.212227, -0.300990,
		-0.236927, 0.281038, -0.929991,
		33.522980, 33.856884, 35.042336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292427, 33.911156, 35.398808>,  <33.688831, 33.660156, 35.693329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292427, 33.911156, 35.398808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953609, 34.073238, 35.261215>,  <33.750317, 34.170486, 35.178661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953609, 34.073238, 35.261215>,  <34.292427, 33.911156, 35.398808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953609, 34.073238, 35.261215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338257, 0.910149, 0.239186,
		0.409994, 0.086247, -0.908001,
		-0.847046, 0.405203, -0.343982,
		33.699497, 34.194798, 35.158020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378551, 34.324326, 34.829231>,  <34.292427, 33.911156, 35.398808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378551, 34.324326, 34.829231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096676, 34.428635, 35.093178>,  <33.927551, 34.491219, 35.251545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096676, 34.428635, 35.093178>,  <34.378551, 34.324326, 34.829231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096676, 34.428635, 35.093178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536836, 0.804054, 0.255548,
		-0.463926, 0.534319, -0.706595,
		-0.704684, 0.260769, 0.659863,
		33.885269, 34.506866, 35.291138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022087, 35.018784, 34.797588>,  <34.378551, 34.324326, 34.829231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022087, 35.018784, 34.797588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032646, 34.886982, 35.175102>,  <34.038982, 34.807899, 35.401611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032646, 34.886982, 35.175102>,  <34.022087, 35.018784, 34.797588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032646, 34.886982, 35.175102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611825, 0.751956, 0.245424,
		-0.790553, 0.570953, 0.221448,
		0.026393, -0.329508, 0.943784,
		34.040565, 34.788128, 35.458237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808590, 35.524765, 35.317272>,  <34.022087, 35.018784, 34.797588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808590, 35.524765, 35.317272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094288, 35.277122, 35.447845>,  <34.265709, 35.128536, 35.526192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094288, 35.277122, 35.447845>,  <33.808590, 35.524765, 35.317272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094288, 35.277122, 35.447845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571831, 0.785130, 0.237866,
		-0.403558, 0.016770, 0.914800,
		0.714248, -0.619104, 0.326435,
		34.308563, 35.091393, 35.545776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931992, 35.598358, 36.043507>,  <33.808590, 35.524765, 35.317272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931992, 35.598358, 36.043507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269627, 35.485786, 35.860943>,  <34.472210, 35.418243, 35.751404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269627, 35.485786, 35.860943>,  <33.931992, 35.598358, 36.043507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269627, 35.485786, 35.860943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473017, 0.791679, 0.386650,
		0.252516, -0.542258, 0.801369,
		0.844091, -0.281426, -0.456409,
		34.522854, 35.401360, 35.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425430, 35.500496, 36.528835>,  <33.931992, 35.598358, 36.043507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425430, 35.500496, 36.528835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571999, 35.608517, 36.172676>,  <34.659939, 35.673328, 35.958981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571999, 35.608517, 36.172676>,  <34.425430, 35.500496, 36.528835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571999, 35.608517, 36.172676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448639, 0.787085, 0.423343,
		0.815144, -0.554588, 0.167246,
		0.366418, 0.270053, -0.890399,
		34.681923, 35.689533, 35.905556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074547, 35.669430, 36.658604>,  <34.425430, 35.500496, 36.528835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074547, 35.669430, 36.658604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967285, 35.870716, 36.330002>,  <34.902927, 35.991489, 36.132843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967285, 35.870716, 36.330002>,  <35.074547, 35.669430, 36.658604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967285, 35.870716, 36.330002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361117, 0.843063, 0.398546,
		0.893132, -0.189784, -0.407795,
		-0.268159, 0.503216, -0.821501,
		34.886837, 36.021683, 36.083549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708916, 35.979176, 36.201775>,  <35.074547, 35.669430, 36.658604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708916, 35.979176, 36.201775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368309, 36.188728, 36.210365>,  <35.163944, 36.314461, 36.215519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368309, 36.188728, 36.210365>,  <35.708916, 35.979176, 36.201775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368309, 36.188728, 36.210365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487080, 0.775207, 0.402253,
		0.194084, 0.352988, -0.915276,
		-0.851519, 0.523884, 0.021478,
		35.112854, 36.345894, 36.216808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866085, 36.778278, 36.069466>,  <35.708916, 35.979176, 36.201775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866085, 36.778278, 36.069466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487965, 36.762737, 36.199020>,  <35.261093, 36.753410, 36.276752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487965, 36.762737, 36.199020>,  <35.866085, 36.778278, 36.069466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487965, 36.762737, 36.199020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191360, 0.738043, 0.647050,
		-0.264183, 0.673634, -0.690235,
		-0.945298, -0.038857, 0.323885,
		35.204376, 36.751080, 36.296185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909859, 37.305225, 35.559216>,  <35.866085, 36.778278, 36.069466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909859, 37.305225, 35.559216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562038, 37.485023, 35.477402>,  <35.353348, 37.592903, 35.428314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562038, 37.485023, 35.477402>,  <35.909859, 37.305225, 35.559216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562038, 37.485023, 35.477402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470492, 0.879893, -0.066516,
		0.150068, -0.154070, -0.976597,
		-0.869549, 0.449500, -0.204533,
		35.301174, 37.619873, 35.416042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975708, 37.690548, 36.190437>,  <35.909859, 37.305225, 35.559216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975708, 37.690548, 36.190437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149708, 37.740444, 36.547138>,  <36.254108, 37.770382, 36.761158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149708, 37.740444, 36.547138>,  <35.975708, 37.690548, 36.190437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149708, 37.740444, 36.547138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800994, 0.398792, -0.446512,
		-0.411322, 0.908517, 0.073554,
		0.434997, 0.124744, 0.891749,
		36.280209, 37.777866, 36.814663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323608, 38.359226, 36.213364>,  <35.975708, 37.690548, 36.190437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323608, 38.359226, 36.213364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480736, 38.154751, 36.519142>,  <36.575012, 38.032066, 36.702610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480736, 38.154751, 36.519142>,  <36.323608, 38.359226, 36.213364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480736, 38.154751, 36.519142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914561, 0.130114, -0.382948,
		0.096295, 0.849560, 0.518628,
		0.392818, -0.511193, 0.764445,
		36.598579, 38.001392, 36.748474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837784, 38.747242, 36.668530>,  <36.323608, 38.359226, 36.213364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837784, 38.747242, 36.668530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874321, 38.359024, 36.579357>,  <36.896244, 38.126095, 36.525852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874321, 38.359024, 36.579357>,  <36.837784, 38.747242, 36.668530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874321, 38.359024, 36.579357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952191, 0.150664, -0.265767,
		0.291526, -0.187995, 0.937908,
		0.091346, -0.970545, -0.222929,
		36.901726, 38.067860, 36.512478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489323, 38.486477, 36.809940>,  <36.837784, 38.747242, 36.668530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489323, 38.486477, 36.809940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378319, 38.266472, 36.494862>,  <37.311718, 38.134468, 36.305813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378319, 38.266472, 36.494862>,  <37.489323, 38.486477, 36.809940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378319, 38.266472, 36.494862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916841, 0.093348, -0.388187,
		0.287038, -0.829922, 0.478371,
		-0.277510, -0.550014, -0.787701,
		37.295067, 38.101467, 36.258553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584251, 37.707523, 36.541885>,  <37.489323, 38.486477, 36.809940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584251, 37.707523, 36.541885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461334, 37.327881, 36.569477>,  <37.387585, 37.100094, 36.586033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461334, 37.327881, 36.569477>,  <37.584251, 37.707523, 36.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461334, 37.327881, 36.569477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402271, -0.195255, -0.894457,
		0.862408, -0.247113, 0.441800,
		-0.307295, -0.949110, 0.068983,
		37.369144, 37.043148, 36.590172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077984, 37.184406, 36.724247>,  <37.584251, 37.707523, 36.541885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077984, 37.184406, 36.724247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006264, 36.798752, 36.645966>,  <37.963230, 36.567360, 36.598995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006264, 36.798752, 36.645966>,  <38.077984, 37.184406, 36.724247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006264, 36.798752, 36.645966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598149, -0.051100, 0.799754,
		-0.781069, 0.260458, -0.567533,
		-0.179301, -0.964132, -0.195705,
		37.952473, 36.509514, 36.587254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636364, 37.690815, 36.863602>,  <38.077984, 37.184406, 36.724247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636364, 37.690815, 36.863602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023224, 37.720062, 36.766224>,  <39.255341, 37.737610, 36.707798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023224, 37.720062, 36.766224>,  <38.636364, 37.690815, 36.863602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023224, 37.720062, 36.766224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251815, -0.144956, 0.956858,
		0.034674, -0.986733, -0.158607,
		0.967154, 0.073118, -0.243448,
		39.313370, 37.741997, 36.693188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161160, 37.575993, 37.370167>,  <38.636364, 37.690815, 36.863602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161160, 37.575993, 37.370167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524185, 37.654053, 37.221443>,  <39.742001, 37.700890, 37.132210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524185, 37.654053, 37.221443>,  <39.161160, 37.575993, 37.370167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524185, 37.654053, 37.221443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386908, -0.044519, 0.921043,
		0.163193, -0.979762, -0.115911,
		0.907563, 0.195154, -0.371812,
		39.796455, 37.712601, 37.109901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771870, 37.063423, 37.608715>,  <39.161160, 37.575993, 37.370167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771870, 37.063423, 37.608715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923443, 37.421963, 37.516655>,  <40.014385, 37.637085, 37.461418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923443, 37.421963, 37.516655>,  <39.771870, 37.063423, 37.608715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923443, 37.421963, 37.516655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523513, -0.002547, 0.852014,
		0.763115, -0.443343, -0.470215,
		0.378932, 0.896348, -0.230152,
		40.037121, 37.690868, 37.447609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480457, 37.108696, 37.471302>,  <39.771870, 37.063423, 37.608715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480457, 37.108696, 37.471302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312946, 37.437450, 37.625774>,  <40.212440, 37.634701, 37.718460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312946, 37.437450, 37.625774>,  <40.480457, 37.108696, 37.471302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312946, 37.437450, 37.625774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556654, -0.103664, 0.824251,
		0.717471, 0.560146, -0.414092,
		-0.418774, 0.821882, 0.386184,
		40.187313, 37.684013, 37.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027885, 37.383690, 37.729633>,  <40.480457, 37.108696, 37.471302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027885, 37.383690, 37.729633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336510, 37.331306, 37.480618>,  <41.521683, 37.299877, 37.331207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336510, 37.331306, 37.480618>,  <41.027885, 37.383690, 37.729633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336510, 37.331306, 37.480618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118668, 0.931778, -0.343087,
		0.624995, 0.338586, 0.703378,
		0.771556, -0.130959, -0.622536,
		41.567978, 37.292019, 37.293858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578133, 38.007301, 37.800308>,  <41.027885, 37.383690, 37.729633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578133, 38.007301, 37.800308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549679, 37.841309, 37.437492>,  <41.532608, 37.741711, 37.219803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549679, 37.841309, 37.437492>,  <41.578133, 38.007301, 37.800308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549679, 37.841309, 37.437492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031982, 0.909829, -0.413750,
		0.996954, -0.000423, -0.077992,
		-0.071134, -0.414984, -0.907044,
		41.528339, 37.716812, 37.165379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085999, 38.330544, 37.395966>,  <41.578133, 38.007301, 37.800308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085999, 38.330544, 37.395966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783588, 38.229015, 37.154636>,  <41.602142, 38.168098, 37.009838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783588, 38.229015, 37.154636>,  <42.085999, 38.330544, 37.395966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783588, 38.229015, 37.154636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125612, 0.960882, -0.246834,
		0.642377, -0.110828, -0.758333,
		-0.756025, -0.253816, -0.603327,
		41.556782, 38.152870, 36.973637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139236, 37.722633, 36.845345>,  <42.085999, 38.330544, 37.395966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139236, 37.722633, 36.845345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234783, 38.081509, 36.696751>,  <42.292110, 38.296833, 36.607594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234783, 38.081509, 36.696751>,  <42.139236, 37.722633, 36.845345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234783, 38.081509, 36.696751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526555, -0.441104, -0.726751,
		-0.815894, -0.022009, -0.577783,
		0.238868, 0.897186, -0.371483,
		42.306442, 38.350666, 36.585304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887833, 37.826134, 36.150707>,  <42.139236, 37.722633, 36.845345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887833, 37.826134, 36.150707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217663, 38.036747, 36.233501>,  <42.415562, 38.163116, 36.283176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217663, 38.036747, 36.233501>,  <41.887833, 37.826134, 36.150707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217663, 38.036747, 36.233501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478407, -0.453626, -0.751897,
		-0.302004, 0.719018, -0.625945,
		0.824573, 0.526532, 0.206987,
		42.465034, 38.194706, 36.295597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222549, 38.037830, 35.518158>,  <41.887833, 37.826134, 36.150707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222549, 38.037830, 35.518158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528427, 38.097378, 35.768940>,  <42.711956, 38.133106, 35.919411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528427, 38.097378, 35.768940>,  <42.222549, 38.037830, 35.518158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528427, 38.097378, 35.768940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630616, -0.372963, -0.680604,
		0.132514, 0.915826, -0.379080,
		0.764698, 0.148864, 0.626958,
		42.757835, 38.142036, 35.957027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768562, 38.073040, 35.137077>,  <42.222549, 38.037830, 35.518158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768562, 38.073040, 35.137077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929806, 37.966782, 35.487377>,  <43.026550, 37.903027, 35.697556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929806, 37.966782, 35.487377>,  <42.768562, 38.073040, 35.137077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929806, 37.966782, 35.487377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625617, -0.618424, -0.475558,
		0.667915, 0.739584, -0.083097,
		0.403104, -0.265645, 0.875751,
		43.050735, 37.887089, 35.750103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525440, 38.195255, 35.057991>,  <42.768562, 38.073040, 35.137077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525440, 38.195255, 35.057991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382095, 37.908672, 35.297413>,  <43.296089, 37.736721, 35.441067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382095, 37.908672, 35.297413>,  <43.525440, 38.195255, 35.057991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382095, 37.908672, 35.297413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438667, -0.695174, -0.569477,
		0.824104, 0.058486, 0.563411,
		-0.358363, -0.716458, 0.598552,
		43.274586, 37.693733, 35.476978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129936, 37.785892, 35.461845>,  <43.525440, 38.195255, 35.057991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129936, 37.785892, 35.461845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794556, 37.572659, 35.416557>,  <43.593327, 37.444717, 35.389385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794556, 37.572659, 35.416557>,  <44.129936, 37.785892, 35.461845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794556, 37.572659, 35.416557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528065, -0.743373, -0.410542,
		0.134688, -0.404007, 0.904786,
		-0.838455, -0.533081, -0.113218,
		43.543018, 37.412735, 35.382591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216286, 37.084045, 35.834961>,  <44.129936, 37.785892, 35.461845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216286, 37.084045, 35.834961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.984318, 37.073376, 35.509266>,  <43.845139, 37.066975, 35.313850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.984318, 37.073376, 35.509266>,  <44.216286, 37.084045, 35.834961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984318, 37.073376, 35.509266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491181, -0.808823, -0.323336,
		-0.649950, -0.587447, 0.482153,
		-0.579919, -0.026673, -0.814237,
		43.810341, 37.065372, 35.264996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904182, 36.438423, 35.739212>,  <44.216286, 37.084045, 35.834961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904182, 36.438423, 35.739212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966015, 36.639088, 35.398754>,  <44.003117, 36.759487, 35.194481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966015, 36.639088, 35.398754>,  <43.904182, 36.438423, 35.739212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966015, 36.639088, 35.398754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617194, -0.721744, -0.313300,
		-0.771476, -0.476888, -0.421191,
		0.154584, 0.501660, -0.851141,
		44.012390, 36.789585, 35.143414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786842, 36.129215, 35.103008>,  <43.904182, 36.438423, 35.739212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786842, 36.129215, 35.103008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051666, 36.411995, 35.003487>,  <44.210560, 36.581665, 34.943775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051666, 36.411995, 35.003487>,  <43.786842, 36.129215, 35.103008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051666, 36.411995, 35.003487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656610, -0.707188, -0.262199,
		-0.361311, 0.010226, -0.932389,
		0.662056, 0.706951, -0.248800,
		44.250282, 36.624081, 34.928848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136757, 36.025467, 34.444168>,  <43.786842, 36.129215, 35.103008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136757, 36.025467, 34.444168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373642, 36.260929, 34.664268>,  <44.515774, 36.402206, 34.796329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373642, 36.260929, 34.664268>,  <44.136757, 36.025467, 34.444168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373642, 36.260929, 34.664268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765172, -0.624884, -0.155023,
		0.252588, 0.512842, -0.820483,
		0.592209, 0.588654, 0.550251,
		44.551304, 36.437527, 34.829342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722519, 36.215279, 34.108944>,  <44.136757, 36.025467, 34.444168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722519, 36.215279, 34.108944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833138, 36.219177, 34.493324>,  <44.899509, 36.221516, 34.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833138, 36.219177, 34.493324>,  <44.722519, 36.215279, 34.108944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833138, 36.219177, 34.493324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772250, -0.597406, -0.216185,
		0.571970, 0.801880, -0.172740,
		0.276550, 0.009747, 0.960950,
		44.916103, 36.222103, 34.781609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455219, 36.221249, 34.091198>,  <44.722519, 36.215279, 34.108944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455219, 36.221249, 34.091198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334496, 36.112492, 34.456707>,  <45.262062, 36.047237, 34.676014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334496, 36.112492, 34.456707>,  <45.455219, 36.221249, 34.091198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334496, 36.112492, 34.456707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592555, -0.804348, -0.043612,
		0.746851, 0.528300, 0.403872,
		-0.301814, -0.271888, 0.913776,
		45.243950, 36.030926, 34.730839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009239, 35.938000, 34.340843>,  <45.455219, 36.221249, 34.091198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009239, 35.938000, 34.340843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.733494, 35.734390, 34.547016>,  <45.568047, 35.612225, 34.670719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.733494, 35.734390, 34.547016>,  <46.009239, 35.938000, 34.340843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733494, 35.734390, 34.547016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583052, -0.812131, -0.022224,
		0.429910, 0.285202, 0.856643,
		-0.689368, -0.509022, 0.515431,
		45.526684, 35.581684, 34.701645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586727, 35.539383, 34.129410>,  <46.009239, 35.938000, 34.340843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586727, 35.539383, 34.129410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.796638, 35.219746, 34.012070>,  <46.922585, 35.027962, 33.941666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.796638, 35.219746, 34.012070>,  <46.586727, 35.539383, 34.129410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.796638, 35.219746, 34.012070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437535, -0.042399, 0.898201,
		-0.730188, -0.599705, 0.327383,
		0.524775, -0.799097, -0.293351,
		46.954071, 34.980015, 33.924065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513771, 35.141384, 34.680920>,  <46.586727, 35.539383, 34.129410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513771, 35.141384, 34.680920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840927, 35.068905, 34.462479>,  <47.037220, 35.025417, 34.331413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840927, 35.068905, 34.462479>,  <46.513771, 35.141384, 34.680920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840927, 35.068905, 34.462479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574900, 0.218830, 0.788419,
		-0.023356, -0.958791, 0.283149,
		0.817890, -0.181196, -0.546098,
		47.086296, 35.014545, 34.298649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046944, 34.559475, 34.938400>,  <46.513771, 35.141384, 34.680920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046944, 34.559475, 34.938400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195705, 34.880157, 34.751228>,  <47.284962, 35.072567, 34.638927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195705, 34.880157, 34.751228>,  <47.046944, 34.559475, 34.938400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195705, 34.880157, 34.751228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588976, 0.185825, 0.786496,
		0.717490, -0.568101, -0.403074,
		0.371908, 0.801705, -0.467925,
		47.307278, 35.120670, 34.610851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763832, 34.558304, 34.596191>,  <47.046944, 34.559475, 34.938400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763832, 34.558304, 34.596191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.605030, 34.877396, 34.777744>,  <47.509750, 35.068851, 34.886677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.605030, 34.877396, 34.777744>,  <47.763832, 34.558304, 34.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.605030, 34.877396, 34.777744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669201, -0.086857, 0.737988,
		0.628141, 0.596723, -0.499361,
		-0.397001, 0.797733, 0.453885,
		47.485931, 35.116714, 34.913910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.926891, 33.806919, 23.980890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543203, 33.878323, 24.068554>,  <31.312990, 33.921165, 24.121151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543203, 33.878323, 24.068554>,  <31.926891, 33.806919, 23.980890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543203, 33.878323, 24.068554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165145, -0.275312, 0.947064,
		0.229398, 0.944636, 0.234604,
		-0.959220, 0.178511, 0.219158,
		31.255438, 33.931877, 24.134302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904894, 34.166130, 24.604435>,  <31.926891, 33.806919, 23.980890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904894, 34.166130, 24.604435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.561815, 33.963451, 24.569527>,  <31.355968, 33.841843, 24.548582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.561815, 33.963451, 24.569527>,  <31.904894, 34.166130, 24.604435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561815, 33.963451, 24.569527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140541, -0.394317, 0.908165,
		-0.494575, 0.766664, 0.409415,
		-0.857697, -0.506695, -0.087272,
		31.304506, 33.811443, 24.543344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654390, 34.201519, 25.277372>,  <31.904894, 34.166130, 24.604435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654390, 34.201519, 25.277372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.467609, 33.909416, 25.077900>,  <31.355541, 33.734154, 24.958218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.467609, 33.909416, 25.077900>,  <31.654390, 34.201519, 25.277372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467609, 33.909416, 25.077900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109092, -0.607203, 0.787022,
		-0.877527, 0.313100, 0.363201,
		-0.466954, -0.730255, -0.498680,
		31.327524, 33.690338, 24.928295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191399, 33.955421, 25.826397>,  <31.654390, 34.201519, 25.277372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191399, 33.955421, 25.826397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.199699, 33.661930, 25.554749>,  <31.204679, 33.485836, 25.391760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.199699, 33.661930, 25.554749>,  <31.191399, 33.955421, 25.826397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199699, 33.661930, 25.554749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032131, -0.678428, 0.733964,
		-0.999268, -0.037051, 0.009499,
		0.020750, -0.733732, -0.679122,
		31.205925, 33.441811, 25.351011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755213, 33.503128, 26.008905>,  <31.191399, 33.955421, 25.826397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755213, 33.503128, 26.008905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.030811, 33.284866, 25.818100>,  <31.196171, 33.153908, 25.703617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.030811, 33.284866, 25.818100>,  <30.755213, 33.503128, 26.008905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030811, 33.284866, 25.818100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027756, -0.637818, 0.769687,
		-0.724234, -0.543551, -0.424309,
		0.688996, -0.545656, -0.477016,
		31.237511, 33.121170, 25.674995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660837, 32.817257, 26.257957>,  <30.755213, 33.503128, 26.008905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660837, 32.817257, 26.257957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006449, 32.795578, 26.057751>,  <31.213816, 32.782570, 25.937626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006449, 32.795578, 26.057751>,  <30.660837, 32.817257, 26.257957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006449, 32.795578, 26.057751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241375, -0.827870, 0.506329,
		-0.441806, -0.558295, -0.702221,
		0.864029, -0.054200, -0.500516,
		31.265657, 32.779320, 25.907597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670509, 32.174946, 26.069283>,  <30.660837, 32.817257, 26.257957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670509, 32.174946, 26.069283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.049110, 32.304024, 26.068417>,  <31.276270, 32.381470, 26.067898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.049110, 32.304024, 26.068417>,  <30.670509, 32.174946, 26.069283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049110, 32.304024, 26.068417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277925, -0.811738, 0.513653,
		0.163997, -0.486775, -0.857995,
		0.946500, 0.322696, -0.002165,
		31.333061, 32.400833, 26.067766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161610, 31.521112, 26.067661>,  <30.670509, 32.174946, 26.069283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161610, 31.521112, 26.067661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421862, 31.799608, 26.188942>,  <31.578012, 31.966705, 26.261711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421862, 31.799608, 26.188942>,  <31.161610, 31.521112, 26.067661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421862, 31.799608, 26.188942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440789, -0.671373, 0.595788,
		0.618373, -0.253989, -0.743710,
		0.650631, 0.696238, 0.303203,
		31.617050, 32.008480, 26.279903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735994, 31.169378, 26.305542>,  <31.161610, 31.521112, 26.067661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735994, 31.169378, 26.305542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.795622, 31.524874, 26.478943>,  <31.831398, 31.738171, 26.582983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.795622, 31.524874, 26.478943>,  <31.735994, 31.169378, 26.305542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795622, 31.524874, 26.478943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413535, -0.454253, 0.789078,
		0.898203, 0.061643, -0.435238,
		0.149067, 0.888737, 0.433503,
		31.840342, 31.791494, 26.608994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431946, 31.205385, 26.580738>,  <31.735994, 31.169378, 26.305542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431946, 31.205385, 26.580738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.242531, 31.485449, 26.794481>,  <32.128883, 31.653486, 26.922728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.242531, 31.485449, 26.794481>,  <32.431946, 31.205385, 26.580738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242531, 31.485449, 26.794481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596314, -0.191638, 0.779542,
		0.648207, 0.687787, -0.326767,
		-0.473538, 0.700160, 0.534358,
		32.100468, 31.695498, 26.954788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044914, 31.509243, 26.752138>,  <32.431946, 31.205385, 26.580738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044914, 31.509243, 26.752138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.753658, 31.646152, 26.989677>,  <32.578903, 31.728298, 27.132202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.753658, 31.646152, 26.989677>,  <33.044914, 31.509243, 26.752138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753658, 31.646152, 26.989677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598542, -0.104671, 0.794224,
		0.334001, 0.933752, -0.128650,
		-0.728142, 0.342274, 0.593850,
		32.535217, 31.748835, 27.167833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487507, 32.055389, 27.144806>,  <33.044914, 31.509243, 26.752138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487507, 32.055389, 27.144806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.145447, 31.918791, 27.300806>,  <32.940212, 31.836832, 27.394405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.145447, 31.918791, 27.300806>,  <33.487507, 32.055389, 27.144806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145447, 31.918791, 27.300806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497697, -0.330482, 0.801922,
		-0.144962, 0.879866, 0.452571,
		-0.855151, -0.341492, 0.389999,
		32.888901, 31.816343, 27.417807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441742, 32.439125, 27.817522>,  <33.487507, 32.055389, 27.144806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441742, 32.439125, 27.817522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212605, 32.112019, 27.795193>,  <33.075123, 31.915756, 27.781796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212605, 32.112019, 27.795193>,  <33.441742, 32.439125, 27.817522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212605, 32.112019, 27.795193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489082, -0.395664, 0.777335,
		-0.657763, 0.417987, 0.626606,
		-0.572841, -0.817763, -0.055824,
		33.040752, 31.866690, 27.778446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238831, 32.351521, 28.420668>,  <33.441742, 32.439125, 27.817522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238831, 32.351521, 28.420668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196220, 31.987644, 28.260109>,  <33.170654, 31.769320, 28.163773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196220, 31.987644, 28.260109>,  <33.238831, 32.351521, 28.420668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196220, 31.987644, 28.260109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639829, -0.371725, 0.672636,
		-0.761098, -0.185173, 0.621643,
		-0.106527, -0.909688, -0.401398,
		33.164261, 31.714737, 28.139690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102230, 32.047607, 29.052359>,  <33.238831, 32.351521, 28.420668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102230, 32.047607, 29.052359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204578, 31.751696, 28.803436>,  <33.265987, 31.574148, 28.654083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204578, 31.751696, 28.803436>,  <33.102230, 32.047607, 29.052359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204578, 31.751696, 28.803436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455792, -0.475372, 0.752513,
		-0.852517, -0.476184, 0.215553,
		0.255867, -0.739777, -0.622304,
		33.281338, 31.529762, 28.616745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895332, 31.362108, 29.322041>,  <33.102230, 32.047607, 29.052359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895332, 31.362108, 29.322041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206272, 31.306490, 29.076637>,  <33.392838, 31.273119, 28.929396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206272, 31.306490, 29.076637>,  <32.895332, 31.362108, 29.322041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206272, 31.306490, 29.076637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472944, -0.513884, 0.715714,
		-0.414788, -0.846516, -0.333709,
		0.777351, -0.139044, -0.613508,
		33.439476, 31.264776, 28.892584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151386, 30.705688, 29.552246>,  <32.895332, 31.362108, 29.322041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151386, 30.705688, 29.552246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.428219, 30.857870, 29.306881>,  <33.594318, 30.949179, 29.159662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.428219, 30.857870, 29.306881>,  <33.151386, 30.705688, 29.552246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428219, 30.857870, 29.306881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715163, -0.476555, 0.511310,
		-0.097793, -0.792558, -0.601903,
		0.692083, 0.380456, -0.613412,
		33.635845, 30.972008, 29.122858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596840, 30.197639, 29.553255>,  <33.151386, 30.705688, 29.552246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596840, 30.197639, 29.553255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813946, 30.506662, 29.421457>,  <33.944210, 30.692076, 29.342379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813946, 30.506662, 29.421457>,  <33.596840, 30.197639, 29.553255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813946, 30.506662, 29.421457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805772, -0.368297, 0.463777,
		0.236940, -0.517219, -0.822401,
		0.542762, 0.772555, -0.329496,
		33.976776, 30.738428, 29.322609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244087, 29.954628, 29.313795>,  <33.596840, 30.197639, 29.553255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244087, 29.954628, 29.313795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317688, 30.336288, 29.408236>,  <34.361847, 30.565285, 29.464899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317688, 30.336288, 29.408236>,  <34.244087, 29.954628, 29.313795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317688, 30.336288, 29.408236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798141, -0.285229, 0.530674,
		0.573685, 0.090797, -0.814028,
		0.184001, 0.954149, 0.236100,
		34.372887, 30.622534, 29.479065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915493, 30.038422, 29.234306>,  <34.244087, 29.954628, 29.313795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915493, 30.038422, 29.234306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886906, 30.374060, 29.450016>,  <34.869755, 30.575441, 29.579441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886906, 30.374060, 29.450016>,  <34.915493, 30.038422, 29.234306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886906, 30.374060, 29.450016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836282, -0.244259, 0.490886,
		0.543622, 0.486065, -0.684263,
		-0.071466, 0.839094, 0.539272,
		34.865467, 30.625788, 29.611797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575203, 30.384445, 29.287727>,  <34.915493, 30.038422, 29.234306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575203, 30.384445, 29.287727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371567, 30.531454, 29.599049>,  <35.249386, 30.619659, 29.785841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371567, 30.531454, 29.599049>,  <35.575203, 30.384445, 29.287727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371567, 30.531454, 29.599049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705007, -0.340678, 0.622016,
		0.493756, 0.865370, -0.085672,
		-0.509087, 0.367524, 0.778304,
		35.218842, 30.641712, 29.832541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690834, 29.659185, 28.948177>,  <35.575203, 30.384445, 29.287727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690834, 29.659185, 28.948177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044430, 29.494209, 29.036230>,  <36.256588, 29.395224, 29.089062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044430, 29.494209, 29.036230>,  <35.690834, 29.659185, 28.948177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044430, 29.494209, 29.036230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334152, 0.228091, -0.914504,
		0.326967, 0.881968, 0.339447,
		0.883988, -0.412440, 0.220133,
		36.309628, 29.370478, 29.102270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171062, 30.192842, 28.645462>,  <35.690834, 29.659185, 28.948177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171062, 30.192842, 28.645462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405495, 29.870941, 28.683165>,  <36.546154, 29.677801, 28.705786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405495, 29.870941, 28.683165>,  <36.171062, 30.192842, 28.645462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405495, 29.870941, 28.683165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212265, 0.040230, -0.976384,
		0.781954, 0.592247, 0.194398,
		0.586081, -0.804751, 0.094256,
		36.581318, 29.629517, 28.711441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734890, 30.426836, 28.252750>,  <36.171062, 30.192842, 28.645462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734890, 30.426836, 28.252750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783672, 30.032660, 28.300127>,  <36.812943, 29.796154, 28.328552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783672, 30.032660, 28.300127>,  <36.734890, 30.426836, 28.252750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783672, 30.032660, 28.300127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305618, -0.076249, -0.949096,
		0.944312, 0.151944, 0.291870,
		0.121955, -0.985444, 0.118440,
		36.820259, 29.737026, 28.335659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540836, 30.274137, 28.155088>,  <36.734890, 30.426836, 28.252750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540836, 30.274137, 28.155088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282169, 29.976562, 28.087698>,  <37.126968, 29.798018, 28.047264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282169, 29.976562, 28.087698>,  <37.540836, 30.274137, 28.155088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282169, 29.976562, 28.087698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164625, 0.079551, -0.983143,
		0.744798, -0.663499, 0.071028,
		-0.646664, -0.743936, -0.168478,
		37.088169, 29.753382, 28.037155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932816, 29.875597, 27.706524>,  <37.540836, 30.274137, 28.155088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932816, 29.875597, 27.706524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548527, 29.792519, 27.632910>,  <37.317951, 29.742672, 27.588741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548527, 29.792519, 27.632910>,  <37.932816, 29.875597, 27.706524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548527, 29.792519, 27.632910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185562, 0.012276, -0.982556,
		0.206332, -0.978116, 0.026747,
		-0.960726, -0.207696, -0.184034,
		37.260307, 29.730209, 27.577700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129723, 29.552195, 27.021879>,  <37.932816, 29.875597, 27.706524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129723, 29.552195, 27.021879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740414, 29.633656, 27.064323>,  <37.506828, 29.682531, 27.089790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740414, 29.633656, 27.064323>,  <38.129723, 29.552195, 27.021879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740414, 29.633656, 27.064323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069831, 0.177722, -0.981600,
		-0.218762, -0.962778, -0.158752,
		-0.973276, 0.203651, 0.106111,
		37.448429, 29.694750, 27.096157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787437, 29.292858, 26.508186>,  <38.129723, 29.552195, 27.021879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787437, 29.292858, 26.508186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516830, 29.561020, 26.630093>,  <37.354465, 29.721916, 26.703236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516830, 29.561020, 26.630093>,  <37.787437, 29.292858, 26.508186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516830, 29.561020, 26.630093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403298, 0.008995, -0.915025,
		-0.616178, -0.741942, 0.264287,
		-0.676518, 0.670404, 0.304766,
		37.313877, 29.762142, 26.721523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126743, 29.146767, 26.232239>,  <37.787437, 29.292858, 26.508186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126743, 29.146767, 26.232239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132740, 29.540348, 26.303356>,  <37.136337, 29.776497, 26.346027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132740, 29.540348, 26.303356>,  <37.126743, 29.146767, 26.232239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132740, 29.540348, 26.303356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362149, 0.171085, -0.916285,
		-0.931999, -0.050648, 0.358904,
		0.014995, 0.983954, 0.177793,
		37.137238, 29.835535, 26.356693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679661, 29.386995, 25.784317>,  <37.126743, 29.146767, 26.232239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679661, 29.386995, 25.784317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814213, 29.750530, 25.883003>,  <36.894943, 29.968651, 25.942215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814213, 29.750530, 25.883003>,  <36.679661, 29.386995, 25.784317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814213, 29.750530, 25.883003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480148, 0.390887, -0.785280,
		-0.810128, 0.145690, 0.567861,
		0.336377, 0.908835, 0.246715,
		36.915127, 30.023180, 25.957018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070568, 29.812046, 25.808630>,  <36.679661, 29.386995, 25.784317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070568, 29.812046, 25.808630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390968, 30.044355, 25.750517>,  <36.583206, 30.183741, 25.715649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390968, 30.044355, 25.750517>,  <36.070568, 29.812046, 25.808630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390968, 30.044355, 25.750517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512040, 0.538874, -0.668902,
		-0.310190, 0.610179, 0.729015,
		0.800997, 0.580772, -0.145283,
		36.631268, 30.218586, 25.706932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850021, 30.458191, 26.036419>,  <36.070568, 29.812046, 25.808630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850021, 30.458191, 26.036419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171772, 30.490379, 25.800961>,  <36.364822, 30.509691, 25.659685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171772, 30.490379, 25.800961>,  <35.850021, 30.458191, 26.036419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171772, 30.490379, 25.800961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501696, 0.622717, -0.600437,
		0.318242, 0.778298, 0.541271,
		0.804377, 0.080470, -0.588644,
		36.413086, 30.514521, 25.624367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878708, 31.103937, 26.015572>,  <35.850021, 30.458191, 26.036419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878708, 31.103937, 26.015572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108170, 30.994108, 25.706890>,  <36.245846, 30.928211, 25.521681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108170, 30.994108, 25.706890>,  <35.878708, 31.103937, 26.015572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108170, 30.994108, 25.706890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330107, 0.784743, -0.524602,
		0.749632, 0.555686, 0.359533,
		0.573655, -0.274574, -0.771705,
		36.280266, 30.911736, 25.475378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232994, 31.710945, 25.710207>,  <35.878708, 31.103937, 26.015572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232994, 31.710945, 25.710207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228752, 31.438112, 25.417727>,  <36.226208, 31.274412, 25.242239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228752, 31.438112, 25.417727>,  <36.232994, 31.710945, 25.710207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228752, 31.438112, 25.417727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308551, 0.697791, -0.646440,
		0.951149, 0.218757, -0.217857,
		-0.010605, -0.682081, -0.731200,
		36.225571, 31.233488, 25.198366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439976, 32.088226, 25.118776>,  <36.232994, 31.710945, 25.710207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439976, 32.088226, 25.118776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.246357, 31.765867, 24.982405>,  <36.130188, 31.572453, 24.900581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.246357, 31.765867, 24.982405>,  <36.439976, 32.088226, 25.118776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246357, 31.765867, 24.982405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486133, 0.571617, -0.661006,
		0.727583, -0.154219, -0.668461,
		-0.484043, -0.805897, -0.340928,
		36.101143, 31.524097, 24.880127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334667, 32.212055, 24.382730>,  <36.439976, 32.088226, 25.118776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334667, 32.212055, 24.382730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072487, 31.925417, 24.478123>,  <35.915180, 31.753433, 24.535358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072487, 31.925417, 24.478123>,  <36.334667, 32.212055, 24.382730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072487, 31.925417, 24.478123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732151, 0.525422, -0.433459,
		0.185314, -0.458713, -0.869046,
		-0.655449, -0.716599, 0.238479,
		35.875851, 31.710438, 24.549667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040264, 31.970564, 23.707460>,  <36.334667, 32.212055, 24.382730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040264, 31.970564, 23.707460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786278, 31.908983, 24.010277>,  <35.633884, 31.872034, 24.191967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786278, 31.908983, 24.010277>,  <36.040264, 31.970564, 23.707460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786278, 31.908983, 24.010277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734695, 0.423279, -0.530149,
		-0.238822, -0.892824, -0.381877,
		-0.634969, -0.153952, 0.757042,
		35.595787, 31.862797, 24.237389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494175, 31.924635, 23.359825>,  <36.040264, 31.970564, 23.707460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494175, 31.924635, 23.359825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363548, 31.967216, 23.735489>,  <35.285172, 31.992765, 23.960888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363548, 31.967216, 23.735489>,  <35.494175, 31.924635, 23.359825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363548, 31.967216, 23.735489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859600, 0.379689, -0.341941,
		-0.392990, -0.918969, -0.032486,
		-0.326568, 0.106454, 0.939159,
		35.265579, 31.999153, 24.017237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827164, 31.567825, 23.359129>,  <35.494175, 31.924635, 23.359825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827164, 31.567825, 23.359129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.827450, 31.865625, 23.626177>,  <34.827621, 32.044304, 23.786406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.827450, 31.865625, 23.626177>,  <34.827164, 31.567825, 23.359129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827450, 31.865625, 23.626177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810516, 0.391471, -0.435677,
		-0.585716, -0.540805, 0.603711,
		0.000719, 0.744501, 0.667621,
		34.827667, 32.088974, 23.826464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154758, 31.647156, 23.408587>,  <34.827164, 31.567825, 23.359129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154758, 31.647156, 23.408587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294003, 31.960249, 23.614944>,  <34.377548, 32.148106, 23.738760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294003, 31.960249, 23.614944>,  <34.154758, 31.647156, 23.408587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294003, 31.960249, 23.614944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651607, 0.597670, -0.467118,
		-0.673964, -0.173551, 0.718090,
		0.348112, 0.782733, 0.515895,
		34.398438, 32.195068, 23.769712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.509098, 31.940105, 23.594172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809185, 32.202454, 23.627659>,  <33.989235, 32.359863, 23.647751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809185, 32.202454, 23.627659>,  <33.509098, 31.940105, 23.594172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809185, 32.202454, 23.627659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565278, 0.701905, -0.433348,
		-0.342985, 0.277779, 0.897330,
		0.750215, 0.655872, 0.083721,
		34.034248, 32.399216, 23.652775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167191, 32.474739, 23.901993>,  <33.509098, 31.940105, 23.594172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167191, 32.474739, 23.901993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503433, 32.615807, 23.737556>,  <33.705181, 32.700447, 23.638895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503433, 32.615807, 23.737556>,  <33.167191, 32.474739, 23.901993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503433, 32.615807, 23.737556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508376, 0.775602, -0.374159,
		0.186889, 0.523511, 0.831269,
		0.840610, 0.352672, -0.411092,
		33.755615, 32.721607, 23.614229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101280, 33.206757, 24.071747>,  <33.167191, 32.474739, 23.901993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101280, 33.206757, 24.071747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377907, 33.176624, 23.784399>,  <33.543884, 33.158543, 23.611990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377907, 33.176624, 23.784399>,  <33.101280, 33.206757, 24.071747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377907, 33.176624, 23.784399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452364, 0.730180, -0.512059,
		0.563115, 0.679089, 0.470892,
		0.691569, -0.075334, -0.718371,
		33.585377, 33.154026, 23.568888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275921, 33.852230, 23.977238>,  <33.101280, 33.206757, 24.071747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275921, 33.852230, 23.977238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388992, 33.650913, 23.650610>,  <33.456837, 33.530125, 23.454634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388992, 33.650913, 23.650610>,  <33.275921, 33.852230, 23.977238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388992, 33.650913, 23.650610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441550, 0.687459, -0.576571,
		0.851543, 0.523543, -0.027897,
		0.282681, -0.503293, -0.816571,
		33.473797, 33.499924, 23.405640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641186, 34.389454, 23.454445>,  <33.275921, 33.852230, 23.977238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641186, 34.389454, 23.454445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524422, 34.064320, 23.252815>,  <33.454365, 33.869240, 23.131838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524422, 34.064320, 23.252815>,  <33.641186, 34.389454, 23.454445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524422, 34.064320, 23.252815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335673, 0.580570, -0.741796,
		0.895607, -0.047334, -0.442321,
		-0.291911, -0.812833, -0.504074,
		33.436848, 33.820469, 23.101593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988789, 34.414738, 22.753183>,  <33.641186, 34.389454, 23.454445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988789, 34.414738, 22.753183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653671, 34.196453, 22.746153>,  <33.452602, 34.065483, 22.741934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653671, 34.196453, 22.746153>,  <33.988789, 34.414738, 22.753183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653671, 34.196453, 22.746153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331636, 0.534189, -0.777599,
		0.433730, -0.645636, -0.628515,
		-0.837792, -0.545707, -0.017578,
		33.402332, 34.032742, 22.740879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855968, 34.206093, 22.025000>,  <33.988789, 34.414738, 22.753183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855968, 34.206093, 22.025000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506836, 34.076591, 22.171070>,  <33.297356, 33.998890, 22.258713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506836, 34.076591, 22.171070>,  <33.855968, 34.206093, 22.025000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506836, 34.076591, 22.171070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470996, 0.362878, -0.804041,
		0.127795, -0.873788, -0.469216,
		-0.872829, -0.323751, 0.365177,
		33.244987, 33.979465, 22.280622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590771, 33.767998, 21.585867>,  <33.855968, 34.206093, 22.025000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590771, 33.767998, 21.585867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258904, 33.877068, 21.780722>,  <33.059784, 33.942509, 21.897635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258904, 33.877068, 21.780722>,  <33.590771, 33.767998, 21.585867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258904, 33.877068, 21.780722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462337, 0.153454, -0.873325,
		-0.312884, -0.949791, -0.001250,
		-0.829668, 0.272671, 0.487136,
		33.010002, 33.958870, 21.926863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139111, 33.655060, 20.981903>,  <33.590771, 33.767998, 21.585867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139111, 33.655060, 20.981903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943275, 33.808971, 21.294888>,  <32.825775, 33.901318, 21.482679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943275, 33.808971, 21.294888>,  <33.139111, 33.655060, 20.981903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943275, 33.808971, 21.294888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783759, 0.199078, -0.588294,
		-0.382136, -0.901283, 0.204111,
		-0.489585, 0.384782, 0.782463,
		32.796398, 33.924404, 21.529627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458248, 33.265450, 21.115477>,  <33.139111, 33.655060, 20.981903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458248, 33.265450, 21.115477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431046, 33.647583, 21.230511>,  <32.414722, 33.876865, 21.299532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431046, 33.647583, 21.230511>,  <32.458248, 33.265450, 21.115477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431046, 33.647583, 21.230511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620437, 0.185237, -0.762066,
		-0.781302, -0.230258, 0.580129,
		-0.068010, 0.955337, 0.287587,
		32.410641, 33.934185, 21.316786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789959, 33.416248, 20.983505>,  <32.458248, 33.265450, 21.115477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789959, 33.416248, 20.983505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015522, 33.746437, 20.993353>,  <32.150860, 33.944550, 20.999262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015522, 33.746437, 20.993353>,  <31.789959, 33.416248, 20.983505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015522, 33.746437, 20.993353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480185, 0.351996, -0.803444,
		-0.671885, 0.441247, 0.594872,
		0.563910, 0.825470, 0.024621,
		32.184696, 33.994080, 21.000738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379282, 34.038979, 20.909355>,  <31.789959, 33.416248, 20.983505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379282, 34.038979, 20.909355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730938, 34.186882, 20.789091>,  <31.941931, 34.275623, 20.716932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730938, 34.186882, 20.789091>,  <31.379282, 34.038979, 20.909355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730938, 34.186882, 20.789091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471495, 0.583040, -0.661631,
		-0.069344, 0.723426, 0.686911,
		0.879138, 0.369755, -0.300662,
		31.994678, 34.297810, 20.698893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241348, 34.773376, 20.770464>,  <31.379282, 34.038979, 20.909355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241348, 34.773376, 20.770464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584738, 34.672203, 20.592005>,  <31.790771, 34.611500, 20.484930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584738, 34.672203, 20.592005>,  <31.241348, 34.773376, 20.770464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584738, 34.672203, 20.592005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238417, 0.573385, -0.783828,
		0.454071, 0.779265, 0.431932,
		0.858474, -0.252933, -0.446148,
		31.842279, 34.596325, 20.458160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484367, 35.380001, 20.464190>,  <31.241348, 34.773376, 20.770464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484367, 35.380001, 20.464190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.685867, 35.117527, 20.239454>,  <31.806767, 34.960041, 20.104614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.685867, 35.117527, 20.239454>,  <31.484367, 35.380001, 20.464190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685867, 35.117527, 20.239454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265933, 0.501003, -0.823575,
		0.821898, 0.564286, 0.077879,
		0.503749, -0.656184, -0.561836,
		31.836992, 34.920673, 20.070904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650190, 35.729607, 19.828779>,  <31.484367, 35.380001, 20.464190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650190, 35.729607, 19.828779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740833, 35.352043, 19.732712>,  <31.795219, 35.125504, 19.675072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740833, 35.352043, 19.732712>,  <31.650190, 35.729607, 19.828779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740833, 35.352043, 19.732712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035631, 0.254450, -0.966429,
		0.973335, 0.210441, 0.091292,
		0.226606, -0.943912, -0.240167,
		31.808815, 35.068871, 19.660662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313770, 35.795578, 19.610586>,  <31.650190, 35.729607, 19.828779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313770, 35.795578, 19.610586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109650, 35.488205, 19.456127>,  <31.987177, 35.303783, 19.363451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109650, 35.488205, 19.456127>,  <32.313770, 35.795578, 19.610586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109650, 35.488205, 19.456127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122442, 0.379520, -0.917046,
		0.851236, -0.515249, -0.099580,
		-0.510299, -0.768429, -0.386149,
		31.956560, 35.257675, 19.340282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560558, 35.586960, 19.073429>,  <32.313770, 35.795578, 19.610586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560558, 35.586960, 19.073429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196194, 35.438320, 19.001703>,  <31.977573, 35.349136, 18.958668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196194, 35.438320, 19.001703>,  <32.560558, 35.586960, 19.073429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196194, 35.438320, 19.001703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006061, 0.422498, -0.906344,
		0.412543, -0.826691, -0.382609,
		-0.910918, -0.371587, -0.179309,
		31.922920, 35.326843, 18.947910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595921, 35.440369, 18.379307>,  <32.560558, 35.586960, 19.073429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595921, 35.440369, 18.379307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206306, 35.450901, 18.469255>,  <31.972538, 35.457222, 18.523226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206306, 35.450901, 18.469255>,  <32.595921, 35.440369, 18.379307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206306, 35.450901, 18.469255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202410, 0.343758, -0.916984,
		-0.101448, -0.938689, -0.329501,
		-0.974032, 0.026332, 0.224874,
		31.914097, 35.458801, 18.536718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170898, 35.193428, 17.848501>,  <32.595921, 35.440369, 18.379307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170898, 35.193428, 17.848501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875000, 35.390480, 18.031841>,  <31.697460, 35.508713, 18.141846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875000, 35.390480, 18.031841>,  <32.170898, 35.193428, 17.848501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875000, 35.390480, 18.031841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311657, 0.352864, -0.882246,
		-0.596358, -0.795488, -0.107498,
		-0.739748, 0.492632, 0.458352,
		31.653076, 35.538269, 18.169348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507078, 35.062885, 17.480871>,  <32.170898, 35.193428, 17.848501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507078, 35.062885, 17.480871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429031, 35.382019, 17.709044>,  <31.382204, 35.573498, 17.845947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429031, 35.382019, 17.709044>,  <31.507078, 35.062885, 17.480871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429031, 35.382019, 17.709044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475317, 0.431823, -0.766553,
		-0.857907, -0.420701, 0.294969,
		-0.195115, 0.797834, 0.570430,
		31.370497, 35.621368, 17.880173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823269, 35.146317, 17.236752>,  <31.507078, 35.062885, 17.480871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823269, 35.146317, 17.236752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968752, 35.490494, 17.379499>,  <31.056042, 35.696999, 17.465149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968752, 35.490494, 17.379499>,  <30.823269, 35.146317, 17.236752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968752, 35.490494, 17.379499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294808, 0.469739, -0.832126,
		-0.883632, 0.197443, 0.424513,
		0.363708, 0.860443, 0.356869,
		31.077864, 35.748627, 17.486561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329393, 35.588303, 17.052574>,  <30.823269, 35.146317, 17.236752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329393, 35.588303, 17.052574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.635807, 35.831005, 17.137463>,  <30.819654, 35.976627, 17.188396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.635807, 35.831005, 17.137463>,  <30.329393, 35.588303, 17.052574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635807, 35.831005, 17.137463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221785, 0.559362, -0.798702,
		-0.603326, 0.564766, 0.563060,
		0.766035, 0.606756, 0.212221,
		30.865618, 36.013031, 17.201128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123985, 36.257156, 17.332651>,  <30.329393, 35.588303, 17.052574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123985, 36.257156, 17.332651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462536, 36.266304, 17.119812>,  <30.665667, 36.271793, 16.992109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462536, 36.266304, 17.119812>,  <30.123985, 36.257156, 17.332651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462536, 36.266304, 17.119812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431348, 0.615450, -0.659667,
		0.312393, 0.787844, 0.530766,
		0.846374, 0.022869, -0.532097,
		30.716448, 36.273167, 16.960182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173119, 36.992325, 17.517860>,  <30.123985, 36.257156, 17.332651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173119, 36.992325, 17.517860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.162579, 36.982655, 17.118116>,  <30.156254, 36.976852, 16.878269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.162579, 36.982655, 17.118116>,  <30.173119, 36.992325, 17.517860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162579, 36.982655, 17.118116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836981, -0.546094, 0.035281,
		-0.546597, 0.837375, -0.005845,
		-0.026351, -0.024177, -0.999360,
		30.154673, 36.975403, 16.818308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698593, 37.526447, 17.454021>,  <30.173119, 36.992325, 17.517860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698593, 37.526447, 17.454021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.346426, 37.337830, 17.474058>,  <29.135126, 37.224659, 17.486080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.346426, 37.337830, 17.474058>,  <29.698593, 37.526447, 17.454021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346426, 37.337830, 17.474058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015827, 0.134792, 0.990748,
		-0.473935, 0.871479, -0.126136,
		-0.880418, -0.471546, 0.050090,
		29.082300, 37.196365, 17.489084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259365, 38.028137, 17.696739>,  <29.698593, 37.526447, 17.454021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259365, 38.028137, 17.696739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.092535, 37.669998, 17.759224>,  <28.992437, 37.455116, 17.796715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.092535, 37.669998, 17.759224>,  <29.259365, 38.028137, 17.696739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092535, 37.669998, 17.759224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094651, 0.213727, 0.972297,
		-0.903930, 0.390735, -0.173885,
		-0.417074, -0.895348, 0.156211,
		28.967413, 37.401394, 17.806087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830492, 38.166374, 18.315287>,  <29.259365, 38.028137, 17.696739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830492, 38.166374, 18.315287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861809, 37.768387, 18.290304>,  <28.880600, 37.529594, 18.275314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861809, 37.768387, 18.290304>,  <28.830492, 38.166374, 18.315287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861809, 37.768387, 18.290304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019748, -0.061090, 0.997937,
		-0.996735, -0.079365, 0.014866,
		0.078293, -0.994972, -0.062458,
		28.885296, 37.469894, 18.271566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494190, 38.026577, 18.845751>,  <28.830492, 38.166374, 18.315287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494190, 38.026577, 18.845751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.727213, 37.713291, 18.758842>,  <28.867025, 37.525318, 18.706697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.727213, 37.713291, 18.758842>,  <28.494190, 38.026577, 18.845751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727213, 37.713291, 18.758842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106776, -0.191252, 0.975716,
		-0.805747, -0.591607, -0.027787,
		0.582555, -0.783213, -0.217270,
		28.901979, 37.478329, 18.693661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242367, 37.457455, 19.254784>,  <28.494190, 38.026577, 18.845751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242367, 37.457455, 19.254784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616096, 37.375877, 19.137856>,  <28.840334, 37.326931, 19.067699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616096, 37.375877, 19.137856>,  <28.242367, 37.457455, 19.254784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616096, 37.375877, 19.137856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202168, -0.372214, 0.905861,
		-0.293547, -0.905464, -0.306537,
		0.934322, -0.203941, -0.292318,
		28.896393, 37.314693, 19.050159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296354, 36.792664, 19.306101>,  <28.242367, 37.457455, 19.254784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296354, 36.792664, 19.306101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.677721, 36.910900, 19.282034>,  <28.906542, 36.981842, 19.267593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.677721, 36.910900, 19.282034>,  <28.296354, 36.792664, 19.306101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677721, 36.910900, 19.282034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223189, -0.557056, 0.799922,
		0.202938, -0.776087, -0.597080,
		0.953416, 0.295596, -0.060166,
		28.963745, 36.999580, 19.263985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644810, 36.195557, 19.225666>,  <28.296354, 36.792664, 19.306101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644810, 36.195557, 19.225666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.886438, 36.476223, 19.376804>,  <29.031416, 36.644623, 19.467487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.886438, 36.476223, 19.376804>,  <28.644810, 36.195557, 19.225666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886438, 36.476223, 19.376804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158370, -0.570364, 0.805980,
		0.781035, -0.427030, -0.455663,
		0.604072, 0.701662, 0.377846,
		29.067659, 36.686722, 19.490158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198965, 35.939728, 19.484413>,  <28.644810, 36.195557, 19.225666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198965, 35.939728, 19.484413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241339, 36.286690, 19.678894>,  <29.266764, 36.494865, 19.795582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241339, 36.286690, 19.678894>,  <29.198965, 35.939728, 19.484413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241339, 36.286690, 19.678894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312679, -0.493206, 0.811775,
		0.943933, 0.066031, -0.323465,
		0.105933, 0.867403, 0.486200,
		29.273119, 36.546909, 19.824755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892332, 35.949291, 19.755571>,  <29.198965, 35.939728, 19.484413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892332, 35.949291, 19.755571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694500, 36.222851, 19.970112>,  <29.575802, 36.386986, 20.098837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694500, 36.222851, 19.970112>,  <29.892332, 35.949291, 19.755571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694500, 36.222851, 19.970112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377450, -0.386870, 0.841346,
		0.782894, 0.618558, -0.066801,
		-0.494578, 0.683899, 0.536353,
		29.546127, 36.428020, 20.131018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374502, 36.277473, 20.031094>,  <29.892332, 35.949291, 19.755571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374502, 36.277473, 20.031094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071569, 36.336670, 20.285509>,  <29.889809, 36.372189, 20.438158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071569, 36.336670, 20.285509>,  <30.374502, 36.277473, 20.031094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071569, 36.336670, 20.285509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609806, -0.188187, 0.769884,
		0.233631, 0.970919, 0.052274,
		-0.757333, 0.147992, 0.636039,
		29.844370, 36.381069, 20.476320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777172, 36.602589, 20.555595>,  <30.374502, 36.277473, 20.031094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777172, 36.602589, 20.555595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435144, 36.502396, 20.737196>,  <30.229927, 36.442280, 20.846155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435144, 36.502396, 20.737196>,  <30.777172, 36.602589, 20.555595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435144, 36.502396, 20.737196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495528, -0.136946, 0.857729,
		-0.152669, 0.958387, 0.241217,
		-0.855070, -0.250479, 0.454000,
		30.178623, 36.427254, 20.873396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913504, 36.673569, 21.221054>,  <30.777172, 36.602589, 20.555595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913504, 36.673569, 21.221054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.590267, 36.438488, 21.237003>,  <30.396326, 36.297440, 21.246572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.590267, 36.438488, 21.237003>,  <30.913504, 36.673569, 21.221054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590267, 36.438488, 21.237003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356713, -0.434363, 0.827094,
		-0.468767, 0.682592, 0.560648,
		-0.808092, -0.587705, 0.039874,
		30.347839, 36.262177, 21.248966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749857, 36.627678, 21.922880>,  <30.913504, 36.673569, 21.221054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749857, 36.627678, 21.922880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545208, 36.321274, 21.767206>,  <30.422419, 36.137432, 21.673801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545208, 36.321274, 21.767206>,  <30.749857, 36.627678, 21.922880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545208, 36.321274, 21.767206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176136, -0.536841, 0.825093,
		-0.840963, 0.353586, 0.409582,
		-0.511622, -0.766015, -0.389185,
		30.391722, 36.091469, 21.650452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259132, 36.378849, 22.430403>,  <30.749857, 36.627678, 21.922880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259132, 36.378849, 22.430403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342417, 36.058460, 22.205870>,  <30.392387, 35.866226, 22.071150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342417, 36.058460, 22.205870>,  <30.259132, 36.378849, 22.430403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342417, 36.058460, 22.205870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107719, -0.589199, 0.800775,
		-0.972134, -0.106263, -0.208956,
		0.208210, -0.800970, -0.561334,
		30.404881, 35.818169, 22.037470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854784, 35.890518, 22.768969>,  <30.259132, 36.378849, 22.430403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854784, 35.890518, 22.768969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.077499, 35.653481, 22.536135>,  <30.211128, 35.511257, 22.396435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.077499, 35.653481, 22.536135>,  <29.854784, 35.890518, 22.768969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077499, 35.653481, 22.536135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090455, -0.739842, 0.666672,
		-0.825716, -0.318541, -0.465537,
		0.556787, -0.592592, -0.582085,
		30.244535, 35.475704, 22.361509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669432, 35.161995, 22.900740>,  <29.854784, 35.890518, 22.768969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669432, 35.161995, 22.900740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037966, 35.125389, 22.749601>,  <30.259087, 35.103424, 22.658918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037966, 35.125389, 22.749601>,  <29.669432, 35.161995, 22.900740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037966, 35.125389, 22.749601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263121, -0.568695, 0.779329,
		-0.286200, -0.817442, -0.499878,
		0.921334, -0.091516, -0.377847,
		30.314365, 35.097935, 22.636248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795547, 34.340939, 22.915142>,  <29.669432, 35.161995, 22.900740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795547, 34.340939, 22.915142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141764, 34.541256, 22.917917>,  <30.349493, 34.661446, 22.919582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141764, 34.541256, 22.917917>,  <29.795547, 34.340939, 22.915142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141764, 34.541256, 22.917917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300583, -0.530490, 0.792610,
		0.400616, -0.683948, -0.609690,
		0.865538, 0.500795, 0.006940,
		30.401424, 34.691494, 22.919998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264441, 33.815224, 22.836952>,  <29.795547, 34.340939, 22.915142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264441, 33.815224, 22.836952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465929, 34.121418, 22.997099>,  <30.586823, 34.305134, 23.093187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465929, 34.121418, 22.997099>,  <30.264441, 33.815224, 22.836952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465929, 34.121418, 22.997099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380788, -0.612758, 0.692479,
		0.775412, -0.196362, -0.600149,
		0.503723, 0.765486, 0.400368,
		30.617046, 34.351063, 23.117208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961592, 33.547348, 22.997946>,  <30.264441, 33.815224, 22.836952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961592, 33.547348, 22.997946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897312, 33.870544, 23.224688>,  <30.858746, 34.064461, 23.360733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897312, 33.870544, 23.224688>,  <30.961592, 33.547348, 22.997946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897312, 33.870544, 23.224688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441934, -0.454630, 0.773309,
		0.882537, 0.374782, -0.284020,
		-0.160698, 0.807991, 0.566856,
		30.849102, 34.112942, 23.394745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471889, 33.445824, 23.442268>,  <30.961592, 33.547348, 22.997946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471889, 33.445824, 23.442268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238483, 33.724518, 23.609154>,  <31.098440, 33.891735, 23.709286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238483, 33.724518, 23.609154>,  <31.471889, 33.445824, 23.442268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238483, 33.724518, 23.609154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250315, -0.334424, 0.908572,
		0.772563, 0.634599, 0.020736,
		-0.583514, 0.696739, 0.417213,
		31.063429, 33.933540, 23.734318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.371067, 30.412870, 24.241804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.350098, 30.674583, 24.543575>,  <36.337517, 30.831612, 24.724638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.350098, 30.674583, 24.543575>,  <36.371067, 30.412870, 24.241804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350098, 30.674583, 24.543575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652397, -0.549528, 0.521918,
		0.756062, 0.519549, -0.398044,
		-0.052425, 0.654285, 0.754429,
		36.334370, 30.870869, 24.769903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056713, 30.492834, 24.516958>,  <36.371067, 30.412870, 24.241804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056713, 30.492834, 24.516958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.806576, 30.629827, 24.797428>,  <36.656494, 30.712025, 24.965710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.806576, 30.629827, 24.797428>,  <37.056713, 30.492834, 24.516958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806576, 30.629827, 24.797428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528015, -0.475899, 0.703364,
		0.574580, 0.810077, 0.116764,
		-0.625347, 0.342485, 0.701174,
		36.618973, 30.732573, 25.007780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487549, 30.925697, 25.066830>,  <37.056713, 30.492834, 24.516958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487549, 30.925697, 25.066830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.154301, 30.758858, 25.212122>,  <36.954350, 30.658754, 25.299297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.154301, 30.758858, 25.212122>,  <37.487549, 30.925697, 25.066830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154301, 30.758858, 25.212122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501265, -0.291858, 0.814587,
		-0.233751, 0.860725, 0.452230,
		-0.833123, -0.417098, 0.363230,
		36.904366, 30.633728, 25.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661961, 31.038570, 25.655506>,  <37.487549, 30.925697, 25.066830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661961, 31.038570, 25.655506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343231, 30.798779, 25.685684>,  <37.151993, 30.654903, 25.703791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343231, 30.798779, 25.685684>,  <37.661961, 31.038570, 25.655506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343231, 30.798779, 25.685684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300139, -0.284356, 0.910526,
		-0.524389, 0.748175, 0.406509,
		-0.796827, -0.599479, 0.075443,
		37.104183, 30.618935, 25.708317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299072, 31.155521, 26.364906>,  <37.661961, 31.038570, 25.655506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299072, 31.155521, 26.364906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.158825, 30.800007, 26.246841>,  <37.074677, 30.586699, 26.176003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.158825, 30.800007, 26.246841>,  <37.299072, 31.155521, 26.364906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158825, 30.800007, 26.246841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102080, -0.349560, 0.931336,
		-0.930937, 0.296417, 0.213291,
		-0.350622, -0.888788, -0.295160,
		37.053638, 30.533371, 26.158293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672138, 31.030718, 26.654713>,  <37.299072, 31.155521, 26.364906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672138, 31.030718, 26.654713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.835579, 30.676863, 26.564857>,  <36.933643, 30.464550, 26.510944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.835579, 30.676863, 26.564857>,  <36.672138, 31.030718, 26.654713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835579, 30.676863, 26.564857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009465, -0.250214, 0.968144,
		-0.912662, -0.393462, -0.110612,
		0.408605, -0.884636, -0.224636,
		36.958160, 30.411472, 26.497467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450562, 30.617146, 27.128918>,  <36.672138, 31.030718, 26.654713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450562, 30.617146, 27.128918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.717552, 30.351995, 26.993227>,  <36.877747, 30.192905, 26.911814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.717552, 30.351995, 26.993227>,  <36.450562, 30.617146, 27.128918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717552, 30.351995, 26.993227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057375, -0.499988, 0.864130,
		-0.742420, -0.557321, -0.371761,
		0.667473, -0.662877, -0.339225,
		36.917793, 30.153133, 26.891460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148083, 29.946033, 27.144573>,  <36.450562, 30.617146, 27.128918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148083, 29.946033, 27.144573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.543011, 29.882744, 27.139372>,  <36.779968, 29.844770, 27.136251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.543011, 29.882744, 27.139372>,  <36.148083, 29.946033, 27.144573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543011, 29.882744, 27.139372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076629, -0.546685, 0.833825,
		-0.139040, -0.822254, -0.551876,
		0.987318, -0.158225, -0.013003,
		36.839207, 29.835276, 27.135471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983082, 29.386436, 27.549013>,  <36.148083, 29.946033, 27.144573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983082, 29.386436, 27.549013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.377052, 29.455341, 27.542665>,  <36.613434, 29.496685, 27.538857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.377052, 29.455341, 27.542665>,  <35.983082, 29.386436, 27.549013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377052, 29.455341, 27.542665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069061, -0.307444, 0.949057,
		0.158609, -0.935844, -0.314706,
		0.984923, 0.172263, -0.015867,
		36.672531, 29.507021, 27.537905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299149, 28.764486, 27.786480>,  <35.983082, 29.386436, 27.549013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299149, 28.764486, 27.786480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558426, 29.065266, 27.834513>,  <36.713993, 29.245733, 27.863333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558426, 29.065266, 27.834513>,  <36.299149, 28.764486, 27.786480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558426, 29.065266, 27.834513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125653, -0.261152, 0.957085,
		0.751040, -0.605285, -0.263761,
		0.648190, 0.751951, 0.120080,
		36.752884, 29.290852, 27.870537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845211, 28.436174, 28.147280>,  <36.299149, 28.764486, 27.786480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845211, 28.436174, 28.147280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813568, 28.829512, 28.212742>,  <36.794582, 29.065514, 28.252020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813568, 28.829512, 28.212742>,  <36.845211, 28.436174, 28.147280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813568, 28.829512, 28.212742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075667, -0.157773, 0.984572,
		0.993990, 0.090269, -0.061926,
		-0.079106, 0.983341, 0.163655,
		36.789837, 29.124514, 28.261839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292519, 28.565344, 28.779356>,  <36.845211, 28.436174, 28.147280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292519, 28.565344, 28.779356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080994, 28.903505, 28.749294>,  <36.954079, 29.106401, 28.731256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080994, 28.903505, 28.749294>,  <37.292519, 28.565344, 28.779356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080994, 28.903505, 28.749294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190590, -0.031993, 0.981148,
		0.827062, 0.533168, 0.178044,
		-0.528813, 0.845404, -0.075156,
		36.922348, 29.157127, 28.726748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525417, 28.945173, 29.463938>,  <37.292519, 28.565344, 28.779356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525417, 28.945173, 29.463938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.153149, 29.034250, 29.347832>,  <36.929787, 29.087696, 29.278168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.153149, 29.034250, 29.347832>,  <37.525417, 28.945173, 29.463938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153149, 29.034250, 29.347832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272461, 0.107587, 0.956133,
		0.244154, 0.968933, -0.039453,
		-0.930674, 0.222695, -0.290265,
		36.873947, 29.101059, 29.260752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207104, 29.156851, 29.966333>,  <37.525417, 28.945173, 29.463938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207104, 29.156851, 29.966333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867523, 29.070431, 29.773415>,  <36.663776, 29.018578, 29.657663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867523, 29.070431, 29.773415>,  <37.207104, 29.156851, 29.966333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867523, 29.070431, 29.773415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512848, 0.116493, 0.850539,
		-0.127577, 0.969407, -0.209698,
		-0.848947, -0.216052, -0.482297,
		36.612839, 29.005615, 29.628725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029762, 29.827564, 30.325703>,  <37.207104, 29.156851, 29.966333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029762, 29.827564, 30.325703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.167385, 30.088287, 30.596045>,  <37.249958, 30.244720, 30.758249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.167385, 30.088287, 30.596045>,  <37.029762, 29.827564, 30.325703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167385, 30.088287, 30.596045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102211, 0.689519, -0.717019,
		-0.933371, 0.315772, 0.170609,
		0.344053, 0.651806, 0.675852,
		37.270599, 30.283829, 30.798800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582367, 30.423014, 30.351976>,  <37.029762, 29.827564, 30.325703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582367, 30.423014, 30.351976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941261, 30.561056, 30.462156>,  <37.156597, 30.643883, 30.528265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941261, 30.561056, 30.462156>,  <36.582367, 30.423014, 30.351976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941261, 30.561056, 30.462156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062883, 0.717324, -0.693896,
		-0.437056, 0.605266, 0.665308,
		0.897234, 0.345108, 0.275450,
		37.210430, 30.664589, 30.544792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462292, 31.061285, 30.415745>,  <36.582367, 30.423014, 30.351976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462292, 31.061285, 30.415745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860790, 31.063141, 30.381159>,  <37.099888, 31.064255, 30.360407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860790, 31.063141, 30.381159>,  <36.462292, 31.061285, 30.415745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860790, 31.063141, 30.381159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058002, 0.777172, -0.626609,
		0.064290, 0.629271, 0.774523,
		0.996244, 0.004639, -0.086464,
		37.159664, 31.064533, 30.355219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683048, 31.798023, 30.566721>,  <36.462292, 31.061285, 30.415745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683048, 31.798023, 30.566721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982834, 31.615952, 30.374422>,  <37.162704, 31.506708, 30.259043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982834, 31.615952, 30.374422>,  <36.683048, 31.798023, 30.566721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982834, 31.615952, 30.374422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052752, 0.764901, -0.641984,
		0.659942, 0.455783, 0.597277,
		0.749463, -0.455180, -0.480747,
		37.207672, 31.479397, 30.230198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241913, 32.332657, 30.474846>,  <36.683048, 31.798023, 30.566721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241913, 32.332657, 30.474846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343494, 32.040180, 30.221592>,  <37.404446, 31.864693, 30.069639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343494, 32.040180, 30.221592>,  <37.241913, 32.332657, 30.474846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343494, 32.040180, 30.221592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277614, 0.682157, -0.676456,
		0.926518, -0.003976, 0.376228,
		0.253957, -0.731195, -0.633135,
		37.419682, 31.820822, 30.031651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898899, 32.485264, 30.150747>,  <37.241913, 32.332657, 30.474846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898899, 32.485264, 30.150747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749424, 32.214294, 29.897306>,  <37.659740, 32.051712, 29.745241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749424, 32.214294, 29.897306>,  <37.898899, 32.485264, 30.150747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749424, 32.214294, 29.897306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249379, 0.584563, -0.772073,
		0.893403, -0.446520, -0.049508,
		-0.373687, -0.677426, -0.633603,
		37.637318, 32.011066, 29.707226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391541, 32.490192, 29.633221>,  <37.898899, 32.485264, 30.150747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391541, 32.490192, 29.633221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055088, 32.341953, 29.475658>,  <37.853218, 32.253010, 29.381121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055088, 32.341953, 29.475658>,  <38.391541, 32.490192, 29.633221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055088, 32.341953, 29.475658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131371, 0.566508, -0.813518,
		0.524637, -0.736020, -0.427820,
		-0.841129, -0.370598, -0.393903,
		37.802750, 32.230774, 29.357487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532364, 32.494953, 28.925926>,  <38.391541, 32.490192, 29.633221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532364, 32.494953, 28.925926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.138985, 32.423088, 28.935263>,  <37.902958, 32.379971, 28.940865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.138985, 32.423088, 28.935263>,  <38.532364, 32.494953, 28.925926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138985, 32.423088, 28.935263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121500, 0.558464, -0.820582,
		0.134391, -0.809839, -0.571051,
		-0.983452, -0.179662, 0.023343,
		37.843948, 32.369190, 28.942265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328213, 32.314533, 28.208790>,  <38.532364, 32.494953, 28.925926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328213, 32.314533, 28.208790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998333, 32.438354, 28.398125>,  <37.800404, 32.512646, 28.511726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998333, 32.438354, 28.398125>,  <38.328213, 32.314533, 28.208790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998333, 32.438354, 28.398125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154446, 0.681848, -0.715003,
		-0.544075, -0.662768, -0.514511,
		-0.824699, 0.309552, 0.473338,
		37.750923, 32.531219, 28.540127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838352, 32.316082, 27.674030>,  <38.328213, 32.314533, 28.208790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838352, 32.316082, 27.674030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.723480, 32.561287, 27.968443>,  <37.654556, 32.708408, 28.145090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.723480, 32.561287, 27.968443>,  <37.838352, 32.316082, 27.674030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723480, 32.561287, 27.968443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252782, 0.692659, -0.675518,
		-0.923919, -0.380053, -0.043962,
		-0.287183, 0.613011, 0.736032,
		37.637325, 32.745190, 28.189253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214512, 32.473740, 27.485937>,  <37.838352, 32.316082, 27.674030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214512, 32.473740, 27.485937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302471, 32.760128, 27.750977>,  <37.355247, 32.931961, 27.910000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302471, 32.760128, 27.750977>,  <37.214512, 32.473740, 27.485937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302471, 32.760128, 27.750977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277790, 0.697060, -0.661014,
		-0.935136, -0.038711, 0.352168,
		0.219894, 0.715967, 0.662600,
		37.368439, 32.974918, 27.949757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618286, 33.049595, 27.386202>,  <37.214512, 32.473740, 27.485937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618286, 33.049595, 27.386202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927299, 33.238194, 27.556320>,  <37.112709, 33.351353, 27.658390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927299, 33.238194, 27.556320>,  <36.618286, 33.049595, 27.386202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927299, 33.238194, 27.556320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128662, 0.772128, -0.622306,
		-0.621799, 0.426034, 0.657161,
		0.772536, 0.471501, 0.425294,
		37.159061, 33.379642, 27.683908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441692, 33.791237, 27.496460>,  <36.618286, 33.049595, 27.386202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441692, 33.791237, 27.496460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838764, 33.745777, 27.480124>,  <37.077007, 33.718502, 27.470322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838764, 33.745777, 27.480124>,  <36.441692, 33.791237, 27.496460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838764, 33.745777, 27.480124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066145, 0.794616, -0.603499,
		0.101039, 0.596380, 0.796317,
		0.992681, -0.113650, -0.040840,
		37.136570, 33.711681, 27.467871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690746, 34.447536, 27.589104>,  <36.441692, 33.791237, 27.496460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690746, 34.447536, 27.589104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982910, 34.229214, 27.424864>,  <37.158207, 34.098221, 27.326321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982910, 34.229214, 27.424864>,  <36.690746, 34.447536, 27.589104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982910, 34.229214, 27.424864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028482, 0.624980, -0.780121,
		0.682414, 0.558114, 0.472038,
		0.730411, -0.545810, -0.410599,
		37.202034, 34.065472, 27.301683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821022, 35.041386, 28.021961>,  <36.690746, 34.447536, 27.589104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821022, 35.041386, 28.021961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576431, 35.315327, 28.180492>,  <36.429676, 35.479691, 28.275610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576431, 35.315327, 28.180492>,  <36.821022, 35.041386, 28.021961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576431, 35.315327, 28.180492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173447, -0.372685, 0.911604,
		0.772022, 0.626163, 0.109101,
		-0.611473, 0.684855, 0.396327,
		36.392990, 35.520782, 28.299391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137260, 35.217621, 28.687456>,  <36.821022, 35.041386, 28.021961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137260, 35.217621, 28.687456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752819, 35.326611, 28.705524>,  <36.522156, 35.392006, 28.716366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752819, 35.326611, 28.705524>,  <37.137260, 35.217621, 28.687456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752819, 35.326611, 28.705524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059533, -0.364071, 0.929467,
		0.269701, 0.890623, 0.366131,
		-0.961102, 0.272475, 0.045169,
		36.464489, 35.408352, 28.719074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067707, 35.524651, 29.420925>,  <37.137260, 35.217621, 28.687456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067707, 35.524651, 29.420925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.698006, 35.424931, 29.305267>,  <36.476185, 35.365097, 29.235872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.698006, 35.424931, 29.305267>,  <37.067707, 35.524651, 29.420925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698006, 35.424931, 29.305267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161070, -0.432036, 0.887356,
		-0.346138, 0.866715, 0.359157,
		-0.924254, -0.249299, -0.289146,
		36.420731, 35.350140, 29.218523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654186, 35.614258, 29.956083>,  <37.067707, 35.524651, 29.420925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654186, 35.614258, 29.956083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454834, 35.366028, 29.713926>,  <36.335220, 35.217091, 29.568632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454834, 35.366028, 29.713926>,  <36.654186, 35.614258, 29.956083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454834, 35.366028, 29.713926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441755, -0.419067, 0.793244,
		-0.745966, 0.662776, -0.065284,
		-0.498384, -0.620573, -0.605394,
		36.305317, 35.179855, 29.532309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988167, 35.777546, 30.172848>,  <36.654186, 35.614258, 29.956083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988167, 35.777546, 30.172848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.013298, 35.430626, 29.975327>,  <36.028378, 35.222473, 29.856813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.013298, 35.430626, 29.975327>,  <35.988167, 35.777546, 30.172848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013298, 35.430626, 29.975327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327006, -0.485360, 0.810859,
		-0.942931, 0.110530, -0.314108,
		0.062832, -0.867300, -0.493805,
		36.032146, 35.170437, 29.827185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350639, 35.389549, 30.376650>,  <35.988167, 35.777546, 30.172848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350639, 35.389549, 30.376650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.613800, 35.136776, 30.212780>,  <35.771694, 34.985111, 30.114458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.613800, 35.136776, 30.212780>,  <35.350639, 35.389549, 30.376650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613800, 35.136776, 30.212780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266793, -0.704266, 0.657899,
		-0.704266, -0.323532, -0.631930,
		-0.657899, 0.631930, 0.409675,
		35.811169, 34.947197, 30.089878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921944, 34.736042, 30.277975>,  <35.350639, 35.389549, 30.376650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921944, 34.736042, 30.277975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.314899, 34.661671, 30.270674>,  <35.550674, 34.617046, 30.266293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.314899, 34.661671, 30.270674>,  <34.921944, 34.736042, 30.277975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314899, 34.661671, 30.270674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147529, -0.832011, 0.534784,
		-0.114618, -0.522675, -0.844792,
		0.982394, -0.185927, -0.018254,
		35.609619, 34.605892, 30.265198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981987, 34.079605, 30.199890>,  <34.921944, 34.736042, 30.277975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981987, 34.079605, 30.199890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336926, 34.187973, 30.349136>,  <35.549889, 34.252995, 30.438684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336926, 34.187973, 30.349136>,  <34.981987, 34.079605, 30.199890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336926, 34.187973, 30.349136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034674, -0.846106, 0.531885,
		0.459791, -0.459030, -0.760186,
		0.887350, 0.270915, 0.373116,
		35.603130, 34.269249, 30.461071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204224, 33.377491, 30.437922>,  <34.981987, 34.079605, 30.199890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204224, 33.377491, 30.437922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.467999, 33.634628, 30.593819>,  <35.626263, 33.788910, 30.687357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.467999, 33.634628, 30.593819>,  <35.204224, 33.377491, 30.437922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467999, 33.634628, 30.593819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026961, -0.497881, 0.866826,
		0.751280, -0.582121, -0.310987,
		0.659433, 0.642844, 0.389742,
		35.665829, 33.827480, 30.710741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817360, 32.995033, 30.664597>,  <35.204224, 33.377491, 30.437922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817360, 32.995033, 30.664597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.786880, 33.335732, 30.871950>,  <35.768593, 33.540150, 30.996363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.786880, 33.335732, 30.871950>,  <35.817360, 32.995033, 30.664597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786880, 33.335732, 30.871950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058006, -0.522802, 0.850478,
		0.995404, 0.034739, 0.089245,
		-0.076202, 0.851746, 0.518384,
		35.764019, 33.591255, 31.027466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329613, 32.948212, 31.125479>,  <35.817360, 32.995033, 30.664597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329613, 32.948212, 31.125479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072060, 33.219940, 31.266300>,  <35.917526, 33.382977, 31.350792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072060, 33.219940, 31.266300>,  <36.329613, 32.948212, 31.125479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072060, 33.219940, 31.266300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019555, -0.474585, 0.879992,
		0.764874, 0.559728, 0.318862,
		-0.643883, 0.679319, 0.352052,
		35.878895, 33.423737, 31.371916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625774, 33.124741, 31.756186>,  <36.329613, 32.948212, 31.125479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625774, 33.124741, 31.756186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.232750, 33.197552, 31.741049>,  <35.996933, 33.241238, 31.731966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.232750, 33.197552, 31.741049>,  <36.625774, 33.124741, 31.756186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232750, 33.197552, 31.741049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115666, -0.439112, 0.890956,
		0.145563, 0.879799, 0.452510,
		-0.982564, 0.182031, -0.037844,
		35.937981, 33.252159, 31.729696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.952785, 37.575420, 25.025032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617519, 37.575851, 25.243196>,  <35.416359, 37.576111, 25.374096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617519, 37.575851, 25.243196>,  <35.952785, 37.575420, 25.025032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617519, 37.575851, 25.243196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537039, -0.172933, 0.825641,
		0.095212, 0.984933, 0.144367,
		-0.838167, 0.001080, 0.545413,
		35.366070, 37.576176, 25.406820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060291, 38.001278, 25.633076>,  <35.952785, 37.575420, 25.025032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060291, 38.001278, 25.633076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779266, 37.735596, 25.735245>,  <35.610653, 37.576187, 25.796547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779266, 37.735596, 25.735245>,  <36.060291, 38.001278, 25.633076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779266, 37.735596, 25.735245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522233, -0.237407, 0.819091,
		-0.483404, 0.708852, 0.513662,
		-0.702562, -0.664203, 0.255423,
		35.568497, 37.536335, 25.811871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847908, 38.128284, 26.311714>,  <36.060291, 38.001278, 25.633076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847908, 38.128284, 26.311714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704319, 37.758522, 26.260159>,  <35.618164, 37.536663, 26.229225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704319, 37.758522, 26.260159>,  <35.847908, 38.128284, 26.311714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704319, 37.758522, 26.260159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307088, -0.247381, 0.918967,
		-0.881382, 0.290307, 0.372677,
		-0.358975, -0.924405, -0.128887,
		35.596626, 37.481201, 26.221493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436398, 37.934444, 26.954597>,  <35.847908, 38.128284, 26.311714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436398, 37.934444, 26.954597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566238, 37.607826, 26.763645>,  <35.644142, 37.411858, 26.649075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566238, 37.607826, 26.763645>,  <35.436398, 37.934444, 26.954597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566238, 37.607826, 26.763645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337171, -0.371660, 0.864976,
		-0.883713, -0.441732, 0.154673,
		0.324602, -0.816542, -0.477380,
		35.663620, 37.362865, 26.620432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150097, 37.397858, 27.256914>,  <35.436398, 37.934444, 26.954597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150097, 37.397858, 27.256914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448463, 37.223251, 27.055693>,  <35.627483, 37.118488, 26.934959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448463, 37.223251, 27.055693>,  <35.150097, 37.397858, 27.256914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448463, 37.223251, 27.055693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227159, -0.543272, 0.808241,
		-0.626105, -0.717154, -0.306077,
		0.745916, -0.436516, -0.503053,
		35.672237, 37.092297, 26.904778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121956, 36.702957, 27.493153>,  <35.150097, 37.397858, 27.256914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121956, 36.702957, 27.493153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482475, 36.703060, 27.319872>,  <35.698788, 36.703121, 27.215904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482475, 36.703060, 27.319872>,  <35.121956, 36.702957, 27.493153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482475, 36.703060, 27.319872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338867, -0.623388, 0.704668,
		-0.269872, -0.781913, -0.561944,
		0.901298, 0.000254, -0.433200,
		35.752865, 36.703136, 27.189913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259491, 35.967709, 27.506166>,  <35.121956, 36.702957, 27.493153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259491, 35.967709, 27.506166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604828, 36.167137, 27.475014>,  <35.812031, 36.286793, 27.456322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604828, 36.167137, 27.475014>,  <35.259491, 35.967709, 27.506166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604828, 36.167137, 27.475014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388407, -0.558033, 0.733308,
		0.322144, -0.663346, -0.675422,
		0.863344, 0.498569, -0.077881,
		35.863831, 36.316708, 27.451649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702660, 35.449734, 27.362253>,  <35.259491, 35.967709, 27.506166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702660, 35.449734, 27.362253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918793, 35.749310, 27.515678>,  <36.048473, 35.929054, 27.607733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918793, 35.749310, 27.515678>,  <35.702660, 35.449734, 27.362253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918793, 35.749310, 27.515678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251229, -0.578635, 0.775929,
		0.803069, -0.322901, -0.500814,
		0.540337, 0.748944, 0.383562,
		36.080894, 35.973991, 27.630747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371540, 35.149971, 27.446558>,  <35.702660, 35.449734, 27.362253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371540, 35.149971, 27.446558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312443, 35.456364, 27.696821>,  <36.276985, 35.640198, 27.846979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312443, 35.456364, 27.696821>,  <36.371540, 35.149971, 27.446558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312443, 35.456364, 27.696821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331894, -0.557521, 0.760931,
		0.931676, 0.320072, -0.171857,
		-0.147739, 0.765979, 0.625659,
		36.268120, 35.686157, 27.884520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118534, 34.974003, 27.366077>,  <36.371540, 35.149971, 27.446558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118534, 34.974003, 27.366077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269886, 34.668293, 27.157188>,  <37.360699, 34.484867, 27.031855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269886, 34.668293, 27.157188>,  <37.118534, 34.974003, 27.366077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269886, 34.668293, 27.157188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283854, 0.632791, -0.720418,
		0.881052, 0.124361, 0.456380,
		0.378385, -0.764271, -0.522222,
		37.383400, 34.439011, 27.000523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767506, 35.208138, 27.035095>,  <37.118534, 34.974003, 27.366077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767506, 35.208138, 27.035095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674164, 34.889797, 26.811609>,  <37.618160, 34.698792, 26.677517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674164, 34.889797, 26.811609>,  <37.767506, 35.208138, 27.035095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674164, 34.889797, 26.811609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287499, 0.492423, -0.821501,
		0.928918, -0.352332, 0.113897,
		-0.233356, -0.795853, -0.558716,
		37.604156, 34.651043, 26.643995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175125, 35.072323, 26.520193>,  <37.767506, 35.208138, 27.035095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175125, 35.072323, 26.520193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853691, 34.874847, 26.387211>,  <37.660831, 34.756363, 26.307423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853691, 34.874847, 26.387211>,  <38.175125, 35.072323, 26.520193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853691, 34.874847, 26.387211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003201, 0.554971, -0.831864,
		0.595188, -0.669534, -0.444383,
		-0.803580, -0.493693, -0.332455,
		37.612617, 34.726742, 26.287476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370312, 34.742146, 25.859179>,  <38.175125, 35.072323, 26.520193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370312, 34.742146, 25.859179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974171, 34.796349, 25.870737>,  <37.736485, 34.828873, 25.877672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974171, 34.796349, 25.870737>,  <38.370312, 34.742146, 25.859179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974171, 34.796349, 25.870737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050215, 0.545396, -0.836673,
		-0.129136, -0.827152, -0.546940,
		-0.990355, 0.135510, 0.028895,
		37.677063, 34.837002, 25.879406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292717, 34.837727, 25.103159>,  <38.370312, 34.742146, 25.859179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292717, 34.837727, 25.103159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926094, 34.906372, 25.247644>,  <37.706120, 34.947559, 25.334335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926094, 34.906372, 25.247644>,  <38.292717, 34.837727, 25.103159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926094, 34.906372, 25.247644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223538, 0.529098, -0.818588,
		-0.331599, -0.831026, -0.446585,
		-0.916555, 0.171614, 0.361214,
		37.651127, 34.957855, 25.356009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732044, 34.380859, 24.735832>,  <38.292717, 34.837727, 25.103159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732044, 34.380859, 24.735832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570072, 34.710941, 24.893347>,  <37.472889, 34.908993, 24.987856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570072, 34.710941, 24.893347>,  <37.732044, 34.380859, 24.735832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570072, 34.710941, 24.893347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430817, 0.207684, -0.878217,
		-0.806494, -0.525263, 0.271416,
		-0.404926, 0.825207, 0.393788,
		37.448593, 34.958504, 25.011482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080532, 34.335762, 24.413465>,  <37.732044, 34.380859, 24.735832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080532, 34.335762, 24.413465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131592, 34.711224, 24.541609>,  <37.162228, 34.936501, 24.618494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131592, 34.711224, 24.541609>,  <37.080532, 34.335762, 24.413465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131592, 34.711224, 24.541609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465288, 0.341925, -0.816452,
		-0.875907, -0.044840, 0.480392,
		0.127649, 0.938657, 0.320358,
		37.169888, 34.992821, 24.637716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442104, 34.610985, 24.428991>,  <37.080532, 34.335762, 24.413465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442104, 34.610985, 24.428991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662792, 34.944576, 24.432455>,  <36.795204, 35.144733, 24.434534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662792, 34.944576, 24.432455>,  <36.442104, 34.610985, 24.428991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662792, 34.944576, 24.432455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492562, 0.334200, -0.803550,
		-0.673042, 0.439070, 0.595174,
		0.551722, 0.833983, 0.008661,
		36.828308, 35.194771, 24.435053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951157, 35.205822, 24.405832>,  <36.442104, 34.610985, 24.428991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951157, 35.205822, 24.405832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315948, 35.295448, 24.268372>,  <36.534824, 35.349224, 24.185896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315948, 35.295448, 24.268372>,  <35.951157, 35.205822, 24.405832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315948, 35.295448, 24.268372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410237, 0.503418, -0.760444,
		0.002613, 0.834485, 0.551024,
		0.911975, 0.224063, -0.343652,
		36.589542, 35.362667, 24.165276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925488, 35.891171, 24.120270>,  <35.951157, 35.205822, 24.405832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925488, 35.891171, 24.120270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265617, 35.762993, 23.953293>,  <36.469696, 35.686089, 23.853107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265617, 35.762993, 23.953293>,  <35.925488, 35.891171, 24.120270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265617, 35.762993, 23.953293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171598, 0.581046, -0.795575,
		0.497489, 0.748132, 0.439093,
		0.850329, -0.320442, -0.417442,
		36.520718, 35.666859, 23.828060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233685, 36.465969, 23.811462>,  <35.925488, 35.891171, 24.120270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233685, 36.465969, 23.811462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368195, 36.147663, 23.609997>,  <36.448898, 35.956680, 23.489119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368195, 36.147663, 23.609997>,  <36.233685, 36.465969, 23.811462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368195, 36.147663, 23.609997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396148, 0.365668, -0.842231,
		0.854393, 0.482745, -0.192277,
		0.336273, -0.795767, -0.503663,
		36.469078, 35.908932, 23.458899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648319, 36.744839, 23.250593>,  <36.233685, 36.465969, 23.811462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648319, 36.744839, 23.250593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514126, 36.376659, 23.170364>,  <36.433609, 36.155754, 23.122227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514126, 36.376659, 23.170364>,  <36.648319, 36.744839, 23.250593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514126, 36.376659, 23.170364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305376, 0.307675, -0.901156,
		0.891176, -0.241075, -0.384302,
		-0.335486, -0.920445, -0.200574,
		36.413479, 36.100525, 23.110191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811466, 36.685753, 22.506056>,  <36.648319, 36.744839, 23.250593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811466, 36.685753, 22.506056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534889, 36.405941, 22.578228>,  <36.368942, 36.238052, 22.621532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534889, 36.405941, 22.578228>,  <36.811466, 36.685753, 22.506056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534889, 36.405941, 22.578228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319616, 0.072231, -0.944790,
		0.647879, -0.710941, -0.273526,
		-0.691447, -0.699533, 0.180432,
		36.327454, 36.196083, 22.632357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780571, 36.323898, 21.814968>,  <36.811466, 36.685753, 22.506056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780571, 36.323898, 21.814968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446129, 36.208073, 22.001337>,  <36.245464, 36.138577, 22.113157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446129, 36.208073, 22.001337>,  <36.780571, 36.323898, 21.814968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446129, 36.208073, 22.001337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505851, 0.078371, -0.859054,
		0.212235, -0.953945, -0.212001,
		-0.836105, -0.289562, 0.465921,
		36.195297, 36.121204, 22.141113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.295876, 36.338291, 25.025131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.679026, 36.399075, 24.927656>,  <28.908916, 36.435547, 24.869171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.679026, 36.399075, 24.927656>,  <28.295876, 36.338291, 25.025131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679026, 36.399075, 24.927656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285739, -0.589371, 0.755642,
		-0.028792, -0.793441, -0.607965,
		0.957874, 0.151963, -0.243687,
		28.966389, 36.444664, 24.854549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645763, 35.771225, 25.103949>,  <28.295876, 36.338291, 25.025131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645763, 35.771225, 25.103949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.969730, 36.005795, 25.108740>,  <29.164110, 36.146534, 25.111614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.969730, 36.005795, 25.108740>,  <28.645763, 35.771225, 25.103949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969730, 36.005795, 25.108740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402766, -0.570883, 0.715452,
		0.426395, -0.574633, -0.698559,
		0.809918, 0.586421, 0.011979,
		29.212706, 36.181721, 25.112333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218317, 35.349689, 25.198524>,  <28.645763, 35.771225, 25.103949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218317, 35.349689, 25.198524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.368990, 35.699783, 25.319897>,  <29.459393, 35.909840, 25.392719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.368990, 35.699783, 25.319897>,  <29.218317, 35.349689, 25.198524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368990, 35.699783, 25.319897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492751, -0.466683, 0.734441,
		0.784416, -0.127135, -0.607065,
		0.376680, 0.875239, 0.303428,
		29.481995, 35.962357, 25.410925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014328, 35.293667, 25.196678>,  <29.218317, 35.349689, 25.198524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014328, 35.293667, 25.196678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.899853, 35.576820, 25.454979>,  <29.831167, 35.746712, 25.609959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.899853, 35.576820, 25.454979>,  <30.014328, 35.293667, 25.196678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899853, 35.576820, 25.454979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527664, -0.446105, 0.722884,
		0.799791, 0.547621, -0.245854,
		-0.286190, 0.707885, 0.645751,
		29.813995, 35.789185, 25.648705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630331, 35.381237, 25.647663>,  <30.014328, 35.293667, 25.196678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630331, 35.381237, 25.647663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.330336, 35.549839, 25.851566>,  <30.150339, 35.651001, 25.973907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.330336, 35.549839, 25.851566>,  <30.630331, 35.381237, 25.647663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330336, 35.549839, 25.851566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414537, -0.301026, 0.858803,
		0.515441, 0.855404, 0.051036,
		-0.749987, 0.421506, 0.509758,
		30.105339, 35.676292, 26.004494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956539, 35.662319, 26.268328>,  <30.630331, 35.381237, 25.647663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956539, 35.662319, 26.268328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.568962, 35.635754, 26.363607>,  <30.336416, 35.619816, 26.420774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.568962, 35.635754, 26.363607>,  <30.956539, 35.662319, 26.268328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568962, 35.635754, 26.363607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246548, -0.333606, 0.909902,
		0.019037, 0.940370, 0.339619,
		-0.968943, -0.066411, 0.238197,
		30.278278, 35.615829, 26.435066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937731, 36.059933, 26.815926>,  <30.956539, 35.662319, 26.268328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937731, 36.059933, 26.815926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.636425, 35.796867, 26.819315>,  <30.455641, 35.639030, 26.821348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.636425, 35.796867, 26.819315>,  <30.937731, 36.059933, 26.815926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636425, 35.796867, 26.819315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373960, -0.417655, 0.828081,
		-0.541058, 0.626935, 0.560544,
		-0.753267, -0.657661, 0.008473,
		30.410444, 35.599567, 26.821857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718502, 36.003559, 27.496906>,  <30.937731, 36.059933, 26.815926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718502, 36.003559, 27.496906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.590240, 35.670872, 27.315609>,  <30.513285, 35.471260, 27.206831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.590240, 35.670872, 27.315609>,  <30.718502, 36.003559, 27.496906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590240, 35.670872, 27.315609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500249, -0.555035, 0.664596,
		-0.804321, -0.013631, 0.594038,
		-0.320653, -0.831716, -0.453245,
		30.494045, 35.421356, 27.179636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641239, 35.588253, 28.078108>,  <30.718502, 36.003559, 27.496906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641239, 35.588253, 28.078108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.592508, 35.342083, 27.766619>,  <30.563271, 35.194382, 27.579725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.592508, 35.342083, 27.766619>,  <30.641239, 35.588253, 28.078108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592508, 35.342083, 27.766619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274815, -0.774810, 0.569339,
		-0.953748, -0.144644, 0.263520,
		-0.121827, -0.615425, -0.778724,
		30.555960, 35.157455, 27.533001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048405, 35.096901, 28.306082>,  <30.641239, 35.588253, 28.078108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048405, 35.096901, 28.306082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.241215, 34.889366, 28.023674>,  <30.356901, 34.764847, 27.854229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.241215, 34.889366, 28.023674>,  <30.048405, 35.096901, 28.306082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241215, 34.889366, 28.023674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073390, -0.779072, 0.622624,
		-0.873079, -0.351934, -0.337454,
		0.482024, -0.518834, -0.706020,
		30.385822, 34.733715, 27.811869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705509, 34.358879, 28.216713>,  <30.048405, 35.096901, 28.306082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705509, 34.358879, 28.216713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.086470, 34.369339, 28.095224>,  <30.315046, 34.375614, 28.022331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.086470, 34.369339, 28.095224>,  <29.705509, 34.358879, 28.216713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086470, 34.369339, 28.095224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179671, -0.853017, 0.489980,
		-0.246267, -0.521228, -0.817113,
		0.952403, 0.026146, -0.303719,
		30.372190, 34.377182, 28.004108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853819, 33.638184, 28.146393>,  <29.705509, 34.358879, 28.216713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853819, 33.638184, 28.146393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.220396, 33.791615, 28.100788>,  <30.440342, 33.883675, 28.073425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.220396, 33.791615, 28.100788>,  <29.853819, 33.638184, 28.146393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220396, 33.791615, 28.100788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383308, -0.759622, 0.525404,
		0.114929, -0.525204, -0.843180,
		0.916442, 0.383582, -0.114012,
		30.495329, 33.906689, 28.066584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272684, 33.087914, 27.917282>,  <29.853819, 33.638184, 28.146393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272684, 33.087914, 27.917282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.539320, 33.351685, 28.056314>,  <30.699303, 33.509949, 28.139734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.539320, 33.351685, 28.056314>,  <30.272684, 33.087914, 27.917282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539320, 33.351685, 28.056314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434053, -0.722450, 0.538205,
		0.606016, -0.207895, -0.767805,
		0.666591, 0.659428, 0.347579,
		30.739298, 33.549515, 28.160587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988211, 32.672646, 28.083353>,  <30.272684, 33.087914, 27.917282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988211, 32.672646, 28.083353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.018810, 33.009861, 28.296309>,  <31.037170, 33.212189, 28.424082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.018810, 33.009861, 28.296309>,  <30.988211, 32.672646, 28.083353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018810, 33.009861, 28.296309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501389, -0.494057, 0.710294,
		0.861834, 0.212599, -0.460482,
		0.076497, 0.843036, 0.532390,
		31.041759, 33.262772, 28.456026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555647, 32.650326, 27.627167>,  <30.988211, 32.672646, 28.083353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555647, 32.650326, 27.627167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.756443, 32.383690, 27.406742>,  <31.876921, 32.223709, 27.274488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.756443, 32.383690, 27.406742>,  <31.555647, 32.650326, 27.627167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756443, 32.383690, 27.406742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368785, 0.411353, -0.833539,
		0.782307, 0.621650, -0.039333,
		0.501989, -0.666588, -0.551059,
		31.907040, 32.183712, 27.241425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036243, 32.982544, 27.186476>,  <31.555647, 32.650326, 27.627167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036243, 32.982544, 27.186476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.983866, 32.628117, 27.008602>,  <31.952438, 32.415462, 26.901878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.983866, 32.628117, 27.008602>,  <32.036243, 32.982544, 27.186476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983866, 32.628117, 27.008602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206455, 0.463084, -0.861934,
		0.969655, -0.021058, -0.243570,
		-0.130944, -0.886064, -0.444684,
		31.944582, 32.362297, 26.875196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358334, 33.025112, 26.557390>,  <32.036243, 32.982544, 27.186476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358334, 33.025112, 26.557390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.121220, 32.710686, 26.487299>,  <31.978951, 32.522030, 26.445244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.121220, 32.710686, 26.487299>,  <32.358334, 33.025112, 26.557390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121220, 32.710686, 26.487299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136587, 0.312553, -0.940029,
		0.793690, -0.533305, -0.292644,
		-0.592789, -0.786063, -0.175228,
		31.943382, 32.474865, 26.434731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606815, 32.862202, 25.901405>,  <32.358334, 33.025112, 26.557390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606815, 32.862202, 25.901405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.242847, 32.700981, 25.940590>,  <32.024467, 32.604248, 25.964100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.242847, 32.700981, 25.940590>,  <32.606815, 32.862202, 25.901405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242847, 32.700981, 25.940590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284484, 0.434553, -0.854536,
		0.301850, -0.805429, -0.510069,
		-0.909920, -0.403048, 0.097962,
		31.969872, 32.580067, 25.969978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409351, 32.530281, 25.304216>,  <32.606815, 32.862202, 25.901405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409351, 32.530281, 25.304216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.063068, 32.623394, 25.481466>,  <31.855299, 32.679260, 25.587816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.063068, 32.623394, 25.481466>,  <32.409351, 32.530281, 25.304216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063068, 32.623394, 25.481466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294627, 0.478704, -0.827065,
		-0.404653, -0.846555, -0.345833,
		-0.865708, 0.232782, 0.443127,
		31.803356, 32.693230, 25.614405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795870, 32.290531, 24.904610>,  <32.409351, 32.530281, 25.304216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795870, 32.290531, 24.904610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.654041, 32.591755, 25.126303>,  <31.568943, 32.772491, 25.259319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.654041, 32.591755, 25.126303>,  <31.795870, 32.290531, 24.904610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654041, 32.591755, 25.126303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408228, 0.408590, -0.816336,
		-0.841206, -0.515704, 0.162546,
		-0.354573, 0.753063, 0.554233,
		31.547668, 32.817673, 25.292572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213755, 32.407528, 24.552845>,  <31.795870, 32.290531, 24.904610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213755, 32.407528, 24.552845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.180077, 32.735565, 24.779247>,  <31.159870, 32.932388, 24.915089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.180077, 32.735565, 24.779247>,  <31.213755, 32.407528, 24.552845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180077, 32.735565, 24.779247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341025, 0.510007, -0.789681,
		-0.936276, -0.259509, 0.236731,
		-0.084195, 0.820091, 0.566006,
		31.154818, 32.981594, 24.949049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493332, 32.770309, 24.511007>,  <31.213755, 32.407528, 24.552845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493332, 32.770309, 24.511007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.761551, 33.041821, 24.630764>,  <30.922482, 33.204727, 24.702618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.761551, 33.041821, 24.630764>,  <30.493332, 32.770309, 24.511007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761551, 33.041821, 24.630764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395476, 0.668495, -0.629851,
		-0.627668, 0.303942, 0.716695,
		0.670546, 0.678773, 0.299391,
		30.962715, 33.245453, 24.720581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069496, 33.419125, 24.546267>,  <30.493332, 32.770309, 24.511007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069496, 33.419125, 24.546267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449339, 33.544445, 24.542490>,  <30.677244, 33.619637, 24.540224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449339, 33.544445, 24.542490>,  <30.069496, 33.419125, 24.546267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449339, 33.544445, 24.542490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233038, 0.685554, -0.689717,
		-0.209613, 0.657161, 0.724018,
		0.949608, 0.313297, -0.009442,
		30.734221, 33.638435, 24.539658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035349, 34.166523, 24.592449>,  <30.069496, 33.419125, 24.546267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035349, 34.166523, 24.592449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.389414, 34.087692, 24.423857>,  <30.601852, 34.040394, 24.322701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.389414, 34.087692, 24.423857>,  <30.035349, 34.166523, 24.592449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389414, 34.087692, 24.423857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202418, 0.652537, -0.730220,
		0.418944, 0.731680, 0.537709,
		0.885163, -0.197079, -0.421481,
		30.654963, 34.028568, 24.297413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409800, 34.782181, 24.410435>,  <30.035349, 34.166523, 24.592449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409800, 34.782181, 24.410435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.597139, 34.510540, 24.184347>,  <30.709543, 34.347557, 24.048695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.597139, 34.510540, 24.184347>,  <30.409800, 34.782181, 24.410435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597139, 34.510540, 24.184347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078825, 0.605053, -0.792274,
		0.880019, 0.415616, 0.229847,
		0.468351, -0.679098, -0.565219,
		30.737644, 34.306812, 24.014782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913757, 35.219509, 24.055822>,  <30.409800, 34.782181, 24.410435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913757, 35.219509, 24.055822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.898676, 34.869247, 23.863239>,  <30.889627, 34.659088, 23.747690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.898676, 34.869247, 23.863239>,  <30.913757, 35.219509, 24.055822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898676, 34.869247, 23.863239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007025, 0.481555, -0.876388,
		0.999264, -0.036423, -0.012004,
		-0.037701, -0.875659, -0.481456,
		30.887365, 34.606548, 23.718801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333200, 35.371811, 23.537762>,  <30.913757, 35.219509, 24.055822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333200, 35.371811, 23.537762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.119261, 35.053986, 23.422800>,  <30.990898, 34.863289, 23.353823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.119261, 35.053986, 23.422800>,  <31.333200, 35.371811, 23.537762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119261, 35.053986, 23.422800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200026, 0.449540, -0.870577,
		0.820932, -0.408137, -0.399369,
		-0.534846, -0.794568, -0.287403,
		30.958807, 34.815617, 23.336578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586145, 35.099384, 22.945070>,  <31.333200, 35.371811, 23.537762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586145, 35.099384, 22.945070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.210407, 34.966282, 22.911831>,  <30.984964, 34.886421, 22.891888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.210407, 34.966282, 22.911831>,  <31.586145, 35.099384, 22.945070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210407, 34.966282, 22.911831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106977, 0.514454, -0.850819,
		0.325865, -0.790323, -0.518847,
		-0.939344, -0.332757, -0.083096,
		30.928604, 34.866455, 22.886902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079144, 34.516407, 22.610516>,  <31.586145, 35.099384, 22.945070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079144, 34.516407, 22.610516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342613, 34.326260, 22.377218>,  <32.500694, 34.212170, 22.237240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342613, 34.326260, 22.377218>,  <32.079144, 34.516407, 22.610516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342613, 34.326260, 22.377218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314593, -0.530156, 0.787379,
		-0.683505, -0.702111, -0.199653,
		0.658675, -0.475368, -0.583244,
		32.540215, 34.183651, 22.202246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061554, 33.819424, 22.743078>,  <32.079144, 34.516407, 22.610516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061554, 33.819424, 22.743078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.432335, 33.872311, 22.602631>,  <32.654804, 33.904041, 22.518362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.432335, 33.872311, 22.602631>,  <32.061554, 33.819424, 22.743078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432335, 33.872311, 22.602631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351757, -0.631787, 0.690733,
		-0.130507, -0.763783, -0.632143,
		0.926949, 0.132216, -0.351119,
		32.710419, 33.911976, 22.497295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396141, 33.177975, 22.716352>,  <32.061554, 33.819424, 22.743078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396141, 33.177975, 22.716352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.702053, 33.432762, 22.677614>,  <32.885601, 33.585636, 22.654371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.702053, 33.432762, 22.677614>,  <32.396141, 33.177975, 22.716352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702053, 33.432762, 22.677614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580174, -0.615478, 0.533465,
		0.280196, -0.464171, -0.840259,
		0.764780, 0.636971, -0.096845,
		32.931488, 33.623852, 22.648561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052650, 32.769665, 22.414717>,  <32.396141, 33.177975, 22.716352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052650, 32.769665, 22.414717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.167629, 33.095325, 22.616524>,  <33.236614, 33.290722, 22.737608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.167629, 33.095325, 22.616524>,  <33.052650, 32.769665, 22.414717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167629, 33.095325, 22.616524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621309, -0.559381, 0.548697,
		0.728939, 0.155743, -0.666628,
		0.287443, 0.814148, 0.504519,
		33.253860, 33.339569, 22.767879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807049, 32.928867, 22.256657>,  <33.052650, 32.769665, 22.414717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807049, 32.928867, 22.256657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710377, 33.098896, 22.605576>,  <33.652374, 33.200912, 22.814928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710377, 33.098896, 22.605576>,  <33.807049, 32.928867, 22.256657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710377, 33.098896, 22.605576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709191, -0.536185, 0.457770,
		0.662299, 0.729260, -0.171873,
		-0.241678, 0.425071, 0.872299,
		33.637875, 33.226418, 22.867266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474312, 33.136147, 22.641987>,  <33.807049, 32.928867, 22.256657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474312, 33.136147, 22.641987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.178257, 33.128151, 22.910851>,  <34.000626, 33.123352, 23.072168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.178257, 33.128151, 22.910851>,  <34.474312, 33.136147, 22.641987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178257, 33.128151, 22.910851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628518, -0.375953, 0.680900,
		0.239088, 0.926423, 0.290821,
		-0.740136, -0.019991, 0.672160,
		33.956215, 33.122154, 23.112499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808411, 33.312653, 23.137096>,  <34.474312, 33.136147, 22.641987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808411, 33.312653, 23.137096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.487747, 33.117130, 23.274744>,  <34.295349, 32.999817, 23.357332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.487747, 33.117130, 23.274744>,  <34.808411, 33.312653, 23.137096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487747, 33.117130, 23.274744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564377, -0.429113, 0.705224,
		-0.197051, 0.759560, 0.619871,
		-0.801654, -0.488806, 0.344121,
		34.247250, 32.970490, 23.377981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971333, 33.373615, 23.769773>,  <34.808411, 33.312653, 23.137096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971333, 33.373615, 23.769773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.705864, 33.079945, 23.712458>,  <34.546581, 32.903744, 23.678068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.705864, 33.079945, 23.712458>,  <34.971333, 33.373615, 23.769773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705864, 33.079945, 23.712458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453135, -0.547000, 0.703889,
		-0.595155, 0.402222, 0.695707,
		-0.663671, -0.734172, -0.143289,
		34.506763, 32.859692, 23.669472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920410, 33.157619, 24.490047>,  <34.971333, 33.373615, 23.769773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920410, 33.157619, 24.490047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760582, 32.873859, 24.257809>,  <34.664684, 32.703602, 24.118465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760582, 32.873859, 24.257809>,  <34.920410, 33.157619, 24.490047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760582, 32.873859, 24.257809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388294, -0.704706, 0.593816,
		-0.830403, 0.011831, 0.557038,
		-0.399573, -0.709401, -0.580596,
		34.640709, 32.661037, 24.083630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584415, 32.740376, 24.891327>,  <34.920410, 33.157619, 24.490047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584415, 32.740376, 24.891327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.692650, 32.550415, 24.556364>,  <34.757591, 32.436440, 24.355387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.692650, 32.550415, 24.556364>,  <34.584415, 32.740376, 24.891327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692650, 32.550415, 24.556364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518669, -0.660902, 0.542394,
		-0.811029, -0.581100, 0.067489,
		0.270581, -0.474902, -0.837409,
		34.773823, 32.407944, 24.305141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707874, 32.160343, 25.174311>,  <34.584415, 32.740376, 24.891327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707874, 32.160343, 25.174311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.864437, 32.092361, 24.812555>,  <34.958374, 32.051571, 24.595503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.864437, 32.092361, 24.812555>,  <34.707874, 32.160343, 25.174311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864437, 32.092361, 24.812555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535630, -0.757075, 0.374083,
		-0.748264, -0.630836, -0.205295,
		0.391409, -0.169951, -0.904387,
		34.981857, 32.041374, 24.541239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711723, 31.467150, 25.063013>,  <34.707874, 32.160343, 25.174311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711723, 31.467150, 25.063013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999763, 31.601856, 24.820347>,  <35.172588, 31.682680, 24.674747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999763, 31.601856, 24.820347>,  <34.711723, 31.467150, 25.063013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999763, 31.601856, 24.820347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648462, -0.637720, 0.415704,
		-0.246887, -0.692748, -0.677604,
		0.720100, 0.336769, -0.606666,
		35.215794, 31.702887, 24.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939091, 30.882378, 24.724663>,  <34.711723, 31.467150, 25.063013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939091, 30.882378, 24.724663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234734, 31.149326, 24.688126>,  <35.412117, 31.309496, 24.666203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234734, 31.149326, 24.688126>,  <34.939091, 30.882378, 24.724663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234734, 31.149326, 24.688126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633739, -0.642998, 0.430034,
		0.228259, -0.375727, -0.898180,
		0.739103, 0.667370, -0.091343,
		35.456463, 31.349537, 24.660723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459011, 30.474081, 24.531410>,  <34.939091, 30.882378, 24.724663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459011, 30.474081, 24.531410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638409, 30.803726, 24.669794>,  <35.746048, 31.001513, 24.752825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638409, 30.803726, 24.669794>,  <35.459011, 30.474081, 24.531410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638409, 30.803726, 24.669794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705846, -0.564035, 0.428540,
		0.548298, 0.051995, -0.834665,
		0.448498, 0.824112, 0.345960,
		35.772957, 31.050961, 24.773582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.550865, 35.589771, 21.501438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238510, 35.779728, 21.663765>,  <36.051098, 35.893703, 21.761162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238510, 35.779728, 21.663765>,  <36.550865, 35.589771, 21.501438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238510, 35.779728, 21.663765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476382, -0.032505, -0.878637,
		-0.404069, -0.879442, 0.251615,
		-0.780889, 0.474895, 0.405816,
		36.004242, 35.922195, 21.785509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000526, 35.229778, 21.175100>,  <36.550865, 35.589771, 21.501438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000526, 35.229778, 21.175100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839752, 35.572304, 21.304825>,  <35.743290, 35.777821, 21.382660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839752, 35.572304, 21.304825>,  <36.000526, 35.229778, 21.175100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839752, 35.572304, 21.304825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392315, 0.158980, -0.905988,
		-0.827368, -0.491379, 0.272045,
		-0.401934, 0.856313, 0.324311,
		35.719173, 35.829197, 21.402119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328159, 35.258480, 20.893318>,  <36.000526, 35.229778, 21.175100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328159, 35.258480, 20.893318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348396, 35.645657, 20.991730>,  <35.360538, 35.877964, 21.050776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348396, 35.645657, 20.991730>,  <35.328159, 35.258480, 20.893318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348396, 35.645657, 20.991730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647039, 0.219419, -0.730203,
		-0.760777, -0.122248, 0.637396,
		0.050591, 0.967941, 0.246028,
		35.363575, 35.936039, 21.065538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687366, 35.398354, 20.888168>,  <35.328159, 35.258480, 20.893318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687366, 35.398354, 20.888168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.892521, 35.739609, 20.850004>,  <35.015614, 35.944363, 20.827105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.892521, 35.739609, 20.850004>,  <34.687366, 35.398354, 20.888168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892521, 35.739609, 20.850004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632528, 0.300421, -0.713902,
		-0.580392, 0.426501, 0.693716,
		0.512887, 0.853138, -0.095412,
		35.046387, 35.995548, 20.821381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178513, 35.916157, 20.777836>,  <34.687366, 35.398354, 20.888168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178513, 35.916157, 20.777836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503666, 36.102905, 20.638546>,  <34.698757, 36.214954, 20.554972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503666, 36.102905, 20.638546>,  <34.178513, 35.916157, 20.777836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503666, 36.102905, 20.638546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544137, 0.395531, -0.739913,
		-0.207710, 0.790941, 0.575560,
		0.812879, 0.466870, -0.348224,
		34.747528, 36.242966, 20.534079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923096, 36.642262, 20.600040>,  <34.178513, 35.916157, 20.777836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923096, 36.642262, 20.600040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.268921, 36.552982, 20.419943>,  <34.476414, 36.499416, 20.311884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.268921, 36.552982, 20.419943>,  <33.923096, 36.642262, 20.600040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268921, 36.552982, 20.419943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351736, 0.371129, -0.859386,
		0.358910, 0.901358, 0.242358,
		0.864561, -0.223196, -0.450242,
		34.528290, 36.486023, 20.284870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998360, 37.257904, 20.253635>,  <33.923096, 36.642262, 20.600040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998360, 37.257904, 20.253635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201195, 36.954090, 20.090677>,  <34.322895, 36.771801, 19.992903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201195, 36.954090, 20.090677>,  <33.998360, 37.257904, 20.253635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201195, 36.954090, 20.090677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327782, 0.267215, -0.906176,
		0.797135, 0.593044, -0.113462,
		0.507084, -0.759536, -0.407396,
		34.353321, 36.726231, 19.968458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272408, 37.599556, 19.755514>,  <33.998360, 37.257904, 20.253635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272408, 37.599556, 19.755514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259525, 37.216915, 19.639673>,  <34.251797, 36.987331, 19.570168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259525, 37.216915, 19.639673>,  <34.272408, 37.599556, 19.755514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259525, 37.216915, 19.639673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440666, 0.273663, -0.854940,
		0.897093, 0.100081, -0.430358,
		-0.032210, -0.956605, -0.289603,
		34.249863, 36.929935, 19.552792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777428, 37.459126, 19.168310>,  <34.272408, 37.599556, 19.755514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777428, 37.459126, 19.168310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481468, 37.190079, 19.173052>,  <34.303894, 37.028652, 19.175896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481468, 37.190079, 19.173052>,  <34.777428, 37.459126, 19.168310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481468, 37.190079, 19.173052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319786, 0.336163, -0.885850,
		0.591853, -0.659228, -0.463820,
		-0.739896, -0.672617, 0.011853,
		34.259499, 36.988293, 19.176607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731491, 37.288296, 18.496866>,  <34.777428, 37.459126, 19.168310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731491, 37.288296, 18.496866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406719, 37.123466, 18.662256>,  <34.211857, 37.024567, 18.761490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406719, 37.123466, 18.662256>,  <34.731491, 37.288296, 18.496866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406719, 37.123466, 18.662256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562278, 0.361719, -0.743641,
		0.156875, -0.836274, -0.525392,
		-0.811932, -0.412075, 0.413474,
		34.163139, 36.999844, 18.786299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347095, 36.733612, 17.980852>,  <34.731491, 37.288296, 18.496866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347095, 36.733612, 17.980852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063850, 36.851318, 18.237597>,  <33.893902, 36.921944, 18.391644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063850, 36.851318, 18.237597>,  <34.347095, 36.733612, 17.980852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063850, 36.851318, 18.237597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604043, 0.218301, -0.766470,
		-0.365665, -0.930458, 0.023167,
		-0.708111, 0.294266, 0.641862,
		33.851418, 36.939598, 18.430155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732723, 36.509624, 17.664263>,  <34.347095, 36.733612, 17.980852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732723, 36.509624, 17.664263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655750, 36.810169, 17.916748>,  <33.609566, 36.990498, 18.068239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655750, 36.810169, 17.916748>,  <33.732723, 36.509624, 17.664263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655750, 36.810169, 17.916748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452361, 0.502894, -0.736524,
		-0.870828, -0.427263, 0.243116,
		-0.192428, 0.751361, 0.631211,
		33.598022, 37.035576, 18.106112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001659, 36.669010, 17.592237>,  <33.732723, 36.509624, 17.664263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001659, 36.669010, 17.592237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198647, 36.996090, 17.711460>,  <33.316841, 37.192337, 17.782993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198647, 36.996090, 17.711460>,  <33.001659, 36.669010, 17.592237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198647, 36.996090, 17.711460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298951, 0.480560, -0.824433,
		-0.817373, 0.316906, 0.481115,
		0.492473, 0.817700, 0.298058,
		33.346390, 37.241402, 17.800877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487671, 37.334793, 17.473923>,  <33.001659, 36.669010, 17.592237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487671, 37.334793, 17.473923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870342, 37.449890, 17.456152>,  <33.099945, 37.518948, 17.445490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870342, 37.449890, 17.456152>,  <32.487671, 37.334793, 17.473923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870342, 37.449890, 17.456152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257013, 0.762930, -0.593197,
		-0.136791, 0.578916, 0.803831,
		0.956678, 0.287739, -0.044427,
		33.157345, 37.536213, 17.442823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957232, 36.755791, 17.271379>,  <32.487671, 37.334793, 17.473923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957232, 36.755791, 17.271379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609045, 36.558907, 17.273149>,  <31.400133, 36.440777, 17.274212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609045, 36.558907, 17.273149>,  <31.957232, 36.755791, 17.271379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609045, 36.558907, 17.273149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277434, -0.483173, 0.830406,
		-0.406592, 0.724070, 0.557141,
		-0.870467, -0.492206, 0.004427,
		31.347904, 36.411243, 17.274477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690817, 36.750710, 18.039837>,  <31.957232, 36.755791, 17.271379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690817, 36.750710, 18.039837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478237, 36.462914, 17.861000>,  <31.350689, 36.290237, 17.753698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478237, 36.462914, 17.861000>,  <31.690817, 36.750710, 18.039837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478237, 36.462914, 17.861000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020679, -0.538663, 0.842268,
		-0.846837, 0.438378, 0.301151,
		-0.531450, -0.719491, -0.447094,
		31.318802, 36.247066, 17.726871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132832, 36.728603, 18.518345>,  <31.690817, 36.750710, 18.039837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132832, 36.728603, 18.518345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206034, 36.379200, 18.337904>,  <31.249954, 36.169559, 18.229639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206034, 36.379200, 18.337904>,  <31.132832, 36.728603, 18.518345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206034, 36.379200, 18.337904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153178, -0.427911, 0.890746,
		-0.971106, -0.232108, 0.055493,
		0.183003, -0.873509, -0.451100,
		31.260935, 36.117146, 18.202574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830832, 36.165245, 18.897545>,  <31.132832, 36.728603, 18.518345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830832, 36.165245, 18.897545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081810, 35.961250, 18.662182>,  <31.232397, 35.838852, 18.520964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081810, 35.961250, 18.662182>,  <30.830832, 36.165245, 18.897545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081810, 35.961250, 18.662182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256051, -0.578506, 0.774448,
		-0.735356, -0.636587, -0.232398,
		0.627447, -0.509989, -0.588406,
		31.270044, 35.808254, 18.485661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707441, 35.437252, 18.940023>,  <30.830832, 36.165245, 18.897545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707441, 35.437252, 18.940023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084099, 35.444107, 18.805555>,  <31.310093, 35.448219, 18.724874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084099, 35.444107, 18.805555>,  <30.707441, 35.437252, 18.940023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084099, 35.444107, 18.805555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287757, -0.559138, 0.777535,
		-0.174643, -0.828897, -0.531441,
		0.941645, 0.017135, -0.336171,
		31.366592, 35.449249, 18.704704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778378, 34.777431, 18.797083>,  <30.707441, 35.437252, 18.940023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778378, 34.777431, 18.797083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137154, 34.948547, 18.841806>,  <31.352419, 35.051216, 18.868641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137154, 34.948547, 18.841806>,  <30.778378, 34.777431, 18.797083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137154, 34.948547, 18.841806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248834, -0.697394, 0.672103,
		0.365490, -0.575014, -0.731968,
		0.896938, 0.427785, 0.111808,
		31.406235, 35.076881, 18.875349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278885, 34.346355, 18.781288>,  <30.778378, 34.777431, 18.797083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278885, 34.346355, 18.781288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.473379, 34.649178, 18.955849>,  <31.590075, 34.830872, 19.060585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.473379, 34.649178, 18.955849>,  <31.278885, 34.346355, 18.781288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473379, 34.649178, 18.955849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323143, -0.619790, 0.715149,
		0.811884, -0.206710, -0.546000,
		0.486234, 0.757054, 0.436400,
		31.619249, 34.876293, 19.086769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800739, 33.945335, 19.150614>,  <31.278885, 34.346355, 18.781288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800739, 33.945335, 19.150614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852774, 34.312366, 19.300880>,  <31.883995, 34.532585, 19.391041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852774, 34.312366, 19.300880>,  <31.800739, 33.945335, 19.150614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852774, 34.312366, 19.300880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352213, -0.396940, 0.847576,
		0.926835, 0.022057, -0.374820,
		0.130086, 0.917579, 0.375667,
		31.891800, 34.587639, 19.413580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488941, 33.923515, 19.561512>,  <31.800739, 33.945335, 19.150614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488941, 33.923515, 19.561512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302032, 34.244225, 19.710543>,  <32.189888, 34.436649, 19.799961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302032, 34.244225, 19.710543>,  <32.488941, 33.923515, 19.561512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302032, 34.244225, 19.710543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362267, -0.210780, 0.907928,
		0.806488, 0.559218, -0.191967,
		-0.467267, 0.801777, 0.372578,
		32.161854, 34.484756, 19.822317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941124, 34.118156, 19.990593>,  <32.488941, 33.923515, 19.561512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941124, 34.118156, 19.990593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.599937, 34.290665, 20.108204>,  <32.395226, 34.394169, 20.178770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.599937, 34.290665, 20.108204>,  <32.941124, 34.118156, 19.990593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599937, 34.290665, 20.108204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227439, -0.199926, 0.953048,
		0.469804, 0.879794, 0.072443,
		-0.852969, 0.431269, 0.294026,
		32.344048, 34.420044, 20.196411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166142, 34.643005, 20.380671>,  <32.941124, 34.118156, 19.990593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166142, 34.643005, 20.380671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795822, 34.528015, 20.478863>,  <32.573631, 34.459019, 20.537777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795822, 34.528015, 20.478863>,  <33.166142, 34.643005, 20.380671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795822, 34.528015, 20.478863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301223, -0.168648, 0.938521,
		-0.228405, 0.942822, 0.242728,
		-0.925795, -0.287479, 0.245480,
		32.518085, 34.441772, 20.552507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004341, 35.014271, 20.964863>,  <33.166142, 34.643005, 20.380671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004341, 35.014271, 20.964863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.748222, 34.708080, 20.990355>,  <32.594551, 34.524364, 21.005650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.748222, 34.708080, 20.990355>,  <33.004341, 35.014271, 20.964863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748222, 34.708080, 20.990355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338491, -0.206707, 0.917985,
		-0.689525, 0.609355, 0.391461,
		-0.640297, -0.765479, 0.063731,
		32.556133, 34.478436, 21.009474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535889, 35.223492, 21.523317>,  <33.004341, 35.014271, 20.964863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535889, 35.223492, 21.523317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477318, 34.832745, 21.460987>,  <32.442173, 34.598297, 21.423588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477318, 34.832745, 21.460987>,  <32.535889, 35.223492, 21.523317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477318, 34.832745, 21.460987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336724, -0.197339, 0.920692,
		-0.930148, 0.082345, 0.357832,
		-0.146429, -0.976871, -0.155827,
		32.433388, 34.539684, 21.414240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317024, 35.026871, 22.143175>,  <32.535889, 35.223492, 21.523317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317024, 35.026871, 22.143175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.426365, 34.690098, 21.957085>,  <32.491970, 34.488033, 21.845430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.426365, 34.690098, 21.957085>,  <32.317024, 35.026871, 22.143175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426365, 34.690098, 21.957085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402952, -0.338939, 0.850147,
		-0.873446, -0.419854, 0.246607,
		0.273352, -0.841928, -0.465226,
		32.508369, 34.437519, 21.817516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514677, 34.920078, 22.228788>,  <32.317024, 35.026871, 22.143175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514677, 34.920078, 22.228788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143633, 34.983360, 22.364145>,  <30.921007, 35.021332, 22.445360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143633, 34.983360, 22.364145>,  <31.514677, 34.920078, 22.228788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143633, 34.983360, 22.364145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214671, 0.515585, -0.829511,
		-0.305706, -0.842105, -0.444299,
		-0.927610, 0.158209, 0.338394,
		30.865351, 35.030823, 22.465664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094090, 34.829407, 21.623510>,  <31.514677, 34.920078, 22.228788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094090, 34.829407, 21.623510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.847178, 35.026134, 21.869135>,  <30.699030, 35.144173, 22.016510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.847178, 35.026134, 21.869135>,  <31.094090, 34.829407, 21.623510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847178, 35.026134, 21.869135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344956, 0.532289, -0.773093,
		-0.707084, -0.689041, -0.158915,
		-0.617282, 0.491823, 0.614062,
		30.661993, 35.173683, 22.053354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575520, 34.823822, 21.208876>,  <31.094090, 34.829407, 21.623510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575520, 34.823822, 21.208876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515347, 35.124557, 21.465658>,  <30.479242, 35.305000, 21.619728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515347, 35.124557, 21.465658>,  <30.575520, 34.823822, 21.208876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515347, 35.124557, 21.465658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381115, 0.555052, -0.739371,
		-0.912207, -0.355885, 0.203039,
		-0.150433, 0.751840, 0.641955,
		30.470217, 35.350109, 21.658245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837511, 35.093590, 21.072561>,  <30.575520, 34.823822, 21.208876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837511, 35.093590, 21.072561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037714, 35.385887, 21.258253>,  <30.157835, 35.561264, 21.369667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037714, 35.385887, 21.258253>,  <29.837511, 35.093590, 21.072561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037714, 35.385887, 21.258253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293897, 0.647798, -0.702839,
		-0.814320, 0.215340, 0.538990,
		0.500506, 0.730744, 0.464227,
		30.187866, 35.605110, 21.397522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330198, 35.495102, 21.355223>,  <29.837511, 35.093590, 21.072561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330198, 35.495102, 21.355223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649963, 35.728287, 21.297121>,  <29.841822, 35.868198, 21.262260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649963, 35.728287, 21.297121>,  <29.330198, 35.495102, 21.355223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649963, 35.728287, 21.297121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579015, 0.683097, -0.445107,
		-0.160259, 0.439927, 0.883618,
		0.799412, 0.582961, -0.145252,
		29.889788, 35.903175, 21.253546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105854, 36.156479, 21.576914>,  <29.330198, 35.495102, 21.355223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105854, 36.156479, 21.576914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430603, 36.216190, 21.351143>,  <29.625452, 36.252018, 21.215681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430603, 36.216190, 21.351143>,  <29.105854, 36.156479, 21.576914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430603, 36.216190, 21.351143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537347, 0.569092, -0.622409,
		0.228299, 0.808610, 0.542245,
		0.811873, 0.149278, -0.564427,
		29.674166, 36.260975, 21.181814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057323, 36.791389, 21.472479>,  <29.105854, 36.156479, 21.576914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057323, 36.791389, 21.472479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273573, 36.648186, 21.167965>,  <29.403322, 36.562263, 20.985256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273573, 36.648186, 21.167965>,  <29.057323, 36.791389, 21.472479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273573, 36.648186, 21.167965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537528, 0.549113, -0.639952,
		0.647140, 0.755186, 0.104425,
		0.540624, -0.358007, -0.761287,
		29.435760, 36.540783, 20.939579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341547, 37.343403, 21.846491>,  <29.057323, 36.791389, 21.472479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341547, 37.343403, 21.846491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.133869, 37.616394, 22.052271>,  <29.009262, 37.780190, 22.175739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.133869, 37.616394, 22.052271>,  <29.341547, 37.343403, 21.846491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133869, 37.616394, 22.052271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257252, -0.449230, 0.855578,
		0.815020, 0.576556, 0.057670,
		-0.519195, 0.682477, 0.514452,
		28.978111, 37.821136, 22.206606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792875, 37.493782, 22.432892>,  <29.341547, 37.343403, 21.846491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792875, 37.493782, 22.432892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430183, 37.613556, 22.551672>,  <29.212568, 37.685421, 22.622940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430183, 37.613556, 22.551672>,  <29.792875, 37.493782, 22.432892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430183, 37.613556, 22.551672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135188, -0.460602, 0.877251,
		0.399455, 0.835574, 0.377162,
		-0.906730, 0.299435, 0.296950,
		29.158165, 37.703384, 22.640757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903828, 37.995770, 23.098146>,  <29.792875, 37.493782, 22.432892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903828, 37.995770, 23.098146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.537994, 37.835217, 23.117847>,  <29.318495, 37.738884, 23.129667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.537994, 37.835217, 23.117847>,  <29.903828, 37.995770, 23.098146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537994, 37.835217, 23.117847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202800, -0.349868, 0.914584,
		-0.349868, 0.846453, 0.401385,
		-0.914584, -0.401385, 0.049253,
		29.263618, 37.714802, 23.132624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615128, 38.230854, 23.753855>,  <29.903828, 37.995770, 23.098146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615128, 38.230854, 23.753855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.359268, 37.941616, 23.649555>,  <29.205753, 37.768074, 23.586975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.359268, 37.941616, 23.649555>,  <29.615128, 38.230854, 23.753855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359268, 37.941616, 23.649555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087396, -0.405437, 0.909936,
		-0.763683, 0.559250, 0.322532,
		-0.639648, -0.723091, -0.260749,
		29.167374, 37.724689, 23.571331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293591, 37.972557, 24.360376>,  <29.615128, 38.230854, 23.753855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293591, 37.972557, 24.360376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221960, 37.674381, 24.103550>,  <29.178982, 37.495476, 23.949453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221960, 37.674381, 24.103550>,  <29.293591, 37.972557, 24.360376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221960, 37.674381, 24.103550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122350, -0.664425, 0.737272,
		-0.976198, 0.053470, 0.210187,
		-0.179076, -0.745440, -0.642068,
		29.168238, 37.450748, 23.910929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720173, 37.607708, 24.608532>,  <29.293591, 37.972557, 24.360376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720173, 37.607708, 24.608532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.929829, 37.336254, 24.402721>,  <29.055622, 37.173382, 24.279236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.929829, 37.336254, 24.402721>,  <28.720173, 37.607708, 24.608532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929829, 37.336254, 24.402721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009339, -0.608705, 0.793341,
		-0.851581, -0.411016, -0.325384,
		0.524139, -0.678633, -0.514523,
		29.087070, 37.132664, 24.248363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297544, 37.020603, 24.670534>,  <28.720173, 37.607708, 24.608532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297544, 37.020603, 24.670534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.673326, 36.911102, 24.588087>,  <28.898796, 36.845402, 24.538618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.673326, 36.911102, 24.588087>,  <28.297544, 37.020603, 24.670534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673326, 36.911102, 24.588087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044567, -0.498780, 0.865582,
		-0.339762, -0.822362, -0.456381,
		0.939455, -0.273752, -0.206117,
		28.955162, 36.828976, 24.526253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.720406, 39.659134, 19.204124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.983131, 39.375278, 19.306110>,  <33.140766, 39.204967, 19.367302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.983131, 39.375278, 19.306110>,  <32.720406, 39.659134, 19.204124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983131, 39.375278, 19.306110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284345, 0.080077, 0.955372,
		-0.698383, -0.700004, -0.149185,
		0.656818, -0.709635, 0.254967,
		33.180176, 39.162388, 19.382601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407124, 39.210342, 19.687716>,  <32.720406, 39.659134, 19.204124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407124, 39.210342, 19.687716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.778748, 39.067463, 19.726187>,  <33.001724, 38.981735, 19.749269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.778748, 39.067463, 19.726187>,  <32.407124, 39.210342, 19.687716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778748, 39.067463, 19.726187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088899, 0.036787, 0.995361,
		-0.359078, -0.933305, 0.002423,
		0.929064, -0.357196, 0.096179,
		33.057468, 38.960304, 19.755041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377422, 38.625816, 20.191406>,  <32.407124, 39.210342, 19.687716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377422, 38.625816, 20.191406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.757824, 38.747952, 20.210815>,  <32.986065, 38.821232, 20.222460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.757824, 38.747952, 20.210815>,  <32.377422, 38.625816, 20.191406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757824, 38.747952, 20.210815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013234, -0.116596, 0.993091,
		0.308881, -0.945080, -0.106843,
		0.951008, 0.305333, 0.048521,
		33.043125, 38.839550, 20.225372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769886, 38.086975, 20.404701>,  <32.377422, 38.625816, 20.191406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769886, 38.086975, 20.404701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024193, 38.380333, 20.500988>,  <33.176777, 38.556347, 20.558760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024193, 38.380333, 20.500988>,  <32.769886, 38.086975, 20.404701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024193, 38.380333, 20.500988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016322, -0.324561, 0.945724,
		0.771712, -0.597327, -0.218314,
		0.635762, 0.733390, 0.240718,
		33.214920, 38.600349, 20.573204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404587, 37.782730, 20.865597>,  <32.769886, 38.086975, 20.404701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404587, 37.782730, 20.865597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.419472, 38.177174, 20.930349>,  <33.428402, 38.413841, 20.969202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.419472, 38.177174, 20.930349>,  <33.404587, 37.782730, 20.865597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419472, 38.177174, 20.930349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231163, -0.166096, 0.958632,
		0.972203, 0.001745, -0.234133,
		0.037216, 0.986108, 0.161882,
		33.430637, 38.473007, 20.978914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984589, 37.904858, 21.270588>,  <33.404587, 37.782730, 20.865597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984589, 37.904858, 21.270588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.769314, 38.236156, 21.333029>,  <33.640148, 38.434937, 21.370493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.769314, 38.236156, 21.333029>,  <33.984589, 37.904858, 21.270588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769314, 38.236156, 21.333029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187449, -0.062951, 0.980255,
		0.821718, 0.556818, -0.121375,
		-0.538183, 0.828245, 0.156103,
		33.607861, 38.484631, 21.379860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407673, 38.421654, 21.609060>,  <33.984589, 37.904858, 21.270588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407673, 38.421654, 21.609060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035004, 38.546291, 21.683777>,  <33.811401, 38.621075, 21.728607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035004, 38.546291, 21.683777>,  <34.407673, 38.421654, 21.609060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035004, 38.546291, 21.683777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179710, -0.051566, 0.982367,
		0.315728, 0.948816, -0.007953,
		-0.931676, 0.311590, 0.186793,
		33.755501, 38.639767, 21.739815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479816, 38.950268, 22.097864>,  <34.407673, 38.421654, 21.609060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479816, 38.950268, 22.097864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099747, 38.833286, 22.141026>,  <33.871704, 38.763100, 22.166922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099747, 38.833286, 22.141026>,  <34.479816, 38.950268, 22.097864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099747, 38.833286, 22.141026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143955, -0.104641, 0.984036,
		-0.276492, 0.950538, 0.141527,
		-0.950173, -0.292452, 0.107902,
		33.814693, 38.745552, 22.173397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261528, 39.330799, 22.769285>,  <34.479816, 38.950268, 22.097864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261528, 39.330799, 22.769285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.011440, 39.027580, 22.695030>,  <33.861389, 38.845650, 22.650476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.011440, 39.027580, 22.695030>,  <34.261528, 39.330799, 22.769285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011440, 39.027580, 22.695030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027528, -0.216292, 0.975941,
		-0.779962, 0.615289, 0.114363,
		-0.625221, -0.758049, -0.185637,
		33.823875, 38.800167, 22.639339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725357, 39.482754, 23.144627>,  <34.261528, 39.330799, 22.769285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725357, 39.482754, 23.144627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.723667, 39.087139, 23.085585>,  <33.722652, 38.849770, 23.050159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.723667, 39.087139, 23.085585>,  <33.725357, 39.482754, 23.144627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723667, 39.087139, 23.085585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036412, -0.147355, 0.988413,
		-0.999328, 0.009548, -0.035391,
		-0.004223, -0.989038, -0.147604,
		33.722401, 38.790428, 23.041304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235455, 39.204140, 23.661507>,  <33.725357, 39.482754, 23.144627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235455, 39.204140, 23.661507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.448761, 38.884464, 23.550562>,  <33.576744, 38.692661, 23.483995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.448761, 38.884464, 23.550562>,  <33.235455, 39.204140, 23.661507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448761, 38.884464, 23.550562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034457, -0.348120, 0.936817,
		-0.845245, -0.490017, -0.213178,
		0.533267, -0.799185, -0.277362,
		33.608742, 38.644711, 23.467354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010117, 38.632393, 24.000065>,  <33.235455, 39.204140, 23.661507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010117, 38.632393, 24.000065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.366722, 38.489399, 23.888773>,  <33.580685, 38.403603, 23.821999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.366722, 38.489399, 23.888773>,  <33.010117, 38.632393, 24.000065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366722, 38.489399, 23.888773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132120, -0.382302, 0.914543,
		-0.433305, -0.852085, -0.293595,
		0.891511, -0.357486, -0.278231,
		33.634174, 38.382153, 23.805304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323074, 38.533501, 24.250626>,  <33.010117, 38.632393, 24.000065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323074, 38.533501, 24.250626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.212868, 38.875343, 24.426691>,  <32.146744, 39.080448, 24.532330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.212868, 38.875343, 24.426691>,  <32.323074, 38.533501, 24.250626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212868, 38.875343, 24.426691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321939, 0.349415, -0.879923,
		-0.905786, -0.384136, 0.178862,
		-0.275513, 0.854604, 0.440163,
		32.130215, 39.131725, 24.558741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507208, 38.656582, 24.067726>,  <32.323074, 38.533501, 24.250626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507208, 38.656582, 24.067726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.655506, 39.013866, 24.169495>,  <31.744484, 39.228237, 24.230556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.655506, 39.013866, 24.169495>,  <31.507208, 38.656582, 24.067726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655506, 39.013866, 24.169495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357000, 0.389957, -0.848814,
		-0.857380, 0.223864, 0.463449,
		0.370744, 0.893207, 0.254421,
		31.766729, 39.281830, 24.245821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033184, 39.124187, 23.985493>,  <31.507208, 38.656582, 24.067726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033184, 39.124187, 23.985493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380125, 39.321354, 23.957977>,  <31.588289, 39.439655, 23.941469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380125, 39.321354, 23.957977>,  <31.033184, 39.124187, 23.985493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380125, 39.321354, 23.957977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353509, 0.512880, -0.782295,
		-0.350325, 0.702844, 0.619099,
		0.867354, 0.492915, -0.068787,
		31.640331, 39.469227, 23.937342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812641, 39.764843, 23.956499>,  <31.033184, 39.124187, 23.985493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812641, 39.764843, 23.956499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178337, 39.751591, 23.794971>,  <31.397755, 39.743641, 23.698055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178337, 39.751591, 23.794971>,  <30.812641, 39.764843, 23.956499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178337, 39.751591, 23.794971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350427, 0.435662, -0.829096,
		0.203396, 0.899500, 0.386689,
		0.914238, -0.033129, -0.403821,
		31.452608, 39.741653, 23.673824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793304, 40.357235, 23.654762>,  <30.812641, 39.764843, 23.956499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793304, 40.357235, 23.654762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.099436, 40.154854, 23.495621>,  <31.283115, 40.033424, 23.400135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.099436, 40.154854, 23.495621>,  <30.793304, 40.357235, 23.654762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099436, 40.154854, 23.495621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128506, 0.485574, -0.864699,
		0.630682, 0.712905, 0.306606,
		0.765328, -0.505949, -0.397855,
		31.329035, 40.003071, 23.376265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259253, 40.880402, 23.390339>,  <30.793304, 40.357235, 23.654762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259253, 40.880402, 23.390339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.300409, 40.539501, 23.185175>,  <31.325104, 40.334961, 23.062077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.300409, 40.539501, 23.185175>,  <31.259253, 40.880402, 23.390339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300409, 40.539501, 23.185175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040800, 0.518827, -0.853905,
		0.993856, 0.066932, 0.088155,
		0.102891, -0.852255, -0.512909,
		31.331276, 40.283825, 23.031301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817204, 40.989479, 22.790060>,  <31.259253, 40.880402, 23.390339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817204, 40.989479, 22.790060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.587322, 40.682045, 22.677645>,  <31.449392, 40.497585, 22.610195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.587322, 40.682045, 22.677645>,  <31.817204, 40.989479, 22.790060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587322, 40.682045, 22.677645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171448, 0.448877, -0.876992,
		0.800200, -0.455828, -0.389745,
		-0.574705, -0.768590, -0.281040,
		31.414911, 40.451469, 22.593332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770741, 40.961922, 22.030985>,  <31.817204, 40.989479, 22.790060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770741, 40.961922, 22.030985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.477585, 40.693043, 22.072973>,  <31.301691, 40.531715, 22.098167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.477585, 40.693043, 22.072973>,  <31.770741, 40.961922, 22.030985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477585, 40.693043, 22.072973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215536, 0.083056, -0.972957,
		0.645302, -0.735697, -0.205754,
		-0.732891, -0.672199, 0.104973,
		31.257717, 40.491383, 22.104465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919024, 40.445137, 21.485424>,  <31.770741, 40.961922, 22.030985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919024, 40.445137, 21.485424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540884, 40.407162, 21.610195>,  <31.313999, 40.384377, 21.685057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540884, 40.407162, 21.610195>,  <31.919024, 40.445137, 21.485424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540884, 40.407162, 21.610195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310034, -0.034441, -0.950101,
		0.100950, -0.994886, 0.003123,
		-0.945351, -0.094944, 0.311926,
		31.257278, 40.378677, 21.703773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554949, 39.926945, 21.155205>,  <31.919024, 40.445137, 21.485424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554949, 39.926945, 21.155205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.245440, 40.141171, 21.290525>,  <31.059734, 40.269707, 21.371717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.245440, 40.141171, 21.290525>,  <31.554949, 39.926945, 21.155205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245440, 40.141171, 21.290525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258336, 0.220838, -0.940475,
		-0.578392, -0.815110, -0.032524,
		-0.773773, 0.535562, 0.338303,
		31.013308, 40.301838, 21.392015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920687, 39.631390, 20.818647>,  <31.554949, 39.926945, 21.155205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920687, 39.631390, 20.818647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829081, 40.003414, 20.933559>,  <30.774117, 40.226631, 21.002506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829081, 40.003414, 20.933559>,  <30.920687, 39.631390, 20.818647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829081, 40.003414, 20.933559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424357, 0.170212, -0.889353,
		-0.876055, -0.325586, 0.355699,
		-0.229016, 0.930066, 0.287280,
		30.760376, 40.282433, 21.019743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360401, 39.792145, 20.494284>,  <30.920687, 39.631390, 20.818647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360401, 39.792145, 20.494284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478983, 40.153259, 20.618925>,  <30.550133, 40.369926, 20.693710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478983, 40.153259, 20.618925>,  <30.360401, 39.792145, 20.494284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478983, 40.153259, 20.618925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417395, 0.415933, -0.807949,
		-0.859009, 0.109459, 0.500123,
		0.296455, 0.902784, 0.311603,
		30.567919, 40.424095, 20.712406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790569, 40.263920, 20.393475>,  <30.360401, 39.792145, 20.494284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790569, 40.263920, 20.393475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109081, 40.505829, 20.398985>,  <30.300188, 40.650974, 20.402290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109081, 40.505829, 20.398985>,  <29.790569, 40.263920, 20.393475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109081, 40.505829, 20.398985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369942, 0.504854, -0.779914,
		-0.478624, 0.615933, 0.625736,
		0.796280, 0.604772, 0.013776,
		30.347965, 40.687260, 20.403118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486832, 40.866798, 20.426796>,  <29.790569, 40.263920, 20.393475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486832, 40.866798, 20.426796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847982, 40.935970, 20.269363>,  <30.064672, 40.977474, 20.174904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847982, 40.935970, 20.269363>,  <29.486832, 40.866798, 20.426796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847982, 40.935970, 20.269363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411187, 0.614535, -0.673255,
		0.125444, 0.769702, 0.625957,
		0.902878, 0.172930, -0.393581,
		30.118847, 40.987850, 20.151289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992245, 40.399540, 20.592537>,  <29.486832, 40.866798, 20.426796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992245, 40.399540, 20.592537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732065, 40.147453, 20.422951>,  <28.575958, 39.996201, 20.321199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732065, 40.147453, 20.422951>,  <28.992245, 40.399540, 20.592537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732065, 40.147453, 20.422951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032011, -0.580427, 0.813683,
		-0.758875, 0.515688, 0.397712,
		-0.650449, -0.630215, -0.423964,
		28.536930, 39.958389, 20.295761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418257, 40.341923, 21.027670>,  <28.992245, 40.399540, 20.592537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418257, 40.341923, 21.027670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455341, 39.999870, 20.823647>,  <28.477592, 39.794640, 20.701233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455341, 39.999870, 20.823647>,  <28.418257, 40.341923, 21.027670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455341, 39.999870, 20.823647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002861, -0.512489, 0.858689,
		-0.995689, -0.078152, -0.049961,
		0.092713, -0.855130, -0.510056,
		28.483154, 39.743332, 20.670630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062445, 39.774490, 21.461359>,  <28.418257, 40.341923, 21.027670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062445, 39.774490, 21.461359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263554, 39.567375, 21.184486>,  <28.384218, 39.443108, 21.018362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263554, 39.567375, 21.184486>,  <28.062445, 39.774490, 21.461359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263554, 39.567375, 21.184486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116394, -0.752904, 0.647756,
		-0.856548, -0.406238, -0.318269,
		0.502769, -0.517790, -0.692182,
		28.414385, 39.412037, 20.976831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794228, 39.153099, 21.526594>,  <28.062445, 39.774490, 21.461359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794228, 39.153099, 21.526594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139959, 39.070133, 21.343330>,  <28.347399, 39.020351, 21.233372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139959, 39.070133, 21.343330>,  <27.794228, 39.153099, 21.526594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139959, 39.070133, 21.343330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183075, -0.718726, 0.670758,
		-0.468418, -0.663634, -0.583244,
		0.864331, -0.207418, -0.458159,
		28.399258, 39.007908, 21.205883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728758, 38.494198, 21.243118>,  <27.794228, 39.153099, 21.526594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728758, 38.494198, 21.243118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123388, 38.545372, 21.283705>,  <28.360167, 38.576077, 21.308056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123388, 38.545372, 21.283705>,  <27.728758, 38.494198, 21.243118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123388, 38.545372, 21.283705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026923, -0.740334, 0.671700,
		0.161055, -0.659953, -0.733842,
		0.986578, 0.127938, 0.101466,
		28.419361, 38.583752, 21.314144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088703, 37.884216, 21.289307>,  <27.728758, 38.494198, 21.243118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088703, 37.884216, 21.289307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378981, 38.101906, 21.457682>,  <28.553146, 38.232521, 21.558706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378981, 38.101906, 21.457682>,  <28.088703, 37.884216, 21.289307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378981, 38.101906, 21.457682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127219, -0.707402, 0.695268,
		0.676156, -0.450999, -0.582592,
		0.725692, 0.544227, 0.420938,
		28.596687, 38.265175, 21.583963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609226, 37.459957, 21.460016>,  <28.088703, 37.884216, 21.289307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609226, 37.459957, 21.460016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685274, 37.778816, 21.689243>,  <28.730902, 37.970131, 21.826780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685274, 37.778816, 21.689243>,  <28.609226, 37.459957, 21.460016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685274, 37.778816, 21.689243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137227, -0.599562, 0.788476,
		0.972123, -0.071263, -0.223378,
		0.190118, 0.797149, 0.573069,
		28.742310, 38.017960, 21.861164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775467, 37.198315, 20.826447>,  <28.609226, 37.459957, 21.460016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775467, 37.198315, 20.826447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033850, 36.973217, 20.620121>,  <29.188879, 36.838158, 20.496326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033850, 36.973217, 20.620121>,  <28.775467, 37.198315, 20.826447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033850, 36.973217, 20.620121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347784, 0.384560, -0.855079,
		0.679549, 0.731735, 0.052697,
		0.645956, -0.562741, -0.515813,
		29.227636, 36.804394, 20.465378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224545, 37.645851, 20.442503>,  <28.775467, 37.198315, 20.826447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224545, 37.645851, 20.442503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255352, 37.292137, 20.258278>,  <29.273836, 37.079910, 20.147743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255352, 37.292137, 20.258278>,  <29.224545, 37.645851, 20.442503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255352, 37.292137, 20.258278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001491, 0.461830, -0.886967,
		0.997029, 0.068999, 0.034251,
		0.077018, -0.884280, -0.460561,
		29.278458, 37.026852, 20.120110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797415, 37.662201, 19.971052>,  <29.224545, 37.645851, 20.442503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797415, 37.662201, 19.971052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581156, 37.364483, 19.814224>,  <29.451401, 37.185852, 19.720127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581156, 37.364483, 19.814224>,  <29.797415, 37.662201, 19.971052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581156, 37.364483, 19.814224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033161, 0.446841, -0.893999,
		0.840595, -0.496340, -0.216902,
		-0.540648, -0.744298, -0.392072,
		29.418961, 37.141193, 19.696602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123127, 37.500000, 19.242466>,  <29.797415, 37.662201, 19.971052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123127, 37.500000, 19.242466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.755781, 37.344391, 19.271482>,  <29.535374, 37.251026, 19.288893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.755781, 37.344391, 19.271482>,  <30.123127, 37.500000, 19.242466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755781, 37.344391, 19.271482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165749, 0.211672, -0.963183,
		0.359348, -0.896579, -0.258873,
		-0.918366, -0.389026, 0.072543,
		29.480270, 37.227684, 19.293245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180134, 37.072407, 18.665325>,  <30.123127, 37.500000, 19.242466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180134, 37.072407, 18.665325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801947, 37.136189, 18.778933>,  <29.575035, 37.174458, 18.847097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801947, 37.136189, 18.778933>,  <30.180134, 37.072407, 18.665325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801947, 37.136189, 18.778933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281199, 0.040454, -0.958796,
		-0.164374, -0.986376, 0.006591,
		-0.945467, 0.159454, 0.284018,
		29.518307, 37.184025, 18.864138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751827, 36.557648, 18.363300>,  <30.180134, 37.072407, 18.665325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751827, 36.557648, 18.363300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487648, 36.835724, 18.476805>,  <29.329142, 37.002571, 18.544909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487648, 36.835724, 18.476805>,  <29.751827, 36.557648, 18.363300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487648, 36.835724, 18.476805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447082, -0.060458, -0.892448,
		-0.603265, -0.716279, 0.350736,
		-0.660446, 0.695190, 0.283763,
		29.289515, 37.044281, 18.561934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198351, 36.192490, 18.259993>,  <29.751827, 36.557648, 18.363300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198351, 36.192490, 18.259993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124580, 36.585480, 18.249199>,  <29.080318, 36.821274, 18.242723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124580, 36.585480, 18.249199>,  <29.198351, 36.192490, 18.259993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124580, 36.585480, 18.249199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392236, -0.098745, -0.914549,
		-0.901187, -0.158083, 0.403573,
		-0.184426, 0.982476, -0.026982,
		29.069252, 36.880222, 18.241104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400543, 36.265144, 18.132063>,  <29.198351, 36.192490, 18.259993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400543, 36.265144, 18.132063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.581596, 36.604546, 18.022400>,  <28.690228, 36.808186, 17.956602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.581596, 36.604546, 18.022400>,  <28.400543, 36.265144, 18.132063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581596, 36.604546, 18.022400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483300, -0.024933, -0.875100,
		-0.749362, 0.528599, 0.398798,
		0.452633, 0.848506, -0.274156,
		28.717386, 36.859097, 17.940153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987894, 36.633057, 17.657396>,  <28.400543, 36.265144, 18.132063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987894, 36.633057, 17.657396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351337, 36.783905, 17.585611>,  <28.569403, 36.874416, 17.542540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351337, 36.783905, 17.585611>,  <27.987894, 36.633057, 17.657396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351337, 36.783905, 17.585611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279173, 0.228822, -0.932579,
		-0.310633, 0.897450, 0.313193,
		0.908608, 0.377125, -0.179464,
		28.623920, 36.897041, 17.531773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.844296, 30.613409, 31.027821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104080, 30.732731, 30.748043>,  <35.259949, 30.804323, 30.580177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104080, 30.732731, 30.748043>,  <34.844296, 30.613409, 31.027821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104080, 30.732731, 30.748043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759445, 0.300513, -0.577006,
		0.038069, 0.905929, 0.421716,
		0.649457, 0.298304, -0.699443,
		35.298916, 30.822222, 30.538210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621906, 31.214106, 30.835585>,  <34.844296, 30.613409, 31.027821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621906, 31.214106, 30.835585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818890, 31.045422, 30.531048>,  <34.937080, 30.944212, 30.348326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818890, 31.045422, 30.531048>,  <34.621906, 31.214106, 30.835585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818890, 31.045422, 30.531048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574046, 0.500130, -0.648337,
		0.654180, 0.756327, 0.004215,
		0.492463, -0.421709, -0.761342,
		34.966629, 30.918909, 30.302645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497581, 31.618999, 30.361469>,  <34.621906, 31.214106, 30.835585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497581, 31.618999, 30.361469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637764, 31.329329, 30.123901>,  <34.721874, 31.155525, 29.981359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637764, 31.329329, 30.123901>,  <34.497581, 31.618999, 30.361469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637764, 31.329329, 30.123901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606940, 0.307359, -0.732908,
		0.713304, 0.617329, -0.331817,
		0.350458, -0.724180, -0.593922,
		34.742901, 31.112074, 29.945724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666779, 31.897869, 29.692581>,  <34.497581, 31.618999, 30.361469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666779, 31.897869, 29.692581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575169, 31.514481, 29.624607>,  <34.520203, 31.284447, 29.583822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575169, 31.514481, 29.624607>,  <34.666779, 31.897869, 29.692581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575169, 31.514481, 29.624607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691871, 0.283085, -0.664211,
		0.684734, -0.034548, -0.727973,
		-0.229026, -0.958472, -0.169935,
		34.506462, 31.226938, 29.573626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607670, 31.862419, 28.986139>,  <34.666779, 31.897869, 29.692581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607670, 31.862419, 28.986139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416092, 31.526373, 29.087975>,  <34.301144, 31.324745, 29.149076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416092, 31.526373, 29.087975>,  <34.607670, 31.862419, 28.986139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416092, 31.526373, 29.087975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572985, 0.079463, -0.815704,
		0.665056, -0.536554, -0.519433,
		-0.478945, -0.840116, 0.254590,
		34.272408, 31.274338, 29.164352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686066, 31.438040, 28.398802>,  <34.607670, 31.862419, 28.986139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686066, 31.438040, 28.398802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365723, 31.332966, 28.614071>,  <34.173519, 31.269922, 28.743233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365723, 31.332966, 28.614071>,  <34.686066, 31.438040, 28.398802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365723, 31.332966, 28.614071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583033, 0.136767, -0.800854,
		0.136767, -0.955140, -0.262684,
		0.800854, 0.262684, -0.538172,
		34.125465, 31.254160, 28.775522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249798, 31.026138, 27.946503>,  <34.686066, 31.438040, 28.398802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249798, 31.026138, 27.946503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995853, 31.097897, 28.247107>,  <33.843487, 31.140951, 28.427469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995853, 31.097897, 28.247107>,  <34.249798, 31.026138, 27.946503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995853, 31.097897, 28.247107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769080, -0.053679, -0.636895,
		-0.073925, -0.982309, 0.172059,
		-0.634863, 0.179409, 0.751506,
		33.805393, 31.151716, 28.472559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638470, 30.530531, 27.929201>,  <34.249798, 31.026138, 27.946503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638470, 30.530531, 27.929201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522591, 30.854948, 28.132488>,  <33.453064, 31.049599, 28.254461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522591, 30.854948, 28.132488>,  <33.638470, 30.530531, 27.929201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522591, 30.854948, 28.132488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756721, 0.131039, -0.640471,
		-0.586045, -0.570123, 0.575770,
		-0.289699, 0.811042, 0.508218,
		33.435680, 31.098261, 28.284954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946136, 30.473551, 27.911383>,  <33.638470, 30.530531, 27.929201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946136, 30.473551, 27.911383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011322, 30.861181, 27.985500>,  <33.050434, 31.093760, 28.029970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011322, 30.861181, 27.985500>,  <32.946136, 30.473551, 27.911383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011322, 30.861181, 27.985500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716238, 0.245364, -0.653300,
		-0.678561, -0.026247, 0.734075,
		0.162968, 0.969076, 0.185293,
		33.060211, 31.151903, 28.041088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362122, 30.762951, 27.722042>,  <32.946136, 30.473551, 27.911383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362122, 30.762951, 27.722042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581207, 31.097578, 27.727186>,  <32.712658, 31.298355, 27.730272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581207, 31.097578, 27.727186>,  <32.362122, 30.762951, 27.722042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581207, 31.097578, 27.727186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625119, 0.419394, -0.658281,
		-0.556091, 0.352509, 0.752662,
		0.547713, 0.836568, 0.012861,
		32.745522, 31.348549, 27.731045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849173, 31.290417, 27.943081>,  <32.362122, 30.762951, 27.722042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849173, 31.290417, 27.943081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166130, 31.469181, 27.777006>,  <32.356304, 31.576441, 27.677361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166130, 31.469181, 27.777006>,  <31.849173, 31.290417, 27.943081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166130, 31.469181, 27.777006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609389, 0.610619, -0.505756,
		0.027493, 0.653769, 0.756194,
		0.792395, 0.446912, -0.415187,
		32.403847, 31.603254, 27.652451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611204, 32.001801, 27.986383>,  <31.849173, 31.290417, 27.943081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611204, 32.001801, 27.986383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915228, 31.949371, 27.731783>,  <32.097641, 31.917913, 27.579023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915228, 31.949371, 27.731783>,  <31.611204, 32.001801, 27.986383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915228, 31.949371, 27.731783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505722, 0.495803, -0.705992,
		0.408114, 0.858487, 0.310553,
		0.760058, -0.131071, -0.636500,
		32.143246, 31.910049, 27.540833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671717, 32.668880, 28.409725>,  <31.611204, 32.001801, 27.986383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671717, 32.668880, 28.409725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461142, 32.932663, 28.624382>,  <31.334797, 33.090931, 28.753176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461142, 32.932663, 28.624382>,  <31.671717, 32.668880, 28.409725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461142, 32.932663, 28.624382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343215, -0.412641, 0.843760,
		0.777862, 0.628370, -0.009106,
		-0.526436, 0.659454, 0.536643,
		31.303211, 33.130501, 28.785376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152054, 32.976307, 28.955755>,  <31.671717, 32.668880, 28.409725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152054, 32.976307, 28.955755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784698, 33.030136, 29.104597>,  <31.564285, 33.062431, 29.193901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784698, 33.030136, 29.104597>,  <32.152054, 32.976307, 28.955755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784698, 33.030136, 29.104597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324760, -0.280895, 0.903122,
		0.226055, 0.950257, 0.214267,
		-0.918384, 0.134570, 0.372103,
		31.509184, 33.070507, 29.216228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136139, 33.351463, 29.555550>,  <32.152054, 32.976307, 28.955755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136139, 33.351463, 29.555550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773857, 33.188629, 29.602852>,  <31.556488, 33.090931, 29.631233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773857, 33.188629, 29.602852>,  <32.136139, 33.351463, 29.555550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773857, 33.188629, 29.602852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246359, -0.278449, 0.928318,
		-0.344974, 0.869914, 0.352481,
		-0.905704, -0.407083, 0.118254,
		31.502146, 33.066505, 29.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908222, 33.610703, 30.161060>,  <32.136139, 33.351463, 29.555550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908222, 33.610703, 30.161060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.658623, 33.301643, 30.114346>,  <31.508863, 33.116207, 30.086317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.658623, 33.301643, 30.114346>,  <31.908222, 33.610703, 30.161060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658623, 33.301643, 30.114346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213292, -0.312189, 0.925767,
		-0.751754, 0.552767, 0.359605,
		-0.623998, -0.772650, -0.116789,
		31.471424, 33.069847, 30.079309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529713, 33.580578, 30.746876>,  <31.908222, 33.610703, 30.161060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529713, 33.580578, 30.746876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481066, 33.213261, 30.596170>,  <31.451878, 32.992870, 30.505747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481066, 33.213261, 30.596170>,  <31.529713, 33.580578, 30.746876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481066, 33.213261, 30.596170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116982, -0.390194, 0.913271,
		-0.985659, 0.066995, 0.154878,
		-0.121617, -0.918292, -0.376761,
		31.444580, 32.937775, 30.483143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065357, 33.217705, 31.242651>,  <31.529713, 33.580578, 30.746876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065357, 33.217705, 31.242651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278290, 32.945038, 31.041870>,  <31.406050, 32.781437, 30.921402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278290, 32.945038, 31.041870>,  <31.065357, 33.217705, 31.242651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278290, 32.945038, 31.041870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145457, -0.510473, 0.847502,
		-0.833946, -0.524164, -0.172587,
		0.532331, -0.681667, -0.501950,
		31.437988, 32.740540, 30.891285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803963, 32.631958, 31.479660>,  <31.065357, 33.217705, 31.242651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803963, 32.631958, 31.479660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171349, 32.543102, 31.348770>,  <31.391781, 32.489788, 31.270237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171349, 32.543102, 31.348770>,  <30.803963, 32.631958, 31.479660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171349, 32.543102, 31.348770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245283, -0.329096, 0.911884,
		-0.310243, -0.917799, -0.247780,
		0.918469, -0.222130, -0.327221,
		31.446888, 32.476460, 31.250603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936659, 31.957237, 31.647861>,  <30.803963, 32.631958, 31.479660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936659, 31.957237, 31.647861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313971, 32.073204, 31.583147>,  <31.540358, 32.142784, 31.544319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313971, 32.073204, 31.583147>,  <30.936659, 31.957237, 31.647861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313971, 32.073204, 31.583147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259262, -0.338836, 0.904419,
		0.207388, -0.895063, -0.394781,
		0.943278, 0.289917, -0.161785,
		31.596954, 32.160179, 31.534611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250149, 31.444750, 31.953615>,  <30.936659, 31.957237, 31.647861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250149, 31.444750, 31.953615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515066, 31.743031, 31.924517>,  <31.674017, 31.921999, 31.907057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515066, 31.743031, 31.924517>,  <31.250149, 31.444750, 31.953615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515066, 31.743031, 31.924517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302103, -0.176931, 0.936712,
		0.685637, -0.642357, -0.342460,
		0.662296, 0.745702, -0.072747,
		31.713755, 31.966742, 31.902693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785803, 31.215004, 32.229347>,  <31.250149, 31.444750, 31.953615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785803, 31.215004, 32.229347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843380, 31.610678, 32.240639>,  <31.877926, 31.848082, 32.247414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843380, 31.610678, 32.240639>,  <31.785803, 31.215004, 32.229347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843380, 31.610678, 32.240639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300513, -0.070876, 0.951141,
		0.942853, -0.128426, -0.307464,
		0.143943, 0.989183, 0.028232,
		31.886562, 31.907433, 32.249107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517731, 31.327969, 32.540890>,  <31.785803, 31.215004, 32.229347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517731, 31.327969, 32.540890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304428, 31.664757, 32.573685>,  <32.176445, 31.866829, 32.593361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304428, 31.664757, 32.573685>,  <32.517731, 31.327969, 32.540890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304428, 31.664757, 32.573685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340892, 0.125179, 0.931731,
		0.774226, 0.524803, -0.353773,
		-0.533260, 0.841969, 0.081984,
		32.144451, 31.917347, 32.598278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975998, 31.888712, 32.747173>,  <32.517731, 31.327969, 32.540890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975998, 31.888712, 32.747173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604439, 31.974962, 32.867607>,  <32.381504, 32.026711, 32.939869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604439, 31.974962, 32.867607>,  <32.975998, 31.888712, 32.747173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604439, 31.974962, 32.867607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319910, 0.057628, 0.945694,
		0.186563, 0.974775, -0.122511,
		-0.928898, 0.215623, 0.301089,
		32.325768, 32.039650, 32.957935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017895, 32.141674, 33.431614>,  <32.975998, 31.888712, 32.747173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017895, 32.141674, 33.431614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620712, 32.098141, 33.412907>,  <32.382401, 32.072021, 33.401680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620712, 32.098141, 33.412907>,  <33.017895, 32.141674, 33.431614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620712, 32.098141, 33.412907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057193, 0.094705, 0.993861,
		-0.103733, 0.989539, -0.100263,
		-0.992959, -0.108831, -0.046771,
		32.322823, 32.065491, 33.398876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732380, 32.699875, 33.890282>,  <33.017895, 32.141674, 33.431614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732380, 32.699875, 33.890282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458866, 32.410183, 33.854652>,  <32.294758, 32.236370, 33.833275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458866, 32.410183, 33.854652>,  <32.732380, 32.699875, 33.890282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458866, 32.410183, 33.854652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056477, -0.069182, 0.996004,
		-0.727495, 0.686083, 0.006403,
		-0.683785, -0.724226, -0.089078,
		32.253731, 32.192917, 33.827930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372234, 32.911282, 33.758610>,  <32.732380, 32.699875, 33.890282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372234, 32.911282, 33.758610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732143, 33.064602, 33.675194>,  <33.948090, 33.156593, 33.625145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732143, 33.064602, 33.675194>,  <33.372234, 32.911282, 33.758610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732143, 33.064602, 33.675194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432612, 0.846083, -0.311432,
		0.057067, 0.370434, 0.927104,
		0.899772, 0.383304, -0.208537,
		34.002075, 33.179592, 33.612633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269936, 33.559551, 33.881580>,  <33.372234, 32.911282, 33.758610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269936, 33.559551, 33.881580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598122, 33.521870, 33.656029>,  <33.795033, 33.499260, 33.520699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598122, 33.521870, 33.656029>,  <33.269936, 33.559551, 33.881580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598122, 33.521870, 33.656029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218422, 0.859852, -0.461461,
		0.528320, 0.501778, 0.684907,
		0.820469, -0.094200, -0.563876,
		33.844261, 33.493610, 33.486866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683994, 34.171459, 33.890667>,  <33.269936, 33.559551, 33.881580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683994, 34.171459, 33.890667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770889, 34.005981, 33.537022>,  <33.823025, 33.906693, 33.324833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770889, 34.005981, 33.537022>,  <33.683994, 34.171459, 33.890667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770889, 34.005981, 33.537022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214302, 0.863435, -0.456677,
		0.952304, 0.288674, 0.098912,
		0.217235, -0.413698, -0.884117,
		33.836060, 33.881870, 33.271786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016338, 34.712620, 33.600922>,  <33.683994, 34.171459, 33.890667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016338, 34.712620, 33.600922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974236, 34.468468, 33.286888>,  <33.948975, 34.321976, 33.098469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974236, 34.468468, 33.286888>,  <34.016338, 34.712620, 33.600922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974236, 34.468468, 33.286888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081353, 0.792110, -0.604932,
		0.991112, 0.000198, -0.133029,
		-0.105254, -0.610378, -0.785086,
		33.942657, 34.285355, 33.051361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573433, 34.713684, 33.015293>,  <34.016338, 34.712620, 33.600922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573433, 34.713684, 33.015293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232876, 34.591763, 32.844543>,  <34.028542, 34.518608, 32.742096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232876, 34.591763, 32.844543>,  <34.573433, 34.713684, 33.015293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232876, 34.591763, 32.844543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086943, 0.720559, -0.687921,
		0.517270, -0.622806, -0.586980,
		-0.851395, -0.304807, -0.426872,
		33.977459, 34.500320, 32.716480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619389, 34.912243, 32.313057>,  <34.573433, 34.713684, 33.015293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619389, 34.912243, 32.313057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227352, 34.834587, 32.329735>,  <33.992130, 34.787994, 32.339741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227352, 34.834587, 32.329735>,  <34.619389, 34.912243, 32.313057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227352, 34.834587, 32.329735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173488, 0.735075, -0.655413,
		0.096590, -0.649597, -0.754119,
		-0.980088, -0.194137, 0.041697,
		33.933327, 34.776344, 32.342243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363850, 34.850227, 31.646976>,  <34.619389, 34.912243, 32.313057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363850, 34.850227, 31.646976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047359, 34.953468, 31.868731>,  <33.857464, 35.015411, 32.001781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047359, 34.953468, 31.868731>,  <34.363850, 34.850227, 31.646976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047359, 34.953468, 31.868731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214052, 0.732322, -0.646442,
		-0.572837, -0.630149, -0.524185,
		-0.791227, 0.258102, 0.554385,
		33.809990, 35.030899, 32.035046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007065, 35.177448, 31.143072>,  <34.363850, 34.850227, 31.646976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007065, 35.177448, 31.143072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778885, 35.273251, 31.457325>,  <33.641975, 35.330734, 31.645876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778885, 35.273251, 31.457325>,  <34.007065, 35.177448, 31.143072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778885, 35.273251, 31.457325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485195, 0.673521, -0.557634,
		-0.662698, -0.699289, -0.268004,
		-0.570454, 0.239509, 0.785633,
		33.607750, 35.345104, 31.693014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328323, 35.201294, 30.914497>,  <34.007065, 35.177448, 31.143072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328323, 35.201294, 30.914497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374714, 35.450333, 31.224058>,  <33.402550, 35.599754, 31.409794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374714, 35.450333, 31.224058>,  <33.328323, 35.201294, 30.914497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374714, 35.450333, 31.224058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268138, 0.769855, -0.579159,
		-0.956374, -0.140343, 0.256228,
		0.115978, 0.622596, 0.773901,
		33.409508, 35.637112, 31.456228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663128, 35.492886, 30.915478>,  <33.328323, 35.201294, 30.914497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663128, 35.492886, 30.915478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915890, 35.736038, 31.107801>,  <33.067547, 35.881931, 31.223196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915890, 35.736038, 31.107801>,  <32.663128, 35.492886, 30.915478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915890, 35.736038, 31.107801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323310, 0.770552, -0.549291,
		-0.704392, 0.191649, 0.683449,
		0.631904, 0.607882, 0.480809,
		33.105461, 35.918404, 31.252045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279099, 36.105648, 31.098356>,  <32.663128, 35.492886, 30.915478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279099, 36.105648, 31.098356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655300, 36.234016, 31.143013>,  <32.881020, 36.311039, 31.169807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655300, 36.234016, 31.143013>,  <32.279099, 36.105648, 31.098356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655300, 36.234016, 31.143013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204947, 0.797855, -0.566943,
		-0.271016, 0.510331, 0.816157,
		0.940504, 0.320920, 0.111641,
		32.937450, 36.330292, 31.176506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306801, 36.909668, 30.971472>,  <32.279099, 36.105648, 31.098356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306801, 36.909668, 30.971472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692070, 36.819309, 30.913136>,  <32.923233, 36.765095, 30.878134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692070, 36.819309, 30.913136>,  <32.306801, 36.909668, 30.971472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692070, 36.819309, 30.913136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021843, 0.606331, -0.794912,
		0.267999, 0.762451, 0.588935,
		0.963171, -0.225900, -0.145842,
		32.981022, 36.751537, 30.869383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792469, 37.549015, 30.973118>,  <32.306801, 36.909668, 30.971472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792469, 37.549015, 30.973118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981915, 37.261078, 30.770136>,  <33.095581, 37.088314, 30.648346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981915, 37.261078, 30.770136>,  <32.792469, 37.549015, 30.973118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981915, 37.261078, 30.770136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077106, 0.607852, -0.790298,
		0.877351, 0.335168, 0.343392,
		0.473614, -0.719846, -0.507455,
		33.124001, 37.045124, 30.617899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437336, 37.860008, 30.638294>,  <32.792469, 37.549015, 30.973118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437336, 37.860008, 30.638294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340454, 37.534492, 30.426981>,  <33.282326, 37.339184, 30.300192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340454, 37.534492, 30.426981>,  <33.437336, 37.860008, 30.638294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340454, 37.534492, 30.426981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111835, 0.517451, -0.848373,
		0.963759, -0.264558, -0.034318,
		-0.242202, -0.813789, -0.528285,
		33.267792, 37.290356, 30.268496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778309, 37.938778, 30.016859>,  <33.437336, 37.860008, 30.638294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778309, 37.938778, 30.016859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491146, 37.678284, 29.918472>,  <33.318848, 37.521988, 29.859440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491146, 37.678284, 29.918472>,  <33.778309, 37.938778, 30.016859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491146, 37.678284, 29.918472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004962, 0.358108, -0.933667,
		0.696118, -0.669068, -0.260321,
		-0.717910, -0.651234, -0.245965,
		33.275772, 37.482914, 29.844683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014282, 37.730488, 29.393328>,  <33.778309, 37.938778, 30.016859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014282, 37.730488, 29.393328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635040, 37.603416, 29.388027>,  <33.407494, 37.527172, 29.384846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635040, 37.603416, 29.388027>,  <34.014282, 37.730488, 29.393328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635040, 37.603416, 29.388027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100724, 0.339620, -0.935154,
		0.301579, -0.885291, -0.353993,
		-0.948106, -0.317678, -0.013252,
		33.350609, 37.508114, 29.384050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033920, 37.467152, 28.724909>,  <34.014282, 37.730488, 29.393328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033920, 37.467152, 28.724909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655880, 37.532166, 28.838306>,  <33.429054, 37.571175, 28.906345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655880, 37.532166, 28.838306>,  <34.033920, 37.467152, 28.724909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655880, 37.532166, 28.838306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250970, 0.194575, -0.948238,
		-0.209287, -0.967327, -0.143101,
		-0.945100, 0.162539, 0.283492,
		33.372349, 37.580929, 28.923353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657284, 37.152527, 28.305382>,  <34.033920, 37.467152, 28.724909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657284, 37.152527, 28.305382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426105, 37.436619, 28.466160>,  <33.287399, 37.607075, 28.562626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426105, 37.436619, 28.466160>,  <33.657284, 37.152527, 28.305382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426105, 37.436619, 28.466160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309915, 0.264622, -0.913197,
		-0.754940, -0.652345, 0.067173,
		-0.577943, 0.710227, 0.401945,
		33.252724, 37.649685, 28.586742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120224, 37.202339, 27.856281>,  <33.657284, 37.152527, 28.305382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120224, 37.202339, 27.856281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051308, 37.529125, 28.076422>,  <33.009956, 37.725197, 28.208506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051308, 37.529125, 28.076422>,  <33.120224, 37.202339, 27.856281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051308, 37.529125, 28.076422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450997, 0.431288, -0.781404,
		-0.875739, -0.382835, 0.294141,
		-0.172290, 0.816963, 0.550353,
		32.999622, 37.774216, 28.241528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399918, 37.384968, 27.811373>,  <33.120224, 37.202339, 27.856281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399918, 37.384968, 27.811373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599834, 37.719082, 27.903025>,  <32.719784, 37.919552, 27.958015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599834, 37.719082, 27.903025>,  <32.399918, 37.384968, 27.811373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599834, 37.719082, 27.903025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562654, 0.514228, -0.647294,
		-0.658501, 0.194594, 0.726987,
		0.499796, 0.835286, 0.229131,
		32.749775, 37.969669, 27.971764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884653, 37.960793, 27.758739>,  <32.399918, 37.384968, 27.811373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884653, 37.960793, 27.758739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247375, 38.129181, 27.749973>,  <32.465008, 38.230213, 27.744713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247375, 38.129181, 27.749973>,  <31.884653, 37.960793, 27.758739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247375, 38.129181, 27.749973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254776, 0.505899, -0.824109,
		-0.335842, 0.752892, 0.566007,
		0.906807, 0.420976, -0.021917,
		32.519417, 38.255474, 27.743399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763744, 38.635117, 27.665239>,  <31.884653, 37.960793, 27.758739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763744, 38.635117, 27.665239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147015, 38.611237, 27.553289>,  <32.376976, 38.596909, 27.486118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147015, 38.611237, 27.553289>,  <31.763744, 38.635117, 27.665239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147015, 38.611237, 27.553289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210881, 0.513827, -0.831571,
		0.193453, 0.855814, 0.479749,
		0.958178, -0.059700, -0.279876,
		32.434467, 38.593327, 27.469326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915482, 39.327957, 27.348476>,  <31.763744, 38.635117, 27.665239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915482, 39.327957, 27.348476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224796, 39.107697, 27.222742>,  <32.410385, 38.975540, 27.147301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224796, 39.107697, 27.222742>,  <31.915482, 39.327957, 27.348476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224796, 39.107697, 27.222742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018456, 0.515091, -0.856937,
		0.633788, 0.656857, 0.408476,
		0.773287, -0.550655, -0.314335,
		32.456783, 38.942501, 27.128441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458431, 39.806480, 27.040920>,  <31.915482, 39.327957, 27.348476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458431, 39.806480, 27.040920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508671, 39.445648, 26.875763>,  <32.538815, 39.229149, 26.776669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508671, 39.445648, 26.875763>,  <32.458431, 39.806480, 27.040920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508671, 39.445648, 26.875763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003932, 0.416637, -0.909064,
		0.992073, 0.112557, 0.055878,
		0.125602, -0.902078, -0.412892,
		32.546352, 39.175026, 26.751896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997658, 39.893009, 26.505970>,  <32.458431, 39.806480, 27.040920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997658, 39.893009, 26.505970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802151, 39.556316, 26.414238>,  <32.684845, 39.354301, 26.359200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802151, 39.556316, 26.414238>,  <32.997658, 39.893009, 26.505970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802151, 39.556316, 26.414238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044027, 0.286333, -0.957118,
		0.871300, -0.457715, -0.177010,
		-0.488771, -0.841731, -0.229331,
		32.655518, 39.303799, 26.345438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245125, 39.788654, 25.874914>,  <32.997658, 39.893009, 26.505970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245125, 39.788654, 25.874914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908756, 39.575859, 25.914600>,  <32.706936, 39.448181, 25.938412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908756, 39.575859, 25.914600>,  <33.245125, 39.788654, 25.874914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908756, 39.575859, 25.914600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188125, 0.115473, -0.975333,
		0.507412, -0.838839, -0.197184,
		-0.840918, -0.531991, 0.099214,
		32.656483, 39.416264, 25.944365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348770, 39.362728, 25.241461>,  <33.245125, 39.788654, 25.874914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348770, 39.362728, 25.241461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959721, 39.354462, 25.334051>,  <32.726292, 39.349503, 25.389605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959721, 39.354462, 25.334051>,  <33.348770, 39.362728, 25.241461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959721, 39.354462, 25.334051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227189, -0.125144, -0.965777,
		0.048929, -0.991923, 0.117022,
		-0.972621, -0.020668, 0.231477,
		32.667934, 39.348263, 25.403494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116528, 38.789703, 24.886892>,  <33.348770, 39.362728, 25.241461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116528, 38.789703, 24.886892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795963, 39.015175, 24.966906>,  <32.603626, 39.150459, 25.014914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795963, 39.015175, 24.966906>,  <33.116528, 38.789703, 24.886892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795963, 39.015175, 24.966906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212367, 0.044488, -0.976177,
		-0.559150, -0.824795, 0.084054,
		-0.801406, 0.563679, 0.200034,
		32.555542, 39.184280, 25.026917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100914, 38.086704, 24.491020>,  <33.116528, 38.789703, 24.886892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100914, 38.086704, 24.491020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453705, 38.147823, 24.312683>,  <33.665379, 38.184494, 24.205681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453705, 38.147823, 24.312683>,  <33.100914, 38.086704, 24.491020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453705, 38.147823, 24.312683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441178, -0.600433, 0.666965,
		-0.165784, -0.784940, -0.596979,
		0.881974, 0.152802, -0.445840,
		33.718296, 38.193665, 24.178930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465065, 37.448074, 24.577887>,  <33.100914, 38.086704, 24.491020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465065, 37.448074, 24.577887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743034, 37.730911, 24.525578>,  <33.909817, 37.900612, 24.494192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743034, 37.730911, 24.525578>,  <33.465065, 37.448074, 24.577887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743034, 37.730911, 24.525578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587465, -0.453388, 0.670316,
		0.414683, -0.542645, -0.730462,
		0.694927, 0.707090, -0.130772,
		33.951511, 37.943039, 24.486345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026009, 37.062279, 24.512060>,  <33.465065, 37.448074, 24.577887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026009, 37.062279, 24.512060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150543, 37.426704, 24.620161>,  <34.225262, 37.645359, 24.685020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150543, 37.426704, 24.620161>,  <34.026009, 37.062279, 24.512060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150543, 37.426704, 24.620161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604034, -0.409266, 0.683845,
		0.733630, -0.049664, -0.677731,
		0.311335, 0.911063, 0.270251,
		34.243942, 37.700024, 24.701237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699799, 37.021343, 24.417828>,  <34.026009, 37.062279, 24.512060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699799, 37.021343, 24.417828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640984, 37.321751, 24.675306>,  <34.605694, 37.501995, 24.829794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640984, 37.321751, 24.675306>,  <34.699799, 37.021343, 24.417828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640984, 37.321751, 24.675306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644949, -0.420613, 0.638063,
		0.749947, 0.508970, -0.422526,
		-0.147035, 0.751022, 0.643698,
		34.596874, 37.547058, 24.868416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369423, 37.032001, 24.636992>,  <34.699799, 37.021343, 24.417828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369423, 37.032001, 24.636992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198048, 37.296074, 24.883766>,  <35.095222, 37.454517, 25.031830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198048, 37.296074, 24.883766>,  <35.369423, 37.032001, 24.636992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198048, 37.296074, 24.883766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552931, -0.348456, 0.756866,
		0.714641, 0.665389, -0.215743,
		-0.428434, 0.660178, 0.616935,
		35.069519, 37.494129, 25.068848>
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
