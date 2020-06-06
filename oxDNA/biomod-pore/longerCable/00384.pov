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
	<24.514011, 34.929070, 35.040241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251322, 34.676319, 35.204895>,  <24.093708, 34.524670, 35.303688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251322, 34.676319, 35.204895>,  <24.514011, 34.929070, 35.040241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251322, 34.676319, 35.204895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063214, 0.497793, 0.864989,
		-0.751477, 0.594080, -0.286969,
		-0.656724, -0.631879, 0.411635,
		24.054304, 34.486755, 35.328384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881237, 34.697727, 34.507999>,  <24.514011, 34.929070, 35.040241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881237, 34.697727, 34.507999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220680, 34.797794, 34.321545>,  <25.424347, 34.857834, 34.209671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220680, 34.797794, 34.321545>,  <24.881237, 34.697727, 34.507999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220680, 34.797794, 34.321545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196915, 0.967181, 0.160576,
		0.491008, -0.044476, 0.870019,
		0.848608, 0.250164, -0.466136,
		25.475262, 34.872845, 34.181705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206200, 35.123943, 35.015251>,  <24.881237, 34.697727, 34.507999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206200, 35.123943, 35.015251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334536, 35.211716, 34.646706>,  <25.411537, 35.264378, 34.425579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334536, 35.211716, 34.646706>,  <25.206200, 35.123943, 35.015251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334536, 35.211716, 34.646706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279427, 0.951423, 0.129288,
		0.904976, 0.215973, 0.366570,
		0.320840, 0.219433, -0.921364,
		25.430788, 35.277546, 34.370296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577101, 35.800365, 35.086319>,  <25.206200, 35.123943, 35.015251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577101, 35.800365, 35.086319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521776, 35.773102, 34.691101>,  <25.488581, 35.756744, 34.453972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521776, 35.773102, 34.691101>,  <25.577101, 35.800365, 35.086319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521776, 35.773102, 34.691101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025654, 0.997048, -0.072371,
		0.990056, -0.035357, -0.136156,
		-0.138313, -0.068159, -0.988041,
		25.480282, 35.752655, 34.394688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112988, 35.752960, 34.530548>,  <25.577101, 35.800365, 35.086319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112988, 35.752960, 34.530548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773544, 35.951214, 34.456562>,  <25.569878, 36.070164, 34.412170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773544, 35.951214, 34.456562>,  <26.112988, 35.752960, 34.530548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773544, 35.951214, 34.456562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503587, 0.863933, 0.004553,
		0.162056, -0.089283, -0.982734,
		-0.848610, 0.495630, -0.184967,
		25.518961, 36.099903, 34.401073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164145, 36.230106, 33.902935>,  <26.112988, 35.752960, 34.530548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164145, 36.230106, 33.902935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921217, 36.340092, 34.201077>,  <25.775461, 36.406082, 34.379963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921217, 36.340092, 34.201077>,  <26.164145, 36.230106, 33.902935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921217, 36.340092, 34.201077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457743, 0.887924, 0.045410,
		-0.649336, 0.368761, -0.665116,
		-0.607318, 0.274965, 0.745358,
		25.739021, 36.422581, 34.424683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931446, 36.962692, 33.803383>,  <26.164145, 36.230106, 33.902935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931446, 36.962692, 33.803383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866362, 36.890320, 34.191360>,  <25.827311, 36.846897, 34.424145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866362, 36.890320, 34.191360>,  <25.931446, 36.962692, 33.803383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866362, 36.890320, 34.191360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421394, 0.876135, 0.234126,
		-0.892161, 0.446823, -0.066314,
		-0.162713, -0.180934, 0.969942,
		25.817547, 36.836040, 34.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623278, 37.553032, 34.132961>,  <25.931446, 36.962692, 33.803383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623278, 37.553032, 34.132961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831409, 37.337811, 34.398216>,  <25.956289, 37.208679, 34.557369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831409, 37.337811, 34.398216>,  <25.623278, 37.553032, 34.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831409, 37.337811, 34.398216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570441, 0.796875, 0.198967,
		-0.635495, 0.274754, 0.721566,
		0.520331, -0.538053, 0.663140,
		25.987509, 37.176395, 34.597157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543026, 37.942940, 34.738609>,  <25.623278, 37.553032, 34.132961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543026, 37.942940, 34.738609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880718, 37.730373, 34.766533>,  <26.083334, 37.602833, 34.783287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880718, 37.730373, 34.766533>,  <25.543026, 37.942940, 34.738609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880718, 37.730373, 34.766533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523293, 0.845397, 0.107088,
		-0.115928, -0.053875, 0.991795,
		0.844230, -0.531414, 0.069813,
		26.133987, 37.570950, 34.787476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840290, 38.101219, 35.320915>,  <25.543026, 37.942940, 34.738609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840290, 38.101219, 35.320915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145073, 37.944225, 35.114857>,  <26.327942, 37.850029, 34.991222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145073, 37.944225, 35.114857>,  <25.840290, 38.101219, 35.320915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145073, 37.944225, 35.114857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593933, 0.740615, 0.314220,
		0.258196, -0.545384, 0.797428,
		0.761957, -0.392488, -0.515145,
		26.373661, 37.826481, 34.960312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315073, 38.166935, 35.797489>,  <25.840290, 38.101219, 35.320915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315073, 38.166935, 35.797489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492998, 38.118458, 35.442535>,  <26.599752, 38.089371, 35.229565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492998, 38.118458, 35.442535>,  <26.315073, 38.166935, 35.797489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492998, 38.118458, 35.442535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629386, 0.747207, 0.213436,
		0.637194, -0.653447, 0.408646,
		0.444812, -0.121196, -0.887386,
		26.626442, 38.082100, 35.176319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101198, 38.167522, 35.929619>,  <26.315073, 38.166935, 35.797489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101198, 38.167522, 35.929619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016409, 38.255436, 35.548721>,  <26.965536, 38.308186, 35.320183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016409, 38.255436, 35.548721>,  <27.101198, 38.167522, 35.929619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016409, 38.255436, 35.548721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705601, 0.708580, 0.006480,
		0.676162, -0.670528, -0.305282,
		-0.211972, 0.219788, -0.952240,
		26.952818, 38.321373, 35.263050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706255, 38.211071, 35.591366>,  <27.101198, 38.167522, 35.929619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706255, 38.211071, 35.591366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455532, 38.424892, 35.364609>,  <27.305098, 38.553185, 35.228554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455532, 38.424892, 35.364609>,  <27.706255, 38.211071, 35.591366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455532, 38.424892, 35.364609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707546, 0.695200, -0.126787,
		0.326331, -0.480575, -0.813976,
		-0.626807, 0.534551, -0.566894,
		27.267490, 38.585258, 35.194542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760637, 38.493626, 34.813473>,  <27.706255, 38.211071, 35.591366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760637, 38.493626, 34.813473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604033, 38.734203, 35.092033>,  <27.510071, 38.878551, 35.259171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604033, 38.734203, 35.092033>,  <27.760637, 38.493626, 34.813473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604033, 38.734203, 35.092033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652684, 0.714995, -0.250571,
		-0.648631, 0.356431, -0.672484,
		-0.391511, 0.601448, 0.696405,
		27.486580, 38.914639, 35.300957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245726, 38.807533, 34.251919>,  <27.760637, 38.493626, 34.813473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245726, 38.807533, 34.251919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387789, 38.570030, 34.540730>,  <28.473026, 38.427528, 34.714016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387789, 38.570030, 34.540730>,  <28.245726, 38.807533, 34.251919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387789, 38.570030, 34.540730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584518, -0.743816, -0.324155,
		0.729520, -0.306909, -0.611234,
		0.355159, -0.593755, 0.722023,
		28.494337, 38.391903, 34.757336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648172, 38.604889, 33.867470>,  <28.245726, 38.807533, 34.251919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648172, 38.604889, 33.867470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658327, 38.817951, 33.529091>,  <27.664421, 38.945789, 33.326065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658327, 38.817951, 33.529091>,  <27.648172, 38.604889, 33.867470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658327, 38.817951, 33.529091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923624, -0.336246, -0.184002,
		-0.382457, -0.776667, -0.500515,
		0.025388, 0.532660, -0.845948,
		27.665943, 38.977749, 33.275307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250998, 38.024303, 34.024376>,  <27.648172, 38.604889, 33.867470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250998, 38.024303, 34.024376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063372, 38.037838, 34.377380>,  <26.950796, 38.045959, 34.589184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063372, 38.037838, 34.377380>,  <27.250998, 38.024303, 34.024376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063372, 38.037838, 34.377380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333027, -0.932276, -0.141263,
		0.817967, -0.360163, 0.448567,
		-0.469066, 0.033836, 0.882514,
		26.922651, 38.047989, 34.642136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378563, 37.321983, 34.326870>,  <27.250998, 38.024303, 34.024376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378563, 37.321983, 34.326870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079233, 37.479450, 34.540428>,  <26.899635, 37.573929, 34.668564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079233, 37.479450, 34.540428>,  <27.378563, 37.321983, 34.326870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079233, 37.479450, 34.540428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405340, -0.908488, 0.101730,
		0.525084, -0.140282, 0.839409,
		-0.748323, 0.393662, 0.533894,
		26.854736, 37.597549, 34.700596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230083, 36.977024, 34.970505>,  <27.378563, 37.321983, 34.326870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230083, 36.977024, 34.970505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886749, 37.162254, 34.882126>,  <26.680748, 37.273392, 34.829098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886749, 37.162254, 34.882126>,  <27.230083, 36.977024, 34.970505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886749, 37.162254, 34.882126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501327, -0.848586, 0.169036,
		-0.109216, 0.255857, 0.960526,
		-0.858337, 0.463076, -0.220947,
		26.629248, 37.301178, 34.815842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772902, 36.600014, 35.437813>,  <27.230083, 36.977024, 34.970505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772902, 36.600014, 35.437813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539070, 36.772743, 35.163063>,  <26.398771, 36.876381, 34.998215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539070, 36.772743, 35.163063>,  <26.772902, 36.600014, 35.437813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539070, 36.772743, 35.163063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476671, -0.867873, -0.139933,
		-0.656545, 0.245610, 0.713179,
		-0.584579, 0.431824, -0.686873,
		26.363697, 36.902290, 34.957001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113073, 36.345730, 35.631123>,  <26.772902, 36.600014, 35.437813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113073, 36.345730, 35.631123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114922, 36.450142, 35.244995>,  <26.116032, 36.512787, 35.013317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114922, 36.450142, 35.244995>,  <26.113073, 36.345730, 35.631123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114922, 36.450142, 35.244995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500612, -0.835053, -0.228197,
		-0.865660, 0.484306, 0.126813,
		0.004621, 0.261026, -0.965321,
		26.116308, 36.528450, 34.955399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546951, 36.611870, 35.725834>,  <26.113073, 36.345730, 35.631123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546951, 36.611870, 35.725834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637300, 36.683926, 35.342892>,  <25.691511, 36.727161, 35.113125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637300, 36.683926, 35.342892>,  <25.546951, 36.611870, 35.725834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637300, 36.683926, 35.342892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490939, -0.827778, -0.271592,
		-0.841403, 0.531348, -0.098535,
		0.225875, 0.180144, -0.957355,
		25.705063, 36.737968, 35.055687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909182, 36.798912, 35.365547>,  <25.546951, 36.611870, 35.725834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909182, 36.798912, 35.365547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180809, 36.685383, 35.094753>,  <25.343784, 36.617264, 34.932278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180809, 36.685383, 35.094753>,  <24.909182, 36.798912, 35.365547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180809, 36.685383, 35.094753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505966, -0.849141, -0.151519,
		-0.531853, 0.445424, -0.720229,
		0.679067, -0.283825, -0.676987,
		25.384529, 36.600235, 34.891659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861038, 36.954033, 34.652782>,  <24.909182, 36.798912, 35.365547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861038, 36.954033, 34.652782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063046, 36.933674, 34.308140>,  <25.184250, 36.921459, 34.101353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063046, 36.933674, 34.308140>,  <24.861038, 36.954033, 34.652782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063046, 36.933674, 34.308140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059102, -0.993878, 0.093351,
		-0.861083, -0.098067, -0.498919,
		0.505018, -0.050896, -0.861607,
		25.214550, 36.918404, 34.049656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558422, 36.515865, 34.156147>,  <24.861038, 36.954033, 34.652782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558422, 36.515865, 34.156147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925255, 36.543785, 33.999130>,  <25.145355, 36.560535, 33.904919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925255, 36.543785, 33.999130>,  <24.558422, 36.515865, 34.156147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.925255, 36.543785, 33.999130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013439, -0.989409, -0.144528,
		-0.398473, 0.127269, -0.908307,
		0.917082, 0.069797, -0.392542,
		25.200378, 36.564724, 33.881367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599108, 36.045620, 33.505836>,  <24.558422, 36.515865, 34.156147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599108, 36.045620, 33.505836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951811, 36.088951, 33.689476>,  <25.163433, 36.114948, 33.799660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951811, 36.088951, 33.689476>,  <24.599108, 36.045620, 33.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951811, 36.088951, 33.689476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134960, -0.990523, -0.025492,
		0.451985, 0.084437, -0.888020,
		0.881757, 0.108325, 0.459097,
		25.216337, 36.121449, 33.827206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208990, 35.757214, 33.140640>,  <24.599108, 36.045620, 33.505836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208990, 35.757214, 33.140640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296955, 35.753777, 33.530834>,  <25.349733, 35.751713, 33.764950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296955, 35.753777, 33.530834>,  <25.208990, 35.757214, 33.140640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296955, 35.753777, 33.530834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409851, -0.906612, -0.100384,
		0.885246, 0.421878, -0.195853,
		0.219913, -0.008594, 0.975482,
		25.362928, 35.751198, 33.823479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921036, 35.466843, 33.115631>,  <25.208990, 35.757214, 33.140640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921036, 35.466843, 33.115631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793833, 35.425953, 33.492657>,  <25.717512, 35.401421, 33.718872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793833, 35.425953, 33.492657>,  <25.921036, 35.466843, 33.115631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793833, 35.425953, 33.492657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388848, -0.920769, 0.031334,
		0.864679, 0.376478, 0.332558,
		-0.318005, -0.102220, 0.942562,
		25.698431, 35.395287, 33.775425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522102, 35.257652, 33.574944>,  <25.921036, 35.466843, 33.115631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522102, 35.257652, 33.574944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191156, 35.131241, 33.760674>,  <25.992590, 35.055393, 33.872112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191156, 35.131241, 33.760674>,  <26.522102, 35.257652, 33.574944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191156, 35.131241, 33.760674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389042, -0.918712, 0.067928,
		0.405113, 0.236843, 0.883057,
		-0.827363, -0.316027, 0.464324,
		25.942947, 35.036434, 33.899971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732250, 34.930931, 34.137539>,  <26.522102, 35.257652, 33.574944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732250, 34.930931, 34.137539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375839, 34.794666, 34.017529>,  <26.161993, 34.712906, 33.945522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375839, 34.794666, 34.017529>,  <26.732250, 34.930931, 34.137539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375839, 34.794666, 34.017529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416903, -0.875615, -0.243907,
		-0.179620, -0.342411, 0.922221,
		-0.891027, -0.340666, -0.300030,
		26.108532, 34.692467, 33.927521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472084, 34.346771, 34.507259>,  <26.732250, 34.930931, 34.137539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472084, 34.346771, 34.507259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373474, 34.362118, 34.119907>,  <26.314308, 34.371326, 33.887497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373474, 34.362118, 34.119907>,  <26.472084, 34.346771, 34.507259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373474, 34.362118, 34.119907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490538, -0.856824, -0.158824,
		-0.835820, -0.514180, 0.192412,
		-0.246527, 0.038363, -0.968376,
		26.299517, 34.373627, 33.829395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015974, 33.782246, 34.174702>,  <26.472084, 34.346771, 34.507259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015974, 33.782246, 34.174702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229460, 33.939671, 33.875301>,  <26.357552, 34.034126, 33.695660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229460, 33.939671, 33.875301>,  <26.015974, 33.782246, 34.174702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229460, 33.939671, 33.875301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252065, -0.918908, -0.303434,
		-0.807225, -0.026724, -0.589639,
		0.533714, 0.393567, -0.748501,
		26.389574, 34.057739, 33.650749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696407, 33.506607, 33.601765>,  <26.015974, 33.782246, 34.174702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696407, 33.506607, 33.601765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074028, 33.617825, 33.530819>,  <26.300600, 33.684555, 33.488251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074028, 33.617825, 33.530819>,  <25.696407, 33.506607, 33.601765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074028, 33.617825, 33.530819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229989, -0.940489, -0.250172,
		-0.236366, 0.195384, -0.951817,
		0.944053, 0.278039, -0.177363,
		26.357244, 33.701237, 33.477612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716984, 33.398037, 32.973450>,  <25.696407, 33.506607, 33.601765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716984, 33.398037, 32.973450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073471, 33.370823, 33.152828>,  <26.287363, 33.354492, 33.260456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073471, 33.370823, 33.152828>,  <25.716984, 33.398037, 32.973450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073471, 33.370823, 33.152828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078642, -0.950532, -0.300505,
		0.446706, 0.303082, -0.841781,
		0.891218, -0.068038, 0.448444,
		26.340836, 33.350410, 33.287361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011600, 33.082890, 32.403656>,  <25.716984, 33.398037, 32.973450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011600, 33.082890, 32.403656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161591, 32.981579, 32.760361>,  <26.251585, 32.920792, 32.974384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161591, 32.981579, 32.760361>,  <26.011600, 33.082890, 32.403656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161591, 32.981579, 32.760361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124078, -0.939587, -0.319031,
		0.918694, 0.230277, -0.320894,
		0.374974, -0.253276, 0.891766,
		26.274082, 32.905598, 33.027889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736475, 33.357624, 32.233292>,  <26.011600, 33.082890, 32.403656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736475, 33.357624, 32.233292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714344, 33.235703, 32.613613>,  <26.701065, 33.162552, 32.841808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714344, 33.235703, 32.613613>,  <26.736475, 33.357624, 32.233292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714344, 33.235703, 32.613613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297143, -0.914146, -0.275758,
		0.953229, 0.267269, 0.141148,
		-0.055328, -0.304801, 0.950808,
		26.697746, 33.144260, 32.898857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264597, 32.715218, 32.178150>,  <26.736475, 33.357624, 32.233292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264597, 32.715218, 32.178150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125185, 32.706493, 32.552967>,  <27.041538, 32.701260, 32.777859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125185, 32.706493, 32.552967>,  <27.264597, 32.715218, 32.178150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125185, 32.706493, 32.552967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206295, -0.976999, 0.053987,
		0.914314, 0.212124, 0.345012,
		-0.348529, -0.021813, 0.937044,
		27.020626, 32.699951, 32.834080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762545, 32.407005, 32.524544>,  <27.264597, 32.715218, 32.178150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762545, 32.407005, 32.524544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434338, 32.361629, 32.748646>,  <27.237413, 32.334404, 32.883106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434338, 32.361629, 32.748646>,  <27.762545, 32.407005, 32.524544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434338, 32.361629, 32.748646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247270, -0.954103, 0.168953,
		0.515375, 0.277163, 0.810906,
		-0.820516, -0.113438, 0.560255,
		27.188183, 32.327599, 32.916721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889853, 32.153839, 33.165047>,  <27.762545, 32.407005, 32.524544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889853, 32.153839, 33.165047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511364, 32.052078, 33.085106>,  <27.284271, 31.991022, 33.037140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511364, 32.052078, 33.085106>,  <27.889853, 32.153839, 33.165047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511364, 32.052078, 33.085106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194453, -0.940951, 0.277128,
		-0.258556, 0.223362, 0.939818,
		-0.946223, -0.254403, -0.199855,
		27.227497, 31.975758, 33.025150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569752, 31.853121, 33.815067>,  <27.889853, 32.153839, 33.165047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569752, 31.853121, 33.815067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429289, 31.740978, 33.457726>,  <27.345011, 31.673693, 33.243320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429289, 31.740978, 33.457726>,  <27.569752, 31.853121, 33.815067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429289, 31.740978, 33.457726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077483, -0.959548, 0.270672,
		-0.933105, 0.025829, 0.358675,
		-0.351157, -0.280357, -0.893358,
		27.323942, 31.656872, 33.189716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861609, 31.455385, 33.837395>,  <27.569752, 31.853121, 33.815067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861609, 31.455385, 33.837395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122911, 31.344816, 33.555447>,  <27.279694, 31.278475, 33.386276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122911, 31.344816, 33.555447>,  <26.861609, 31.455385, 33.837395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122911, 31.344816, 33.555447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165318, -0.960584, 0.223492,
		-0.738869, -0.029469, -0.673204,
		0.653255, -0.276424, -0.704874,
		27.318888, 31.261889, 33.343983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488503, 30.998802, 33.284023>,  <26.861609, 31.455385, 33.837395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488503, 30.998802, 33.284023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870667, 30.917294, 33.369511>,  <27.099964, 30.868389, 33.420803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870667, 30.917294, 33.369511>,  <26.488503, 30.998802, 33.284023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870667, 30.917294, 33.369511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235861, -0.962065, 0.137113,
		0.177668, -0.181405, -0.967226,
		0.955408, -0.203770, 0.213715,
		27.157290, 30.856163, 33.433624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078123, 31.678423, 33.138706>,  <26.488503, 30.998802, 33.284023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078123, 31.678423, 33.138706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473701, 31.729185, 33.169373>,  <26.711048, 31.759642, 33.187771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473701, 31.729185, 33.169373>,  <26.078123, 31.678423, 33.138706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473701, 31.729185, 33.169373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132391, 0.988631, 0.071292,
		-0.066745, -0.080654, 0.994505,
		0.988948, 0.126905, 0.076664,
		26.770386, 31.767256, 33.192371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252583, 32.136265, 33.812748>,  <26.078123, 31.678423, 33.138706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252583, 32.136265, 33.812748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513388, 32.174267, 33.511856>,  <26.669870, 32.197067, 33.331322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513388, 32.174267, 33.511856>,  <26.252583, 32.136265, 33.812748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513388, 32.174267, 33.511856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045421, 0.995231, 0.086326,
		0.756848, -0.022118, 0.653217,
		0.652011, 0.095006, -0.752234,
		26.708990, 32.202770, 33.286186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658581, 32.612225, 34.075512>,  <26.252583, 32.136265, 33.812748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658581, 32.612225, 34.075512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766548, 32.650898, 33.692307>,  <26.831329, 32.674103, 33.462383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766548, 32.650898, 33.692307>,  <26.658581, 32.612225, 34.075512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766548, 32.650898, 33.692307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077129, 0.989578, 0.121599,
		0.959788, -0.106713, 0.259651,
		0.269921, 0.096683, -0.958016,
		26.847525, 32.679901, 33.404903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323332, 33.030727, 34.010975>,  <26.658581, 32.612225, 34.075512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323332, 33.030727, 34.010975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108660, 33.061653, 33.674881>,  <26.979856, 33.080208, 33.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108660, 33.061653, 33.674881>,  <27.323332, 33.030727, 34.010975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108660, 33.061653, 33.674881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149631, 0.988731, -0.004599,
		0.830413, -0.128193, -0.542201,
		-0.536680, 0.077311, -0.840237,
		26.947657, 33.084846, 33.422810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633507, 33.581749, 33.562870>,  <27.323332, 33.030727, 34.010975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633507, 33.581749, 33.562870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258905, 33.526115, 33.434113>,  <27.034145, 33.492733, 33.356857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258905, 33.526115, 33.434113>,  <27.633507, 33.581749, 33.562870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258905, 33.526115, 33.434113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132699, 0.990274, -0.041818,
		0.324581, 0.003552, -0.945851,
		-0.936503, -0.139087, -0.321896,
		26.977955, 33.484390, 33.337543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536541, 34.098392, 33.097492>,  <27.633507, 33.581749, 33.562870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536541, 34.098392, 33.097492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174797, 33.982048, 33.222412>,  <26.957750, 33.912243, 33.297363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174797, 33.982048, 33.222412>,  <27.536541, 34.098392, 33.097492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174797, 33.982048, 33.222412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284591, 0.956335, 0.066565,
		-0.318023, -0.028679, -0.947649,
		-0.904361, -0.290862, 0.312299,
		26.903488, 33.894791, 33.316101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027231, 34.563591, 32.688721>,  <27.536541, 34.098392, 33.097492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027231, 34.563591, 32.688721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872087, 34.414749, 33.026028>,  <26.779001, 34.325443, 33.228413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872087, 34.414749, 33.026028>,  <27.027231, 34.563591, 32.688721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872087, 34.414749, 33.026028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274713, 0.919975, 0.279604,
		-0.879829, -0.123210, -0.459043,
		-0.387859, -0.372108, 0.843268,
		26.755730, 34.303116, 33.279007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743116, 34.344765, 32.416592>,  <27.027231, 34.563591, 32.688721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743116, 34.344765, 32.416592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701010, 34.002548, 32.213825>,  <27.675745, 33.797218, 32.092163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701010, 34.002548, 32.213825>,  <27.743116, 34.344765, 32.416592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701010, 34.002548, 32.213825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256527, 0.515860, -0.817363,
		0.960788, 0.043997, -0.273773,
		-0.105266, -0.855543, -0.506918,
		27.669430, 33.745884, 32.061749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237446, 34.789425, 32.900391>,  <27.743116, 34.344765, 32.416592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237446, 34.789425, 32.900391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045372, 34.627041, 33.211418>,  <27.930128, 34.529610, 33.398037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045372, 34.627041, 33.211418>,  <28.237446, 34.789425, 32.900391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045372, 34.627041, 33.211418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869427, -0.102777, 0.483253,
		-0.116265, 0.908093, 0.402305,
		-0.480187, -0.405960, 0.777571,
		27.901316, 34.505253, 33.444691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462597, 35.112396, 33.477371>,  <28.237446, 34.789425, 32.900391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462597, 35.112396, 33.477371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382465, 34.733894, 33.578938>,  <28.334387, 34.506794, 33.639877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382465, 34.733894, 33.578938>,  <28.462597, 35.112396, 33.477371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382465, 34.733894, 33.578938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953616, -0.128887, 0.272039,
		-0.224691, 0.296638, 0.928181,
		-0.200328, -0.946253, 0.253919,
		28.322367, 34.450020, 33.655113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401285, 34.901093, 34.252796>,  <28.462597, 35.112396, 33.477371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401285, 34.901093, 34.252796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545376, 34.710075, 33.932251>,  <28.631830, 34.595467, 33.739922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545376, 34.710075, 33.932251>,  <28.401285, 34.901093, 34.252796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545376, 34.710075, 33.932251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931234, 0.234845, 0.278660,
		0.055124, -0.846640, 0.529303,
		0.360228, -0.477544, -0.801366,
		28.653444, 34.566811, 33.691841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977083, 34.478226, 34.499420>,  <28.401285, 34.901093, 34.252796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977083, 34.478226, 34.499420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996763, 34.601410, 34.119370>,  <29.008572, 34.675320, 33.891338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996763, 34.601410, 34.119370>,  <28.977083, 34.478226, 34.499420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996763, 34.601410, 34.119370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850590, 0.485702, 0.201472,
		0.523523, -0.818080, -0.238052,
		0.049198, 0.307959, -0.950127,
		29.011522, 34.693798, 33.834332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716873, 34.403381, 34.227901>,  <28.977083, 34.478226, 34.499420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716873, 34.403381, 34.227901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530394, 34.707615, 34.047161>,  <29.418507, 34.890156, 33.938717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530394, 34.707615, 34.047161>,  <29.716873, 34.403381, 34.227901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530394, 34.707615, 34.047161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682454, 0.634192, 0.363397,
		0.562952, -0.138949, -0.814726,
		-0.466198, 0.760588, -0.451846,
		29.390533, 34.935791, 33.911606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284042, 34.790695, 33.830540>,  <29.716873, 34.403381, 34.227901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284042, 34.790695, 33.830540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966726, 34.990166, 33.970261>,  <29.776337, 35.109848, 34.054092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966726, 34.990166, 33.970261>,  <30.284042, 34.790695, 33.830540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966726, 34.990166, 33.970261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597235, 0.748861, 0.287258,
		-0.118331, 0.436495, -0.891891,
		-0.793289, 0.498677, 0.349304,
		29.728739, 35.139771, 34.075050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210169, 35.519127, 33.598045>,  <30.284042, 34.790695, 33.830540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210169, 35.519127, 33.598045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022915, 35.486084, 33.949959>,  <29.910563, 35.466259, 34.161106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022915, 35.486084, 33.949959>,  <30.210169, 35.519127, 33.598045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022915, 35.486084, 33.949959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613432, 0.686251, 0.390845,
		-0.636043, 0.722658, -0.270582,
		-0.468135, -0.082611, 0.879787,
		29.882475, 35.461300, 34.213894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042309, 36.135265, 33.756790>,  <30.210169, 35.519127, 33.598045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042309, 36.135265, 33.756790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070808, 35.916821, 34.090660>,  <30.087908, 35.785751, 34.290981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070808, 35.916821, 34.090660>,  <30.042309, 36.135265, 33.756790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070808, 35.916821, 34.090660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634643, 0.670391, 0.384453,
		-0.769514, 0.502330, 0.394351,
		0.071248, -0.546114, 0.834676,
		30.092182, 35.752987, 34.341064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933653, 36.576473, 34.387352>,  <30.042309, 36.135265, 33.756790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933653, 36.576473, 34.387352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182339, 36.271030, 34.457062>,  <30.331551, 36.087765, 34.498890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182339, 36.271030, 34.457062>,  <29.933653, 36.576473, 34.387352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182339, 36.271030, 34.457062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711491, 0.643638, 0.281977,
		-0.327493, -0.051312, 0.943459,
		0.621715, -0.763608, 0.174279,
		30.368853, 36.041946, 34.509346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683348, 36.489861, 35.135422>,  <29.933653, 36.576473, 34.387352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683348, 36.489861, 35.135422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361944, 36.405743, 34.912655>,  <29.169102, 36.355274, 34.778996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361944, 36.405743, 34.912655>,  <29.683348, 36.489861, 35.135422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361944, 36.405743, 34.912655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577980, -0.051599, -0.814418,
		0.142530, -0.976276, 0.163004,
		-0.803508, -0.210292, -0.556913,
		29.120892, 36.342655, 34.745583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539698, 37.109135, 35.064285>,  <29.683348, 36.489861, 35.135422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539698, 37.109135, 35.064285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655018, 37.492092, 35.057495>,  <29.724211, 37.721867, 35.053421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655018, 37.492092, 35.057495>,  <29.539698, 37.109135, 35.064285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655018, 37.492092, 35.057495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801545, -0.231597, 0.551261,
		0.523840, -0.172536, -0.834160,
		0.288302, 0.957389, -0.016976,
		29.741508, 37.779308, 35.052402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263252, 37.162388, 34.931736>,  <29.539698, 37.109135, 35.064285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263252, 37.162388, 34.931736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178883, 37.489212, 35.146370>,  <30.128260, 37.685307, 35.275150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178883, 37.489212, 35.146370>,  <30.263252, 37.162388, 34.931736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178883, 37.489212, 35.146370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868571, -0.095168, 0.486342,
		0.448437, 0.568641, -0.689602,
		-0.210926, 0.817062, 0.536582,
		30.115604, 37.734329, 35.307346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851007, 37.598820, 34.835335>,  <30.263252, 37.162388, 34.931736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851007, 37.598820, 34.835335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629206, 37.651100, 35.164078>,  <30.496124, 37.682468, 35.361324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629206, 37.651100, 35.164078>,  <30.851007, 37.598820, 34.835335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629206, 37.651100, 35.164078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827205, 0.194402, 0.527199,
		-0.090866, 0.972176, -0.215911,
		-0.554504, 0.130699, 0.821854,
		30.462854, 37.690311, 35.410633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163179, 38.205498, 35.173737>,  <30.851007, 37.598820, 34.835335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163179, 38.205498, 35.173737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945396, 38.002979, 35.441238>,  <30.814728, 37.881470, 35.601738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945396, 38.002979, 35.441238>,  <31.163179, 38.205498, 35.173737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945396, 38.002979, 35.441238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708553, 0.149089, 0.689728,
		-0.448910, 0.849375, 0.277564,
		-0.544456, -0.506295, 0.668755,
		30.782059, 37.851089, 35.641865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144749, 38.561749, 35.865894>,  <31.163179, 38.205498, 35.173737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144749, 38.561749, 35.865894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120348, 38.166340, 35.921185>,  <31.105707, 37.929096, 35.954357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120348, 38.166340, 35.921185>,  <31.144749, 38.561749, 35.865894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120348, 38.166340, 35.921185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726836, 0.050919, 0.684921,
		-0.684097, 0.142248, 0.715386,
		-0.061002, -0.988521, 0.138224,
		31.102047, 37.869785, 35.962650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630291, 38.348137, 36.481144>,  <31.144749, 38.561749, 35.865894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630291, 38.348137, 36.481144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016243, 38.245876, 36.456989>,  <32.247814, 38.184521, 36.442497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016243, 38.245876, 36.456989>,  <31.630291, 38.348137, 36.481144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016243, 38.245876, 36.456989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043417, 0.381947, -0.923164,
		0.259071, 0.888122, 0.379633,
		0.964882, -0.255647, -0.060391,
		32.305706, 38.169182, 36.438873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233532, 38.654686, 36.195797>,  <31.630291, 38.348137, 36.481144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233532, 38.654686, 36.195797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265781, 38.885399, 35.870636>,  <32.285130, 39.023827, 35.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265781, 38.885399, 35.870636>,  <32.233532, 38.654686, 36.195797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265781, 38.885399, 35.870636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503484, -0.727431, -0.466205,
		-0.860235, -0.371700, -0.349048,
		0.080620, 0.576786, -0.812907,
		32.289967, 39.058434, 35.626762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868778, 38.397823, 35.631493>,  <32.233532, 38.654686, 36.195797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868778, 38.397823, 35.631493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154396, 38.619785, 35.460743>,  <32.325768, 38.752964, 35.358292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154396, 38.619785, 35.460743>,  <31.868778, 38.397823, 35.631493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154396, 38.619785, 35.460743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400063, -0.823784, -0.401659,
		-0.574536, 0.116024, -0.810214,
		0.714043, 0.554904, -0.426877,
		32.368610, 38.786255, 35.332680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893341, 38.009708, 35.032410>,  <31.868778, 38.397823, 35.631493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893341, 38.009708, 35.032410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215290, 38.247059, 35.028637>,  <32.408459, 38.389469, 35.026371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215290, 38.247059, 35.028637>,  <31.893341, 38.009708, 35.032410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215290, 38.247059, 35.028637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493661, -0.678271, -0.544286,
		-0.329365, 0.433423, -0.838847,
		0.804871, 0.593375, -0.009435,
		32.456753, 38.425072, 35.025806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034496, 37.969830, 34.392334>,  <31.893341, 38.009708, 35.032410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034496, 37.969830, 34.392334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380943, 38.073009, 34.563595>,  <32.588810, 38.134918, 34.666351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380943, 38.073009, 34.563595>,  <32.034496, 37.969830, 34.392334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380943, 38.073009, 34.563595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498938, -0.497817, -0.709394,
		0.030154, 0.828035, -0.559865,
		0.866113, 0.257947, 0.428149,
		32.640778, 38.150394, 34.692039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464256, 38.364254, 33.889751>,  <32.034496, 37.969830, 34.392334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464256, 38.364254, 33.889751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716446, 38.207653, 34.157852>,  <32.867760, 38.113693, 34.318710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716446, 38.207653, 34.157852>,  <32.464256, 38.364254, 33.889751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716446, 38.207653, 34.157852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495471, -0.461704, -0.735756,
		0.597504, 0.795964, -0.097116,
		0.630474, -0.391499, 0.670247,
		32.905590, 38.090202, 34.358925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138710, 38.511520, 33.687641>,  <32.464256, 38.364254, 33.889751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138710, 38.511520, 33.687641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183468, 38.193863, 33.926579>,  <33.210323, 38.003269, 34.069939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183468, 38.193863, 33.926579>,  <33.138710, 38.511520, 33.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183468, 38.193863, 33.926579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527474, -0.461974, -0.712988,
		0.842170, 0.394861, 0.367197,
		0.111896, -0.794144, 0.597340,
		33.217037, 37.955620, 34.105782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739563, 38.230309, 33.447632>,  <33.138710, 38.511520, 33.687641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739563, 38.230309, 33.447632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607841, 37.929966, 33.676640>,  <33.528809, 37.749760, 33.814045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607841, 37.929966, 33.676640>,  <33.739563, 38.230309, 33.447632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607841, 37.929966, 33.676640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528918, -0.648969, -0.546887,
		0.782178, 0.122723, 0.610848,
		-0.329306, -0.750852, 0.572520,
		33.509048, 37.704712, 33.848396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341324, 37.830822, 33.572567>,  <33.739563, 38.230309, 33.447632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341324, 37.830822, 33.572567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040245, 37.577778, 33.645508>,  <33.859600, 37.425949, 33.689270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040245, 37.577778, 33.645508>,  <34.341324, 37.830822, 33.572567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040245, 37.577778, 33.645508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337410, -0.608490, -0.718258,
		0.565338, -0.479102, 0.671457,
		-0.752693, -0.632615, 0.182349,
		33.814438, 37.387993, 33.700211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559753, 37.135021, 33.505169>,  <34.341324, 37.830822, 33.572567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559753, 37.135021, 33.505169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165497, 37.118851, 33.439594>,  <33.928944, 37.109150, 33.400249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165497, 37.118851, 33.439594>,  <34.559753, 37.135021, 33.505169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165497, 37.118851, 33.439594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140829, -0.732429, -0.666120,
		-0.093143, -0.679643, 0.727606,
		-0.985643, -0.040424, -0.163934,
		33.869804, 37.106724, 33.390415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336292, 36.409794, 33.494774>,  <34.559753, 37.135021, 33.505169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336292, 36.409794, 33.494774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054134, 36.609592, 33.293610>,  <33.884838, 36.729469, 33.172913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054134, 36.609592, 33.293610>,  <34.336292, 36.409794, 33.494774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054134, 36.609592, 33.293610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128825, -0.607353, -0.783918,
		-0.697007, -0.617761, 0.364078,
		-0.705397, 0.499493, -0.502912,
		33.842514, 36.759441, 33.142735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074921, 35.892887, 33.106396>,  <34.336292, 36.409794, 33.494774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074921, 35.892887, 33.106396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877056, 36.190216, 32.926273>,  <33.758335, 36.368614, 32.818199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877056, 36.190216, 32.926273>,  <34.074921, 35.892887, 33.106396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877056, 36.190216, 32.926273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007992, -0.514230, -0.857615,
		-0.869047, -0.427831, 0.248431,
		-0.494665, 0.743323, -0.450309,
		33.728657, 36.413212, 32.791180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510384, 35.645088, 32.642101>,  <34.074921, 35.892887, 33.106396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510384, 35.645088, 32.642101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624050, 35.992001, 32.478603>,  <33.692249, 36.200146, 32.380505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624050, 35.992001, 32.478603>,  <33.510384, 35.645088, 32.642101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624050, 35.992001, 32.478603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009524, -0.428857, -0.903322,
		-0.958726, 0.252805, -0.130129,
		0.284171, 0.867278, -0.408749,
		33.709301, 36.252186, 32.355980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074017, 35.733719, 32.044025>,  <33.510384, 35.645088, 32.642101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074017, 35.733719, 32.044025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374249, 35.992424, 31.989882>,  <33.554386, 36.147648, 31.957396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374249, 35.992424, 31.989882>,  <33.074017, 35.733719, 32.044025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374249, 35.992424, 31.989882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039947, -0.160062, -0.986298,
		-0.659569, 0.745704, -0.094303,
		0.750581, 0.646765, -0.135360,
		33.599422, 36.186455, 31.949274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955891, 35.977798, 31.404636>,  <33.074017, 35.733719, 32.044025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955891, 35.977798, 31.404636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343224, 36.071449, 31.439304>,  <33.575623, 36.127640, 31.460106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343224, 36.071449, 31.439304>,  <32.955891, 35.977798, 31.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343224, 36.071449, 31.439304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151114, -0.273323, -0.949978,
		-0.198728, 0.932994, -0.300049,
		0.968334, 0.234129, 0.086672,
		33.633724, 36.141689, 31.465305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210815, 36.692440, 31.145975>,  <32.955891, 35.977798, 31.404636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210815, 36.692440, 31.145975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550850, 36.481812, 31.142542>,  <33.754871, 36.355434, 31.140482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550850, 36.481812, 31.142542>,  <33.210815, 36.692440, 31.145975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550850, 36.481812, 31.142542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117281, 0.205180, -0.971672,
		0.513413, 0.825001, 0.236178,
		0.850089, -0.526568, -0.008585,
		33.805878, 36.323841, 31.139967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643948, 37.109058, 30.836624>,  <33.210815, 36.692440, 31.145975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643948, 37.109058, 30.836624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805855, 36.745346, 30.797920>,  <33.903000, 36.527119, 30.774698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805855, 36.745346, 30.797920>,  <33.643948, 37.109058, 30.836624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805855, 36.745346, 30.797920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054184, 0.129482, -0.990100,
		0.912811, 0.395522, 0.101679,
		0.404772, -0.909284, -0.096762,
		33.927288, 36.472561, 30.768892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267792, 37.163315, 30.329496>,  <33.643948, 37.109058, 30.836624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267792, 37.163315, 30.329496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167686, 36.776302, 30.343670>,  <34.107624, 36.544094, 30.352173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167686, 36.776302, 30.343670>,  <34.267792, 37.163315, 30.329496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167686, 36.776302, 30.343670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041189, -0.025924, -0.998815,
		0.967300, -0.251429, -0.033364,
		-0.250266, -0.967529, 0.035432,
		34.092606, 36.486042, 30.354300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610256, 36.884552, 29.784122>,  <34.267792, 37.163315, 30.329496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610256, 36.884552, 29.784122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350559, 36.594379, 29.875536>,  <34.194740, 36.420277, 29.930384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350559, 36.594379, 29.875536>,  <34.610256, 36.884552, 29.784122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350559, 36.594379, 29.875536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180363, -0.145055, -0.972845,
		0.738885, -0.672834, -0.036665,
		-0.649245, -0.725433, 0.228534,
		34.155785, 36.376751, 29.944096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814819, 36.315624, 29.389740>,  <34.610256, 36.884552, 29.784122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814819, 36.315624, 29.389740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439011, 36.222931, 29.490618>,  <34.213524, 36.167316, 29.551144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439011, 36.222931, 29.490618>,  <34.814819, 36.315624, 29.389740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439011, 36.222931, 29.490618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157948, -0.360209, -0.919403,
		0.303897, -0.903631, 0.301822,
		-0.939520, -0.231731, 0.252193,
		34.157154, 36.153412, 29.566277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746181, 35.645416, 29.067614>,  <34.814819, 36.315624, 29.389740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746181, 35.645416, 29.067614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370350, 35.753040, 29.152281>,  <34.144852, 35.817616, 29.203081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370350, 35.753040, 29.152281>,  <34.746181, 35.645416, 29.067614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370350, 35.753040, 29.152281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302386, -0.362387, -0.881611,
		-0.160499, -0.892347, 0.421850,
		-0.939576, 0.269060, 0.211670,
		34.088478, 35.833759, 29.215782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371250, 35.138966, 28.790434>,  <34.746181, 35.645416, 29.067614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371250, 35.138966, 28.790434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092735, 35.423283, 28.830366>,  <33.925629, 35.593872, 28.854326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092735, 35.423283, 28.830366>,  <34.371250, 35.138966, 28.790434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092735, 35.423283, 28.830366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348447, -0.213137, -0.912775,
		-0.627512, -0.670338, 0.396076,
		-0.696285, 0.710789, 0.099831,
		33.883850, 35.636520, 28.860315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730927, 34.817066, 28.656656>,  <34.371250, 35.138966, 28.790434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730927, 34.817066, 28.656656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642128, 35.201431, 28.590488>,  <33.588848, 35.432049, 28.550787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642128, 35.201431, 28.590488>,  <33.730927, 34.817066, 28.656656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642128, 35.201431, 28.590488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046843, -0.179967, -0.982557,
		-0.973922, -0.210374, 0.084964,
		-0.221995, 0.960914, -0.165420,
		33.575531, 35.489704, 28.540863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228779, 34.768265, 28.122677>,  <33.730927, 34.817066, 28.656656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228779, 34.768265, 28.122677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361084, 35.139576, 28.054680>,  <33.440468, 35.362362, 28.013882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361084, 35.139576, 28.054680>,  <33.228779, 34.768265, 28.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361084, 35.139576, 28.054680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112699, -0.139990, -0.983718,
		-0.936962, 0.344533, 0.058312,
		0.330760, 0.928278, -0.169994,
		33.460312, 35.418060, 28.003681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764950, 35.106182, 27.663805>,  <33.228779, 34.768265, 28.122677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764950, 35.106182, 27.663805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082367, 35.347988, 27.635979>,  <33.272820, 35.493073, 27.619284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082367, 35.347988, 27.635979>,  <32.764950, 35.106182, 27.663805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082367, 35.347988, 27.635979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176722, 0.119559, -0.976972,
		-0.582282, 0.787567, 0.201708,
		0.793547, 0.604520, -0.069563,
		33.320431, 35.529343, 27.615110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505478, 35.667580, 27.382593>,  <32.764950, 35.106182, 27.663805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505478, 35.667580, 27.382593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899567, 35.684887, 27.316301>,  <33.136021, 35.695271, 27.276525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899567, 35.684887, 27.316301>,  <32.505478, 35.667580, 27.382593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899567, 35.684887, 27.316301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171065, 0.297461, -0.939284,
		0.008659, 0.953753, 0.300466,
		0.985222, 0.043266, -0.165729,
		33.195133, 35.697868, 27.266582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579044, 36.272240, 27.022373>,  <32.505478, 35.667580, 27.382593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579044, 36.272240, 27.022373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907372, 36.060055, 26.937641>,  <33.104366, 35.932743, 26.886803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907372, 36.060055, 26.937641>,  <32.579044, 36.272240, 27.022373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907372, 36.060055, 26.937641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085569, 0.252472, -0.963813,
		0.564749, 0.809238, 0.161841,
		0.820814, -0.530464, -0.211829,
		33.153614, 35.900917, 26.874092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078583, 36.700657, 26.508245>,  <32.579044, 36.272240, 27.022373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078583, 36.700657, 26.508245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221397, 36.327213, 26.496300>,  <33.307087, 36.103146, 26.489132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221397, 36.327213, 26.496300>,  <33.078583, 36.700657, 26.508245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221397, 36.327213, 26.496300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059885, 0.054785, -0.996701,
		0.932170, 0.354068, 0.075469,
		0.357034, -0.933614, -0.029865,
		33.328506, 36.047131, 26.487341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617146, 36.773308, 25.967484>,  <33.078583, 36.700657, 26.508245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617146, 36.773308, 25.967484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483692, 36.396286, 25.974073>,  <33.403618, 36.170071, 25.978027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483692, 36.396286, 25.974073>,  <33.617146, 36.773308, 25.967484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483692, 36.396286, 25.974073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020539, -0.024740, -0.999483,
		0.942479, -0.333124, 0.027613,
		-0.333635, -0.942558, 0.016475,
		33.383602, 36.113518, 25.979015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087032, 36.315620, 25.595453>,  <33.617146, 36.773308, 25.967484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087032, 36.315620, 25.595453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725136, 36.145451, 25.586834>,  <33.507999, 36.043350, 25.581663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725136, 36.145451, 25.586834>,  <34.087032, 36.315620, 25.595453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725136, 36.145451, 25.586834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096554, -0.155546, -0.983098,
		0.414880, -0.891528, 0.181805,
		-0.904738, -0.425422, -0.021547,
		33.453712, 36.017822, 25.580370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322155, 35.775089, 25.207020>,  <34.087032, 36.315620, 25.595453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322155, 35.775089, 25.207020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924637, 35.761223, 25.164753>,  <33.686127, 35.752903, 25.139393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924637, 35.761223, 25.164753>,  <34.322155, 35.775089, 25.207020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924637, 35.761223, 25.164753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110630, -0.211268, -0.971147,
		0.011344, -0.976813, 0.213793,
		-0.993797, -0.034669, -0.105668,
		33.626499, 35.750824, 25.133053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088409, 35.047138, 24.991714>,  <34.322155, 35.775089, 25.207020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088409, 35.047138, 24.991714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786865, 35.286068, 24.882244>,  <33.605938, 35.429428, 24.816563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786865, 35.286068, 24.882244>,  <34.088409, 35.047138, 24.991714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786865, 35.286068, 24.882244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107792, -0.523320, -0.845291,
		-0.648137, -0.607728, 0.458895,
		-0.753856, 0.597330, -0.273675,
		33.560707, 35.465267, 24.800142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595642, 34.617046, 24.687614>,  <34.088409, 35.047138, 24.991714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595642, 34.617046, 24.687614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505470, 34.984985, 24.559202>,  <33.451366, 35.205750, 24.482155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505470, 34.984985, 24.559202>,  <33.595642, 34.617046, 24.687614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505470, 34.984985, 24.559202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086532, -0.347116, -0.933822,
		-0.970410, -0.182728, 0.157846,
		-0.225426, 0.919848, -0.321033,
		33.437843, 35.260941, 24.462893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072250, 34.569977, 24.249571>,  <33.595642, 34.617046, 24.687614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072250, 34.569977, 24.249571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245556, 34.918674, 24.158058>,  <33.349537, 35.127895, 24.103149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245556, 34.918674, 24.158058>,  <33.072250, 34.569977, 24.249571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245556, 34.918674, 24.158058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027526, -0.266526, -0.963435,
		-0.900848, 0.411122, -0.139471,
		0.433261, 0.871747, -0.228783,
		33.375534, 35.180199, 24.089424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732994, 34.695473, 23.600616>,  <33.072250, 34.569977, 24.249571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732994, 34.695473, 23.600616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026608, 34.966969, 23.609692>,  <33.202774, 35.129864, 23.615137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026608, 34.966969, 23.609692>,  <32.732994, 34.695473, 23.600616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026608, 34.966969, 23.609692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237369, -0.225122, -0.944974,
		-0.636281, 0.699026, -0.326357,
		0.734032, 0.678736, 0.022686,
		33.246819, 35.170589, 23.616497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570259, 35.270969, 23.095127>,  <32.732994, 34.695473, 23.600616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570259, 35.270969, 23.095127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967087, 35.247494, 23.139580>,  <33.205185, 35.233406, 23.166252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967087, 35.247494, 23.139580>,  <32.570259, 35.270969, 23.095127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967087, 35.247494, 23.139580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104603, -0.104559, -0.989002,
		0.069667, 0.992785, -0.097591,
		0.992071, -0.058692, 0.111133,
		33.264709, 35.229885, 23.172920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864906, 35.795856, 22.650627>,  <32.570259, 35.270969, 23.095127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864906, 35.795856, 22.650627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156628, 35.527222, 22.702919>,  <33.331661, 35.366039, 22.734295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156628, 35.527222, 22.702919>,  <32.864906, 35.795856, 22.650627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156628, 35.527222, 22.702919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128555, -0.053164, -0.990276,
		0.672008, 0.739015, 0.047564,
		0.729301, -0.671588, 0.130730,
		33.375420, 35.325745, 22.742138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437157, 35.961765, 22.095755>,  <32.864906, 35.795856, 22.650627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437157, 35.961765, 22.095755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502728, 35.589058, 22.225330>,  <33.542072, 35.365433, 22.303076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502728, 35.589058, 22.225330>,  <33.437157, 35.961765, 22.095755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502728, 35.589058, 22.225330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182103, -0.294155, -0.938249,
		0.969518, 0.212798, 0.121456,
		0.163931, -0.931767, 0.323940,
		33.551907, 35.309528, 22.322512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087597, 35.890541, 21.852863>,  <33.437157, 35.961765, 22.095755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087597, 35.890541, 21.852863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917564, 35.531086, 21.896244>,  <33.815544, 35.315414, 21.922272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917564, 35.531086, 21.896244>,  <34.087597, 35.890541, 21.852863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917564, 35.531086, 21.896244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199810, -0.210019, -0.957062,
		0.882825, -0.385162, 0.268832,
		-0.425084, -0.898633, 0.108450,
		33.790039, 35.261497, 21.928780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488640, 35.430496, 21.386477>,  <34.087597, 35.890541, 21.852863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488640, 35.430496, 21.386477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148254, 35.236656, 21.467489>,  <33.944023, 35.120354, 21.516096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148254, 35.236656, 21.467489>,  <34.488640, 35.430496, 21.386477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148254, 35.236656, 21.467489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023479, -0.350128, -0.936408,
		0.524694, -0.801607, 0.286569,
		-0.850967, -0.484599, 0.202531,
		33.892963, 35.091278, 21.528248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689484, 34.709747, 21.170717>,  <34.488640, 35.430496, 21.386477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689484, 34.709747, 21.170717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292770, 34.759533, 21.158855>,  <34.054745, 34.789406, 21.151737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292770, 34.759533, 21.158855>,  <34.689484, 34.709747, 21.170717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292770, 34.759533, 21.158855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020957, -0.386674, -0.921978,
		-0.126220, -0.913779, 0.386105,
		-0.991781, 0.124464, -0.029656,
		33.995235, 34.796871, 21.149958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480251, 34.189987, 20.813688>,  <34.689484, 34.709747, 21.170717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480251, 34.189987, 20.813688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153500, 34.420055, 20.796331>,  <33.957447, 34.558098, 20.785917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153500, 34.420055, 20.796331>,  <34.480251, 34.189987, 20.813688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153500, 34.420055, 20.796331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022769, -0.107322, -0.993964,
		-0.576359, -0.810960, 0.100766,
		-0.816879, 0.575174, -0.043391,
		33.908436, 34.592609, 20.783314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966019, 33.819847, 20.508730>,  <34.480251, 34.189987, 20.813688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966019, 33.819847, 20.508730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907574, 34.210587, 20.446215>,  <33.872505, 34.445030, 20.408707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907574, 34.210587, 20.446215>,  <33.966019, 33.819847, 20.508730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907574, 34.210587, 20.446215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134535, -0.136893, -0.981408,
		-0.980077, -0.164426, -0.111418,
		-0.146117, 0.976844, -0.156286,
		33.863739, 34.503639, 20.399328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514690, 33.925659, 19.950264>,  <33.966019, 33.819847, 20.508730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514690, 33.925659, 19.950264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670734, 34.291729, 19.990808>,  <33.764362, 34.511372, 20.015135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670734, 34.291729, 19.990808>,  <33.514690, 33.925659, 19.950264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670734, 34.291729, 19.990808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101572, 0.066639, -0.992594,
		-0.915148, 0.397519, -0.066959,
		0.390112, 0.915171, 0.101361,
		33.787769, 34.566280, 20.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228642, 34.191528, 19.366899>,  <33.514690, 33.925659, 19.950264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228642, 34.191528, 19.366899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545856, 34.422226, 19.445343>,  <33.736187, 34.560642, 19.492409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545856, 34.422226, 19.445343>,  <33.228642, 34.191528, 19.366899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545856, 34.422226, 19.445343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239313, 0.001089, -0.970942,
		-0.560196, 0.816926, -0.137158,
		0.793038, 0.576741, 0.196111,
		33.783768, 34.595249, 19.504177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236824, 34.834934, 19.017767>,  <33.228642, 34.191528, 19.366899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236824, 34.834934, 19.017767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624065, 34.746567, 19.065054>,  <33.856411, 34.693546, 19.093426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624065, 34.746567, 19.065054>,  <33.236824, 34.834934, 19.017767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624065, 34.746567, 19.065054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162885, 0.196387, -0.966903,
		0.190393, 0.955315, 0.226107,
		0.968101, -0.220921, 0.118216,
		33.914497, 34.680290, 19.100519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711105, 35.445061, 18.878969>,  <33.236824, 34.834934, 19.017767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711105, 35.445061, 18.878969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868664, 35.083786, 18.810730>,  <33.963200, 34.867023, 18.769787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868664, 35.083786, 18.810730>,  <33.711105, 35.445061, 18.878969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868664, 35.083786, 18.810730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084294, 0.220317, -0.971779,
		0.915280, 0.368403, 0.162916,
		0.393900, -0.903183, -0.170598,
		33.986835, 34.812832, 18.759550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262421, 35.490082, 18.504728>,  <33.711105, 35.445061, 18.878969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262421, 35.490082, 18.504728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082916, 35.138134, 18.442186>,  <33.975212, 34.926968, 18.404661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082916, 35.138134, 18.442186>,  <34.262421, 35.490082, 18.504728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082916, 35.138134, 18.442186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104579, 0.225468, -0.968621,
		0.887510, -0.418331, -0.193198,
		-0.448764, -0.879866, -0.156357,
		33.948288, 34.874176, 18.395279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688450, 35.557861, 18.044338>,  <34.262421, 35.490082, 18.504728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688450, 35.557861, 18.044338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594971, 35.550198, 17.655491>,  <34.538883, 35.545601, 17.422182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594971, 35.550198, 17.655491>,  <34.688450, 35.557861, 18.044338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594971, 35.550198, 17.655491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404724, -0.910990, -0.079346,
		-0.884071, -0.411983, 0.220652,
		-0.233701, -0.019155, -0.972120,
		34.524860, 35.544453, 17.363855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089169, 35.044197, 17.633131>,  <34.688450, 35.557861, 18.044338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089169, 35.044197, 17.633131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305401, 34.741135, 17.486856>,  <35.435139, 34.559296, 17.399092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305401, 34.741135, 17.486856>,  <35.089169, 35.044197, 17.633131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305401, 34.741135, 17.486856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204461, 0.539957, -0.816482,
		0.816069, 0.366605, 0.446802,
		0.540580, -0.757659, -0.365686,
		35.467575, 34.513836, 17.377151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663643, 35.319458, 17.193991>,  <35.089169, 35.044197, 17.633131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663643, 35.319458, 17.193991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580341, 34.943245, 17.086637>,  <35.530361, 34.717518, 17.022226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580341, 34.943245, 17.086637>,  <35.663643, 35.319458, 17.193991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580341, 34.943245, 17.086637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045162, 0.264859, -0.963229,
		0.977032, -0.212716, -0.012681,
		-0.208253, -0.940533, -0.268382,
		35.517864, 34.661087, 17.006123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954327, 35.479691, 17.834690>,  <35.663643, 35.319458, 17.193991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954327, 35.479691, 17.834690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294010, 35.648502, 17.961645>,  <36.497822, 35.749790, 18.037817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294010, 35.648502, 17.961645>,  <35.954327, 35.479691, 17.834690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294010, 35.648502, 17.961645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523596, 0.595035, 0.609738,
		0.068470, -0.683978, 0.726282,
		0.849211, 0.422027, 0.317386,
		36.548775, 35.775112, 18.056862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177135, 35.258846, 18.545864>,  <35.954327, 35.479691, 17.834690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177135, 35.258846, 18.545864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358212, 35.610050, 18.483681>,  <36.466858, 35.820774, 18.446371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358212, 35.610050, 18.483681>,  <36.177135, 35.258846, 18.545864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358212, 35.610050, 18.483681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279735, 0.305384, 0.910214,
		0.846654, -0.368555, 0.383854,
		0.452686, 0.878014, -0.155457,
		36.494019, 35.873455, 18.437044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718395, 35.518387, 19.079037>,  <36.177135, 35.258846, 18.545864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718395, 35.518387, 19.079037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522640, 35.851654, 18.976019>,  <36.405186, 36.051613, 18.914209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522640, 35.851654, 18.976019>,  <36.718395, 35.518387, 19.079037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522640, 35.851654, 18.976019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010303, 0.300828, 0.953623,
		0.872005, 0.464038, -0.155806,
		-0.489388, 0.833170, -0.257543,
		36.375824, 36.101604, 18.898756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176163, 36.093372, 19.222075>,  <36.718395, 35.518387, 19.079037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176163, 36.093372, 19.222075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781998, 36.155998, 19.248762>,  <36.545498, 36.193573, 19.264774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781998, 36.155998, 19.248762>,  <37.176163, 36.093372, 19.222075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781998, 36.155998, 19.248762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133741, 0.469963, 0.872495,
		0.105243, 0.868690, -0.484046,
		-0.985412, 0.156561, 0.066719,
		36.486374, 36.202965, 19.268778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044262, 36.732346, 19.479181>,  <37.176163, 36.093372, 19.222075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044262, 36.732346, 19.479181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708221, 36.529018, 19.554920>,  <36.506599, 36.407024, 19.600363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708221, 36.529018, 19.554920>,  <37.044262, 36.732346, 19.479181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708221, 36.529018, 19.554920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067224, 0.443943, 0.893530,
		-0.538254, 0.737924, -0.407126,
		-0.840098, -0.508315, 0.189348,
		36.456192, 36.376526, 19.611725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606552, 37.226406, 19.817392>,  <37.044262, 36.732346, 19.479181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606552, 37.226406, 19.817392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481846, 36.856285, 19.903761>,  <36.407024, 36.634212, 19.955582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481846, 36.856285, 19.903761>,  <36.606552, 37.226406, 19.817392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481846, 36.856285, 19.903761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044804, 0.241310, 0.969413,
		-0.949103, 0.292553, -0.116688,
		-0.311763, -0.925301, 0.215921,
		36.388317, 36.578693, 19.968536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916702, 37.193790, 20.215832>,  <36.606552, 37.226406, 19.817392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916702, 37.193790, 20.215832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057846, 36.833134, 20.315855>,  <36.142532, 36.616741, 20.375870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057846, 36.833134, 20.315855>,  <35.916702, 37.193790, 20.215832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057846, 36.833134, 20.315855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283962, 0.151455, 0.946798,
		-0.891547, -0.405093, -0.202590,
		0.352858, -0.901643, 0.250060,
		36.163704, 36.562641, 20.390873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421867, 37.058414, 20.738468>,  <35.916702, 37.193790, 20.215832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421867, 37.058414, 20.738468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720798, 36.797165, 20.787334>,  <35.900158, 36.640415, 20.816654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720798, 36.797165, 20.787334>,  <35.421867, 37.058414, 20.738468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720798, 36.797165, 20.787334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080882, 0.093068, 0.992369,
		-0.659511, -0.751509, 0.016727,
		0.747331, -0.653126, 0.122163,
		35.945000, 36.601227, 20.823984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257862, 36.585575, 21.270639>,  <35.421867, 37.058414, 20.738468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257862, 36.585575, 21.270639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655148, 36.540558, 21.282394>,  <35.893520, 36.513546, 21.289448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655148, 36.540558, 21.282394>,  <35.257862, 36.585575, 21.270639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655148, 36.540558, 21.282394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053473, -0.217434, 0.974609,
		-0.103296, -0.969565, -0.221976,
		0.993212, -0.112543, 0.029386,
		35.953110, 36.506794, 21.291210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334759, 35.974274, 21.609915>,  <35.257862, 36.585575, 21.270639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334759, 35.974274, 21.609915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669346, 36.192459, 21.631031>,  <35.870098, 36.323368, 21.643702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669346, 36.192459, 21.631031>,  <35.334759, 35.974274, 21.609915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669346, 36.192459, 21.631031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006770, -0.086040, 0.996269,
		0.547968, -0.833708, -0.068278,
		0.836472, 0.545461, 0.052792,
		35.920288, 36.356098, 21.646868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693989, 35.732220, 22.199230>,  <35.334759, 35.974274, 21.609915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693989, 35.732220, 22.199230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890766, 36.076843, 22.149113>,  <36.008831, 36.283619, 22.119041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890766, 36.076843, 22.149113>,  <35.693989, 35.732220, 22.199230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890766, 36.076843, 22.149113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219717, 0.016396, 0.975426,
		0.842446, -0.507385, -0.181234,
		0.491945, 0.861564, -0.125294,
		36.038349, 36.335312, 22.111525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376667, 35.733650, 22.547682>,  <35.693989, 35.732220, 22.199230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376667, 35.733650, 22.547682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320866, 36.128700, 22.519005>,  <36.287384, 36.365730, 22.501799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320866, 36.128700, 22.519005>,  <36.376667, 35.733650, 22.547682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320866, 36.128700, 22.519005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143361, 0.091782, 0.985405,
		0.979789, 0.127187, -0.154390,
		-0.139501, 0.987623, -0.071693,
		36.279015, 36.424988, 22.497498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974655, 36.120399, 22.790970>,  <36.376667, 35.733650, 22.547682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974655, 36.120399, 22.790970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687168, 36.398518, 22.792131>,  <36.514675, 36.565388, 22.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687168, 36.398518, 22.792131>,  <36.974655, 36.120399, 22.790970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687168, 36.398518, 22.792131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204313, 0.207203, 0.956725,
		0.664603, 0.688211, -0.290978,
		-0.718721, 0.695293, 0.002903,
		36.471554, 36.607105, 22.793003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228035, 36.601856, 23.294130>,  <36.974655, 36.120399, 22.790970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228035, 36.601856, 23.294130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840054, 36.683189, 23.240707>,  <36.607265, 36.731991, 23.208652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840054, 36.683189, 23.240707>,  <37.228035, 36.601856, 23.294130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840054, 36.683189, 23.240707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073419, 0.278735, 0.957558,
		0.231931, 0.938596, -0.255432,
		-0.969957, 0.203334, -0.133558,
		36.549065, 36.744190, 23.200640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073334, 37.359055, 23.467243>,  <37.228035, 36.601856, 23.294130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073334, 37.359055, 23.467243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749916, 37.128677, 23.515491>,  <36.555866, 36.990452, 23.544441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749916, 37.128677, 23.515491>,  <37.073334, 37.359055, 23.467243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749916, 37.128677, 23.515491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081760, 0.312953, 0.946243,
		-0.582732, 0.755214, -0.300125,
		-0.808541, -0.575945, 0.120621,
		36.507355, 36.955894, 23.551678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489864, 37.826347, 23.666176>,  <37.073334, 37.359055, 23.467243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489864, 37.826347, 23.666176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382820, 37.456177, 23.773489>,  <36.318592, 37.234074, 23.837877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382820, 37.456177, 23.773489>,  <36.489864, 37.826347, 23.666176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382820, 37.456177, 23.773489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258342, 0.337160, 0.905308,
		-0.928247, 0.172964, -0.329305,
		-0.267614, -0.925422, 0.268284,
		36.302536, 37.178551, 23.853973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875046, 37.987629, 23.993137>,  <36.489864, 37.826347, 23.666176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875046, 37.987629, 23.993137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999142, 37.631966, 24.127691>,  <36.073601, 37.418568, 24.208424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999142, 37.631966, 24.127691>,  <35.875046, 37.987629, 23.993137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999142, 37.631966, 24.127691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249030, 0.265475, 0.931401,
		-0.917461, -0.372729, -0.139065,
		0.310242, -0.889155, 0.336383,
		36.092213, 37.365219, 24.228607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264977, 37.619881, 24.216654>,  <35.875046, 37.987629, 23.993137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264977, 37.619881, 24.216654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578773, 37.471378, 24.415342>,  <35.767052, 37.382275, 24.534555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578773, 37.471378, 24.415342>,  <35.264977, 37.619881, 24.216654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578773, 37.471378, 24.415342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424745, 0.261933, 0.866592,
		-0.451840, -0.890818, 0.047794,
		0.784495, -0.371261, 0.496723,
		35.814121, 37.360001, 24.564360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915493, 37.384007, 24.831247>,  <35.264977, 37.619881, 24.216654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915493, 37.384007, 24.831247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304913, 37.372658, 24.921934>,  <35.538563, 37.365849, 24.976347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304913, 37.372658, 24.921934>,  <34.915493, 37.384007, 24.831247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304913, 37.372658, 24.921934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215267, 0.218736, 0.951743,
		-0.076591, -0.975372, 0.206843,
		0.973547, -0.028368, 0.226718,
		35.596977, 37.364147, 24.989950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025486, 36.942795, 25.406374>,  <34.915493, 37.384007, 24.831247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025486, 36.942795, 25.406374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318672, 37.213966, 25.383841>,  <35.494583, 37.376667, 25.370321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318672, 37.213966, 25.383841>,  <35.025486, 36.942795, 25.406374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318672, 37.213966, 25.383841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187220, 0.280646, 0.941375,
		0.653991, -0.679453, 0.332626,
		0.732970, 0.677925, -0.056333,
		35.538563, 37.417343, 25.366941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220604, 36.912220, 26.025661>,  <35.025486, 36.942795, 25.406374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220604, 36.912220, 26.025661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378792, 37.265347, 25.924273>,  <35.473705, 37.477222, 25.863440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378792, 37.265347, 25.924273>,  <35.220604, 36.912220, 26.025661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378792, 37.265347, 25.924273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113414, 0.320793, 0.940334,
		0.911450, -0.343125, 0.226987,
		0.395468, 0.882812, -0.253472,
		35.497433, 37.530190, 25.848230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692024, 37.022663, 26.581120>,  <35.220604, 36.912220, 26.025661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692024, 37.022663, 26.581120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664307, 37.377224, 26.398043>,  <35.647675, 37.589962, 26.288197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664307, 37.377224, 26.398043>,  <35.692024, 37.022663, 26.581120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664307, 37.377224, 26.398043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010345, 0.459409, 0.888165,
		0.997542, 0.056811, -0.041005,
		-0.069296, 0.886406, -0.457692,
		35.643517, 37.643147, 26.260735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204548, 37.583618, 26.801569>,  <35.692024, 37.022663, 26.581120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204548, 37.583618, 26.801569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891953, 37.794060, 26.667412>,  <35.704395, 37.920322, 26.586918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891953, 37.794060, 26.667412>,  <36.204548, 37.583618, 26.801569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891953, 37.794060, 26.667412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052078, 0.590690, 0.805216,
		0.621737, 0.611804, -0.489019,
		-0.781493, 0.526100, -0.335392,
		35.657505, 37.951889, 26.566793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426323, 38.188801, 26.968393>,  <36.204548, 37.583618, 26.801569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426323, 38.188801, 26.968393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035870, 38.246822, 26.903738>,  <35.801598, 38.281635, 26.864944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035870, 38.246822, 26.903738>,  <36.426323, 38.188801, 26.968393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035870, 38.246822, 26.903738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057025, 0.546960, 0.835214,
		0.209559, 0.824497, -0.525633,
		-0.976132, 0.145052, -0.161638,
		35.743031, 38.290337, 26.855247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298565, 38.917187, 27.087894>,  <36.426323, 38.188801, 26.968393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298565, 38.917187, 27.087894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929733, 38.762993, 27.101574>,  <35.708435, 38.670479, 27.109781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929733, 38.762993, 27.101574>,  <36.298565, 38.917187, 27.087894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929733, 38.762993, 27.101574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215083, 0.583934, 0.782790,
		-0.321721, 0.714441, -0.621345,
		-0.922082, -0.385480, 0.034200,
		35.653111, 38.647350, 27.111834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878277, 39.466682, 26.997309>,  <36.298565, 38.917187, 27.087894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878277, 39.466682, 26.997309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683552, 39.189198, 27.209639>,  <35.566715, 39.022705, 27.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683552, 39.189198, 27.209639>,  <35.878277, 39.466682, 26.997309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683552, 39.189198, 27.209639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169052, 0.671027, 0.721903,
		-0.856992, 0.261694, -0.443938,
		-0.486812, -0.693714, 0.530825,
		35.537510, 38.981083, 27.368887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274315, 39.804768, 27.333769>,  <35.878277, 39.466682, 26.997309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274315, 39.804768, 27.333769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291637, 39.459187, 27.534451>,  <35.302032, 39.251839, 27.654860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291637, 39.459187, 27.534451>,  <35.274315, 39.804768, 27.333769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291637, 39.459187, 27.534451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094317, 0.496397, 0.862957,
		-0.994600, -0.084690, -0.059989,
		0.043305, -0.863955, 0.501704,
		35.304630, 39.200001, 27.684961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603165, 39.686554, 27.717623>,  <35.274315, 39.804768, 27.333769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603165, 39.686554, 27.717623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871948, 39.468052, 27.917656>,  <35.033218, 39.336952, 28.037676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871948, 39.468052, 27.917656>,  <34.603165, 39.686554, 27.717623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871948, 39.468052, 27.917656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327178, 0.386820, 0.862163,
		-0.664401, -0.742952, 0.081205,
		0.671957, -0.546253, 0.500081,
		35.073536, 39.304176, 28.067680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236389, 39.508732, 28.382174>,  <34.603165, 39.686554, 27.717623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236389, 39.508732, 28.382174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629799, 39.453896, 28.429308>,  <34.865845, 39.420994, 28.457588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629799, 39.453896, 28.429308>,  <34.236389, 39.508732, 28.382174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629799, 39.453896, 28.429308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091735, 0.183173, 0.978791,
		-0.155771, -0.973475, 0.167579,
		0.983525, -0.137094, 0.117834,
		34.924858, 39.412769, 28.464659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282246, 39.098427, 28.928246>,  <34.236389, 39.508732, 28.382174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282246, 39.098427, 28.928246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651638, 39.244614, 28.881584>,  <34.873276, 39.332325, 28.853588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651638, 39.244614, 28.881584>,  <34.282246, 39.098427, 28.928246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651638, 39.244614, 28.881584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051309, 0.183678, 0.981646,
		0.380191, -0.912520, 0.150872,
		0.923484, 0.365472, -0.116653,
		34.928684, 39.354256, 28.846588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638290, 38.965828, 29.616356>,  <34.282246, 39.098427, 28.928246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638290, 38.965828, 29.616356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877537, 39.247707, 29.463697>,  <35.021084, 39.416836, 29.372103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877537, 39.247707, 29.463697>,  <34.638290, 38.965828, 29.616356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877537, 39.247707, 29.463697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283076, 0.259747, 0.923255,
		0.749747, -0.660252, -0.044123,
		0.598120, 0.704698, -0.381646,
		35.056973, 39.459118, 29.349203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258785, 38.850033, 29.894455>,  <34.638290, 38.965828, 29.616356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258785, 38.850033, 29.894455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237011, 39.235859, 29.791191>,  <35.223946, 39.467354, 29.729233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237011, 39.235859, 29.791191>,  <35.258785, 38.850033, 29.894455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237011, 39.235859, 29.791191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386433, 0.258749, 0.885279,
		0.920710, -0.051571, -0.386826,
		-0.054436, 0.964567, -0.258162,
		35.220680, 39.525230, 29.713743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854809, 39.142216, 30.156773>,  <35.258785, 38.850033, 29.894455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854809, 39.142216, 30.156773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625790, 39.458378, 30.069649>,  <35.488377, 39.648075, 30.017374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625790, 39.458378, 30.069649>,  <35.854809, 39.142216, 30.156773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625790, 39.458378, 30.069649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156358, 0.366055, 0.917364,
		0.804823, 0.491179, -0.333171,
		-0.572549, 0.790410, -0.217809,
		35.454025, 39.695499, 30.004307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236092, 39.753300, 30.252045>,  <35.854809, 39.142216, 30.156773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236092, 39.753300, 30.252045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845642, 39.821041, 30.306446>,  <35.611370, 39.861687, 30.339087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845642, 39.821041, 30.306446>,  <36.236092, 39.753300, 30.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845642, 39.821041, 30.306446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190410, 0.365926, 0.910957,
		0.104508, 0.915105, -0.389437,
		-0.976126, 0.169355, 0.136003,
		35.552803, 39.871849, 30.347246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143433, 40.094688, 30.919632>,  <36.236092, 39.753300, 30.252045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143433, 40.094688, 30.919632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746944, 40.066204, 30.875071>,  <35.509052, 40.049114, 30.848333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746944, 40.066204, 30.875071>,  <36.143433, 40.094688, 30.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746944, 40.066204, 30.875071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131077, 0.418731, 0.898601,
		-0.017347, 0.905314, -0.424389,
		-0.991220, -0.071216, -0.111402,
		35.449577, 40.044838, 30.841650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826252, 40.715027, 31.094997>,  <36.143433, 40.094688, 30.919632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826252, 40.715027, 31.094997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550690, 40.435253, 31.171095>,  <35.385353, 40.267387, 31.216753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550690, 40.435253, 31.171095>,  <35.826252, 40.715027, 31.094997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550690, 40.435253, 31.171095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107558, 0.358198, 0.927430,
		-0.716826, 0.618449, -0.321995,
		-0.688906, -0.699439, 0.190246,
		35.344017, 40.225422, 31.228168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397572, 41.018013, 31.627371>,  <35.826252, 40.715027, 31.094997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397572, 41.018013, 31.627371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285889, 40.635811, 31.665422>,  <35.218880, 40.406490, 31.688253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285889, 40.635811, 31.665422>,  <35.397572, 41.018013, 31.627371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285889, 40.635811, 31.665422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321934, 0.186487, 0.928214,
		-0.904655, 0.228540, -0.359679,
		-0.279210, -0.955506, 0.095131,
		35.202126, 40.349159, 31.693962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754124, 41.028439, 31.832428>,  <35.397572, 41.018013, 31.627371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754124, 41.028439, 31.832428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849728, 40.657864, 31.948761>,  <34.907089, 40.435516, 32.018562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849728, 40.657864, 31.948761>,  <34.754124, 41.028439, 31.832428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849728, 40.657864, 31.948761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531096, 0.126015, 0.837889,
		-0.812902, -0.354727, -0.461908,
		0.239014, -0.926439, 0.290832,
		34.921432, 40.379932, 32.036011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223209, 40.690174, 32.030289>,  <34.754124, 41.028439, 31.832428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223209, 40.690174, 32.030289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496288, 40.467247, 32.219318>,  <34.660133, 40.333492, 32.332737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496288, 40.467247, 32.219318>,  <34.223209, 40.690174, 32.030289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496288, 40.467247, 32.219318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617856, -0.095002, 0.780531,
		-0.390106, -0.824849, -0.409197,
		0.682695, -0.557314, 0.472576,
		34.701096, 40.300053, 32.361092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857494, 40.171711, 32.355999>,  <34.223209, 40.690174, 32.030289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857494, 40.171711, 32.355999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202572, 40.189007, 32.557549>,  <34.409618, 40.199387, 32.678478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202572, 40.189007, 32.557549>,  <33.857494, 40.171711, 32.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202572, 40.189007, 32.557549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493210, -0.148322, 0.857172,
		0.111803, -0.987993, -0.106629,
		0.862696, 0.043244, 0.503871,
		34.461380, 40.201981, 32.708710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755562, 39.684433, 32.750042>,  <33.857494, 40.171711, 32.355999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755562, 39.684433, 32.750042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074631, 39.858986, 32.916557>,  <34.266071, 39.963718, 33.016464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074631, 39.858986, 32.916557>,  <33.755562, 39.684433, 32.750042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074631, 39.858986, 32.916557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330146, -0.261681, 0.906932,
		0.504703, -0.860868, -0.064665,
		0.797670, 0.436383, 0.416284,
		34.313931, 39.989902, 33.041443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992840, 39.209866, 33.298531>,  <33.755562, 39.684433, 32.750042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992840, 39.209866, 33.298531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124962, 39.575249, 33.393600>,  <34.204235, 39.794479, 33.450642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124962, 39.575249, 33.393600>,  <33.992840, 39.209866, 33.298531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124962, 39.575249, 33.393600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284736, -0.143647, 0.947782,
		0.899903, -0.380729, 0.212649,
		0.330302, 0.913461, 0.237676,
		34.224052, 39.849285, 33.464905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500916, 39.100368, 33.841595>,  <33.992840, 39.209866, 33.298531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500916, 39.100368, 33.841595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387058, 39.479256, 33.900597>,  <34.318745, 39.706589, 33.935997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387058, 39.479256, 33.900597>,  <34.500916, 39.100368, 33.841595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387058, 39.479256, 33.900597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218693, -0.213969, 0.952046,
		0.933356, 0.238732, 0.268055,
		-0.284639, 0.947219, 0.147500,
		34.301666, 39.763420, 33.944847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862030, 38.709026, 33.429585>,  <34.500916, 39.100368, 33.841595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862030, 38.709026, 33.429585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152790, 38.706577, 33.704269>,  <35.327248, 38.705109, 33.869080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152790, 38.706577, 33.704269>,  <34.862030, 38.709026, 33.429585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152790, 38.706577, 33.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556708, -0.580248, -0.594465,
		0.402107, 0.814417, -0.418373,
		0.726902, -0.006127, 0.686714,
		35.370861, 38.704739, 33.910282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514156, 39.112122, 33.236198>,  <34.862030, 38.709026, 33.429585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514156, 39.112122, 33.236198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600784, 38.804829, 33.477169>,  <35.652763, 38.620453, 33.621750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600784, 38.804829, 33.477169>,  <35.514156, 39.112122, 33.236198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600784, 38.804829, 33.477169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504524, -0.440210, -0.742746,
		0.835794, 0.464797, 0.292253,
		0.216573, -0.768231, 0.602426,
		35.665756, 38.574360, 33.657898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270390, 39.006523, 33.264389>,  <35.514156, 39.112122, 33.236198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270390, 39.006523, 33.264389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100365, 38.659386, 33.367287>,  <35.998352, 38.451103, 33.429024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100365, 38.659386, 33.367287>,  <36.270390, 39.006523, 33.264389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100365, 38.659386, 33.367287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571254, -0.477641, -0.667478,
		0.702136, -0.136767, 0.698785,
		-0.425058, -0.867844, 0.257240,
		35.972847, 38.399033, 33.444458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831219, 38.555740, 33.314873>,  <36.270390, 39.006523, 33.264389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831219, 38.555740, 33.314873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497761, 38.346043, 33.245358>,  <36.297684, 38.220222, 33.203648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497761, 38.346043, 33.245358>,  <36.831219, 38.555740, 33.314873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497761, 38.346043, 33.245358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499545, -0.581521, -0.642096,
		0.235556, -0.622095, 0.746667,
		-0.833647, -0.524244, -0.173783,
		36.247665, 38.188770, 33.193222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022781, 37.846123, 33.366837>,  <36.831219, 38.555740, 33.314873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022781, 37.846123, 33.366837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683727, 37.807259, 33.158192>,  <36.480297, 37.783939, 33.033005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683727, 37.807259, 33.158192>,  <37.022781, 37.846123, 33.366837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683727, 37.807259, 33.158192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472283, -0.586182, -0.658285,
		-0.241801, -0.804333, 0.542753,
		-0.847633, -0.097159, -0.521612,
		36.429436, 37.778111, 33.001709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029537, 37.113514, 33.144070>,  <37.022781, 37.846123, 33.366837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029537, 37.113514, 33.144070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738358, 37.241661, 32.901596>,  <36.563652, 37.318550, 32.756111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738358, 37.241661, 32.901596>,  <37.029537, 37.113514, 33.144070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738358, 37.241661, 32.901596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456068, -0.433901, -0.777002,
		-0.511952, -0.842075, 0.169745,
		-0.727947, 0.320372, -0.606181,
		36.519974, 37.337772, 32.719742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693569, 36.518600, 32.733276>,  <37.029537, 37.113514, 33.144070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693569, 36.518600, 32.733276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696251, 36.869923, 32.542053>,  <36.697861, 37.080715, 32.427319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696251, 36.869923, 32.542053>,  <36.693569, 36.518600, 32.733276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696251, 36.869923, 32.542053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451894, -0.429129, -0.782074,
		-0.892047, -0.210785, -0.399778,
		0.006707, 0.878304, -0.478056,
		36.698261, 37.133415, 32.398636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587696, 36.373035, 31.956470>,  <36.693569, 36.518600, 32.733276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587696, 36.373035, 31.956470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759319, 36.733566, 31.980183>,  <36.862293, 36.949886, 31.994410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759319, 36.733566, 31.980183>,  <36.587696, 36.373035, 31.956470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759319, 36.733566, 31.980183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661070, -0.268610, -0.700597,
		-0.615545, 0.339785, -0.711091,
		0.429058, 0.901329, 0.059280,
		36.888039, 37.003963, 31.997967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553207, 36.586758, 31.260489>,  <36.587696, 36.373035, 31.956470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553207, 36.586758, 31.260489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802437, 36.850460, 31.428850>,  <36.951973, 37.008682, 31.529867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802437, 36.850460, 31.428850>,  <36.553207, 36.586758, 31.260489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802437, 36.850460, 31.428850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542232, 0.023759, -0.839893,
		-0.563703, 0.751545, -0.342665,
		0.623075, 0.659254, 0.420905,
		36.989361, 37.048237, 31.555122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616127, 37.127445, 30.746983>,  <36.553207, 36.586758, 31.260489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616127, 37.127445, 30.746983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930733, 37.116459, 30.993769>,  <37.119495, 37.109867, 31.141840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930733, 37.116459, 30.993769>,  <36.616127, 37.127445, 30.746983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930733, 37.116459, 30.993769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584383, -0.290008, -0.757886,
		0.199740, 0.956630, -0.212045,
		0.786511, -0.027465, 0.616965,
		37.166687, 37.108219, 31.178858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098328, 37.667877, 30.515837>,  <36.616127, 37.127445, 30.746983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098328, 37.667877, 30.515837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323387, 37.389458, 30.694248>,  <37.458424, 37.222408, 30.801296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323387, 37.389458, 30.694248>,  <37.098328, 37.667877, 30.515837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323387, 37.389458, 30.694248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612258, -0.011682, -0.790572,
		0.555485, 0.717902, 0.419587,
		0.562652, -0.696046, 0.446030,
		37.492184, 37.180645, 30.828058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679649, 37.896538, 30.320284>,  <37.098328, 37.667877, 30.515837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679649, 37.896538, 30.320284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743099, 37.530487, 30.468542>,  <37.781170, 37.310856, 30.557497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743099, 37.530487, 30.468542>,  <37.679649, 37.896538, 30.320284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743099, 37.530487, 30.468542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406653, -0.281524, -0.869125,
		0.899706, 0.288592, 0.327482,
		0.158629, -0.915128, 0.370645,
		37.790688, 37.255947, 30.579735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321182, 37.781689, 30.139509>,  <37.679649, 37.896538, 30.320284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321182, 37.781689, 30.139509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184734, 37.408710, 30.187151>,  <38.102867, 37.184925, 30.215736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184734, 37.408710, 30.187151>,  <38.321182, 37.781689, 30.139509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184734, 37.408710, 30.187151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304995, -0.229634, -0.924254,
		0.889165, -0.278957, 0.362724,
		-0.341121, -0.932444, 0.119102,
		38.082397, 37.128979, 30.222881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846416, 37.337509, 29.835672>,  <38.321182, 37.781689, 30.139509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846416, 37.337509, 29.835672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502747, 37.133389, 29.850704>,  <38.296543, 37.010918, 29.859724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502747, 37.133389, 29.850704>,  <38.846416, 37.337509, 29.835672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502747, 37.133389, 29.850704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194494, -0.393629, -0.898459,
		0.473275, -0.764625, 0.437446,
		-0.859176, -0.510299, 0.037579,
		38.244995, 36.980297, 29.861979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124504, 36.711559, 29.588316>,  <38.846416, 37.337509, 29.835672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124504, 36.711559, 29.588316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727589, 36.741467, 29.548788>,  <38.489437, 36.759411, 29.525070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727589, 36.741467, 29.548788>,  <39.124504, 36.711559, 29.588316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727589, 36.741467, 29.548788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069964, -0.320172, -0.944772,
		-0.102281, -0.944404, 0.312473,
		-0.992292, 0.074771, -0.098822,
		38.429901, 36.763897, 29.519142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864357, 36.126362, 29.198050>,  <39.124504, 36.711559, 29.588316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864357, 36.126362, 29.198050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551258, 36.373856, 29.171289>,  <38.363400, 36.522350, 29.155233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551258, 36.373856, 29.171289>,  <38.864357, 36.126362, 29.198050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551258, 36.373856, 29.171289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165773, -0.310909, -0.935871,
		-0.599852, -0.721462, 0.345932,
		-0.782749, 0.618731, -0.066901,
		38.316433, 36.559475, 29.151218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318424, 35.710793, 29.019672>,  <38.864357, 36.126362, 29.198050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318424, 35.710793, 29.019672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197865, 36.074268, 28.904129>,  <38.125530, 36.292355, 28.834803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197865, 36.074268, 28.904129>,  <38.318424, 35.710793, 29.019672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197865, 36.074268, 28.904129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354599, -0.388038, -0.850697,
		-0.885111, -0.153966, 0.439173,
		-0.301395, 0.908691, -0.288860,
		38.107445, 36.346874, 28.817471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642990, 35.621761, 28.812525>,  <38.318424, 35.710793, 29.019672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642990, 35.621761, 28.812525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752209, 35.964787, 28.638155>,  <37.817741, 36.170601, 28.533533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752209, 35.964787, 28.638155>,  <37.642990, 35.621761, 28.812525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752209, 35.964787, 28.638155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299008, -0.355046, -0.885741,
		-0.914351, 0.372198, 0.159472,
		0.273051, 0.857561, -0.435927,
		37.834126, 36.222054, 28.507378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171036, 35.789188, 28.334332>,  <37.642990, 35.621761, 28.812525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171036, 35.789188, 28.334332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484520, 36.006569, 28.214022>,  <37.672611, 36.136997, 28.141836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484520, 36.006569, 28.214022>,  <37.171036, 35.789188, 28.334332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484520, 36.006569, 28.214022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168187, -0.280478, -0.945011,
		-0.597927, 0.791197, -0.128412,
		0.783707, 0.543451, -0.300774,
		37.719631, 36.169605, 28.123789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958199, 36.203346, 27.852709>,  <37.171036, 35.789188, 28.334332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958199, 36.203346, 27.852709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352066, 36.217274, 27.784328>,  <37.588387, 36.225628, 27.743301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352066, 36.217274, 27.784328>,  <36.958199, 36.203346, 27.852709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352066, 36.217274, 27.784328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160731, -0.199971, -0.966528,
		-0.067836, 0.979183, -0.191309,
		0.984664, 0.034816, -0.170950,
		37.647465, 36.227718, 27.733044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881382, 36.209122, 27.230888>,  <36.958199, 36.203346, 27.852709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881382, 36.209122, 27.230888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278057, 36.180218, 27.273462>,  <37.516064, 36.162876, 27.299007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278057, 36.180218, 27.273462>,  <36.881382, 36.209122, 27.230888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278057, 36.180218, 27.273462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100570, -0.080459, -0.991671,
		0.080223, 0.994135, -0.072523,
		0.991690, -0.072261, 0.106434,
		37.575565, 36.158539, 27.305393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216099, 36.742851, 26.825277>,  <36.881382, 36.209122, 27.230888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216099, 36.742851, 26.825277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472359, 36.436947, 26.852705>,  <37.626114, 36.253403, 26.869162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472359, 36.436947, 26.852705>,  <37.216099, 36.742851, 26.825277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472359, 36.436947, 26.852705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149723, 0.036835, -0.988042,
		0.753093, 0.643256, 0.138102,
		0.640651, -0.764764, 0.068570,
		37.664555, 36.207516, 26.873276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715935, 36.833080, 26.350986>,  <37.216099, 36.742851, 26.825277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715935, 36.833080, 26.350986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794109, 36.450115, 26.435995>,  <37.841015, 36.220337, 26.487001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794109, 36.450115, 26.435995>,  <37.715935, 36.833080, 26.350986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794109, 36.450115, 26.435995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210848, -0.170615, -0.962514,
		0.957783, 0.232918, 0.168525,
		0.195434, -0.957413, 0.212523,
		37.852741, 36.162891, 26.499752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277744, 36.643543, 25.971344>,  <37.715935, 36.833080, 26.350986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277744, 36.643543, 25.971344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084885, 36.299770, 26.039364>,  <37.969170, 36.093506, 26.080175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084885, 36.299770, 26.039364>,  <38.277744, 36.643543, 25.971344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084885, 36.299770, 26.039364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144163, -0.269284, -0.952209,
		0.864147, -0.434591, 0.253733,
		-0.482148, -0.859428, 0.170050,
		37.940239, 36.041943, 26.090378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715916, 36.176113, 25.700153>,  <38.277744, 36.643543, 25.971344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715916, 36.176113, 25.700153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356419, 36.002319, 25.723764>,  <38.140720, 35.898045, 25.737930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356419, 36.002319, 25.723764>,  <38.715916, 36.176113, 25.700153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356419, 36.002319, 25.723764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100772, -0.335689, -0.936567,
		0.426735, -0.835787, 0.345482,
		-0.898745, -0.434481, 0.059026,
		38.086796, 35.871975, 25.741472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680965, 35.513996, 25.411505>,  <38.715916, 36.176113, 25.700153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680965, 35.513996, 25.411505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285923, 35.576576, 25.416479>,  <38.048897, 35.614124, 25.419464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285923, 35.576576, 25.416479>,  <38.680965, 35.513996, 25.411505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285923, 35.576576, 25.416479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091789, -0.511518, -0.854356,
		-0.127303, -0.844910, 0.519539,
		-0.987608, 0.156450, 0.012435,
		37.989639, 35.623512, 25.420210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387878, 34.794098, 25.455078>,  <38.680965, 35.513996, 25.411505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387878, 34.794098, 25.455078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125095, 35.064606, 25.321772>,  <37.967426, 35.226910, 25.241787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125095, 35.064606, 25.321772>,  <38.387878, 34.794098, 25.455078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125095, 35.064606, 25.321772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115874, -0.527361, -0.841702,
		-0.744969, -0.514346, 0.424817,
		-0.656958, 0.676267, -0.333268,
		37.928009, 35.267487, 25.221790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691673, 34.359283, 25.198645>,  <38.387878, 34.794098, 25.455078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691673, 34.359283, 25.198645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650936, 34.719040, 25.028595>,  <37.626495, 34.934895, 24.926565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650936, 34.719040, 25.028595>,  <37.691673, 34.359283, 25.198645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650936, 34.719040, 25.028595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218734, -0.437131, -0.872395,
		-0.970456, 0.004145, 0.241244,
		-0.101840, 0.899388, -0.425123,
		37.620384, 34.988857, 24.901058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012383, 34.365246, 24.782389>,  <37.691673, 34.359283, 25.198645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012383, 34.365246, 24.782389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234520, 34.669807, 24.648611>,  <37.367802, 34.852547, 24.568344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234520, 34.669807, 24.648611>,  <37.012383, 34.365246, 24.782389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234520, 34.669807, 24.648611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256115, -0.226026, -0.939850,
		-0.791201, 0.607597, 0.069486,
		0.555344, 0.761406, -0.334446,
		37.401123, 34.898228, 24.548277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528595, 34.803291, 24.371555>,  <37.012383, 34.365246, 24.782389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528595, 34.803291, 24.371555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908962, 34.834015, 24.251656>,  <37.137184, 34.852451, 24.179716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908962, 34.834015, 24.251656>,  <36.528595, 34.803291, 24.371555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908962, 34.834015, 24.251656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288807, -0.127457, -0.948865,
		-0.111089, 0.988865, -0.099018,
		0.950920, 0.076811, -0.299751,
		37.194237, 34.857059, 24.161730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474293, 35.093910, 23.732931>,  <36.528595, 34.803291, 24.371555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474293, 35.093910, 23.732931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850670, 34.958492, 23.731071>,  <37.076496, 34.877243, 23.729956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850670, 34.958492, 23.731071>,  <36.474293, 35.093910, 23.732931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850670, 34.958492, 23.731071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132975, -0.356887, -0.924635,
		0.311368, 0.870644, -0.380826,
		0.940940, -0.338542, -0.004651,
		37.132954, 34.856930, 23.729677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688934, 35.219917, 23.073786>,  <36.474293, 35.093910, 23.732931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688934, 35.219917, 23.073786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946632, 34.943947, 23.205812>,  <37.101250, 34.778362, 23.285028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946632, 34.943947, 23.205812>,  <36.688934, 35.219917, 23.073786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946632, 34.943947, 23.205812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034232, -0.405119, -0.913623,
		0.764053, 0.599896, -0.237378,
		0.644245, -0.689930, 0.330068,
		37.139908, 34.736969, 23.304832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153805, 35.198986, 22.591591>,  <36.688934, 35.219917, 23.073786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153805, 35.198986, 22.591591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199104, 34.862808, 22.803562>,  <37.226284, 34.661102, 22.930746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199104, 34.862808, 22.803562>,  <37.153805, 35.198986, 22.591591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199104, 34.862808, 22.803562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158483, -0.511252, -0.844692,
		0.980846, 0.179644, 0.075299,
		0.113247, -0.840446, 0.529930,
		37.233078, 34.610676, 22.962542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669605, 34.817150, 22.273952>,  <37.153805, 35.198986, 22.591591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669605, 34.817150, 22.273952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481873, 34.535049, 22.486496>,  <37.369232, 34.365788, 22.614023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481873, 34.535049, 22.486496>,  <37.669605, 34.817150, 22.273952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481873, 34.535049, 22.486496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028768, -0.613644, -0.789059,
		0.882554, -0.355043, 0.308291,
		-0.469331, -0.705256, 0.531360,
		37.341072, 34.323471, 22.645905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078476, 34.135544, 22.181641>,  <37.669605, 34.817150, 22.273952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078476, 34.135544, 22.181641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696514, 34.049633, 22.263636>,  <37.467335, 33.998085, 22.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696514, 34.049633, 22.263636>,  <38.078476, 34.135544, 22.181641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696514, 34.049633, 22.263636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086243, -0.459995, -0.883723,
		0.284097, -0.861554, 0.420730,
		-0.954909, -0.214778, 0.204986,
		37.410042, 33.985199, 22.325130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020191, 33.396667, 22.127396>,  <38.078476, 34.135544, 22.181641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020191, 33.396667, 22.127396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653126, 33.546360, 22.073961>,  <37.432888, 33.636173, 22.041901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653126, 33.546360, 22.073961>,  <38.020191, 33.396667, 22.127396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653126, 33.546360, 22.073961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149041, -0.635808, -0.757321,
		-0.368348, -0.675056, 0.639233,
		-0.917664, 0.374229, -0.133588,
		37.377827, 33.658630, 22.033884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612247, 32.771809, 22.033951>,  <38.020191, 33.396667, 22.127396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612247, 32.771809, 22.033951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405712, 33.084644, 21.894386>,  <37.281792, 33.272346, 21.810648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405712, 33.084644, 21.894386>,  <37.612247, 32.771809, 22.033951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405712, 33.084644, 21.894386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269587, -0.535147, -0.800588,
		-0.812846, -0.319312, 0.487157,
		-0.516338, 0.782086, -0.348909,
		37.250813, 33.319271, 21.789713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075638, 32.440178, 21.726124>,  <37.612247, 32.771809, 22.033951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075638, 32.440178, 21.726124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091900, 32.805008, 21.562922>,  <37.101658, 33.023907, 21.465000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091900, 32.805008, 21.562922>,  <37.075638, 32.440178, 21.726124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091900, 32.805008, 21.562922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095826, -0.402901, -0.910213,
		-0.994567, 0.076106, 0.071019,
		0.040659, 0.912074, -0.408005,
		37.104099, 33.078629, 21.440519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859173, 31.632832, 21.850925>,  <37.075638, 32.440178, 21.726124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859173, 31.632832, 21.850925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220116, 31.464609, 21.813208>,  <37.436680, 31.363676, 21.790577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220116, 31.464609, 21.813208>,  <36.859173, 31.632832, 21.850925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220116, 31.464609, 21.813208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111285, 0.015983, 0.993660,
		-0.416382, -0.907126, 0.061223,
		0.902354, -0.420555, -0.094294,
		37.490822, 31.338442, 21.784920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965611, 31.128384, 22.391232>,  <36.859173, 31.632832, 21.850925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965611, 31.128384, 22.391232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341911, 31.186382, 22.268621>,  <37.567692, 31.221182, 22.195055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341911, 31.186382, 22.268621>,  <36.965611, 31.128384, 22.391232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341911, 31.186382, 22.268621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329261, -0.174523, 0.927970,
		0.081059, -0.973918, -0.211925,
		0.940753, 0.144999, -0.306527,
		37.624138, 31.229881, 22.176662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350475, 30.666956, 22.728628>,  <36.965611, 31.128384, 22.391232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350475, 30.666956, 22.728628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634518, 30.918158, 22.601280>,  <37.804943, 31.068878, 22.524872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634518, 30.918158, 22.601280>,  <37.350475, 30.666956, 22.728628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634518, 30.918158, 22.601280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345444, 0.083267, 0.934738,
		0.613530, -0.773742, -0.157812,
		0.710106, 0.628005, -0.318371,
		37.847549, 31.106560, 22.505770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856525, 30.505888, 23.196569>,  <37.350475, 30.666956, 22.728628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856525, 30.505888, 23.196569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965935, 30.853884, 23.032469>,  <38.031578, 31.062681, 22.934008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965935, 30.853884, 23.032469>,  <37.856525, 30.505888, 23.196569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965935, 30.853884, 23.032469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528706, 0.220322, 0.819712,
		0.803527, -0.441111, -0.399706,
		0.273521, 0.869988, -0.410252,
		38.047993, 31.114880, 22.909393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596069, 30.475731, 23.288536>,  <37.856525, 30.505888, 23.196569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596069, 30.475731, 23.288536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453812, 30.843687, 23.222424>,  <38.368458, 31.064461, 23.182756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453812, 30.843687, 23.222424>,  <38.596069, 30.475731, 23.288536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453812, 30.843687, 23.222424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403205, 0.310548, 0.860805,
		0.843176, 0.239496, -0.481349,
		-0.355641, 0.919892, -0.165281,
		38.347118, 31.119656, 23.172840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112270, 31.027264, 23.578617>,  <38.596069, 30.475731, 23.288536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112270, 31.027264, 23.578617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750286, 31.195002, 23.549761>,  <38.533096, 31.295645, 23.532448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750286, 31.195002, 23.549761>,  <39.112270, 31.027264, 23.578617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750286, 31.195002, 23.549761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189640, 0.549259, 0.813849,
		0.380907, 0.722818, -0.576580,
		-0.904957, 0.419344, -0.072141,
		38.478798, 31.320805, 23.528118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228252, 31.677685, 23.846094>,  <39.112270, 31.027264, 23.578617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228252, 31.677685, 23.846094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828297, 31.672913, 23.842627>,  <38.588322, 31.670050, 23.840546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828297, 31.672913, 23.842627>,  <39.228252, 31.677685, 23.846094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828297, 31.672913, 23.842627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012586, 0.383968, 0.923261,
		-0.007685, 0.923270, -0.384076,
		-0.999891, -0.011929, -0.008670,
		38.528328, 31.669334, 23.840025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115471, 32.335739, 23.874565>,  <39.228252, 31.677685, 23.846094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115471, 32.335739, 23.874565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832752, 32.108810, 24.043602>,  <38.663120, 31.972652, 24.145025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832752, 32.108810, 24.043602>,  <39.115471, 32.335739, 23.874565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832752, 32.108810, 24.043602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005057, 0.601409, 0.798925,
		-0.707403, 0.562537, -0.427941,
		-0.706793, -0.567326, 0.422594,
		38.620716, 31.938612, 24.170380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791927, 32.755436, 24.253204>,  <39.115471, 32.335739, 23.874565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791927, 32.755436, 24.253204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617867, 32.432468, 24.412563>,  <38.513428, 32.238689, 24.508179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617867, 32.432468, 24.412563>,  <38.791927, 32.755436, 24.253204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617867, 32.432468, 24.412563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118115, 0.489859, 0.863763,
		-0.892574, 0.328815, -0.308533,
		-0.435156, -0.807415, 0.398398,
		38.487320, 32.190243, 24.532084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182270, 32.997658, 24.625818>,  <38.791927, 32.755436, 24.253204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182270, 32.997658, 24.625818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281612, 32.648705, 24.794230>,  <38.341217, 32.439331, 24.895277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281612, 32.648705, 24.794230>,  <38.182270, 32.997658, 24.625818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281612, 32.648705, 24.794230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096117, 0.410307, 0.906868,
		-0.963888, -0.265697, 0.018052,
		0.248359, -0.872384, 0.421028,
		38.356121, 32.386990, 24.920538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658195, 32.839695, 25.111492>,  <38.182270, 32.997658, 24.625818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658195, 32.839695, 25.111492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991676, 32.645573, 25.216888>,  <38.191765, 32.529099, 25.280127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991676, 32.645573, 25.216888>,  <37.658195, 32.839695, 25.111492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991676, 32.645573, 25.216888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050977, 0.407472, 0.911794,
		-0.549862, -0.773593, 0.314970,
		0.833699, -0.485304, 0.263489,
		38.241787, 32.499981, 25.295935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464745, 32.521145, 25.683659>,  <37.658195, 32.839695, 25.111492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464745, 32.521145, 25.683659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863026, 32.491806, 25.706278>,  <38.101994, 32.474201, 25.719851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863026, 32.491806, 25.706278>,  <37.464745, 32.521145, 25.683659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863026, 32.491806, 25.706278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035975, 0.256338, 0.965918,
		-0.085343, -0.963800, 0.252597,
		0.995702, -0.073347, 0.056550,
		38.161736, 32.469803, 25.723244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680489, 32.065197, 26.207888>,  <37.464745, 32.521145, 25.683659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680489, 32.065197, 26.207888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966492, 32.338367, 26.148052>,  <38.138096, 32.502270, 26.112150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966492, 32.338367, 26.148052>,  <37.680489, 32.065197, 26.207888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966492, 32.338367, 26.148052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122853, 0.333377, 0.934755,
		0.688236, -0.649981, 0.322267,
		0.715010, 0.682923, -0.149590,
		38.180996, 32.543243, 26.103174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093250, 32.103798, 26.964895>,  <37.680489, 32.065197, 26.207888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093250, 32.103798, 26.964895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267483, 32.410240, 26.775852>,  <38.372021, 32.594105, 26.662426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267483, 32.410240, 26.775852>,  <38.093250, 32.103798, 26.964895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267483, 32.410240, 26.775852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197620, 0.430837, 0.880526,
		0.878190, -0.476936, 0.036267,
		0.435579, 0.766102, -0.472609,
		38.398155, 32.640072, 26.634069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759666, 32.210934, 27.249653>,  <38.093250, 32.103798, 26.964895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759666, 32.210934, 27.249653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633507, 32.552406, 27.083879>,  <38.557812, 32.757290, 26.984415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633507, 32.552406, 27.083879>,  <38.759666, 32.210934, 27.249653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633507, 32.552406, 27.083879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286610, 0.502025, 0.815981,
		0.904641, 0.138582, -0.403013,
		-0.315403, 0.853678, -0.414434,
		38.538887, 32.808510, 26.959549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298538, 32.705589, 27.425297>,  <38.759666, 32.210934, 27.249653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298538, 32.705589, 27.425297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991188, 32.947876, 27.342642>,  <38.806778, 33.093250, 27.293049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991188, 32.947876, 27.342642>,  <39.298538, 32.705589, 27.425297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991188, 32.947876, 27.342642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289338, 0.616768, 0.732039,
		0.570857, 0.502694, -0.649169,
		-0.768378, 0.605719, -0.206638,
		38.760674, 33.129593, 27.280651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507755, 33.449287, 27.149134>,  <39.298538, 32.705589, 27.425297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507755, 33.449287, 27.149134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132061, 33.485378, 27.281616>,  <38.906643, 33.507034, 27.361105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132061, 33.485378, 27.281616>,  <39.507755, 33.449287, 27.149134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132061, 33.485378, 27.281616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276571, 0.770423, 0.574418,
		-0.203339, 0.631115, -0.748563,
		-0.939235, 0.090229, 0.331206,
		38.850292, 33.512447, 27.380978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467781, 34.148582, 27.278545>,  <39.507755, 33.449287, 27.149134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467781, 34.148582, 27.278545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165676, 33.985538, 27.483847>,  <38.984413, 33.887711, 27.607027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165676, 33.985538, 27.483847>,  <39.467781, 34.148582, 27.278545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165676, 33.985538, 27.483847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189943, 0.613365, 0.766619,
		-0.627293, 0.676490, -0.385831,
		-0.755265, -0.407608, 0.513254,
		38.939098, 33.863255, 27.637823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116207, 34.641171, 27.548555>,  <39.467781, 34.148582, 27.278545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116207, 34.641171, 27.548555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997215, 34.335907, 27.778023>,  <38.925819, 34.152748, 27.915703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997215, 34.335907, 27.778023>,  <39.116207, 34.641171, 27.548555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997215, 34.335907, 27.778023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027191, 0.607399, 0.793931,
		-0.954340, 0.220583, -0.201442,
		-0.297483, -0.763158, 0.573667,
		38.907970, 34.106960, 27.950123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523468, 34.857334, 27.972111>,  <39.116207, 34.641171, 27.548555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523468, 34.857334, 27.972111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658367, 34.541576, 28.177290>,  <38.739307, 34.352119, 28.300398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658367, 34.541576, 28.177290>,  <38.523468, 34.857334, 27.972111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658367, 34.541576, 28.177290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015289, 0.540204, 0.841395,
		-0.941292, -0.291600, 0.170112,
		0.337246, -0.789398, 0.512948,
		38.759541, 34.304756, 28.331175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099850, 34.827835, 28.618776>,  <38.523468, 34.857334, 27.972111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099850, 34.827835, 28.618776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395542, 34.576183, 28.714891>,  <38.572956, 34.425190, 28.772560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395542, 34.576183, 28.714891>,  <38.099850, 34.827835, 28.618776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395542, 34.576183, 28.714891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077622, 0.434014, 0.897556,
		-0.668969, -0.644846, 0.369669,
		0.739226, -0.629131, 0.240288,
		38.617310, 34.387444, 28.786978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952988, 34.412701, 29.206444>,  <38.099850, 34.827835, 28.618776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952988, 34.412701, 29.206444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352604, 34.422024, 29.191618>,  <38.592373, 34.427620, 29.182722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352604, 34.422024, 29.191618>,  <37.952988, 34.412701, 29.206444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352604, 34.422024, 29.191618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029393, 0.270341, 0.962316,
		0.032452, -0.962482, 0.269397,
		0.999041, 0.023311, -0.037063,
		38.652317, 34.429016, 29.180498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110359, 34.067078, 29.842728>,  <37.952988, 34.412701, 29.206444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110359, 34.067078, 29.842728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423645, 34.283092, 29.719475>,  <38.611614, 34.412701, 29.645523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423645, 34.283092, 29.719475>,  <38.110359, 34.067078, 29.842728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423645, 34.283092, 29.719475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226266, 0.214041, 0.950258,
		0.579125, -0.813971, 0.045448,
		0.783210, 0.540035, -0.308130,
		38.658607, 34.445103, 29.627035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640713, 33.836658, 30.283533>,  <38.110359, 34.067078, 29.842728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640713, 33.836658, 30.283533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762123, 34.190609, 30.142181>,  <38.834969, 34.402977, 30.057371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762123, 34.190609, 30.142181>,  <38.640713, 33.836658, 30.283533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762123, 34.190609, 30.142181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132654, 0.328018, 0.935311,
		0.943545, -0.330765, -0.017821,
		0.303523, 0.884872, -0.353377,
		38.853180, 34.456070, 30.036169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047775, 33.970337, 30.761164>,  <38.640713, 33.836658, 30.283533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047775, 33.970337, 30.761164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992054, 34.330399, 30.596088>,  <38.958622, 34.546436, 30.497044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992054, 34.330399, 30.596088>,  <39.047775, 33.970337, 30.761164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992054, 34.330399, 30.596088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085768, 0.426155, 0.900575,
		0.986528, 0.090058, -0.136570,
		-0.139304, 0.900156, -0.412690,
		38.950264, 34.600445, 30.472282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616543, 34.326851, 30.972883>,  <39.047775, 33.970337, 30.761164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616543, 34.326851, 30.972883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324791, 34.584629, 30.881058>,  <39.149738, 34.739296, 30.825962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324791, 34.584629, 30.881058>,  <39.616543, 34.326851, 30.972883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324791, 34.584629, 30.881058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048863, 0.383785, 0.922129,
		0.682363, 0.661364, -0.311414,
		-0.729379, 0.644443, -0.229564,
		39.105976, 34.777962, 30.812189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857761, 34.991539, 31.169388>,  <39.616543, 34.326851, 30.972883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857761, 34.991539, 31.169388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458660, 35.018314, 31.168299>,  <39.219200, 35.034378, 31.167646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458660, 35.018314, 31.168299>,  <39.857761, 34.991539, 31.169388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458660, 35.018314, 31.168299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025895, 0.422812, 0.905848,
		0.061787, 0.903742, -0.423595,
		-0.997754, 0.066938, -0.002721,
		39.159332, 35.038395, 31.167482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802197, 35.543983, 31.439651>,  <39.857761, 34.991539, 31.169388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802197, 35.543983, 31.439651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431431, 35.398743, 31.477579>,  <39.208973, 35.311596, 31.500336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431431, 35.398743, 31.477579>,  <39.802197, 35.543983, 31.439651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431431, 35.398743, 31.477579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096378, 0.474509, 0.874958,
		-0.362696, 0.801869, -0.474823,
		-0.926910, -0.363106, 0.094821,
		39.153358, 35.289810, 31.506025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376884, 36.034718, 31.783129>,  <39.802197, 35.543983, 31.439651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376884, 36.034718, 31.783129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165962, 35.698158, 31.830452>,  <39.039410, 35.496223, 31.858847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165962, 35.698158, 31.830452>,  <39.376884, 36.034718, 31.783129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165962, 35.698158, 31.830452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143684, 0.225538, 0.963580,
		-0.837437, 0.491105, -0.239823,
		-0.527309, -0.841397, 0.118310,
		39.007771, 35.445740, 31.865946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952007, 36.181648, 32.312191>,  <39.376884, 36.034718, 31.783129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952007, 36.181648, 32.312191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943691, 35.781734, 32.312962>,  <38.938702, 35.541786, 32.313423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943691, 35.781734, 32.312962>,  <38.952007, 36.181648, 32.312191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943691, 35.781734, 32.312962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107921, 0.004159, 0.994151,
		-0.993942, 0.020460, -0.107984,
		-0.020789, -0.999782, 0.001926,
		38.937454, 35.481800, 32.313538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452293, 35.944283, 32.858467>,  <38.952007, 36.181648, 32.312191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452293, 35.944283, 32.858467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694775, 35.635769, 32.780861>,  <38.840263, 35.450661, 32.734299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694775, 35.635769, 32.780861>,  <38.452293, 35.944283, 32.858467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694775, 35.635769, 32.780861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193605, -0.093495, 0.976614,
		-0.771385, -0.629589, 0.092648,
		0.606203, -0.771282, -0.194012,
		38.876637, 35.404385, 32.722656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190483, 35.381016, 33.271172>,  <38.452293, 35.944283, 32.858467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190483, 35.381016, 33.271172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568855, 35.268059, 33.207329>,  <38.795879, 35.200287, 33.169025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568855, 35.268059, 33.207329>,  <38.190483, 35.381016, 33.271172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568855, 35.268059, 33.207329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163120, -0.011173, 0.986543,
		-0.280374, -0.959235, 0.035495,
		0.945929, -0.282391, -0.159603,
		38.852634, 35.183342, 33.159447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324863, 34.910130, 33.791748>,  <38.190483, 35.381016, 33.271172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324863, 34.910130, 33.791748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702797, 34.974388, 33.677570>,  <38.929558, 35.012943, 33.609066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702797, 34.974388, 33.677570>,  <38.324863, 34.910130, 33.791748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702797, 34.974388, 33.677570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304399, -0.108892, 0.946300,
		0.120939, -0.980987, -0.151787,
		0.944836, 0.160649, -0.285442,
		38.986248, 35.022583, 33.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793518, 34.303585, 34.018158>,  <38.324863, 34.910130, 33.791748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793518, 34.303585, 34.018158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025532, 34.625713, 33.969143>,  <39.164742, 34.818989, 33.939732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025532, 34.625713, 33.969143>,  <38.793518, 34.303585, 34.018158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025532, 34.625713, 33.969143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374635, -0.130149, 0.917992,
		0.723329, -0.578379, -0.377192,
		0.580038, 0.805320, -0.122541,
		39.199543, 34.867310, 33.932381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463531, 34.159622, 34.271759>,  <38.793518, 34.303585, 34.018158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463531, 34.159622, 34.271759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486076, 34.558952, 34.277054>,  <39.499603, 34.798550, 34.280231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486076, 34.558952, 34.277054>,  <39.463531, 34.159622, 34.271759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486076, 34.558952, 34.277054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509385, -0.040153, 0.859602,
		0.858692, -0.041704, -0.510793,
		0.056359, 0.998323, 0.013236,
		39.502983, 34.858448, 34.281025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151131, 34.226795, 34.404789>,  <39.463531, 34.159622, 34.271759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151131, 34.226795, 34.404789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936874, 34.551128, 34.499142>,  <39.808323, 34.745728, 34.555752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936874, 34.551128, 34.499142>,  <40.151131, 34.226795, 34.404789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936874, 34.551128, 34.499142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380639, -0.017514, 0.924558,
		0.753796, 0.585012, -0.299254,
		-0.535636, 0.810836, 0.235880,
		39.776184, 34.794380, 34.569904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617981, 34.418449, 34.957378>,  <40.151131, 34.226795, 34.404789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617981, 34.418449, 34.957378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285305, 34.639156, 34.982174>,  <40.085701, 34.771580, 34.997051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285305, 34.639156, 34.982174>,  <40.617981, 34.418449, 34.957378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285305, 34.639156, 34.982174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094180, 0.030159, 0.995098,
		0.547193, 0.833453, -0.077048,
		-0.831691, 0.551768, 0.061992,
		40.035797, 34.804688, 35.000771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777107, 34.975677, 35.437160>,  <40.617981, 34.418449, 34.957378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777107, 34.975677, 35.437160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377815, 34.954681, 35.425968>,  <40.138241, 34.942085, 35.419250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377815, 34.954681, 35.425968>,  <40.777107, 34.975677, 35.437160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377815, 34.954681, 35.425968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033671, 0.110785, 0.993274,
		-0.049033, 0.992458, -0.112357,
		-0.998229, -0.052486, -0.027985,
		40.078346, 34.938934, 35.417572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505226, 35.607967, 35.774639>,  <40.777107, 34.975677, 35.437160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505226, 35.607967, 35.774639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219757, 35.327774, 35.775276>,  <40.048477, 35.159660, 35.775658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219757, 35.327774, 35.775276>,  <40.505226, 35.607967, 35.774639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219757, 35.327774, 35.775276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007647, 0.010060, 0.999920,
		-0.700439, 0.713602, -0.012536,
		-0.713672, -0.700479, 0.001590,
		40.005657, 35.117630, 35.775753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098701, 35.784462, 36.366951>,  <40.505226, 35.607967, 35.774639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098701, 35.784462, 36.366951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975838, 35.406544, 36.321327>,  <39.902119, 35.179790, 36.293953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975838, 35.406544, 36.321327>,  <40.098701, 35.784462, 36.366951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975838, 35.406544, 36.321327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140961, -0.163704, 0.976387,
		-0.941160, 0.283829, 0.183463,
		-0.307160, -0.944798, -0.114063,
		39.883690, 35.123104, 36.287109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664165, 35.634224, 36.832150>,  <40.098701, 35.784462, 36.366951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664165, 35.634224, 36.832150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788853, 35.268337, 36.729290>,  <39.863663, 35.048805, 36.667576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788853, 35.268337, 36.729290>,  <39.664165, 35.634224, 36.832150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788853, 35.268337, 36.729290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048464, -0.254975, 0.965732,
		-0.948939, -0.313495, -0.035148,
		0.311714, -0.914718, -0.257149,
		39.882366, 34.993923, 36.652145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291714, 35.249256, 37.168613>,  <39.664165, 35.634224, 36.832150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291714, 35.249256, 37.168613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600269, 35.005493, 37.095310>,  <39.785400, 34.859234, 37.051327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600269, 35.005493, 37.095310>,  <39.291714, 35.249256, 37.168613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600269, 35.005493, 37.095310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009308, -0.277147, 0.960782,
		-0.636299, -0.742840, -0.208115,
		0.771387, -0.609408, -0.183263,
		39.831684, 34.822670, 37.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072556, 34.679863, 37.410847>,  <39.291714, 35.249256, 37.168613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072556, 34.679863, 37.410847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468109, 34.630634, 37.377457>,  <39.705441, 34.601097, 37.357422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468109, 34.630634, 37.377457>,  <39.072556, 34.679863, 37.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468109, 34.630634, 37.377457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034527, -0.355992, 0.933851,
		-0.144649, -0.926349, -0.347784,
		0.988881, -0.123072, -0.083478,
		39.764774, 34.593712, 37.352413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190216, 33.960613, 37.687538>,  <39.072556, 34.679863, 37.410847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190216, 33.960613, 37.687538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519302, 34.186378, 37.714577>,  <39.716755, 34.321838, 37.730801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519302, 34.186378, 37.714577>,  <39.190216, 33.960613, 37.687538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519302, 34.186378, 37.714577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137459, -0.312920, 0.939780,
		0.551581, -0.763881, -0.335029,
		0.822717, 0.564417, 0.067598,
		39.766117, 34.355705, 37.734856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729389, 33.550343, 38.108093>,  <39.190216, 33.960613, 37.687538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729389, 33.550343, 38.108093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908924, 33.907547, 38.095020>,  <40.016647, 34.121872, 38.087177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908924, 33.907547, 38.095020>,  <39.729389, 33.550343, 38.108093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908924, 33.907547, 38.095020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369775, -0.152305, 0.916553,
		0.813517, -0.423472, -0.398575,
		0.448840, 0.893014, -0.032687,
		40.043575, 34.175453, 38.085213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315411, 33.539612, 38.552822>,  <39.729389, 33.550343, 38.108093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315411, 33.539612, 38.552822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264587, 33.932510, 38.497616>,  <40.234093, 34.168251, 38.464493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264587, 33.932510, 38.497616>,  <40.315411, 33.539612, 38.552822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264587, 33.932510, 38.497616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296772, 0.170417, 0.939619,
		0.946458, 0.078430, -0.313156,
		-0.127061, 0.982246, -0.138017,
		40.226467, 34.227184, 38.456211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940609, 33.938309, 38.750385>,  <40.315411, 33.539612, 38.552822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940609, 33.938309, 38.750385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619274, 34.167404, 38.815659>,  <40.426476, 34.304859, 38.854820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619274, 34.167404, 38.815659>,  <40.940609, 33.938309, 38.750385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619274, 34.167404, 38.815659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326338, 0.194156, 0.925098,
		0.498155, 0.796415, -0.342877,
		-0.803334, 0.572736, 0.163181,
		40.378273, 34.339226, 38.864613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223629, 34.504303, 39.117844>,  <40.940609, 33.938309, 38.750385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223629, 34.504303, 39.117844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829285, 34.529488, 39.179951>,  <40.592678, 34.544598, 39.217216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829285, 34.529488, 39.179951>,  <41.223629, 34.504303, 39.117844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829285, 34.529488, 39.179951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164614, 0.191256, 0.967638,
		0.031223, 0.979519, -0.198916,
		-0.985864, 0.062957, 0.155271,
		40.533527, 34.548374, 39.226532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094429, 35.086994, 39.589024>,  <41.223629, 34.504303, 39.117844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094429, 35.086994, 39.589024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783100, 34.847740, 39.665390>,  <40.596302, 34.704185, 39.711208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783100, 34.847740, 39.665390>,  <41.094429, 35.086994, 39.589024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783100, 34.847740, 39.665390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037669, 0.348007, 0.936735,
		-0.626738, 0.721887, -0.293392,
		-0.778319, -0.598139, 0.190916,
		40.549603, 34.668297, 39.722664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731133, 35.504025, 39.980930>,  <41.094429, 35.086994, 39.589024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731133, 35.504025, 39.980930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550236, 35.148827, 40.014248>,  <40.441696, 34.935707, 40.034237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550236, 35.148827, 40.014248>,  <40.731133, 35.504025, 39.980930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550236, 35.148827, 40.014248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189384, 0.186869, 0.963957,
		-0.871556, 0.420168, -0.252682,
		-0.452242, -0.887997, 0.083294,
		40.414562, 34.882427, 40.039238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224228, 35.634377, 40.473465>,  <40.731133, 35.504025, 39.980930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224228, 35.634377, 40.473465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178635, 35.237144, 40.484814>,  <40.151279, 34.998806, 40.491623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178635, 35.237144, 40.484814>,  <40.224228, 35.634377, 40.473465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178635, 35.237144, 40.484814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133400, 0.043602, 0.990103,
		-0.984486, 0.109065, -0.137446,
		-0.113979, -0.993078, 0.028376,
		40.144440, 34.939220, 40.493328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682117, 35.434883, 40.975487>,  <40.224228, 35.634377, 40.473465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682117, 35.434883, 40.975487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899937, 35.099392, 40.976254>,  <40.030628, 34.898098, 40.976715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899937, 35.099392, 40.976254>,  <39.682117, 35.434883, 40.975487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899937, 35.099392, 40.976254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024582, -0.013676, 0.999604,
		-0.838372, -0.544376, -0.028065,
		0.544544, -0.838730, 0.001916,
		40.063301, 34.847775, 40.976830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292812, 34.988312, 41.373318>,  <39.682117, 35.434883, 40.975487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292812, 34.988312, 41.373318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667965, 34.850815, 41.392159>,  <39.893055, 34.768318, 41.403465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667965, 34.850815, 41.392159>,  <39.292812, 34.988312, 41.373318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667965, 34.850815, 41.392159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022452, 0.195618, 0.980423,
		-0.346225, -0.918464, 0.191184,
		0.937883, -0.343739, 0.047106,
		39.949329, 34.747692, 41.406292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419952, 34.608906, 42.061020>,  <39.292812, 34.988312, 41.373318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419952, 34.608906, 42.061020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761662, 34.742451, 41.901646>,  <39.966686, 34.822578, 41.806023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761662, 34.742451, 41.901646>,  <39.419952, 34.608906, 42.061020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761662, 34.742451, 41.901646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275441, 0.359309, 0.891644,
		0.440848, -0.871454, 0.214989,
		0.854275, 0.333863, -0.398435,
		40.017944, 34.842609, 41.782116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887638, 34.446075, 42.529114>,  <39.419952, 34.608906, 42.061020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887638, 34.446075, 42.529114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018784, 34.757164, 42.314579>,  <40.097469, 34.943817, 42.185856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018784, 34.757164, 42.314579>,  <39.887638, 34.446075, 42.529114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018784, 34.757164, 42.314579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034930, 0.577313, 0.815776,
		0.944080, -0.248726, 0.216444,
		0.327861, 0.777718, -0.536342,
		40.117142, 34.990479, 42.153675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354568, 34.762695, 43.003956>,  <39.887638, 34.446075, 42.529114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354568, 34.762695, 43.003956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322567, 35.040344, 42.717796>,  <40.303368, 35.206936, 42.546101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322567, 35.040344, 42.717796>,  <40.354568, 34.762695, 43.003956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322567, 35.040344, 42.717796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031164, 0.719087, 0.694221,
		0.996307, 0.033245, -0.079161,
		-0.080003, 0.694124, -0.715396,
		40.298565, 35.248581, 42.503178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873566, 35.271603, 43.125412>,  <40.354568, 34.762695, 43.003956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873566, 35.271603, 43.125412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562057, 35.444878, 42.943920>,  <40.375153, 35.548843, 42.835026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562057, 35.444878, 42.943920>,  <40.873566, 35.271603, 43.125412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562057, 35.444878, 42.943920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158863, 0.563522, 0.810682,
		0.606861, 0.703415, -0.370037,
		-0.778769, 0.433186, -0.453726,
		40.328426, 35.574833, 42.807800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993835, 35.963005, 43.201206>,  <40.873566, 35.271603, 43.125412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993835, 35.963005, 43.201206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602703, 35.961464, 43.117462>,  <40.368023, 35.960541, 43.067215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602703, 35.961464, 43.117462>,  <40.993835, 35.963005, 43.201206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602703, 35.961464, 43.117462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139060, 0.759465, 0.635512,
		0.156559, 0.650536, -0.743163,
		-0.977830, -0.003849, -0.209364,
		40.309353, 35.960308, 43.054653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783905, 36.625317, 43.261436>,  <40.993835, 35.963005, 43.201206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783905, 36.625317, 43.261436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428062, 36.451542, 43.317825>,  <40.214558, 36.347279, 43.351658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428062, 36.451542, 43.317825>,  <40.783905, 36.625317, 43.261436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428062, 36.451542, 43.317825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121254, 0.522219, 0.844147,
		-0.440345, 0.733863, -0.517245,
		-0.889603, -0.434434, 0.140973,
		40.161182, 36.321213, 43.360119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200512, 36.999886, 43.758247>,  <40.783905, 36.625317, 43.261436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200512, 36.999886, 43.758247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143021, 36.619808, 43.868870>,  <40.108524, 36.391762, 43.935242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143021, 36.619808, 43.868870>,  <40.200512, 36.999886, 43.758247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143021, 36.619808, 43.868870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095995, 0.264755, 0.959526,
		-0.984951, 0.164458, 0.053161,
		-0.143727, -0.950189, 0.276557,
		40.099903, 36.334751, 43.951836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743881, 37.143364, 44.258251>,  <40.200512, 36.999886, 43.758247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743881, 37.143364, 44.258251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927391, 36.789566, 44.292160>,  <40.037498, 36.577286, 44.312504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927391, 36.789566, 44.292160>,  <39.743881, 37.143364, 44.258251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927391, 36.789566, 44.292160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264762, 0.227148, 0.937179,
		-0.848189, -0.407511, 0.338392,
		0.458776, -0.884499, 0.084771,
		40.065025, 36.524216, 44.317593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437599, 36.735676, 44.743500>,  <39.743881, 37.143364, 44.258251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437599, 36.735676, 44.743500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830921, 36.688797, 44.799171>,  <40.066914, 36.660671, 44.832573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830921, 36.688797, 44.799171>,  <39.437599, 36.735676, 44.743500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830921, 36.688797, 44.799171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066940, 0.478262, 0.875662,
		-0.169187, -0.870362, 0.462434,
		0.983308, -0.117195, 0.139178,
		40.125916, 36.653637, 44.840923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602180, 36.471531, 45.505276>,  <39.437599, 36.735676, 44.743500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602180, 36.471531, 45.505276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916664, 36.681667, 45.375114>,  <40.105354, 36.807751, 45.297016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916664, 36.681667, 45.375114>,  <39.602180, 36.471531, 45.505276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916664, 36.681667, 45.375114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157735, 0.338528, 0.927641,
		0.597488, -0.780649, 0.183289,
		0.786211, 0.525343, -0.325402,
		40.152527, 36.839272, 45.277493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590534, 36.030109, 44.870132>,  <39.602180, 36.471531, 45.505276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590534, 36.030109, 44.870132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418484, 36.233036, 44.571438>,  <39.315254, 36.354794, 44.392220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418484, 36.233036, 44.571438>,  <39.590534, 36.030109, 44.870132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418484, 36.233036, 44.571438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704324, -0.328851, -0.629114,
		-0.564727, -0.796545, -0.215869,
		-0.430129, 0.507320, -0.746737,
		39.289444, 36.385231, 44.347416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692699, 35.476101, 44.482376>,  <39.590534, 36.030109, 44.870132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692699, 35.476101, 44.482376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632805, 35.834881, 44.315975>,  <39.596870, 36.050148, 44.216133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632805, 35.834881, 44.315975>,  <39.692699, 35.476101, 44.482376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632805, 35.834881, 44.315975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472331, -0.304740, -0.827065,
		-0.868610, -0.320331, -0.378028,
		-0.149734, 0.896951, -0.416002,
		39.587883, 36.103966, 44.191174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399052, 35.316505, 43.736973>,  <39.692699, 35.476101, 44.482376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399052, 35.316505, 43.736973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548309, 35.685783, 43.773804>,  <39.637863, 35.907349, 43.795902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548309, 35.685783, 43.773804>,  <39.399052, 35.316505, 43.736973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548309, 35.685783, 43.773804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302987, -0.027452, -0.952599,
		-0.876904, 0.383358, -0.289959,
		0.373146, 0.923192, 0.092079,
		39.660252, 35.962742, 43.801426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006935, 35.773609, 43.306549>,  <39.399052, 35.316505, 43.736973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006935, 35.773609, 43.306549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382633, 35.909843, 43.323624>,  <39.608051, 35.991585, 43.333866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382633, 35.909843, 43.323624>,  <39.006935, 35.773609, 43.306549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382633, 35.909843, 43.323624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020707, 0.067898, -0.997477,
		-0.342628, 0.937757, 0.056720,
		0.939243, 0.340589, 0.042682,
		39.664406, 36.012020, 43.336430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123241, 36.277794, 42.722382>,  <39.006935, 35.773609, 43.306549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123241, 36.277794, 42.722382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488625, 36.166199, 42.840878>,  <39.707855, 36.099239, 42.911976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488625, 36.166199, 42.840878>,  <39.123241, 36.277794, 42.722382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488625, 36.166199, 42.840878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231746, -0.241748, -0.942259,
		0.334496, 0.929367, -0.156172,
		0.913458, -0.278990, 0.296241,
		39.762661, 36.082500, 42.929749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468842, 36.462254, 42.167709>,  <39.123241, 36.277794, 42.722382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468842, 36.462254, 42.167709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666397, 36.174175, 42.362598>,  <39.784931, 36.001328, 42.479534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666397, 36.174175, 42.362598>,  <39.468842, 36.462254, 42.167709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666397, 36.174175, 42.362598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314166, -0.374685, -0.872302,
		0.810788, 0.583887, 0.041211,
		0.493885, -0.720200, 0.487227,
		39.814564, 35.958115, 42.508766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028797, 36.242649, 41.761292>,  <39.468842, 36.462254, 42.167709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028797, 36.242649, 41.761292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090660, 35.925705, 41.997337>,  <40.127777, 35.735538, 42.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090660, 35.925705, 41.997337>,  <40.028797, 36.242649, 41.761292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090660, 35.925705, 41.997337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465816, -0.468263, -0.750830,
		0.871261, 0.391008, 0.296675,
		0.154659, -0.792365, 0.590117,
		40.137058, 35.687996, 42.174374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605682, 35.989441, 41.519669>,  <40.028797, 36.242649, 41.761292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605682, 35.989441, 41.519669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472969, 35.674656, 41.727753>,  <40.393341, 35.485786, 41.852604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472969, 35.674656, 41.727753>,  <40.605682, 35.989441, 41.519669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472969, 35.674656, 41.727753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274758, -0.608150, -0.744757,
		0.902456, -0.104169, 0.417998,
		-0.331786, -0.786958, 0.520207,
		40.373432, 35.438568, 41.883816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959084, 35.598141, 41.924763>,  <40.605682, 35.989441, 41.519669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959084, 35.598141, 41.924763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778702, 35.252750, 42.015141>,  <40.670475, 35.045517, 42.069366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778702, 35.252750, 42.015141>,  <40.959084, 35.598141, 41.924763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778702, 35.252750, 42.015141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108463, -0.304287, -0.946385,
		0.885935, -0.402265, 0.230874,
		-0.450950, -0.863477, 0.225947,
		40.643417, 34.993706, 42.082924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274967, 35.053967, 41.554733>,  <40.959084, 35.598141, 41.924763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274967, 35.053967, 41.554733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900822, 34.941418, 41.640457>,  <40.676334, 34.873886, 41.691891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900822, 34.941418, 41.640457>,  <41.274967, 35.053967, 41.554733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900822, 34.941418, 41.640457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041966, -0.513338, -0.857160,
		0.351195, -0.810748, 0.468349,
		-0.935362, -0.281375, 0.214305,
		40.620213, 34.857006, 41.704750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194538, 34.379761, 41.424168>,  <41.274967, 35.053967, 41.554733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194538, 34.379761, 41.424168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804375, 34.467926, 41.424358>,  <40.570278, 34.520824, 41.424473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804375, 34.467926, 41.424358>,  <41.194538, 34.379761, 41.424168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804375, 34.467926, 41.424358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108343, -0.477562, -0.871892,
		-0.191942, -0.850502, 0.489698,
		-0.975408, 0.220409, 0.000482,
		40.511753, 34.534050, 41.424503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890041, 33.895428, 41.092075>,  <41.194538, 34.379761, 41.424168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890041, 33.895428, 41.092075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601334, 34.171139, 41.066917>,  <40.428108, 34.336563, 41.051823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601334, 34.171139, 41.066917>,  <40.890041, 33.895428, 41.092075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601334, 34.171139, 41.066917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042829, -0.135174, -0.989896,
		-0.690811, -0.711779, 0.127085,
		-0.721766, 0.689274, -0.062895,
		40.384804, 34.377922, 41.048050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361874, 33.546566, 40.621403>,  <40.890041, 33.895428, 41.092075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361874, 33.546566, 40.621403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320564, 33.944328, 40.612457>,  <40.295780, 34.182983, 40.607090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320564, 33.944328, 40.612457>,  <40.361874, 33.546566, 40.621403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320564, 33.944328, 40.612457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100501, -0.032803, -0.994396,
		-0.989563, -0.100445, 0.103326,
		-0.103272, 0.994402, -0.022366,
		40.289581, 34.242649, 40.605747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870560, 33.674625, 40.192234>,  <40.361874, 33.546566, 40.621403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870560, 33.674625, 40.192234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078819, 34.015724, 40.175522>,  <40.203777, 34.220383, 40.165497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078819, 34.015724, 40.175522>,  <39.870560, 33.674625, 40.192234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078819, 34.015724, 40.175522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179412, 0.061441, -0.981853,
		-0.834704, 0.518700, 0.184982,
		0.520653, 0.852745, -0.041776,
		40.235016, 34.271549, 40.162991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396805, 34.079220, 39.839439>,  <39.870560, 33.674625, 40.192234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396805, 34.079220, 39.839439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738735, 34.282257, 39.796318>,  <39.943893, 34.404079, 39.770443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738735, 34.282257, 39.796318>,  <39.396805, 34.079220, 39.839439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738735, 34.282257, 39.796318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115075, -0.017150, -0.993209,
		-0.505991, 0.861428, 0.043750,
		0.854828, 0.507590, -0.107806,
		39.995182, 34.434532, 39.763977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255493, 34.588203, 39.311371>,  <39.396805, 34.079220, 39.839439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255493, 34.588203, 39.311371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654018, 34.555126, 39.320576>,  <39.893131, 34.535282, 39.326099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654018, 34.555126, 39.320576>,  <39.255493, 34.588203, 39.311371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654018, 34.555126, 39.320576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022963, -0.001549, -0.999735,
		0.082705, 0.996574, 0.000356,
		0.996309, -0.082691, 0.023012,
		39.952911, 34.530319, 39.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454723, 35.215565, 38.919521>,  <39.255493, 34.588203, 39.311371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454723, 35.215565, 38.919521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737804, 34.933075, 38.911499>,  <39.907654, 34.763580, 38.906685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737804, 34.933075, 38.911499>,  <39.454723, 35.215565, 38.919521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737804, 34.933075, 38.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065932, 0.094284, -0.993360,
		0.703427, 0.701681, 0.113288,
		0.707703, -0.706225, -0.020059,
		39.950115, 34.721207, 38.905483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908524, 35.423008, 38.516296>,  <39.454723, 35.215565, 38.919521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908524, 35.423008, 38.516296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030357, 35.042229, 38.529110>,  <40.103458, 34.813763, 38.536797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030357, 35.042229, 38.529110>,  <39.908524, 35.423008, 38.516296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030357, 35.042229, 38.529110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043716, -0.047564, -0.997911,
		0.951481, 0.302549, -0.056103,
		0.304586, -0.951946, 0.032030,
		40.121735, 34.756645, 38.538719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524216, 35.335064, 38.108379>,  <39.908524, 35.423008, 38.516296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524216, 35.335064, 38.108379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396732, 34.956493, 38.129169>,  <40.320244, 34.729351, 38.141644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396732, 34.956493, 38.129169>,  <40.524216, 35.335064, 38.108379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396732, 34.956493, 38.129169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140777, -0.101488, -0.984826,
		0.937341, -0.306553, 0.165580,
		-0.318706, -0.946428, 0.051973,
		40.301121, 34.672565, 38.144760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933643, 34.987095, 37.869026>,  <40.524216, 35.335064, 38.108379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933643, 34.987095, 37.869026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605026, 34.761440, 37.836021>,  <40.407856, 34.626049, 37.816219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605026, 34.761440, 37.836021>,  <40.933643, 34.987095, 37.869026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605026, 34.761440, 37.836021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090498, 0.013863, -0.995800,
		0.562913, -0.825564, 0.039664,
		-0.821547, -0.564138, -0.082515,
		40.358562, 34.592197, 37.811268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043125, 34.534336, 37.351612>,  <40.933643, 34.987095, 37.869026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043125, 34.534336, 37.351612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643230, 34.527035, 37.345974>,  <40.403294, 34.522655, 37.342590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643230, 34.527035, 37.345974>,  <41.043125, 34.534336, 37.351612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643230, 34.527035, 37.345974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013851, 0.013531, -0.999813,
		0.018427, -0.999742, -0.013275,
		-0.999734, -0.018239, -0.014097,
		40.343311, 34.521561, 37.341743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817291, 34.050457, 36.768227>,  <41.043125, 34.534336, 37.351612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817291, 34.050457, 36.768227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513264, 34.293995, 36.859097>,  <40.330849, 34.440117, 36.913620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513264, 34.293995, 36.859097>,  <40.817291, 34.050457, 36.768227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513264, 34.293995, 36.859097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174749, 0.145218, -0.973845,
		-0.625908, -0.779887, -0.003981,
		-0.760067, 0.608842, 0.227178,
		40.285244, 34.476646, 36.927250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285149, 33.809113, 36.328674>,  <40.817291, 34.050457, 36.768227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285149, 33.809113, 36.328674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151115, 34.171860, 36.430904>,  <40.070698, 34.389507, 36.492241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151115, 34.171860, 36.430904>,  <40.285149, 33.809113, 36.328674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151115, 34.171860, 36.430904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254173, 0.174192, -0.951343,
		-0.907259, -0.383735, 0.172133,
		-0.335079, 0.906865, 0.255573,
		40.050591, 34.443920, 36.507576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480484, 33.022690, 36.251743>,  <40.285149, 33.809113, 36.328674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480484, 33.022690, 36.251743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721645, 33.122238, 35.948540>,  <40.866341, 33.181969, 35.766617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721645, 33.122238, 35.948540>,  <40.480484, 33.022690, 36.251743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721645, 33.122238, 35.948540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545136, -0.822223, 0.163632,
		-0.582529, -0.511872, -0.631386,
		0.602899, 0.248871, -0.758008,
		40.902515, 33.196899, 35.721138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323986, 32.502773, 35.792526>,  <40.480484, 33.022690, 36.251743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323986, 32.502773, 35.792526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395344, 32.282272, 35.466507>,  <40.438156, 32.149971, 35.270897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395344, 32.282272, 35.466507>,  <40.323986, 32.502773, 35.792526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395344, 32.282272, 35.466507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002568, 0.828068, -0.560622,
		0.983956, 0.102103, 0.146305,
		0.178392, -0.551252, -0.815045,
		40.448860, 32.116898, 35.221992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019836, 32.565498, 35.462856>,  <40.323986, 32.502773, 35.792526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019836, 32.565498, 35.462856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712975, 32.479195, 35.221222>,  <40.528858, 32.427414, 35.076241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712975, 32.479195, 35.221222>,  <41.019836, 32.565498, 35.462856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712975, 32.479195, 35.221222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225554, 0.790865, -0.568910,
		0.600499, -0.572696, -0.558050,
		-0.767154, -0.215759, -0.604087,
		40.482830, 32.414467, 35.039997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070755, 32.219818, 34.783169>,  <41.019836, 32.565498, 35.462856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070755, 32.219818, 34.783169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376377, 32.216953, 35.041210>,  <41.559750, 32.215237, 35.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376377, 32.216953, 35.041210>,  <41.070755, 32.219818, 34.783169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376377, 32.216953, 35.041210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507192, 0.624643, -0.593782,
		-0.398712, 0.780878, 0.480894,
		0.764058, -0.007157, 0.645108,
		41.605595, 32.214806, 35.234741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170811, 32.909821, 34.777866>,  <41.070755, 32.219818, 34.783169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170811, 32.909821, 34.777866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481819, 32.677273, 34.873760>,  <41.668423, 32.537743, 34.931297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481819, 32.677273, 34.873760>,  <41.170811, 32.909821, 34.777866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481819, 32.677273, 34.873760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610418, 0.606068, -0.509973,
		0.151187, 0.542852, 0.826108,
		0.777517, -0.581372, 0.239736,
		41.715073, 32.502861, 34.945683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644329, 33.377258, 34.796745>,  <41.170811, 32.909821, 34.777866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644329, 33.377258, 34.796745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838104, 33.030323, 34.751041>,  <41.954369, 32.822163, 34.723621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838104, 33.030323, 34.751041>,  <41.644329, 33.377258, 34.796745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838104, 33.030323, 34.751041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513976, 0.387862, -0.765109,
		0.707921, 0.311920, 0.633683,
		0.484434, -0.867335, -0.114256,
		41.983433, 32.770123, 34.716766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421963, 33.422447, 35.020294>,  <41.644329, 33.377258, 34.796745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421963, 33.422447, 35.020294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315666, 33.192974, 34.710384>,  <42.251888, 33.055290, 34.524441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315666, 33.192974, 34.710384>,  <42.421963, 33.422447, 35.020294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315666, 33.192974, 34.710384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482723, 0.616474, -0.622044,
		0.834482, -0.539302, 0.113107,
		-0.265742, -0.573684, -0.774770,
		42.235943, 33.020870, 34.477955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983379, 33.308887, 34.614460>,  <42.421963, 33.422447, 35.020294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983379, 33.308887, 34.614460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665367, 33.281242, 34.373413>,  <42.474560, 33.264656, 34.228786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665367, 33.281242, 34.373413>,  <42.983379, 33.308887, 34.614460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665367, 33.281242, 34.373413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436346, 0.624939, -0.647343,
		0.421339, -0.777608, -0.466690,
		-0.795032, -0.069112, -0.602617,
		42.426857, 33.260509, 34.192627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201694, 32.964199, 35.305164>,  <42.983379, 33.308887, 34.614460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201694, 32.964199, 35.305164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507755, 32.722153, 35.393143>,  <43.691391, 32.576923, 35.445930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507755, 32.722153, 35.393143>,  <43.201694, 32.964199, 35.305164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507755, 32.722153, 35.393143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627010, 0.777932, -0.040995,
		-0.146297, 0.169276, 0.974650,
		0.765151, -0.605117, 0.219947,
		43.737301, 32.540619, 35.459126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690163, 33.310448, 35.846783>,  <43.201694, 32.964199, 35.305164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690163, 33.310448, 35.846783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888874, 33.002651, 35.686234>,  <44.008102, 32.817974, 35.589905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888874, 33.002651, 35.686234>,  <43.690163, 33.310448, 35.846783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888874, 33.002651, 35.686234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678281, 0.632755, -0.373571,
		0.541426, -0.086657, 0.836270,
		0.496782, -0.769488, -0.401368,
		44.037907, 32.771805, 35.565823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263428, 33.611275, 35.617180>,  <43.690163, 33.310448, 35.846783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263428, 33.611275, 35.617180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374496, 33.259800, 35.461845>,  <44.441135, 33.048916, 35.368645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374496, 33.259800, 35.461845>,  <44.263428, 33.611275, 35.617180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374496, 33.259800, 35.461845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500884, 0.477360, -0.721971,
		0.819765, 0.005957, 0.572669,
		0.277670, -0.878688, -0.388339,
		44.457798, 32.996193, 35.345345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991936, 33.517422, 35.817261>,  <44.263428, 33.611275, 35.617180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991936, 33.517422, 35.817261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880955, 33.342823, 35.474918>,  <44.814365, 33.238064, 35.269512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880955, 33.342823, 35.474918>,  <44.991936, 33.517422, 35.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880955, 33.342823, 35.474918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610966, 0.607332, -0.507807,
		0.741446, -0.663791, 0.098180,
		-0.277450, -0.436496, -0.855858,
		44.797718, 33.211876, 35.218163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968838, 34.027023, 36.378960>,  <44.991936, 33.517422, 35.817261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968838, 34.027023, 36.378960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907661, 34.396126, 36.237461>,  <44.870956, 34.617588, 36.152561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907661, 34.396126, 36.237461>,  <44.968838, 34.027023, 36.378960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907661, 34.396126, 36.237461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953217, 0.232192, 0.193555,
		0.260740, -0.307593, -0.915096,
		-0.152942, 0.922753, -0.353745,
		44.861778, 34.672951, 36.131336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477879, 34.225445, 35.765594>,  <44.968838, 34.027023, 36.378960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477879, 34.225445, 35.765594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374470, 34.576843, 35.926300>,  <45.312424, 34.787682, 36.022724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374470, 34.576843, 35.926300>,  <45.477879, 34.225445, 35.765594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374470, 34.576843, 35.926300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876429, 0.388206, -0.284902,
		-0.406252, 0.278466, -0.870296,
		-0.258519, 0.878495, 0.401765,
		45.296913, 34.840393, 36.046829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487129, 34.722916, 35.177242>,  <45.477879, 34.225445, 35.765594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487129, 34.722916, 35.177242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581894, 34.835255, 35.549263>,  <45.638752, 34.902657, 35.772476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581894, 34.835255, 35.549263>,  <45.487129, 34.722916, 35.177242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581894, 34.835255, 35.549263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908116, 0.276182, -0.314721,
		-0.345252, 0.919156, -0.189610,
		0.236911, 0.280846, 0.930053,
		45.652966, 34.919510, 35.828278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647564, 35.516178, 35.241821>,  <45.487129, 34.722916, 35.177242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647564, 35.516178, 35.241821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849289, 35.312000, 35.520424>,  <45.970322, 35.189495, 35.687584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849289, 35.312000, 35.520424>,  <45.647564, 35.516178, 35.241821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849289, 35.312000, 35.520424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859198, 0.377243, -0.345640,
		-0.086322, 0.772746, 0.628818,
		0.504309, -0.510443, 0.696506,
		46.000580, 35.158867, 35.729374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078278, 35.892788, 35.754227>,  <45.647564, 35.516178, 35.241821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078278, 35.892788, 35.754227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.246506, 35.540249, 35.668110>,  <46.347443, 35.328728, 35.616440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.246506, 35.540249, 35.668110>,  <46.078278, 35.892788, 35.754227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246506, 35.540249, 35.668110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792520, 0.472397, -0.385684,
		0.441622, -0.008412, 0.897162,
		0.420572, -0.881346, -0.215288,
		46.372677, 35.275845, 35.603523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773617, 35.953209, 35.953411>,  <46.078278, 35.892788, 35.754227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773617, 35.953209, 35.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723942, 35.655239, 35.691216>,  <46.694138, 35.476456, 35.533897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723942, 35.655239, 35.691216>,  <46.773617, 35.953209, 35.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.723942, 35.655239, 35.691216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838670, 0.274242, -0.470557,
		0.530292, -0.608176, 0.590689,
		-0.124190, -0.744925, -0.655487,
		46.686684, 35.431763, 35.494568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276672, 35.485203, 36.092281>,  <46.773617, 35.953209, 35.953411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276672, 35.485203, 36.092281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146091, 35.476055, 35.714306>,  <47.067745, 35.470566, 35.487522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146091, 35.476055, 35.714306>,  <47.276672, 35.485203, 36.092281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146091, 35.476055, 35.714306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927309, 0.185919, -0.324858,
		0.183112, -0.982299, -0.039483,
		-0.326448, -0.022872, -0.944939,
		47.048157, 35.469193, 35.430824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.657715, 34.927322, 35.698132>,  <47.276672, 35.485203, 36.092281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.657715, 34.927322, 35.698132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543198, 35.197948, 35.426750>,  <47.474487, 35.360325, 35.263920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543198, 35.197948, 35.426750>,  <47.657715, 34.927322, 35.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.543198, 35.197948, 35.426750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946699, 0.090629, -0.309108,
		-0.147644, -0.730785, -0.666449,
		-0.286292, 0.676564, -0.678453,
		47.457310, 35.400917, 35.223213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896507, 34.711155, 35.133774>,  <47.657715, 34.927322, 35.698132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896507, 34.711155, 35.133774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855061, 35.096916, 35.036457>,  <47.830193, 35.328373, 34.978065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855061, 35.096916, 35.036457>,  <47.896507, 34.711155, 35.133774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.855061, 35.096916, 35.036457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966141, 0.039476, -0.254977,
		-0.236296, -0.261474, -0.935839,
		-0.103613, 0.964403, -0.243292,
		47.823978, 35.386238, 34.963470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.836403, 32.266102, 28.029222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.577919, 32.571365, 28.028893>,  <34.422829, 32.754524, 28.028694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.577919, 32.571365, 28.028893>,  <34.836403, 32.266102, 28.029222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577919, 32.571365, 28.028893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149328, 0.127503, 0.980533,
		0.748410, 0.633505, -0.196355,
		-0.646208, 0.763161, -0.000825,
		34.384056, 32.800312, 28.028645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271797, 32.760010, 28.207447>,  <34.836403, 32.266102, 28.029222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271797, 32.760010, 28.207447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900803, 32.892132, 28.277491>,  <34.678204, 32.971405, 28.319517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900803, 32.892132, 28.277491>,  <35.271797, 32.760010, 28.207447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900803, 32.892132, 28.277491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245880, 0.186122, 0.951263,
		0.281613, 0.925343, -0.253841,
		-0.927490, 0.330303, 0.175109,
		34.622555, 32.991222, 28.330023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288181, 33.429462, 28.489164>,  <35.271797, 32.760010, 28.207447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288181, 33.429462, 28.489164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922276, 33.321373, 28.609293>,  <34.702732, 33.256519, 28.681370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922276, 33.321373, 28.609293>,  <35.288181, 33.429462, 28.489164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922276, 33.321373, 28.609293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195053, 0.355574, 0.914068,
		-0.353791, 0.894732, -0.272557,
		-0.914760, -0.270226, 0.300319,
		34.647846, 33.240307, 28.699389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112190, 33.887493, 29.026384>,  <35.288181, 33.429462, 28.489164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112190, 33.887493, 29.026384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822250, 33.619572, 29.090836>,  <34.648289, 33.458820, 29.129507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822250, 33.619572, 29.090836>,  <35.112190, 33.887493, 29.026384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822250, 33.619572, 29.090836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039419, 0.193181, 0.980371,
		-0.687783, 0.716969, -0.113624,
		-0.724845, -0.669803, 0.161129,
		34.604797, 33.418633, 29.139174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621449, 34.240910, 29.367819>,  <35.112190, 33.887493, 29.026384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621449, 34.240910, 29.367819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588455, 33.851006, 29.450796>,  <34.568661, 33.617062, 29.500582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588455, 33.851006, 29.450796>,  <34.621449, 34.240910, 29.367819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588455, 33.851006, 29.450796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068259, 0.202138, 0.976975,
		-0.994252, 0.094743, 0.049863,
		-0.082482, -0.974764, 0.207443,
		34.563709, 33.558575, 29.513029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084137, 34.194328, 29.864017>,  <34.621449, 34.240910, 29.367819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084137, 34.194328, 29.864017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288975, 33.853542, 29.907671>,  <34.411877, 33.649071, 29.933863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288975, 33.853542, 29.907671>,  <34.084137, 34.194328, 29.864017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288975, 33.853542, 29.907671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045809, 0.153966, 0.987014,
		-0.857706, -0.500446, 0.117873,
		0.512095, -0.851967, 0.109133,
		34.442604, 33.597954, 29.940411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786556, 33.901127, 30.581770>,  <34.084137, 34.194328, 29.864017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786556, 33.901127, 30.581770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136848, 33.730186, 30.491915>,  <34.347023, 33.627621, 30.438002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136848, 33.730186, 30.491915>,  <33.786556, 33.901127, 30.581770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136848, 33.730186, 30.491915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282487, 0.076230, 0.956237,
		-0.391526, -0.900866, 0.187479,
		0.875733, -0.427352, -0.224637,
		34.399567, 33.601982, 30.424524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930702, 33.638222, 31.143951>,  <33.786556, 33.901127, 30.581770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930702, 33.638222, 31.143951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298065, 33.630474, 30.985882>,  <34.518482, 33.625824, 30.891041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298065, 33.630474, 30.985882>,  <33.930702, 33.638222, 31.143951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298065, 33.630474, 30.985882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385828, 0.264975, 0.883700,
		0.087593, -0.964061, 0.250828,
		0.918403, -0.019371, -0.395172,
		34.573586, 33.624664, 30.867331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320839, 33.229980, 31.569490>,  <33.930702, 33.638222, 31.143951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320839, 33.229980, 31.569490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590336, 33.448845, 31.370823>,  <34.752033, 33.580166, 31.251621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590336, 33.448845, 31.370823>,  <34.320839, 33.229980, 31.569490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590336, 33.448845, 31.370823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338621, 0.368795, 0.865636,
		0.656816, -0.751399, 0.063192,
		0.673743, 0.547165, -0.496670,
		34.792458, 33.612995, 31.221823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941879, 33.209488, 32.041588>,  <34.320839, 33.229980, 31.569490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941879, 33.209488, 32.041588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007435, 33.511894, 31.788109>,  <35.046768, 33.693340, 31.636021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007435, 33.511894, 31.788109>,  <34.941879, 33.209488, 32.041588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007435, 33.511894, 31.788109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276731, 0.581358, 0.765142,
		0.946868, -0.300765, -0.113934,
		0.163892, 0.756018, -0.633701,
		35.056602, 33.738701, 31.597998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608757, 33.401497, 32.279129>,  <34.941879, 33.209488, 32.041588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608757, 33.401497, 32.279129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446331, 33.699562, 32.067532>,  <35.348877, 33.878403, 31.940573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446331, 33.699562, 32.067532>,  <35.608757, 33.401497, 32.279129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446331, 33.699562, 32.067532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328846, 0.659242, 0.676210,
		0.852627, 0.100627, -0.512740,
		-0.406065, 0.745167, -0.528997,
		35.324512, 33.923111, 31.908833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201599, 33.822021, 32.018745>,  <35.608757, 33.401497, 32.279129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201599, 33.822021, 32.018745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862545, 34.028526, 32.067711>,  <35.659111, 34.152431, 32.097092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862545, 34.028526, 32.067711>,  <36.201599, 33.822021, 32.018745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862545, 34.028526, 32.067711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414509, 0.500313, 0.760177,
		0.331208, 0.695095, -0.638079,
		-0.847634, 0.516266, 0.122416,
		35.608253, 34.183407, 32.104435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366882, 34.468956, 32.032864>,  <36.201599, 33.822021, 32.018745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366882, 34.468956, 32.032864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017933, 34.492233, 32.227013>,  <35.808563, 34.506199, 32.343502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017933, 34.492233, 32.227013>,  <36.366882, 34.468956, 32.032864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017933, 34.492233, 32.227013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460599, 0.430467, 0.776239,
		-0.163768, 0.900729, -0.402328,
		-0.872369, 0.058189, 0.485372,
		35.756222, 34.509689, 32.372623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416546, 35.121223, 32.373173>,  <36.366882, 34.468956, 32.032864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416546, 35.121223, 32.373173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111542, 34.934792, 32.552658>,  <35.928539, 34.822933, 32.660351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111542, 34.934792, 32.552658>,  <36.416546, 35.121223, 32.373173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111542, 34.934792, 32.552658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357538, 0.274464, 0.892657,
		-0.539204, 0.841095, -0.042641,
		-0.762513, -0.466078, 0.448715,
		35.882790, 34.794968, 32.687271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074013, 35.635426, 32.714695>,  <36.416546, 35.121223, 32.373173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074013, 35.635426, 32.714695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971405, 35.286476, 32.881149>,  <35.909840, 35.077106, 32.981022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971405, 35.286476, 32.881149>,  <36.074013, 35.635426, 32.714695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971405, 35.286476, 32.881149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271977, 0.347997, 0.897177,
		-0.927484, 0.343322, 0.147997,
		-0.256518, -0.872369, 0.416137,
		35.894451, 35.024765, 33.005989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798172, 35.910507, 33.349968>,  <36.074013, 35.635426, 32.714695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798172, 35.910507, 33.349968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894138, 35.523071, 33.376129>,  <35.951717, 35.290611, 33.391827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894138, 35.523071, 33.376129>,  <35.798172, 35.910507, 33.349968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894138, 35.523071, 33.376129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319845, 0.142471, 0.936697,
		-0.916591, -0.203813, 0.343980,
		0.239918, -0.968588, 0.065399,
		35.966114, 35.232494, 33.395748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623592, 35.679386, 34.012920>,  <35.798172, 35.910507, 33.349968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623592, 35.679386, 34.012920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.860298, 35.366737, 33.934036>,  <36.002319, 35.179150, 33.886707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.860298, 35.366737, 33.934036>,  <35.623592, 35.679386, 34.012920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860298, 35.366737, 33.934036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380512, 0.055173, 0.923129,
		-0.710654, -0.621311, 0.330065,
		0.591761, -0.781619, -0.197208,
		36.037827, 35.132252, 33.874874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494312, 35.177559, 34.552952>,  <35.623592, 35.679386, 34.012920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494312, 35.177559, 34.552952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849129, 35.104740, 34.383236>,  <36.062019, 35.061050, 34.281406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849129, 35.104740, 34.383236>,  <35.494312, 35.177559, 34.552952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849129, 35.104740, 34.383236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412302, -0.101206, 0.905408,
		-0.207766, -0.978068, -0.014716,
		0.887040, -0.182046, -0.424287,
		36.115242, 35.050125, 34.255951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743732, 34.555801, 34.914890>,  <35.494312, 35.177559, 34.552952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743732, 34.555801, 34.914890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058266, 34.742630, 34.753136>,  <36.246986, 34.854725, 34.656082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058266, 34.742630, 34.753136>,  <35.743732, 34.555801, 34.914890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058266, 34.742630, 34.753136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472232, -0.032360, 0.880880,
		0.398346, -0.883629, -0.246010,
		0.786332, 0.467069, -0.404387,
		36.294167, 34.882751, 34.631821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346493, 34.163715, 35.143230>,  <35.743732, 34.555801, 34.914890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346493, 34.163715, 35.143230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439625, 34.533104, 35.021248>,  <36.495502, 34.754738, 34.948059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439625, 34.533104, 35.021248>,  <36.346493, 34.163715, 35.143230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439625, 34.533104, 35.021248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410916, 0.190794, 0.891485,
		0.881442, -0.332873, -0.335046,
		0.232826, 0.923468, -0.304957,
		36.509472, 34.810143, 34.929760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075581, 34.161575, 35.119419>,  <36.346493, 34.163715, 35.143230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075581, 34.161575, 35.119419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012470, 34.555984, 35.140858>,  <36.974602, 34.792629, 35.153721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012470, 34.555984, 35.140858>,  <37.075581, 34.161575, 35.119419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012470, 34.555984, 35.140858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308342, -0.002369, 0.951273,
		0.938100, 0.166617, -0.303657,
		-0.157779, 0.986019, 0.053597,
		36.965137, 34.851791, 35.156937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731262, 34.458340, 35.367870>,  <37.075581, 34.161575, 35.119419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731262, 34.458340, 35.367870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.417023, 34.682278, 35.473255>,  <37.228481, 34.816639, 35.536488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.417023, 34.682278, 35.473255>,  <37.731262, 34.458340, 35.367870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417023, 34.682278, 35.473255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304837, -0.020341, 0.952187,
		0.538435, 0.828349, -0.154681,
		-0.785597, 0.559843, 0.263464,
		37.181343, 34.850231, 35.552296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259125, 33.914352, 35.183426>,  <37.731262, 34.458340, 35.367870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259125, 33.914352, 35.183426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399265, 33.567463, 35.324944>,  <38.483349, 33.359329, 35.409855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399265, 33.567463, 35.324944>,  <38.259125, 33.914352, 35.183426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399265, 33.567463, 35.324944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334153, -0.468615, -0.817767,
		0.874983, 0.168283, -0.453966,
		0.350351, -0.867226, 0.353798,
		38.504372, 33.307297, 35.431084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718655, 33.663403, 34.609707>,  <38.259125, 33.914352, 35.183426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718655, 33.663403, 34.609707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604614, 33.361156, 34.845592>,  <38.536190, 33.179810, 34.987125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604614, 33.361156, 34.845592>,  <38.718655, 33.663403, 34.609707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604614, 33.361156, 34.845592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350476, -0.490464, -0.797879,
		0.892124, -0.434155, -0.124995,
		-0.285097, -0.755615, 0.589716,
		38.519085, 33.134472, 35.022507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841679, 33.012970, 34.288609>,  <38.718655, 33.663403, 34.609707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841679, 33.012970, 34.288609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561481, 32.860218, 34.529766>,  <38.393364, 32.768566, 34.674461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561481, 32.860218, 34.529766>,  <38.841679, 33.012970, 34.288609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561481, 32.860218, 34.529766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287664, -0.622036, -0.728231,
		0.653118, -0.683550, 0.325877,
		-0.700490, -0.381878, 0.602896,
		38.351334, 32.745655, 34.710636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889099, 32.259094, 34.256439>,  <38.841679, 33.012970, 34.288609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889099, 32.259094, 34.256439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520527, 32.382500, 34.350918>,  <38.299385, 32.456543, 34.407604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520527, 32.382500, 34.350918>,  <38.889099, 32.259094, 34.256439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520527, 32.382500, 34.350918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368612, -0.501886, -0.782455,
		-0.122855, -0.808041, 0.576174,
		-0.921429, 0.308513, 0.236195,
		38.244099, 32.475052, 34.421776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449085, 31.698505, 34.169601>,  <38.889099, 32.259094, 34.256439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449085, 31.698505, 34.169601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204071, 32.014404, 34.182846>,  <38.057064, 32.203945, 34.190792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204071, 32.014404, 34.182846>,  <38.449085, 31.698505, 34.169601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204071, 32.014404, 34.182846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482296, -0.340227, -0.807240,
		-0.626252, -0.510433, 0.589294,
		-0.612535, 0.789750, 0.033112,
		38.020309, 32.251328, 34.192780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875111, 31.297176, 34.088852>,  <38.449085, 31.698505, 34.169601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875111, 31.297176, 34.088852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742805, 31.667484, 34.015591>,  <37.663422, 31.889669, 33.971634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742805, 31.667484, 34.015591>,  <37.875111, 31.297176, 34.088852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742805, 31.667484, 34.015591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524997, -0.341786, -0.779462,
		-0.784202, -0.161661, 0.599076,
		-0.330764, 0.925769, -0.183158,
		37.643578, 31.945215, 33.960644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056873, 31.298361, 34.025974>,  <37.875111, 31.297176, 34.088852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056873, 31.298361, 34.025974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190273, 31.620081, 33.829250>,  <37.270313, 31.813112, 33.711216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190273, 31.620081, 33.829250>,  <37.056873, 31.298361, 34.025974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190273, 31.620081, 33.829250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576779, -0.238580, -0.781284,
		-0.745723, 0.544228, 0.384335,
		0.333502, 0.804298, -0.491814,
		37.290325, 31.861370, 33.681705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490376, 31.569519, 33.609409>,  <37.056873, 31.298361, 34.025974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490376, 31.569519, 33.609409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815552, 31.746069, 33.457451>,  <37.010658, 31.851999, 33.366276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815552, 31.746069, 33.457451>,  <36.490376, 31.569519, 33.609409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815552, 31.746069, 33.457451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422023, -0.003010, -0.906580,
		-0.401283, 0.897319, 0.183822,
		0.812938, 0.441372, -0.379897,
		37.059433, 31.878481, 33.343483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316185, 32.271935, 33.300152>,  <36.490376, 31.569519, 33.609409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316185, 32.271935, 33.300152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643139, 32.127022, 33.120983>,  <36.839314, 32.040073, 33.013481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643139, 32.127022, 33.120983>,  <36.316185, 32.271935, 33.300152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643139, 32.127022, 33.120983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495209, -0.044583, -0.867630,
		0.294355, 0.931002, -0.215846,
		0.817388, -0.362279, -0.447917,
		36.888355, 32.018337, 32.986607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278999, 32.527061, 32.609718>,  <36.316185, 32.271935, 33.300152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278999, 32.527061, 32.609718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539562, 32.226559, 32.567215>,  <36.695900, 32.046257, 32.541714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539562, 32.226559, 32.567215>,  <36.278999, 32.527061, 32.609718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539562, 32.226559, 32.567215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439678, -0.259629, -0.859812,
		0.618349, 0.606804, -0.499433,
		0.651404, -0.751253, -0.106257,
		36.734985, 32.001183, 32.535339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675468, 32.583874, 32.085754>,  <36.278999, 32.527061, 32.609718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675468, 32.583874, 32.085754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695213, 32.186764, 32.129490>,  <36.707062, 31.948498, 32.155731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695213, 32.186764, 32.129490>,  <36.675468, 32.583874, 32.085754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695213, 32.186764, 32.129490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178386, -0.116474, -0.977043,
		0.982722, 0.028726, -0.182847,
		0.049363, -0.992778, 0.109337,
		36.710022, 31.888929, 32.162292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048622, 32.352791, 31.536489>,  <36.675468, 32.583874, 32.085754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048622, 32.352791, 31.536489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856674, 32.032654, 31.680248>,  <36.741505, 31.840570, 31.766504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856674, 32.032654, 31.680248>,  <37.048622, 32.352791, 31.536489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856674, 32.032654, 31.680248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192860, -0.303395, -0.933143,
		0.855878, -0.517104, -0.008764,
		-0.479873, -0.800347, 0.359398,
		36.712711, 31.792549, 31.788067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291412, 31.717424, 31.104895>,  <37.048622, 32.352791, 31.536489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291412, 31.717424, 31.104895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958698, 31.600130, 31.293423>,  <36.759068, 31.529755, 31.406540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958698, 31.600130, 31.293423>,  <37.291412, 31.717424, 31.104895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958698, 31.600130, 31.293423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329438, -0.422607, -0.844319,
		0.446766, -0.857565, 0.254917,
		-0.831788, -0.293234, 0.471321,
		36.709164, 31.512159, 31.434818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177124, 30.983463, 30.934565>,  <37.291412, 31.717424, 31.104895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177124, 30.983463, 30.934565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823032, 31.145056, 31.026791>,  <36.610577, 31.242012, 31.082127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823032, 31.145056, 31.026791>,  <37.177124, 30.983463, 30.934565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823032, 31.145056, 31.026791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392167, -0.381641, -0.836992,
		-0.250134, -0.831354, 0.496269,
		-0.885233, 0.403980, 0.230568,
		36.557461, 31.266251, 31.095961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648727, 30.494751, 30.734058>,  <37.177124, 30.983463, 30.934565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648727, 30.494751, 30.734058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440414, 30.835234, 30.760094>,  <36.315426, 31.039524, 30.775715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440414, 30.835234, 30.760094>,  <36.648727, 30.494751, 30.734058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440414, 30.835234, 30.760094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434869, -0.198899, -0.878253,
		-0.734629, -0.485681, 0.473746,
		-0.520778, 0.851207, 0.065091,
		36.284180, 31.090595, 30.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033581, 30.245523, 30.672941>,  <36.648727, 30.494751, 30.734058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033581, 30.245523, 30.672941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997353, 30.636559, 30.596926>,  <35.975616, 30.871180, 30.551315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997353, 30.636559, 30.596926>,  <36.033581, 30.245523, 30.672941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997353, 30.636559, 30.596926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331660, -0.209540, -0.919834,
		-0.939041, -0.020283, 0.343205,
		-0.090572, 0.977590, -0.190040,
		35.970181, 30.929836, 30.539913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516769, 30.226505, 30.232830>,  <36.033581, 30.245523, 30.672941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516769, 30.226505, 30.232830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613129, 30.614477, 30.218977>,  <35.670944, 30.847261, 30.210665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613129, 30.614477, 30.218977>,  <35.516769, 30.226505, 30.232830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613129, 30.614477, 30.218977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295508, 0.039314, -0.954531,
		-0.924468, 0.240182, 0.296093,
		0.240902, 0.969931, -0.034631,
		35.685398, 30.905457, 30.208588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994442, 30.626389, 30.006184>,  <35.516769, 30.226505, 30.232830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994442, 30.626389, 30.006184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354198, 30.772230, 29.909721>,  <35.570053, 30.859735, 29.851843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354198, 30.772230, 29.909721>,  <34.994442, 30.626389, 30.006184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354198, 30.772230, 29.909721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213052, -0.116107, -0.970118,
		-0.381707, 0.923896, -0.026746,
		0.899393, 0.364603, -0.241157,
		35.624016, 30.881611, 29.837374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.665985, 31.274246, 29.514910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.058926, 31.227764, 29.456270>,  <35.294689, 31.199875, 29.421087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.058926, 31.227764, 29.456270>,  <34.665985, 31.274246, 29.514910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058926, 31.227764, 29.456270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101638, 0.326353, -0.939768,
		0.157051, 0.938077, 0.308781,
		0.982346, -0.116208, -0.146598,
		35.353630, 31.192902, 29.412291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823662, 31.857143, 29.221001>,  <34.665985, 31.274246, 29.514910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823662, 31.857143, 29.221001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128353, 31.630011, 29.096203>,  <35.311169, 31.493731, 29.021324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128353, 31.630011, 29.096203>,  <34.823662, 31.857143, 29.221001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128353, 31.630011, 29.096203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234537, 0.207222, -0.949764,
		0.603959, 0.796633, 0.024668,
		0.761726, -0.567833, -0.311994,
		35.356873, 31.459661, 29.002605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239223, 32.223278, 28.685452>,  <34.823662, 31.857143, 29.221001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239223, 32.223278, 28.685452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264702, 31.825798, 28.648561>,  <35.279991, 31.587311, 28.626427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264702, 31.825798, 28.648561>,  <35.239223, 32.223278, 28.685452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264702, 31.825798, 28.648561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109929, 0.098839, -0.989013,
		0.991896, 0.052861, 0.115532,
		0.063699, -0.993698, -0.092227,
		35.283810, 31.527689, 28.620893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758099, 32.223011, 28.182907>,  <35.239223, 32.223278, 28.685452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758099, 32.223011, 28.182907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585434, 31.862818, 28.204060>,  <35.481834, 31.646702, 28.216751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585434, 31.862818, 28.204060>,  <35.758099, 32.223011, 28.182907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585434, 31.862818, 28.204060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121870, -0.116307, -0.985708,
		0.893764, -0.419049, 0.159947,
		-0.431663, -0.900483, 0.052882,
		35.455936, 31.592672, 28.219925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098785, 31.766563, 27.695854>,  <35.758099, 32.223011, 28.182907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098785, 31.766563, 27.695854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753677, 31.567747, 27.732914>,  <35.546612, 31.448458, 27.755150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753677, 31.567747, 27.732914>,  <36.098785, 31.766563, 27.695854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753677, 31.567747, 27.732914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029012, -0.231612, -0.972375,
		0.504769, -0.836245, 0.214248,
		-0.862767, -0.497041, 0.092650,
		35.494846, 31.418634, 27.760710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270481, 31.167402, 27.408024>,  <36.098785, 31.766563, 27.695854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270481, 31.167402, 27.408024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874126, 31.219021, 27.392578>,  <35.636314, 31.249992, 27.383310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874126, 31.219021, 27.392578>,  <36.270481, 31.167402, 27.408024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874126, 31.219021, 27.392578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013117, -0.192855, -0.981140,
		-0.134055, -0.972705, 0.189405,
		-0.990887, 0.129042, -0.038613,
		35.576862, 31.257734, 27.380995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083080, 30.449951, 27.225227>,  <36.270481, 31.167402, 27.408024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083080, 30.449951, 27.225227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781548, 30.704824, 27.161053>,  <35.600628, 30.857748, 27.122547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781548, 30.704824, 27.161053>,  <36.083080, 30.449951, 27.225227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781548, 30.704824, 27.161053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075769, -0.326838, -0.942038,
		-0.652689, -0.697978, 0.294658,
		-0.753828, 0.637184, -0.160439,
		35.555401, 30.895979, 27.112921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703060, 30.178087, 26.739506>,  <36.083080, 30.449951, 27.225227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703060, 30.178087, 26.739506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529671, 30.538174, 26.722979>,  <35.425636, 30.754225, 26.713062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529671, 30.538174, 26.722979>,  <35.703060, 30.178087, 26.739506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529671, 30.538174, 26.722979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072386, -0.080481, -0.994124,
		-0.898252, -0.427940, 0.100050,
		-0.433477, 0.900217, -0.041316,
		35.399628, 30.808239, 26.710585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158970, 30.106165, 26.377567>,  <35.703060, 30.178087, 26.739506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158970, 30.106165, 26.377567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235683, 30.496805, 26.338640>,  <35.281712, 30.731190, 26.315285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235683, 30.496805, 26.338640>,  <35.158970, 30.106165, 26.377567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235683, 30.496805, 26.338640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215890, -0.054750, -0.974882,
		-0.957397, 0.207980, 0.200338,
		0.191788, 0.976600, -0.097318,
		35.293221, 30.789785, 26.309444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723446, 30.354486, 25.907469>,  <35.158970, 30.106165, 26.377567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723446, 30.354486, 25.907469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008221, 30.635384, 25.908033>,  <35.179085, 30.803923, 25.908373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008221, 30.635384, 25.908033>,  <34.723446, 30.354486, 25.907469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008221, 30.635384, 25.908033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126589, 0.130315, -0.983358,
		-0.690741, 0.699909, 0.181672,
		0.711936, 0.702243, 0.001414,
		35.221802, 30.846056, 25.908457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545311, 30.813929, 25.337488>,  <34.723446, 30.354486, 25.907469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545311, 30.813929, 25.337488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933708, 30.862469, 25.419907>,  <35.166744, 30.891592, 25.469358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933708, 30.862469, 25.419907>,  <34.545311, 30.813929, 25.337488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933708, 30.862469, 25.419907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220169, -0.117449, -0.968365,
		-0.093310, 0.985637, -0.140759,
		0.970989, 0.121349, 0.206047,
		35.225006, 30.898872, 25.481720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732197, 31.069180, 24.734100>,  <34.545311, 30.813929, 25.337488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732197, 31.069180, 24.734100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.074940, 30.964033, 24.911501>,  <35.280586, 30.900946, 25.017942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.074940, 30.964033, 24.911501>,  <34.732197, 31.069180, 24.734100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074940, 30.964033, 24.911501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390506, -0.230726, -0.891219,
		0.336599, 0.936839, -0.095049,
		0.856858, -0.262866, 0.443503,
		35.331997, 30.885174, 25.044552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245251, 31.361814, 24.348566>,  <34.732197, 31.069180, 24.734100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245251, 31.361814, 24.348566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459156, 31.092237, 24.552464>,  <35.587498, 30.930492, 24.674801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459156, 31.092237, 24.552464>,  <35.245251, 31.361814, 24.348566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459156, 31.092237, 24.552464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368028, -0.357265, -0.858439,
		0.760650, 0.646657, 0.056978,
		0.534759, -0.673941, 0.509742,
		35.619583, 30.890055, 24.705385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960594, 31.519787, 24.266413>,  <35.245251, 31.361814, 24.348566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960594, 31.519787, 24.266413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933868, 31.129299, 24.348906>,  <35.917831, 30.895006, 24.398401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933868, 31.129299, 24.348906>,  <35.960594, 31.519787, 24.266413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933868, 31.129299, 24.348906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421290, -0.214968, -0.881081,
		0.904461, 0.028016, 0.425634,
		-0.066813, -0.976219, 0.206233,
		35.913826, 30.836433, 24.410776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646042, 31.161016, 23.964554>,  <35.960594, 31.519787, 24.266413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646042, 31.161016, 23.964554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353420, 30.889214, 23.986832>,  <36.177849, 30.726131, 24.000198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353420, 30.889214, 23.986832>,  <36.646042, 31.161016, 23.964554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353420, 30.889214, 23.986832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190561, -0.282223, -0.940232,
		0.654612, -0.677216, 0.335948,
		-0.731553, -0.679506, 0.055696,
		36.133953, 30.685362, 24.003540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942738, 30.662113, 23.537312>,  <36.646042, 31.161016, 23.964554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942738, 30.662113, 23.537312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558041, 30.559238, 23.575062>,  <36.327221, 30.497513, 23.597712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558041, 30.559238, 23.575062>,  <36.942738, 30.662113, 23.537312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558041, 30.559238, 23.575062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034861, -0.456579, -0.888999,
		0.271728, -0.851698, 0.448078,
		-0.961742, -0.257187, 0.094374,
		36.269516, 30.482082, 23.603374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823444, 30.040409, 23.235851>,  <36.942738, 30.662113, 23.537312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823444, 30.040409, 23.235851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450993, 30.186069, 23.243767>,  <36.227520, 30.273466, 23.248516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450993, 30.186069, 23.243767>,  <36.823444, 30.040409, 23.235851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450993, 30.186069, 23.243767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171591, -0.389580, -0.904867,
		-0.321794, -0.845946, 0.425235,
		-0.931132, 0.364147, 0.019792,
		36.171654, 30.295315, 23.249704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321785, 29.590187, 22.916832>,  <36.823444, 30.040409, 23.235851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321785, 29.590187, 22.916832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109283, 29.927174, 22.880997>,  <35.981785, 30.129366, 22.859495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109283, 29.927174, 22.880997>,  <36.321785, 29.590187, 22.916832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109283, 29.927174, 22.880997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313878, -0.293933, -0.902820,
		-0.786927, -0.451505, 0.420583,
		-0.531251, 0.842465, -0.089586,
		35.949909, 30.179913, 22.854120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860607, 29.382805, 22.540197>,  <36.321785, 29.590187, 22.916832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860607, 29.382805, 22.540197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799515, 29.776112, 22.500483>,  <35.762859, 30.012096, 22.476654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799515, 29.776112, 22.500483>,  <35.860607, 29.382805, 22.540197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799515, 29.776112, 22.500483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308931, -0.142934, -0.940283,
		-0.938741, -0.112935, 0.325592,
		-0.152729, 0.983268, -0.099288,
		35.753696, 30.071093, 22.470695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240627, 29.502136, 22.209192>,  <35.860607, 29.382805, 22.540197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240627, 29.502136, 22.209192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438534, 29.843830, 22.145327>,  <35.557278, 30.048845, 22.107008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438534, 29.843830, 22.145327>,  <35.240627, 29.502136, 22.209192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438534, 29.843830, 22.145327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119027, -0.115382, -0.986164,
		-0.860837, 0.506924, 0.044589,
		0.494766, 0.854233, -0.159663,
		35.586964, 30.100100, 22.097427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813904, 29.748812, 21.737061>,  <35.240627, 29.502136, 22.209192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813904, 29.748812, 21.737061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134796, 29.985590, 21.705997>,  <35.327332, 30.127657, 21.687359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134796, 29.985590, 21.705997>,  <34.813904, 29.748812, 21.737061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134796, 29.985590, 21.705997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101928, 0.007631, -0.994763,
		-0.588251, 0.805943, 0.066457,
		0.802229, 0.591944, -0.077659,
		35.375465, 30.163174, 21.682699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582939, 30.342691, 21.339012>,  <34.813904, 29.748812, 21.737061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582939, 30.342691, 21.339012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980816, 30.312969, 21.310549>,  <35.219543, 30.295135, 21.293470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980816, 30.312969, 21.310549>,  <34.582939, 30.342691, 21.339012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980816, 30.312969, 21.310549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070312, 0.013948, -0.997428,
		0.075109, 0.997138, 0.008649,
		0.994693, -0.074308, -0.071158,
		35.279224, 30.290676, 21.289202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889549, 30.788961, 20.810852>,  <34.582939, 30.342691, 21.339012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889549, 30.788961, 20.810852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122482, 30.466225, 20.850651>,  <35.262241, 30.272583, 20.874531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122482, 30.466225, 20.850651>,  <34.889549, 30.788961, 20.810852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122482, 30.466225, 20.850651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054884, -0.083091, -0.995030,
		0.811098, 0.584896, -0.004104,
		0.582330, -0.806841, 0.099496,
		35.297180, 30.224173, 20.880499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659000, 30.996080, 20.173153>,  <34.889549, 30.788961, 20.810852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659000, 30.996080, 20.173153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639942, 31.379568, 20.061022>,  <34.628506, 31.609661, 19.993742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639942, 31.379568, 20.061022>,  <34.659000, 30.996080, 20.173153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639942, 31.379568, 20.061022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113642, 0.284028, 0.952057,
		0.992379, 0.013504, -0.122483,
		-0.047646, 0.958721, -0.280329,
		34.625648, 31.667185, 19.976923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176964, 31.381186, 20.465879>,  <34.659000, 30.996080, 20.173153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176964, 31.381186, 20.465879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866619, 31.623949, 20.396950>,  <34.680412, 31.769608, 20.355593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866619, 31.623949, 20.396950>,  <35.176964, 31.381186, 20.465879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866619, 31.623949, 20.396950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171363, 0.465595, 0.868249,
		0.607180, 0.644114, -0.465241,
		-0.775865, 0.606909, -0.172323,
		34.633858, 31.806021, 20.345253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288864, 32.013050, 20.723042>,  <35.176964, 31.381186, 20.465879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288864, 32.013050, 20.723042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891384, 32.057873, 20.722589>,  <34.652897, 32.084766, 20.722319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891384, 32.057873, 20.722589>,  <35.288864, 32.013050, 20.723042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891384, 32.057873, 20.722589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044500, 0.403848, 0.913743,
		0.102849, 0.907937, -0.406291,
		-0.993701, 0.112058, -0.001132,
		34.593273, 32.091492, 20.722250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069031, 32.725315, 21.011038>,  <35.288864, 32.013050, 20.723042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069031, 32.725315, 21.011038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758286, 32.475147, 21.040274>,  <34.571838, 32.325047, 21.057816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758286, 32.475147, 21.040274>,  <35.069031, 32.725315, 21.011038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758286, 32.475147, 21.040274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191560, 0.345313, 0.918730,
		-0.599826, 0.699725, -0.388065,
		-0.776862, -0.625415, 0.073088,
		34.525227, 32.287521, 21.062201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496048, 33.164310, 21.217245>,  <35.069031, 32.725315, 21.011038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496048, 33.164310, 21.217245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402794, 32.791439, 21.328016>,  <34.346844, 32.567715, 21.394480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402794, 32.791439, 21.328016>,  <34.496048, 33.164310, 21.217245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402794, 32.791439, 21.328016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276544, 0.336571, 0.900135,
		-0.932295, 0.133268, -0.336254,
		-0.233132, -0.932180, 0.276929,
		34.332855, 32.511784, 21.411095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806118, 33.174881, 21.559294>,  <34.496048, 33.164310, 21.217245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806118, 33.174881, 21.559294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966213, 32.823849, 21.664873>,  <34.062271, 32.613232, 21.728220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966213, 32.823849, 21.664873>,  <33.806118, 33.174881, 21.559294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966213, 32.823849, 21.664873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260828, 0.167025, 0.950827,
		-0.878510, -0.449401, -0.162047,
		0.400236, -0.877577, 0.263949,
		34.086285, 32.560577, 21.744059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410591, 33.050407, 22.113327>,  <33.806118, 33.174881, 21.559294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410591, 33.050407, 22.113327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716877, 32.800854, 22.175882>,  <33.900646, 32.651123, 22.213415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716877, 32.800854, 22.175882>,  <33.410591, 33.050407, 22.113327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716877, 32.800854, 22.175882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038889, 0.197791, 0.979472,
		-0.642009, -0.756074, 0.127189,
		0.765710, -0.623884, 0.156386,
		33.946590, 32.613689, 22.222797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258434, 32.495815, 22.630161>,  <33.410591, 33.050407, 22.113327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258434, 32.495815, 22.630161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.656239, 32.535545, 22.643276>,  <33.894920, 32.559383, 22.651146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.656239, 32.535545, 22.643276>,  <33.258434, 32.495815, 22.630161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656239, 32.535545, 22.643276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060258, 0.287813, 0.955789,
		0.085500, -0.952522, 0.292219,
		0.994515, 0.099328, 0.032789,
		33.954594, 32.565346, 22.653112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486004, 32.245911, 23.245447>,  <33.258434, 32.495815, 22.630161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486004, 32.245911, 23.245447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.797703, 32.464481, 23.122679>,  <33.984722, 32.595623, 23.049019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.797703, 32.464481, 23.122679>,  <33.486004, 32.245911, 23.245447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797703, 32.464481, 23.122679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213631, 0.228804, 0.949742,
		0.589188, -0.805647, 0.061560,
		0.779243, 0.546426, -0.306919,
		34.031475, 32.628410, 23.030603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052086, 31.999126, 23.663589>,  <33.486004, 32.245911, 23.245447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052086, 31.999126, 23.663589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136978, 32.369408, 23.538351>,  <34.187916, 32.591576, 23.463207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136978, 32.369408, 23.538351>,  <34.052086, 31.999126, 23.663589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136978, 32.369408, 23.538351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140528, 0.288154, 0.947216,
		0.967062, -0.245030, -0.068931,
		0.212234, 0.925703, -0.313096,
		34.200649, 32.647118, 23.444422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575733, 32.219353, 24.029085>,  <34.052086, 31.999126, 23.663589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575733, 32.219353, 24.029085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466179, 32.570797, 23.872606>,  <34.400448, 32.781662, 23.778719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466179, 32.570797, 23.872606>,  <34.575733, 32.219353, 24.029085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466179, 32.570797, 23.872606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224400, 0.453902, 0.862333,
		0.935218, 0.148394, -0.321476,
		-0.273883, 0.878608, -0.391197,
		34.384014, 32.834381, 23.755247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187187, 32.742142, 24.118116>,  <34.575733, 32.219353, 24.029085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187187, 32.742142, 24.118116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821995, 32.904903, 24.106174>,  <34.602879, 33.002560, 24.099009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821995, 32.904903, 24.106174>,  <35.187187, 32.742142, 24.118116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821995, 32.904903, 24.106174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097383, 0.288386, 0.952549,
		0.396210, 0.866752, -0.302917,
		-0.912981, 0.406909, -0.029854,
		34.548100, 33.026978, 24.097218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243893, 33.195400, 24.590513>,  <35.187187, 32.742142, 24.118116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243893, 33.195400, 24.590513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848362, 33.154453, 24.547152>,  <34.611046, 33.129887, 24.521133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848362, 33.154453, 24.547152>,  <35.243893, 33.195400, 24.590513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848362, 33.154453, 24.547152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121554, 0.132416, 0.983713,
		-0.086344, 0.985894, -0.143378,
		-0.988822, -0.102365, -0.108406,
		34.551716, 33.123745, 24.514629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007835, 33.591022, 25.073898>,  <35.243893, 33.195400, 24.590513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007835, 33.591022, 25.073898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657703, 33.429985, 24.966774>,  <34.447624, 33.333363, 24.902498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657703, 33.429985, 24.966774>,  <35.007835, 33.591022, 25.073898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657703, 33.429985, 24.966774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369818, 0.200582, 0.907194,
		-0.311512, 0.893133, -0.324461,
		-0.875326, -0.402593, -0.267813,
		34.395107, 33.309208, 24.886431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487228, 34.018494, 25.373629>,  <35.007835, 33.591022, 25.073898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487228, 34.018494, 25.373629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322712, 33.657471, 25.322681>,  <34.224003, 33.440857, 25.292112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322712, 33.657471, 25.322681>,  <34.487228, 34.018494, 25.373629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322712, 33.657471, 25.322681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188749, -0.052374, 0.980628,
		-0.891746, 0.427367, -0.148816,
		-0.411294, -0.902560, -0.127369,
		34.199326, 33.386703, 25.284472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856987, 34.096146, 25.778395>,  <34.487228, 34.018494, 25.373629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856987, 34.096146, 25.778395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908302, 33.701237, 25.740810>,  <33.939091, 33.464291, 25.718260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908302, 33.701237, 25.740810>,  <33.856987, 34.096146, 25.778395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908302, 33.701237, 25.740810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322406, -0.131116, 0.937477,
		-0.937868, -0.089972, -0.335124,
		0.128287, -0.987276, -0.093962,
		33.946789, 33.405052, 25.712622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254189, 33.705231, 26.193586>,  <33.856987, 34.096146, 25.778395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254189, 33.705231, 26.193586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565945, 33.460243, 26.140791>,  <33.752998, 33.313251, 26.109114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565945, 33.460243, 26.140791>,  <33.254189, 33.705231, 26.193586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565945, 33.460243, 26.140791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059375, -0.281918, 0.957600,
		-0.623714, -0.738511, -0.256091,
		0.779395, -0.612473, -0.131987,
		33.799763, 33.276501, 26.101194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944897, 33.036579, 26.395887>,  <33.254189, 33.705231, 26.193586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944897, 33.036579, 26.395887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342983, 33.067047, 26.420345>,  <33.581837, 33.085327, 26.435020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342983, 33.067047, 26.420345>,  <32.944897, 33.036579, 26.395887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342983, 33.067047, 26.420345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033968, -0.317039, 0.947804,
		0.091580, -0.945349, -0.312936,
		0.995218, 0.076170, 0.061146,
		33.641548, 33.089897, 26.438688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211723, 32.537346, 26.793625>,  <32.944897, 33.036579, 26.395887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211723, 32.537346, 26.793625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531967, 32.776356, 26.811489>,  <33.724113, 32.919762, 26.822206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531967, 32.776356, 26.811489>,  <33.211723, 32.537346, 26.793625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531967, 32.776356, 26.811489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045850, -0.135408, 0.989728,
		0.597430, -0.790338, -0.135805,
		0.800609, 0.597520, 0.044659,
		33.772148, 32.955612, 26.824886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523201, 32.208874, 27.332270>,  <33.211723, 32.537346, 26.793625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523201, 32.208874, 27.332270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726891, 32.548931, 27.278673>,  <33.849106, 32.752964, 27.246515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726891, 32.548931, 27.278673>,  <33.523201, 32.208874, 27.332270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726891, 32.548931, 27.278673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224701, 0.018956, 0.974243,
		0.830783, -0.526215, -0.181374,
		0.509224, 0.850140, -0.133990,
		33.879658, 32.803974, 27.238476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194973, 32.028008, 27.662163>,  <33.523201, 32.208874, 27.332270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194973, 32.028008, 27.662163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202980, 32.427570, 27.645254>,  <34.207783, 32.667309, 27.635109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202980, 32.427570, 27.645254>,  <34.194973, 32.028008, 27.662163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202980, 32.427570, 27.645254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397590, 0.030843, 0.917045,
		0.917345, -0.035160, -0.396537,
		0.020013, 0.998906, -0.042273,
		34.208984, 32.727242, 27.632572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.258629, 30.735018, 32.358135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.396954, 31.052238, 32.157539>,  <36.479946, 31.242571, 32.037182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.396954, 31.052238, 32.157539>,  <36.258629, 30.735018, 32.358135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396954, 31.052238, 32.157539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632444, 0.197807, 0.748924,
		0.693132, -0.576146, -0.433156,
		0.345808, 0.793050, -0.501486,
		36.500694, 31.290154, 32.007095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058678, 30.669434, 32.292282>,  <36.258629, 30.735018, 32.358135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058678, 30.669434, 32.292282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957306, 31.052765, 32.239548>,  <36.896484, 31.282764, 32.207909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957306, 31.052765, 32.239548>,  <37.058678, 30.669434, 32.292282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957306, 31.052765, 32.239548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587255, 0.260712, 0.766264,
		0.768704, 0.116771, -0.628855,
		-0.253428, 0.958329, -0.131836,
		36.881279, 31.340263, 32.199997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657475, 31.064640, 32.507492>,  <37.058678, 30.669434, 32.292282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657475, 31.064640, 32.507492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356754, 31.328333, 32.513351>,  <37.176323, 31.486549, 32.516869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356754, 31.328333, 32.513351>,  <37.657475, 31.064640, 32.507492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356754, 31.328333, 32.513351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411464, 0.451648, 0.791651,
		0.515266, 0.601188, -0.610798,
		-0.751797, 0.659232, 0.014648,
		37.131214, 31.526102, 32.517746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971523, 31.689201, 32.512512>,  <37.657475, 31.064640, 32.507492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971523, 31.689201, 32.512512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613480, 31.722073, 32.687798>,  <37.398655, 31.741796, 32.792969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613480, 31.722073, 32.687798>,  <37.971523, 31.689201, 32.512512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613480, 31.722073, 32.687798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394805, 0.602765, 0.693399,
		-0.207157, 0.793675, -0.571984,
		-0.895106, 0.082180, 0.438214,
		37.344948, 31.746727, 32.819263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039696, 32.427612, 32.660286>,  <37.971523, 31.689201, 32.512512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039696, 32.427612, 32.660286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759060, 32.248943, 32.882366>,  <37.590679, 32.141743, 33.015614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759060, 32.248943, 32.882366>,  <38.039696, 32.427612, 32.660286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759060, 32.248943, 32.882366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369584, 0.438055, 0.819460,
		-0.609243, 0.780120, -0.142251,
		-0.701591, -0.446677, 0.555202,
		37.548584, 32.114941, 33.048927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722065, 32.924744, 33.113262>,  <38.039696, 32.427612, 32.660286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722065, 32.924744, 33.113262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621384, 32.574451, 33.278061>,  <37.560974, 32.364277, 33.376942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621384, 32.574451, 33.278061>,  <37.722065, 32.924744, 33.113262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621384, 32.574451, 33.278061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319358, 0.326704, 0.889536,
		-0.913594, 0.355478, 0.197438,
		-0.251707, -0.875728, 0.411999,
		37.545872, 32.311733, 33.401661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315258, 33.144707, 33.627651>,  <37.722065, 32.924744, 33.113262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315258, 33.144707, 33.627651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413929, 32.771034, 33.730766>,  <37.473133, 32.546829, 33.792637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413929, 32.771034, 33.730766>,  <37.315258, 33.144707, 33.627651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413929, 32.771034, 33.730766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304873, 0.327308, 0.894384,
		-0.919893, -0.142031, 0.365546,
		0.246676, -0.934182, 0.257787,
		37.487930, 32.490780, 33.808102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999031, 33.078037, 34.252518>,  <37.315258, 33.144707, 33.627651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999031, 33.078037, 34.252518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.319603, 32.841003, 34.220135>,  <37.511948, 32.698784, 34.200703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.319603, 32.841003, 34.220135>,  <36.999031, 33.078037, 34.252518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319603, 32.841003, 34.220135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299501, 0.280460, 0.911944,
		-0.517697, -0.755107, 0.402249,
		0.801430, -0.592584, -0.080962,
		37.560032, 32.663227, 34.195847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138580, 32.964111, 34.864845>,  <36.999031, 33.078037, 34.252518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138580, 32.964111, 34.864845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.473850, 32.794815, 34.727249>,  <37.675014, 32.693237, 34.644691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.473850, 32.794815, 34.727249>,  <37.138580, 32.964111, 34.864845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473850, 32.794815, 34.727249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472706, 0.249143, 0.845268,
		-0.272047, -0.871090, 0.408893,
		0.838177, -0.423238, -0.343991,
		37.725304, 32.667843, 34.624050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353924, 32.625435, 35.431618>,  <37.138580, 32.964111, 34.864845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353924, 32.625435, 35.431618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689568, 32.636585, 35.214321>,  <37.890953, 32.643276, 35.083942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689568, 32.636585, 35.214321>,  <37.353924, 32.625435, 35.431618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689568, 32.636585, 35.214321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525791, 0.214387, 0.823154,
		0.139410, -0.976351, 0.165238,
		0.839112, 0.027875, -0.543244,
		37.941299, 32.644947, 35.051346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902252, 32.296902, 35.849346>,  <37.353924, 32.625435, 35.431618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902252, 32.296902, 35.849346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110001, 32.517666, 35.588379>,  <38.234650, 32.650124, 35.431797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110001, 32.517666, 35.588379>,  <37.902252, 32.296902, 35.849346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110001, 32.517666, 35.588379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504427, 0.418268, 0.755384,
		0.689789, -0.721423, -0.061161,
		0.519370, 0.551906, -0.652422,
		38.265812, 32.683239, 35.392651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656776, 32.120594, 35.937504>,  <37.902252, 32.296902, 35.849346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656776, 32.120594, 35.937504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.603928, 32.485580, 35.782608>,  <38.572220, 32.704571, 35.689671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.603928, 32.485580, 35.782608>,  <38.656776, 32.120594, 35.937504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603928, 32.485580, 35.782608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384452, 0.407258, 0.828455,
		0.913641, -0.039420, -0.404605,
		-0.132121, 0.912462, -0.387243,
		38.564293, 32.759319, 35.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225979, 32.533779, 36.148552>,  <38.656776, 32.120594, 35.937504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225979, 32.533779, 36.148552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922592, 32.781265, 36.066658>,  <38.740559, 32.929756, 36.017521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922592, 32.781265, 36.066658>,  <39.225979, 32.533779, 36.148552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922592, 32.781265, 36.066658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077896, 0.397964, 0.914088,
		0.647041, 0.677356, -0.350037,
		-0.758465, 0.618719, -0.204736,
		38.695053, 32.966881, 36.005238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367035, 33.282284, 36.267193>,  <39.225979, 32.533779, 36.148552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367035, 33.282284, 36.267193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.969830, 33.243378, 36.293915>,  <38.731506, 33.220036, 36.309948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.969830, 33.243378, 36.293915>,  <39.367035, 33.282284, 36.267193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969830, 33.243378, 36.293915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004765, 0.598772, 0.800905,
		-0.117902, 0.794991, -0.595052,
		-0.993014, -0.097264, 0.066808,
		38.671925, 33.214199, 36.313957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547474, 33.896088, 36.010277>,  <39.367035, 33.282284, 36.267193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547474, 33.896088, 36.010277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687458, 34.265518, 36.072941>,  <39.771450, 34.487175, 36.110538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687458, 34.265518, 36.072941>,  <39.547474, 33.896088, 36.010277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687458, 34.265518, 36.072941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253400, 0.254335, -0.933328,
		-0.901841, 0.286930, 0.323040,
		0.349960, 0.923572, 0.156662,
		39.792446, 34.542591, 36.119938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982769, 34.323963, 35.754211>,  <39.547474, 33.896088, 36.010277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982769, 34.323963, 35.754211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297596, 34.570343, 35.767715>,  <39.486492, 34.718170, 35.775818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297596, 34.570343, 35.767715>,  <38.982769, 34.323963, 35.754211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297596, 34.570343, 35.767715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207908, 0.316401, -0.925562,
		-0.580778, 0.721458, 0.377088,
		0.787065, 0.615946, 0.033762,
		39.533714, 34.755127, 35.777843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795017, 34.839790, 35.470726>,  <38.982769, 34.323963, 35.754211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795017, 34.839790, 35.470726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193630, 34.867126, 35.451706>,  <39.432796, 34.883530, 35.440292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193630, 34.867126, 35.451706>,  <38.795017, 34.839790, 35.470726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193630, 34.867126, 35.451706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060168, 0.196434, -0.978669,
		-0.057543, 0.978133, 0.199864,
		0.996528, 0.068341, -0.047549,
		39.492588, 34.887630, 35.437443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916386, 35.516602, 35.235214>,  <38.795017, 34.839790, 35.470726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916386, 35.516602, 35.235214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243343, 35.303684, 35.147095>,  <39.439518, 35.175934, 35.094223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243343, 35.303684, 35.147095>,  <38.916386, 35.516602, 35.235214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243343, 35.303684, 35.147095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123891, 0.211037, -0.969595,
		0.562595, 0.819837, 0.106555,
		0.817397, -0.532289, -0.220299,
		39.488564, 35.143997, 35.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326027, 35.954395, 34.822800>,  <38.916386, 35.516602, 35.235214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326027, 35.954395, 34.822800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444950, 35.577496, 34.761120>,  <39.516304, 35.351357, 34.724113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444950, 35.577496, 34.761120>,  <39.326027, 35.954395, 34.822800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444950, 35.577496, 34.761120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128469, 0.120556, -0.984359,
		0.946099, 0.312468, -0.085207,
		0.297309, -0.942247, -0.154201,
		39.534142, 35.294823, 34.714859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641735, 36.131546, 34.236176>,  <39.326027, 35.954395, 34.822800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641735, 36.131546, 34.236176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601349, 35.733593, 34.237553>,  <39.577118, 35.494820, 34.238380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601349, 35.733593, 34.237553>,  <39.641735, 36.131546, 34.236176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601349, 35.733593, 34.237553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078937, 0.004559, -0.996869,
		0.991754, -0.100917, -0.078994,
		-0.100961, -0.994885, 0.003445,
		39.571060, 35.435127, 34.238586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022232, 35.875374, 33.707466>,  <39.641735, 36.131546, 34.236176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022232, 35.875374, 33.707466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759007, 35.583210, 33.780636>,  <39.601070, 35.407913, 33.824539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759007, 35.583210, 33.780636>,  <40.022232, 35.875374, 33.707466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759007, 35.583210, 33.780636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268586, 0.000743, -0.963255,
		0.703432, -0.683013, -0.196666,
		-0.658062, -0.730406, 0.182925,
		39.561588, 35.364090, 33.835514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162769, 35.438564, 33.211224>,  <40.022232, 35.875374, 33.707466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162769, 35.438564, 33.211224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808228, 35.297848, 33.331638>,  <39.595505, 35.213417, 33.403889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808228, 35.297848, 33.331638>,  <40.162769, 35.438564, 33.211224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808228, 35.297848, 33.331638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276792, -0.118616, -0.953581,
		0.371169, -0.928533, 0.007763,
		-0.886352, -0.351791, 0.301037,
		39.542320, 35.192310, 33.421951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075462, 34.843918, 32.963764>,  <40.162769, 35.438564, 33.211224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075462, 34.843918, 32.963764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698460, 34.961441, 33.027451>,  <39.472256, 35.031956, 33.065662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698460, 34.961441, 33.027451>,  <40.075462, 34.843918, 32.963764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698460, 34.961441, 33.027451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259840, -0.344738, -0.902019,
		-0.210132, -0.891534, 0.401262,
		-0.942512, 0.293807, 0.159216,
		39.415707, 35.049583, 33.075214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659031, 34.389015, 32.483490>,  <40.075462, 34.843918, 32.963764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659031, 34.389015, 32.483490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417191, 34.697823, 32.561920>,  <39.272087, 34.883106, 32.608978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417191, 34.697823, 32.561920>,  <39.659031, 34.389015, 32.483490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417191, 34.697823, 32.561920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362236, -0.047257, -0.930888,
		-0.709397, -0.633841, 0.308225,
		-0.604600, 0.772019, 0.196076,
		39.235809, 34.929428, 32.620743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999287, 34.184967, 32.248383>,  <39.659031, 34.389015, 32.483490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999287, 34.184967, 32.248383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994724, 34.584930, 32.251446>,  <38.991985, 34.824909, 32.253284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994724, 34.584930, 32.251446>,  <38.999287, 34.184967, 32.248383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994724, 34.584930, 32.251446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383154, 0.002707, -0.923681,
		-0.923614, -0.013472, 0.383087,
		-0.011406, 0.999906, 0.007662,
		38.991302, 34.884903, 32.253746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337955, 34.346336, 32.067062>,  <38.999287, 34.184967, 32.248383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337955, 34.346336, 32.067062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554691, 34.677471, 32.008968>,  <38.684734, 34.876152, 31.974112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554691, 34.677471, 32.008968>,  <38.337955, 34.346336, 32.067062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554691, 34.677471, 32.008968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285726, 0.018921, -0.958125,
		-0.790424, 0.560649, 0.246786,
		0.541841, 0.827838, -0.145236,
		38.717243, 34.925823, 31.965397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971157, 34.772282, 31.566473>,  <38.337955, 34.346336, 32.067062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971157, 34.772282, 31.566473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.341778, 34.921177, 31.544773>,  <38.564148, 35.010513, 31.531754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.341778, 34.921177, 31.544773>,  <37.971157, 34.772282, 31.566473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341778, 34.921177, 31.544773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066217, 0.019435, -0.997616,
		-0.370301, 0.927932, 0.042656,
		0.926549, 0.372242, -0.054248,
		38.619743, 35.032848, 31.528500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863728, 35.300415, 31.080763>,  <37.971157, 34.772282, 31.566473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863728, 35.300415, 31.080763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254879, 35.218067, 31.095545>,  <38.489571, 35.168659, 31.104414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254879, 35.218067, 31.095545>,  <37.863728, 35.300415, 31.080763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254879, 35.218067, 31.095545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031602, -0.029233, -0.999073,
		0.206755, 0.978144, -0.022081,
		0.977882, -0.205865, 0.036955,
		38.548244, 35.156307, 31.106632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981182, 36.051891, 31.042538>,  <37.863728, 35.300415, 31.080763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981182, 36.051891, 31.042538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923092, 36.417850, 30.891874>,  <37.888237, 36.637424, 30.801476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923092, 36.417850, 30.891874>,  <37.981182, 36.051891, 31.042538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923092, 36.417850, 30.891874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325678, 0.315277, 0.891366,
		0.934261, 0.252119, 0.252176,
		-0.145225, 0.914897, -0.376661,
		37.879524, 36.692318, 30.778875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160446, 36.411507, 31.575727>,  <37.981182, 36.051891, 31.042538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160446, 36.411507, 31.575727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.971344, 36.676208, 31.342976>,  <37.857883, 36.835030, 31.203323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.971344, 36.676208, 31.342976>,  <38.160446, 36.411507, 31.575727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971344, 36.676208, 31.342976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351750, 0.463725, 0.813161,
		0.807943, 0.589105, 0.013540,
		-0.472758, 0.661750, -0.581881,
		37.829517, 36.874733, 31.168411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159595, 37.126801, 31.918102>,  <38.160446, 36.411507, 31.575727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159595, 37.126801, 31.918102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856750, 37.153717, 31.658178>,  <37.675045, 37.169868, 31.502224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856750, 37.153717, 31.658178>,  <38.159595, 37.126801, 31.918102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856750, 37.153717, 31.658178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580753, 0.386197, 0.716644,
		0.299182, 0.919959, -0.253312,
		-0.757111, 0.067296, -0.649811,
		37.629616, 37.173904, 31.463236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917675, 37.737900, 32.003761>,  <38.159595, 37.126801, 31.918102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917675, 37.737900, 32.003761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609528, 37.540405, 31.842390>,  <37.424641, 37.421909, 31.745565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609528, 37.540405, 31.842390>,  <37.917675, 37.737900, 32.003761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609528, 37.540405, 31.842390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600295, 0.348382, 0.719914,
		-0.214902, 0.796776, -0.564770,
		-0.770366, -0.493739, -0.403432,
		37.378418, 37.392284, 31.721361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318672, 38.179123, 32.002728>,  <37.917675, 37.737900, 32.003761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318672, 38.179123, 32.002728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.151508, 37.818897, 31.954828>,  <37.051212, 37.602760, 31.926088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.151508, 37.818897, 31.954828>,  <37.318672, 38.179123, 32.002728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151508, 37.818897, 31.954828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709307, 0.241072, 0.662396,
		-0.567661, 0.361759, -0.739521,
		-0.417905, -0.900564, -0.119751,
		37.026138, 37.548729, 31.918903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607536, 38.267967, 31.808393>,  <37.318672, 38.179123, 32.002728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607536, 38.267967, 31.808393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.625832, 37.905563, 31.976707>,  <36.636806, 37.688122, 32.077694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.625832, 37.905563, 31.976707>,  <36.607536, 38.267967, 31.808393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625832, 37.905563, 31.976707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705764, 0.268800, 0.655472,
		-0.706969, -0.326952, -0.627134,
		0.045734, -0.906007, 0.420784,
		36.639553, 37.633762, 32.102943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890789, 38.141651, 31.995840>,  <36.607536, 38.267967, 31.808393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890789, 38.141651, 31.995840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065739, 37.857986, 32.217033>,  <36.170708, 37.687786, 32.349751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065739, 37.857986, 32.217033>,  <35.890789, 38.141651, 31.995840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065739, 37.857986, 32.217033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631279, 0.195820, 0.750427,
		-0.640461, -0.677305, -0.362034,
		0.437375, -0.709164, 0.552983,
		36.196953, 37.645237, 32.382927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342358, 37.715645, 32.303493>,  <35.890789, 38.141651, 31.995840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342358, 37.715645, 32.303493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.677864, 37.751781, 32.518269>,  <35.879169, 37.773464, 32.647133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.677864, 37.751781, 32.518269>,  <35.342358, 37.715645, 32.303493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677864, 37.751781, 32.518269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517190, 0.440504, 0.733805,
		-0.170231, -0.893193, 0.416205,
		0.838770, 0.090341, 0.536939,
		35.929497, 37.778885, 32.679352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156651, 37.502045, 33.009926>,  <35.342358, 37.715645, 32.303493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156651, 37.502045, 33.009926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.504333, 37.685448, 33.083954>,  <35.712944, 37.795490, 33.128368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.504333, 37.685448, 33.083954>,  <35.156651, 37.502045, 33.009926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504333, 37.685448, 33.083954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434553, 0.529830, 0.728316,
		0.235883, -0.713480, 0.659777,
		0.869208, 0.458505, 0.185067,
		35.765095, 37.822998, 33.139473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315815, 37.281506, 33.600853>,  <35.156651, 37.502045, 33.009926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315815, 37.281506, 33.600853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.533104, 37.617252, 33.593147>,  <35.663475, 37.818703, 33.588524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.533104, 37.617252, 33.593147>,  <35.315815, 37.281506, 33.600853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533104, 37.617252, 33.593147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287524, 0.207539, 0.935017,
		0.788824, -0.502379, 0.354079,
		0.543219, 0.839370, -0.019266,
		35.696068, 37.869064, 33.587368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594986, 37.460930, 34.339729>,  <35.315815, 37.281506, 33.600853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594986, 37.460930, 34.339729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.587914, 37.797562, 34.123791>,  <35.583672, 37.999542, 33.994228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.587914, 37.797562, 34.123791>,  <35.594986, 37.460930, 34.339729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587914, 37.797562, 34.123791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461657, 0.472057, 0.751023,
		0.886882, 0.262499, 0.380176,
		-0.017678, 0.841580, -0.539844,
		35.582611, 38.050037, 33.961838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948139, 38.017239, 34.613171>,  <35.594986, 37.460930, 34.339729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948139, 38.017239, 34.613171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648380, 38.167454, 34.395046>,  <35.468525, 38.257584, 34.264172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648380, 38.167454, 34.395046>,  <35.948139, 38.017239, 34.613171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648380, 38.167454, 34.395046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358530, 0.462244, 0.811041,
		0.556645, 0.803307, -0.211765,
		-0.749402, 0.375538, -0.545315,
		35.423561, 38.280113, 34.231453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.848942, 35.712399, 27.314777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478142, 35.862164, 27.305929>,  <38.255661, 35.952023, 27.300619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478142, 35.862164, 27.305929>,  <38.848942, 35.712399, 27.314777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478142, 35.862164, 27.305929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215150, 0.579149, 0.786318,
		0.307217, 0.724157, -0.617425,
		-0.927000, 0.374409, -0.022122,
		38.200043, 35.974487, 27.299292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876007, 36.422970, 27.419132>,  <38.848942, 35.712399, 27.314777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876007, 36.422970, 27.419132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495174, 36.345764, 27.514030>,  <38.266674, 36.299438, 27.570969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495174, 36.345764, 27.514030>,  <38.876007, 36.422970, 27.419132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495174, 36.345764, 27.514030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117037, 0.486735, 0.865674,
		-0.282565, 0.851959, -0.440821,
		-0.952082, -0.193016, 0.237245,
		38.209549, 36.287861, 27.585203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688606, 36.976585, 27.725010>,  <38.876007, 36.422970, 27.419132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688606, 36.976585, 27.725010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398384, 36.730904, 27.849154>,  <38.224251, 36.583496, 27.923639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398384, 36.730904, 27.849154>,  <38.688606, 36.976585, 27.725010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398384, 36.730904, 27.849154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007677, 0.458191, 0.888820,
		-0.688123, 0.642504, -0.337157,
		-0.725554, -0.614206, 0.310360,
		38.180717, 36.546642, 27.942261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169067, 37.348858, 27.930408>,  <38.688606, 36.976585, 27.725010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169067, 37.348858, 27.930408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082924, 36.999233, 28.104595>,  <38.031239, 36.789459, 28.209108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082924, 36.999233, 28.104595>,  <38.169067, 37.348858, 27.930408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082924, 36.999233, 28.104595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100473, 0.463398, 0.880436,
		-0.971353, 0.145857, -0.187617,
		-0.215359, -0.874064, 0.435468,
		38.018314, 36.737015, 28.235235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712101, 37.498306, 28.368286>,  <38.169067, 37.348858, 27.930408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712101, 37.498306, 28.368286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872826, 37.158031, 28.503866>,  <37.969261, 36.953869, 28.585215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872826, 37.158031, 28.503866>,  <37.712101, 37.498306, 28.368286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872826, 37.158031, 28.503866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136660, 0.421708, 0.896374,
		-0.905469, -0.313850, 0.285700,
		0.401809, -0.850682, 0.338952,
		37.993370, 36.902828, 28.605553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368202, 37.435627, 29.005701>,  <37.712101, 37.498306, 28.368286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368202, 37.435627, 29.005701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645985, 37.151012, 29.048502>,  <37.812653, 36.980244, 29.074183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645985, 37.151012, 29.048502>,  <37.368202, 37.435627, 29.005701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645985, 37.151012, 29.048502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017196, 0.165083, 0.986130,
		-0.719329, -0.682984, 0.126879,
		0.694457, -0.711534, 0.107004,
		37.854321, 36.937553, 29.080603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123913, 36.919182, 29.425726>,  <37.368202, 37.435627, 29.005701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123913, 36.919182, 29.425726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519955, 36.871494, 29.455349>,  <37.757580, 36.842880, 29.473122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519955, 36.871494, 29.455349>,  <37.123913, 36.919182, 29.425726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519955, 36.871494, 29.455349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067700, 0.056508, 0.996104,
		-0.122938, -0.991259, 0.047877,
		0.990102, -0.119218, 0.074055,
		37.816986, 36.835728, 29.477566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162956, 36.352303, 29.857977>,  <37.123913, 36.919182, 29.425726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162956, 36.352303, 29.857977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495922, 36.573624, 29.870287>,  <37.695702, 36.706417, 29.877674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495922, 36.573624, 29.870287>,  <37.162956, 36.352303, 29.857977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495922, 36.573624, 29.870287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041696, -0.117915, 0.992148,
		0.552588, -0.824591, -0.121225,
		0.832411, 0.553304, 0.030776,
		37.745644, 36.739616, 29.879520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559460, 35.975468, 30.452940>,  <37.162956, 36.352303, 29.857977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559460, 35.975468, 30.452940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742680, 36.325340, 30.389526>,  <37.852612, 36.535263, 30.351479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742680, 36.325340, 30.389526>,  <37.559460, 35.975468, 30.452940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742680, 36.325340, 30.389526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050757, 0.152316, 0.987028,
		0.887479, -0.460150, 0.025372,
		0.458045, 0.874678, -0.158533,
		37.880093, 36.587742, 30.341967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172493, 35.698997, 30.448605>,  <37.559460, 35.975468, 30.452940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172493, 35.698997, 30.448605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433407, 35.422722, 30.573481>,  <38.589954, 35.256954, 30.648407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433407, 35.422722, 30.573481>,  <38.172493, 35.698997, 30.448605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433407, 35.422722, 30.573481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184427, -0.254874, -0.949224,
		0.735191, 0.676744, -0.038869,
		0.652289, -0.690693, 0.312191,
		38.629093, 35.215515, 30.667137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647789, 35.728363, 29.937252>,  <38.172493, 35.698997, 30.448605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647789, 35.728363, 29.937252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750057, 35.386490, 30.117985>,  <38.811417, 35.181366, 30.226423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750057, 35.386490, 30.117985>,  <38.647789, 35.728363, 29.937252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750057, 35.386490, 30.117985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070173, -0.449725, -0.890406,
		0.964213, 0.259358, -0.055006,
		0.255672, -0.854682, 0.451831,
		38.826759, 35.130085, 30.253534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261021, 35.649055, 29.557482>,  <38.647789, 35.728363, 29.937252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261021, 35.649055, 29.557482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123779, 35.303120, 29.704084>,  <39.041435, 35.095558, 29.792046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123779, 35.303120, 29.704084>,  <39.261021, 35.649055, 29.557482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123779, 35.303120, 29.704084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014853, -0.385147, -0.922736,
		0.939180, -0.322037, 0.119300,
		-0.343103, -0.864844, 0.366506,
		39.020847, 35.043667, 29.814035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706650, 35.139580, 29.264029>,  <39.261021, 35.649055, 29.557482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706650, 35.139580, 29.264029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379612, 34.931221, 29.362177>,  <39.183392, 34.806206, 29.421066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379612, 34.931221, 29.362177>,  <39.706650, 35.139580, 29.264029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379612, 34.931221, 29.362177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047913, -0.486209, -0.872528,
		0.573802, -0.701615, 0.422478,
		-0.817592, -0.520900, 0.245371,
		39.134335, 34.774952, 29.435789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905502, 34.445671, 29.010141>,  <39.706650, 35.139580, 29.264029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905502, 34.445671, 29.010141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510448, 34.425114, 29.069389>,  <39.273415, 34.412777, 29.104939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510448, 34.425114, 29.069389>,  <39.905502, 34.445671, 29.010141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510448, 34.425114, 29.069389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106068, -0.476681, -0.872654,
		0.115458, -0.877572, 0.465334,
		-0.987633, -0.051398, 0.148119,
		39.214157, 34.409695, 29.113825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719997, 33.702656, 28.889490>,  <39.905502, 34.445671, 29.010141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719997, 33.702656, 28.889490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404129, 33.942402, 28.837059>,  <39.214607, 34.086250, 28.805599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404129, 33.942402, 28.837059>,  <39.719997, 33.702656, 28.889490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404129, 33.942402, 28.837059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311271, -0.575489, -0.756255,
		-0.528709, -0.556390, 0.641012,
		-0.789669, 0.599368, -0.131078,
		39.167229, 34.122211, 28.797735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155800, 33.222134, 28.837540>,  <39.719997, 33.702656, 28.889490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155800, 33.222134, 28.837540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049473, 33.574726, 28.681421>,  <38.985676, 33.786282, 28.587749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049473, 33.574726, 28.681421>,  <39.155800, 33.222134, 28.837540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049473, 33.574726, 28.681421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457665, -0.471717, -0.753675,
		-0.848461, -0.021714, 0.528813,
		-0.265815, 0.881483, -0.390296,
		38.969727, 33.839172, 28.564333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425003, 33.142204, 28.663721>,  <39.155800, 33.222134, 28.837540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425003, 33.142204, 28.663721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601501, 33.421436, 28.438160>,  <38.707401, 33.588974, 28.302822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601501, 33.421436, 28.438160>,  <38.425003, 33.142204, 28.663721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601501, 33.421436, 28.438160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457830, -0.365333, -0.810508,
		-0.771809, 0.615809, 0.158397,
		0.441250, 0.698077, -0.563904,
		38.733875, 33.630859, 28.268990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962704, 33.179787, 28.144711>,  <38.425003, 33.142204, 28.663721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962704, 33.179787, 28.144711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252846, 33.412121, 27.996931>,  <38.426929, 33.551521, 27.908264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252846, 33.412121, 27.996931>,  <37.962704, 33.179787, 28.144711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252846, 33.412121, 27.996931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274066, -0.248650, -0.929011,
		-0.631468, 0.775113, -0.021172,
		0.725353, 0.580838, -0.369447,
		38.470451, 33.586372, 27.886097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612419, 33.646412, 27.655699>,  <37.962704, 33.179787, 28.144711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612419, 33.646412, 27.655699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005344, 33.618301, 27.586273>,  <38.241100, 33.601437, 27.544619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005344, 33.618301, 27.586273>,  <37.612419, 33.646412, 27.655699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005344, 33.618301, 27.586273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187116, -0.333472, -0.924004,
		0.007054, 0.940137, -0.340723,
		0.982313, -0.070272, -0.173562,
		38.300037, 33.597221, 27.534204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650349, 33.802902, 27.048460>,  <37.612419, 33.646412, 27.655699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650349, 33.802902, 27.048460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997746, 33.613884, 27.108356>,  <38.206184, 33.500473, 27.144295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997746, 33.613884, 27.108356>,  <37.650349, 33.802902, 27.048460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997746, 33.613884, 27.108356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073060, -0.420804, -0.904205,
		0.490293, 0.774352, -0.399989,
		0.868490, -0.472549, 0.149743,
		38.258293, 33.472118, 27.153280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201172, 33.974384, 26.553747>,  <37.650349, 33.802902, 27.048460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201172, 33.974384, 26.553747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292816, 33.610249, 26.691614>,  <38.347801, 33.391769, 26.774334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292816, 33.610249, 26.691614>,  <38.201172, 33.974384, 26.553747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292816, 33.610249, 26.691614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173537, -0.310214, -0.934693,
		0.957807, 0.273958, 0.086905,
		0.229108, -0.910337, 0.344668,
		38.361549, 33.337147, 26.795015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862991, 33.712158, 26.158953>,  <38.201172, 33.974384, 26.553747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862991, 33.712158, 26.158953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710960, 33.369308, 26.298021>,  <38.619743, 33.163597, 26.381462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710960, 33.369308, 26.298021>,  <38.862991, 33.712158, 26.158953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710960, 33.369308, 26.298021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123806, -0.419639, -0.899208,
		0.916632, -0.298724, 0.265612,
		-0.380076, -0.857127, 0.347671,
		38.596939, 33.112171, 26.402323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337925, 33.145794, 26.001165>,  <38.862991, 33.712158, 26.158953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337925, 33.145794, 26.001165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979008, 32.977821, 26.055613>,  <38.763657, 32.877037, 26.088282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979008, 32.977821, 26.055613>,  <39.337925, 33.145794, 26.001165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979008, 32.977821, 26.055613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164271, -0.603835, -0.779998,
		0.409740, -0.677524, 0.610798,
		-0.897289, -0.419934, 0.136118,
		38.709820, 32.851841, 26.096447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.461803, 35.218056, 25.590624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793453, 35.440681, 25.569479>,  <32.992443, 35.574257, 25.556791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793453, 35.440681, 25.569479>,  <32.461803, 35.218056, 25.590624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793453, 35.440681, 25.569479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180463, -0.176944, 0.967535,
		0.529140, -0.811745, -0.247146,
		0.829123, 0.556562, -0.052862,
		33.042191, 35.607651, 25.553621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081303, 34.838493, 25.902142>,  <32.461803, 35.218056, 25.590624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081303, 34.838493, 25.902142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196495, 35.219791, 25.938795>,  <33.265610, 35.448570, 25.960787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196495, 35.219791, 25.938795>,  <33.081303, 34.838493, 25.902142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196495, 35.219791, 25.938795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332703, -0.189318, 0.923833,
		0.897985, -0.235559, -0.371666,
		0.287981, 0.953242, 0.091634,
		33.282890, 35.505764, 25.966286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742680, 34.811470, 26.280579>,  <33.081303, 34.838493, 25.902142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742680, 34.811470, 26.280579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612926, 35.187729, 26.320505>,  <33.535072, 35.413483, 26.344461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612926, 35.187729, 26.320505>,  <33.742680, 34.811470, 26.280579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612926, 35.187729, 26.320505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334907, 0.015519, 0.942123,
		0.884653, 0.339040, -0.320063,
		-0.324385, 0.940644, 0.099818,
		33.515610, 35.469921, 26.350451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244644, 35.199856, 26.631878>,  <33.742680, 34.811470, 26.280579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244644, 35.199856, 26.631878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897743, 35.388309, 26.696266>,  <33.689602, 35.501381, 26.734900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897743, 35.388309, 26.696266>,  <34.244644, 35.199856, 26.631878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897743, 35.388309, 26.696266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269007, 0.171359, 0.947772,
		0.418940, 0.865259, -0.275349,
		-0.867251, 0.471130, 0.160972,
		33.637569, 35.529648, 26.744558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463314, 35.801193, 27.003044>,  <34.244644, 35.199856, 26.631878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463314, 35.801193, 27.003044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.075764, 35.745239, 27.084745>,  <33.843235, 35.711670, 27.133766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.075764, 35.745239, 27.084745>,  <34.463314, 35.801193, 27.003044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075764, 35.745239, 27.084745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184513, 0.142032, 0.972513,
		-0.165045, 0.979929, -0.111801,
		-0.968873, -0.139880, 0.204251,
		33.785103, 35.703274, 27.146021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422104, 36.189709, 27.565697>,  <34.463314, 35.801193, 27.003044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422104, 36.189709, 27.565697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062748, 36.014412, 27.577280>,  <33.847134, 35.909233, 27.584230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062748, 36.014412, 27.577280>,  <34.422104, 36.189709, 27.565697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062748, 36.014412, 27.577280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025994, 0.118874, 0.992569,
		-0.438426, 0.890963, -0.118187,
		-0.898391, -0.438240, 0.028958,
		33.793232, 35.882938, 27.585968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900917, 36.632267, 27.800133>,  <34.422104, 36.189709, 27.565697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900917, 36.632267, 27.800133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769226, 36.261566, 27.872511>,  <33.690212, 36.039146, 27.915937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769226, 36.261566, 27.872511>,  <33.900917, 36.632267, 27.800133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769226, 36.261566, 27.872511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174430, 0.248021, 0.952922,
		-0.928001, 0.282161, -0.243308,
		-0.329223, -0.926753, 0.180946,
		33.670460, 35.983540, 27.926794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486946, 36.729462, 28.356247>,  <33.900917, 36.632267, 27.800133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486946, 36.729462, 28.356247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.523483, 36.333275, 28.397511>,  <33.545406, 36.095562, 28.422268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.523483, 36.333275, 28.397511>,  <33.486946, 36.729462, 28.356247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523483, 36.333275, 28.397511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007463, 0.102906, 0.994663,
		-0.995792, -0.091623, 0.002007,
		0.091341, -0.990462, 0.103157,
		33.550884, 36.036137, 28.428457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101078, 36.625610, 28.882919>,  <33.486946, 36.729462, 28.356247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101078, 36.625610, 28.882919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337952, 36.303574, 28.869370>,  <33.480076, 36.110352, 28.861240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337952, 36.303574, 28.869370>,  <33.101078, 36.625610, 28.882919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337952, 36.303574, 28.869370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116795, 0.044162, 0.992174,
		-0.797295, -0.591504, 0.120182,
		0.592182, -0.805092, -0.033874,
		33.515606, 36.062046, 28.859207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938396, 36.327412, 29.488277>,  <33.101078, 36.625610, 28.882919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938396, 36.327412, 29.488277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.284534, 36.145348, 29.404371>,  <33.492218, 36.036110, 29.354029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.284534, 36.145348, 29.404371>,  <32.938396, 36.327412, 29.488277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284534, 36.145348, 29.404371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227151, -0.016884, 0.973713,
		-0.446737, -0.890250, 0.088780,
		0.865349, -0.455160, -0.209763,
		33.544140, 36.008801, 29.341442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958160, 35.846554, 29.952139>,  <32.938396, 36.327412, 29.488277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958160, 35.846554, 29.952139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.329170, 35.911728, 29.817589>,  <33.551777, 35.950832, 29.736858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.329170, 35.911728, 29.817589>,  <32.958160, 35.846554, 29.952139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329170, 35.911728, 29.817589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329745, 0.066982, 0.941691,
		0.175969, -0.984360, 0.008400,
		0.927525, 0.162939, -0.336374,
		33.607430, 35.960609, 29.716677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300472, 35.336666, 30.237274>,  <32.958160, 35.846554, 29.952139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300472, 35.336666, 30.237274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.541641, 35.645794, 30.158041>,  <33.686344, 35.831272, 30.110502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.541641, 35.645794, 30.158041>,  <33.300472, 35.336666, 30.237274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541641, 35.645794, 30.158041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253092, 0.050178, 0.966140,
		0.756591, -0.632639, -0.165341,
		0.602921, 0.772820, -0.198081,
		33.722519, 35.877640, 30.098618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038795, 35.198227, 30.432533>,  <33.300472, 35.336666, 30.237274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038795, 35.198227, 30.432533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031105, 35.597652, 30.412508>,  <34.026489, 35.837307, 30.400494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031105, 35.597652, 30.412508>,  <34.038795, 35.198227, 30.432533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031105, 35.597652, 30.412508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273206, 0.053412, 0.960472,
		0.961764, 0.004791, -0.273840,
		-0.019228, 0.998561, -0.050061,
		34.025337, 35.897221, 30.397490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683506, 35.456898, 30.607838>,  <34.038795, 35.198227, 30.432533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683506, 35.456898, 30.607838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409874, 35.742409, 30.667910>,  <34.245693, 35.913715, 30.703953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409874, 35.742409, 30.667910>,  <34.683506, 35.456898, 30.607838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409874, 35.742409, 30.667910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169461, -0.044731, 0.984521,
		0.709447, 0.698942, -0.090358,
		-0.684082, 0.713778, 0.150178,
		34.204651, 35.956543, 30.712963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167610, 34.789822, 30.864304>,  <34.683506, 35.456898, 30.607838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167610, 34.789822, 30.864304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137112, 34.464062, 31.094414>,  <35.118813, 34.268604, 31.232479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137112, 34.464062, 31.094414>,  <35.167610, 34.789822, 30.864304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137112, 34.464062, 31.094414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033394, -0.574545, -0.817791,
		0.996529, -0.081567, 0.016613,
		-0.076250, -0.814398, 0.575275,
		35.114235, 34.219742, 31.266996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711536, 34.298882, 30.575609>,  <35.167610, 34.789822, 30.864304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711536, 34.298882, 30.575609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.433071, 34.088932, 30.771509>,  <35.265991, 33.962963, 30.889050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.433071, 34.088932, 30.771509>,  <35.711536, 34.298882, 30.575609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433071, 34.088932, 30.771509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095596, -0.608362, -0.787881,
		0.711486, -0.595316, 0.373345,
		-0.696167, -0.524876, 0.489751,
		35.224220, 33.931469, 30.918434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752396, 33.630501, 30.326813>,  <35.711536, 34.298882, 30.575609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752396, 33.630501, 30.326813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391426, 33.603073, 30.496952>,  <35.174843, 33.586617, 30.599035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391426, 33.603073, 30.496952>,  <35.752396, 33.630501, 30.326813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391426, 33.603073, 30.496952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302066, -0.603270, -0.738120,
		0.307212, -0.794584, 0.523695,
		-0.902429, -0.068569, 0.425349,
		35.120697, 33.582504, 30.624557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606712, 33.043606, 30.269783>,  <35.752396, 33.630501, 30.326813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606712, 33.043606, 30.269783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249252, 33.222851, 30.279438>,  <35.034775, 33.330399, 30.285231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249252, 33.222851, 30.279438>,  <35.606712, 33.043606, 30.269783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249252, 33.222851, 30.279438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287851, -0.531131, -0.796895,
		-0.344277, -0.719095, 0.603635,
		-0.893653, 0.448110, 0.024136,
		34.981155, 33.357285, 30.286678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079865, 32.483482, 30.116249>,  <35.606712, 33.043606, 30.269783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079865, 32.483482, 30.116249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.923161, 32.844376, 30.044140>,  <34.829140, 33.060913, 30.000874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.923161, 32.844376, 30.044140>,  <35.079865, 32.483482, 30.116249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923161, 32.844376, 30.044140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472834, -0.365508, -0.801768,
		-0.789275, -0.228857, 0.569797,
		-0.391756, 0.902235, -0.180275,
		34.805634, 33.115047, 29.990057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496502, 32.278748, 29.746414>,  <35.079865, 32.483482, 30.116249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496502, 32.278748, 29.746414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498138, 32.673840, 29.683964>,  <34.499119, 32.910896, 29.646494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498138, 32.673840, 29.683964>,  <34.496502, 32.278748, 29.746414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498138, 32.673840, 29.683964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255272, -0.149922, -0.955175,
		-0.966861, 0.043761, 0.251527,
		0.004090, 0.987729, -0.156124,
		34.499367, 32.970158, 29.637127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918381, 32.322685, 29.325844>,  <34.496502, 32.278748, 29.746414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918381, 32.322685, 29.325844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094292, 32.679447, 29.283693>,  <34.199837, 32.893505, 29.258404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094292, 32.679447, 29.283693>,  <33.918381, 32.322685, 29.325844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094292, 32.679447, 29.283693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335999, 0.054581, -0.940280,
		-0.832888, 0.448917, 0.323682,
		0.439775, 0.891905, -0.105376,
		34.226223, 32.947018, 29.252081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459934, 32.863838, 29.057678>,  <33.918381, 32.322685, 29.325844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459934, 32.863838, 29.057678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.836769, 32.940567, 28.947645>,  <34.062870, 32.986607, 28.881626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.836769, 32.940567, 28.947645>,  <33.459934, 32.863838, 29.057678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836769, 32.940567, 28.947645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293458, 0.074506, -0.953064,
		-0.162327, 0.978597, 0.126484,
		0.942089, 0.191826, -0.275083,
		34.119396, 32.998116, 28.865120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398441, 33.279789, 28.529030>,  <33.459934, 32.863838, 29.057678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398441, 33.279789, 28.529030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.786423, 33.193726, 28.483610>,  <34.019211, 33.142086, 28.456358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.786423, 33.193726, 28.483610>,  <33.398441, 33.279789, 28.529030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786423, 33.193726, 28.483610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124904, -0.039879, -0.991367,
		0.208777, 0.975764, -0.065555,
		0.969954, -0.215163, -0.113551,
		34.077408, 33.129177, 28.449545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681694, 33.886227, 28.104231>,  <33.398441, 33.279789, 28.529030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681694, 33.886227, 28.104231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898933, 33.553097, 28.061424>,  <34.029278, 33.353218, 28.035740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898933, 33.553097, 28.061424>,  <33.681694, 33.886227, 28.104231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898933, 33.553097, 28.061424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034818, 0.149676, -0.988122,
		0.838949, 0.532918, 0.110286,
		0.543095, -0.832824, -0.107015,
		34.061863, 33.303249, 28.029320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134052, 34.065998, 27.532885>,  <33.681694, 33.886227, 28.104231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134052, 34.065998, 27.532885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130604, 33.668304, 27.575628>,  <34.128532, 33.429688, 27.601274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130604, 33.668304, 27.575628>,  <34.134052, 34.065998, 27.532885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130604, 33.668304, 27.575628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041609, -0.107128, -0.993374,
		0.999097, -0.004120, 0.042293,
		-0.008623, -0.994237, 0.106860,
		34.128017, 33.370033, 27.607687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481266, 33.920513, 26.972847>,  <34.134052, 34.065998, 27.532885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481266, 33.920513, 26.972847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.306244, 33.578800, 27.085091>,  <34.201229, 33.373772, 27.152437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.306244, 33.578800, 27.085091>,  <34.481266, 33.920513, 26.972847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306244, 33.578800, 27.085091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119079, -0.254268, -0.959775,
		0.891272, -0.453369, 0.009529,
		-0.437555, -0.854286, 0.280608,
		34.174976, 33.322514, 27.169273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894211, 33.506847, 26.794355>,  <34.481266, 33.920513, 26.972847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894211, 33.506847, 26.794355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545750, 33.311996, 26.819000>,  <34.336674, 33.195087, 26.833788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545750, 33.311996, 26.819000>,  <34.894211, 33.506847, 26.794355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545750, 33.311996, 26.819000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123336, -0.338559, -0.932827,
		0.475262, -0.805039, 0.355017,
		-0.871157, -0.487124, 0.061614,
		34.284401, 33.165859, 26.837484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906010, 32.866840, 26.587467>,  <34.894211, 33.506847, 26.794355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906010, 32.866840, 26.587467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519417, 32.957230, 26.538725>,  <34.287460, 33.011463, 26.509480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519417, 32.957230, 26.538725>,  <34.906010, 32.866840, 26.587467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519417, 32.957230, 26.538725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042358, -0.327775, -0.943806,
		-0.253209, -0.917334, 0.307218,
		-0.966484, 0.225967, -0.121853,
		34.229473, 33.025021, 26.502169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895653, 32.018562, 26.652315>,  <34.906010, 32.866840, 26.587467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895653, 32.018562, 26.652315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.054993, 31.651869, 26.664379>,  <35.150597, 31.431852, 26.671618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.054993, 31.651869, 26.664379>,  <34.895653, 32.018562, 26.652315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054993, 31.651869, 26.664379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204416, -0.056678, 0.977242,
		-0.894163, -0.395452, -0.209974,
		0.398353, -0.916736, 0.030158,
		35.174500, 31.376848, 26.673426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443310, 31.672829, 27.068663>,  <34.895653, 32.018562, 26.652315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443310, 31.672829, 27.068663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766888, 31.437860, 27.059286>,  <34.961033, 31.296879, 27.053659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766888, 31.437860, 27.059286>,  <34.443310, 31.672829, 27.068663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766888, 31.437860, 27.059286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021061, -0.068807, 0.997408,
		-0.587513, -0.806350, -0.068033,
		0.808941, -0.587423, -0.023443,
		35.009571, 31.261633, 27.052254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274261, 31.099260, 27.448458>,  <34.443310, 31.672829, 27.068663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274261, 31.099260, 27.448458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670097, 31.154682, 27.432909>,  <34.907600, 31.187935, 27.423580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670097, 31.154682, 27.432909>,  <34.274261, 31.099260, 27.448458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670097, 31.154682, 27.432909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051889, -0.091623, 0.994441,
		0.134225, -0.986107, -0.097859,
		0.989592, 0.138557, -0.038870,
		34.966976, 31.196249, 27.421247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462524, 30.648094, 27.882290>,  <34.274261, 31.099260, 27.448458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462524, 30.648094, 27.882290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793095, 30.869654, 27.841856>,  <34.991436, 31.002588, 27.817596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793095, 30.869654, 27.841856>,  <34.462524, 30.648094, 27.882290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793095, 30.869654, 27.841856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235036, -0.176234, 0.955876,
		0.511642, -0.813720, -0.275830,
		0.826426, 0.553897, -0.101085,
		35.041023, 31.035822, 27.811531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017334, 30.349354, 28.236252>,  <34.462524, 30.648094, 27.882290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017334, 30.349354, 28.236252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140099, 30.729143, 28.210014>,  <35.213757, 30.957016, 28.194271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140099, 30.729143, 28.210014>,  <35.017334, 30.349354, 28.236252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140099, 30.729143, 28.210014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322856, -0.039034, 0.945643,
		0.895303, -0.311409, -0.318523,
		0.306915, 0.949474, -0.065593,
		35.232174, 31.013985, 28.190336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628822, 30.249357, 28.587620>,  <35.017334, 30.349354, 28.236252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628822, 30.249357, 28.587620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.532440, 30.637491, 28.579708>,  <35.474609, 30.870371, 28.574961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.532440, 30.637491, 28.579708>,  <35.628822, 30.249357, 28.587620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532440, 30.637491, 28.579708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397013, 0.117143, 0.910307,
		0.885619, 0.211493, -0.413461,
		-0.240958, 0.970334, -0.019779,
		35.460152, 30.928591, 28.573774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230167, 30.601593, 28.650969>,  <35.628822, 30.249357, 28.587620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230167, 30.601593, 28.650969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947426, 30.862747, 28.759853>,  <35.777782, 31.019440, 28.825184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947426, 30.862747, 28.759853>,  <36.230167, 30.601593, 28.650969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947426, 30.862747, 28.759853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484214, 0.166076, 0.859044,
		0.515649, 0.739027, -0.433527,
		-0.706855, 0.652884, 0.272211,
		35.735371, 31.058613, 28.841516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651466, 30.969343, 29.127529>,  <36.230167, 30.601593, 28.650969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651466, 30.969343, 29.127529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268692, 31.035925, 29.222672>,  <36.039028, 31.075874, 29.279757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268692, 31.035925, 29.222672>,  <36.651466, 30.969343, 29.127529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268692, 31.035925, 29.222672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272276, 0.230267, 0.934261,
		0.100740, 0.958786, -0.265671,
		-0.956931, 0.166453, 0.237857,
		35.981613, 31.085861, 29.294029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506126, 31.703199, 29.392384>,  <36.651466, 30.969343, 29.127529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506126, 31.703199, 29.392384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253479, 31.428852, 29.536963>,  <36.101891, 31.264244, 29.623711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253479, 31.428852, 29.536963>,  <36.506126, 31.703199, 29.392384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253479, 31.428852, 29.536963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070455, 0.413507, 0.907771,
		-0.772072, 0.598830, -0.212855,
		-0.631618, -0.685868, 0.361448,
		36.063995, 31.223091, 29.645397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376904, 31.946726, 30.025120>,  <36.506126, 31.703199, 29.392384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376904, 31.946726, 30.025120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.138412, 31.627325, 30.058371>,  <35.995319, 31.435684, 30.078321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.138412, 31.627325, 30.058371>,  <36.376904, 31.946726, 30.025120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138412, 31.627325, 30.058371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166174, 0.224052, 0.960306,
		-0.785432, 0.558743, -0.266275,
		-0.596224, -0.798503, 0.083129,
		35.959545, 31.387774, 30.083309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749943, 32.188019, 30.351454>,  <36.376904, 31.946726, 30.025120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749943, 32.188019, 30.351454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.807228, 31.796362, 30.409109>,  <35.841599, 31.561369, 30.443703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.807228, 31.796362, 30.409109>,  <35.749943, 32.188019, 30.351454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807228, 31.796362, 30.409109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001734, 0.145889, 0.989299,
		-0.989690, -0.141435, 0.022592,
		0.143218, -0.979139, 0.144139,
		35.850193, 31.502621, 30.452351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497509, 32.114326, 30.927675>,  <35.749943, 32.188019, 30.351454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497509, 32.114326, 30.927675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727310, 31.788977, 30.891087>,  <35.865189, 31.593767, 30.869133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727310, 31.788977, 30.891087>,  <35.497509, 32.114326, 30.927675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727310, 31.788977, 30.891087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136738, -0.014808, 0.990496,
		-0.807001, -0.581549, 0.102713,
		0.574501, -0.813376, -0.091470,
		35.899662, 31.544964, 30.863646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360241, 31.620861, 31.429747>,  <35.497509, 32.114326, 30.927675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360241, 31.620861, 31.429747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739529, 31.521137, 31.351028>,  <35.967102, 31.461302, 31.303797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739529, 31.521137, 31.351028>,  <35.360241, 31.620861, 31.429747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739529, 31.521137, 31.351028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193684, -0.037208, 0.980358,
		-0.251738, -0.967708, 0.013007,
		0.948217, -0.249312, -0.196796,
		36.023994, 31.446344, 31.291990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625046, 31.059052, 31.978737>,  <35.360241, 31.620861, 31.429747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625046, 31.059052, 31.978737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959999, 31.195396, 31.807810>,  <36.160973, 31.277203, 31.705254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959999, 31.195396, 31.807810>,  <35.625046, 31.059052, 31.978737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959999, 31.195396, 31.807810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467809, -0.042534, 0.882806,
		0.282739, -0.939151, -0.195075,
		0.837385, 0.340862, -0.427317,
		36.211216, 31.297655, 31.679615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.446957, 32.442722, 25.777643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.048233, 32.466843, 25.756685>,  <38.808998, 32.481316, 25.744110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.048233, 32.466843, 25.756685>,  <39.446957, 32.442722, 25.777643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048233, 32.466843, 25.756685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005125, -0.702819, -0.711350,
		-0.079716, -0.708808, 0.700883,
		-0.996804, 0.060298, -0.052393,
		38.749191, 32.484932, 25.740967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282978, 31.820230, 25.620174>,  <39.446957, 32.442722, 25.777643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282978, 31.820230, 25.620174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956455, 32.031853, 25.527449>,  <38.760540, 32.158825, 25.471813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956455, 32.031853, 25.527449>,  <39.282978, 31.820230, 25.620174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956455, 32.031853, 25.527449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172113, -0.605885, -0.776711,
		-0.551376, -0.594139, 0.585647,
		-0.816309, 0.529058, -0.231812,
		38.711563, 32.190571, 25.457905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720516, 31.234770, 25.422747>,  <39.282978, 31.820230, 25.620174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720516, 31.234770, 25.422747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593353, 31.588633, 25.286324>,  <38.517056, 31.800949, 25.204470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593353, 31.588633, 25.286324>,  <38.720516, 31.234770, 25.422747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593353, 31.588633, 25.286324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218034, -0.418292, -0.881756,
		-0.922711, -0.205955, 0.325863,
		-0.317908, 0.884655, -0.341057,
		38.497982, 31.854029, 25.184006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151535, 31.066454, 25.053997>,  <38.720516, 31.234770, 25.422747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151535, 31.066454, 25.053997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255783, 31.419432, 24.897348>,  <38.318333, 31.631218, 24.803358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255783, 31.419432, 24.897348>,  <38.151535, 31.066454, 25.053997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255783, 31.419432, 24.897348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253476, -0.328867, -0.909723,
		-0.931572, 0.336359, 0.137969,
		0.260620, 0.882445, -0.391623,
		38.333969, 31.684166, 24.779861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620190, 31.252518, 24.675615>,  <38.151535, 31.066454, 25.053997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620190, 31.252518, 24.675615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906151, 31.479300, 24.511919>,  <38.077728, 31.615368, 24.413702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906151, 31.479300, 24.511919>,  <37.620190, 31.252518, 24.675615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906151, 31.479300, 24.511919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290981, -0.290961, -0.911412,
		-0.635800, 0.770653, -0.043036,
		0.714904, 0.566953, -0.409239,
		38.120621, 31.649385, 24.389147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304077, 31.691021, 24.147083>,  <37.620190, 31.252518, 24.675615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304077, 31.691021, 24.147083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688404, 31.672306, 24.037796>,  <37.918999, 31.661077, 23.972223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688404, 31.672306, 24.037796>,  <37.304077, 31.691021, 24.147083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688404, 31.672306, 24.037796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277177, -0.173041, -0.945108,
		-0.003058, 0.983803, -0.179228,
		0.960814, -0.046787, -0.273216,
		37.976646, 31.658270, 23.955832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422520, 32.082348, 23.527040>,  <37.304077, 31.691021, 24.147083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422520, 32.082348, 23.527040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742176, 31.842005, 23.534430>,  <37.933971, 31.697798, 23.538862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742176, 31.842005, 23.534430>,  <37.422520, 32.082348, 23.527040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742176, 31.842005, 23.534430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114614, 0.122127, -0.985875,
		0.590117, 0.789970, 0.166464,
		0.799140, -0.600861, 0.018473,
		37.981918, 31.661747, 23.539972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029064, 32.406223, 23.154478>,  <37.422520, 32.082348, 23.527040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029064, 32.406223, 23.154478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.085678, 32.010902, 23.131729>,  <38.119648, 31.773710, 23.118080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.085678, 32.010902, 23.131729>,  <38.029064, 32.406223, 23.154478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085678, 32.010902, 23.131729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017352, 0.059921, -0.998052,
		0.989781, 0.140271, 0.025630,
		0.141534, -0.988298, -0.056875,
		38.128139, 31.714413, 23.114666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281433, 32.348972, 22.552958>,  <38.029064, 32.406223, 23.154478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281433, 32.348972, 22.552958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226513, 31.964176, 22.647377>,  <38.193562, 31.733297, 22.704029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226513, 31.964176, 22.647377>,  <38.281433, 32.348972, 22.552958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226513, 31.964176, 22.647377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082000, -0.226449, -0.970565,
		0.987130, -0.152615, -0.047792,
		-0.137300, -0.961992, 0.236049,
		38.185322, 31.675579, 22.718191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662983, 32.015972, 22.041595>,  <38.281433, 32.348972, 22.552958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662983, 32.015972, 22.041595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432175, 31.721107, 22.182241>,  <38.293690, 31.544188, 22.266630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432175, 31.721107, 22.182241>,  <38.662983, 32.015972, 22.041595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432175, 31.721107, 22.182241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104312, -0.360476, -0.926918,
		0.810039, -0.571530, 0.131108,
		-0.577023, -0.737164, 0.351617,
		38.259068, 31.499958, 22.287727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838478, 31.420351, 21.758806>,  <38.662983, 32.015972, 22.041595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838478, 31.420351, 21.758806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472843, 31.321663, 21.887539>,  <38.253464, 31.262451, 21.964779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472843, 31.321663, 21.887539>,  <38.838478, 31.420351, 21.758806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472843, 31.321663, 21.887539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195852, -0.426340, -0.883106,
		0.355089, -0.870267, 0.341391,
		-0.914087, -0.246719, 0.321832,
		38.198616, 31.247646, 21.984089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662277, 30.677893, 21.632654>,  <38.838478, 31.420351, 21.758806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662277, 30.677893, 21.632654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313625, 30.869015, 21.676409>,  <38.104435, 30.983688, 21.702662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313625, 30.869015, 21.676409>,  <38.662277, 30.677893, 21.632654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313625, 30.869015, 21.676409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355356, -0.462261, -0.812427,
		-0.337617, -0.747005, 0.572711,
		-0.871629, 0.477806, 0.109386,
		38.052135, 31.012356, 21.709225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029404, 30.270866, 21.697906>,  <38.662277, 30.677893, 21.632654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029404, 30.270866, 21.697906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911381, 30.619095, 21.540401>,  <37.840569, 30.828032, 21.445898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911381, 30.619095, 21.540401>,  <38.029404, 30.270866, 21.697906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911381, 30.619095, 21.540401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485803, -0.491551, -0.722754,
		-0.822763, -0.021961, 0.567961,
		-0.295054, 0.870572, -0.393762,
		37.822865, 30.880266, 21.422274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303989, 30.212046, 21.473581>,  <38.029404, 30.270866, 21.697906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303989, 30.212046, 21.473581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502289, 30.448242, 21.218849>,  <37.621269, 30.589960, 21.066010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502289, 30.448242, 21.218849>,  <37.303989, 30.212046, 21.473581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502289, 30.448242, 21.218849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291759, -0.577425, -0.762533,
		-0.817991, 0.563826, -0.113977,
		0.495750, 0.590491, -0.636830,
		37.651012, 30.625389, 21.027800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634666, 30.207951, 21.341322>,  <37.303989, 30.212046, 21.473581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634666, 30.207951, 21.341322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238846, 30.254330, 21.307032>,  <36.001354, 30.282156, 21.286457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238846, 30.254330, 21.307032>,  <36.634666, 30.207951, 21.341322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238846, 30.254330, 21.307032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042076, 0.336468, 0.940755,
		0.137921, 0.934530, -0.328073,
		-0.989549, 0.115946, -0.085728,
		35.941982, 30.289114, 21.281313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556961, 30.788342, 21.474236>,  <36.634666, 30.207951, 21.341322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556961, 30.788342, 21.474236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.200665, 30.621801, 21.547152>,  <35.986885, 30.521877, 21.590902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.200665, 30.621801, 21.547152>,  <36.556961, 30.788342, 21.474236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200665, 30.621801, 21.547152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116785, 0.177951, 0.977085,
		-0.439248, 0.891620, -0.109885,
		-0.890743, -0.416350, 0.182292,
		35.933441, 30.496897, 21.601839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084095, 31.238976, 21.778120>,  <36.556961, 30.788342, 21.474236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084095, 31.238976, 21.778120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951565, 30.880411, 21.895878>,  <35.872047, 30.665272, 21.966534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951565, 30.880411, 21.895878>,  <36.084095, 31.238976, 21.778120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951565, 30.880411, 21.895878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047930, 0.295626, 0.954101,
		-0.942300, 0.330225, -0.054983,
		-0.331322, -0.896413, 0.294396,
		35.852169, 30.611486, 21.984198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773388, 31.385117, 22.456179>,  <36.084095, 31.238976, 21.778120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773388, 31.385117, 22.456179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767513, 30.985165, 22.454121>,  <35.763988, 30.745193, 22.452887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767513, 30.985165, 22.454121>,  <35.773388, 31.385117, 22.456179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767513, 30.985165, 22.454121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056465, -0.004309, 0.998395,
		-0.998296, 0.014952, -0.056395,
		-0.014685, -0.999879, -0.005146,
		35.763107, 30.685202, 22.452578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166260, 31.153870, 22.769268>,  <35.773388, 31.385117, 22.456179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166260, 31.153870, 22.769268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419693, 30.847065, 22.809788>,  <35.571754, 30.662981, 22.834099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419693, 30.847065, 22.809788>,  <35.166260, 31.153870, 22.769268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419693, 30.847065, 22.809788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040300, 0.098034, 0.994367,
		-0.772623, -0.634098, 0.031203,
		0.633585, -0.767013, 0.101297,
		35.609768, 30.616961, 22.840178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883587, 30.642281, 23.278965>,  <35.166260, 31.153870, 22.769268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883587, 30.642281, 23.278965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281681, 30.607151, 23.261984>,  <35.520538, 30.586073, 23.251795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281681, 30.607151, 23.261984>,  <34.883587, 30.642281, 23.278965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281681, 30.607151, 23.261984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032889, -0.107629, 0.993647,
		-0.091838, -0.990304, -0.104227,
		0.995231, -0.087826, -0.042454,
		35.580250, 30.580803, 23.249249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005653, 30.132744, 23.785603>,  <34.883587, 30.642281, 23.278965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005653, 30.132744, 23.785603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.381542, 30.249508, 23.714361>,  <35.607075, 30.319567, 23.671618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.381542, 30.249508, 23.714361>,  <35.005653, 30.132744, 23.785603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381542, 30.249508, 23.714361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226379, -0.140706, 0.963823,
		0.256289, -0.946040, -0.198307,
		0.939718, 0.291910, -0.178102,
		35.663456, 30.337080, 23.660931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421520, 29.583996, 24.036278>,  <35.005653, 30.132744, 23.785603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421520, 29.583996, 24.036278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614674, 29.934269, 24.036568>,  <35.730564, 30.144434, 24.036741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614674, 29.934269, 24.036568>,  <35.421520, 29.583996, 24.036278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614674, 29.934269, 24.036568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006163, -0.004225, 0.999972,
		0.875663, -0.482865, -0.007438,
		0.482883, 0.875684, 0.000724,
		35.759537, 30.196974, 24.036785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753094, 29.614468, 24.719303>,  <35.421520, 29.583996, 24.036278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753094, 29.614468, 24.719303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799915, 29.998571, 24.617950>,  <35.828007, 30.229034, 24.557138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799915, 29.998571, 24.617950>,  <35.753094, 29.614468, 24.719303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799915, 29.998571, 24.617950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033870, 0.251127, 0.967362,
		0.992548, -0.121814, -0.003129,
		0.117052, 0.960259, -0.253381,
		35.835030, 30.286650, 24.541937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119534, 29.873516, 25.335110>,  <35.753094, 29.614468, 24.719303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119534, 29.873516, 25.335110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.000046, 30.203711, 25.143553>,  <35.928352, 30.401827, 25.028618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.000046, 30.203711, 25.143553>,  <36.119534, 29.873516, 25.335110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000046, 30.203711, 25.143553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192957, 0.439197, 0.877424,
		0.934631, 0.354508, 0.028087,
		-0.298718, 0.825488, -0.478892,
		35.910431, 30.451357, 24.999886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402412, 30.463037, 25.678473>,  <36.119534, 29.873516, 25.335110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402412, 30.463037, 25.678473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071693, 30.575905, 25.483826>,  <35.873264, 30.643625, 25.367039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071693, 30.575905, 25.483826>,  <36.402412, 30.463037, 25.678473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071693, 30.575905, 25.483826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321589, 0.472657, 0.820473,
		0.461513, 0.834852, -0.300047,
		-0.826793, 0.282167, -0.486616,
		35.823654, 30.660555, 25.337841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407074, 31.306967, 25.714666>,  <36.402412, 30.463037, 25.678473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407074, 31.306967, 25.714666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046219, 31.145494, 25.653748>,  <35.829708, 31.048611, 25.617197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046219, 31.145494, 25.653748>,  <36.407074, 31.306967, 25.714666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046219, 31.145494, 25.653748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352377, 0.485683, 0.799964,
		-0.248963, 0.775341, -0.580399,
		-0.902135, -0.403681, -0.152295,
		35.775578, 31.024389, 25.608059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037495, 31.876930, 25.969765>,  <36.407074, 31.306967, 25.714666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037495, 31.876930, 25.969765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.795769, 31.559589, 25.940390>,  <35.650734, 31.369184, 25.922764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.795769, 31.559589, 25.940390>,  <36.037495, 31.876930, 25.969765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795769, 31.559589, 25.940390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392442, 0.216177, 0.894011,
		-0.693391, 0.569086, -0.441984,
		-0.604316, -0.793353, -0.073438,
		35.614475, 31.321583, 25.918358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433968, 32.067860, 26.125706>,  <36.037495, 31.876930, 25.969765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433968, 32.067860, 26.125706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390381, 31.678129, 26.204519>,  <35.364227, 31.444292, 26.251808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390381, 31.678129, 26.204519>,  <35.433968, 32.067860, 26.125706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390381, 31.678129, 26.204519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225525, 0.217279, 0.949699,
		-0.968124, 0.059054, -0.243411,
		-0.108971, -0.974321, 0.197035,
		35.357689, 31.385832, 26.263630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808472, 32.406452, 25.972809>,  <35.433968, 32.067860, 26.125706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808472, 32.406452, 25.972809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488853, 32.644169, 26.009342>,  <34.297081, 32.786800, 26.031261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488853, 32.644169, 26.009342>,  <34.808472, 32.406452, 25.972809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488853, 32.644169, 26.009342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065699, 0.064695, -0.995740,
		-0.597672, -0.801641, -0.012650,
		-0.799045, 0.594294, 0.091333,
		34.249142, 32.822456, 26.036741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265259, 32.164326, 25.508148>,  <34.808472, 32.406452, 25.972809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265259, 32.164326, 25.508148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148548, 32.541946, 25.569628>,  <34.078522, 32.768520, 25.606516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148548, 32.541946, 25.569628>,  <34.265259, 32.164326, 25.508148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148548, 32.541946, 25.569628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028545, 0.169212, -0.985166,
		-0.956059, -0.283065, -0.076321,
		-0.291780, 0.944056, 0.153697,
		34.061012, 32.825165, 25.615736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661709, 32.268688, 25.069738>,  <34.265259, 32.164326, 25.508148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661709, 32.268688, 25.069738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855125, 32.608948, 25.152281>,  <33.971176, 32.813103, 25.201807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855125, 32.608948, 25.152281>,  <33.661709, 32.268688, 25.069738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855125, 32.608948, 25.152281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016205, 0.227012, -0.973757,
		-0.875169, 0.474200, 0.095986,
		0.483545, 0.850647, 0.206358,
		34.000191, 32.864143, 25.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300640, 32.635540, 24.681286>,  <33.661709, 32.268688, 25.069738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300640, 32.635540, 24.681286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.641296, 32.838253, 24.734785>,  <33.845688, 32.959881, 24.766884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.641296, 32.838253, 24.734785>,  <33.300640, 32.635540, 24.681286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641296, 32.838253, 24.734785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047169, 0.180039, -0.982528,
		-0.522005, 0.843066, 0.129423,
		0.851637, 0.506780, 0.133748,
		33.896786, 32.990288, 24.774910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243835, 33.210644, 24.403574>,  <33.300640, 32.635540, 24.681286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243835, 33.210644, 24.403574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642990, 33.185703, 24.410913>,  <33.882484, 33.170738, 24.415318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642990, 33.185703, 24.410913>,  <33.243835, 33.210644, 24.403574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642990, 33.185703, 24.410913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027599, 0.150907, -0.988163,
		0.058842, 0.986580, 0.152309,
		0.997886, -0.062349, 0.018349,
		33.942356, 33.167000, 24.416418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436665, 33.697147, 23.941820>,  <33.243835, 33.210644, 24.403574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436665, 33.697147, 23.941820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776100, 33.490650, 23.988110>,  <33.979763, 33.366753, 24.015882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776100, 33.490650, 23.988110>,  <33.436665, 33.697147, 23.941820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776100, 33.490650, 23.988110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106777, -0.047114, -0.993166,
		0.518167, 0.855145, 0.015143,
		0.848588, -0.516243, 0.115723,
		34.030678, 33.335777, 24.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960712, 33.988693, 23.450340>,  <33.436665, 33.697147, 23.941820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960712, 33.988693, 23.450340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090469, 33.623005, 23.547468>,  <34.168324, 33.403591, 23.605745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090469, 33.623005, 23.547468>,  <33.960712, 33.988693, 23.450340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090469, 33.623005, 23.547468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257913, -0.161492, -0.952576,
		0.910082, 0.371638, 0.183403,
		0.324395, -0.914224, 0.242821,
		34.187786, 33.348736, 23.620314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330544, 34.542881, 23.082039>,  <33.960712, 33.988693, 23.450340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330544, 34.542881, 23.082039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.049229, 34.795933, 22.952316>,  <33.880440, 34.947765, 22.874483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.049229, 34.795933, 22.952316>,  <34.330544, 34.542881, 23.082039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049229, 34.795933, 22.952316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079067, 0.383746, 0.920048,
		0.706499, 0.672696, -0.219862,
		-0.703283, 0.632629, -0.324304,
		33.838245, 34.985722, 22.855024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552345, 35.127861, 23.413658>,  <34.330544, 34.542881, 23.082039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552345, 35.127861, 23.413658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163433, 35.170563, 23.330452>,  <33.930084, 35.196182, 23.280527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163433, 35.170563, 23.330452>,  <34.552345, 35.127861, 23.413658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163433, 35.170563, 23.330452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171279, 0.280419, 0.944473,
		0.159159, 0.953923, -0.254361,
		-0.972282, 0.106754, -0.208018,
		33.871750, 35.202591, 23.268047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377182, 35.850410, 23.618443>,  <34.552345, 35.127861, 23.413658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377182, 35.850410, 23.618443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038902, 35.636955, 23.620132>,  <33.835934, 35.508881, 23.621147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038902, 35.636955, 23.620132>,  <34.377182, 35.850410, 23.618443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038902, 35.636955, 23.620132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241502, 0.389765, 0.888685,
		-0.475883, 0.750542, -0.458500,
		-0.845702, -0.533638, 0.004225,
		33.785191, 35.476864, 23.621401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787590, 36.311245, 23.663128>,  <34.377182, 35.850410, 23.618443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787590, 36.311245, 23.663128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695435, 35.959297, 23.829384>,  <33.640141, 35.748131, 23.929136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695435, 35.959297, 23.829384>,  <33.787590, 36.311245, 23.663128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695435, 35.959297, 23.829384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116495, 0.448997, 0.885907,
		-0.966100, 0.155685, -0.205945,
		-0.230392, -0.879866, 0.415639,
		33.626316, 35.695339, 23.954075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191521, 36.432995, 24.003605>,  <33.787590, 36.311245, 23.663128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191521, 36.432995, 24.003605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299129, 36.083523, 24.165745>,  <33.363693, 35.873840, 24.263029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299129, 36.083523, 24.165745>,  <33.191521, 36.432995, 24.003605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299129, 36.083523, 24.165745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206724, 0.358676, 0.910284,
		-0.940688, -0.328681, -0.084120,
		0.269021, -0.873682, 0.405349,
		33.379837, 35.821419, 24.287350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732883, 36.417175, 24.615105>,  <33.191521, 36.432995, 24.003605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732883, 36.417175, 24.615105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952839, 36.088615, 24.675661>,  <33.084812, 35.891479, 24.711994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952839, 36.088615, 24.675661>,  <32.732883, 36.417175, 24.615105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952839, 36.088615, 24.675661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212892, 0.037427, 0.976359,
		-0.807649, -0.569120, -0.154289,
		0.549891, -0.821402, 0.151389,
		33.117805, 35.842194, 24.721077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356602, 35.872826, 25.004587>,  <32.732883, 36.417175, 24.615105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356602, 35.872826, 25.004587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750385, 35.812199, 25.040085>,  <32.986656, 35.775822, 25.061382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750385, 35.812199, 25.040085>,  <32.356602, 35.872826, 25.004587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750385, 35.812199, 25.040085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106958, -0.116592, 0.987404,
		-0.139318, -0.981546, -0.130991,
		0.984455, -0.151574, 0.088741,
		33.045723, 35.766727, 25.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.123363, 34.259678, 20.936163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107590, 33.885277, 21.076073>,  <37.098125, 33.660637, 21.160019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107590, 33.885277, 21.076073>,  <37.123363, 34.259678, 20.936163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107590, 33.885277, 21.076073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108042, 0.351986, 0.929749,
		-0.993364, -0.001129, -0.115007,
		-0.039432, -0.936004, 0.349772,
		37.095760, 33.604477, 21.181004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450680, 34.194038, 21.343126>,  <37.123363, 34.259678, 20.936163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450680, 34.194038, 21.343126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721550, 33.938652, 21.489437>,  <36.884071, 33.785419, 21.577225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721550, 33.938652, 21.489437>,  <36.450680, 34.194038, 21.343126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721550, 33.938652, 21.489437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280795, 0.235260, 0.930488,
		-0.680141, -0.732809, -0.019967,
		0.677172, -0.638469, 0.365779,
		36.924702, 33.747112, 21.599171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174709, 34.104244, 22.067009>,  <36.450680, 34.194038, 21.343126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174709, 34.104244, 22.067009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547291, 33.960152, 22.046520>,  <36.770840, 33.873695, 22.034227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547291, 33.960152, 22.046520>,  <36.174709, 34.104244, 22.067009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547291, 33.960152, 22.046520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137384, 0.217840, 0.966267,
		-0.336917, -0.907073, 0.252398,
		0.931457, -0.360228, -0.051223,
		36.826729, 33.852085, 22.031153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225613, 33.662838, 22.754549>,  <36.174709, 34.104244, 22.067009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225613, 33.662838, 22.754549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576283, 33.784393, 22.605370>,  <36.786686, 33.857327, 22.515862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576283, 33.784393, 22.605370>,  <36.225613, 33.662838, 22.754549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576283, 33.784393, 22.605370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230782, 0.414547, 0.880278,
		0.422124, -0.857784, 0.293286,
		0.876670, 0.303902, -0.372952,
		36.839287, 33.875561, 22.493484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764141, 33.360722, 23.176264>,  <36.225613, 33.662838, 22.754549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764141, 33.360722, 23.176264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916794, 33.690857, 23.009808>,  <37.008385, 33.888939, 22.909933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916794, 33.690857, 23.009808>,  <36.764141, 33.360722, 23.176264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916794, 33.690857, 23.009808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053368, 0.429789, 0.901351,
		0.922774, -0.366189, 0.119973,
		0.381628, 0.825341, -0.416141,
		37.031281, 33.938457, 22.884966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168835, 33.506535, 23.702032>,  <36.764141, 33.360722, 23.176264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168835, 33.506535, 23.702032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.160122, 33.849884, 23.497009>,  <37.154896, 34.055893, 23.373995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.160122, 33.849884, 23.497009>,  <37.168835, 33.506535, 23.702032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160122, 33.849884, 23.497009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116407, 0.511369, 0.851441,
		0.992963, -0.041121, -0.111058,
		-0.021779, 0.858377, -0.512557,
		37.153587, 34.107399, 23.343243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795528, 33.783508, 23.814627>,  <37.168835, 33.506535, 23.702032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795528, 33.783508, 23.814627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.609417, 34.100822, 23.657549>,  <37.497749, 34.291210, 23.563301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.609417, 34.100822, 23.657549>,  <37.795528, 33.783508, 23.814627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609417, 34.100822, 23.657549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273599, 0.550804, 0.788517,
		0.841820, 0.259438, -0.473320,
		-0.465277, 0.793288, -0.392696,
		37.469833, 34.338810, 23.539740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315464, 34.367386, 23.835096>,  <37.795528, 33.783508, 23.814627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315464, 34.367386, 23.835096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.950546, 34.524548, 23.788897>,  <37.731594, 34.618843, 23.761177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.950546, 34.524548, 23.788897>,  <38.315464, 34.367386, 23.835096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950546, 34.524548, 23.788897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236077, 0.735006, 0.635636,
		0.334637, 0.552622, -0.763300,
		-0.912297, 0.392905, -0.115499,
		37.676857, 34.642418, 23.754248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428493, 35.111473, 23.816587>,  <38.315464, 34.367386, 23.835096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428493, 35.111473, 23.816587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.050663, 35.053089, 23.934210>,  <37.823963, 35.018059, 24.004784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.050663, 35.053089, 23.934210>,  <38.428493, 35.111473, 23.816587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050663, 35.053089, 23.934210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153640, 0.595032, 0.788880,
		-0.290120, 0.790337, -0.539628,
		-0.944577, -0.145962, 0.294058,
		37.767288, 35.009300, 24.022427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220551, 35.712402, 24.024017>,  <38.428493, 35.111473, 23.816587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220551, 35.712402, 24.024017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942009, 35.479885, 24.192390>,  <37.774883, 35.340374, 24.293415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942009, 35.479885, 24.192390>,  <38.220551, 35.712402, 24.024017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942009, 35.479885, 24.192390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023445, 0.604618, 0.796170,
		-0.717313, 0.544549, -0.434659,
		-0.696357, -0.581294, 0.420933,
		37.733101, 35.305496, 24.318670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677082, 36.139282, 24.311596>,  <38.220551, 35.712402, 24.024017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677082, 36.139282, 24.311596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666286, 35.786377, 24.499592>,  <37.659809, 35.574635, 24.612389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666286, 35.786377, 24.499592>,  <37.677082, 36.139282, 24.311596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666286, 35.786377, 24.499592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040672, 0.470739, 0.881335,
		-0.998808, 0.004670, -0.048587,
		-0.026988, -0.882260, 0.469988,
		37.658192, 35.521698, 24.640589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186424, 36.223961, 24.814951>,  <37.677082, 36.139282, 24.311596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186424, 36.223961, 24.814951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.417484, 35.916077, 24.923672>,  <37.556118, 35.731346, 24.988903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.417484, 35.916077, 24.923672>,  <37.186424, 36.223961, 24.814951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417484, 35.916077, 24.923672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144947, 0.230961, 0.962106,
		-0.803315, -0.595153, 0.021847,
		0.577646, -0.769708, 0.271800,
		37.590778, 35.685165, 25.005211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475239, 36.234245, 24.717962>,  <37.186424, 36.223961, 24.814951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475239, 36.234245, 24.717962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359024, 36.587570, 24.570801>,  <36.289295, 36.799564, 24.482504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359024, 36.587570, 24.570801>,  <36.475239, 36.234245, 24.717962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359024, 36.587570, 24.570801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052753, -0.398692, -0.915566,
		-0.955407, -0.246601, 0.162434,
		-0.290541, 0.883308, -0.367904,
		36.271862, 36.852562, 24.460430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855675, 36.081673, 24.279255>,  <36.475239, 36.234245, 24.717962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855675, 36.081673, 24.279255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.004379, 36.425011, 24.137810>,  <36.093601, 36.631012, 24.052942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.004379, 36.425011, 24.137810>,  <35.855675, 36.081673, 24.279255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004379, 36.425011, 24.137810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149820, -0.320445, -0.935344,
		-0.916159, 0.400703, 0.009468,
		0.371761, 0.858343, -0.353612,
		36.115906, 36.682514, 24.031727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385845, 36.351677, 23.627584>,  <35.855675, 36.081673, 24.279255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385845, 36.351677, 23.627584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.749752, 36.514011, 23.592646>,  <35.968094, 36.611412, 23.571682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.749752, 36.514011, 23.592646>,  <35.385845, 36.351677, 23.627584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749752, 36.514011, 23.592646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072746, -0.051298, -0.996030,
		-0.408704, 0.912506, -0.017147,
		0.909763, 0.405835, -0.087347,
		36.022682, 36.635761, 23.566441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277134, 36.932770, 23.112255>,  <35.385845, 36.351677, 23.627584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277134, 36.932770, 23.112255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675903, 36.917034, 23.139399>,  <35.915165, 36.907593, 23.155685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675903, 36.917034, 23.139399>,  <35.277134, 36.932770, 23.112255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675903, 36.917034, 23.139399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070114, 0.059121, -0.995785,
		0.035160, 0.997475, 0.061697,
		0.996919, -0.039338, 0.067859,
		35.974979, 36.905231, 23.159756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574646, 37.603115, 22.895636>,  <35.277134, 36.932770, 23.112255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574646, 37.603115, 22.895636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.821072, 37.292175, 22.844742>,  <35.968925, 37.105610, 22.814205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.821072, 37.292175, 22.844742>,  <35.574646, 37.603115, 22.895636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821072, 37.292175, 22.844742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055292, 0.118450, -0.991420,
		0.785753, 0.617813, 0.029991,
		0.616064, -0.777353, -0.127233,
		36.005890, 37.058968, 22.806572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045448, 37.692303, 22.313314>,  <35.574646, 37.603115, 22.895636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045448, 37.692303, 22.313314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.076202, 37.295097, 22.349112>,  <36.094654, 37.056774, 22.370590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.076202, 37.295097, 22.349112>,  <36.045448, 37.692303, 22.313314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076202, 37.295097, 22.349112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249351, -0.067755, -0.966040,
		0.965356, 0.096590, 0.242400,
		0.076886, -0.993016, 0.089493,
		36.099270, 36.997192, 22.375959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589085, 37.466640, 21.982248>,  <36.045448, 37.692303, 22.313314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589085, 37.466640, 21.982248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407970, 37.111248, 22.012133>,  <36.299301, 36.898010, 22.030064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407970, 37.111248, 22.012133>,  <36.589085, 37.466640, 21.982248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407970, 37.111248, 22.012133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223043, -0.193994, -0.955311,
		0.863272, -0.415886, 0.286007,
		-0.452784, -0.888485, 0.074710,
		36.272137, 36.844704, 22.034546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097950, 37.031578, 21.689150>,  <36.589085, 37.466640, 21.982248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097950, 37.031578, 21.689150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.749146, 36.835785, 21.688120>,  <36.539864, 36.718311, 21.687502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.749146, 36.835785, 21.688120>,  <37.097950, 37.031578, 21.689150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749146, 36.835785, 21.688120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166042, -0.290849, -0.942251,
		0.460464, -0.822080, 0.334897,
		-0.872011, -0.489480, -0.002575,
		36.487541, 36.688942, 21.687347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222530, 36.578686, 21.177782>,  <37.097950, 37.031578, 21.689150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222530, 36.578686, 21.177782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824730, 36.583199, 21.219427>,  <36.586048, 36.585907, 21.244413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824730, 36.583199, 21.219427>,  <37.222530, 36.578686, 21.177782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824730, 36.583199, 21.219427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101756, -0.339012, -0.935263,
		0.024740, -0.940714, 0.338296,
		-0.994502, 0.011286, 0.104111,
		36.526379, 36.586586, 21.250660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964066, 35.885029, 21.152719>,  <37.222530, 36.578686, 21.177782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964066, 35.885029, 21.152719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.650558, 36.105869, 21.038960>,  <36.462452, 36.238373, 20.970703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.650558, 36.105869, 21.038960>,  <36.964066, 35.885029, 21.152719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650558, 36.105869, 21.038960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015717, -0.475423, -0.879617,
		-0.620852, -0.684948, 0.381300,
		-0.783770, 0.552104, -0.284402,
		36.415428, 36.271500, 20.953640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621799, 35.437355, 20.756300>,  <36.964066, 35.885029, 21.152719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621799, 35.437355, 20.756300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.487495, 35.799465, 20.652184>,  <36.406914, 36.016731, 20.589714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.487495, 35.799465, 20.652184>,  <36.621799, 35.437355, 20.756300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487495, 35.799465, 20.652184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039848, -0.289734, -0.956277,
		-0.941105, -0.310706, 0.133354,
		-0.335758, 0.905271, -0.260289,
		36.386768, 36.071045, 20.574097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029686, 35.362736, 20.246344>,  <36.621799, 35.437355, 20.756300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029686, 35.362736, 20.246344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.144672, 35.738983, 20.174118>,  <36.213665, 35.964729, 20.130783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.144672, 35.738983, 20.174118>,  <36.029686, 35.362736, 20.246344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144672, 35.738983, 20.174118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228638, -0.115681, -0.966614,
		-0.930101, 0.319154, 0.181806,
		0.287467, 0.940616, -0.180565,
		36.230911, 36.021168, 20.119949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389210, 35.725338, 19.921991>,  <36.029686, 35.362736, 20.246344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389210, 35.725338, 19.921991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.716160, 35.929768, 19.815626>,  <35.912331, 36.052425, 19.751806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.716160, 35.929768, 19.815626>,  <35.389210, 35.725338, 19.921991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716160, 35.929768, 19.815626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327704, 0.032828, -0.944210,
		-0.473828, 0.858912, 0.194312,
		0.817372, 0.511070, -0.265914,
		35.961372, 36.083088, 19.735851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661701, 35.412167, 19.967945>,  <35.389210, 35.725338, 19.921991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661701, 35.412167, 19.967945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377167, 35.182365, 19.805979>,  <34.206448, 35.044487, 19.708799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377167, 35.182365, 19.805979>,  <34.661701, 35.412167, 19.967945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377167, 35.182365, 19.805979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562238, 0.119397, 0.818311,
		-0.421773, 0.809750, -0.407936,
		-0.711334, -0.574499, -0.404914,
		34.163765, 35.010017, 19.684505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007156, 35.778111, 19.952826>,  <34.661701, 35.412167, 19.967945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007156, 35.778111, 19.952826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.931740, 35.385319, 19.958075>,  <33.886490, 35.149643, 19.961224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.931740, 35.385319, 19.958075>,  <34.007156, 35.778111, 19.952826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931740, 35.385319, 19.958075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482110, 0.104190, 0.869893,
		-0.855583, 0.157686, -0.493065,
		-0.188543, -0.981977, 0.013121,
		33.875175, 35.090725, 19.962011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455589, 35.746544, 20.330225>,  <34.007156, 35.778111, 19.952826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455589, 35.746544, 20.330225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.557846, 35.359837, 20.331184>,  <33.619202, 35.127811, 20.331760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.557846, 35.359837, 20.331184>,  <33.455589, 35.746544, 20.330225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557846, 35.359837, 20.331184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328774, -0.084603, 0.940612,
		-0.909151, -0.241249, -0.339476,
		0.255642, -0.966769, 0.002399,
		33.634541, 35.069805, 20.331903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849884, 35.310608, 20.558134>,  <33.455589, 35.746544, 20.330225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849884, 35.310608, 20.558134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.180119, 35.102806, 20.646242>,  <33.378262, 34.978127, 20.699106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.180119, 35.102806, 20.646242>,  <32.849884, 35.310608, 20.558134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180119, 35.102806, 20.646242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215681, 0.070189, 0.973938,
		-0.521423, -0.851582, -0.054100,
		0.825591, -0.519502, 0.220268,
		33.427795, 34.946957, 20.712322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673176, 34.839218, 21.117956>,  <32.849884, 35.310608, 20.558134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673176, 34.839218, 21.117956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.072136, 34.818203, 21.137669>,  <33.311512, 34.805592, 21.149496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.072136, 34.818203, 21.137669>,  <32.673176, 34.839218, 21.117956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072136, 34.818203, 21.137669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041826, 0.134599, 0.990017,
		-0.058650, -0.989506, 0.132051,
		0.997402, -0.052541, 0.049281,
		33.371357, 34.802441, 21.152452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782619, 34.404625, 21.670950>,  <32.673176, 34.839218, 21.117956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782619, 34.404625, 21.670950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.107227, 34.634613, 21.629299>,  <33.301991, 34.772606, 21.604309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.107227, 34.634613, 21.629299>,  <32.782619, 34.404625, 21.670950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107227, 34.634613, 21.629299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101435, 0.036872, 0.994159,
		0.575452, -0.817342, -0.028400,
		0.811521, 0.574971, -0.104125,
		33.350685, 34.807106, 21.598063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192951, 34.066124, 22.149540>,  <32.782619, 34.404625, 21.670950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192951, 34.066124, 22.149540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.368927, 34.418972, 22.082232>,  <33.474510, 34.630680, 22.041847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.368927, 34.418972, 22.082232>,  <33.192951, 34.066124, 22.149540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368927, 34.418972, 22.082232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151595, 0.111740, 0.982106,
		0.885141, -0.457573, -0.084567,
		0.439936, 0.882123, -0.168271,
		33.500908, 34.683609, 22.031750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832310, 34.121372, 22.668455>,  <33.192951, 34.066124, 22.149540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832310, 34.121372, 22.668455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749634, 34.494556, 22.550568>,  <33.700027, 34.718468, 22.479836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749634, 34.494556, 22.550568>,  <33.832310, 34.121372, 22.668455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749634, 34.494556, 22.550568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038955, 0.308834, 0.950318,
		0.977630, 0.184944, -0.100178,
		-0.206694, 0.932961, -0.294721,
		33.687626, 34.774445, 22.462151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543682, 33.812447, 22.840868>,  <33.832310, 34.121372, 22.668455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543682, 33.812447, 22.840868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.447678, 33.471931, 23.027504>,  <34.390076, 33.267624, 23.139484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.447678, 33.471931, 23.027504>,  <34.543682, 33.812447, 22.840868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447678, 33.471931, 23.027504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035278, -0.472671, -0.880532,
		0.970129, -0.227797, 0.083414,
		-0.240010, -0.851287, 0.466589,
		34.375675, 33.216545, 23.167480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079155, 33.323265, 22.755383>,  <34.543682, 33.812447, 22.840868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079155, 33.323265, 22.755383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.758186, 33.101971, 22.844872>,  <34.565605, 32.969193, 22.898565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.758186, 33.101971, 22.844872>,  <35.079155, 33.323265, 22.755383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758186, 33.101971, 22.844872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055840, -0.442859, -0.894851,
		0.594141, -0.705554, 0.386252,
		-0.802420, -0.553236, 0.223722,
		34.517460, 32.936001, 22.911987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259686, 32.590672, 22.636404>,  <35.079155, 33.323265, 22.755383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259686, 32.590672, 22.636404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.860035, 32.605946, 22.629597>,  <34.620243, 32.615112, 22.625513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.860035, 32.605946, 22.629597>,  <35.259686, 32.590672, 22.636404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860035, 32.605946, 22.629597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006091, -0.535649, -0.844419,
		-0.041362, -0.843577, 0.535413,
		-0.999126, 0.038188, -0.017017,
		34.560299, 32.617401, 22.624491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081421, 31.989126, 22.310888>,  <35.259686, 32.590672, 22.636404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081421, 31.989126, 22.310888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726173, 32.171268, 22.285913>,  <34.513027, 32.280556, 22.270927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726173, 32.171268, 22.285913>,  <35.081421, 31.989126, 22.310888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726173, 32.171268, 22.285913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082793, -0.292126, -0.952789,
		-0.452101, -0.841018, 0.297142,
		-0.888116, 0.455359, -0.062440,
		34.459740, 32.307877, 22.267181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558899, 31.433208, 22.192755>,  <35.081421, 31.989126, 22.310888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558899, 31.433208, 22.192755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.431705, 31.786827, 22.055731>,  <34.355389, 31.998999, 21.973516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.431705, 31.786827, 22.055731>,  <34.558899, 31.433208, 22.192755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431705, 31.786827, 22.055731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247872, -0.426267, -0.869975,
		-0.915120, -0.191728, 0.354677,
		-0.317986, 0.884046, -0.342561,
		34.336311, 32.052040, 21.952963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900932, 31.374479, 21.861387>,  <34.558899, 31.433208, 22.192755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900932, 31.374479, 21.861387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.015766, 31.718119, 21.691900>,  <34.084667, 31.924301, 21.590208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.015766, 31.718119, 21.691900>,  <33.900932, 31.374479, 21.861387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015766, 31.718119, 21.691900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234506, -0.365847, -0.900645,
		-0.928758, 0.357924, 0.096435,
		0.287082, 0.859096, -0.423719,
		34.101891, 31.975847, 21.564785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533119, 31.494629, 21.235067>,  <33.900932, 31.374479, 21.861387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533119, 31.494629, 21.235067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.842873, 31.736715, 21.161272>,  <34.028725, 31.881968, 21.116995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.842873, 31.736715, 21.161272>,  <33.533119, 31.494629, 21.235067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842873, 31.736715, 21.161272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062836, -0.216575, -0.974242,
		-0.629583, 0.766034, -0.129684,
		0.774388, 0.605217, -0.184487,
		34.075188, 31.918280, 21.105927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357723, 31.730944, 20.694237>,  <33.533119, 31.494629, 21.235067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357723, 31.730944, 20.694237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.738689, 31.852051, 20.708328>,  <33.967270, 31.924715, 20.716784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.738689, 31.852051, 20.708328>,  <33.357723, 31.730944, 20.694237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738689, 31.852051, 20.708328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044396, -0.023447, -0.998739,
		-0.301560, 0.952776, -0.035773,
		0.952413, 0.302768, 0.035229,
		34.024414, 31.942881, 20.718897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458317, 32.359913, 20.407515>,  <33.357723, 31.730944, 20.694237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458317, 32.359913, 20.407515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.801514, 32.156101, 20.381481>,  <34.007431, 32.033813, 20.365862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.801514, 32.156101, 20.381481>,  <33.458317, 32.359913, 20.407515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801514, 32.156101, 20.381481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083073, -0.012605, -0.996464,
		0.506905, 0.860362, -0.053142,
		0.857990, -0.509527, -0.065083,
		34.058910, 32.003242, 20.361956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.355625, 35.757122, 35.703426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720688, 35.622650, 35.610435>,  <36.939724, 35.541965, 35.554642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720688, 35.622650, 35.610435>,  <36.355625, 35.757122, 35.703426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720688, 35.622650, 35.610435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313413, -0.210506, -0.925991,
		0.262366, 0.917969, -0.297483,
		0.912654, -0.336183, -0.232474,
		36.994484, 35.521793, 35.540695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761490, 36.100311, 35.095581>,  <36.355625, 35.757122, 35.703426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761490, 36.100311, 35.095581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839005, 35.708561, 35.118446>,  <36.885513, 35.473511, 35.132164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839005, 35.708561, 35.118446>,  <36.761490, 36.100311, 35.095581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839005, 35.708561, 35.118446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191612, -0.094932, -0.976869,
		0.962149, 0.178353, -0.206057,
		0.193789, -0.979376, 0.057164,
		36.897141, 35.414749, 35.135597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198463, 35.899349, 34.574688>,  <36.761490, 36.100311, 35.095581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198463, 35.899349, 34.574688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968437, 35.586647, 34.671150>,  <36.830421, 35.399025, 34.729027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968437, 35.586647, 34.671150>,  <37.198463, 35.899349, 34.574688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968437, 35.586647, 34.671150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229882, -0.128482, -0.964700,
		0.785143, -0.610206, -0.105825,
		-0.575070, -0.781755, 0.241152,
		36.795918, 35.352119, 34.743496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344181, 35.476326, 34.100094>,  <37.198463, 35.899349, 34.574688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344181, 35.476326, 34.100094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038986, 35.273830, 34.260880>,  <36.855869, 35.152332, 34.357349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038986, 35.273830, 34.260880>,  <37.344181, 35.476326, 34.100094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038986, 35.273830, 34.260880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299027, -0.274884, -0.913795,
		0.573090, -0.817412, 0.058355,
		-0.762988, -0.506237, 0.401962,
		36.810089, 35.121960, 34.381470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263397, 34.820663, 33.700047>,  <37.344181, 35.476326, 34.100094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263397, 34.820663, 33.700047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921257, 34.889404, 33.895535>,  <36.715973, 34.930649, 34.012829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921257, 34.889404, 33.895535>,  <37.263397, 34.820663, 33.700047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921257, 34.889404, 33.895535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516978, -0.344026, -0.783824,
		0.033431, -0.923100, 0.383105,
		-0.855346, 0.171852, 0.488723,
		36.664654, 34.940960, 34.042152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875809, 34.238514, 33.517056>,  <37.263397, 34.820663, 33.700047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875809, 34.238514, 33.517056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605709, 34.509785, 33.633064>,  <36.443649, 34.672546, 33.702671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605709, 34.509785, 33.633064>,  <36.875809, 34.238514, 33.517056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605709, 34.509785, 33.633064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555581, -0.209026, -0.804760,
		-0.485149, -0.704543, 0.517928,
		-0.675248, 0.678179, 0.290021,
		36.403133, 34.713238, 33.720070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195660, 33.939064, 33.580360>,  <36.875809, 34.238514, 33.517056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195660, 33.939064, 33.580360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158577, 34.330559, 33.507175>,  <36.136326, 34.565456, 33.463264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158577, 34.330559, 33.507175>,  <36.195660, 33.939064, 33.580360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158577, 34.330559, 33.507175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624881, -0.200249, -0.754602,
		-0.775196, 0.044372, 0.630160,
		-0.092706, 0.978740, -0.182959,
		36.130764, 34.624180, 33.452286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488998, 34.005058, 33.620453>,  <36.195660, 33.939064, 33.580360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488998, 34.005058, 33.620453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624805, 34.322189, 33.418011>,  <35.706291, 34.512470, 33.296547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624805, 34.322189, 33.418011>,  <35.488998, 34.005058, 33.620453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624805, 34.322189, 33.418011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691448, -0.154404, -0.705733,
		-0.637673, 0.589556, 0.495779,
		0.339518, 0.792832, -0.506107,
		35.726662, 34.560040, 33.266178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877743, 34.370739, 33.371319>,  <35.488998, 34.005058, 33.620453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877743, 34.370739, 33.371319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189518, 34.484592, 33.148083>,  <35.376583, 34.552906, 33.014141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189518, 34.484592, 33.148083>,  <34.877743, 34.370739, 33.371319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189518, 34.484592, 33.148083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559115, -0.085819, -0.824636,
		-0.282616, 0.954787, 0.092254,
		0.779435, 0.284636, -0.558090,
		35.423347, 34.569984, 32.980656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575649, 34.631401, 32.789715>,  <34.877743, 34.370739, 33.371319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575649, 34.631401, 32.789715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945503, 34.583115, 32.645229>,  <35.167416, 34.554142, 32.558537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945503, 34.583115, 32.645229>,  <34.575649, 34.631401, 32.789715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945503, 34.583115, 32.645229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378021, -0.175408, -0.909028,
		0.046376, 0.977066, -0.207822,
		0.924635, -0.120718, -0.361217,
		35.222893, 34.546898, 32.536865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520000, 34.916706, 32.166637>,  <34.575649, 34.631401, 32.789715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520000, 34.916706, 32.166637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839611, 34.677769, 32.139111>,  <35.031380, 34.534409, 32.122597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839611, 34.677769, 32.139111>,  <34.520000, 34.916706, 32.166637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839611, 34.677769, 32.139111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221869, -0.186526, -0.957069,
		0.558860, 0.779995, -0.281572,
		0.799030, -0.597340, -0.068815,
		35.079319, 34.498566, 32.118465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751221, 35.058510, 31.503574>,  <34.520000, 34.916706, 32.166637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751221, 35.058510, 31.503574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901634, 34.698277, 31.590790>,  <34.991882, 34.482136, 31.643118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901634, 34.698277, 31.590790>,  <34.751221, 35.058510, 31.503574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901634, 34.698277, 31.590790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248063, -0.324561, -0.912757,
		0.892784, 0.289141, -0.345449,
		0.376035, -0.900587, 0.218037,
		35.014446, 34.428101, 31.656200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944626, 35.832623, 31.319857>,  <34.751221, 35.058510, 31.503574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944626, 35.832623, 31.319857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570656, 35.952141, 31.243298>,  <34.346272, 36.023849, 31.197363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570656, 35.952141, 31.243298>,  <34.944626, 35.832623, 31.319857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570656, 35.952141, 31.243298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105594, 0.280676, 0.953976,
		0.338760, 0.912110, -0.230861,
		-0.934929, 0.298792, -0.191395,
		34.290176, 36.041779, 31.185879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883141, 36.401722, 31.696011>,  <34.944626, 35.832623, 31.319857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883141, 36.401722, 31.696011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496918, 36.341942, 31.610821>,  <34.265182, 36.306072, 31.559708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496918, 36.341942, 31.610821>,  <34.883141, 36.401722, 31.696011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496918, 36.341942, 31.610821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259898, 0.515950, 0.816240,
		-0.012103, 0.843481, -0.537023,
		-0.965560, -0.149450, -0.212975,
		34.207249, 36.297108, 31.546928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569283, 37.016701, 31.714718>,  <34.883141, 36.401722, 31.696011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569283, 37.016701, 31.714718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276009, 36.750923, 31.772636>,  <34.100044, 36.591457, 31.807386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276009, 36.750923, 31.772636>,  <34.569283, 37.016701, 31.714718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276009, 36.750923, 31.772636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275393, 0.484788, 0.830144,
		-0.621775, 0.568771, -0.538419,
		-0.733181, -0.664440, 0.144794,
		34.056053, 36.551590, 31.816074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897125, 37.391014, 31.826899>,  <34.569283, 37.016701, 31.714718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897125, 37.391014, 31.826899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847759, 37.038879, 32.010105>,  <33.818138, 36.827599, 32.120029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847759, 37.038879, 32.010105>,  <33.897125, 37.391014, 31.826899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847759, 37.038879, 32.010105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452599, 0.460683, 0.763495,
		-0.883132, -0.113069, -0.455295,
		-0.123419, -0.880333, 0.458018,
		33.810734, 36.774780, 32.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263885, 37.464474, 32.167889>,  <33.897125, 37.391014, 31.826899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263885, 37.464474, 32.167889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429436, 37.155556, 32.360668>,  <33.528767, 36.970203, 32.476334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429436, 37.155556, 32.360668>,  <33.263885, 37.464474, 32.167889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429436, 37.155556, 32.360668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414540, 0.311454, 0.855075,
		-0.810473, -0.553677, -0.191245,
		0.413872, -0.772294, 0.481946,
		33.553596, 36.923866, 32.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830757, 37.437431, 32.634964>,  <33.263885, 37.464474, 32.167889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830757, 37.437431, 32.634964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138657, 37.220707, 32.769978>,  <33.323395, 37.090672, 32.850986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138657, 37.220707, 32.769978>,  <32.830757, 37.437431, 32.634964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138657, 37.220707, 32.769978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229542, 0.258461, 0.938354,
		-0.595650, -0.799774, 0.074582,
		0.769748, -0.541811, 0.337534,
		33.369579, 37.058163, 32.871239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588745, 36.959312, 33.169392>,  <32.830757, 37.437431, 32.634964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588745, 36.959312, 33.169392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980709, 36.997181, 33.239616>,  <33.215885, 37.019901, 33.281754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980709, 36.997181, 33.239616>,  <32.588745, 36.959312, 33.169392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980709, 36.997181, 33.239616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192091, 0.210825, 0.958464,
		0.053720, -0.972929, 0.224773,
		0.979906, 0.094666, 0.175565,
		33.274681, 37.025581, 33.292286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756596, 36.668388, 33.879532>,  <32.588745, 36.959312, 33.169392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756596, 36.668388, 33.879532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078690, 36.894718, 33.808609>,  <33.271946, 37.030514, 33.766056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078690, 36.894718, 33.808609>,  <32.756596, 36.668388, 33.879532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078690, 36.894718, 33.808609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007554, 0.308784, 0.951102,
		0.592902, -0.764525, 0.252920,
		0.805239, 0.565821, -0.177303,
		33.320263, 37.064465, 33.755417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297127, 36.529354, 34.388924>,  <32.756596, 36.668388, 33.879532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297127, 36.529354, 34.388924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332172, 36.898888, 34.239872>,  <33.353199, 37.120609, 34.150440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332172, 36.898888, 34.239872>,  <33.297127, 36.529354, 34.388924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332172, 36.898888, 34.239872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176941, 0.382557, 0.906831,
		0.980314, -0.013520, 0.196983,
		0.087618, 0.923833, -0.372633,
		33.358459, 37.176037, 34.128082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500359, 36.981773, 34.945011>,  <33.297127, 36.529354, 34.388924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500359, 36.981773, 34.945011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406284, 37.270454, 34.684601>,  <33.349838, 37.443665, 34.528355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406284, 37.270454, 34.684601>,  <33.500359, 36.981773, 34.945011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406284, 37.270454, 34.684601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113610, 0.644807, 0.755855,
		0.965287, 0.251730, -0.069658,
		-0.235187, 0.721703, -0.651023,
		33.335728, 37.486965, 34.489292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844528, 37.674927, 35.128719>,  <33.500359, 36.981773, 34.945011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844528, 37.674927, 35.128719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537598, 37.788906, 34.898930>,  <33.353439, 37.857292, 34.761055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537598, 37.788906, 34.898930>,  <33.844528, 37.674927, 35.128719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537598, 37.788906, 34.898930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230979, 0.712906, 0.662128,
		0.598215, 0.640759, -0.481214,
		-0.767325, 0.284945, -0.574473,
		33.307400, 37.874390, 34.726589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842751, 38.387321, 35.185741>,  <33.844528, 37.674927, 35.128719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842751, 38.387321, 35.185741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476456, 38.309429, 35.045166>,  <33.256680, 38.262691, 34.960819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476456, 38.309429, 35.045166>,  <33.842751, 38.387321, 35.185741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476456, 38.309429, 35.045166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327989, 0.867526, 0.373928,
		0.232066, 0.457687, -0.858294,
		-0.915734, -0.194735, -0.351440,
		33.201736, 38.251007, 34.939735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598717, 39.028603, 34.990242>,  <33.842751, 38.387321, 35.185741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598717, 39.028603, 34.990242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242489, 38.848183, 35.013725>,  <33.028751, 38.739929, 35.027813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242489, 38.848183, 35.013725>,  <33.598717, 39.028603, 34.990242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242489, 38.848183, 35.013725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408459, 0.849824, 0.333109,
		-0.200138, 0.272677, -0.941059,
		-0.890565, -0.451051, 0.058705,
		32.975319, 38.712868, 35.031338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184528, 39.437733, 34.588417>,  <33.598717, 39.028603, 34.990242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184528, 39.437733, 34.588417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928844, 39.242661, 34.826267>,  <32.775433, 39.125618, 34.968979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928844, 39.242661, 34.826267>,  <33.184528, 39.437733, 34.588417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928844, 39.242661, 34.826267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429504, 0.867774, 0.249990,
		-0.637916, -0.095598, -0.764150,
		-0.639210, -0.487678, 0.594626,
		32.737080, 39.096355, 35.004654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435638, 39.951809, 34.334415>,  <33.184528, 39.437733, 34.588417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435638, 39.951809, 34.334415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742210, 40.110741, 34.536293>,  <33.926151, 40.206100, 34.657421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742210, 40.110741, 34.536293>,  <33.435638, 39.951809, 34.334415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742210, 40.110741, 34.536293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445346, 0.237502, -0.863284,
		-0.462878, 0.886408, 0.005077,
		0.766428, 0.397334, 0.504692,
		33.972137, 40.229942, 34.687702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417755, 40.622765, 34.108456>,  <33.435638, 39.951809, 34.334415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417755, 40.622765, 34.108456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764584, 40.455681, 34.217056>,  <33.972679, 40.355431, 34.282219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764584, 40.455681, 34.217056>,  <33.417755, 40.622765, 34.108456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764584, 40.455681, 34.217056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420718, 0.322064, -0.848099,
		0.266816, 0.849585, 0.454989,
		0.867067, -0.417708, 0.271503,
		34.024704, 40.330368, 34.298508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975590, 41.065933, 34.017761>,  <33.417755, 40.622765, 34.108456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975590, 41.065933, 34.017761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076897, 40.680733, 33.980900>,  <34.137680, 40.449612, 33.958782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076897, 40.680733, 33.980900>,  <33.975590, 41.065933, 34.017761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076897, 40.680733, 33.980900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417989, 0.194844, -0.887311,
		0.872435, 0.186204, 0.451870,
		0.253265, -0.962997, -0.092157,
		34.152878, 40.391834, 33.953251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735546, 40.999889, 33.811672>,  <33.975590, 41.065933, 34.017761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735546, 40.999889, 33.811672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582581, 40.646290, 33.704113>,  <34.490803, 40.434132, 33.639576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582581, 40.646290, 33.704113>,  <34.735546, 40.999889, 33.811672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582581, 40.646290, 33.704113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591598, -0.010702, -0.806162,
		0.709769, -0.467367, 0.527064,
		-0.382414, -0.883999, -0.268898,
		34.467857, 40.381092, 33.623444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265759, 40.530766, 33.722832>,  <34.735546, 40.999889, 33.811672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265759, 40.530766, 33.722832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965385, 40.390129, 33.499233>,  <34.785160, 40.305748, 33.365074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965385, 40.390129, 33.499233>,  <35.265759, 40.530766, 33.722832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965385, 40.390129, 33.499233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619219, -0.080729, -0.781058,
		0.229490, -0.932664, 0.278337,
		-0.750934, -0.351596, -0.558997,
		34.740105, 40.284649, 33.331535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595592, 40.036514, 33.300167>,  <35.265759, 40.530766, 33.722832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595592, 40.036514, 33.300167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243126, 40.082962, 33.116837>,  <35.031647, 40.110828, 33.006836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243126, 40.082962, 33.116837>,  <35.595592, 40.036514, 33.300167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243126, 40.082962, 33.116837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441833, -0.142877, -0.885646,
		-0.168332, -0.982904, 0.074590,
		-0.881163, 0.116126, -0.458330,
		34.978775, 40.117798, 32.979336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753510, 39.703812, 32.696777>,  <35.595592, 40.036514, 33.300167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753510, 39.703812, 32.696777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390705, 39.842098, 32.600609>,  <35.173023, 39.925072, 32.542908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390705, 39.842098, 32.600609>,  <35.753510, 39.703812, 32.696777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390705, 39.842098, 32.600609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178869, -0.200570, -0.963212,
		-0.381220, -0.916652, 0.120082,
		-0.907015, 0.345717, -0.240423,
		35.118599, 39.945812, 32.528481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279404, 39.149929, 32.245041>,  <35.753510, 39.703812, 32.696777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279404, 39.149929, 32.245041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153221, 39.522686, 32.173412>,  <35.077511, 39.746342, 32.130436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153221, 39.522686, 32.173412>,  <35.279404, 39.149929, 32.245041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153221, 39.522686, 32.173412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032096, -0.199075, -0.979459,
		-0.948397, -0.303229, 0.092710,
		-0.315457, 0.931891, -0.179070,
		35.058582, 39.802254, 32.119690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805126, 39.108974, 31.710737>,  <35.279404, 39.149929, 32.245041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805126, 39.108974, 31.710737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908947, 39.495167, 31.702002>,  <34.971241, 39.726883, 31.696760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908947, 39.495167, 31.702002>,  <34.805126, 39.108974, 31.710737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908947, 39.495167, 31.702002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160475, 0.020819, -0.986820,
		-0.952302, 0.259637, 0.160340,
		0.259553, 0.965482, -0.021839,
		34.986813, 39.784813, 31.695450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325756, 39.422771, 31.246006>,  <34.805126, 39.108974, 31.710737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325756, 39.422771, 31.246006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648064, 39.659615, 31.250998>,  <34.841446, 39.801720, 31.253992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648064, 39.659615, 31.250998>,  <34.325756, 39.422771, 31.246006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648064, 39.659615, 31.250998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004283, 0.026899, -0.999629,
		-0.592220, 0.805413, 0.024210,
		0.805765, 0.592104, 0.012480,
		34.889793, 39.837246, 31.254742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153664, 39.865139, 30.795191>,  <34.325756, 39.422771, 31.246006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153664, 39.865139, 30.795191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551338, 39.906765, 30.806221>,  <34.789944, 39.931740, 30.812840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551338, 39.906765, 30.806221>,  <34.153664, 39.865139, 30.795191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551338, 39.906765, 30.806221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024414, 0.031554, -0.999204,
		-0.104853, 0.994070, 0.028830,
		0.994188, 0.104066, 0.027578,
		34.849594, 39.937984, 30.814495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339581, 40.270580, 30.288435>,  <34.153664, 39.865139, 30.795191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339581, 40.270580, 30.288435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704784, 40.111149, 30.323183>,  <34.923908, 40.015491, 30.344032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704784, 40.111149, 30.323183>,  <34.339581, 40.270580, 30.288435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704784, 40.111149, 30.323183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103207, 0.019667, -0.994466,
		0.394665, 0.916923, 0.059092,
		0.913011, -0.398579, 0.086871,
		34.978687, 39.991573, 30.349245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719395, 40.733353, 29.856813>,  <34.339581, 40.270580, 30.288435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719395, 40.733353, 29.856813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941364, 40.404305, 29.906380>,  <35.074547, 40.206875, 29.936119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941364, 40.404305, 29.906380>,  <34.719395, 40.733353, 29.856813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941364, 40.404305, 29.906380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122027, -0.066854, -0.990273,
		0.822900, 0.564651, 0.063282,
		0.554928, -0.822618, 0.123916,
		35.107841, 40.157520, 29.943554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090359, 40.739647, 29.227009>,  <34.719395, 40.733353, 29.856813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090359, 40.739647, 29.227009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148754, 40.373436, 29.376940>,  <35.183792, 40.153709, 29.466898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148754, 40.373436, 29.376940>,  <35.090359, 40.739647, 29.227009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148754, 40.373436, 29.376940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077931, -0.367065, -0.926925,
		0.986213, 0.164527, 0.017762,
		0.145984, -0.915529, 0.374826,
		35.192551, 40.098778, 29.489388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591728, 40.482788, 28.735752>,  <35.090359, 40.739647, 29.227009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591728, 40.482788, 28.735752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439209, 40.176037, 28.942253>,  <35.347698, 39.991985, 29.066154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439209, 40.176037, 28.942253>,  <35.591728, 40.482788, 28.735752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439209, 40.176037, 28.942253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050769, -0.574970, -0.816598,
		0.923059, -0.285154, 0.258166,
		-0.381294, -0.766875, 0.516254,
		35.324821, 39.945976, 29.097130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096600, 39.933388, 28.634583>,  <35.591728, 40.482788, 28.735752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096600, 39.933388, 28.634583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753502, 39.753372, 28.733973>,  <35.547642, 39.645363, 28.793606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753502, 39.753372, 28.733973>,  <36.096600, 39.933388, 28.634583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753502, 39.753372, 28.733973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041995, -0.543070, -0.838636,
		0.512356, -0.708902, 0.484716,
		-0.857746, -0.450036, 0.248475,
		35.496178, 39.618362, 28.808516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201702, 39.157814, 28.697166>,  <36.096600, 39.933388, 28.634583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201702, 39.157814, 28.697166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812397, 39.221642, 28.631088>,  <35.578812, 39.259937, 28.591442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812397, 39.221642, 28.631088>,  <36.201702, 39.157814, 28.697166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812397, 39.221642, 28.631088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076840, -0.451579, -0.888916,
		-0.216442, -0.877846, 0.427245,
		-0.973267, 0.159570, -0.165195,
		35.520416, 39.269512, 28.581530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002464, 38.494770, 28.536375>,  <36.201702, 39.157814, 28.697166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002464, 38.494770, 28.536375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715549, 38.743954, 28.411528>,  <35.543400, 38.893463, 28.336618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715549, 38.743954, 28.411528>,  <36.002464, 38.494770, 28.536375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715549, 38.743954, 28.411528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085668, -0.523394, -0.847773,
		-0.691491, -0.581359, 0.428791,
		-0.717287, 0.622962, -0.312119,
		35.500362, 38.930843, 28.317892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450500, 38.059460, 28.312860>,  <36.002464, 38.494770, 28.536375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450500, 38.059460, 28.312860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414871, 38.412304, 28.127840>,  <35.393494, 38.624008, 28.016829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414871, 38.412304, 28.127840>,  <35.450500, 38.059460, 28.312860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414871, 38.412304, 28.127840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150904, -0.470987, -0.869137,
		-0.984527, -0.007618, 0.175067,
		-0.089075, 0.882107, -0.462550,
		35.388149, 38.676937, 27.989075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812038, 38.018997, 27.860962>,  <35.450500, 38.059460, 28.312860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812038, 38.018997, 27.860962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068489, 38.297287, 27.731398>,  <35.222359, 38.464260, 27.653660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068489, 38.297287, 27.731398>,  <34.812038, 38.018997, 27.860962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068489, 38.297287, 27.731398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076789, -0.478111, -0.874936,
		-0.763580, 0.536076, -0.359955,
		0.641131, 0.695725, -0.323911,
		35.260830, 38.506004, 27.634224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557629, 38.003563, 27.345449>,  <34.812038, 38.018997, 27.860962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557629, 38.003563, 27.345449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899033, 38.204842, 27.291325>,  <35.103874, 38.325607, 27.258850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899033, 38.204842, 27.291325>,  <34.557629, 38.003563, 27.345449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899033, 38.204842, 27.291325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115200, -0.435478, -0.892798,
		-0.508177, 0.746427, -0.429654,
		0.853514, 0.503195, -0.135312,
		35.155087, 38.355801, 27.250731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440811, 38.380306, 26.653929>,  <34.557629, 38.003563, 27.345449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440811, 38.380306, 26.653929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834671, 38.350304, 26.716959>,  <35.070988, 38.332302, 26.754778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834671, 38.350304, 26.716959>,  <34.440811, 38.380306, 26.653929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834671, 38.350304, 26.716959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129473, -0.291467, -0.947778,
		0.117019, 0.953636, -0.277282,
		0.984654, -0.075008, 0.157577,
		35.130066, 38.327801, 26.764233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827698, 38.742912, 26.058428>,  <34.440811, 38.380306, 26.653929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827698, 38.742912, 26.058428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.077995, 38.476093, 26.220161>,  <35.228172, 38.316002, 26.317202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.077995, 38.476093, 26.220161>,  <34.827698, 38.742912, 26.058428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077995, 38.476093, 26.220161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244743, -0.324285, -0.913751,
		0.740639, 0.670732, -0.039663,
		0.625743, -0.667052, 0.404335,
		35.265717, 38.275978, 26.341461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457897, 38.758987, 25.607285>,  <34.827698, 38.742912, 26.058428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457897, 38.758987, 25.607285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497494, 38.421494, 25.818306>,  <35.521252, 38.218998, 25.944920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497494, 38.421494, 25.818306>,  <35.457897, 38.758987, 25.607285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497494, 38.421494, 25.818306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413494, -0.447341, -0.793038,
		0.905110, 0.296644, 0.304596,
		0.098992, -0.843735, 0.527553,
		35.527191, 38.168373, 25.976572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180641, 38.532162, 25.488848>,  <35.457897, 38.758987, 25.607285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180641, 38.532162, 25.488848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939281, 38.233131, 25.599869>,  <35.794464, 38.053715, 25.666481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939281, 38.233131, 25.599869>,  <36.180641, 38.532162, 25.488848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939281, 38.233131, 25.599869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260408, -0.513697, -0.817498,
		0.753720, -0.421004, 0.504641,
		-0.603402, -0.747577, 0.277551,
		35.758263, 38.008858, 25.683134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639362, 38.130890, 25.342295>,  <36.180641, 38.532162, 25.488848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639362, 38.130890, 25.342295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310501, 37.904957, 25.370676>,  <36.113186, 37.769398, 25.387705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310501, 37.904957, 25.370676>,  <36.639362, 38.130890, 25.342295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310501, 37.904957, 25.370676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268466, -0.494609, -0.826612,
		0.501992, -0.660550, 0.558281,
		-0.822150, -0.564832, 0.070954,
		36.063858, 37.735508, 25.391962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893162, 37.460934, 25.216782>,  <36.639362, 38.130890, 25.342295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893162, 37.460934, 25.216782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496239, 37.441639, 25.171173>,  <36.258083, 37.430061, 25.143808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496239, 37.441639, 25.171173>,  <36.893162, 37.460934, 25.216782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496239, 37.441639, 25.171173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120279, -0.593905, -0.795493,
		-0.029343, -0.803088, 0.595138,
		-0.992306, -0.048240, -0.114022,
		36.198547, 37.427166, 25.136967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772495, 36.731007, 25.248569>,  <36.893162, 37.460934, 25.216782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772495, 36.731007, 25.248569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491867, 36.931911, 25.046368>,  <36.323490, 37.052456, 24.925047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491867, 36.931911, 25.046368>,  <36.772495, 36.731007, 25.248569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491867, 36.931911, 25.046368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227396, -0.514497, -0.826791,
		-0.675345, -0.695001, 0.246744,
		-0.701570, 0.502261, -0.505503,
		36.281395, 37.082588, 24.894716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798759, 35.988556, 25.405170>,  <36.772495, 36.731007, 25.248569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798759, 35.988556, 25.405170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163670, 35.825077, 25.415918>,  <37.382614, 35.726990, 25.422367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163670, 35.825077, 25.415918>,  <36.798759, 35.988556, 25.405170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163670, 35.825077, 25.415918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027709, 0.127039, 0.991511,
		-0.408642, -0.903785, 0.127220,
		0.912274, -0.408698, 0.026870,
		37.437351, 35.702469, 25.423979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919361, 35.322231, 25.866043>,  <36.798759, 35.988556, 25.405170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919361, 35.322231, 25.866043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274826, 35.500034, 25.820978>,  <37.488106, 35.606716, 25.793940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274826, 35.500034, 25.820978>,  <36.919361, 35.322231, 25.866043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274826, 35.500034, 25.820978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137395, -0.023703, 0.990233,
		0.437496, -0.895461, -0.082137,
		0.888662, 0.444508, -0.112662,
		37.541424, 35.633385, 25.787180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283493, 35.001041, 26.430138>,  <36.919361, 35.322231, 25.866043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283493, 35.001041, 26.430138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497856, 35.321217, 26.322723>,  <37.626472, 35.513321, 26.258274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497856, 35.321217, 26.322723>,  <37.283493, 35.001041, 26.430138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497856, 35.321217, 26.322723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327606, 0.095997, 0.939925,
		0.778126, -0.591684, -0.210782,
		0.535904, 0.800434, -0.268538,
		37.658627, 35.561348, 26.242163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914352, 34.844902, 26.714319>,  <37.283493, 35.001041, 26.430138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914352, 34.844902, 26.714319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899071, 35.237209, 26.637764>,  <37.889900, 35.472595, 26.591831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899071, 35.237209, 26.637764>,  <37.914352, 34.844902, 26.714319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899071, 35.237209, 26.637764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237074, 0.194955, 0.951729,
		0.970740, -0.009011, -0.239964,
		-0.038206, 0.980771, -0.191387,
		37.887608, 35.531441, 26.580347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435249, 35.172829, 27.059692>,  <37.914352, 34.844902, 26.714319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435249, 35.172829, 27.059692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.215996, 35.505470, 27.023968>,  <38.084442, 35.705055, 27.002533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.215996, 35.505470, 27.023968>,  <38.435249, 35.172829, 27.059692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215996, 35.505470, 27.023968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254017, 0.267260, 0.929541,
		0.796882, 0.486829, -0.357737,
		-0.548137, 0.831607, -0.089312,
		38.051556, 35.754951, 26.997173>
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
