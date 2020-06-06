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
	<24.032495, 35.203865, 35.371025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290316, 35.226604, 35.066048>,  <24.445007, 35.240250, 34.883060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290316, 35.226604, 35.066048>,  <24.032495, 35.203865, 35.371025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290316, 35.226604, 35.066048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750640, 0.142391, 0.645185,
		0.145263, -0.988175, 0.049083,
		0.644545, 0.056878, -0.762448,
		24.483681, 35.243660, 34.837315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401934, 34.510952, 35.340466>,  <24.032495, 35.203865, 35.371025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401934, 34.510952, 35.340466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564596, 34.852745, 35.211170>,  <24.662193, 35.057823, 35.133595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564596, 34.852745, 35.211170>,  <24.401934, 34.510952, 35.340466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.564596, 34.852745, 35.211170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784264, -0.145041, 0.603236,
		0.468574, -0.498814, -0.729125,
		0.406655, 0.854487, -0.323240,
		24.686592, 35.109093, 35.114197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112961, 34.638287, 35.571579>,  <24.401934, 34.510952, 35.340466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112961, 34.638287, 35.571579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884872, 34.327206, 35.677429>,  <24.748018, 34.140556, 35.740940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884872, 34.327206, 35.677429>,  <25.112961, 34.638287, 35.571579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884872, 34.327206, 35.677429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797746, 0.601113, 0.047590,
		-0.196080, -0.183967, -0.963176,
		-0.570222, -0.777701, 0.264625,
		24.713806, 34.093895, 35.756817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761028, 34.561234, 35.890244>,  <25.112961, 34.638287, 35.571579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761028, 34.561234, 35.890244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991814, 34.521286, 35.565987>,  <26.130285, 34.497318, 35.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991814, 34.521286, 35.565987>,  <25.761028, 34.561234, 35.890244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991814, 34.521286, 35.565987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725258, 0.519112, 0.452243,
		0.375647, -0.848851, 0.371941,
		0.576966, -0.099869, -0.810640,
		26.164904, 34.491325, 35.322796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451859, 34.469223, 36.018421>,  <25.761028, 34.561234, 35.890244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451859, 34.469223, 36.018421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421808, 34.655453, 35.665695>,  <26.403778, 34.767193, 35.454060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421808, 34.655453, 35.665695>,  <26.451859, 34.469223, 36.018421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421808, 34.655453, 35.665695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560417, 0.751156, 0.348850,
		0.824796, -0.467976, -0.317348,
		-0.075125, 0.465578, -0.881813,
		26.399271, 34.795128, 35.401150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208160, 34.297291, 35.776402>,  <26.451859, 34.469223, 36.018421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208160, 34.297291, 35.776402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510221, 34.035873, 35.796906>,  <27.691458, 33.879025, 35.809208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510221, 34.035873, 35.796906>,  <27.208160, 34.297291, 35.776402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510221, 34.035873, 35.796906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457551, 0.469462, -0.755151,
		0.469462, 0.593705, 0.653544,
		0.755151, -0.653544, 0.051256,
		27.736767, 33.839809, 35.812283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917707, 34.525352, 35.982788>,  <27.208160, 34.297291, 35.776402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917707, 34.525352, 35.982788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898064, 34.240795, 35.702358>,  <27.886278, 34.070061, 35.534100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898064, 34.240795, 35.702358>,  <27.917707, 34.525352, 35.982788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898064, 34.240795, 35.702358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291932, 0.661047, -0.691226,
		0.955177, -0.238612, 0.175215,
		-0.049109, -0.711394, -0.701075,
		27.883331, 34.027378, 35.492035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724726, 34.356949, 36.162556>,  <27.917707, 34.525352, 35.982788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724726, 34.356949, 36.162556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088549, 34.468975, 36.039745>,  <29.306843, 34.536190, 35.966057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088549, 34.468975, 36.039745>,  <28.724726, 34.356949, 36.162556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088549, 34.468975, 36.039745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029865, 0.692846, 0.720467,
		0.414499, -0.664477, 0.621820,
		0.909560, 0.280062, -0.307029,
		29.361416, 34.552994, 35.947636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175146, 34.349701, 36.718456>,  <28.724726, 34.356949, 36.162556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175146, 34.349701, 36.718456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329159, 34.605503, 36.452290>,  <29.421566, 34.758984, 36.292587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329159, 34.605503, 36.452290>,  <29.175146, 34.349701, 36.718456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329159, 34.605503, 36.452290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159637, 0.663990, 0.730502,
		0.908993, -0.387490, 0.153567,
		0.385029, 0.639506, -0.665420,
		29.444668, 34.797356, 36.252663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802580, 34.556664, 36.966938>,  <29.175146, 34.349701, 36.718456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802580, 34.556664, 36.966938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694317, 34.860947, 36.730949>,  <29.629358, 35.043518, 36.589355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694317, 34.860947, 36.730949>,  <29.802580, 34.556664, 36.966938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694317, 34.860947, 36.730949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235955, 0.646572, 0.725445,
		0.933311, 0.057141, -0.354493,
		-0.270658, 0.760710, -0.589970,
		29.613119, 35.089161, 36.553959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258299, 34.982506, 37.079651>,  <29.802580, 34.556664, 36.966938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258299, 34.982506, 37.079651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958826, 35.208542, 36.941002>,  <29.779142, 35.344162, 36.857811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958826, 35.208542, 36.941002>,  <30.258299, 34.982506, 37.079651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958826, 35.208542, 36.941002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016087, 0.538205, 0.842661,
		0.662733, 0.625310, -0.412036,
		-0.748683, 0.565087, -0.346626,
		29.734221, 35.378067, 36.837013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549337, 35.582535, 37.147472>,  <30.258299, 34.982506, 37.079651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549337, 35.582535, 37.147472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151045, 35.604156, 37.177395>,  <29.912069, 35.617130, 37.195347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151045, 35.604156, 37.177395>,  <30.549337, 35.582535, 37.147472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151045, 35.604156, 37.177395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091837, 0.500355, 0.860936,
		0.009106, 0.864131, -0.503184,
		-0.995732, 0.054050, 0.074803,
		29.852325, 35.620373, 37.199837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379013, 35.787342, 37.882477>,  <30.549337, 35.582535, 37.147472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379013, 35.787342, 37.882477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154324, 36.117405, 37.858555>,  <30.019510, 36.315445, 37.844200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154324, 36.117405, 37.858555>,  <30.379013, 35.787342, 37.882477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154324, 36.117405, 37.858555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580014, -0.444329, -0.682756,
		-0.589957, -0.348831, 0.728195,
		-0.561725, 0.825159, -0.059809,
		29.985806, 36.364952, 37.840611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718369, 35.627396, 37.843594>,  <30.379013, 35.787342, 37.882477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718369, 35.627396, 37.843594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725435, 35.972317, 37.641159>,  <29.729675, 36.179268, 37.519699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725435, 35.972317, 37.641159>,  <29.718369, 35.627396, 37.843594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725435, 35.972317, 37.641159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516990, -0.425375, -0.742817,
		-0.855809, 0.274766, 0.438286,
		0.017665, 0.862299, -0.506091,
		29.730734, 36.231007, 37.489330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064886, 35.682224, 37.667316>,  <29.718369, 35.627396, 37.843594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064886, 35.682224, 37.667316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313395, 35.887302, 37.430283>,  <29.462500, 36.010349, 37.288063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313395, 35.887302, 37.430283>,  <29.064886, 35.682224, 37.667316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313395, 35.887302, 37.430283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408825, -0.433078, -0.803309,
		-0.668492, 0.741339, -0.059455,
		0.621273, 0.512699, -0.592587,
		29.499777, 36.041111, 37.252506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645294, 36.039650, 37.083469>,  <29.064886, 35.682224, 37.667316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645294, 36.039650, 37.083469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028082, 35.958038, 37.000927>,  <29.257755, 35.909073, 36.951401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028082, 35.958038, 37.000927>,  <28.645294, 36.039650, 37.083469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028082, 35.958038, 37.000927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275628, -0.416645, -0.866277,
		0.090771, 0.885877, -0.454953,
		0.956969, -0.204031, -0.206353,
		29.315172, 35.896828, 36.939022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817509, 36.168575, 36.311729>,  <28.645294, 36.039650, 37.083469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817509, 36.168575, 36.311729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094097, 35.912281, 36.445194>,  <29.260050, 35.758507, 36.525272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094097, 35.912281, 36.445194>,  <28.817509, 36.168575, 36.311729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094097, 35.912281, 36.445194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048785, -0.419409, -0.906486,
		0.720757, 0.643084, -0.258750,
		0.691469, -0.640733, 0.333664,
		29.301538, 35.720062, 36.545292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115398, 35.866276, 35.717594>,  <28.817509, 36.168575, 36.311729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115398, 35.866276, 35.717594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266455, 35.619038, 35.993374>,  <29.357088, 35.470695, 36.158840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266455, 35.619038, 35.993374>,  <29.115398, 35.866276, 35.717594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266455, 35.619038, 35.993374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111341, -0.708871, -0.696495,
		0.919233, 0.339790, -0.198879,
		0.377642, -0.618098, 0.689450,
		29.379747, 35.433609, 36.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773327, 35.749939, 35.470070>,  <29.115398, 35.866276, 35.717594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773327, 35.749939, 35.470070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643028, 35.459728, 35.712559>,  <29.564850, 35.285603, 35.858051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643028, 35.459728, 35.712559>,  <29.773327, 35.749939, 35.470070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643028, 35.459728, 35.712559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101558, -0.664336, -0.740502,
		0.939987, -0.179650, 0.290088,
		-0.325747, -0.725523, 0.606222,
		29.545303, 35.242073, 35.894424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233311, 35.993080, 36.168900>,  <29.773327, 35.749939, 35.470070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233311, 35.993080, 36.168900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912285, 36.056355, 36.398983>,  <29.719669, 36.094318, 36.537033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912285, 36.056355, 36.398983>,  <30.233311, 35.993080, 36.168900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912285, 36.056355, 36.398983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590918, 0.343140, 0.730117,
		-0.081885, 0.925869, -0.368865,
		-0.802565, 0.158183, 0.575211,
		29.671515, 36.103809, 36.571545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232891, 36.741970, 36.327625>,  <30.233311, 35.993080, 36.168900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232891, 36.741970, 36.327625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047091, 36.505074, 36.590984>,  <29.935610, 36.362934, 36.749001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047091, 36.505074, 36.590984>,  <30.232891, 36.741970, 36.327625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047091, 36.505074, 36.590984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473880, 0.461837, 0.749763,
		-0.748114, 0.660267, 0.066129,
		-0.464503, -0.592245, 0.658394,
		29.907740, 36.327400, 36.788502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958860, 37.086777, 36.929783>,  <30.232891, 36.741970, 36.327625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958860, 37.086777, 36.929783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991302, 36.724388, 37.095985>,  <30.010767, 36.506954, 37.195705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991302, 36.724388, 37.095985>,  <29.958860, 37.086777, 36.929783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991302, 36.724388, 37.095985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435140, 0.407235, 0.803003,
		-0.896702, 0.115673, 0.427252,
		0.081106, -0.905969, 0.415502,
		30.015635, 36.452599, 37.220634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717239, 37.153961, 37.659290>,  <29.958860, 37.086777, 36.929783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717239, 37.153961, 37.659290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969131, 36.844009, 37.637367>,  <30.120266, 36.658039, 37.624214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969131, 36.844009, 37.637367>,  <29.717239, 37.153961, 37.659290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969131, 36.844009, 37.637367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533792, 0.380381, 0.755232,
		-0.564365, -0.504848, 0.653161,
		0.629728, -0.774880, -0.054810,
		30.158051, 36.611546, 37.620926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739470, 36.763847, 38.278561>,  <29.717239, 37.153961, 37.659290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739470, 36.763847, 38.278561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090570, 36.803993, 38.091167>,  <30.301231, 36.828079, 37.978733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090570, 36.803993, 38.091167>,  <29.739470, 36.763847, 38.278561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090570, 36.803993, 38.091167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325888, 0.591701, 0.737352,
		0.351205, -0.799886, 0.486660,
		0.877754, 0.100365, -0.468481,
		30.353897, 36.834103, 37.950623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304657, 36.697239, 38.739876>,  <29.739470, 36.763847, 38.278561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304657, 36.697239, 38.739876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448107, 36.925400, 38.444302>,  <30.534176, 37.062298, 38.266956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448107, 36.925400, 38.444302>,  <30.304657, 36.697239, 38.739876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448107, 36.925400, 38.444302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342314, 0.656086, 0.672586,
		0.868453, -0.494153, 0.040030,
		0.358623, 0.570406, -0.738935,
		30.555695, 37.096523, 38.222622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296759, 37.044914, 39.337963>,  <30.304657, 36.697239, 38.739876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296759, 37.044914, 39.337963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667452, 37.190796, 39.374088>,  <30.889868, 37.278324, 39.395763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667452, 37.190796, 39.374088>,  <30.296759, 37.044914, 39.337963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667452, 37.190796, 39.374088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334018, 0.909783, -0.246427,
		-0.172036, 0.198207, 0.964944,
		0.926734, 0.364703, 0.090311,
		30.945473, 37.300205, 39.401180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310610, 37.500591, 39.861755>,  <30.296759, 37.044914, 39.337963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310610, 37.500591, 39.861755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588751, 37.606480, 39.594501>,  <30.755636, 37.670013, 39.434151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588751, 37.606480, 39.594501>,  <30.310610, 37.500591, 39.861755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588751, 37.606480, 39.594501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480525, 0.862569, -0.158336,
		0.534398, 0.431156, 0.726996,
		0.695352, 0.264725, -0.668136,
		30.797356, 37.685898, 39.394062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602066, 38.156887, 39.997349>,  <30.310610, 37.500591, 39.861755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602066, 38.156887, 39.997349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644472, 38.105759, 39.602901>,  <30.669916, 38.075081, 39.366234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644472, 38.105759, 39.602901>,  <30.602066, 38.156887, 39.997349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644472, 38.105759, 39.602901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343179, 0.926067, -0.156931,
		0.933268, 0.355051, 0.054311,
		0.106014, -0.127820, -0.986115,
		30.676277, 38.067413, 39.307068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142052, 38.615417, 39.685181>,  <30.602066, 38.156887, 39.997349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142052, 38.615417, 39.685181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841402, 38.526482, 39.436787>,  <30.661013, 38.473122, 39.287750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841402, 38.526482, 39.436787>,  <31.142052, 38.615417, 39.685181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841402, 38.526482, 39.436787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415156, 0.891061, 0.183455,
		0.512547, 0.395696, -0.762050,
		-0.751625, -0.222341, -0.620986,
		30.615915, 38.459778, 39.250492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931898, 39.120800, 39.335125>,  <31.142052, 38.615417, 39.685181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931898, 39.120800, 39.335125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590252, 38.915585, 39.301018>,  <30.385263, 38.792454, 39.280552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590252, 38.915585, 39.301018>,  <30.931898, 39.120800, 39.335125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590252, 38.915585, 39.301018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497175, 0.757329, 0.423404,
		-0.152646, 0.404031, -0.901919,
		-0.854117, -0.513042, -0.085271,
		30.334017, 38.761673, 39.275436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166376, 39.208473, 38.679646>,  <30.931898, 39.120800, 39.335125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166376, 39.208473, 38.679646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839144, 38.986210, 38.620327>,  <30.642805, 38.852852, 38.584736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839144, 38.986210, 38.620327>,  <31.166376, 39.208473, 38.679646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839144, 38.986210, 38.620327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474246, 0.797662, -0.372594,
		0.325326, -0.234481, -0.916068,
		-0.818079, -0.555657, -0.148299,
		30.593719, 38.819511, 38.575836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032932, 39.153061, 37.992836>,  <31.166376, 39.208473, 38.679646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032932, 39.153061, 37.992836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678484, 39.100677, 38.170662>,  <30.465815, 39.069248, 38.277359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678484, 39.100677, 38.170662>,  <31.032932, 39.153061, 37.992836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678484, 39.100677, 38.170662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395139, 0.714756, -0.577053,
		-0.242190, -0.687005, -0.685105,
		-0.886120, -0.130955, 0.444569,
		30.412647, 39.061390, 38.304031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595970, 39.136024, 37.465061>,  <31.032932, 39.153061, 37.992836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595970, 39.136024, 37.465061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361942, 39.196262, 37.783813>,  <30.221525, 39.232403, 37.975063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361942, 39.196262, 37.783813>,  <30.595970, 39.136024, 37.465061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361942, 39.196262, 37.783813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575046, 0.615838, -0.538578,
		-0.571854, -0.773347, -0.273711,
		-0.585069, 0.150592, 0.796879,
		30.186422, 39.241440, 38.022877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871943, 38.967205, 37.318554>,  <30.595970, 39.136024, 37.465061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871943, 38.967205, 37.318554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861479, 39.235161, 37.615356>,  <29.855200, 39.395935, 37.793438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861479, 39.235161, 37.615356>,  <29.871943, 38.967205, 37.318554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861479, 39.235161, 37.615356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573242, 0.598040, -0.560126,
		-0.818969, -0.440000, 0.368362,
		-0.026161, 0.669886, 0.742003,
		29.853630, 39.436127, 37.837955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232580, 38.935108, 37.580101>,  <29.871943, 38.967205, 37.318554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232580, 38.935108, 37.580101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428175, 39.282291, 37.614834>,  <29.545532, 39.490601, 37.635674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428175, 39.282291, 37.614834>,  <29.232580, 38.935108, 37.580101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428175, 39.282291, 37.614834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660519, 0.433453, -0.613052,
		-0.569743, 0.242418, 0.785256,
		0.488987, 0.867958, 0.086835,
		29.574871, 39.542679, 37.640884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809328, 39.297455, 36.965279>,  <29.232580, 38.935108, 37.580101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809328, 39.297455, 36.965279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606302, 39.414265, 37.289524>,  <28.484486, 39.484348, 37.484074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606302, 39.414265, 37.289524>,  <28.809328, 39.297455, 36.965279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606302, 39.414265, 37.289524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859294, 0.240533, 0.451395,
		-0.063163, 0.925672, -0.373017,
		-0.507567, 0.292020, 0.810617,
		28.454033, 39.501869, 37.532711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191093, 39.897781, 37.224602>,  <28.809328, 39.297455, 36.965279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191093, 39.897781, 37.224602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996025, 39.774433, 37.551304>,  <28.878984, 39.700424, 37.747326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996025, 39.774433, 37.551304>,  <29.191093, 39.897781, 37.224602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996025, 39.774433, 37.551304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819678, 0.160296, 0.549939,
		-0.300506, 0.937664, 0.174592,
		-0.487671, -0.308370, 0.816753,
		28.849724, 39.681923, 37.796329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101128, 40.515091, 37.762886>,  <29.191093, 39.897781, 37.224602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101128, 40.515091, 37.762886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065893, 40.159443, 37.942535>,  <29.044752, 39.946056, 38.050327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065893, 40.159443, 37.942535>,  <29.101128, 40.515091, 37.762886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065893, 40.159443, 37.942535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698579, 0.266273, 0.664143,
		-0.710090, 0.372253, 0.597663,
		-0.088088, -0.889116, 0.449125,
		29.039467, 39.892708, 38.077274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766066, 40.665432, 38.199657>,  <29.101128, 40.515091, 37.762886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766066, 40.665432, 38.199657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638872, 40.308575, 38.071304>,  <29.562557, 40.094460, 37.994293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638872, 40.308575, 38.071304>,  <29.766066, 40.665432, 38.199657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638872, 40.308575, 38.071304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547783, -0.449123, 0.705848,
		-0.773835, 0.048671, 0.631514,
		-0.317982, -0.892143, -0.320886,
		29.543478, 40.040932, 37.975040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583382, 40.251419, 38.758049>,  <29.766066, 40.665432, 38.199657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583382, 40.251419, 38.758049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649008, 39.987045, 38.465130>,  <29.688383, 39.828423, 38.289379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649008, 39.987045, 38.465130>,  <29.583382, 40.251419, 38.758049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649008, 39.987045, 38.465130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392134, -0.637481, 0.663211,
		-0.905160, -0.395966, 0.154586,
		0.164063, -0.660930, -0.732294,
		29.698227, 39.788765, 38.245441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464928, 39.649109, 39.117458>,  <29.583382, 40.251419, 38.758049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464928, 39.649109, 39.117458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670332, 39.530350, 38.795425>,  <29.793575, 39.459095, 38.602207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670332, 39.530350, 38.795425>,  <29.464928, 39.649109, 39.117458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670332, 39.530350, 38.795425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328021, -0.799053, 0.503902,
		-0.792910, -0.522844, -0.312935,
		0.513513, -0.296900, -0.805080,
		29.824385, 39.441280, 38.553902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358261, 38.874416, 39.072170>,  <29.464928, 39.649109, 39.117458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358261, 38.874416, 39.072170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670837, 38.943039, 38.832199>,  <29.858383, 38.984211, 38.688217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670837, 38.943039, 38.832199>,  <29.358261, 38.874416, 39.072170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670837, 38.943039, 38.832199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488867, -0.765808, 0.417787,
		-0.387758, -0.619763, -0.682302,
		0.781442, 0.171555, -0.599931,
		29.905270, 38.994507, 38.652222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459654, 38.267914, 38.677151>,  <29.358261, 38.874416, 39.072170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459654, 38.267914, 38.677151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789858, 38.482632, 38.746872>,  <29.987980, 38.611462, 38.788704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789858, 38.482632, 38.746872>,  <29.459654, 38.267914, 38.677151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789858, 38.482632, 38.746872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517786, -0.843210, 0.144548,
		0.224568, -0.029074, -0.974025,
		0.825510, 0.536797, 0.174304,
		30.037512, 38.643669, 38.799164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934792, 38.106335, 38.246399>,  <29.459654, 38.267914, 38.677151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934792, 38.106335, 38.246399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139875, 38.255062, 38.555946>,  <30.262926, 38.344299, 38.741676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139875, 38.255062, 38.555946>,  <29.934792, 38.106335, 38.246399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139875, 38.255062, 38.555946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447767, -0.884869, 0.128496,
		0.732554, 0.280634, -0.620169,
		0.512708, 0.371822, 0.773873,
		30.293688, 38.366608, 38.788109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626076, 37.895111, 38.121170>,  <29.934792, 38.106335, 38.246399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626076, 37.895111, 38.121170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558577, 37.942432, 38.512585>,  <30.518076, 37.970825, 38.747433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558577, 37.942432, 38.512585>,  <30.626076, 37.895111, 38.121170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558577, 37.942432, 38.512585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578987, -0.791541, 0.195542,
		0.797683, 0.599556, 0.065077,
		-0.168750, 0.118302, 0.978534,
		30.507952, 37.977924, 38.806145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172569, 38.296669, 38.419487>,  <30.626076, 37.895111, 38.121170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172569, 38.296669, 38.419487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079498, 38.297092, 38.808510>,  <31.023655, 38.297348, 39.041924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079498, 38.297092, 38.808510>,  <31.172569, 38.296669, 38.419487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079498, 38.297092, 38.808510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450664, -0.886040, 0.108787,
		0.861837, 0.463607, 0.205682,
		-0.232677, 0.001063, 0.972554,
		31.009695, 38.297413, 39.100277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787592, 37.880791, 38.645733>,  <31.172569, 38.296669, 38.419487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787592, 37.880791, 38.645733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493053, 37.872349, 38.916241>,  <31.316330, 37.867283, 39.078545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493053, 37.872349, 38.916241>,  <31.787592, 37.880791, 38.645733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493053, 37.872349, 38.916241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265425, -0.928404, 0.260031,
		0.622368, 0.370973, 0.689229,
		-0.736348, -0.021104, 0.676274,
		31.272150, 37.866016, 39.119122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001820, 37.198853, 38.891670>,  <31.787592, 37.880791, 38.645733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001820, 37.198853, 38.891670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622555, 37.276066, 38.992649>,  <31.394997, 37.322395, 39.053238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622555, 37.276066, 38.992649>,  <32.001820, 37.198853, 38.891670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622555, 37.276066, 38.992649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111676, -0.946104, 0.303999,
		0.297528, 0.260047, 0.918615,
		-0.948159, 0.193036, 0.252451,
		31.338106, 37.333977, 39.068386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758204, 37.074501, 39.601776>,  <32.001820, 37.198853, 38.891670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758204, 37.074501, 39.601776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443781, 37.002239, 39.365311>,  <31.255127, 36.958881, 39.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443781, 37.002239, 39.365311>,  <31.758204, 37.074501, 39.601776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443781, 37.002239, 39.365311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139541, -0.879799, 0.454403,
		-0.602197, 0.439679, 0.666365,
		-0.786058, -0.180655, -0.591165,
		31.207964, 36.948044, 39.187962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226265, 37.763233, 39.558186>,  <31.758204, 37.074501, 39.601776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226265, 37.763233, 39.558186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606533, 37.886440, 39.543465>,  <32.834694, 37.960365, 39.534634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606533, 37.886440, 39.543465>,  <32.226265, 37.763233, 39.558186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606533, 37.886440, 39.543465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123785, 0.485455, 0.865454,
		0.284441, -0.818204, 0.499635,
		0.950669, 0.308018, -0.036802,
		32.891735, 37.978848, 39.532425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439934, 37.587837, 40.230453>,  <32.226265, 37.763233, 39.558186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439934, 37.587837, 40.230453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679157, 37.866493, 40.071953>,  <32.822693, 38.033688, 39.976852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679157, 37.866493, 40.071953>,  <32.439934, 37.587837, 40.230453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679157, 37.866493, 40.071953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016243, 0.483782, 0.875037,
		0.801284, -0.529764, 0.278017,
		0.598063, 0.696638, -0.396252,
		32.858578, 38.075485, 39.953075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129757, 37.585258, 40.469994>,  <32.439934, 37.587837, 40.230453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129757, 37.585258, 40.469994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028027, 37.957695, 40.365387>,  <32.966988, 38.181156, 40.302624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028027, 37.957695, 40.365387>,  <33.129757, 37.585258, 40.469994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028027, 37.957695, 40.365387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014392, 0.274023, 0.961616,
		0.967010, 0.240804, -0.083093,
		-0.254330, 0.931088, -0.261517,
		32.951729, 38.237022, 40.286930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258018, 37.907932, 41.091354>,  <33.129757, 37.585258, 40.469994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258018, 37.907932, 41.091354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110359, 38.218548, 40.887112>,  <33.021763, 38.404919, 40.764568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110359, 38.218548, 40.887112>,  <33.258018, 37.907932, 41.091354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110359, 38.218548, 40.887112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073884, 0.572190, 0.816786,
		0.926430, 0.263788, -0.268596,
		-0.369146, 0.776540, -0.510605,
		32.999615, 38.451511, 40.733929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711647, 38.453125, 41.172798>,  <33.258018, 37.907932, 41.091354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711647, 38.453125, 41.172798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351982, 38.594894, 41.070126>,  <33.136181, 38.679955, 41.008522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351982, 38.594894, 41.070126>,  <33.711647, 38.453125, 41.172798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351982, 38.594894, 41.070126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092558, 0.419267, 0.903133,
		0.427708, 0.835824, -0.344186,
		-0.899165, 0.354420, -0.256686,
		33.082233, 38.701221, 40.993118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671463, 39.159794, 41.346340>,  <33.711647, 38.453125, 41.172798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671463, 39.159794, 41.346340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298115, 39.016232, 41.345718>,  <33.074104, 38.930096, 41.345345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298115, 39.016232, 41.345718>,  <33.671463, 39.159794, 41.346340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298115, 39.016232, 41.345718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188278, 0.485943, 0.853470,
		-0.305562, 0.796897, -0.521140,
		-0.933372, -0.358907, -0.001553,
		33.018105, 38.908558, 41.345253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198093, 39.753910, 41.377457>,  <33.671463, 39.159794, 41.346340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198093, 39.753910, 41.377457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057415, 39.413601, 41.533661>,  <32.973007, 39.209415, 41.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057415, 39.413601, 41.533661>,  <33.198093, 39.753910, 41.377457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057415, 39.413601, 41.533661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139294, 0.460083, 0.876881,
		-0.925692, 0.254000, -0.280317,
		-0.351697, -0.850769, 0.390515,
		32.951904, 39.158371, 41.650814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035679, 40.014885, 42.030392>,  <33.198093, 39.753910, 41.377457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035679, 40.014885, 42.030392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921860, 39.632229, 42.005508>,  <32.853569, 39.402634, 41.990578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921860, 39.632229, 42.005508>,  <33.035679, 40.014885, 42.030392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921860, 39.632229, 42.005508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270217, 0.017780, 0.962635,
		-0.919791, 0.290726, -0.263560,
		-0.284549, -0.956641, -0.062205,
		32.836494, 39.345238, 41.986847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312897, 39.715240, 41.982914>,  <33.035679, 40.014885, 42.030392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312897, 39.715240, 41.982914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546299, 39.471607, 42.197781>,  <32.686340, 39.325428, 42.326702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546299, 39.471607, 42.197781>,  <32.312897, 39.715240, 41.982914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546299, 39.471607, 42.197781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588197, 0.139106, 0.796664,
		-0.559955, -0.780815, -0.277090,
		0.583502, -0.609079, 0.537166,
		32.721348, 39.288883, 42.358929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211185, 38.830711, 41.980328>,  <32.312897, 39.715240, 41.982914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211185, 38.830711, 41.980328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334557, 39.135906, 41.753094>,  <32.408577, 39.319023, 41.616753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334557, 39.135906, 41.753094>,  <32.211185, 38.830711, 41.980328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334557, 39.135906, 41.753094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040903, -0.607286, -0.793430,
		-0.950369, 0.221478, -0.218512,
		0.308426, 0.762989, -0.568086,
		32.427086, 39.364803, 41.582668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895983, 38.832340, 41.280701>,  <32.211185, 38.830711, 41.980328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895983, 38.832340, 41.280701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260654, 38.994663, 41.254894>,  <32.479458, 39.092056, 41.239410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260654, 38.994663, 41.254894>,  <31.895983, 38.832340, 41.280701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260654, 38.994663, 41.254894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217021, -0.608863, -0.763012,
		-0.348920, 0.681619, -0.643156,
		0.911678, 0.405809, -0.064519,
		32.534157, 39.116405, 41.235538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054302, 39.031002, 40.531971>,  <31.895983, 38.832340, 41.280701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054302, 39.031002, 40.531971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413433, 39.015507, 40.707428>,  <32.628910, 39.006210, 40.812702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413433, 39.015507, 40.707428>,  <32.054302, 39.031002, 40.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413433, 39.015507, 40.707428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373365, -0.461155, -0.804944,
		0.233468, 0.886474, -0.399571,
		0.897826, -0.038743, 0.438643,
		32.682781, 39.003883, 40.839020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423637, 39.403759, 40.106239>,  <32.054302, 39.031002, 40.531971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423637, 39.403759, 40.106239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646626, 39.135815, 40.302410>,  <32.780418, 38.975048, 40.420113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646626, 39.135815, 40.302410>,  <32.423637, 39.403759, 40.106239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646626, 39.135815, 40.302410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379601, -0.319695, -0.868158,
		0.738329, 0.670138, 0.076058,
		0.557470, -0.669858, 0.490425,
		32.813866, 38.934856, 40.449539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975685, 39.286224, 39.680328>,  <32.423637, 39.403759, 40.106239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975685, 39.286224, 39.680328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003258, 38.966801, 39.919510>,  <33.019802, 38.775146, 40.063019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003258, 38.966801, 39.919510>,  <32.975685, 39.286224, 39.680328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003258, 38.966801, 39.919510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324271, -0.548894, -0.770431,
		0.943449, 0.247006, 0.221114,
		0.068933, -0.798563, 0.597951,
		33.023937, 38.727230, 40.098896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721657, 39.033836, 39.690887>,  <32.975685, 39.286224, 39.680328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721657, 39.033836, 39.690887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468220, 38.733582, 39.765823>,  <33.316158, 38.553429, 39.810783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468220, 38.733582, 39.765823>,  <33.721657, 39.033836, 39.690887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468220, 38.733582, 39.765823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258163, -0.433396, -0.863435,
		0.729321, -0.498705, 0.468385,
		-0.633596, -0.750641, 0.187338,
		33.278141, 38.508389, 39.822025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109772, 38.488972, 39.546516>,  <33.721657, 39.033836, 39.690887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109772, 38.488972, 39.546516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738522, 38.340183, 39.540680>,  <33.515770, 38.250908, 39.537178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738522, 38.340183, 39.540680>,  <34.109772, 38.488972, 39.546516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738522, 38.340183, 39.540680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173066, -0.396445, -0.901599,
		0.329586, -0.839325, 0.432328,
		-0.928128, -0.371975, -0.014596,
		33.460083, 38.228592, 39.536301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138016, 37.807106, 39.448330>,  <34.109772, 38.488972, 39.546516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138016, 37.807106, 39.448330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801891, 37.959927, 39.294491>,  <33.600216, 38.051620, 39.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801891, 37.959927, 39.294491>,  <34.138016, 37.807106, 39.448330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801891, 37.959927, 39.294491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164250, -0.496675, -0.852253,
		-0.516633, -0.779324, 0.354605,
		-0.840305, 0.382058, -0.384603,
		33.549797, 38.074543, 39.179111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568668, 37.254440, 39.191826>,  <34.138016, 37.807106, 39.448330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568668, 37.254440, 39.191826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574738, 37.602474, 38.994759>,  <33.578381, 37.811295, 38.876518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574738, 37.602474, 38.994759>,  <33.568668, 37.254440, 39.191826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574738, 37.602474, 38.994759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311316, -0.472344, -0.824605,
		-0.950185, -0.140863, -0.278039,
		0.015174, 0.870085, -0.492667,
		33.579288, 37.863499, 38.846958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140949, 37.270363, 38.563824>,  <33.568668, 37.254440, 39.191826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140949, 37.270363, 38.563824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426704, 37.547649, 38.525661>,  <33.598156, 37.714020, 38.502766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426704, 37.547649, 38.525661>,  <33.140949, 37.270363, 38.563824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426704, 37.547649, 38.525661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213427, -0.345698, -0.913752,
		-0.666408, 0.632411, -0.394913,
		0.714387, 0.693217, -0.095403,
		33.641022, 37.755615, 38.497040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137127, 37.385410, 37.799065>,  <33.140949, 37.270363, 38.563824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137127, 37.385410, 37.799065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480865, 37.547169, 37.924282>,  <33.687107, 37.644222, 37.999413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480865, 37.547169, 37.924282>,  <33.137127, 37.385410, 37.799065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480865, 37.547169, 37.924282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329589, 0.030106, -0.943644,
		-0.391027, 0.914090, -0.107411,
		0.859342, 0.404393, 0.313046,
		33.738667, 37.668488, 38.018196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269405, 37.921978, 37.280552>,  <33.137127, 37.385410, 37.799065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269405, 37.921978, 37.280552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608555, 37.779930, 37.438034>,  <33.812046, 37.694702, 37.532524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608555, 37.779930, 37.438034>,  <33.269405, 37.921978, 37.280552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608555, 37.779930, 37.438034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349822, -0.183303, -0.918708,
		0.398416, 0.916674, -0.031191,
		0.847874, -0.355117, 0.393704,
		33.862915, 37.673393, 37.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823174, 38.189056, 36.795818>,  <33.269405, 37.921978, 37.280552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823174, 38.189056, 36.795818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026051, 37.904667, 36.990662>,  <34.147778, 37.734035, 37.107567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026051, 37.904667, 36.990662>,  <33.823174, 38.189056, 36.795818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026051, 37.904667, 36.990662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422173, -0.287783, -0.859623,
		0.751347, 0.641642, 0.154189,
		0.507197, -0.710969, 0.487108,
		34.178211, 37.691376, 37.136795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487961, 38.248241, 36.562603>,  <33.823174, 38.189056, 36.795818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487961, 38.248241, 36.562603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451851, 37.871246, 36.691326>,  <34.430183, 37.645050, 36.768562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451851, 37.871246, 36.691326>,  <34.487961, 38.248241, 36.562603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451851, 37.871246, 36.691326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413522, -0.329433, -0.848807,
		0.906008, 0.056449, 0.419480,
		-0.090276, -0.942490, 0.321812,
		34.424767, 37.588501, 36.787868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213909, 38.027966, 36.595737>,  <34.487961, 38.248241, 36.562603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213909, 38.027966, 36.595737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959991, 37.719028, 36.586502>,  <34.807640, 37.533669, 36.580959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959991, 37.719028, 36.586502>,  <35.213909, 38.027966, 36.595737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959991, 37.719028, 36.586502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490577, -0.379761, -0.784294,
		0.596973, -0.509189, 0.619960,
		-0.634790, -0.772340, -0.023089,
		34.769554, 37.487328, 36.579575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607342, 37.444176, 36.575256>,  <35.213909, 38.027966, 36.595737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607342, 37.444176, 36.575256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256775, 37.343754, 36.410889>,  <35.046432, 37.283501, 36.312267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256775, 37.343754, 36.410889>,  <35.607342, 37.444176, 36.575256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256775, 37.343754, 36.410889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481479, -0.442687, -0.756443,
		0.008003, -0.860812, 0.508861,
		-0.876421, -0.251059, -0.410921,
		34.993847, 37.268436, 36.287613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616299, 36.621128, 36.442112>,  <35.607342, 37.444176, 36.575256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616299, 36.621128, 36.442112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350368, 36.783646, 36.191376>,  <35.190811, 36.881157, 36.040936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350368, 36.783646, 36.191376>,  <35.616299, 36.621128, 36.442112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350368, 36.783646, 36.191376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357381, -0.563880, -0.744525,
		-0.655962, -0.719000, 0.229679,
		-0.664825, 0.406297, -0.626841,
		35.150921, 36.905533, 36.003323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463814, 36.015648, 36.012173>,  <35.616299, 36.621128, 36.442112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463814, 36.015648, 36.012173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351917, 36.350708, 35.824516>,  <35.284779, 36.551743, 35.711922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351917, 36.350708, 35.824516>,  <35.463814, 36.015648, 36.012173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351917, 36.350708, 35.824516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254944, -0.406293, -0.877456,
		-0.925606, -0.365068, -0.099895,
		-0.279744, 0.837646, -0.469140,
		35.267994, 36.602001, 35.683773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241978, 35.740417, 35.458569>,  <35.463814, 36.015648, 36.012173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241978, 35.740417, 35.458569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245724, 36.124329, 35.346325>,  <35.247971, 36.354675, 35.278980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245724, 36.124329, 35.346325>,  <35.241978, 35.740417, 35.458569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245724, 36.124329, 35.346325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345852, -0.266410, -0.899674,
		-0.938242, -0.088626, -0.334435,
		0.009362, 0.959777, -0.280609,
		35.248531, 36.412262, 35.262142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012772, 35.793793, 34.684185>,  <35.241978, 35.740417, 35.458569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012772, 35.793793, 34.684185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251289, 36.100140, 34.780422>,  <35.394398, 36.283947, 34.838165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251289, 36.100140, 34.780422>,  <35.012772, 35.793793, 34.684185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251289, 36.100140, 34.780422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432597, -0.054097, -0.899963,
		-0.676236, 0.640720, -0.363569,
		0.596292, 0.765866, 0.240591,
		35.430176, 36.329899, 34.852600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046272, 36.132381, 34.111984>,  <35.012772, 35.793793, 34.684185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046272, 36.132381, 34.111984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368122, 36.316021, 34.262615>,  <35.561234, 36.426205, 34.352993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368122, 36.316021, 34.262615>,  <35.046272, 36.132381, 34.111984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368122, 36.316021, 34.262615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338480, 0.166443, -0.926136,
		-0.487866, 0.872655, -0.021471,
		0.804623, 0.459098, 0.376578,
		35.609509, 36.453751, 34.375587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026928, 36.749752, 33.845547>,  <35.046272, 36.132381, 34.111984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026928, 36.749752, 33.845547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403744, 36.691547, 33.966465>,  <35.629833, 36.656624, 34.039017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403744, 36.691547, 33.966465>,  <35.026928, 36.749752, 33.845547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403744, 36.691547, 33.966465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335021, 0.360252, -0.870620,
		0.017780, 0.921437, 0.388121,
		0.942043, -0.145509, 0.302295,
		35.686356, 36.647896, 34.057152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369247, 37.303951, 33.691765>,  <35.026928, 36.749752, 33.845547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369247, 37.303951, 33.691765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672722, 37.047794, 33.739597>,  <35.854805, 36.894100, 33.768299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672722, 37.047794, 33.739597>,  <35.369247, 37.303951, 33.691765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672722, 37.047794, 33.739597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429039, 0.353032, -0.831441,
		0.490229, 0.682106, 0.542592,
		0.758683, -0.640390, 0.119584,
		35.900326, 36.855679, 33.775471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915703, 37.616615, 33.749123>,  <35.369247, 37.303951, 33.691765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915703, 37.616615, 33.749123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016724, 37.269104, 33.578743>,  <36.077335, 37.060596, 33.476513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016724, 37.269104, 33.578743>,  <35.915703, 37.616615, 33.749123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016724, 37.269104, 33.578743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478331, 0.494770, -0.725536,
		0.841080, -0.020509, 0.540522,
		0.252554, -0.868782, -0.425951,
		36.092491, 37.008469, 33.450958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630314, 37.750511, 33.608116>,  <35.915703, 37.616615, 33.749123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630314, 37.750511, 33.608116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555725, 37.432030, 33.377884>,  <36.510971, 37.240940, 33.239742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555725, 37.432030, 33.377884>,  <36.630314, 37.750511, 33.608116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555725, 37.432030, 33.377884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442432, 0.455036, -0.772784,
		0.877201, -0.398759, 0.267412,
		-0.186472, -0.796199, -0.575582,
		36.499783, 37.193169, 33.205208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238148, 37.419418, 33.314259>,  <36.630314, 37.750511, 33.608116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238148, 37.419418, 33.314259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949509, 37.313278, 33.058483>,  <36.776325, 37.249592, 32.905018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949509, 37.313278, 33.058483>,  <37.238148, 37.419418, 33.314259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949509, 37.313278, 33.058483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454450, 0.515227, -0.726648,
		0.522288, -0.814936, -0.251185,
		-0.721589, -0.265369, -0.639445,
		36.733028, 37.233673, 32.866650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605270, 37.347752, 32.734245>,  <37.238148, 37.419418, 33.314259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605270, 37.347752, 32.734245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223454, 37.365086, 32.616283>,  <36.994362, 37.375484, 32.545506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223454, 37.365086, 32.616283>,  <37.605270, 37.347752, 32.734245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223454, 37.365086, 32.616283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285139, 0.421048, -0.861054,
		0.086858, -0.906003, -0.414264,
		-0.954542, 0.043333, -0.294909,
		36.937092, 37.378086, 32.527809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565506, 37.149963, 32.010124>,  <37.605270, 37.347752, 32.734245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565506, 37.149963, 32.010124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220798, 37.352505, 32.022484>,  <37.013973, 37.474030, 32.029900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220798, 37.352505, 32.022484>,  <37.565506, 37.149963, 32.010124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220798, 37.352505, 32.022484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151718, 0.315369, -0.936762,
		-0.484078, -0.802587, -0.348599,
		-0.861771, 0.506356, 0.030896,
		36.962269, 37.504410, 32.031754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267887, 37.085629, 31.305092>,  <37.565506, 37.149963, 32.010124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267887, 37.085629, 31.305092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066174, 37.383766, 31.479517>,  <36.945145, 37.562649, 31.584171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066174, 37.383766, 31.479517>,  <37.267887, 37.085629, 31.305092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066174, 37.383766, 31.479517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003933, 0.502984, -0.864287,
		-0.863527, -0.437564, -0.250717,
		-0.504287, 0.745349, 0.436061,
		36.914886, 37.607372, 31.610334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796005, 37.268059, 30.744011>,  <37.267887, 37.085629, 31.305092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796005, 37.268059, 30.744011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849960, 37.547974, 31.024611>,  <36.882336, 37.715923, 31.192970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849960, 37.547974, 31.024611>,  <36.796005, 37.268059, 30.744011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849960, 37.547974, 31.024611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069717, 0.712919, -0.697773,
		-0.988405, 0.045218, 0.144954,
		0.134892, 0.699787, 0.701500,
		36.890427, 37.757912, 31.235060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288666, 37.723206, 30.685030>,  <36.796005, 37.268059, 30.744011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288666, 37.723206, 30.685030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597546, 37.927650, 30.836014>,  <36.782871, 38.050320, 30.926605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597546, 37.927650, 30.836014>,  <36.288666, 37.723206, 30.685030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597546, 37.927650, 30.836014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038722, 0.630818, -0.774964,
		-0.634205, 0.583808, 0.506905,
		0.772195, 0.511114, 0.377461,
		36.829205, 38.080986, 30.949253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147110, 38.478199, 30.495813>,  <36.288666, 37.723206, 30.685030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147110, 38.478199, 30.495813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528877, 38.460484, 30.613880>,  <36.757938, 38.449852, 30.684719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528877, 38.460484, 30.613880>,  <36.147110, 38.478199, 30.495813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528877, 38.460484, 30.613880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259077, 0.613980, -0.745592,
		-0.148202, 0.788078, 0.597470,
		0.954419, -0.044293, 0.295166,
		36.815205, 38.447197, 30.702431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372795, 39.127068, 30.402855>,  <36.147110, 38.478199, 30.495813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372795, 39.127068, 30.402855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701653, 38.899357, 30.402447>,  <36.898968, 38.762730, 30.402203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701653, 38.899357, 30.402447>,  <36.372795, 39.127068, 30.402855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701653, 38.899357, 30.402447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333924, 0.483695, -0.809033,
		0.461058, 0.664801, 0.587763,
		0.822144, -0.569279, -0.001019,
		36.948296, 38.728573, 30.402142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963001, 39.598709, 30.424456>,  <36.372795, 39.127068, 30.402855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963001, 39.598709, 30.424456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107136, 39.253120, 30.283766>,  <37.193615, 39.045769, 30.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107136, 39.253120, 30.283766>,  <36.963001, 39.598709, 30.424456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107136, 39.253120, 30.283766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342032, 0.473165, -0.811868,
		0.867856, 0.172242, 0.466004,
		0.360334, -0.863972, -0.351727,
		37.215237, 38.993927, 30.178247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681339, 39.708401, 30.184940>,  <36.963001, 39.598709, 30.424456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681339, 39.708401, 30.184940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597858, 39.364918, 29.997721>,  <37.547768, 39.158829, 29.885389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597858, 39.364918, 29.997721>,  <37.681339, 39.708401, 30.184940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597858, 39.364918, 29.997721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391829, 0.365078, -0.844505,
		0.896054, -0.359647, 0.260271,
		-0.208705, -0.858704, -0.468050,
		37.535248, 39.107307, 29.857306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274853, 39.503719, 29.756336>,  <37.681339, 39.708401, 30.184940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274853, 39.503719, 29.756336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954964, 39.319675, 29.602068>,  <37.763031, 39.209248, 29.509506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954964, 39.319675, 29.602068>,  <38.274853, 39.503719, 29.756336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954964, 39.319675, 29.602068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347784, 0.168595, -0.922292,
		0.489380, -0.871707, 0.025190,
		-0.799721, -0.460112, -0.385672,
		37.715046, 39.181641, 29.486366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542210, 39.104618, 29.310484>,  <38.274853, 39.503719, 29.756336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542210, 39.104618, 29.310484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159016, 39.105263, 29.195765>,  <37.929100, 39.105648, 29.126932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159016, 39.105263, 29.195765>,  <38.542210, 39.104618, 29.310484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159016, 39.105263, 29.195765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282332, 0.181201, -0.942048,
		0.050449, -0.983445, -0.174044,
		-0.957989, 0.001613, -0.286800,
		37.871620, 39.105747, 29.109724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446526, 38.633087, 28.801105>,  <38.542210, 39.104618, 29.310484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446526, 38.633087, 28.801105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131191, 38.873192, 28.747114>,  <37.941990, 39.017254, 28.714720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131191, 38.873192, 28.747114>,  <38.446526, 38.633087, 28.801105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131191, 38.873192, 28.747114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204357, 0.048537, -0.977692,
		-0.580319, -0.798330, -0.160931,
		-0.788333, 0.600261, -0.134977,
		37.894691, 39.053268, 28.706621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077106, 38.354313, 28.321877>,  <38.446526, 38.633087, 28.801105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077106, 38.354313, 28.321877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951515, 38.733795, 28.307032>,  <37.876160, 38.961483, 28.298124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951515, 38.733795, 28.307032>,  <38.077106, 38.354313, 28.321877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951515, 38.733795, 28.307032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225089, 0.036404, -0.973658,
		-0.922362, -0.314061, -0.224973,
		-0.313978, 0.948704, -0.037114,
		37.857323, 39.018406, 28.295897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857452, 38.479324, 27.626955>,  <38.077106, 38.354313, 28.321877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857452, 38.479324, 27.626955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876347, 38.857319, 27.756428>,  <37.887684, 39.084114, 27.834112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876347, 38.857319, 27.756428>,  <37.857452, 38.479324, 27.626955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876347, 38.857319, 27.756428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312277, 0.293831, -0.903408,
		-0.948816, 0.143754, -0.281217,
		0.047239, 0.944986, 0.323683,
		37.890518, 39.140816, 27.853533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600700, 38.882824, 27.058220>,  <37.857452, 38.479324, 27.626955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600700, 38.882824, 27.058220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799229, 39.140789, 27.290686>,  <37.918346, 39.295567, 27.430164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799229, 39.140789, 27.290686>,  <37.600700, 38.882824, 27.058220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799229, 39.140789, 27.290686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312533, 0.491818, -0.812674,
		-0.809929, 0.584983, 0.042545,
		0.496325, 0.644911, 0.581164,
		37.948128, 39.334263, 27.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371181, 39.533066, 27.033939>,  <37.600700, 38.882824, 27.058220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371181, 39.533066, 27.033939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751377, 39.578079, 27.149801>,  <37.979496, 39.605087, 27.219318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751377, 39.578079, 27.149801>,  <37.371181, 39.533066, 27.033939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751377, 39.578079, 27.149801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174981, 0.576467, -0.798165,
		-0.256798, 0.809334, 0.528237,
		0.950493, 0.112536, 0.289653,
		38.036526, 39.611839, 27.236698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573891, 40.266148, 26.844032>,  <37.371181, 39.533066, 27.033939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573891, 40.266148, 26.844032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915596, 40.066750, 26.903002>,  <38.120621, 39.947109, 26.938383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915596, 40.066750, 26.903002>,  <37.573891, 40.266148, 26.844032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915596, 40.066750, 26.903002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430752, 0.520046, -0.737566,
		0.291007, 0.693580, 0.658986,
		0.854264, -0.498496, 0.147424,
		38.171875, 39.917202, 26.947229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159451, 40.784039, 26.839163>,  <37.573891, 40.266148, 26.844032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159451, 40.784039, 26.839163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345413, 40.437172, 26.767729>,  <38.456989, 40.229053, 26.724869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345413, 40.437172, 26.767729>,  <38.159451, 40.784039, 26.839163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345413, 40.437172, 26.767729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692972, 0.481943, -0.536209,
		0.551048, 0.125533, 0.824977,
		0.464904, -0.867164, -0.178583,
		38.484886, 40.177021, 26.714153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816353, 40.950218, 26.795607>,  <38.159451, 40.784039, 26.839163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816353, 40.950218, 26.795607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799561, 40.598537, 26.605766>,  <38.789486, 40.387531, 26.491861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799561, 40.598537, 26.605766>,  <38.816353, 40.950218, 26.795607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799561, 40.598537, 26.605766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560176, 0.372624, -0.739834,
		0.827309, -0.296915, 0.476865,
		-0.041977, -0.879200, -0.474600,
		38.786968, 40.334778, 26.463387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464760, 40.868004, 26.566822>,  <38.816353, 40.950218, 26.795607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464760, 40.868004, 26.566822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243679, 40.628811, 26.334637>,  <39.111031, 40.485294, 26.195326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243679, 40.628811, 26.334637>,  <39.464760, 40.868004, 26.566822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243679, 40.628811, 26.334637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533152, 0.281616, -0.797772,
		0.640521, -0.750407, 0.163165,
		-0.552704, -0.597981, -0.580462,
		39.077869, 40.449417, 26.160498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990055, 40.536556, 26.120129>,  <39.464760, 40.868004, 26.566822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990055, 40.536556, 26.120129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639629, 40.501709, 25.930422>,  <39.429375, 40.480801, 25.816597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639629, 40.501709, 25.930422>,  <39.990055, 40.536556, 26.120129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639629, 40.501709, 25.930422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436390, 0.275189, -0.856642,
		0.205138, -0.957435, -0.203066,
		-0.876060, -0.087114, -0.474267,
		39.376812, 40.475574, 25.788141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245586, 40.375050, 25.429285>,  <39.990055, 40.536556, 26.120129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245586, 40.375050, 25.429285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861214, 40.421276, 25.328686>,  <39.630589, 40.449013, 25.268326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861214, 40.421276, 25.328686>,  <40.245586, 40.375050, 25.429285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861214, 40.421276, 25.328686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275688, 0.319062, -0.906750,
		-0.024548, -0.940661, -0.338458,
		-0.960934, 0.115567, -0.251497,
		39.572933, 40.455948, 25.253237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155342, 40.208904, 24.816368>,  <40.245586, 40.375050, 25.429285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155342, 40.208904, 24.816368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827538, 40.435925, 24.848099>,  <39.630856, 40.572136, 24.867138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827538, 40.435925, 24.848099>,  <40.155342, 40.208904, 24.816368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827538, 40.435925, 24.848099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353487, 0.609583, -0.709546,
		-0.451061, -0.553436, -0.700180,
		-0.819507, 0.567553, 0.079327,
		39.581684, 40.606190, 24.871897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839657, 40.172855, 24.196877>,  <40.155342, 40.208904, 24.816368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839657, 40.172855, 24.196877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753403, 40.530617, 24.353619>,  <39.701649, 40.745274, 24.447664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753403, 40.530617, 24.353619>,  <39.839657, 40.172855, 24.196877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753403, 40.530617, 24.353619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308495, 0.443143, -0.841698,
		-0.926461, -0.060617, -0.371477,
		-0.215639, 0.894399, 0.391855,
		39.688709, 40.798935, 24.471174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668716, 40.544968, 23.607334>,  <39.839657, 40.172855, 24.196877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668716, 40.544968, 23.607334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719288, 40.819527, 23.893797>,  <39.749630, 40.984261, 24.065674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719288, 40.819527, 23.893797>,  <39.668716, 40.544968, 23.607334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719288, 40.819527, 23.893797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458701, 0.599673, -0.655732,
		-0.879550, 0.411407, -0.239032,
		0.126432, 0.686394, 0.716155,
		39.757217, 41.025444, 24.108644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323723, 41.133358, 23.392473>,  <39.668716, 40.544968, 23.607334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323723, 41.133358, 23.392473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601948, 41.255569, 23.652580>,  <39.768883, 41.328896, 23.808645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601948, 41.255569, 23.652580>,  <39.323723, 41.133358, 23.392473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601948, 41.255569, 23.652580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315604, 0.683148, -0.658562,
		-0.645439, 0.663296, 0.378744,
		0.695559, 0.305529, 0.650269,
		39.810616, 41.347229, 23.847660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410519, 41.937122, 23.307400>,  <39.323723, 41.133358, 23.392473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410519, 41.937122, 23.307400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745083, 41.787899, 23.468019>,  <39.945824, 41.698364, 23.564392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745083, 41.787899, 23.468019>,  <39.410519, 41.937122, 23.307400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745083, 41.787899, 23.468019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548092, 0.565283, -0.616482,
		0.002992, 0.735720, 0.677279,
		0.836413, -0.373056, 0.401551,
		39.996006, 41.675983, 23.588486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880836, 42.440128, 23.565599>,  <39.410519, 41.937122, 23.307400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880836, 42.440128, 23.565599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128941, 42.130310, 23.516033>,  <40.277802, 41.944420, 23.486294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128941, 42.130310, 23.516033>,  <39.880836, 42.440128, 23.565599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128941, 42.130310, 23.516033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551534, 0.542974, -0.633237,
		0.557755, 0.324427, 0.763974,
		0.620258, -0.774549, -0.123914,
		40.315018, 41.897945, 23.478859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583828, 42.735275, 23.628418>,  <39.880836, 42.440128, 23.565599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583828, 42.735275, 23.628418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574749, 42.396725, 23.415577>,  <40.569302, 42.193596, 23.287872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574749, 42.396725, 23.415577>,  <40.583828, 42.735275, 23.628418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574749, 42.396725, 23.415577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622528, 0.404496, -0.669956,
		0.782268, -0.346456, 0.517712,
		-0.022698, -0.846375, -0.532103,
		40.567940, 42.142811, 23.255945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334503, 42.580936, 23.342138>,  <40.583828, 42.735275, 23.628418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334503, 42.580936, 23.342138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028194, 42.450909, 23.120178>,  <40.844410, 42.372890, 22.987001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028194, 42.450909, 23.120178>,  <41.334503, 42.580936, 23.342138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028194, 42.450909, 23.120178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426375, 0.389318, -0.816478,
		0.481447, -0.861835, -0.159528,
		-0.765776, -0.325072, -0.554901,
		40.798462, 42.353386, 22.953709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540737, 42.072308, 22.719570>,  <41.334503, 42.580936, 23.342138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540737, 42.072308, 22.719570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231972, 42.315052, 22.643820>,  <41.046711, 42.460701, 22.598370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231972, 42.315052, 22.643820>,  <41.540737, 42.072308, 22.719570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231972, 42.315052, 22.643820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414483, 0.254556, -0.873730,
		-0.482027, -0.752940, -0.448031,
		-0.771915, 0.606863, -0.189378,
		41.000397, 42.497112, 22.587006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218300, 42.385567, 22.891232>,  <41.540737, 42.072308, 22.719570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218300, 42.385567, 22.891232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495571, 42.446743, 23.172974>,  <42.661934, 42.483448, 23.342020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495571, 42.446743, 23.172974>,  <42.218300, 42.385567, 22.891232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495571, 42.446743, 23.172974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694859, 0.401464, 0.596655,
		-0.191522, -0.903015, 0.384555,
		0.693174, 0.152939, 0.704358,
		42.703522, 42.492626, 23.384281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972954, 41.940186, 23.587429>,  <42.218300, 42.385567, 22.891232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972954, 41.940186, 23.587429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220654, 42.247845, 23.650602>,  <42.369274, 42.432442, 23.688507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220654, 42.247845, 23.650602>,  <41.972954, 41.940186, 23.587429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220654, 42.247845, 23.650602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626272, 0.362492, 0.690205,
		0.473621, -0.526317, 0.706168,
		0.619247, 0.769149, 0.157933,
		42.406429, 42.478588, 23.697983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239521, 41.995026, 24.326042>,  <41.972954, 41.940186, 23.587429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239521, 41.995026, 24.326042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208603, 42.356689, 24.157982>,  <42.190052, 42.573689, 24.057146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208603, 42.356689, 24.157982>,  <42.239521, 41.995026, 24.326042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208603, 42.356689, 24.157982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494348, 0.331203, 0.803694,
		0.865820, 0.269824, 0.421367,
		-0.077298, 0.904157, -0.420149,
		42.185413, 42.627937, 24.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392338, 42.530602, 24.821461>,  <42.239521, 41.995026, 24.326042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392338, 42.530602, 24.821461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146240, 42.689198, 24.548914>,  <41.998581, 42.784355, 24.385386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146240, 42.689198, 24.548914>,  <42.392338, 42.530602, 24.821461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146240, 42.689198, 24.548914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604793, 0.317004, 0.730571,
		0.505663, 0.861569, 0.044761,
		-0.615248, 0.396493, -0.681368,
		41.961666, 42.808144, 24.344503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283421, 43.249672, 24.910315>,  <42.392338, 42.530602, 24.821461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283421, 43.249672, 24.910315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958633, 43.080509, 24.749390>,  <41.763760, 42.979012, 24.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958633, 43.080509, 24.749390>,  <42.283421, 43.249672, 24.910315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958633, 43.080509, 24.749390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486103, 0.108377, 0.867155,
		-0.323128, 0.899667, -0.293577,
		-0.811968, -0.422911, -0.402311,
		41.715042, 42.953636, 24.628696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632015, 43.638828, 24.996202>,  <42.283421, 43.249672, 24.910315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632015, 43.638828, 24.996202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508034, 43.265236, 24.925093>,  <41.433643, 43.041080, 24.882427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508034, 43.265236, 24.925093>,  <41.632015, 43.638828, 24.996202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508034, 43.265236, 24.925093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484923, -0.005534, 0.874539,
		-0.817789, 0.357274, -0.451195,
		-0.309953, -0.933983, -0.177776,
		41.415047, 42.985043, 24.871759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847595, 43.586136, 25.149792>,  <41.632015, 43.638828, 24.996202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847595, 43.586136, 25.149792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014736, 43.223625, 25.175283>,  <41.115021, 43.006119, 25.190578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014736, 43.223625, 25.175283>,  <40.847595, 43.586136, 25.149792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014736, 43.223625, 25.175283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539368, -0.191013, 0.820120,
		-0.731082, -0.377062, -0.568632,
		0.417852, -0.906277, 0.063730,
		41.140091, 42.951740, 25.194403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278122, 43.269371, 25.268484>,  <40.847595, 43.586136, 25.149792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278122, 43.269371, 25.268484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597530, 43.065186, 25.396101>,  <40.789177, 42.942673, 25.472672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597530, 43.065186, 25.396101>,  <40.278122, 43.269371, 25.268484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597530, 43.065186, 25.396101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463173, -0.182489, 0.867276,
		-0.384494, -0.840310, -0.382156,
		0.798521, -0.510467, 0.319043,
		40.837086, 42.912045, 25.491814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069820, 42.675240, 25.581749>,  <40.278122, 43.269371, 25.268484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069820, 42.675240, 25.581749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444092, 42.710224, 25.718487>,  <40.668655, 42.731216, 25.800529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444092, 42.710224, 25.718487>,  <40.069820, 42.675240, 25.581749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444092, 42.710224, 25.718487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326780, -0.150730, 0.933003,
		0.133134, -0.984698, -0.112452,
		0.935677, 0.087467, 0.341847,
		40.724796, 42.736465, 25.821041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258209, 42.035141, 25.830853>,  <40.069820, 42.675240, 25.581749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258209, 42.035141, 25.830853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484215, 42.302368, 26.024530>,  <40.619820, 42.462704, 26.140738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484215, 42.302368, 26.024530>,  <40.258209, 42.035141, 25.830853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484215, 42.302368, 26.024530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447306, -0.245100, 0.860142,
		0.693310, -0.702574, 0.160346,
		0.565012, 0.668068, 0.484196,
		40.653717, 42.502789, 26.169788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433548, 41.672688, 26.393021>,  <40.258209, 42.035141, 25.830853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433548, 41.672688, 26.393021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554256, 42.030697, 26.524395>,  <40.626682, 42.245502, 26.603220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554256, 42.030697, 26.524395>,  <40.433548, 41.672688, 26.393021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554256, 42.030697, 26.524395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397158, -0.195166, 0.896758,
		0.866717, -0.401060, 0.296568,
		0.301774, 0.895020, 0.328438,
		40.644791, 42.299202, 26.622927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667034, 41.556343, 26.993420>,  <40.433548, 41.672688, 26.393021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667034, 41.556343, 26.993420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573547, 41.945015, 27.007395>,  <40.517456, 42.178219, 27.015779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573547, 41.945015, 27.007395>,  <40.667034, 41.556343, 26.993420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573547, 41.945015, 27.007395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346138, -0.116726, 0.930894,
		0.908606, 0.205472, 0.363615,
		-0.233716, 0.971677, 0.034937,
		40.503433, 42.236519, 27.017876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908672, 41.727592, 27.644018>,  <40.667034, 41.556343, 26.993420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908672, 41.727592, 27.644018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694996, 42.052601, 27.550692>,  <40.566788, 42.247608, 27.494696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694996, 42.052601, 27.550692>,  <40.908672, 41.727592, 27.644018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694996, 42.052601, 27.550692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382573, 0.013754, 0.923823,
		0.753838, 0.582764, 0.303503,
		-0.534196, 0.812525, -0.233318,
		40.534737, 42.296360, 27.480696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991867, 42.102974, 28.196791>,  <40.908672, 41.727592, 27.644018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991867, 42.102974, 28.196791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653530, 42.237625, 28.031271>,  <40.450527, 42.318417, 27.931959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653530, 42.237625, 28.031271>,  <40.991867, 42.102974, 28.196791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653530, 42.237625, 28.031271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467229, -0.093239, 0.879206,
		0.257380, 0.937011, 0.236147,
		-0.845844, 0.336625, -0.413801,
		40.399776, 42.338612, 27.907131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691410, 42.473289, 28.686672>,  <40.991867, 42.102974, 28.196791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691410, 42.473289, 28.686672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395691, 42.364109, 28.440443>,  <40.218258, 42.298599, 28.292706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395691, 42.364109, 28.440443>,  <40.691410, 42.473289, 28.686672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395691, 42.364109, 28.440443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520289, -0.348780, 0.779520,
		-0.427471, 0.896577, 0.115840,
		-0.739302, -0.272951, -0.615573,
		40.173901, 42.282223, 28.255772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115059, 42.764500, 28.940308>,  <40.691410, 42.473289, 28.686672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115059, 42.764500, 28.940308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997616, 42.452934, 28.718645>,  <39.927151, 42.265995, 28.585648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997616, 42.452934, 28.718645>,  <40.115059, 42.764500, 28.940308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997616, 42.452934, 28.718645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628771, -0.279287, 0.725704,
		-0.720028, 0.561510, -0.407757,
		-0.293608, -0.778913, -0.554155,
		39.909534, 42.219261, 28.552399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397015, 42.825470, 29.019133>,  <40.115059, 42.764500, 28.940308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397015, 42.825470, 29.019133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458736, 42.456596, 28.877277>,  <39.495770, 42.235271, 28.792164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458736, 42.456596, 28.877277>,  <39.397015, 42.825470, 29.019133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458736, 42.456596, 28.877277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593140, -0.373520, 0.713210,
		-0.790174, 0.100298, -0.604620,
		0.154304, -0.922184, -0.354636,
		39.505028, 42.179939, 28.770887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748535, 42.548950, 29.021584>,  <39.397015, 42.825470, 29.019133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748535, 42.548950, 29.021584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011600, 42.247860, 29.033407>,  <39.169441, 42.067204, 29.040503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011600, 42.247860, 29.033407>,  <38.748535, 42.548950, 29.021584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011600, 42.247860, 29.033407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499415, -0.406295, 0.765186,
		-0.563967, -0.518000, -0.643131,
		0.657668, -0.752729, 0.029560,
		39.208900, 42.022041, 29.042274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335251, 42.028187, 29.010973>,  <38.748535, 42.548950, 29.021584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335251, 42.028187, 29.010973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686104, 41.886532, 29.140726>,  <38.896614, 41.801537, 29.218578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686104, 41.886532, 29.140726>,  <38.335251, 42.028187, 29.010973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686104, 41.886532, 29.140726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435918, -0.303651, 0.847214,
		-0.201535, -0.884522, -0.420718,
		0.877131, -0.354142, 0.324383,
		38.949242, 41.780289, 29.238041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221279, 41.357204, 29.312788>,  <38.335251, 42.028187, 29.010973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221279, 41.357204, 29.312788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585991, 41.423706, 29.462997>,  <38.804817, 41.463608, 29.553123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585991, 41.423706, 29.462997>,  <38.221279, 41.357204, 29.312788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585991, 41.423706, 29.462997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279091, -0.419956, 0.863565,
		0.301273, -0.892187, -0.336507,
		0.911780, 0.166253, 0.375523,
		38.859524, 41.473583, 29.575655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476936, 40.667568, 29.640017>,  <38.221279, 41.357204, 29.312788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476936, 40.667568, 29.640017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647552, 40.987141, 29.809616>,  <38.749924, 41.178883, 29.911375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647552, 40.987141, 29.809616>,  <38.476936, 40.667568, 29.640017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647552, 40.987141, 29.809616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416158, -0.242855, 0.876261,
		0.803042, -0.550210, 0.228894,
		0.426540, 0.798931, 0.423997,
		38.775513, 41.226818, 29.936815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667530, 40.431789, 30.245657>,  <38.476936, 40.667568, 29.640017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667530, 40.431789, 30.245657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725391, 40.822628, 30.308077>,  <38.760109, 41.057133, 30.345530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725391, 40.822628, 30.308077>,  <38.667530, 40.431789, 30.245657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725391, 40.822628, 30.308077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181927, -0.128757, 0.974846,
		0.972615, -0.169401, 0.159136,
		0.144650, 0.977100, 0.156050,
		38.768787, 41.115757, 30.354893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144554, 40.445011, 30.760288>,  <38.667530, 40.431789, 30.245657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144554, 40.445011, 30.760288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937897, 40.787201, 30.746199>,  <38.813904, 40.992516, 30.737745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937897, 40.787201, 30.746199>,  <39.144554, 40.445011, 30.760288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937897, 40.787201, 30.746199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196632, -0.078507, 0.977329,
		0.833319, 0.511853, 0.208774,
		-0.516639, 0.855479, -0.035225,
		38.782906, 41.043846, 30.735632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269642, 40.892960, 31.297766>,  <39.144554, 40.445011, 30.760288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269642, 40.892960, 31.297766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911758, 41.032043, 31.185627>,  <38.697029, 41.115494, 31.118343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911758, 41.032043, 31.185627>,  <39.269642, 40.892960, 31.297766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911758, 41.032043, 31.185627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257631, 0.110973, 0.959849,
		0.364862, 0.931011, -0.009708,
		-0.894708, 0.347711, -0.280348,
		38.643345, 41.136356, 31.101522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063831, 41.370773, 31.848867>,  <39.269642, 40.892960, 31.297766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063831, 41.370773, 31.848867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723202, 41.301449, 31.650961>,  <38.518826, 41.259853, 31.532217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723202, 41.301449, 31.650961>,  <39.063831, 41.370773, 31.848867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723202, 41.301449, 31.650961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512530, 0.076865, 0.855222,
		-0.110192, 0.981863, -0.154285,
		-0.851569, -0.173314, -0.494764,
		38.467731, 41.249454, 31.502531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624226, 41.943871, 32.149319>,  <39.063831, 41.370773, 31.848867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624226, 41.943871, 32.149319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380795, 41.666656, 31.994745>,  <38.234734, 41.500328, 31.902000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380795, 41.666656, 31.994745>,  <38.624226, 41.943871, 32.149319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380795, 41.666656, 31.994745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517692, -0.022294, 0.855276,
		-0.601353, 0.720558, -0.345211,
		-0.608580, -0.693036, -0.386434,
		38.198219, 41.458744, 31.878815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829063, 42.162342, 32.400486>,  <38.624226, 41.943871, 32.149319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829063, 42.162342, 32.400486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815948, 41.771786, 32.315083>,  <37.808079, 41.537453, 32.263840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815948, 41.771786, 32.315083>,  <37.829063, 42.162342, 32.400486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815948, 41.771786, 32.315083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569429, -0.157308, 0.806849,
		-0.821386, 0.148031, -0.550828,
		-0.032789, -0.976392, -0.213504,
		37.806110, 41.478867, 32.251030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124863, 41.953873, 32.543255>,  <37.829063, 42.162342, 32.400486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124863, 41.953873, 32.543255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341480, 41.617691, 32.550804>,  <37.471451, 41.415981, 32.555332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341480, 41.617691, 32.550804>,  <37.124863, 41.953873, 32.543255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341480, 41.617691, 32.550804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431297, -0.258499, 0.864385,
		-0.721602, -0.476244, -0.502477,
		0.541548, -0.840458, 0.018869,
		37.503944, 41.365555, 32.556465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625710, 41.342861, 32.439888>,  <37.124863, 41.953873, 32.543255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625710, 41.342861, 32.439888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955631, 41.243641, 32.643131>,  <37.153584, 41.184109, 32.765076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955631, 41.243641, 32.643131>,  <36.625710, 41.342861, 32.439888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955631, 41.243641, 32.643131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532877, -0.040532, 0.845221,
		-0.189065, -0.967898, -0.165613,
		0.824801, -0.248053, 0.508108,
		37.203072, 41.169224, 32.795563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330791, 40.925606, 32.833549>,  <36.625710, 41.342861, 32.439888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330791, 40.925606, 32.833549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698666, 40.936127, 32.990265>,  <36.919388, 40.942440, 33.084293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698666, 40.936127, 32.990265>,  <36.330791, 40.925606, 32.833549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698666, 40.936127, 32.990265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336456, -0.461616, 0.820797,
		0.202447, -0.886690, -0.415688,
		0.919681, 0.026307, 0.391785,
		36.974571, 40.944019, 33.107800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501755, 40.263256, 33.022064>,  <36.330791, 40.925606, 32.833549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501755, 40.263256, 33.022064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748821, 40.479862, 33.250187>,  <36.897060, 40.609825, 33.387062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748821, 40.479862, 33.250187>,  <36.501755, 40.263256, 33.022064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748821, 40.479862, 33.250187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356599, -0.453501, 0.816807,
		0.700948, -0.707885, -0.087009,
		0.617665, 0.541512, 0.570311,
		36.934120, 40.642315, 33.421280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681347, 39.825268, 33.564945>,  <36.501755, 40.263256, 33.022064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681347, 39.825268, 33.564945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812389, 40.175148, 33.707809>,  <36.891014, 40.385078, 33.793530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812389, 40.175148, 33.707809>,  <36.681347, 39.825268, 33.564945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812389, 40.175148, 33.707809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098710, -0.344268, 0.933668,
		0.939642, -0.341135, -0.026444,
		0.327611, 0.874704, 0.357162,
		36.910671, 40.437557, 33.814957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266186, 39.661320, 34.080387>,  <36.681347, 39.825268, 33.564945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266186, 39.661320, 34.080387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087765, 40.010731, 34.158340>,  <36.980713, 40.220379, 34.205112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087765, 40.010731, 34.158340>,  <37.266186, 39.661320, 34.080387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087765, 40.010731, 34.158340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109319, -0.269292, 0.956834,
		0.888303, 0.405497, 0.215613,
		-0.446056, 0.873529, 0.194885,
		36.953949, 40.272789, 34.216805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628307, 39.931885, 34.645565>,  <37.266186, 39.661320, 34.080387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628307, 39.931885, 34.645565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285534, 40.138000, 34.640728>,  <37.079868, 40.261669, 34.637825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285534, 40.138000, 34.640728>,  <37.628307, 39.931885, 34.645565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285534, 40.138000, 34.640728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149784, -0.226507, 0.962424,
		0.493186, 0.826543, 0.271283,
		-0.856932, 0.515287, -0.012093,
		37.028454, 40.292587, 34.637100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638794, 40.265308, 35.247238>,  <37.628307, 39.931885, 34.645565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638794, 40.265308, 35.247238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248871, 40.264870, 35.158016>,  <37.014915, 40.264606, 35.104485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248871, 40.264870, 35.158016>,  <37.638794, 40.265308, 35.247238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248871, 40.264870, 35.158016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222750, -0.047353, 0.973725,
		-0.011632, 0.998878, 0.045915,
		-0.974806, -0.001099, -0.223051,
		36.956429, 40.264542, 35.091103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366531, 40.801350, 35.615433>,  <37.638794, 40.265308, 35.247238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366531, 40.801350, 35.615433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060261, 40.552788, 35.548988>,  <36.876499, 40.403648, 35.509121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060261, 40.552788, 35.548988>,  <37.366531, 40.801350, 35.615433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060261, 40.552788, 35.548988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170169, -0.053346, 0.983970,
		-0.620307, 0.781669, -0.064899,
		-0.765677, -0.621407, -0.166107,
		36.830559, 40.366367, 35.499157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834339, 41.040127, 36.066113>,  <37.366531, 40.801350, 35.615433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834339, 41.040127, 36.066113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736847, 40.662453, 35.977474>,  <36.678352, 40.435848, 35.924290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736847, 40.662453, 35.977474>,  <36.834339, 41.040127, 36.066113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736847, 40.662453, 35.977474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443127, -0.094832, 0.891429,
		-0.862691, 0.315463, -0.395282,
		-0.243727, -0.944188, -0.221600,
		36.663731, 40.379196, 35.910995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180138, 40.995262, 36.358608>,  <36.834339, 41.040127, 36.066113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180138, 40.995262, 36.358608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311447, 40.624657, 36.285061>,  <36.390232, 40.402294, 36.240932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311447, 40.624657, 36.285061>,  <36.180138, 40.995262, 36.358608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311447, 40.624657, 36.285061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401553, -0.313077, 0.860662,
		-0.854979, -0.208702, -0.474820,
		0.328277, -0.926513, -0.183869,
		36.409931, 40.346703, 36.229900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622303, 40.585732, 36.510666>,  <36.180138, 40.995262, 36.358608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622303, 40.585732, 36.510666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919300, 40.317806, 36.507744>,  <36.097500, 40.157051, 36.505989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919300, 40.317806, 36.507744>,  <35.622303, 40.585732, 36.510666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919300, 40.317806, 36.507744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420571, -0.474640, 0.773199,
		-0.521371, -0.571019, -0.634121,
		0.742491, -0.669816, -0.007309,
		36.142048, 40.116863, 36.505550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220829, 39.972874, 36.561691>,  <35.622303, 40.585732, 36.510666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220829, 39.972874, 36.561691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593384, 39.872528, 36.667202>,  <35.816917, 39.812321, 36.730511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593384, 39.872528, 36.667202>,  <35.220829, 39.972874, 36.561691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593384, 39.872528, 36.667202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345398, -0.380211, 0.857986,
		-0.114941, -0.890230, -0.440771,
		0.931391, -0.250859, 0.263782,
		35.872803, 39.797272, 36.746338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168797, 39.289726, 36.706779>,  <35.220829, 39.972874, 36.561691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168797, 39.289726, 36.706779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508930, 39.392254, 36.890621>,  <35.713009, 39.453770, 37.000927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508930, 39.392254, 36.890621>,  <35.168797, 39.289726, 36.706779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508930, 39.392254, 36.890621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318699, -0.444158, 0.837350,
		0.418761, -0.858502, -0.295996,
		0.850335, 0.256316, 0.459600,
		35.764030, 39.469151, 37.028500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416012, 38.766178, 37.044750>,  <35.168797, 39.289726, 36.706779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416012, 38.766178, 37.044750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610695, 39.056358, 37.239410>,  <35.727505, 39.230469, 37.356205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610695, 39.056358, 37.239410>,  <35.416012, 38.766178, 37.044750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610695, 39.056358, 37.239410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332236, -0.361499, 0.871170,
		0.807918, -0.585690, 0.065077,
		0.486711, 0.725455, 0.486649,
		35.756710, 39.273994, 37.385406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865536, 38.423275, 37.593315>,  <35.416012, 38.766178, 37.044750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865536, 38.423275, 37.593315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813900, 38.804306, 37.703533>,  <35.782917, 39.032925, 37.769665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813900, 38.804306, 37.703533>,  <35.865536, 38.423275, 37.593315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813900, 38.804306, 37.703533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342027, -0.303589, 0.889298,
		0.930781, 0.020558, 0.364999,
		-0.129092, 0.952581, 0.275543,
		35.775173, 39.090080, 37.786198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085125, 38.468987, 38.188694>,  <35.865536, 38.423275, 37.593315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085125, 38.468987, 38.188694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844093, 38.788189, 38.184937>,  <35.699474, 38.979710, 38.182682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844093, 38.788189, 38.184937>,  <36.085125, 38.468987, 38.188694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844093, 38.788189, 38.184937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375637, -0.273222, 0.885577,
		0.704126, 0.537161, 0.464398,
		-0.602581, 0.798003, -0.009395,
		35.663319, 39.027588, 38.182117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616623, 37.943726, 38.022591>,  <36.085125, 38.468987, 38.188694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616623, 37.943726, 38.022591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955276, 37.957367, 38.235023>,  <37.158466, 37.965553, 38.362484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955276, 37.957367, 38.235023>,  <36.616623, 37.943726, 38.022591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955276, 37.957367, 38.235023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499692, 0.292394, -0.815361,
		-0.183093, 0.955690, 0.230508,
		0.846632, 0.034104, 0.531086,
		37.209267, 37.967598, 38.394348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948841, 38.633545, 37.993404>,  <36.616623, 37.943726, 38.022591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948841, 38.633545, 37.993404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214962, 38.337921, 38.035664>,  <37.374634, 38.160545, 38.061020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214962, 38.337921, 38.035664>,  <36.948841, 38.633545, 37.993404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214962, 38.337921, 38.035664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545331, 0.384431, -0.744867,
		0.509886, 0.553177, 0.658796,
		0.665305, -0.739059, 0.105648,
		37.414555, 38.116203, 38.067360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547832, 38.937222, 37.813858>,  <36.948841, 38.633545, 37.993404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547832, 38.937222, 37.813858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620693, 38.547672, 37.759621>,  <37.664410, 38.313942, 37.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620693, 38.547672, 37.759621>,  <37.547832, 38.937222, 37.813858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620693, 38.547672, 37.759621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689358, 0.224816, -0.688653,
		0.701145, 0.031971, 0.712301,
		0.182154, -0.973877, -0.135589,
		37.675339, 38.255508, 37.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228935, 38.998573, 37.613049>,  <37.547832, 38.937222, 37.813858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228935, 38.998573, 37.613049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150360, 38.620811, 37.507584>,  <38.103214, 38.394154, 37.444305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150360, 38.620811, 37.507584>,  <38.228935, 38.998573, 37.613049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150360, 38.620811, 37.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569225, 0.109112, -0.814909,
		0.798370, -0.310164, 0.516143,
		-0.196438, -0.944401, -0.263665,
		38.091427, 38.337490, 37.428486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903545, 38.670879, 37.410694>,  <38.228935, 38.998573, 37.613049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903545, 38.670879, 37.410694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580818, 38.506126, 37.241276>,  <38.387180, 38.407272, 37.139626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580818, 38.506126, 37.241276>,  <38.903545, 38.670879, 37.410694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580818, 38.506126, 37.241276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485884, -0.054779, -0.872305,
		0.336088, -0.909588, 0.244325,
		-0.806822, -0.411884, -0.423543,
		38.338772, 38.382561, 37.114212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215694, 38.137051, 36.981819>,  <38.903545, 38.670879, 37.410694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215694, 38.137051, 36.981819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841957, 38.151234, 36.839981>,  <38.617714, 38.159744, 36.754879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841957, 38.151234, 36.839981>,  <39.215694, 38.137051, 36.981819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841957, 38.151234, 36.839981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354807, -0.000339, -0.934940,
		-0.033276, -0.999371, -0.012266,
		-0.934347, 0.035463, -0.354595,
		38.561653, 38.161873, 36.733604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118954, 37.596848, 36.507080>,  <39.215694, 38.137051, 36.981819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118954, 37.596848, 36.507080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843716, 37.875954, 36.427433>,  <38.678574, 38.043419, 36.379646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843716, 37.875954, 36.427433>,  <39.118954, 37.596848, 36.507080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843716, 37.875954, 36.427433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243608, -0.036342, -0.969193,
		-0.683509, -0.715400, -0.144975,
		-0.688092, 0.697769, -0.199117,
		38.637287, 38.085285, 36.367699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957363, 37.411381, 35.862000>,  <39.118954, 37.596848, 36.507080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957363, 37.411381, 35.862000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816147, 37.784298, 35.893490>,  <38.731415, 38.008049, 35.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816147, 37.784298, 35.893490>,  <38.957363, 37.411381, 35.862000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816147, 37.784298, 35.893490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231744, 0.168658, -0.958044,
		-0.906452, -0.319987, -0.275596,
		-0.353043, 0.932289, 0.078725,
		38.710236, 38.063984, 35.917107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570755, 37.534008, 35.307919>,  <38.957363, 37.411381, 35.862000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570755, 37.534008, 35.307919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669926, 37.903271, 35.425438>,  <38.729427, 38.124828, 35.495949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669926, 37.903271, 35.425438>,  <38.570755, 37.534008, 35.307919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669926, 37.903271, 35.425438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270592, 0.225210, -0.935981,
		-0.930221, 0.311559, -0.193961,
		0.247931, 0.923153, 0.293800,
		38.744305, 38.180218, 35.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403229, 37.887589, 34.706741>,  <38.570755, 37.534008, 35.307919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403229, 37.887589, 34.706741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593334, 38.185291, 34.894447>,  <38.707397, 38.363911, 35.007069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593334, 38.185291, 34.894447>,  <38.403229, 37.887589, 34.706741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593334, 38.185291, 34.894447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430708, 0.268270, -0.861697,
		-0.767211, 0.611651, -0.193056,
		0.475267, 0.744254, 0.469263,
		38.735916, 38.408566, 35.035225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349190, 38.611187, 34.313080>,  <38.403229, 37.887589, 34.706741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349190, 38.611187, 34.313080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685097, 38.573536, 34.526966>,  <38.886642, 38.550945, 34.655300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685097, 38.573536, 34.526966>,  <38.349190, 38.611187, 34.313080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685097, 38.573536, 34.526966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541239, 0.223039, -0.810749,
		-0.042953, 0.970255, 0.238245,
		0.839771, -0.094123, 0.534720,
		38.937027, 38.545300, 34.687382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692146, 39.242596, 34.237354>,  <38.349190, 38.611187, 34.313080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692146, 39.242596, 34.237354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997982, 39.003227, 34.333096>,  <39.181484, 38.859608, 34.390541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997982, 39.003227, 34.333096>,  <38.692146, 39.242596, 34.237354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997982, 39.003227, 34.333096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588164, 0.495989, -0.638794,
		0.263553, 0.629195, 0.731200,
		0.764593, -0.598422, 0.239350,
		39.227360, 38.823700, 34.404900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282978, 39.746014, 34.427868>,  <38.692146, 39.242596, 34.237354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282978, 39.746014, 34.427868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414230, 39.381802, 34.327255>,  <39.492981, 39.163273, 34.266888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414230, 39.381802, 34.327255>,  <39.282978, 39.746014, 34.427868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414230, 39.381802, 34.327255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657087, 0.411304, -0.631716,
		0.678652, 0.042007, 0.733258,
		0.328129, -0.910529, -0.251531,
		39.512669, 39.108643, 34.251797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954014, 39.873890, 34.376545>,  <39.282978, 39.746014, 34.427868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954014, 39.873890, 34.376545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886116, 39.534946, 34.175282>,  <39.845375, 39.331581, 34.054523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886116, 39.534946, 34.175282>,  <39.954014, 39.873890, 34.376545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886116, 39.534946, 34.175282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630853, 0.298812, -0.716056,
		0.757107, -0.438964, 0.483838,
		-0.169747, -0.847362, -0.503154,
		39.835194, 39.280739, 34.024334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563194, 39.595707, 34.152107>,  <39.954014, 39.873890, 34.376545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563194, 39.595707, 34.152107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300797, 39.415371, 33.909981>,  <40.143356, 39.307167, 33.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300797, 39.415371, 33.909981>,  <40.563194, 39.595707, 34.152107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300797, 39.415371, 33.909981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588345, 0.196917, -0.784266,
		0.472779, -0.870611, 0.136075,
		-0.655995, -0.450844, -0.605318,
		40.103996, 39.280117, 33.728386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938599, 39.268593, 33.669006>,  <40.563194, 39.595707, 34.152107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938599, 39.268593, 33.669006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581715, 39.309620, 33.493076>,  <40.367584, 39.334236, 33.387520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581715, 39.309620, 33.493076>,  <40.938599, 39.268593, 33.669006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581715, 39.309620, 33.493076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450789, 0.261424, -0.853491,
		0.027440, -0.959759, -0.279481,
		-0.892209, 0.102567, -0.439823,
		40.314053, 39.340389, 33.361130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989479, 38.948185, 32.940208>,  <40.938599, 39.268593, 33.669006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989479, 38.948185, 32.940208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685448, 39.207981, 32.931843>,  <40.503029, 39.363861, 32.926823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685448, 39.207981, 32.931843>,  <40.989479, 38.948185, 32.940208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685448, 39.207981, 32.931843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261421, 0.276153, -0.924877,
		-0.594929, -0.708446, -0.379689,
		-0.760078, 0.649495, -0.020911,
		40.457424, 39.402828, 32.925571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760143, 38.886818, 32.296673>,  <40.989479, 38.948185, 32.940208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760143, 38.886818, 32.296673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595940, 39.233856, 32.408932>,  <40.497417, 39.442078, 32.476288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595940, 39.233856, 32.408932>,  <40.760143, 38.886818, 32.296673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595940, 39.233856, 32.408932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088574, 0.344256, -0.934688,
		-0.907543, -0.358843, -0.218167,
		-0.410512, 0.867594, 0.280643,
		40.472786, 39.494133, 32.493126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125862, 39.092030, 31.809946>,  <40.760143, 38.886818, 32.296673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125862, 39.092030, 31.809946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262508, 39.427780, 31.979057>,  <40.344498, 39.629230, 32.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262508, 39.427780, 31.979057>,  <40.125862, 39.092030, 31.809946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262508, 39.427780, 31.979057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053206, 0.431847, -0.900376,
		-0.938331, 0.330081, 0.102867,
		0.341620, 0.839377, 0.422778,
		40.364994, 39.679592, 32.105892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796852, 39.589123, 31.522444>,  <40.125862, 39.092030, 31.809946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796852, 39.589123, 31.522444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121269, 39.767395, 31.674009>,  <40.315918, 39.874359, 31.764948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121269, 39.767395, 31.674009>,  <39.796852, 39.589123, 31.522444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121269, 39.767395, 31.674009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154022, 0.462185, -0.873305,
		-0.564345, 0.766650, 0.306208,
		0.811044, 0.445683, 0.378912,
		40.364582, 39.901100, 31.787683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836246, 40.201839, 31.093325>,  <39.796852, 39.589123, 31.522444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836246, 40.201839, 31.093325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194572, 40.169308, 31.268091>,  <40.409569, 40.149788, 31.372952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194572, 40.169308, 31.268091>,  <39.836246, 40.201839, 31.093325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194572, 40.169308, 31.268091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434515, 0.366713, -0.822629,
		-0.093316, 0.926772, 0.363849,
		0.895817, -0.081334, 0.436917,
		40.463318, 40.144909, 31.399166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118233, 40.874542, 31.087427>,  <39.836246, 40.201839, 31.093325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118233, 40.874542, 31.087427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402988, 40.593628, 31.088730>,  <40.573841, 40.425079, 31.089512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402988, 40.593628, 31.088730>,  <40.118233, 40.874542, 31.087427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402988, 40.593628, 31.088730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410673, 0.412522, -0.813125,
		0.569701, 0.580193, 0.582080,
		0.711891, -0.702283, 0.003256,
		40.616554, 40.382942, 31.089706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702446, 41.202385, 30.805130>,  <40.118233, 40.874542, 31.087427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702446, 41.202385, 30.805130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820236, 40.820484, 30.788513>,  <40.890911, 40.591343, 30.778543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820236, 40.820484, 30.788513>,  <40.702446, 41.202385, 30.805130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820236, 40.820484, 30.788513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488093, 0.187629, -0.852385,
		0.821614, 0.230731, 0.521262,
		0.294475, -0.954756, -0.041540,
		40.908577, 40.534058, 30.776051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434361, 41.244457, 30.688732>,  <40.702446, 41.202385, 30.805130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434361, 41.244457, 30.688732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300560, 40.889412, 30.562080>,  <41.220280, 40.676384, 30.486090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300560, 40.889412, 30.562080>,  <41.434361, 41.244457, 30.688732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300560, 40.889412, 30.562080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579802, 0.071035, -0.811655,
		0.742927, -0.455079, 0.490879,
		-0.334497, -0.887613, -0.316629,
		41.200211, 40.623127, 30.467091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013409, 40.822670, 30.487740>,  <41.434361, 41.244457, 30.688732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013409, 40.822670, 30.487740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713387, 40.670086, 30.271626>,  <41.533375, 40.578533, 30.141956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713387, 40.670086, 30.271626>,  <42.013409, 40.822670, 30.487740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713387, 40.670086, 30.271626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626878, -0.149647, -0.764610,
		0.210819, -0.912191, 0.351374,
		-0.750053, -0.381463, -0.540284,
		41.488369, 40.555649, 30.109541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314693, 40.294952, 29.994593>,  <42.013409, 40.822670, 30.487740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314693, 40.294952, 29.994593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940231, 40.314892, 29.855379>,  <41.715553, 40.326855, 29.771851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940231, 40.314892, 29.855379>,  <42.314693, 40.294952, 29.994593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940231, 40.314892, 29.855379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341965, -0.100887, -0.934281,
		-0.081673, -0.993649, 0.077404,
		-0.936157, 0.049836, -0.348033,
		41.659386, 40.329845, 29.750969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432678, 40.042530, 29.415638>,  <42.314693, 40.294952, 29.994593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432678, 40.042530, 29.415638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051201, 40.159412, 29.387106>,  <41.822315, 40.229542, 29.369987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051201, 40.159412, 29.387106>,  <42.432678, 40.042530, 29.415638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051201, 40.159412, 29.387106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071416, -0.010387, -0.997393,
		-0.292189, -0.956298, -0.010963,
		-0.953691, 0.292211, -0.071330,
		41.765095, 40.247074, 29.365707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047840, 39.688976, 28.910479>,  <42.432678, 40.042530, 29.415638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047840, 39.688976, 28.910479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859138, 40.041241, 28.927870>,  <41.745918, 40.252598, 28.938305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859138, 40.041241, 28.927870>,  <42.047840, 39.688976, 28.910479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859138, 40.041241, 28.927870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074295, 0.088838, -0.993272,
		-0.878596, -0.465347, -0.107338,
		-0.471752, 0.880659, 0.043480,
		41.717613, 40.305439, 28.940914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557396, 39.625084, 28.448996>,  <42.047840, 39.688976, 28.910479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557396, 39.625084, 28.448996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608570, 40.019531, 28.491316>,  <41.639275, 40.256199, 28.516708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608570, 40.019531, 28.491316>,  <41.557396, 39.625084, 28.448996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608570, 40.019531, 28.491316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174611, 0.082617, -0.981165,
		-0.976291, 0.144000, -0.161618,
		0.127935, 0.986123, 0.105803,
		41.646950, 40.315369, 28.523056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275021, 39.845242, 27.843376>,  <41.557396, 39.625084, 28.448996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275021, 39.845242, 27.843376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521805, 40.125576, 27.986591>,  <41.669876, 40.293777, 28.072519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521805, 40.125576, 27.986591>,  <41.275021, 39.845242, 27.843376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521805, 40.125576, 27.986591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271632, 0.237351, -0.932674,
		-0.738628, 0.672680, -0.043931,
		0.616964, 0.700832, 0.358036,
		41.706894, 40.335827, 28.094002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196800, 40.468178, 27.377573>,  <41.275021, 39.845242, 27.843376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196800, 40.468178, 27.377573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541565, 40.503971, 27.577213>,  <41.748425, 40.525448, 27.696997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541565, 40.503971, 27.577213>,  <41.196800, 40.468178, 27.377573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541565, 40.503971, 27.577213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475063, 0.201605, -0.856546,
		-0.177264, 0.975371, 0.131258,
		0.861912, 0.089479, 0.499100,
		41.800140, 40.530815, 27.726944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451775, 41.129692, 27.309326>,  <41.196800, 40.468178, 27.377573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451775, 41.129692, 27.309326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765884, 40.886055, 27.353781>,  <41.954350, 40.739872, 27.380453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765884, 40.886055, 27.353781>,  <41.451775, 41.129692, 27.309326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765884, 40.886055, 27.353781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318744, 0.243818, -0.915945,
		0.530796, 0.754693, 0.385609,
		0.785276, -0.609091, 0.111136,
		42.001469, 40.703327, 27.387121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960945, 41.408443, 26.929472>,  <41.451775, 41.129692, 27.309326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960945, 41.408443, 26.929472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129272, 41.047745, 26.968981>,  <42.230270, 40.831326, 26.992687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129272, 41.047745, 26.968981>,  <41.960945, 41.408443, 26.929472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129272, 41.047745, 26.968981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429490, 0.102146, -0.897276,
		0.799030, 0.420014, 0.430278,
		0.420820, -0.901751, 0.098774,
		42.255520, 40.777218, 26.998613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563225, 41.539680, 26.688845>,  <41.960945, 41.408443, 26.929472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563225, 41.539680, 26.688845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557266, 41.140156, 26.670263>,  <42.553692, 40.900440, 26.659115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557266, 41.140156, 26.670263>,  <42.563225, 41.539680, 26.688845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557266, 41.140156, 26.670263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521415, 0.031884, -0.852707,
		0.853173, -0.036922, 0.520320,
		-0.014894, -0.998809, -0.046454,
		42.552799, 40.840511, 26.656326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243435, 41.335659, 26.542889>,  <42.563225, 41.539680, 26.688845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243435, 41.335659, 26.542889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997421, 41.041107, 26.430120>,  <42.849812, 40.864376, 26.362459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997421, 41.041107, 26.430120>,  <43.243435, 41.335659, 26.542889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997421, 41.041107, 26.430120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486307, -0.072809, -0.870749,
		0.620674, -0.672641, 0.402886,
		-0.615036, -0.736378, -0.281919,
		42.812912, 40.820194, 26.345545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685852, 40.839867, 26.378452>,  <43.243435, 41.335659, 26.542889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685852, 40.839867, 26.378452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347328, 40.746075, 26.187132>,  <43.144215, 40.689800, 26.072340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347328, 40.746075, 26.187132>,  <43.685852, 40.839867, 26.378452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347328, 40.746075, 26.187132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478299, 0.060749, -0.876093,
		0.234485, -0.970220, 0.060741,
		-0.846313, -0.234483, -0.478300,
		43.093433, 40.675732, 26.043642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824970, 40.303131, 25.978252>,  <43.685852, 40.839867, 26.378452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824970, 40.303131, 25.978252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529331, 40.521469, 25.820375>,  <43.351948, 40.652473, 25.725649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529331, 40.521469, 25.820375>,  <43.824970, 40.303131, 25.978252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529331, 40.521469, 25.820375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597457, 0.260612, -0.758372,
		-0.311096, -0.796322, -0.518739,
		-0.739098, 0.545850, -0.394693,
		43.307602, 40.685223, 25.701967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085945, 39.962383, 25.297449>,  <43.824970, 40.303131, 25.978252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085945, 39.962383, 25.297449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277527, 39.618732, 25.225346>,  <44.392475, 39.412540, 25.182083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277527, 39.618732, 25.225346>,  <44.085945, 39.962383, 25.297449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277527, 39.618732, 25.225346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174531, -0.294440, 0.939598,
		-0.860313, -0.418566, -0.290970,
		0.478957, -0.859132, -0.180258,
		44.421215, 39.360992, 25.171268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612732, 39.505894, 25.482758>,  <44.085945, 39.962383, 25.297449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612732, 39.505894, 25.482758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986206, 39.364735, 25.507080>,  <44.210289, 39.280037, 25.521673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986206, 39.364735, 25.507080>,  <43.612732, 39.505894, 25.482758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986206, 39.364735, 25.507080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135465, -0.190882, 0.972221,
		-0.331490, -0.915983, -0.226029,
		0.933683, -0.352900, 0.060808,
		44.266312, 39.258865, 25.525322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581570, 39.047783, 26.020792>,  <43.612732, 39.505894, 25.482758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581570, 39.047783, 26.020792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976978, 39.063889, 25.962540>,  <44.214222, 39.073551, 25.927588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976978, 39.063889, 25.962540>,  <43.581570, 39.047783, 26.020792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976978, 39.063889, 25.962540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151083, -0.275857, 0.949251,
		-0.001955, -0.960355, -0.278773,
		0.988519, 0.040262, -0.145633,
		44.273533, 39.075966, 25.918850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897209, 38.503277, 26.393456>,  <43.581570, 39.047783, 26.020792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897209, 38.503277, 26.393456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213104, 38.746143, 26.358437>,  <44.402641, 38.891861, 26.337425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213104, 38.746143, 26.358437>,  <43.897209, 38.503277, 26.393456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213104, 38.746143, 26.358437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165241, -0.073114, 0.983539,
		0.590768, -0.791207, -0.158069,
		0.789740, 0.607163, -0.087547,
		44.450027, 38.928291, 26.332172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381870, 38.279583, 26.898634>,  <43.897209, 38.503277, 26.393456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381870, 38.279583, 26.898634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478493, 38.660332, 26.823177>,  <44.536465, 38.888783, 26.777905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478493, 38.660332, 26.823177>,  <44.381870, 38.279583, 26.898634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478493, 38.660332, 26.823177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068934, 0.177073, 0.981781,
		0.967935, -0.250159, -0.022843,
		0.241557, 0.951875, -0.188640,
		44.550961, 38.945892, 26.766584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935169, 38.386639, 27.265978>,  <44.381870, 38.279583, 26.898634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935169, 38.386639, 27.265978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816975, 38.760490, 27.186817>,  <44.746059, 38.984802, 27.139320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816975, 38.760490, 27.186817>,  <44.935169, 38.386639, 27.265978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816975, 38.760490, 27.186817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023285, 0.214134, 0.976527,
		0.955063, 0.283942, -0.085036,
		-0.295486, 0.934625, -0.197900,
		44.728329, 39.040878, 27.127447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411621, 38.844006, 27.705814>,  <44.935169, 38.386639, 27.265978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411621, 38.844006, 27.705814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083569, 39.056614, 27.621082>,  <44.886738, 39.184177, 27.570244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083569, 39.056614, 27.621082>,  <45.411621, 38.844006, 27.705814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083569, 39.056614, 27.621082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206096, 0.070946, 0.975957,
		0.533769, 0.844069, 0.051359,
		-0.820131, 0.531520, -0.211828,
		44.837528, 39.216068, 27.557533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407455, 39.434593, 28.165377>,  <45.411621, 38.844006, 27.705814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407455, 39.434593, 28.165377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025814, 39.437717, 28.045628>,  <44.796829, 39.439590, 27.973778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025814, 39.437717, 28.045628>,  <45.407455, 39.434593, 28.165377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025814, 39.437717, 28.045628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286101, 0.271618, 0.918896,
		0.088490, 0.962374, -0.256918,
		-0.954105, 0.007808, -0.299372,
		44.739582, 39.440060, 27.955816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069370, 40.009579, 28.490818>,  <45.407455, 39.434593, 28.165377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069370, 40.009579, 28.490818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788845, 39.737202, 28.406462>,  <44.620529, 39.573776, 28.355848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788845, 39.737202, 28.406462>,  <45.069370, 40.009579, 28.490818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788845, 39.737202, 28.406462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382506, 0.109828, 0.917402,
		-0.601535, 0.724056, -0.337488,
		-0.701316, -0.680941, -0.210891,
		44.578449, 39.532921, 28.343195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487545, 40.295048, 28.753563>,  <45.069370, 40.009579, 28.490818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487545, 40.295048, 28.753563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424118, 39.900459, 28.736954>,  <44.386063, 39.663704, 28.726988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424118, 39.900459, 28.736954>,  <44.487545, 40.295048, 28.753563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424118, 39.900459, 28.736954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348704, 0.016605, 0.937086,
		-0.923722, 0.163070, -0.346620,
		-0.158566, -0.986475, -0.041525,
		44.376549, 39.604515, 28.724497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939980, 40.241207, 29.111374>,  <44.487545, 40.295048, 28.753563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939980, 40.241207, 29.111374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041275, 39.855492, 29.080339>,  <44.102051, 39.624062, 29.061720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041275, 39.855492, 29.080339>,  <43.939980, 40.241207, 29.111374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041275, 39.855492, 29.080339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406447, -0.178829, 0.896002,
		-0.877879, -0.195367, -0.437219,
		0.253236, -0.964288, -0.077584,
		44.117245, 39.566204, 29.057064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328453, 39.942963, 29.448233>,  <43.939980, 40.241207, 29.111374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328453, 39.942963, 29.448233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633965, 39.685825, 29.471539>,  <43.817272, 39.531544, 29.485521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633965, 39.685825, 29.471539>,  <43.328453, 39.942963, 29.448233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633965, 39.685825, 29.471539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242382, -0.201975, 0.948924,
		-0.598243, -0.738889, -0.310078,
		0.763778, -0.642844, 0.058263,
		43.863098, 39.492973, 29.489017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081699, 39.309303, 29.762320>,  <43.328453, 39.942963, 29.448233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081699, 39.309303, 29.762320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478039, 39.337963, 29.808075>,  <43.715843, 39.355160, 29.835527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478039, 39.337963, 29.808075>,  <43.081699, 39.309303, 29.762320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478039, 39.337963, 29.808075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104165, -0.133030, 0.985623,
		0.085835, -0.988519, -0.124349,
		0.990849, 0.071649, 0.114387,
		43.775295, 39.359459, 29.842392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217392, 38.840382, 30.260815>,  <43.081699, 39.309303, 29.762320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217392, 38.840382, 30.260815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520088, 39.101849, 30.257494>,  <43.701706, 39.258728, 30.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520088, 39.101849, 30.257494>,  <43.217392, 38.840382, 30.260815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520088, 39.101849, 30.257494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048812, 0.069164, 0.996411,
		0.651894, -0.753616, 0.084246,
		0.756737, 0.653666, -0.008302,
		43.747108, 39.297947, 30.255003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789387, 38.556190, 30.603268>,  <43.217392, 38.840382, 30.260815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789387, 38.556190, 30.603268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736912, 38.951866, 30.629482>,  <43.705425, 39.189270, 30.645210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736912, 38.951866, 30.629482>,  <43.789387, 38.556190, 30.603268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736912, 38.951866, 30.629482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104103, -0.079487, 0.991385,
		0.985876, 0.123237, 0.113406,
		-0.131190, 0.989189, 0.065535,
		43.697556, 39.248623, 30.649143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315277, 38.827961, 31.109375>,  <43.789387, 38.556190, 30.603268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315277, 38.827961, 31.109375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009323, 39.085438, 31.099504>,  <43.825748, 39.239925, 31.093582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009323, 39.085438, 31.099504>,  <44.315277, 38.827961, 31.109375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009323, 39.085438, 31.099504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134856, -0.122552, 0.983257,
		0.629891, 0.755408, 0.180544,
		-0.764887, 0.643692, -0.024677,
		43.779858, 39.278545, 31.092102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304653, 39.215233, 31.729948>,  <44.315277, 38.827961, 31.109375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304653, 39.215233, 31.729948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938061, 39.292774, 31.589960>,  <43.718105, 39.339298, 31.505968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938061, 39.292774, 31.589960>,  <44.304653, 39.215233, 31.729948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938061, 39.292774, 31.589960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343775, 0.065855, 0.936740,
		0.204638, 0.978817, 0.006287,
		-0.916483, 0.193853, -0.349970,
		43.663116, 39.350929, 31.484968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051037, 39.660168, 32.239285>,  <44.304653, 39.215233, 31.729948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051037, 39.660168, 32.239285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736969, 39.488358, 32.060837>,  <43.548527, 39.385273, 31.953770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736969, 39.488358, 32.060837>,  <44.051037, 39.660168, 32.239285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736969, 39.488358, 32.060837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433073, -0.134099, 0.891328,
		-0.442669, 0.893044, -0.080725,
		-0.785170, -0.429523, -0.446115,
		43.501419, 39.359501, 31.927002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498596, 39.965519, 32.627827>,  <44.051037, 39.660168, 32.239285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498596, 39.965519, 32.627827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346169, 39.643448, 32.446072>,  <43.254711, 39.450207, 32.337017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346169, 39.643448, 32.446072>,  <43.498596, 39.965519, 32.627827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346169, 39.643448, 32.446072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429433, -0.281095, 0.858238,
		-0.818763, 0.522180, -0.238653,
		-0.381071, -0.805179, -0.454392,
		43.231846, 39.401894, 32.309753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738766, 39.967060, 32.847095>,  <43.498596, 39.965519, 32.627827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738766, 39.967060, 32.847095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809124, 39.593109, 32.723770>,  <42.851337, 39.368736, 32.649776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809124, 39.593109, 32.723770>,  <42.738766, 39.967060, 32.847095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809124, 39.593109, 32.723770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691587, -0.340242, 0.637136,
		-0.700548, 0.101155, -0.706399,
		0.175897, -0.934881, -0.308314,
		42.861893, 39.312645, 32.631275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045166, 39.625381, 32.854645>,  <42.738766, 39.967060, 32.847095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045166, 39.625381, 32.854645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304157, 39.320904, 32.869366>,  <42.459553, 39.138218, 32.878201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304157, 39.320904, 32.869366>,  <42.045166, 39.625381, 32.854645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304157, 39.320904, 32.869366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655269, -0.531421, 0.536856,
		-0.389092, -0.371720, -0.842871,
		0.647479, -0.761194, 0.036805,
		42.498402, 39.092545, 32.880405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681305, 39.033604, 32.674946>,  <42.045166, 39.625381, 32.854645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681305, 39.033604, 32.674946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992462, 38.892696, 32.883095>,  <42.179157, 38.808151, 33.007984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992462, 38.892696, 32.883095>,  <41.681305, 39.033604, 32.674946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992462, 38.892696, 32.883095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611912, -0.613054, 0.499729,
		0.142973, -0.707156, -0.692451,
		0.777896, -0.352271, 0.520368,
		42.225830, 38.787014, 33.039204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457867, 38.344067, 32.820782>,  <41.681305, 39.033604, 32.674946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457867, 38.344067, 32.820782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768574, 38.376369, 33.070614>,  <41.954998, 38.395752, 33.220512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768574, 38.376369, 33.070614>,  <41.457867, 38.344067, 32.820782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768574, 38.376369, 33.070614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501127, -0.521413, 0.690652,
		0.381443, -0.849474, -0.364548,
		0.776771, 0.080759, 0.624584,
		42.001606, 38.400597, 33.257988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703564, 37.671696, 32.986759>,  <41.457867, 38.344067, 32.820782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703564, 37.671696, 32.986759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805450, 37.910248, 33.291245>,  <41.866581, 38.053379, 33.473934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805450, 37.910248, 33.291245>,  <41.703564, 37.671696, 32.986759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805450, 37.910248, 33.291245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626623, -0.497757, 0.599652,
		0.736522, -0.629734, 0.246922,
		0.254714, 0.596384, 0.761215,
		41.881866, 38.089165, 33.519608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686447, 37.236359, 33.486290>,  <41.703564, 37.671696, 32.986759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686447, 37.236359, 33.486290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674046, 37.583992, 33.683765>,  <41.666603, 37.792572, 33.802250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674046, 37.583992, 33.683765>,  <41.686447, 37.236359, 33.486290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674046, 37.583992, 33.683765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530294, -0.432985, 0.728912,
		0.847247, -0.239199, 0.474296,
		-0.031008, 0.869085, 0.493691,
		41.664742, 37.844719, 33.831871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906403, 37.091404, 34.200180>,  <41.686447, 37.236359, 33.486290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906403, 37.091404, 34.200180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716225, 37.442665, 34.221340>,  <41.602119, 37.653423, 34.234035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716225, 37.442665, 34.221340>,  <41.906403, 37.091404, 34.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716225, 37.442665, 34.221340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403116, -0.270909, 0.874131,
		0.781952, 0.394278, 0.482800,
		-0.475446, 0.878153, 0.052898,
		41.573589, 37.706112, 34.237209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970882, 37.267891, 34.875675>,  <41.906403, 37.091404, 34.200180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970882, 37.267891, 34.875675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675659, 37.504536, 34.745895>,  <41.498524, 37.646523, 34.668026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675659, 37.504536, 34.745895>,  <41.970882, 37.267891, 34.875675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675659, 37.504536, 34.745895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417342, -0.022429, 0.908473,
		0.530184, 0.805913, 0.263457,
		-0.738059, 0.591609, -0.324450,
		41.454243, 37.682018, 34.648560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935528, 37.852032, 35.252796>,  <41.970882, 37.267891, 34.875675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935528, 37.852032, 35.252796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556328, 37.795380, 35.138790>,  <41.328808, 37.761391, 35.070385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556328, 37.795380, 35.138790>,  <41.935528, 37.852032, 35.252796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556328, 37.795380, 35.138790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304742, 0.145661, 0.941231,
		-0.091789, 0.979145, -0.181247,
		-0.948002, -0.141628, -0.285017,
		41.271927, 37.752892, 35.053284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434093, 38.443691, 35.460991>,  <41.935528, 37.852032, 35.252796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434093, 38.443691, 35.460991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220367, 38.109623, 35.408852>,  <41.092133, 37.909180, 35.377567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220367, 38.109623, 35.408852>,  <41.434093, 38.443691, 35.460991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220367, 38.109623, 35.408852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288319, 0.035108, 0.956891,
		-0.794594, 0.548864, -0.259555,
		-0.534316, -0.835174, -0.130351,
		41.060074, 37.859070, 35.369747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884800, 38.529476, 35.863552>,  <41.434093, 38.443691, 35.460991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884800, 38.529476, 35.863552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878113, 38.138706, 35.778381>,  <40.874100, 37.904243, 35.727280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878113, 38.138706, 35.778381>,  <40.884800, 38.529476, 35.863552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878113, 38.138706, 35.778381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197545, -0.205533, 0.958506,
		-0.980151, 0.058092, -0.189549,
		-0.016723, -0.976925, -0.212929,
		40.873096, 37.845631, 35.714504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316578, 38.259937, 36.218678>,  <40.884800, 38.529476, 35.863552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316578, 38.259937, 36.218678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548798, 37.948280, 36.124107>,  <40.688129, 37.761284, 36.067364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548798, 37.948280, 36.124107>,  <40.316578, 38.259937, 36.218678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548798, 37.948280, 36.124107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278489, -0.462869, 0.841544,
		-0.765119, -0.422714, -0.485701,
		0.580548, -0.779144, -0.236429,
		40.722961, 37.714539, 36.053181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005444, 37.804272, 36.579933>,  <40.316578, 38.259937, 36.218678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005444, 37.804272, 36.579933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344727, 37.609814, 36.495827>,  <40.548294, 37.493137, 36.445362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344727, 37.609814, 36.495827>,  <40.005444, 37.804272, 36.579933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344727, 37.609814, 36.495827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082109, -0.512860, 0.854537,
		-0.523274, -0.707552, -0.474925,
		0.848199, -0.486153, -0.210270,
		40.599190, 37.463970, 36.432747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848347, 37.066547, 36.667534>,  <40.005444, 37.804272, 36.579933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848347, 37.066547, 36.667534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242912, 37.113235, 36.713779>,  <40.479652, 37.141247, 36.741528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242912, 37.113235, 36.713779>,  <39.848347, 37.066547, 36.667534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242912, 37.113235, 36.713779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057848, -0.411906, 0.909388,
		0.153763, -0.903720, -0.399558,
		0.986413, 0.116717, 0.115614,
		40.538837, 37.148251, 36.748463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016529, 36.406815, 36.947124>,  <39.848347, 37.066547, 36.667534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016529, 36.406815, 36.947124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315002, 36.658375, 37.034485>,  <40.494087, 36.809311, 37.086903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315002, 36.658375, 37.034485>,  <40.016529, 36.406815, 36.947124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315002, 36.658375, 37.034485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075654, -0.406033, 0.910721,
		0.661429, -0.663041, -0.350553,
		0.746182, 0.628898, 0.218400,
		40.538857, 36.847046, 37.100006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473385, 35.911537, 37.007854>,  <40.016529, 36.406815, 36.947124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473385, 35.911537, 37.007854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529507, 36.258202, 37.199356>,  <40.563179, 36.466202, 37.314259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529507, 36.258202, 37.199356>,  <40.473385, 35.911537, 37.007854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529507, 36.258202, 37.199356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106221, -0.467571, 0.877550,
		0.984394, -0.173982, 0.026454,
		0.140309, 0.866665, 0.478754,
		40.571598, 36.518200, 37.342983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949455, 35.715382, 37.535519>,  <40.473385, 35.911537, 37.007854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949455, 35.715382, 37.535519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809357, 36.062614, 37.676239>,  <40.725296, 36.270954, 37.760674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809357, 36.062614, 37.676239>,  <40.949455, 35.715382, 37.535519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809357, 36.062614, 37.676239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093233, -0.406042, 0.909086,
		0.932005, 0.285606, 0.223149,
		-0.350248, 0.868078, 0.351805,
		40.704281, 36.323036, 37.781780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293362, 35.759396, 38.087635>,  <40.949455, 35.715382, 37.535519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293362, 35.759396, 38.087635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969688, 35.993282, 38.110691>,  <40.775482, 36.133614, 38.124523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969688, 35.993282, 38.110691>,  <41.293362, 35.759396, 38.087635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969688, 35.993282, 38.110691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173950, -0.332113, 0.927061,
		0.561211, 0.740140, 0.370453,
		-0.809187, 0.584717, 0.057638,
		40.726933, 36.168697, 38.127983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435410, 36.153877, 38.769569>,  <41.293362, 35.759396, 38.087635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435410, 36.153877, 38.769569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045349, 36.187294, 38.687504>,  <40.811314, 36.207344, 38.638264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045349, 36.187294, 38.687504>,  <41.435410, 36.153877, 38.769569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045349, 36.187294, 38.687504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207941, -0.025901, 0.977798,
		0.076373, 0.996167, 0.042629,
		-0.975155, 0.083542, -0.205166,
		40.752804, 36.212357, 38.625954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216866, 36.620644, 39.203876>,  <41.435410, 36.153877, 38.769569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216866, 36.620644, 39.203876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889847, 36.412704, 39.104782>,  <40.693634, 36.287941, 39.045326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889847, 36.412704, 39.104782>,  <41.216866, 36.620644, 39.203876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889847, 36.412704, 39.104782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165697, -0.199644, 0.965757,
		-0.551507, 0.830601, 0.077080,
		-0.817548, -0.519850, -0.247733,
		40.644581, 36.256748, 39.030460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811932, 36.705318, 39.794334>,  <41.216866, 36.620644, 39.203876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811932, 36.705318, 39.794334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599850, 36.423470, 39.605701>,  <40.472599, 36.254360, 39.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599850, 36.423470, 39.605701>,  <40.811932, 36.705318, 39.794334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599850, 36.423470, 39.605701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429279, -0.256550, 0.865968,
		-0.731162, 0.661585, -0.166453,
		-0.530209, -0.704618, -0.471584,
		40.440788, 36.212086, 39.464226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998932, 36.790413, 39.942085>,  <40.811932, 36.705318, 39.794334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998932, 36.790413, 39.942085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092270, 36.417278, 39.832279>,  <40.148273, 36.193398, 39.766396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092270, 36.417278, 39.832279>,  <39.998932, 36.790413, 39.942085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092270, 36.417278, 39.832279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527746, -0.358610, 0.769989,
		-0.816721, -0.034800, -0.575983,
		0.233349, -0.932838, -0.274519,
		40.162273, 36.137428, 39.749924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362408, 36.408661, 39.969959>,  <39.998932, 36.790413, 39.942085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362408, 36.408661, 39.969959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658146, 36.140926, 39.999233>,  <39.835590, 35.980286, 40.016796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658146, 36.140926, 39.999233>,  <39.362408, 36.408661, 39.969959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658146, 36.140926, 39.999233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521692, -0.500737, 0.690725,
		-0.425684, -0.548862, -0.719405,
		0.739345, -0.669338, 0.073181,
		39.879948, 35.940125, 40.021187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005302, 35.826191, 39.905205>,  <39.362408, 36.408661, 39.969959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005302, 35.826191, 39.905205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355293, 35.728985, 40.072708>,  <39.565289, 35.670662, 40.173210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355293, 35.728985, 40.072708>,  <39.005302, 35.826191, 39.905205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355293, 35.728985, 40.072708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481707, -0.524050, 0.702374,
		0.048763, -0.816280, -0.575594,
		0.874975, -0.243018, 0.418763,
		39.617786, 35.656078, 40.198338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859074, 35.142296, 40.026482>,  <39.005302, 35.826191, 39.905205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859074, 35.142296, 40.026482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169323, 35.244267, 40.257454>,  <39.355473, 35.305450, 40.396038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169323, 35.244267, 40.257454>,  <38.859074, 35.142296, 40.026482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169323, 35.244267, 40.257454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360867, -0.571462, 0.737025,
		0.517869, -0.780026, -0.351241,
		0.775620, 0.254932, 0.577428,
		39.402008, 35.320747, 40.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417538, 34.586987, 40.186275>,  <38.859074, 35.142296, 40.026482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417538, 34.586987, 40.186275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472950, 34.849888, 40.482609>,  <39.506199, 35.007629, 40.660408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472950, 34.849888, 40.482609>,  <39.417538, 34.586987, 40.186275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472950, 34.849888, 40.482609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306926, -0.682721, 0.663091,
		0.941597, -0.319240, 0.107147,
		0.138534, 0.657250, 0.740831,
		39.514511, 35.047062, 40.704857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513577, 34.100090, 40.708721>,  <39.417538, 34.586987, 40.186275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513577, 34.100090, 40.708721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502632, 34.439838, 40.919559>,  <39.496067, 34.643688, 41.046062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502632, 34.439838, 40.919559>,  <39.513577, 34.100090, 40.708721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502632, 34.439838, 40.919559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439343, -0.483851, 0.756880,
		0.897903, -0.210865, 0.386402,
		-0.027362, 0.849367, 0.527093,
		39.494423, 34.694649, 41.077686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902081, 34.024487, 41.312214>,  <39.513577, 34.100090, 40.708721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902081, 34.024487, 41.312214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648582, 34.327076, 41.376858>,  <39.496483, 34.508629, 41.415646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648582, 34.327076, 41.376858>,  <39.902081, 34.024487, 41.312214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648582, 34.327076, 41.376858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301526, -0.433984, 0.848964,
		0.712353, 0.489298, 0.503131,
		-0.633747, 0.756469, 0.161614,
		39.458458, 34.554016, 41.425343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999767, 34.109406, 41.977165>,  <39.902081, 34.024487, 41.312214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999767, 34.109406, 41.977165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645695, 34.283463, 41.911320>,  <39.433250, 34.387897, 41.871811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645695, 34.283463, 41.911320>,  <39.999767, 34.109406, 41.977165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645695, 34.283463, 41.911320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329918, -0.337636, 0.881564,
		0.328026, 0.834657, 0.442432,
		-0.885185, 0.435143, -0.164615,
		39.380138, 34.414005, 41.861935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908566, 34.619946, 42.456524>,  <39.999767, 34.109406, 41.977165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908566, 34.619946, 42.456524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532852, 34.543957, 42.342224>,  <39.307423, 34.498363, 42.273643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532852, 34.543957, 42.342224>,  <39.908566, 34.619946, 42.456524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532852, 34.543957, 42.342224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299563, 0.047841, 0.952877,
		-0.167345, 0.980624, -0.101844,
		-0.939286, -0.189967, -0.285752,
		39.251068, 34.486965, 42.256500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432404, 34.997795, 42.842949>,  <39.908566, 34.619946, 42.456524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432404, 34.997795, 42.842949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174786, 34.730988, 42.693130>,  <39.020214, 34.570904, 42.603237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174786, 34.730988, 42.693130>,  <39.432404, 34.997795, 42.842949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174786, 34.730988, 42.693130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348786, -0.179724, 0.919808,
		-0.680846, 0.723038, -0.116897,
		-0.644048, -0.667019, -0.374550,
		38.981571, 34.530880, 42.580765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649803, 35.137173, 43.016491>,  <39.432404, 34.997795, 42.842949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649803, 35.137173, 43.016491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718922, 34.743946, 42.992069>,  <38.760391, 34.508011, 42.977417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718922, 34.743946, 42.992069>,  <38.649803, 35.137173, 43.016491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718922, 34.743946, 42.992069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348583, -0.119010, 0.929692,
		-0.921212, -0.139365, -0.363244,
		0.172796, -0.983064, -0.061053,
		38.770760, 34.449028, 42.973755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031773, 34.677448, 43.291267>,  <38.649803, 35.137173, 43.016491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031773, 34.677448, 43.291267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355156, 34.442936, 43.311905>,  <38.549187, 34.302227, 43.324287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355156, 34.442936, 43.311905>,  <38.031773, 34.677448, 43.291267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355156, 34.442936, 43.311905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305582, -0.343228, 0.888152,
		-0.503002, -0.733802, -0.456644,
		0.808461, -0.586284, 0.051592,
		38.597694, 34.267052, 43.327381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882347, 33.996887, 43.394604>,  <38.031773, 34.677448, 43.291267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882347, 33.996887, 43.394604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246933, 34.042332, 43.552753>,  <38.465683, 34.069599, 43.647644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246933, 34.042332, 43.552753>,  <37.882347, 33.996887, 43.394604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246933, 34.042332, 43.552753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282753, -0.525069, 0.802716,
		0.298801, -0.843442, -0.446457,
		0.911465, 0.113616, 0.395377,
		38.520374, 34.076416, 43.671368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911674, 33.571743, 43.962711>,  <37.882347, 33.996887, 43.394604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911674, 33.571743, 43.962711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278091, 33.721252, 44.020893>,  <38.497940, 33.810959, 44.055801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278091, 33.721252, 44.020893>,  <37.911674, 33.571743, 43.962711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278091, 33.721252, 44.020893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052873, -0.472028, 0.879996,
		0.397582, -0.798423, -0.452160,
		0.916042, 0.373778, 0.145455,
		38.552902, 33.833385, 44.064529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488548, 33.044373, 44.034134>,  <37.911674, 33.571743, 43.962711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488548, 33.044373, 44.034134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509449, 33.385464, 44.242027>,  <38.521992, 33.590118, 44.366764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509449, 33.385464, 44.242027>,  <38.488548, 33.044373, 44.034134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509449, 33.385464, 44.242027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066851, -0.516291, 0.853800,
		0.996394, -0.079360, 0.030027,
		0.052255, 0.852728, 0.519734,
		38.525127, 33.641281, 44.397949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844017, 32.826698, 44.599876>,  <38.488548, 33.044373, 44.034134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844017, 32.826698, 44.599876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727242, 33.185089, 44.733734>,  <38.657177, 33.400124, 44.814049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727242, 33.185089, 44.733734>,  <38.844017, 32.826698, 44.599876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727242, 33.185089, 44.733734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076251, -0.370582, 0.925665,
		0.953391, 0.244724, 0.176508,
		-0.291943, 0.895980, 0.334649,
		38.639660, 33.453884, 44.834129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351040, 33.081818, 45.100353>,  <38.844017, 32.826698, 44.599876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351040, 33.081818, 45.100353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983463, 33.225395, 45.165730>,  <38.762917, 33.311543, 45.204956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983463, 33.225395, 45.165730>,  <39.351040, 33.081818, 45.100353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983463, 33.225395, 45.165730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114301, -0.154233, 0.981401,
		0.377473, 0.920528, 0.100704,
		-0.918939, 0.358942, 0.163436,
		38.707783, 33.333076, 45.214760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284019, 33.109657, 45.832302>,  <39.351040, 33.081818, 45.100353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284019, 33.109657, 45.832302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913677, 33.242714, 45.760593>,  <38.691471, 33.322548, 45.717567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913677, 33.242714, 45.760593>,  <39.284019, 33.109657, 45.832302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913677, 33.242714, 45.760593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199521, -0.027450, 0.979509,
		0.320904, 0.942654, 0.091784,
		-0.925857, 0.332641, -0.179271,
		38.635921, 33.342506, 45.706814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207550, 33.725063, 46.288300>,  <39.284019, 33.109657, 45.832302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207550, 33.725063, 46.288300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856659, 33.550667, 46.207916>,  <38.646122, 33.446030, 46.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856659, 33.550667, 46.207916>,  <39.207550, 33.725063, 46.288300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856659, 33.550667, 46.207916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213568, -0.020482, 0.976713,
		-0.429950, 0.899720, -0.075145,
		-0.877230, -0.435987, -0.200958,
		38.593491, 33.419872, 46.147629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671101, 34.047485, 46.643681>,  <39.207550, 33.725063, 46.288300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671101, 34.047485, 46.643681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520794, 33.682629, 46.578213>,  <38.430611, 33.463715, 46.538933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520794, 33.682629, 46.578213>,  <38.671101, 34.047485, 46.643681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520794, 33.682629, 46.578213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265269, -0.063346, 0.962091,
		-0.887935, 0.404941, -0.218160,
		-0.375771, -0.912146, -0.163666,
		38.408062, 33.408985, 46.529114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053719, 34.024406, 46.968502>,  <38.671101, 34.047485, 46.643681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053719, 34.024406, 46.968502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176849, 33.644695, 46.942863>,  <38.250729, 33.416866, 46.927483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176849, 33.644695, 46.942863>,  <38.053719, 34.024406, 46.968502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176849, 33.644695, 46.942863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219261, -0.136331, 0.966095,
		-0.925832, -0.283340, -0.250106,
		0.307830, -0.949280, -0.064095,
		38.269199, 33.359913, 46.923634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539806, 33.662113, 47.356068>,  <38.053719, 34.024406, 46.968502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539806, 33.662113, 47.356068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895458, 33.479267, 47.364948>,  <38.108849, 33.369560, 47.370277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895458, 33.479267, 47.364948>,  <37.539806, 33.662113, 47.356068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895458, 33.479267, 47.364948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070098, -0.088082, 0.993644,
		-0.452259, -0.885033, -0.110360,
		0.889128, -0.457120, 0.022203,
		38.162197, 33.342133, 47.371609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573849, 33.164856, 47.895435>,  <37.539806, 33.662113, 47.356068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573849, 33.164856, 47.895435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944542, 33.293667, 47.818020>,  <38.166958, 33.370953, 47.771568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944542, 33.293667, 47.818020>,  <37.573849, 33.164856, 47.895435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944542, 33.293667, 47.818020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144738, 0.169377, 0.974865,
		0.346719, -0.931454, 0.110357,
		0.926734, 0.322031, -0.193543,
		38.222561, 33.390278, 47.759956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071701, 32.800140, 48.417088>,  <37.573849, 33.164856, 47.895435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071701, 32.800140, 48.417088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000095, 32.506874, 48.154663>,  <37.957130, 32.330914, 47.997208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000095, 32.506874, 48.154663>,  <38.071701, 32.800140, 48.417088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000095, 32.506874, 48.154663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017706, 0.664326, -0.747233,
		0.983687, -0.145381, -0.105942,
		-0.179014, -0.733168, -0.656063,
		37.946392, 32.286922, 47.957844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562969, 32.769650, 47.908054>,  <38.071701, 32.800140, 48.417088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562969, 32.769650, 47.908054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245739, 32.603577, 47.729771>,  <38.055401, 32.503933, 47.622803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245739, 32.603577, 47.729771>,  <38.562969, 32.769650, 47.908054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245739, 32.603577, 47.729771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190003, 0.526589, -0.828615,
		0.578735, -0.741838, -0.338736,
		-0.793073, -0.415188, -0.445707,
		38.007816, 32.479019, 47.596058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721416, 32.619194, 47.203106>,  <38.562969, 32.769650, 47.908054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721416, 32.619194, 47.203106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322056, 32.636147, 47.218018>,  <38.082439, 32.646317, 47.226963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322056, 32.636147, 47.218018>,  <38.721416, 32.619194, 47.203106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322056, 32.636147, 47.218018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014958, 0.438197, -0.898754,
		-0.054425, -0.897879, -0.436865,
		-0.998406, 0.042380, 0.037279,
		38.022533, 32.648861, 47.229202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215900, 32.189369, 46.790565>,  <38.721416, 32.619194, 47.203106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215900, 32.189369, 46.790565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110382, 32.572662, 46.834736>,  <38.047070, 32.802639, 46.861237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110382, 32.572662, 46.834736>,  <38.215900, 32.189369, 46.790565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110382, 32.572662, 46.834736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253557, 0.179342, -0.950550,
		-0.930655, -0.222756, -0.290278,
		-0.263799, 0.958236, 0.110424,
		38.031242, 32.860134, 46.867863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751217, 32.306984, 46.309593>,  <38.215900, 32.189369, 46.790565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751217, 32.306984, 46.309593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947411, 32.647354, 46.384808>,  <38.065125, 32.851574, 46.429935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947411, 32.647354, 46.384808>,  <37.751217, 32.306984, 46.309593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947411, 32.647354, 46.384808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123649, 0.145631, -0.981581,
		-0.862634, 0.504699, -0.033786,
		0.490483, 0.850923, 0.188032,
		38.094555, 32.902630, 46.441216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489815, 32.826180, 45.816010>,  <37.751217, 32.306984, 46.309593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489815, 32.826180, 45.816010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842125, 32.995193, 45.901524>,  <38.053509, 33.096603, 45.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842125, 32.995193, 45.901524>,  <37.489815, 32.826180, 45.816010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842125, 32.995193, 45.901524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067846, 0.334203, -0.940056,
		-0.468654, 0.842480, 0.265690,
		0.880773, 0.422535, 0.213784,
		38.106358, 33.121956, 45.965660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382343, 33.348816, 45.425060>,  <37.489815, 32.826180, 45.816010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382343, 33.348816, 45.425060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772659, 33.388306, 45.503124>,  <38.006847, 33.411999, 45.549961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772659, 33.388306, 45.503124>,  <37.382343, 33.348816, 45.425060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772659, 33.388306, 45.503124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129154, 0.460000, -0.878475,
		-0.176501, 0.882413, 0.436113,
		0.975790, 0.098726, 0.195158,
		38.065395, 33.417923, 45.561672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584263, 34.019520, 45.167557>,  <37.382343, 33.348816, 45.425060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584263, 34.019520, 45.167557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945152, 33.854126, 45.216572>,  <38.161686, 33.754890, 45.245979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945152, 33.854126, 45.216572>,  <37.584263, 34.019520, 45.167557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945152, 33.854126, 45.216572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350554, 0.537657, -0.766836,
		0.251191, 0.734817, 0.630038,
		0.902228, -0.413484, 0.122538,
		38.215820, 33.730080, 45.253334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077778, 34.541332, 45.231949>,  <37.584263, 34.019520, 45.167557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077778, 34.541332, 45.231949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283688, 34.218376, 45.116615>,  <38.407234, 34.024605, 45.047417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283688, 34.218376, 45.116615>,  <38.077778, 34.541332, 45.231949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283688, 34.218376, 45.116615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224123, 0.451355, -0.863741,
		0.827513, 0.380008, 0.413299,
		0.514772, -0.807387, -0.288333,
		38.438118, 33.976162, 45.030117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573261, 34.852814, 44.876957>,  <38.077778, 34.541332, 45.231949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573261, 34.852814, 44.876957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572472, 34.470894, 44.758057>,  <38.571999, 34.241741, 44.686718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572472, 34.470894, 44.758057>,  <38.573261, 34.852814, 44.876957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572472, 34.470894, 44.758057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273748, 0.285376, -0.918490,
		0.961800, -0.083186, 0.260810,
		-0.001977, -0.954799, -0.297246,
		38.571880, 34.184456, 44.668884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167873, 34.656990, 44.652382>,  <38.573261, 34.852814, 44.876957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167873, 34.656990, 44.652382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898823, 34.435432, 44.456104>,  <38.737392, 34.302498, 44.338337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898823, 34.435432, 44.456104>,  <39.167873, 34.656990, 44.652382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898823, 34.435432, 44.456104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314250, 0.386533, -0.867086,
		0.669938, -0.737427, -0.085934,
		-0.672629, -0.553889, -0.490690,
		38.697033, 34.269264, 44.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516289, 34.167282, 44.195396>,  <39.167873, 34.656990, 44.652382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516289, 34.167282, 44.195396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158211, 34.295166, 44.071194>,  <38.943363, 34.371895, 43.996674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158211, 34.295166, 44.071194>,  <39.516289, 34.167282, 44.195396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158211, 34.295166, 44.071194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421707, 0.382220, -0.822236,
		-0.144195, -0.867003, -0.476985,
		-0.895193, 0.319710, -0.310507,
		38.889652, 34.391079, 43.978043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570904, 33.588120, 43.651184>,  <39.516289, 34.167282, 44.195396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570904, 33.588120, 43.651184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186909, 33.488815, 43.599342>,  <38.956512, 33.429234, 43.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186909, 33.488815, 43.599342>,  <39.570904, 33.588120, 43.651184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186909, 33.488815, 43.599342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020606, 0.524157, -0.851372,
		0.279294, -0.814634, -0.508298,
		-0.959984, -0.248257, -0.129607,
		38.898914, 33.414337, 43.560459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569237, 33.305199, 42.976627>,  <39.570904, 33.588120, 43.651184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569237, 33.305199, 42.976627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223244, 33.488728, 43.057915>,  <39.015648, 33.598843, 43.106689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223244, 33.488728, 43.057915>,  <39.569237, 33.305199, 42.976627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223244, 33.488728, 43.057915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061617, 0.499021, -0.864396,
		-0.498013, -0.735162, -0.459914,
		-0.864978, 0.458819, 0.203221,
		38.963749, 33.626373, 43.118881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938526, 33.217297, 42.492355>,  <39.569237, 33.305199, 42.976627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938526, 33.217297, 42.492355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940609, 33.580387, 42.660164>,  <38.941860, 33.798241, 42.760849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940609, 33.580387, 42.660164>,  <38.938526, 33.217297, 42.492355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940609, 33.580387, 42.660164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029170, 0.419212, -0.907420,
		-0.999561, 0.016963, -0.024295,
		0.005208, 0.907730, 0.419522,
		38.942173, 33.852707, 42.786022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403355, 33.526215, 42.095615>,  <38.938526, 33.217297, 42.492355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403355, 33.526215, 42.095615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663326, 33.795681, 42.236340>,  <38.819309, 33.957359, 42.320774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663326, 33.795681, 42.236340>,  <38.403355, 33.526215, 42.095615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663326, 33.795681, 42.236340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031959, 0.438277, -0.898272,
		-0.759324, 0.595055, 0.263318,
		0.649927, 0.673664, 0.351812,
		38.858303, 33.997780, 42.341885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195385, 34.124912, 41.722580>,  <38.403355, 33.526215, 42.095615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195385, 34.124912, 41.722580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543537, 34.215141, 41.897652>,  <38.752426, 34.269279, 42.002693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543537, 34.215141, 41.897652>,  <38.195385, 34.124912, 41.722580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543537, 34.215141, 41.897652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204168, 0.643535, -0.737684,
		-0.448060, 0.731423, 0.514064,
		0.870378, 0.225571, 0.437676,
		38.804649, 34.282814, 42.028954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204025, 34.821571, 41.763569>,  <38.195385, 34.124912, 41.722580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204025, 34.821571, 41.763569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584301, 34.703880, 41.802807>,  <38.812466, 34.633266, 41.826351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584301, 34.703880, 41.802807>,  <38.204025, 34.821571, 41.763569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584301, 34.703880, 41.802807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287303, 0.716301, -0.635901,
		0.116833, 0.632726, 0.765511,
		0.950688, -0.294228, 0.098096,
		38.869507, 34.615612, 41.832237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587811, 35.346790, 41.853859>,  <38.204025, 34.821571, 41.763569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587811, 35.346790, 41.853859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879784, 35.111622, 41.714405>,  <39.054966, 34.970520, 41.630733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879784, 35.111622, 41.714405>,  <38.587811, 35.346790, 41.853859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879784, 35.111622, 41.714405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267950, 0.715356, -0.645344,
		0.628808, 0.377643, 0.679696,
		0.729934, -0.587921, -0.348632,
		39.098763, 34.935246, 41.609814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033913, 35.887192, 41.609299>,  <38.587811, 35.346790, 41.853859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033913, 35.887192, 41.609299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193081, 35.545242, 41.476120>,  <39.288582, 35.340073, 41.396214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193081, 35.545242, 41.476120>,  <39.033913, 35.887192, 41.609299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193081, 35.545242, 41.476120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432637, 0.494882, -0.753603,
		0.809002, 0.155831, 0.566774,
		0.397921, -0.854873, -0.332942,
		39.312458, 35.288780, 41.376236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698410, 36.060387, 41.374630>,  <39.033913, 35.887192, 41.609299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698410, 36.060387, 41.374630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612255, 35.710133, 41.201714>,  <39.560562, 35.499981, 41.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612255, 35.710133, 41.201714>,  <39.698410, 36.060387, 41.374630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612255, 35.710133, 41.201714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560462, 0.251669, -0.789016,
		0.799682, -0.412226, 0.436553,
		-0.215386, -0.875633, -0.432292,
		39.547638, 35.447441, 41.072025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320927, 35.836285, 41.196438>,  <39.698410, 36.060387, 41.374630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320927, 35.836285, 41.196438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053429, 35.645145, 40.968601>,  <39.892929, 35.530460, 40.831898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053429, 35.645145, 40.968601>,  <40.320927, 35.836285, 41.196438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053429, 35.645145, 40.968601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544374, 0.207093, -0.812877,
		0.506392, -0.853681, 0.121636,
		-0.668747, -0.477850, -0.569592,
		39.852806, 35.501789, 40.797722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719673, 35.411724, 40.724331>,  <40.320927, 35.836285, 41.196438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719673, 35.411724, 40.724331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369926, 35.510120, 40.557018>,  <40.160076, 35.569160, 40.456631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369926, 35.510120, 40.557018>,  <40.719673, 35.411724, 40.724331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369926, 35.510120, 40.557018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448994, 0.083161, -0.889656,
		-0.184063, -0.965698, -0.183163,
		-0.874371, 0.245992, -0.418286,
		40.107616, 35.583920, 40.431534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815212, 35.043335, 40.051746>,  <40.719673, 35.411724, 40.724331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815212, 35.043335, 40.051746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513912, 35.305500, 40.029682>,  <40.333134, 35.462799, 40.016441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513912, 35.305500, 40.029682>,  <40.815212, 35.043335, 40.051746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513912, 35.305500, 40.029682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341407, 0.317925, -0.884514,
		-0.562187, -0.685094, -0.463241,
		-0.753251, 0.655416, -0.055163,
		40.287937, 35.502125, 40.013134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175938, 35.059040, 39.407745>,  <40.815212, 35.043335, 40.051746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175938, 35.059040, 39.407745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301739, 35.371769, 39.623093>,  <41.377220, 35.559406, 39.752300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301739, 35.371769, 39.623093>,  <41.175938, 35.059040, 39.407745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301739, 35.371769, 39.623093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948496, -0.281511, -0.145282,
		0.037971, 0.556329, -0.830094,
		0.314505, 0.781825, 0.538365,
		41.396091, 35.606316, 39.784603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604958, 35.510509, 39.016430>,  <41.175938, 35.059040, 39.407745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604958, 35.510509, 39.016430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735771, 35.541817, 39.393135>,  <41.814259, 35.560600, 39.619160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735771, 35.541817, 39.393135>,  <41.604958, 35.510509, 39.016430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735771, 35.541817, 39.393135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922450, -0.242899, -0.300143,
		0.205261, 0.966889, -0.151638,
		0.327038, 0.078271, 0.941764,
		41.833881, 35.565296, 39.675663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188625, 35.982059, 39.092442>,  <41.604958, 35.510509, 39.016430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188625, 35.982059, 39.092442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215221, 35.715874, 39.389828>,  <42.231178, 35.556164, 39.568260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215221, 35.715874, 39.389828>,  <42.188625, 35.982059, 39.092442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215221, 35.715874, 39.389828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945426, -0.196182, -0.260156,
		0.318978, 0.720189, 0.616101,
		0.066494, -0.665462, 0.743464,
		42.235168, 35.516235, 39.612865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793392, 36.195591, 39.447716>,  <42.188625, 35.982059, 39.092442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793392, 36.195591, 39.447716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694653, 35.808273, 39.463074>,  <42.635406, 35.575882, 39.472290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694653, 35.808273, 39.463074>,  <42.793392, 36.195591, 39.447716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694653, 35.808273, 39.463074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927764, -0.247591, -0.279199,
		0.279852, -0.033301, 0.959465,
		-0.246852, -0.968292, 0.038394,
		42.620598, 35.517784, 39.474590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315739, 35.696480, 39.747013>,  <42.793392, 36.195591, 39.447716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315739, 35.696480, 39.747013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073997, 35.504108, 39.492939>,  <42.928951, 35.388687, 39.340496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073997, 35.504108, 39.492939>,  <43.315739, 35.696480, 39.747013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073997, 35.504108, 39.492939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796449, -0.385232, -0.466117,
		-0.020526, -0.787594, 0.615852,
		-0.604357, -0.480928, -0.635186,
		42.892689, 35.359829, 39.302383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531803, 34.985435, 39.664021>,  <43.315739, 35.696480, 39.747013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531803, 34.985435, 39.664021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335770, 35.102112, 39.335453>,  <43.218151, 35.172119, 39.138313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335770, 35.102112, 39.335453>,  <43.531803, 34.985435, 39.664021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335770, 35.102112, 39.335453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770272, -0.296203, -0.564752,
		-0.408043, -0.909493, -0.079520,
		-0.490084, 0.291695, -0.821421,
		43.188744, 35.189621, 39.089027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750397, 34.482750, 39.287270>,  <43.531803, 34.985435, 39.664021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750397, 34.482750, 39.287270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590607, 34.780827, 39.073685>,  <43.494732, 34.959671, 38.945534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590607, 34.780827, 39.073685>,  <43.750397, 34.482750, 39.287270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590607, 34.780827, 39.073685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747546, -0.072363, -0.660257,
		-0.530655, -0.662916, -0.528155,
		-0.399476, 0.745189, -0.533960,
		43.470764, 35.004383, 38.913498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665863, 34.264168, 38.530270>,  <43.750397, 34.482750, 39.287270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665863, 34.264168, 38.530270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683193, 34.663403, 38.547924>,  <43.693592, 34.902943, 38.558517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683193, 34.663403, 38.547924>,  <43.665863, 34.264168, 38.530270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683193, 34.663403, 38.547924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577932, 0.010997, -0.816011,
		-0.814934, 0.060865, -0.576349,
		0.043328, 0.998085, 0.044138,
		43.696190, 34.962830, 38.561165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720974, 34.520454, 37.824192>,  <43.665863, 34.264168, 38.530270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720974, 34.520454, 37.824192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907730, 34.783981, 38.060150>,  <44.019783, 34.942097, 38.201725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907730, 34.783981, 38.060150>,  <43.720974, 34.520454, 37.824192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907730, 34.783981, 38.060150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777958, 0.011180, -0.628217,
		-0.420472, 0.752224, -0.507309,
		0.466888, 0.658813, 0.589900,
		44.047798, 34.981625, 38.237122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006535, 35.162235, 37.587017>,  <43.720974, 34.520454, 37.824192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006535, 35.162235, 37.587017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248863, 35.087803, 37.896431>,  <44.394260, 35.043144, 38.082077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248863, 35.087803, 37.896431>,  <44.006535, 35.162235, 37.587017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248863, 35.087803, 37.896431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785947, -0.011009, -0.618195,
		0.123550, 0.982473, 0.139580,
		0.605824, -0.186080, 0.773532,
		44.430611, 35.031979, 38.128490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556816, 35.628788, 37.666252>,  <44.006535, 35.162235, 37.587017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556816, 35.628788, 37.666252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683189, 35.290775, 37.838810>,  <44.759014, 35.087967, 37.942345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683189, 35.290775, 37.838810>,  <44.556816, 35.628788, 37.666252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683189, 35.290775, 37.838810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721505, -0.081292, -0.687621,
		0.616133, 0.528495, 0.584014,
		0.315929, -0.845035, 0.431399,
		44.777969, 35.037266, 37.968231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287739, 35.727894, 37.807884>,  <44.556816, 35.628788, 37.666252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287739, 35.727894, 37.807884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191444, 35.343937, 37.750393>,  <45.133667, 35.113564, 37.715897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191444, 35.343937, 37.750393>,  <45.287739, 35.727894, 37.807884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191444, 35.343937, 37.750393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803709, -0.114120, -0.583976,
		0.544150, -0.256101, 0.798945,
		-0.240733, -0.959890, -0.143732,
		45.119225, 35.055969, 37.707272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965183, 35.152355, 37.828465>,  <45.287739, 35.727894, 37.807884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965183, 35.152355, 37.828465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648315, 35.080597, 37.595127>,  <45.458195, 35.037540, 37.455124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648315, 35.080597, 37.595127>,  <45.965183, 35.152355, 37.828465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648315, 35.080597, 37.595127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568843, 0.129252, -0.812227,
		0.221112, -0.975248, -0.000338,
		-0.792166, -0.179401, -0.583342,
		45.410664, 35.026775, 37.420124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989372, 34.491783, 37.379047>,  <45.965183, 35.152355, 37.828465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989372, 34.491783, 37.379047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808308, 34.798691, 37.197327>,  <45.699669, 34.982838, 37.088295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808308, 34.798691, 37.197327>,  <45.989372, 34.491783, 37.379047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808308, 34.798691, 37.197327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710179, 0.002136, -0.704018,
		-0.539203, -0.641318, -0.545867,
		-0.452665, 0.767272, -0.454299,
		45.672508, 35.028873, 37.061035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760094, 34.371204, 36.719582>,  <45.989372, 34.491783, 37.379047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760094, 34.371204, 36.719582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841248, 34.762371, 36.739677>,  <45.889938, 34.997070, 36.751736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841248, 34.762371, 36.739677>,  <45.760094, 34.371204, 36.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841248, 34.762371, 36.739677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646318, -0.095191, -0.757107,
		-0.735602, 0.186077, -0.651356,
		0.202883, 0.977913, 0.050242,
		45.902111, 35.055744, 36.754749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612507, 34.787060, 36.071293>,  <45.760094, 34.371204, 36.719582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612507, 34.787060, 36.071293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905491, 34.958096, 36.283203>,  <46.081280, 35.060719, 36.410351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905491, 34.958096, 36.283203>,  <45.612507, 34.787060, 36.071293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905491, 34.958096, 36.283203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658876, -0.249278, -0.709748,
		-0.171422, 0.868921, -0.464317,
		0.732459, 0.427594, 0.529780,
		46.125229, 35.086372, 36.442139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178757, 34.940434, 35.605949>,  <45.612507, 34.787060, 36.071293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178757, 34.940434, 35.605949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394802, 34.967510, 35.941498>,  <46.524429, 34.983757, 36.142826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394802, 34.967510, 35.941498>,  <46.178757, 34.940434, 35.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.394802, 34.967510, 35.941498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841150, -0.011086, -0.540688,
		-0.027298, 0.997645, -0.062923,
		0.540113, 0.067688, 0.838866,
		46.556835, 34.987816, 36.193157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497608, 35.525990, 35.656822>,  <46.178757, 34.940434, 35.605949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497608, 35.525990, 35.656822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710300, 35.233650, 35.827991>,  <46.837917, 35.058247, 35.930695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710300, 35.233650, 35.827991>,  <46.497608, 35.525990, 35.656822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710300, 35.233650, 35.827991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633854, 0.008318, -0.773408,
		0.561684, 0.682491, 0.467673,
		0.531734, -0.730847, 0.427927,
		46.869820, 35.014397, 35.956371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174820, 35.658978, 35.882130>,  <46.497608, 35.525990, 35.656822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174820, 35.658978, 35.882130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141144, 35.302769, 35.703300>,  <47.120937, 35.089043, 35.596001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141144, 35.302769, 35.703300>,  <47.174820, 35.658978, 35.882130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.141144, 35.302769, 35.703300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581472, 0.320449, -0.747799,
		0.809198, -0.322923, 0.490835,
		-0.084194, -0.890524, -0.447077,
		47.115887, 35.035610, 35.569176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.801537, 35.552448, 35.649914>,  <47.174820, 35.658978, 35.882130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.801537, 35.552448, 35.649914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536652, 35.339027, 35.439468>,  <47.377720, 35.210976, 35.313202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536652, 35.339027, 35.439468>,  <47.801537, 35.552448, 35.649914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536652, 35.339027, 35.439468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516048, 0.184337, -0.836490,
		0.543296, -0.825432, 0.153271,
		-0.662212, -0.533556, -0.526111,
		47.337990, 35.178959, 35.281635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.079357, 34.980225, 35.171650>,  <47.801537, 35.552448, 35.649914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.079357, 34.980225, 35.171650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745670, 35.156887, 35.039574>,  <47.545460, 35.262886, 34.960327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745670, 35.156887, 35.039574>,  <48.079357, 34.980225, 35.171650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745670, 35.156887, 35.039574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512472, 0.399818, -0.759946,
		-0.203618, -0.803172, -0.559870,
		-0.834213, 0.441657, -0.330193,
		47.495407, 35.289383, 34.940517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.314007, 35.043400, 29.873783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939217, 35.151543, 29.785252>,  <38.714344, 35.216431, 29.732132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939217, 35.151543, 29.785252>,  <39.314007, 35.043400, 29.873783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939217, 35.151543, 29.785252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308448, -0.342456, 0.887459,
		0.164137, 0.899794, 0.404264,
		-0.936973, 0.270359, -0.221330,
		38.658123, 35.232651, 29.718853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069675, 35.350300, 30.483679>,  <39.314007, 35.043400, 29.873783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069675, 35.350300, 30.483679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.716824, 35.299900, 30.302145>,  <38.505112, 35.269661, 30.193224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.716824, 35.299900, 30.302145>,  <39.069675, 35.350300, 30.483679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716824, 35.299900, 30.302145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412611, -0.257956, 0.873619,
		-0.227144, 0.957905, 0.175564,
		-0.882133, -0.125998, -0.453835,
		38.452183, 35.262100, 30.165995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648743, 35.779301, 30.823013>,  <39.069675, 35.350300, 30.483679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648743, 35.779301, 30.823013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423912, 35.499756, 30.646082>,  <38.289013, 35.332027, 30.539923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423912, 35.499756, 30.646082>,  <38.648743, 35.779301, 30.823013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423912, 35.499756, 30.646082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362034, -0.272955, 0.891306,
		-0.743639, 0.661123, -0.099591,
		-0.562079, -0.698865, -0.442329,
		38.255287, 35.290096, 30.513384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009529, 35.863663, 31.092615>,  <38.648743, 35.779301, 30.823013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009529, 35.863663, 31.092615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006138, 35.482975, 30.969873>,  <38.004105, 35.254562, 30.896229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006138, 35.482975, 30.969873>,  <38.009529, 35.863663, 31.092615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006138, 35.482975, 30.969873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366504, -0.282553, 0.886475,
		-0.930378, 0.119980, -0.346412,
		-0.008479, -0.951719, -0.306855,
		38.003593, 35.197460, 30.877817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366402, 35.646309, 31.238647>,  <38.009529, 35.863663, 31.092615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366402, 35.646309, 31.238647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586948, 35.313290, 31.217245>,  <37.719276, 35.113480, 31.204403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586948, 35.313290, 31.217245>,  <37.366402, 35.646309, 31.238647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586948, 35.313290, 31.217245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481639, -0.370030, 0.794419,
		-0.681189, -0.412245, -0.605009,
		0.551367, -0.832545, -0.053507,
		37.752357, 35.063526, 31.201193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900410, 35.188854, 31.534029>,  <37.366402, 35.646309, 31.238647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900410, 35.188854, 31.534029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259487, 35.013885, 31.555218>,  <37.474934, 34.908905, 31.567932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259487, 35.013885, 31.555218>,  <36.900410, 35.188854, 31.534029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259487, 35.013885, 31.555218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247631, -0.401405, 0.881790,
		-0.364456, -0.804693, -0.468659,
		0.897692, -0.437428, 0.052973,
		37.528793, 34.882656, 31.571110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688847, 34.424278, 31.744402>,  <36.900410, 35.188854, 31.534029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688847, 34.424278, 31.744402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066334, 34.526478, 31.828411>,  <37.292828, 34.587799, 31.878817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066334, 34.526478, 31.828411>,  <36.688847, 34.424278, 31.744402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066334, 34.526478, 31.828411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121235, -0.323579, 0.938402,
		0.307719, -0.911053, -0.274393,
		0.943722, 0.255498, 0.210023,
		37.349449, 34.603127, 31.891418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857624, 33.912609, 32.196640>,  <36.688847, 34.424278, 31.744402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857624, 33.912609, 32.196640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139721, 34.190353, 32.253906>,  <37.308979, 34.356998, 32.288265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139721, 34.190353, 32.253906>,  <36.857624, 33.912609, 32.196640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139721, 34.190353, 32.253906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000638, -0.201312, 0.979527,
		0.708967, -0.690894, -0.141531,
		0.705241, 0.694362, 0.143165,
		37.351292, 34.398663, 32.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276550, 33.627323, 32.721470>,  <36.857624, 33.912609, 32.196640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276550, 33.627323, 32.721470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351799, 34.019802, 32.738750>,  <37.396950, 34.255287, 32.749119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351799, 34.019802, 32.738750>,  <37.276550, 33.627323, 32.721470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351799, 34.019802, 32.738750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046618, -0.052854, 0.997513,
		0.981038, -0.185644, -0.055684,
		0.188126, 0.981194, 0.043197,
		37.408237, 34.314159, 32.751709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859230, 33.740143, 33.187664>,  <37.276550, 33.627323, 32.721470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859230, 33.740143, 33.187664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706017, 34.109528, 33.196629>,  <37.614086, 34.331158, 33.202007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706017, 34.109528, 33.196629>,  <37.859230, 33.740143, 33.187664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706017, 34.109528, 33.196629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194069, 0.056733, 0.979346,
		0.903117, 0.379475, -0.200946,
		-0.383038, 0.923461, 0.022408,
		37.591106, 34.386566, 33.203350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396160, 34.161846, 33.541153>,  <37.859230, 33.740143, 33.187664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396160, 34.161846, 33.541153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045444, 34.351749, 33.571716>,  <37.835014, 34.465691, 33.590054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045444, 34.351749, 33.571716>,  <38.396160, 34.161846, 33.541153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045444, 34.351749, 33.571716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096073, 0.017262, 0.995225,
		0.471174, 0.879946, -0.060747,
		-0.876793, 0.474760, 0.076406,
		37.782406, 34.494179, 33.594639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571392, 34.866367, 33.980003>,  <38.396160, 34.161846, 33.541153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571392, 34.866367, 33.980003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190231, 34.745068, 33.978306>,  <37.961536, 34.672287, 33.977287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190231, 34.745068, 33.978306>,  <38.571392, 34.866367, 33.980003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190231, 34.745068, 33.978306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031307, 0.084434, 0.995937,
		-0.301659, 0.949163, -0.089952,
		-0.952902, -0.303249, -0.004245,
		37.904362, 34.654095, 33.977032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306511, 35.221962, 34.516449>,  <38.571392, 34.866367, 33.980003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306511, 35.221962, 34.516449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028355, 34.940884, 34.456253>,  <37.861462, 34.772236, 34.420135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028355, 34.940884, 34.456253>,  <38.306511, 35.221962, 34.516449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028355, 34.940884, 34.456253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133004, -0.079951, 0.987886,
		-0.706212, 0.706987, -0.037863,
		-0.695395, -0.702693, -0.150494,
		37.819736, 34.730076, 34.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886772, 35.399399, 35.010670>,  <38.306511, 35.221962, 34.516449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886772, 35.399399, 35.010670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781021, 35.026913, 34.910313>,  <37.717571, 34.803421, 34.850098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781021, 35.026913, 34.910313>,  <37.886772, 35.399399, 35.010670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781021, 35.026913, 34.910313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301222, -0.167399, 0.938745,
		-0.916171, 0.323757, -0.236245,
		-0.264378, -0.931214, -0.250889,
		37.701706, 34.747547, 34.835045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274689, 35.250732, 35.291954>,  <37.886772, 35.399399, 35.010670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274689, 35.250732, 35.291954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413940, 34.880310, 35.233685>,  <37.497490, 34.658054, 35.198723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413940, 34.880310, 35.233685>,  <37.274689, 35.250732, 35.291954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413940, 34.880310, 35.233685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234852, -0.236593, 0.942798,
		-0.907552, -0.294005, -0.299852,
		0.348130, -0.926059, -0.145673,
		37.518379, 34.602493, 35.189983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760330, 34.746052, 35.643253>,  <37.274689, 35.250732, 35.291954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760330, 34.746052, 35.643253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110229, 34.562561, 35.580776>,  <37.320168, 34.452469, 35.543289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110229, 34.562561, 35.580776>,  <36.760330, 34.746052, 35.643253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110229, 34.562561, 35.580776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007946, -0.335853, 0.941881,
		-0.484521, -0.822663, -0.297431,
		0.874743, -0.458724, -0.156191,
		37.372654, 34.424942, 35.533920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684612, 34.087803, 36.070400>,  <36.760330, 34.746052, 35.643253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684612, 34.087803, 36.070400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068317, 34.189358, 36.020821>,  <37.298538, 34.250290, 35.991074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068317, 34.189358, 36.020821>,  <36.684612, 34.087803, 36.070400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068317, 34.189358, 36.020821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146095, -0.070256, 0.986773,
		0.241823, -0.964678, -0.104486,
		0.959259, 0.253889, -0.123946,
		37.356094, 34.265526, 35.983639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166378, 33.492233, 36.299938>,  <36.684612, 34.087803, 36.070400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166378, 33.492233, 36.299938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403057, 33.813328, 36.329605>,  <37.545067, 34.005985, 36.347404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403057, 33.813328, 36.329605>,  <37.166378, 33.492233, 36.299938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403057, 33.813328, 36.329605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103303, -0.166747, 0.980573,
		0.799513, -0.572543, -0.181589,
		0.591700, 0.802740, 0.074171,
		37.580566, 34.054150, 36.351856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785706, 33.317890, 36.793159>,  <37.166378, 33.492233, 36.299938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785706, 33.317890, 36.793159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768867, 33.717445, 36.784657>,  <37.758766, 33.957180, 36.779556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768867, 33.717445, 36.784657>,  <37.785706, 33.317890, 36.793159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768867, 33.717445, 36.784657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036661, 0.019717, 0.999133,
		0.998441, 0.042835, 0.035790,
		-0.042092, 0.998888, -0.021256,
		37.756241, 34.017113, 36.778278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213146, 33.506618, 37.385578>,  <37.785706, 33.317890, 36.793159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213146, 33.506618, 37.385578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002037, 33.834263, 37.295685>,  <37.875370, 34.030849, 37.241749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002037, 33.834263, 37.295685>,  <38.213146, 33.506618, 37.385578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002037, 33.834263, 37.295685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085283, 0.212147, 0.973510,
		0.845093, 0.532959, -0.042109,
		-0.527774, 0.819115, -0.224736,
		37.843704, 34.079998, 37.228264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319332, 33.927402, 38.041294>,  <38.213146, 33.506618, 37.385578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319332, 33.927402, 38.041294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009750, 34.081123, 37.839977>,  <37.824001, 34.173355, 37.719189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009750, 34.081123, 37.839977>,  <38.319332, 33.927402, 38.041294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009750, 34.081123, 37.839977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368963, 0.372259, 0.851639,
		0.514641, 0.844828, -0.146320,
		-0.773958, 0.384302, -0.503290,
		37.777561, 34.196415, 37.688992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307217, 34.520992, 38.482079>,  <38.319332, 33.927402, 38.041294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307217, 34.520992, 38.482079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986671, 34.483032, 38.245838>,  <37.794346, 34.460255, 38.104095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986671, 34.483032, 38.245838>,  <38.307217, 34.520992, 38.482079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986671, 34.483032, 38.245838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576639, 0.385112, 0.720538,
		0.159066, 0.917977, -0.363340,
		-0.801364, -0.094903, -0.590600,
		37.746262, 34.454563, 38.068657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883629, 34.348553, 37.870911>,  <38.307217, 34.520992, 38.482079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883629, 34.348553, 37.870911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167278, 34.118328, 38.033817>,  <39.337467, 33.980194, 38.131561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167278, 34.118328, 38.033817>,  <38.883629, 34.348553, 37.870911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167278, 34.118328, 38.033817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593606, 0.175629, -0.785357,
		0.380496, 0.798673, 0.466202,
		0.709122, -0.575565, 0.407271,
		39.380016, 33.945660, 38.155998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503403, 34.628483, 37.612411>,  <38.883629, 34.348553, 37.870911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503403, 34.628483, 37.612411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607346, 34.259956, 37.728107>,  <39.669712, 34.038841, 37.797523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607346, 34.259956, 37.728107>,  <39.503403, 34.628483, 37.612411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607346, 34.259956, 37.728107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773361, 0.019191, -0.633675,
		0.578262, 0.388348, 0.717495,
		0.259856, -0.921313, 0.289236,
		39.685303, 33.983562, 37.814877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117149, 34.710384, 37.504154>,  <39.503403, 34.628483, 37.612411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117149, 34.710384, 37.504154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.031933, 34.320652, 37.533245>,  <39.980801, 34.086811, 37.550701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.031933, 34.320652, 37.533245>,  <40.117149, 34.710384, 37.504154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031933, 34.320652, 37.533245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576983, -0.185536, -0.795403,
		0.788481, -0.127492, 0.601701,
		-0.213045, -0.974332, 0.072731,
		39.968018, 34.028351, 37.555065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701622, 34.424728, 37.322617>,  <40.117149, 34.710384, 37.504154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701622, 34.424728, 37.322617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460033, 34.111553, 37.262970>,  <40.315083, 33.923649, 37.227184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460033, 34.111553, 37.262970>,  <40.701622, 34.424728, 37.322617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460033, 34.111553, 37.262970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542315, -0.266606, -0.796753,
		0.584051, -0.562080, 0.585619,
		-0.603969, -0.782935, -0.149113,
		40.278843, 33.876671, 37.218235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050354, 33.856468, 37.219582>,  <40.701622, 34.424728, 37.322617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050354, 33.856468, 37.219582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703339, 33.773979, 37.038540>,  <40.495129, 33.724487, 36.929913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703339, 33.773979, 37.038540>,  <41.050354, 33.856468, 37.219582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703339, 33.773979, 37.038540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497280, -0.377334, -0.781237,
		-0.009678, -0.902825, 0.429899,
		-0.867536, -0.206219, -0.452608,
		40.443077, 33.712112, 36.902756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177956, 33.274128, 36.941174>,  <41.050354, 33.856468, 37.219582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177956, 33.274128, 36.941174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.868664, 33.385403, 36.713234>,  <40.683086, 33.452168, 36.576469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.868664, 33.385403, 36.713234>,  <41.177956, 33.274128, 36.941174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868664, 33.385403, 36.713234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485747, -0.317831, -0.814268,
		-0.407631, -0.906420, 0.110631,
		-0.773231, 0.278183, -0.569849,
		40.636696, 33.468857, 36.542278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112808, 32.739937, 36.408527>,  <41.177956, 33.274128, 36.941174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112808, 32.739937, 36.408527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874100, 33.025452, 36.261902>,  <40.730877, 33.196762, 36.173927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874100, 33.025452, 36.261902>,  <41.112808, 32.739937, 36.408527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874100, 33.025452, 36.261902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027823, -0.438144, -0.898474,
		-0.801931, -0.546380, 0.241611,
		-0.596769, 0.713791, -0.366563,
		40.695068, 33.239590, 36.151932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638885, 32.422192, 36.034950>,  <41.112808, 32.739937, 36.408527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638885, 32.422192, 36.034950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.612457, 32.797169, 35.898220>,  <40.596600, 33.022156, 35.816181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.612457, 32.797169, 35.898220>,  <40.638885, 32.422192, 36.034950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612457, 32.797169, 35.898220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106663, -0.333972, -0.936529,
		-0.992098, -0.098339, -0.077923,
		-0.066073, 0.937439, -0.341822,
		40.592636, 33.078400, 35.795673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203125, 32.496052, 35.378647>,  <40.638885, 32.422192, 36.034950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203125, 32.496052, 35.378647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465275, 32.798134, 35.373688>,  <40.622562, 32.979382, 35.370712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465275, 32.798134, 35.373688>,  <40.203125, 32.496052, 35.378647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465275, 32.798134, 35.373688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175998, -0.168657, -0.969835,
		-0.734515, 0.633421, -0.243448,
		0.655372, 0.755204, -0.012400,
		40.661888, 33.024696, 35.369968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123650, 32.596066, 34.735870>,  <40.203125, 32.496052, 35.378647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123650, 32.596066, 34.735870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431534, 32.829056, 34.840385>,  <40.616264, 32.968849, 34.903095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431534, 32.829056, 34.840385>,  <40.123650, 32.596066, 34.735870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431534, 32.829056, 34.840385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288859, 0.047233, -0.956206,
		-0.569310, 0.811474, -0.131898,
		0.769706, 0.582477, 0.261291,
		40.662445, 33.003799, 34.918774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165344, 33.023861, 34.208252>,  <40.123650, 32.596066, 34.735870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165344, 33.023861, 34.208252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.521267, 33.087132, 34.379471>,  <40.734821, 33.125092, 34.482201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.521267, 33.087132, 34.379471>,  <40.165344, 33.023861, 34.208252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521267, 33.087132, 34.379471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383035, 0.250972, -0.888986,
		-0.248042, 0.954984, 0.162730,
		0.889808, 0.158175, 0.428044,
		40.788208, 33.134583, 34.507885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401875, 33.835892, 34.112690>,  <40.165344, 33.023861, 34.208252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401875, 33.835892, 34.112690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711254, 33.586910, 34.160572>,  <40.896881, 33.437523, 34.189301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711254, 33.586910, 34.160572>,  <40.401875, 33.835892, 34.112690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711254, 33.586910, 34.160572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272562, 0.156097, -0.949391,
		0.572265, 0.766933, 0.290390,
		0.773448, -0.622453, 0.119708,
		40.943287, 33.400173, 34.196484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108551, 34.244396, 34.071564>,  <40.401875, 33.835892, 34.112690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108551, 34.244396, 34.071564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.094234, 33.866348, 33.941662>,  <41.085644, 33.639519, 33.863720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.094234, 33.866348, 33.941662>,  <41.108551, 34.244396, 34.071564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094234, 33.866348, 33.941662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214928, 0.310081, -0.926097,
		0.975974, -0.102950, 0.192033,
		-0.035796, -0.945120, -0.324757,
		41.083496, 33.582813, 33.844234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687931, 34.185497, 33.512878>,  <41.108551, 34.244396, 34.071564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687931, 34.185497, 33.512878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442265, 33.879387, 33.435787>,  <41.294865, 33.695721, 33.389534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442265, 33.879387, 33.435787>,  <41.687931, 34.185497, 33.512878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442265, 33.879387, 33.435787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179436, 0.102404, -0.978425,
		0.768505, -0.635500, 0.074425,
		-0.614168, -0.765279, -0.192729,
		41.258015, 33.649803, 33.377968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027634, 33.879894, 32.952686>,  <41.687931, 34.185497, 33.512878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027634, 33.879894, 32.952686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.647579, 33.755169, 32.952019>,  <41.419544, 33.680332, 32.951618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.647579, 33.755169, 32.952019>,  <42.027634, 33.879894, 32.952686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647579, 33.755169, 32.952019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011399, 0.040078, -0.999132,
		0.311612, -0.949297, -0.041634,
		-0.950141, -0.311816, -0.001667,
		41.362537, 33.661625, 32.951519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980854, 33.375221, 32.431202>,  <42.027634, 33.879894, 32.952686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980854, 33.375221, 32.431202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593822, 33.464581, 32.478336>,  <41.361603, 33.518196, 32.506618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593822, 33.464581, 32.478336>,  <41.980854, 33.375221, 32.431202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593822, 33.464581, 32.478336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132369, -0.051178, -0.989878,
		-0.215107, -0.973383, 0.079089,
		-0.967578, 0.223398, 0.117837,
		41.303551, 33.531601, 32.513687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528423, 32.925613, 31.984217>,  <41.980854, 33.375221, 32.431202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528423, 32.925613, 31.984217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.306355, 33.247898, 32.066792>,  <41.173115, 33.441269, 32.116337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.306355, 33.247898, 32.066792>,  <41.528423, 32.925613, 31.984217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306355, 33.247898, 32.066792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213305, 0.101980, -0.971649,
		-0.803922, -0.583462, 0.115246,
		-0.555168, 0.805712, 0.206439,
		41.139805, 33.489613, 32.128723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837769, 32.920040, 31.503433>,  <41.528423, 32.925613, 31.984217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837769, 32.920040, 31.503433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910694, 33.295528, 31.620434>,  <40.954449, 33.520821, 31.690634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910694, 33.295528, 31.620434>,  <40.837769, 32.920040, 31.503433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910694, 33.295528, 31.620434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077617, 0.310298, -0.947466,
		-0.980172, 0.150036, 0.129433,
		0.182316, 0.938725, 0.292500,
		40.965389, 33.577145, 31.708183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.083775, 33.405922, 31.189892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390572, 33.636250, 31.303144>,  <40.574650, 33.774445, 31.371096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390572, 33.636250, 31.303144>,  <40.083775, 33.405922, 31.189892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390572, 33.636250, 31.303144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029938, 0.408652, -0.912199,
		-0.640961, 0.708123, 0.296193,
		0.766989, 0.575817, 0.283129,
		40.620670, 33.808994, 31.388083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914169, 33.945175, 30.849018>,  <40.083775, 33.405922, 31.189892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914169, 33.945175, 30.849018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.288113, 34.029526, 30.963266>,  <40.512478, 34.080135, 31.031815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.288113, 34.029526, 30.963266>,  <39.914169, 33.945175, 30.849018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288113, 34.029526, 30.963266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073537, 0.672037, -0.736857,
		-0.347330, 0.709858, 0.612750,
		0.934855, 0.210873, 0.285620,
		40.568569, 34.092789, 31.048952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922012, 34.604748, 30.900305>,  <39.914169, 33.945175, 30.849018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922012, 34.604748, 30.900305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302399, 34.507446, 30.823900>,  <40.530632, 34.449066, 30.778057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302399, 34.507446, 30.823900>,  <39.922012, 34.604748, 30.900305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302399, 34.507446, 30.823900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006788, 0.601031, -0.799197,
		0.309209, 0.761309, 0.569911,
		0.950970, -0.243250, -0.191012,
		40.587688, 34.434471, 30.766596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214478, 35.202648, 30.620083>,  <39.922012, 34.604748, 30.900305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214478, 35.202648, 30.620083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.451523, 34.903893, 30.499435>,  <40.593750, 34.724640, 30.427048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.451523, 34.903893, 30.499435>,  <40.214478, 35.202648, 30.620083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451523, 34.903893, 30.499435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081025, 0.427828, -0.900221,
		0.801404, 0.509041, 0.314052,
		0.592610, -0.746887, -0.301618,
		40.629307, 34.679825, 30.408951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738728, 35.666801, 30.259359>,  <40.214478, 35.202648, 30.620083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738728, 35.666801, 30.259359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.806118, 35.294235, 30.130318>,  <40.846550, 35.070694, 30.052893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.806118, 35.294235, 30.130318>,  <40.738728, 35.666801, 30.259359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806118, 35.294235, 30.130318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241785, 0.356333, -0.902533,
		0.955592, 0.074052, 0.285236,
		0.168474, -0.931420, -0.322604,
		40.856659, 35.014809, 30.033537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296642, 35.717831, 29.905230>,  <40.738728, 35.666801, 30.259359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296642, 35.717831, 29.905230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.116787, 35.387299, 29.769587>,  <41.008873, 35.188980, 29.688200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.116787, 35.387299, 29.769587>,  <41.296642, 35.717831, 29.905230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116787, 35.387299, 29.769587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201571, 0.275985, -0.939788,
		0.870168, -0.490921, 0.042471,
		-0.449640, -0.826335, -0.339109,
		40.981895, 35.139397, 29.667854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793308, 35.365658, 29.455412>,  <41.296642, 35.717831, 29.905230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793308, 35.365658, 29.455412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428780, 35.237076, 29.352522>,  <41.210064, 35.159927, 29.290789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428780, 35.237076, 29.352522>,  <41.793308, 35.365658, 29.455412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428780, 35.237076, 29.352522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149813, 0.323024, -0.934458,
		0.383476, -0.890125, -0.246219,
		-0.911319, -0.321455, -0.257225,
		41.155384, 35.140640, 29.275354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799229, 34.794216, 28.870953>,  <41.793308, 35.365658, 29.455412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799229, 34.794216, 28.870953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.459423, 35.004856, 28.858187>,  <41.255539, 35.131241, 28.850527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.459423, 35.004856, 28.858187>,  <41.799229, 34.794216, 28.870953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459423, 35.004856, 28.858187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206950, 0.276990, -0.938322,
		-0.485278, -0.803723, -0.344287,
		-0.849515, 0.526597, -0.031913,
		41.204567, 35.162834, 28.848612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675354, 34.802505, 28.160187>,  <41.799229, 34.794216, 28.870953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675354, 34.802505, 28.160187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448990, 35.096607, 28.309393>,  <41.313171, 35.273067, 28.398916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448990, 35.096607, 28.309393>,  <41.675354, 34.802505, 28.160187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448990, 35.096607, 28.309393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088852, 0.504186, -0.859013,
		-0.819665, -0.452981, -0.350653,
		-0.565910, 0.735259, 0.373015,
		41.279217, 35.317184, 28.421297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270802, 34.891411, 27.602350>,  <41.675354, 34.802505, 28.160187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270802, 34.891411, 27.602350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260124, 35.220787, 27.829062>,  <41.253716, 35.418411, 27.965088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260124, 35.220787, 27.829062>,  <41.270802, 34.891411, 27.602350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260124, 35.220787, 27.829062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322590, 0.543744, -0.774776,
		-0.946162, 0.162153, -0.280148,
		-0.026696, 0.823437, 0.566780,
		41.252113, 35.467819, 27.999096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108055, 35.402931, 27.201159>,  <41.270802, 34.891411, 27.602350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108055, 35.402931, 27.201159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240986, 35.632782, 27.500320>,  <41.320744, 35.770695, 27.679817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240986, 35.632782, 27.500320>,  <41.108055, 35.402931, 27.201159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240986, 35.632782, 27.500320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370891, 0.649469, -0.663799,
		-0.867180, 0.497988, 0.002709,
		0.332323, 0.574629, 0.747906,
		41.340683, 35.805172, 27.724691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781391, 36.085232, 27.063150>,  <41.108055, 35.402931, 27.201159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781391, 36.085232, 27.063150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126755, 36.120483, 27.261850>,  <41.333973, 36.141636, 27.381071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126755, 36.120483, 27.261850>,  <40.781391, 36.085232, 27.063150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126755, 36.120483, 27.261850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291225, 0.716954, -0.633376,
		-0.411967, 0.691528, 0.593357,
		0.863407, 0.088130, 0.496751,
		41.385777, 36.146923, 27.410875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724709, 36.727901, 27.259975>,  <40.781391, 36.085232, 27.063150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724709, 36.727901, 27.259975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115276, 36.656403, 27.308390>,  <41.349617, 36.613503, 27.337439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115276, 36.656403, 27.308390>,  <40.724709, 36.727901, 27.259975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115276, 36.656403, 27.308390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215835, 0.818455, -0.532491,
		-0.003882, 0.546059, 0.837737,
		0.976422, -0.178746, 0.121036,
		41.408203, 36.602779, 27.344700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032944, 37.415905, 27.298613>,  <40.724709, 36.727901, 27.259975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032944, 37.415905, 27.298613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303516, 37.151077, 27.169554>,  <41.465862, 36.992180, 27.092117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303516, 37.151077, 27.169554>,  <41.032944, 37.415905, 27.298613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303516, 37.151077, 27.169554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344631, 0.671696, -0.655785,
		0.650896, 0.332402, 0.682528,
		0.676435, -0.662068, -0.322648,
		41.506447, 36.952457, 27.072760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598175, 37.784573, 27.181929>,  <41.032944, 37.415905, 27.298613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598175, 37.784573, 27.181929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.704903, 37.447731, 26.994452>,  <41.768940, 37.245628, 26.881966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.704903, 37.447731, 26.994452>,  <41.598175, 37.784573, 27.181929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704903, 37.447731, 26.994452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437009, 0.539170, -0.719943,
		0.858971, -0.012730, 0.511866,
		0.266818, -0.842101, -0.468695,
		41.784946, 37.195103, 26.853844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292549, 37.965214, 26.962135>,  <41.598175, 37.784573, 27.181929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292549, 37.965214, 26.962135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.224392, 37.630020, 26.754770>,  <42.183498, 37.428905, 26.630352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.224392, 37.630020, 26.754770>,  <42.292549, 37.965214, 26.962135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224392, 37.630020, 26.754770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754194, 0.227675, -0.615918,
		0.634157, -0.495934, 0.593206,
		-0.170397, -0.837982, -0.518412,
		42.173271, 37.378624, 26.599247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925133, 37.660492, 26.831652>,  <42.292549, 37.965214, 26.962135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925133, 37.660492, 26.831652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681587, 37.501598, 26.556992>,  <42.535461, 37.406261, 26.392195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681587, 37.501598, 26.556992>,  <42.925133, 37.660492, 26.831652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681587, 37.501598, 26.556992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669050, 0.207923, -0.713540,
		0.426215, -0.893852, 0.139176,
		-0.608862, -0.397237, -0.686652,
		42.498928, 37.382427, 26.350996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398029, 37.237293, 26.367437>,  <42.925133, 37.660492, 26.831652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398029, 37.237293, 26.367437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.073055, 37.287998, 26.139793>,  <42.878071, 37.318420, 26.003206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.073055, 37.287998, 26.139793>,  <43.398029, 37.237293, 26.367437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073055, 37.287998, 26.139793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582939, 0.157074, -0.797188,
		-0.011663, -0.979417, -0.201508,
		-0.812432, 0.126764, -0.569109,
		42.829327, 37.326027, 25.969061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458210, 36.866695, 25.751408>,  <43.398029, 37.237293, 26.367437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458210, 36.866695, 25.751408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.205078, 37.159500, 25.650459>,  <43.053200, 37.335182, 25.589891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.205078, 37.159500, 25.650459>,  <43.458210, 36.866695, 25.751408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205078, 37.159500, 25.650459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468325, 0.102302, -0.877613,
		-0.616605, -0.673568, -0.407558,
		-0.632827, 0.732011, -0.252370,
		43.015228, 37.379105, 25.574749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260891, 36.746998, 24.994377>,  <43.458210, 36.866695, 25.751408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260891, 36.746998, 24.994377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154095, 37.122120, 25.083134>,  <43.090015, 37.347195, 25.136387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154095, 37.122120, 25.083134>,  <43.260891, 36.746998, 24.994377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154095, 37.122120, 25.083134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141360, 0.265871, -0.953588,
		-0.953275, -0.223234, -0.203554,
		-0.266992, 0.937805, 0.221892,
		43.073997, 37.403461, 25.149702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792927, 37.013618, 24.521776>,  <43.260891, 36.746998, 24.994377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792927, 37.013618, 24.521776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.924065, 37.374073, 24.635241>,  <43.002747, 37.590347, 24.703320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.924065, 37.374073, 24.635241>,  <42.792927, 37.013618, 24.521776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924065, 37.374073, 24.635241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091516, 0.329138, -0.939837,
		-0.940289, 0.282160, 0.190375,
		0.327844, 0.901140, 0.283662,
		43.022419, 37.644417, 24.720339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311375, 37.425533, 24.272791>,  <42.792927, 37.013618, 24.521776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311375, 37.425533, 24.272791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.652866, 37.628025, 24.321562>,  <42.857761, 37.749519, 24.350824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.652866, 37.628025, 24.321562>,  <42.311375, 37.425533, 24.272791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652866, 37.628025, 24.321562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235512, 0.584238, -0.776659,
		-0.464406, 0.634345, 0.618008,
		0.853734, 0.506234, 0.121928,
		42.908985, 37.779896, 24.358141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370247, 38.210590, 24.198336>,  <42.311375, 37.425533, 24.272791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370247, 38.210590, 24.198336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709427, 38.037323, 24.076122>,  <42.912933, 37.933361, 24.002794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709427, 38.037323, 24.076122>,  <42.370247, 38.210590, 24.198336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709427, 38.037323, 24.076122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165983, 0.330428, -0.929121,
		0.503426, 0.838558, 0.208286,
		0.847946, -0.433172, -0.305532,
		42.963810, 37.907372, 23.984463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335934, 38.541943, 23.507502>,  <42.370247, 38.210590, 24.198336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335934, 38.541943, 23.507502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.674782, 38.329605, 23.497734>,  <42.878090, 38.202202, 23.491875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.674782, 38.329605, 23.497734>,  <42.335934, 38.541943, 23.507502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674782, 38.329605, 23.497734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029302, -0.000784, -0.999570,
		0.530592, 0.847472, -0.016219,
		0.847121, -0.530839, -0.024417,
		42.928917, 38.170353, 23.490410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789948, 38.969864, 23.437635>,  <42.335934, 38.541943, 23.507502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789948, 38.969864, 23.437635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482414, 38.841366, 23.216478>,  <41.297894, 38.764267, 23.083784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482414, 38.841366, 23.216478>,  <41.789948, 38.969864, 23.437635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482414, 38.841366, 23.216478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580939, -0.010396, 0.813881,
		-0.267206, 0.946938, -0.178632,
		-0.768837, -0.321248, -0.552891,
		41.251762, 38.744991, 23.050611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305614, 39.388504, 23.622164>,  <41.789948, 38.969864, 23.437635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305614, 39.388504, 23.622164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140923, 39.062244, 23.459587>,  <41.042107, 38.866489, 23.362041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140923, 39.062244, 23.459587>,  <41.305614, 39.388504, 23.622164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140923, 39.062244, 23.459587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635365, -0.062802, 0.769654,
		-0.653293, 0.575128, -0.492378,
		-0.411727, -0.815650, -0.406444,
		41.017403, 38.817551, 23.337654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554329, 39.495064, 23.675850>,  <41.305614, 39.388504, 23.622164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554329, 39.495064, 23.675850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628590, 39.102619, 23.654144>,  <40.673145, 38.867153, 23.641121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628590, 39.102619, 23.654144>,  <40.554329, 39.495064, 23.675850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628590, 39.102619, 23.654144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586257, -0.154915, 0.795175,
		-0.788566, -0.115812, -0.603947,
		0.185652, -0.981116, -0.054265,
		40.684284, 38.808285, 23.637865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014034, 39.250488, 24.015636>,  <40.554329, 39.495064, 23.675850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014034, 39.250488, 24.015636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.223534, 38.911385, 23.982199>,  <40.349236, 38.707924, 23.962135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.223534, 38.911385, 23.982199>,  <40.014034, 39.250488, 24.015636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223534, 38.911385, 23.982199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479801, -0.374654, 0.793363,
		-0.703901, -0.375415, -0.602982,
		0.523750, -0.847760, -0.083595,
		40.380657, 38.657055, 23.957121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543148, 38.752205, 24.186623>,  <40.014034, 39.250488, 24.015636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543148, 38.752205, 24.186623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903679, 38.588604, 24.243643>,  <40.119999, 38.490444, 24.277855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903679, 38.588604, 24.243643>,  <39.543148, 38.752205, 24.186623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903679, 38.588604, 24.243643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344579, -0.477701, 0.808125,
		-0.262430, -0.777507, -0.571501,
		0.901330, -0.409003, 0.142549,
		40.174076, 38.465904, 24.286407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490021, 38.008888, 24.252735>,  <39.543148, 38.752205, 24.186623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490021, 38.008888, 24.252735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.826572, 38.091282, 24.452595>,  <40.028503, 38.140717, 24.572510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.826572, 38.091282, 24.452595>,  <39.490021, 38.008888, 24.252735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826572, 38.091282, 24.452595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345474, -0.505968, 0.790344,
		0.415603, -0.837597, -0.354551,
		0.841381, 0.205981, 0.499650,
		40.078987, 38.153076, 24.602489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538086, 37.505253, 24.660124>,  <39.490021, 38.008888, 24.252735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538086, 37.505253, 24.660124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792271, 37.759773, 24.835079>,  <39.944782, 37.912487, 24.940052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792271, 37.759773, 24.835079>,  <39.538086, 37.505253, 24.660124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792271, 37.759773, 24.835079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183237, -0.426015, 0.885966,
		0.750075, -0.643143, -0.154122,
		0.635462, 0.636301, 0.437391,
		39.982910, 37.950665, 24.966297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973164, 37.131771, 25.086935>,  <39.538086, 37.505253, 24.660124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973164, 37.131771, 25.086935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011234, 37.502781, 25.231506>,  <40.034077, 37.725388, 25.318249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011234, 37.502781, 25.231506>,  <39.973164, 37.131771, 25.086935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011234, 37.502781, 25.231506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255154, -0.328216, 0.909489,
		0.962204, -0.178784, 0.205424,
		0.095179, 0.927529, 0.361429,
		40.039787, 37.781040, 25.339935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324482, 37.069984, 25.633509>,  <39.973164, 37.131771, 25.086935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324482, 37.069984, 25.633509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142406, 37.414993, 25.721916>,  <40.033161, 37.621998, 25.774961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142406, 37.414993, 25.721916>,  <40.324482, 37.069984, 25.633509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142406, 37.414993, 25.721916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371994, -0.409746, 0.832903,
		0.808964, 0.296910, 0.507367,
		-0.455190, 0.862527, 0.221021,
		40.005848, 37.673752, 25.788223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483082, 37.194408, 26.307341>,  <40.324482, 37.069984, 25.633509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483082, 37.194408, 26.307341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141872, 37.396530, 26.255148>,  <39.937149, 37.517803, 26.223831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141872, 37.396530, 26.255148>,  <40.483082, 37.194408, 26.307341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141872, 37.396530, 26.255148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326168, -0.321016, 0.889136,
		0.407395, 0.801011, 0.438647,
		-0.853020, 0.505302, -0.130484,
		39.885967, 37.548122, 26.216003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385029, 37.472935, 26.877192>,  <40.483082, 37.194408, 26.307341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385029, 37.472935, 26.877192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019176, 37.483429, 26.715818>,  <39.799664, 37.489723, 26.618994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019176, 37.483429, 26.715818>,  <40.385029, 37.472935, 26.877192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019176, 37.483429, 26.715818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381032, -0.389479, 0.838523,
		-0.135131, 0.920662, 0.366226,
		-0.914633, 0.026233, -0.403433,
		39.744785, 37.491299, 26.594788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985172, 37.822968, 27.411266>,  <40.385029, 37.472935, 26.877192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985172, 37.822968, 27.411266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712688, 37.631058, 27.190081>,  <39.549198, 37.515911, 27.057369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712688, 37.631058, 27.190081>,  <39.985172, 37.822968, 27.411266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712688, 37.631058, 27.190081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354385, -0.444819, 0.822525,
		-0.640598, 0.756272, 0.132989,
		-0.681209, -0.479779, -0.552962,
		39.508327, 37.487125, 27.024193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504139, 37.745560, 27.811155>,  <39.985172, 37.822968, 27.411266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504139, 37.745560, 27.811155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361523, 37.485474, 27.542799>,  <39.275951, 37.329422, 27.381784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361523, 37.485474, 27.542799>,  <39.504139, 37.745560, 27.811155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361523, 37.485474, 27.542799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269826, -0.615822, 0.740241,
		-0.894467, 0.444952, 0.044122,
		-0.356543, -0.650216, -0.670892,
		39.254559, 37.290409, 27.341532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794880, 37.633793, 28.025053>,  <39.504139, 37.745560, 27.811155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794880, 37.633793, 28.025053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910686, 37.325439, 27.798100>,  <38.980171, 37.140427, 27.661928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910686, 37.325439, 27.798100>,  <38.794880, 37.633793, 28.025053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910686, 37.325439, 27.798100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343742, -0.636963, 0.690014,
		-0.893320, -0.004738, -0.449396,
		0.289518, -0.770880, -0.567383,
		38.997543, 37.094177, 27.627884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240093, 37.191772, 28.135002>,  <38.794880, 37.633793, 28.025053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240093, 37.191772, 28.135002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542587, 36.974922, 27.988464>,  <38.724083, 36.844810, 27.900541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542587, 36.974922, 27.988464>,  <38.240093, 37.191772, 28.135002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542587, 36.974922, 27.988464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239049, -0.750119, 0.616585,
		-0.609066, -0.378711, -0.696862,
		0.756237, -0.542125, -0.366341,
		38.769459, 36.812283, 27.878561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936901, 36.655975, 28.001606>,  <38.240093, 37.191772, 28.135002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936901, 36.655975, 28.001606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315418, 36.529598, 28.029074>,  <38.542526, 36.453770, 28.045555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315418, 36.529598, 28.029074>,  <37.936901, 36.655975, 28.001606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315418, 36.529598, 28.029074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269725, -0.654301, 0.706497,
		-0.178285, -0.687072, -0.704376,
		0.946289, -0.315946, 0.068669,
		38.599304, 36.434814, 28.049675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856930, 35.985157, 28.111605>,  <37.936901, 36.655975, 28.001606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856930, 35.985157, 28.111605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235035, 36.015228, 28.238621>,  <38.461899, 36.033272, 28.314831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235035, 36.015228, 28.238621>,  <37.856930, 35.985157, 28.111605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235035, 36.015228, 28.238621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195203, -0.649528, 0.734853,
		0.261497, -0.756612, -0.599298,
		0.945260, 0.075177, 0.317542,
		38.518612, 36.037781, 28.333883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099651, 35.318306, 28.161829>,  <37.856930, 35.985157, 28.111605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099651, 35.318306, 28.161829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339161, 35.539825, 28.393267>,  <38.482868, 35.672737, 28.532129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339161, 35.539825, 28.393267>,  <38.099651, 35.318306, 28.161829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339161, 35.539825, 28.393267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185383, -0.606963, 0.772806,
		0.779167, -0.569998, -0.260768,
		0.598775, 0.553803, 0.578594,
		38.518795, 35.705967, 28.566845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571625, 34.766533, 28.449108>,  <38.099651, 35.318306, 28.161829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571625, 34.766533, 28.449108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568752, 35.099117, 28.671326>,  <38.567028, 35.298668, 28.804657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568752, 35.099117, 28.671326>,  <38.571625, 34.766533, 28.449108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568752, 35.099117, 28.671326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142252, -0.550758, 0.822454,
		0.989804, -0.073119, 0.122233,
		-0.007184, 0.831456, 0.555544,
		38.566597, 35.348553, 28.837988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995853, 34.687653, 29.011517>,  <38.571625, 34.766533, 28.449108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995853, 34.687653, 29.011517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764610, 34.990406, 29.133448>,  <38.625866, 35.172058, 29.206606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764610, 34.990406, 29.133448>,  <38.995853, 34.687653, 29.011517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764610, 34.990406, 29.133448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047913, -0.404426, 0.913315,
		0.814554, 0.513387, 0.270066,
		-0.578106, 0.756884, 0.304828,
		38.591179, 35.217472, 29.224895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.851097, 32.554413, 34.558128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602085, 32.833679, 34.416698>,  <41.452679, 33.001240, 34.331841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602085, 32.833679, 34.416698>,  <41.851097, 32.554413, 34.558128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602085, 32.833679, 34.416698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365004, 0.140624, 0.920324,
		0.692264, 0.701986, 0.167292,
		-0.622530, 0.698169, -0.353577,
		41.415325, 33.043129, 34.310627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003178, 33.190468, 34.886494>,  <41.851097, 32.554413, 34.558128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003178, 33.190468, 34.886494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.617298, 33.160553, 34.785488>,  <41.385769, 33.142605, 34.724884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.617298, 33.160553, 34.785488>,  <42.003178, 33.190468, 34.886494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617298, 33.160553, 34.785488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263199, 0.306848, 0.914642,
		0.009083, 0.948816, -0.315699,
		-0.964699, -0.074784, -0.252515,
		41.327888, 33.138119, 34.709732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683582, 33.877895, 34.931484>,  <42.003178, 33.190468, 34.886494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683582, 33.877895, 34.931484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402954, 33.593815, 34.954861>,  <41.234577, 33.423367, 34.968887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402954, 33.593815, 34.954861>,  <41.683582, 33.877895, 34.931484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402954, 33.593815, 34.954861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261648, 0.333008, 0.905895,
		-0.662828, 0.620258, -0.419451,
		-0.701569, -0.710201, 0.058438,
		41.192482, 33.380756, 34.972393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339794, 34.095215, 35.424755>,  <41.683582, 33.877895, 34.931484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339794, 34.095215, 35.424755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110653, 33.772415, 35.367352>,  <40.973167, 33.578735, 35.332909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110653, 33.772415, 35.367352>,  <41.339794, 34.095215, 35.424755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110653, 33.772415, 35.367352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529142, 0.230391, 0.816657,
		-0.625980, 0.543757, -0.558997,
		-0.572850, -0.807000, -0.143505,
		40.938797, 33.530315, 35.324299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595535, 34.312977, 35.392551>,  <41.339794, 34.095215, 35.424755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595535, 34.312977, 35.392551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604595, 33.933338, 35.518219>,  <40.610031, 33.705555, 35.593620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604595, 33.933338, 35.518219>,  <40.595535, 34.312977, 35.392551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604595, 33.933338, 35.518219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676500, 0.216821, 0.703801,
		-0.736094, -0.228477, -0.637153,
		0.022654, -0.949098, 0.314165,
		40.611393, 33.648609, 35.612469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921917, 34.115170, 35.570911>,  <40.595535, 34.312977, 35.392551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921917, 34.115170, 35.570911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.171089, 33.873325, 35.769470>,  <40.320591, 33.728218, 35.888607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.171089, 33.873325, 35.769470>,  <39.921917, 34.115170, 35.570911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171089, 33.873325, 35.769470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516006, 0.159359, 0.841631,
		-0.587964, -0.780418, -0.212713,
		0.622926, -0.604610, 0.496397,
		40.357967, 33.691944, 35.918388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506950, 33.826363, 36.028385>,  <39.921917, 34.115170, 35.570911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506950, 33.826363, 36.028385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855412, 33.694023, 36.173508>,  <40.064487, 33.614620, 36.260582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855412, 33.694023, 36.173508>,  <39.506950, 33.826363, 36.028385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855412, 33.694023, 36.173508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380005, 0.013625, 0.924884,
		-0.310937, -0.943587, -0.113853,
		0.871157, -0.330845, 0.362804,
		40.116760, 33.594769, 36.282349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348732, 33.257206, 36.422100>,  <39.506950, 33.826363, 36.028385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348732, 33.257206, 36.422100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693222, 33.403351, 36.563408>,  <39.899918, 33.491035, 36.648193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693222, 33.403351, 36.563408>,  <39.348732, 33.257206, 36.422100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693222, 33.403351, 36.563408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369652, -0.026696, 0.928787,
		0.348773, -0.930483, 0.112065,
		0.861228, 0.365361, 0.353266,
		39.951591, 33.512959, 36.669388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416119, 32.911278, 37.077408>,  <39.348732, 33.257206, 36.422100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416119, 32.911278, 37.077408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698521, 33.192135, 37.114407>,  <39.867962, 33.360649, 37.136604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698521, 33.192135, 37.114407>,  <39.416119, 32.911278, 37.077408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698521, 33.192135, 37.114407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275693, 0.152185, 0.949122,
		0.652340, -0.695587, 0.301018,
		0.706007, 0.702139, 0.092492,
		39.910324, 33.402775, 37.142155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799423, 32.771034, 37.656605>,  <39.416119, 32.911278, 37.077408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799423, 32.771034, 37.656605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836948, 33.166611, 37.610661>,  <39.859463, 33.403957, 37.583092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836948, 33.166611, 37.610661>,  <39.799423, 32.771034, 37.656605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836948, 33.166611, 37.610661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122720, 0.125981, 0.984413,
		0.987997, -0.078259, 0.133182,
		0.093817, 0.988941, -0.114864,
		39.865093, 33.463291, 37.576202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235107, 32.875542, 38.184502>,  <39.799423, 32.771034, 37.656605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235107, 32.875542, 38.184502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039543, 33.197941, 38.051033>,  <39.922203, 33.391380, 37.970951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039543, 33.197941, 38.051033>,  <40.235107, 32.875542, 38.184502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039543, 33.197941, 38.051033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304901, 0.200485, 0.931043,
		0.817311, 0.556937, 0.147728,
		-0.488915, 0.805994, -0.333669,
		39.892868, 33.439739, 37.950932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462593, 33.371845, 38.578396>,  <40.235107, 32.875542, 38.184502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462593, 33.371845, 38.578396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112961, 33.525585, 38.459564>,  <39.903179, 33.617828, 38.388264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112961, 33.525585, 38.459564>,  <40.462593, 33.371845, 38.578396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112961, 33.525585, 38.459564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204494, 0.263599, 0.942708,
		0.440637, 0.884756, -0.151811,
		-0.874083, 0.384348, -0.297079,
		39.850735, 33.640888, 38.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316967, 34.117161, 38.877048>,  <40.462593, 33.371845, 38.578396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316967, 34.117161, 38.877048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.978149, 33.915821, 38.808750>,  <39.774857, 33.795017, 38.767773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.978149, 33.915821, 38.808750>,  <40.316967, 34.117161, 38.877048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978149, 33.915821, 38.808750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385448, 0.360515, 0.849387,
		-0.365981, 0.785283, -0.499388,
		-0.847046, -0.503348, -0.170744,
		39.724037, 33.764816, 38.757526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855701, 34.254829, 39.413834>,  <40.316967, 34.117161, 38.877048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855701, 34.254829, 39.413834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.567112, 34.051060, 39.226234>,  <39.393959, 33.928799, 39.113674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.567112, 34.051060, 39.226234>,  <39.855701, 34.254829, 39.413834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567112, 34.051060, 39.226234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622169, 0.179623, 0.761999,
		-0.303938, 0.841559, -0.446542,
		-0.721476, -0.509425, -0.468997,
		39.350670, 33.898232, 39.085537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350895, 34.859058, 39.448803>,  <39.855701, 34.254829, 39.413834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350895, 34.859058, 39.448803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286095, 35.245987, 39.526817>,  <40.247215, 35.478146, 39.573627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286095, 35.245987, 39.526817>,  <40.350895, 34.859058, 39.448803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286095, 35.245987, 39.526817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148808, 0.219337, -0.964234,
		-0.975506, -0.127184, -0.179478,
		-0.162002, 0.967324, 0.195038,
		40.237495, 35.536182, 39.585327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971104, 35.156845, 38.911259>,  <40.350895, 34.859058, 39.448803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971104, 35.156845, 38.911259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135738, 35.479240, 39.081429>,  <40.234520, 35.672676, 39.183529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135738, 35.479240, 39.081429>,  <39.971104, 35.156845, 38.911259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135738, 35.479240, 39.081429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142064, 0.404346, -0.903506,
		-0.900230, 0.432307, 0.051922,
		0.411586, 0.805987, 0.425420,
		40.259212, 35.721035, 39.209053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595028, 35.598415, 38.602604>,  <39.971104, 35.156845, 38.911259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595028, 35.598415, 38.602604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904842, 35.809364, 38.742298>,  <40.090733, 35.935936, 38.826115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904842, 35.809364, 38.742298>,  <39.595028, 35.598415, 38.602604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904842, 35.809364, 38.742298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045636, 0.504092, -0.862443,
		-0.630878, 0.683933, 0.366371,
		0.774538, 0.527377, 0.349233,
		40.137203, 35.967579, 38.847069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473644, 36.309383, 38.363373>,  <39.595028, 35.598415, 38.602604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473644, 36.309383, 38.363373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.867409, 36.302238, 38.433353>,  <40.103668, 36.297951, 38.475342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.867409, 36.302238, 38.433353>,  <39.473644, 36.309383, 38.363373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867409, 36.302238, 38.433353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156265, 0.545244, -0.823584,
		-0.080680, 0.838087, 0.539537,
		0.984415, -0.017864, 0.174954,
		40.162735, 36.296879, 38.485840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687454, 37.043076, 38.296192>,  <39.473644, 36.309383, 38.363373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687454, 37.043076, 38.296192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021004, 36.822533, 38.285900>,  <40.221134, 36.690208, 38.279724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021004, 36.822533, 38.285900>,  <39.687454, 37.043076, 38.296192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021004, 36.822533, 38.285900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297235, 0.487846, -0.820766,
		0.465090, 0.676765, 0.570684,
		0.833872, -0.551358, -0.025734,
		40.271164, 36.657124, 38.278179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297794, 37.443909, 38.280140>,  <39.687454, 37.043076, 38.296192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297794, 37.443909, 38.280140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422832, 37.107113, 38.104259>,  <40.497856, 36.905033, 37.998730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422832, 37.107113, 38.104259>,  <40.297794, 37.443909, 38.280140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422832, 37.107113, 38.104259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317328, 0.528868, -0.787148,
		0.895316, 0.106526, 0.432507,
		0.312591, -0.841992, -0.439700,
		40.516609, 36.854515, 37.972351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862183, 37.707958, 37.921833>,  <40.297794, 37.443909, 38.280140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862183, 37.707958, 37.921833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787468, 37.348118, 37.763927>,  <40.742638, 37.132214, 37.669186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787468, 37.348118, 37.763927>,  <40.862183, 37.707958, 37.921833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787468, 37.348118, 37.763927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249513, 0.345213, -0.904749,
		0.950186, -0.267493, 0.159980,
		-0.186787, -0.899597, -0.394760,
		40.731430, 37.078239, 37.645500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485588, 37.607357, 37.488407>,  <40.862183, 37.707958, 37.921833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485588, 37.607357, 37.488407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212616, 37.354694, 37.341278>,  <41.048832, 37.203094, 37.253002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212616, 37.354694, 37.341278>,  <41.485588, 37.607357, 37.488407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212616, 37.354694, 37.341278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257095, 0.263631, -0.929731,
		0.684243, -0.729043, -0.017514,
		-0.682432, -0.631660, -0.367821,
		41.007885, 37.165195, 37.230930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824188, 37.358665, 36.924015>,  <41.485588, 37.607357, 37.488407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824188, 37.358665, 36.924015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436981, 37.277466, 36.865051>,  <41.204655, 37.228748, 36.829674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436981, 37.277466, 36.865051>,  <41.824188, 37.358665, 36.924015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436981, 37.277466, 36.865051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080854, 0.303802, -0.949298,
		0.237483, -0.930859, -0.277674,
		-0.968021, -0.202991, -0.147412,
		41.146576, 37.216568, 36.820827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761093, 37.022625, 36.239773>,  <41.824188, 37.358665, 36.924015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761093, 37.022625, 36.239773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.379723, 37.129509, 36.295738>,  <41.150898, 37.193638, 36.329315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.379723, 37.129509, 36.295738>,  <41.761093, 37.022625, 36.239773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379723, 37.129509, 36.295738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122252, 0.081699, -0.989131,
		-0.275734, -0.960169, -0.045228,
		-0.953429, 0.267208, 0.139910,
		41.093693, 37.209671, 36.337711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373238, 36.610191, 35.740543>,  <41.761093, 37.022625, 36.239773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373238, 36.610191, 35.740543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138149, 36.922012, 35.827160>,  <40.997097, 37.109104, 35.879128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138149, 36.922012, 35.827160>,  <41.373238, 36.610191, 35.740543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138149, 36.922012, 35.827160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109168, 0.188784, -0.975932,
		-0.801666, -0.597212, -0.025850,
		-0.587718, 0.779550, 0.216539,
		40.961834, 37.155876, 35.892120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875237, 36.605061, 35.213150>,  <41.373238, 36.610191, 35.740543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875237, 36.605061, 35.213150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883762, 36.970146, 35.376366>,  <40.888878, 37.189198, 35.474297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883762, 36.970146, 35.376366>,  <40.875237, 36.605061, 35.213150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883762, 36.970146, 35.376366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013154, 0.407844, -0.912957,
		-0.999686, 0.024825, -0.003313,
		0.021313, 0.912714, 0.408042,
		40.890156, 37.243961, 35.498779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284679, 36.957485, 34.938499>,  <40.875237, 36.605061, 35.213150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284679, 36.957485, 34.938499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522728, 37.242073, 35.087971>,  <40.665558, 37.412827, 35.177654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522728, 37.242073, 35.087971>,  <40.284679, 36.957485, 34.938499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522728, 37.242073, 35.087971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180122, 0.335071, -0.924816,
		-0.783188, 0.617688, 0.071257,
		0.595124, 0.711470, 0.373682,
		40.701263, 37.455513, 35.200077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048725, 37.557095, 34.598007>,  <40.284679, 36.957485, 34.938499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048725, 37.557095, 34.598007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420536, 37.614841, 34.733742>,  <40.643623, 37.649490, 34.815182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420536, 37.614841, 34.733742>,  <40.048725, 37.557095, 34.598007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420536, 37.614841, 34.733742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287922, 0.290830, -0.912425,
		-0.230410, 0.945821, 0.228767,
		0.929523, 0.144365, 0.339332,
		40.699394, 37.658150, 34.835541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199760, 38.171936, 34.954231>,  <40.048725, 37.557095, 34.598007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199760, 38.171936, 34.954231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906670, 38.383682, 34.783169>,  <39.730816, 38.510731, 34.680531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906670, 38.383682, 34.783169>,  <40.199760, 38.171936, 34.954231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906670, 38.383682, 34.783169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548892, -0.088240, 0.831223,
		0.402281, 0.843795, 0.355218,
		-0.732726, 0.529362, -0.427655,
		39.686852, 38.542492, 34.654873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989346, 38.558399, 35.467777>,  <40.199760, 38.171936, 34.954231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989346, 38.558399, 35.467777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675198, 38.578278, 35.220966>,  <39.486710, 38.590202, 35.072880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675198, 38.578278, 35.220966>,  <39.989346, 38.558399, 35.467777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675198, 38.578278, 35.220966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615542, 0.042934, 0.786934,
		0.065596, 0.997841, -0.003132,
		-0.785370, 0.049692, -0.617029,
		39.439587, 38.593185, 35.035858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604340, 39.140934, 35.609684>,  <39.989346, 38.558399, 35.467777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604340, 39.140934, 35.609684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343254, 38.884209, 35.448666>,  <39.186604, 38.730175, 35.352055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343254, 38.884209, 35.448666>,  <39.604340, 39.140934, 35.609684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343254, 38.884209, 35.448666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624118, 0.154322, 0.765938,
		-0.429465, 0.751175, -0.501294,
		-0.652714, -0.641810, -0.402546,
		39.147438, 38.691666, 35.327900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085457, 39.394341, 35.891113>,  <39.604340, 39.140934, 35.609684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085457, 39.394341, 35.891113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.966259, 39.028709, 35.781082>,  <38.894741, 38.809330, 35.715065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.966259, 39.028709, 35.781082>,  <39.085457, 39.394341, 35.891113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966259, 39.028709, 35.781082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570955, -0.060261, 0.818767,
		-0.764991, 0.401042, -0.503939,
		-0.297992, -0.914076, -0.275076,
		38.876862, 38.754486, 35.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334225, 39.384068, 35.872219>,  <39.085457, 39.394341, 35.891113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334225, 39.384068, 35.872219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452946, 39.004353, 35.913700>,  <38.524178, 38.776524, 35.938591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452946, 39.004353, 35.913700>,  <38.334225, 39.384068, 35.872219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452946, 39.004353, 35.913700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614017, -0.106540, 0.782069,
		-0.731362, -0.295800, -0.614502,
		0.296805, -0.949290, 0.103707,
		38.541988, 38.719566, 35.944813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719990, 39.044209, 36.182140>,  <38.334225, 39.384068, 35.872219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719990, 39.044209, 36.182140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.985985, 38.747429, 36.216324>,  <38.145580, 38.569363, 36.236832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.985985, 38.747429, 36.216324>,  <37.719990, 39.044209, 36.182140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985985, 38.747429, 36.216324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425318, -0.282157, 0.859937,
		-0.613917, -0.608194, -0.503195,
		0.664989, -0.741948, 0.085455,
		38.185482, 38.524845, 36.241959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389782, 38.477703, 36.419296>,  <37.719990, 39.044209, 36.182140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389782, 38.477703, 36.419296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.766594, 38.363403, 36.489639>,  <37.992680, 38.294823, 36.531845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.766594, 38.363403, 36.489639>,  <37.389782, 38.477703, 36.419296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766594, 38.363403, 36.489639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299468, -0.479683, 0.824757,
		-0.151320, -0.829609, -0.537449,
		0.942030, -0.285751, 0.175856,
		38.049202, 38.277679, 36.542397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407330, 37.722057, 36.501694>,  <37.389782, 38.477703, 36.419296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407330, 37.722057, 36.501694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710190, 37.894951, 36.697613>,  <37.891907, 37.998688, 36.815163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710190, 37.894951, 36.697613>,  <37.407330, 37.722057, 36.501694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710190, 37.894951, 36.697613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368074, -0.337155, 0.866515,
		0.539672, -0.836363, -0.096184,
		0.757149, 0.432231, 0.489797,
		37.937336, 38.024620, 36.844551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527344, 37.232677, 37.035805>,  <37.407330, 37.722057, 36.501694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527344, 37.232677, 37.035805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710011, 37.570473, 37.147732>,  <37.819611, 37.773148, 37.214890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710011, 37.570473, 37.147732>,  <37.527344, 37.232677, 37.035805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710011, 37.570473, 37.147732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258851, -0.174792, 0.949970,
		0.851145, -0.506255, 0.138773,
		0.456671, 0.844484, 0.279818,
		37.847012, 37.823818, 37.231678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957333, 36.988850, 37.572556>,  <37.527344, 37.232677, 37.035805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957333, 36.988850, 37.572556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868832, 37.375378, 37.625134>,  <37.815731, 37.607296, 37.656681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868832, 37.375378, 37.625134>,  <37.957333, 36.988850, 37.572556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868832, 37.375378, 37.625134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349434, -0.204385, 0.914397,
		0.910464, 0.156379, 0.382884,
		-0.221249, 0.966319, 0.131441,
		37.802456, 37.665272, 37.664566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390743, 37.257324, 38.164757>,  <37.957333, 36.988850, 37.572556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390743, 37.257324, 38.164757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078583, 37.502941, 38.117542>,  <37.891289, 37.650311, 38.089214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078583, 37.502941, 38.117542>,  <38.390743, 37.257324, 38.164757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078583, 37.502941, 38.117542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382371, -0.319289, 0.867092,
		0.494744, 0.721808, 0.483964,
		-0.780398, 0.614042, -0.118032,
		37.844463, 37.687153, 38.082134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303474, 37.572422, 38.787491>,  <38.390743, 37.257324, 38.164757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303474, 37.572422, 38.787491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949715, 37.582233, 38.601059>,  <37.737457, 37.588120, 38.489201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949715, 37.582233, 38.601059>,  <38.303474, 37.572422, 38.787491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949715, 37.582233, 38.601059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455207, -0.265792, 0.849789,
		-0.103036, 0.963718, 0.246233,
		-0.884404, 0.024528, -0.466077,
		37.684395, 37.589592, 38.461235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.672264, 40.206963, 31.966133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306301, 40.208515, 31.804674>,  <41.086723, 40.209446, 31.707798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306301, 40.208515, 31.804674>,  <41.672264, 40.206963, 31.966133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306301, 40.208515, 31.804674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399085, -0.158943, 0.903033,
		-0.060651, 0.987280, 0.146967,
		-0.914906, 0.003883, -0.403649,
		41.031830, 40.209679, 31.683578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244598, 40.622719, 32.348869>,  <41.672264, 40.206963, 31.966133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244598, 40.622719, 32.348869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967018, 40.399254, 32.167175>,  <40.800468, 40.265175, 32.058159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967018, 40.399254, 32.167175>,  <41.244598, 40.622719, 32.348869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967018, 40.399254, 32.167175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388933, -0.240057, 0.889440,
		-0.605941, 0.793892, -0.050696,
		-0.693950, -0.558666, -0.454232,
		40.758835, 40.231655, 32.030907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678398, 40.786633, 32.687408>,  <41.244598, 40.622719, 32.348869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678398, 40.786633, 32.687408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584476, 40.442886, 32.505703>,  <40.528126, 40.236637, 32.396679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584476, 40.442886, 32.505703>,  <40.678398, 40.786633, 32.687408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584476, 40.442886, 32.505703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490040, -0.298943, 0.818837,
		-0.839481, 0.414869, -0.350934,
		-0.234801, -0.859370, -0.454260,
		40.514034, 40.185074, 32.369427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954483, 40.623608, 32.792759>,  <40.678398, 40.786633, 32.687408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954483, 40.623608, 32.792759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092678, 40.265678, 32.679668>,  <40.175594, 40.050922, 32.611816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092678, 40.265678, 32.679668>,  <39.954483, 40.623608, 32.792759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092678, 40.265678, 32.679668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566152, -0.439019, 0.697663,
		-0.748405, -0.080969, -0.658281,
		0.345487, -0.894822, -0.282723,
		40.196323, 39.997231, 32.594852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425076, 40.169212, 32.893822>,  <39.954483, 40.623608, 32.792759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425076, 40.169212, 32.893822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742142, 39.925350, 32.894974>,  <39.932381, 39.779034, 32.895664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742142, 39.925350, 32.894974>,  <39.425076, 40.169212, 32.893822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742142, 39.925350, 32.894974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397472, -0.513190, 0.760692,
		-0.462282, -0.604115, -0.649107,
		0.792661, -0.609656, 0.002880,
		39.979939, 39.742455, 32.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159298, 39.587959, 32.850845>,  <39.425076, 40.169212, 32.893822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159298, 39.587959, 32.850845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521896, 39.526043, 33.007969>,  <39.739456, 39.488895, 33.102242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521896, 39.526043, 33.007969>,  <39.159298, 39.587959, 32.850845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521896, 39.526043, 33.007969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399523, -0.615331, 0.679522,
		0.136527, -0.772923, -0.619638,
		0.906500, -0.154786, 0.392810,
		39.793846, 39.479607, 33.125813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215694, 38.816246, 32.942833>,  <39.159298, 39.587959, 32.850845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215694, 38.816246, 32.942833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492352, 38.985970, 33.176617>,  <39.658344, 39.087803, 33.316887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492352, 38.985970, 33.176617>,  <39.215694, 38.816246, 32.942833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492352, 38.985970, 33.176617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306515, -0.560289, 0.769497,
		0.653970, -0.711362, -0.257462,
		0.691644, 0.424312, 0.584455,
		39.699844, 39.113262, 33.351952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545715, 38.314838, 33.211857>,  <39.215694, 38.816246, 32.942833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545715, 38.314838, 33.211857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626930, 38.604153, 33.475864>,  <39.675659, 38.777740, 33.634270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626930, 38.604153, 33.475864>,  <39.545715, 38.314838, 33.211857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626930, 38.604153, 33.475864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217366, -0.623948, 0.750627,
		0.954740, -0.295871, 0.030534,
		0.203037, 0.723290, 0.660020,
		39.687840, 38.821140, 33.673870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925522, 37.988003, 33.754589>,  <39.545715, 38.314838, 33.211857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925522, 37.988003, 33.754589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810917, 38.328419, 33.930611>,  <39.742153, 38.532669, 34.036224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810917, 38.328419, 33.930611>,  <39.925522, 37.988003, 33.754589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810917, 38.328419, 33.930611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389845, -0.523120, 0.757870,
		0.875176, 0.045586, 0.481652,
		-0.286510, 0.851040, 0.440051,
		39.724964, 38.583729, 34.062626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386169, 38.320835, 34.249725>,  <39.925522, 37.988003, 33.754589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386169, 38.320835, 34.249725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715668, 38.134525, 34.379032>,  <40.913364, 38.022739, 34.456615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715668, 38.134525, 34.379032>,  <40.386169, 38.320835, 34.249725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715668, 38.134525, 34.379032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559303, 0.574182, -0.597909,
		0.092875, 0.673329, 0.733486,
		0.823744, -0.465772, 0.323268,
		40.962791, 37.994793, 34.476013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927769, 38.811874, 34.212395>,  <40.386169, 38.320835, 34.249725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927769, 38.811874, 34.212395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132710, 38.468910, 34.231789>,  <41.255672, 38.263134, 34.243423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132710, 38.468910, 34.231789>,  <40.927769, 38.811874, 34.212395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132710, 38.468910, 34.231789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780864, 0.441626, -0.441835,
		0.357423, 0.264230, 0.895785,
		0.512348, -0.857409, 0.048480,
		41.286415, 38.211689, 34.246334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545475, 38.952068, 34.523876>,  <40.927769, 38.811874, 34.212395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545475, 38.952068, 34.523876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591419, 38.631844, 34.288620>,  <41.618988, 38.439709, 34.147469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591419, 38.631844, 34.288620>,  <41.545475, 38.952068, 34.523876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591419, 38.631844, 34.288620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776173, 0.441830, -0.449824,
		0.619969, -0.404827, 0.672126,
		0.114864, -0.800563, -0.588137,
		41.625877, 38.391674, 34.112179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152878, 38.944698, 34.404568>,  <41.545475, 38.952068, 34.523876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152878, 38.944698, 34.404568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080700, 38.659050, 34.134022>,  <42.037392, 38.487659, 33.971695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080700, 38.659050, 34.134022>,  <42.152878, 38.944698, 34.404568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080700, 38.659050, 34.134022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759274, 0.335998, -0.557321,
		0.625253, -0.614111, 0.481587,
		-0.180445, -0.714124, -0.676363,
		42.026566, 38.444813, 33.931114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798340, 38.608650, 34.243362>,  <42.152878, 38.944698, 34.404568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798340, 38.608650, 34.243362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561333, 38.560787, 33.924717>,  <42.419128, 38.532070, 33.733528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561333, 38.560787, 33.924717>,  <42.798340, 38.608650, 34.243362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561333, 38.560787, 33.924717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772188, 0.197298, -0.603986,
		0.229440, -0.973014, -0.024509,
		-0.592523, -0.119653, -0.796618,
		42.383575, 38.524891, 33.685730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272179, 38.329647, 33.720837>,  <42.798340, 38.608650, 34.243362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272179, 38.329647, 33.720837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958370, 38.463066, 33.511738>,  <42.770084, 38.543118, 33.386276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958370, 38.463066, 33.511738>,  <43.272179, 38.329647, 33.720837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958370, 38.463066, 33.511738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615741, 0.319271, -0.720367,
		-0.073380, -0.887024, -0.455856,
		-0.784524, 0.333550, -0.522749,
		42.723011, 38.563129, 33.354912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374737, 38.179222, 33.028877>,  <43.272179, 38.329647, 33.720837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374737, 38.179222, 33.028877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097260, 38.463116, 32.979774>,  <42.930771, 38.633450, 32.950314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097260, 38.463116, 32.979774>,  <43.374737, 38.179222, 33.028877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097260, 38.463116, 32.979774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489514, 0.339537, -0.803175,
		-0.528359, -0.617248, -0.582959,
		-0.693695, 0.709732, -0.122754,
		42.889153, 38.676037, 32.942947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017250, 38.079861, 32.308636>,  <43.374737, 38.179222, 33.028877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017250, 38.079861, 32.308636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991928, 38.464874, 32.414101>,  <42.976734, 38.695885, 32.477379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991928, 38.464874, 32.414101>,  <43.017250, 38.079861, 32.308636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991928, 38.464874, 32.414101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377907, 0.267633, -0.886318,
		-0.923677, 0.043534, -0.380690,
		-0.063301, 0.962537, 0.263658,
		42.972939, 38.753635, 32.493198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657295, 38.396053, 31.701471>,  <43.017250, 38.079861, 32.308636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657295, 38.396053, 31.701471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842163, 38.696243, 31.890444>,  <42.953083, 38.876358, 32.003826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842163, 38.696243, 31.890444>,  <42.657295, 38.396053, 31.701471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842163, 38.696243, 31.890444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321045, 0.355004, -0.878010,
		-0.826638, 0.557459, -0.076865,
		0.462168, 0.750474, 0.472429,
		42.980812, 38.921387, 32.032173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356682, 38.973694, 31.425888>,  <42.657295, 38.396053, 31.701471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356682, 38.973694, 31.425888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712360, 39.098595, 31.559649>,  <42.925770, 39.173534, 31.639906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712360, 39.098595, 31.559649>,  <42.356682, 38.973694, 31.425888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712360, 39.098595, 31.559649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172577, 0.448005, -0.877216,
		-0.423723, 0.837731, 0.344479,
		0.889200, 0.312247, 0.334403,
		42.979122, 39.192268, 31.659969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484135, 39.687588, 31.227781>,  <42.356682, 38.973694, 31.425888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484135, 39.687588, 31.227781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857609, 39.555019, 31.282021>,  <43.081692, 39.475479, 31.314564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857609, 39.555019, 31.282021>,  <42.484135, 39.687588, 31.227781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857609, 39.555019, 31.282021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249429, 0.330226, -0.910349,
		0.256933, 0.883803, 0.390995,
		0.933687, -0.331424, 0.135600,
		43.137714, 39.455593, 31.322701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978863, 40.287930, 31.070797>,  <42.484135, 39.687588, 31.227781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978863, 40.287930, 31.070797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234402, 39.980457, 31.083530>,  <43.387726, 39.795975, 31.091171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234402, 39.980457, 31.083530>,  <42.978863, 40.287930, 31.070797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234402, 39.980457, 31.083530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398183, 0.294957, -0.868591,
		0.658275, 0.567572, 0.494506,
		0.638846, -0.768676, 0.031835,
		43.426056, 39.749855, 31.093081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595715, 40.520668, 30.793684>,  <42.978863, 40.287930, 31.070797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595715, 40.520668, 30.793684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626034, 40.126446, 30.733109>,  <43.644226, 39.889912, 30.696764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626034, 40.126446, 30.733109>,  <43.595715, 40.520668, 30.793684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626034, 40.126446, 30.733109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284595, 0.166940, -0.944000,
		0.955647, 0.028450, 0.293137,
		0.075793, -0.985556, -0.151439,
		43.648773, 39.830780, 30.687677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229626, 40.430370, 30.425642>,  <43.595715, 40.520668, 30.793684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229626, 40.430370, 30.425642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983398, 40.121895, 30.360714>,  <43.835663, 39.936810, 30.321756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983398, 40.121895, 30.360714>,  <44.229626, 40.430370, 30.425642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983398, 40.121895, 30.360714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067845, 0.153347, -0.985841,
		0.785158, -0.617865, -0.042075,
		-0.615569, -0.771186, -0.162321,
		43.798729, 39.890541, 30.312017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.601173, 39.126095, 28.676004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984131, 39.119156, 28.791309>,  <37.213905, 39.114994, 28.860493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984131, 39.119156, 28.791309>,  <36.601173, 39.126095, 28.676004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984131, 39.119156, 28.791309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273721, -0.372685, 0.886669,
		0.092051, -0.927796, -0.361555,
		0.957394, -0.017346, 0.288263,
		37.271351, 39.113953, 28.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623325, 38.581203, 29.097353>,  <36.601173, 39.126095, 28.676004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623325, 38.581203, 29.097353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960594, 38.770138, 29.200083>,  <37.162956, 38.883499, 29.261721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960594, 38.770138, 29.200083>,  <36.623325, 38.581203, 29.097353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960594, 38.770138, 29.200083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064696, -0.385081, 0.920612,
		0.533737, -0.792850, -0.294132,
		0.843172, 0.472336, 0.256826,
		37.213547, 38.911839, 29.277130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170895, 38.034363, 29.306915>,  <36.623325, 38.581203, 29.097353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170895, 38.034363, 29.306915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270573, 38.378788, 29.484213>,  <37.330379, 38.585445, 29.590591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270573, 38.378788, 29.484213>,  <37.170895, 38.034363, 29.306915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270573, 38.378788, 29.484213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030986, -0.450358, 0.892310,
		0.967957, -0.236096, -0.085548,
		0.249198, 0.861067, 0.443243,
		37.345333, 38.637108, 29.617186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693813, 37.867516, 29.779936>,  <37.170895, 38.034363, 29.306915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693813, 37.867516, 29.779936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554157, 38.220371, 29.906380>,  <37.470364, 38.432087, 29.982246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554157, 38.220371, 29.906380>,  <37.693813, 37.867516, 29.779936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554157, 38.220371, 29.906380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012284, -0.333002, 0.942846,
		0.936992, 0.333064, 0.105427,
		-0.349136, 0.882144, 0.316112,
		37.449417, 38.485016, 30.001213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986774, 37.972313, 30.428379>,  <37.693813, 37.867516, 29.779936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986774, 37.972313, 30.428379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676617, 38.224827, 30.434610>,  <37.490520, 38.376335, 30.438349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676617, 38.224827, 30.434610>,  <37.986774, 37.972313, 30.428379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676617, 38.224827, 30.434610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292690, -0.381142, 0.876963,
		0.559551, 0.675432, 0.480306,
		-0.775394, 0.631286, 0.015576,
		37.444000, 38.414211, 30.439283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058277, 38.326298, 31.069040>,  <37.986774, 37.972313, 30.428379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058277, 38.326298, 31.069040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674980, 38.346478, 30.956457>,  <37.445000, 38.358585, 30.888908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674980, 38.346478, 30.956457>,  <38.058277, 38.326298, 31.069040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674980, 38.346478, 30.956457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285942, -0.171292, 0.942813,
		-0.000646, 0.983928, 0.178566,
		-0.958247, 0.050450, -0.281457,
		37.387505, 38.361614, 30.872021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728790, 38.671001, 31.586937>,  <38.058277, 38.326298, 31.069040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728790, 38.671001, 31.586937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447514, 38.472759, 31.383015>,  <37.278748, 38.353813, 31.260660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447514, 38.472759, 31.383015>,  <37.728790, 38.671001, 31.586937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447514, 38.472759, 31.383015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408502, -0.305250, 0.860202,
		-0.581939, 0.813141, 0.012193,
		-0.703188, -0.495605, -0.509807,
		37.236557, 38.324078, 31.230072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085667, 38.884705, 31.904036>,  <37.728790, 38.671001, 31.586937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085667, 38.884705, 31.904036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.036293, 38.528439, 31.729002>,  <37.006668, 38.314678, 31.623981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.036293, 38.528439, 31.729002>,  <37.085667, 38.884705, 31.904036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036293, 38.528439, 31.729002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470146, -0.335842, 0.816194,
		-0.873915, 0.306471, -0.377290,
		-0.123430, -0.890666, -0.437583,
		36.999264, 38.261238, 31.597727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455193, 38.661461, 32.164402>,  <37.085667, 38.884705, 31.904036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455193, 38.661461, 32.164402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625481, 38.325737, 32.029156>,  <36.727654, 38.124302, 31.948009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625481, 38.325737, 32.029156>,  <36.455193, 38.661461, 32.164402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625481, 38.325737, 32.029156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347430, -0.496644, 0.795385,
		-0.835495, -0.221143, -0.503034,
		0.425723, -0.839310, -0.338112,
		36.753197, 38.073944, 31.927723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903633, 38.166615, 32.273750>,  <36.455193, 38.661461, 32.164402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903633, 38.166615, 32.273750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252449, 37.979996, 32.214592>,  <36.461739, 37.868023, 32.179096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252449, 37.979996, 32.214592>,  <35.903633, 38.166615, 32.273750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252449, 37.979996, 32.214592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279267, -0.722482, 0.632478,
		-0.401935, -0.510246, -0.760327,
		0.872043, -0.466549, -0.147896,
		36.514061, 37.840031, 32.170223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722694, 37.531281, 32.088242>,  <35.903633, 38.166615, 32.273750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722694, 37.531281, 32.088242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100079, 37.478722, 32.209969>,  <36.326511, 37.447186, 32.283005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100079, 37.478722, 32.209969>,  <35.722694, 37.531281, 32.088242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100079, 37.478722, 32.209969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297039, -0.742620, 0.600236,
		0.147125, -0.656696, -0.739665,
		0.943463, -0.131400, 0.304322,
		36.383118, 37.439301, 32.301266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781174, 36.838882, 32.065296>,  <35.722694, 37.531281, 32.088242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781174, 36.838882, 32.065296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055374, 36.985012, 32.317207>,  <36.219894, 37.072689, 32.468353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055374, 36.985012, 32.317207>,  <35.781174, 36.838882, 32.065296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055374, 36.985012, 32.317207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367483, -0.573114, 0.732459,
		0.628521, -0.733537, -0.258621,
		0.685505, 0.365327, 0.629777,
		36.261024, 37.094608, 32.506142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977463, 36.258324, 32.408112>,  <35.781174, 36.838882, 32.065296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977463, 36.258324, 32.408112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.145756, 36.553509, 32.619167>,  <36.246731, 36.730618, 32.745800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.145756, 36.553509, 32.619167>,  <35.977463, 36.258324, 32.408112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145756, 36.553509, 32.619167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181505, -0.501384, 0.845973,
		0.888843, -0.451694, -0.077003,
		0.420729, 0.737961, 0.527636,
		36.271976, 36.774899, 32.777458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434479, 35.943420, 32.820694>,  <35.977463, 36.258324, 32.408112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434479, 35.943420, 32.820694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312462, 36.272129, 33.013214>,  <36.239254, 36.469353, 33.128727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312462, 36.272129, 33.013214>,  <36.434479, 35.943420, 32.820694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312462, 36.272129, 33.013214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101782, -0.530619, 0.841477,
		0.946885, 0.207697, 0.245501,
		-0.305039, 0.821770, 0.481296,
		36.220951, 36.518661, 33.157604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930195, 35.487698, 33.177330>,  <36.434479, 35.943420, 32.820694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930195, 35.487698, 33.177330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124538, 35.138084, 33.176178>,  <37.241142, 34.928318, 33.175488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124538, 35.138084, 33.176178>,  <36.930195, 35.487698, 33.177330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124538, 35.138084, 33.176178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194172, 0.111146, -0.974650,
		0.852197, 0.472981, 0.223715,
		0.485856, -0.874034, -0.002879,
		37.270294, 34.875874, 33.175316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574474, 35.561356, 32.797726>,  <36.930195, 35.487698, 33.177330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574474, 35.561356, 32.797726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551247, 35.162033, 32.796574>,  <37.537308, 34.922440, 32.795883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551247, 35.162033, 32.796574>,  <37.574474, 35.561356, 32.797726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551247, 35.162033, 32.796574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228099, -0.010459, -0.973582,
		0.971904, -0.057194, 0.228321,
		-0.058071, -0.998308, -0.002881,
		37.533825, 34.862541, 32.795708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269581, 35.313862, 32.496704>,  <37.574474, 35.561356, 32.797726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269581, 35.313862, 32.496704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022034, 35.006546, 32.431297>,  <37.873505, 34.822155, 32.392052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022034, 35.006546, 32.431297>,  <38.269581, 35.313862, 32.496704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022034, 35.006546, 32.431297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219160, 0.031020, -0.975196,
		0.754304, -0.639351, 0.149181,
		-0.618865, -0.768289, -0.163519,
		37.836372, 34.776058, 32.382240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601254, 34.760250, 32.172451>,  <38.269581, 35.313862, 32.496704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601254, 34.760250, 32.172451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214645, 34.720341, 32.077885>,  <37.982681, 34.696396, 32.021145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214645, 34.720341, 32.077885>,  <38.601254, 34.760250, 32.172451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214645, 34.720341, 32.077885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238947, -0.014082, -0.970931,
		0.093549, -0.994910, 0.037453,
		-0.966516, -0.099779, -0.236414,
		37.924690, 34.690407, 32.006962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587811, 34.171986, 31.734077>,  <38.601254, 34.760250, 32.172451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587811, 34.171986, 31.734077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264923, 34.396854, 31.662121>,  <38.071190, 34.531776, 31.618946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264923, 34.396854, 31.662121>,  <38.587811, 34.171986, 31.734077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264923, 34.396854, 31.662121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246550, 0.044224, -0.968121,
		-0.536293, -0.825838, -0.174302,
		-0.807219, 0.562170, -0.179893,
		38.022758, 34.565506, 31.608152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314861, 33.882957, 31.103025>,  <38.587811, 34.171986, 31.734077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314861, 33.882957, 31.103025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171837, 34.254696, 31.139832>,  <38.086021, 34.477737, 31.161915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171837, 34.254696, 31.139832>,  <38.314861, 33.882957, 31.103025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171837, 34.254696, 31.139832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256276, 0.192393, -0.947263,
		-0.898037, -0.315125, -0.306961,
		-0.357563, 0.929345, 0.092017,
		38.064568, 34.533501, 31.167437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948311, 33.941639, 30.472370>,  <38.314861, 33.882957, 31.103025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948311, 33.941639, 30.472370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955837, 34.321480, 30.597525>,  <37.960354, 34.549385, 30.672617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955837, 34.321480, 30.597525>,  <37.948311, 33.941639, 30.472370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955837, 34.321480, 30.597525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130283, 0.307942, -0.942443,
		-0.991298, 0.058500, -0.117922,
		0.018820, 0.949605, 0.312884,
		37.961483, 34.606361, 30.691389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421505, 34.386681, 30.147194>,  <37.948311, 33.941639, 30.472370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421505, 34.386681, 30.147194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710804, 34.643696, 30.248432>,  <37.884384, 34.797905, 30.309175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710804, 34.643696, 30.248432>,  <37.421505, 34.386681, 30.147194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710804, 34.643696, 30.248432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011526, 0.355214, -0.934714,
		-0.690489, 0.678951, 0.249503,
		0.723251, 0.642534, 0.253097,
		37.927780, 34.836456, 30.324362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388699, 34.791912, 29.616850>,  <37.421505, 34.386681, 30.147194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388699, 34.791912, 29.616850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708576, 34.952549, 29.795387>,  <37.900501, 35.048931, 29.902510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708576, 34.952549, 29.795387>,  <37.388699, 34.791912, 29.616850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708576, 34.952549, 29.795387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198478, 0.524784, -0.827773,
		-0.566659, 0.750551, 0.339957,
		0.799690, 0.401590, 0.446342,
		37.948483, 35.073025, 29.929289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414223, 35.549522, 29.527695>,  <37.388699, 34.791912, 29.616850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414223, 35.549522, 29.527695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795555, 35.433723, 29.562002>,  <38.024353, 35.364243, 29.582586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795555, 35.433723, 29.562002>,  <37.414223, 35.549522, 29.527695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795555, 35.433723, 29.562002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213120, 0.443959, -0.870333,
		0.213881, 0.847992, 0.484937,
		0.953328, -0.289498, 0.085770,
		38.081554, 35.346874, 29.587732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913147, 36.205414, 29.616518>,  <37.414223, 35.549522, 29.527695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913147, 36.205414, 29.616518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116249, 35.890598, 29.476376>,  <38.238110, 35.701710, 29.392290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116249, 35.890598, 29.476376>,  <37.913147, 36.205414, 29.616518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116249, 35.890598, 29.476376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304598, 0.544426, -0.781550,
		0.805854, 0.290122, 0.516168,
		0.507760, -0.787039, -0.350357,
		38.268578, 35.654488, 29.371269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483742, 36.503433, 29.396290>,  <37.913147, 36.205414, 29.616518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483742, 36.503433, 29.396290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.511959, 36.137241, 29.237835>,  <38.528889, 35.917526, 29.142761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.511959, 36.137241, 29.237835>,  <38.483742, 36.503433, 29.396290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511959, 36.137241, 29.237835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385175, 0.391327, -0.835765,
		0.920143, -0.093625, 0.380225,
		0.070544, -0.915477, -0.396139,
		38.533123, 35.862598, 29.118994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207607, 36.444832, 29.344318>,  <38.483742, 36.503433, 29.396290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207607, 36.444832, 29.344318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.002918, 36.223656, 29.081289>,  <38.880104, 36.090950, 28.923471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.002918, 36.223656, 29.081289>,  <39.207607, 36.444832, 29.344318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002918, 36.223656, 29.081289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430086, 0.497706, -0.753203,
		0.743754, -0.668240, -0.016873,
		-0.511718, -0.552941, -0.657571,
		38.849403, 36.057774, 28.884018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691391, 36.313225, 28.800200>,  <39.207607, 36.444832, 29.344318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691391, 36.313225, 28.800200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334457, 36.221725, 28.644552>,  <39.120296, 36.166828, 28.551165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334457, 36.221725, 28.644552>,  <39.691391, 36.313225, 28.800200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334457, 36.221725, 28.644552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281917, 0.390808, -0.876237,
		0.352502, -0.891597, -0.284246,
		-0.892337, -0.228742, -0.389117,
		39.066757, 36.153103, 28.527817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979015, 35.585484, 28.850796>,  <39.691391, 36.313225, 28.800200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979015, 35.585484, 28.850796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357189, 35.455376, 28.843393>,  <40.584095, 35.377312, 28.838951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357189, 35.455376, 28.843393>,  <39.979015, 35.585484, 28.850796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357189, 35.455376, 28.843393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154133, -0.496599, 0.854185,
		-0.287033, -0.804728, -0.519639,
		0.945439, -0.325273, -0.018505,
		40.640820, 35.357792, 28.837841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954029, 34.835087, 29.019392>,  <39.979015, 35.585484, 28.850796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954029, 34.835087, 29.019392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336868, 34.923920, 29.093838>,  <40.566574, 34.977219, 29.138504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336868, 34.923920, 29.093838>,  <39.954029, 34.835087, 29.019392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336868, 34.923920, 29.093838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020713, -0.588228, 0.808430,
		0.289015, -0.777604, -0.558393,
		0.957100, 0.222082, 0.186113,
		40.623997, 34.990543, 29.149672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321140, 34.212200, 29.168655>,  <39.954029, 34.835087, 29.019392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321140, 34.212200, 29.168655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564098, 34.486732, 29.328661>,  <40.709873, 34.651451, 29.424665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564098, 34.486732, 29.328661>,  <40.321140, 34.212200, 29.168655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564098, 34.486732, 29.328661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029666, -0.522791, 0.851945,
		0.793845, -0.505602, -0.337902,
		0.607397, 0.686336, 0.400016,
		40.746319, 34.692635, 29.448666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902660, 33.827446, 29.518574>,  <40.321140, 34.212200, 29.168655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902660, 33.827446, 29.518574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.905758, 34.192253, 29.682604>,  <40.907616, 34.411137, 29.781021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.905758, 34.192253, 29.682604>,  <40.902660, 33.827446, 29.518574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905758, 34.192253, 29.682604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005112, -0.410118, 0.912018,
		0.999957, -0.004967, -0.007838,
		0.007744, 0.912019, 0.410075,
		40.908081, 34.465858, 29.805626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473297, 33.763107, 29.929108>,  <40.902660, 33.827446, 29.518574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473297, 33.763107, 29.929108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231190, 34.050640, 30.065889>,  <41.085926, 34.223160, 30.147959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231190, 34.050640, 30.065889>,  <41.473297, 33.763107, 29.929108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231190, 34.050640, 30.065889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180682, -0.294304, 0.938477,
		0.775245, 0.629815, 0.048253,
		-0.605267, 0.718832, 0.341954,
		41.049610, 34.266289, 30.168476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845188, 34.159832, 30.464205>,  <41.473297, 33.763107, 29.929108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845188, 34.159832, 30.464205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.470875, 34.238708, 30.581116>,  <41.246288, 34.286034, 30.651262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.470875, 34.238708, 30.581116>,  <41.845188, 34.159832, 30.464205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470875, 34.238708, 30.581116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158021, -0.506477, 0.847650,
		0.315181, 0.839402, 0.442792,
		-0.935783, 0.197193, 0.292275,
		41.190140, 34.297867, 30.668798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810463, 34.319756, 31.193195>,  <41.845188, 34.159832, 30.464205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810463, 34.319756, 31.193195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.424038, 34.226612, 31.148481>,  <41.192184, 34.170727, 31.121653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.424038, 34.226612, 31.148481>,  <41.810463, 34.319756, 31.193195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424038, 34.226612, 31.148481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006225, -0.453627, 0.891170,
		-0.258229, 0.860231, 0.439682,
		-0.966064, -0.232863, -0.111785,
		41.134220, 34.156754, 31.114946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706028, 34.397038, 31.784626>,  <41.810463, 34.319756, 31.193195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706028, 34.397038, 31.784626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.354233, 34.255024, 31.657845>,  <41.143158, 34.169815, 31.581776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.354233, 34.255024, 31.657845>,  <41.706028, 34.397038, 31.784626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354233, 34.255024, 31.657845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129980, -0.461474, 0.877580,
		-0.457836, 0.813015, 0.359712,
		-0.879484, -0.355032, -0.316956,
		41.090389, 34.148514, 31.562757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123772, 34.748333, 32.213959>,  <41.706028, 34.397038, 31.784626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123772, 34.748333, 32.213959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.049873, 34.390205, 32.051838>,  <41.005535, 34.175327, 31.954567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.049873, 34.390205, 32.051838>,  <41.123772, 34.748333, 32.213959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049873, 34.390205, 32.051838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082149, -0.396885, 0.914185,
		-0.979347, 0.202188, -0.000226,
		-0.184748, -0.895322, -0.405297,
		40.994450, 34.121609, 31.930248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462502, 34.480545, 32.515797>,  <41.123772, 34.748333, 32.213959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462502, 34.480545, 32.515797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644989, 34.159534, 32.362007>,  <40.754482, 33.966930, 32.269733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644989, 34.159534, 32.362007>,  <40.462502, 34.480545, 32.515797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644989, 34.159534, 32.362007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004486, -0.434123, 0.900842,
		-0.889855, -0.409258, -0.201657,
		0.456221, -0.802524, -0.384471,
		40.781857, 33.918777, 32.246666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106110, 33.971226, 32.844872>,  <40.462502, 34.480545, 32.515797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106110, 33.971226, 32.844872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.465946, 33.833202, 32.737789>,  <40.681850, 33.750389, 32.673538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.465946, 33.833202, 32.737789>,  <40.106110, 33.971226, 32.844872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465946, 33.833202, 32.737789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091200, -0.451045, 0.887829,
		-0.427093, -0.823103, -0.374290,
		0.899596, -0.345051, -0.267705,
		40.735825, 33.729687, 32.657478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174862, 33.196217, 32.841537>,  <40.106110, 33.971226, 32.844872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174862, 33.196217, 32.841537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538464, 33.356579, 32.887119>,  <40.756626, 33.452797, 32.914467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538464, 33.356579, 32.887119>,  <40.174862, 33.196217, 32.841537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538464, 33.356579, 32.887119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109304, -0.493141, 0.863056,
		0.402198, -0.772066, -0.492088,
		0.909005, 0.400906, 0.113950,
		40.811165, 33.476852, 32.921303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493069, 32.674236, 33.141193>,  <40.174862, 33.196217, 32.841537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493069, 32.674236, 33.141193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759270, 32.966377, 33.202755>,  <40.918991, 33.141663, 33.239693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759270, 32.966377, 33.202755>,  <40.493069, 32.674236, 33.141193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759270, 32.966377, 33.202755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082096, -0.276572, 0.957480,
		0.741864, -0.624574, -0.244019,
		0.665506, 0.730353, 0.153904,
		40.958923, 33.185482, 33.248924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079762, 32.331551, 33.422218>,  <40.493069, 32.674236, 33.141193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079762, 32.331551, 33.422218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061817, 32.713741, 33.538868>,  <41.051052, 32.943058, 33.608860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061817, 32.713741, 33.538868>,  <41.079762, 32.331551, 33.422218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061817, 32.713741, 33.538868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050901, -0.293729, 0.954533,
		0.997696, 0.027975, 0.061812,
		-0.044859, 0.955480, 0.291628,
		41.048359, 33.000385, 33.626358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.088459, 39.247734, 29.986855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690224, 39.255585, 29.950167>,  <44.451283, 39.260296, 29.928154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690224, 39.255585, 29.950167>,  <45.088459, 39.247734, 29.986855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690224, 39.255585, 29.950167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090592, -0.052267, -0.994516,
		-0.024304, -0.998440, 0.050260,
		-0.995592, 0.019618, -0.091721,
		44.391548, 39.261471, 29.922649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899170, 38.741726, 29.542614>,  <45.088459, 39.247734, 29.986855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899170, 38.741726, 29.542614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.558289, 38.950367, 29.526264>,  <44.353760, 39.075554, 29.516455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.558289, 38.950367, 29.526264>,  <44.899170, 38.741726, 29.542614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558289, 38.950367, 29.526264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032109, -0.025838, -0.999150,
		-0.522219, -0.852795, 0.005271,
		-0.852206, 0.521606, -0.040875,
		44.302628, 39.106850, 29.514002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531834, 38.378124, 28.983986>,  <44.899170, 38.741726, 29.542614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531834, 38.378124, 28.983986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.398365, 38.754688, 29.003618>,  <44.318283, 38.980629, 29.015398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.398365, 38.754688, 29.003618>,  <44.531834, 38.378124, 28.983986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398365, 38.754688, 29.003618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005547, 0.054025, -0.998524,
		-0.942674, -0.332903, -0.023248,
		-0.333668, 0.941412, 0.049081,
		44.298264, 39.037113, 29.018343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027225, 38.370853, 28.533798>,  <44.531834, 38.378124, 28.983986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027225, 38.370853, 28.533798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.114357, 38.758614, 28.579060>,  <44.166637, 38.991272, 28.606216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.114357, 38.758614, 28.579060>,  <44.027225, 38.370853, 28.533798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114357, 38.758614, 28.579060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117919, 0.088949, -0.989031,
		-0.968837, 0.228785, -0.094936,
		0.217831, 0.969405, 0.113155,
		44.179707, 39.049435, 28.613007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614426, 38.712303, 28.034399>,  <44.027225, 38.370853, 28.533798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614426, 38.712303, 28.034399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929245, 38.936832, 28.136747>,  <44.118137, 39.071548, 28.198156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929245, 38.936832, 28.136747>,  <43.614426, 38.712303, 28.034399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929245, 38.936832, 28.136747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221921, 0.129378, -0.966443,
		-0.575587, 0.817424, -0.022741,
		0.787052, 0.561319, 0.255872,
		44.165359, 39.105228, 28.213509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513409, 39.319122, 27.634890>,  <43.614426, 38.712303, 28.034399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513409, 39.319122, 27.634890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.903328, 39.333286, 27.722994>,  <44.137280, 39.341785, 27.775856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.903328, 39.333286, 27.722994>,  <43.513409, 39.319122, 27.634890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903328, 39.333286, 27.722994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208035, 0.212244, -0.954816,
		-0.080563, 0.976575, 0.199527,
		0.974798, 0.035414, 0.220261,
		44.195766, 39.343910, 27.789072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808681, 39.915028, 27.236752>,  <43.513409, 39.319122, 27.634890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808681, 39.915028, 27.236752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.133591, 39.704430, 27.337162>,  <44.328537, 39.578072, 27.397408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.133591, 39.704430, 27.337162>,  <43.808681, 39.915028, 27.236752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133591, 39.704430, 27.337162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257161, -0.063022, -0.964311,
		0.523526, 0.847839, 0.084203,
		0.812274, -0.526496, 0.251024,
		44.377274, 39.546482, 27.412470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187370, 40.150024, 26.754984>,  <43.808681, 39.915028, 27.236752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187370, 40.150024, 26.754984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.366383, 39.816292, 26.883736>,  <44.473789, 39.616051, 26.960987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.366383, 39.816292, 26.883736>,  <44.187370, 40.150024, 26.754984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366383, 39.816292, 26.883736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390345, -0.141583, -0.909717,
		0.804579, 0.532771, 0.262314,
		0.447531, -0.834332, 0.321879,
		44.500641, 39.565990, 26.980299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872532, 40.189651, 26.505375>,  <44.187370, 40.150024, 26.754984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872532, 40.189651, 26.505375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.770145, 39.811981, 26.588337>,  <44.708714, 39.585381, 26.638113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.770145, 39.811981, 26.588337>,  <44.872532, 40.189651, 26.505375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770145, 39.811981, 26.588337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097005, -0.238557, -0.966272,
		0.961806, -0.227215, 0.152652,
		-0.255967, -0.944174, 0.207404,
		44.693356, 39.528728, 26.650558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444920, 39.812469, 26.264400>,  <44.872532, 40.189651, 26.505375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444920, 39.812469, 26.264400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.151249, 39.542061, 26.289639>,  <44.975048, 39.379814, 26.304781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.151249, 39.542061, 26.289639>,  <45.444920, 39.812469, 26.264400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151249, 39.542061, 26.289639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053770, -0.150526, -0.987143,
		0.676827, -0.721344, 0.146862,
		-0.734176, -0.676021, 0.063093,
		44.930996, 39.339256, 26.308567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573040, 39.304642, 25.747334>,  <45.444920, 39.812469, 26.264400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573040, 39.304642, 25.747334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.183250, 39.240013, 25.809673>,  <44.949375, 39.201237, 25.847078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.183250, 39.240013, 25.809673>,  <45.573040, 39.304642, 25.747334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183250, 39.240013, 25.809673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135082, -0.132463, -0.981940,
		0.179295, -0.977931, 0.107257,
		-0.974477, -0.161569, 0.155851,
		44.890907, 39.191544, 25.856428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379349, 38.658970, 25.468870>,  <45.573040, 39.304642, 25.747334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379349, 38.658970, 25.468870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.024033, 38.839966, 25.500338>,  <44.810841, 38.948563, 25.519218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.024033, 38.839966, 25.500338>,  <45.379349, 38.658970, 25.468870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024033, 38.839966, 25.500338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119013, -0.061345, -0.990996,
		-0.443592, -0.889656, 0.108345,
		-0.888292, 0.452492, 0.078668,
		44.757545, 38.975712, 25.523937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053131, 38.189404, 25.038012>,  <45.379349, 38.658970, 25.468870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053131, 38.189404, 25.038012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.849480, 38.530983, 25.081001>,  <44.727287, 38.735931, 25.106794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.849480, 38.530983, 25.081001>,  <45.053131, 38.189404, 25.038012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849480, 38.530983, 25.081001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171419, 0.021761, -0.984958,
		-0.843446, -0.519896, 0.135304,
		-0.509131, 0.853953, 0.107474,
		44.696739, 38.787170, 25.113243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283356, 38.114799, 24.947632>,  <45.053131, 38.189404, 25.038012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283356, 38.114799, 24.947632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.421986, 38.470680, 24.828753>,  <44.505161, 38.684208, 24.757425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.421986, 38.470680, 24.828753>,  <44.283356, 38.114799, 24.947632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421986, 38.470680, 24.828753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354875, -0.168926, -0.919525,
		-0.868304, 0.424150, 0.257187,
		0.346571, 0.889697, -0.297199,
		44.525955, 38.737591, 24.739594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772297, 38.686253, 24.826733>,  <44.283356, 38.114799, 24.947632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772297, 38.686253, 24.826733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.513283, 38.430092, 24.661531>,  <43.357872, 38.276394, 24.562410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.513283, 38.430092, 24.661531>,  <43.772297, 38.686253, 24.826733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513283, 38.430092, 24.661531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550856, 0.018885, 0.834387,
		-0.526547, 0.767804, -0.365000,
		-0.647539, -0.640406, -0.413005,
		43.319019, 38.237968, 24.537630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279587, 38.801186, 25.185457>,  <43.772297, 38.686253, 24.826733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279587, 38.801186, 25.185457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.194050, 38.440884, 25.034241>,  <43.142727, 38.224701, 24.943510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.194050, 38.440884, 25.034241>,  <43.279587, 38.801186, 25.185457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194050, 38.440884, 25.034241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381565, -0.279231, 0.881157,
		-0.899266, 0.332676, -0.283985,
		-0.213842, -0.900753, -0.378041,
		43.129898, 38.170658, 24.920828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650963, 38.672600, 25.393173>,  <43.279587, 38.801186, 25.185457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650963, 38.672600, 25.393173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751797, 38.300957, 25.284943>,  <42.812298, 38.077972, 25.220005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751797, 38.300957, 25.284943>,  <42.650963, 38.672600, 25.393173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751797, 38.300957, 25.284943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557774, -0.367994, 0.743955,
		-0.790784, -0.036622, -0.610999,
		0.252089, -0.929107, -0.270577,
		42.827423, 38.022224, 25.203770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080471, 38.268787, 25.236542>,  <42.650963, 38.672600, 25.393173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080471, 38.268787, 25.236542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.354069, 37.995171, 25.337917>,  <42.518227, 37.831001, 25.398743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.354069, 37.995171, 25.337917>,  <42.080471, 38.268787, 25.236542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354069, 37.995171, 25.337917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689788, -0.493440, 0.529820,
		-0.237363, -0.537215, -0.809357,
		0.683997, -0.684045, 0.253439,
		42.559269, 37.789959, 25.413948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787373, 37.682945, 25.304665>,  <42.080471, 38.268787, 25.236542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787373, 37.682945, 25.304665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.109642, 37.565639, 25.510532>,  <42.303005, 37.495255, 25.634054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.109642, 37.565639, 25.510532>,  <41.787373, 37.682945, 25.304665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109642, 37.565639, 25.510532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592129, -0.374479, 0.713547,
		-0.016523, -0.879638, -0.475357,
		0.805674, -0.293263, 0.514671,
		42.351345, 37.477661, 25.664934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689117, 37.049614, 25.456289>,  <41.787373, 37.682945, 25.304665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689117, 37.049614, 25.456289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.948048, 37.140236, 25.747395>,  <42.103405, 37.194611, 25.922058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.948048, 37.140236, 25.747395>,  <41.689117, 37.049614, 25.456289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948048, 37.140236, 25.747395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496268, -0.599420, 0.628024,
		0.578518, -0.767703, -0.275588,
		0.647328, 0.226558, 0.727762,
		42.142246, 37.208202, 25.965723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660957, 36.430641, 25.785706>,  <41.689117, 37.049614, 25.456289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660957, 36.430641, 25.785706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.821148, 36.702217, 26.031847>,  <41.917263, 36.865162, 26.179533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.821148, 36.702217, 26.031847>,  <41.660957, 36.430641, 25.785706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821148, 36.702217, 26.031847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336635, -0.515583, 0.787941,
		0.852230, -0.522701, 0.022077,
		0.400475, 0.678939, 0.615355,
		41.941292, 36.905899, 26.216454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198376, 36.185680, 26.205317>,  <41.660957, 36.430641, 25.785706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198376, 36.185680, 26.205317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050404, 36.496952, 26.408329>,  <41.961620, 36.683716, 26.530136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050404, 36.496952, 26.408329>,  <42.198376, 36.185680, 26.205317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050404, 36.496952, 26.408329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018061, -0.540159, 0.841369,
		0.928886, 0.320411, 0.185764,
		-0.369926, 0.778181, 0.507533,
		41.939426, 36.730408, 26.560589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533344, 36.175781, 26.775219>,  <42.198376, 36.185680, 26.205317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533344, 36.175781, 26.775219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.224663, 36.406635, 26.882092>,  <42.039455, 36.545147, 26.946215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.224663, 36.406635, 26.882092>,  <42.533344, 36.175781, 26.775219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224663, 36.406635, 26.882092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108742, -0.533662, 0.838678,
		0.626619, 0.618155, 0.474587,
		-0.771702, 0.577139, 0.267183,
		41.993153, 36.579777, 26.962246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591755, 36.230118, 27.516214>,  <42.533344, 36.175781, 26.775219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591755, 36.230118, 27.516214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.221127, 36.367226, 27.454277>,  <41.998749, 36.449490, 27.417114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.221127, 36.367226, 27.454277>,  <42.591755, 36.230118, 27.516214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221127, 36.367226, 27.454277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354978, -0.660834, 0.661278,
		0.124342, 0.667686, 0.733985,
		-0.926569, 0.342773, -0.154844,
		41.943157, 36.470058, 27.407824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379864, 36.420162, 28.236366>,  <42.591755, 36.230118, 27.516214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379864, 36.420162, 28.236366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.066433, 36.340916, 28.000824>,  <41.878372, 36.293365, 27.859499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.066433, 36.340916, 28.000824>,  <42.379864, 36.420162, 28.236366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066433, 36.340916, 28.000824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379631, -0.597598, 0.706227,
		-0.491817, 0.776933, 0.393053,
		-0.783579, -0.198120, -0.588857,
		41.831360, 36.281479, 27.824167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771122, 36.529015, 28.719090>,  <42.379864, 36.420162, 28.236366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771122, 36.529015, 28.719090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.624313, 36.322361, 28.409668>,  <41.536228, 36.198368, 28.224014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.624313, 36.322361, 28.409668>,  <41.771122, 36.529015, 28.719090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624313, 36.322361, 28.409668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509760, -0.583897, 0.631829,
		-0.778102, 0.626220, -0.049060,
		-0.367018, -0.516636, -0.773553,
		41.514210, 36.167370, 28.177603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971905, 36.530743, 28.662041>,  <41.771122, 36.529015, 28.719090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971905, 36.530743, 28.662041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.091850, 36.202209, 28.467930>,  <41.163818, 36.005089, 28.351463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.091850, 36.202209, 28.467930>,  <40.971905, 36.530743, 28.662041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091850, 36.202209, 28.467930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549264, -0.564553, 0.616108,
		-0.779994, 0.081796, -0.620418,
		0.299863, -0.821334, -0.485276,
		41.181808, 35.955811, 28.322348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359638, 36.152733, 28.582584>,  <40.971905, 36.530743, 28.662041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359638, 36.152733, 28.582584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.681652, 35.915565, 28.574919>,  <40.874859, 35.773266, 28.570320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.681652, 35.915565, 28.574919>,  <40.359638, 36.152733, 28.582584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681652, 35.915565, 28.574919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271384, -0.396812, 0.876864,
		-0.527515, -0.700704, -0.480356,
		0.805033, -0.592920, -0.019165,
		40.923161, 35.737690, 28.569170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776825, 35.932137, 28.157389>,  <40.359638, 36.152733, 28.582584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776825, 35.932137, 28.157389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422653, 36.116558, 28.133936>,  <39.210148, 36.227211, 28.119864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422653, 36.116558, 28.133936>,  <39.776825, 35.932137, 28.157389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422653, 36.116558, 28.133936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235963, 0.337261, -0.911360,
		-0.400412, -0.820783, -0.407413,
		-0.885433, 0.461054, -0.058631,
		39.157024, 36.254875, 28.116346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641640, 36.004154, 27.453356>,  <39.776825, 35.932137, 28.157389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641640, 36.004154, 27.453356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.359249, 36.254910, 27.585176>,  <39.189816, 36.405365, 27.664268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.359249, 36.254910, 27.585176>,  <39.641640, 36.004154, 27.453356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359249, 36.254910, 27.585176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003256, 0.468182, -0.883626,
		-0.708229, -0.622745, -0.332566,
		-0.705976, 0.626892, 0.329553,
		39.147457, 36.442978, 27.684042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198444, 36.001007, 26.899233>,  <39.641640, 36.004154, 27.453356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198444, 36.001007, 26.899233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137707, 36.336147, 27.108974>,  <39.101265, 36.537231, 27.234819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137707, 36.336147, 27.108974>,  <39.198444, 36.001007, 26.899233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137707, 36.336147, 27.108974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118095, 0.542084, -0.831985,
		-0.981324, -0.064409, -0.181259,
		-0.151845, 0.837852, 0.524354,
		39.092152, 36.587502, 27.266281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899067, 36.378132, 26.478254>,  <39.198444, 36.001007, 26.899233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899067, 36.378132, 26.478254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001827, 36.663223, 26.739334>,  <39.063484, 36.834278, 26.895983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001827, 36.663223, 26.739334>,  <38.899067, 36.378132, 26.478254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001827, 36.663223, 26.739334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034251, 0.668226, -0.743169,
		-0.965832, 0.213274, 0.147253,
		0.256897, 0.712733, 0.652699,
		39.078896, 36.877045, 26.935144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690186, 36.988071, 26.091074>,  <38.899067, 36.378132, 26.478254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690186, 36.988071, 26.091074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910770, 37.132301, 26.391973>,  <39.043121, 37.218838, 26.572514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910770, 37.132301, 26.391973>,  <38.690186, 36.988071, 26.091074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910770, 37.132301, 26.391973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411093, 0.667199, -0.621167,
		-0.725875, 0.651793, 0.219705,
		0.551460, 0.360571, 0.752250,
		39.076210, 37.240471, 26.617649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613396, 37.660698, 26.031509>,  <38.690186, 36.988071, 26.091074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613396, 37.660698, 26.031509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959995, 37.607143, 26.223867>,  <39.167953, 37.575012, 26.339283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959995, 37.607143, 26.223867>,  <38.613396, 37.660698, 26.031509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959995, 37.607143, 26.223867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460237, 0.587325, -0.665756,
		-0.193307, 0.798200, 0.570534,
		0.866495, -0.133886, 0.480895,
		39.219944, 37.566978, 26.368135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832439, 38.301682, 26.083071>,  <38.613396, 37.660698, 26.031509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832439, 38.301682, 26.083071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159054, 38.072136, 26.108179>,  <39.355022, 37.934406, 26.123243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159054, 38.072136, 26.108179>,  <38.832439, 38.301682, 26.083071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159054, 38.072136, 26.108179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377403, 0.448368, -0.810267,
		0.436840, 0.685306, 0.582689,
		0.816540, -0.573866, 0.062771,
		39.404015, 37.899975, 26.127010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982193, 38.936794, 26.638344>,  <38.832439, 38.301682, 26.083071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982193, 38.936794, 26.638344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882385, 39.324097, 26.644194>,  <38.822502, 39.556480, 26.647703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882385, 39.324097, 26.644194>,  <38.982193, 38.936794, 26.638344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882385, 39.324097, 26.644194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333251, -0.100038, 0.937516,
		0.909222, 0.229054, 0.347634,
		-0.249518, 0.968260, 0.014624,
		38.807529, 39.614574, 26.648581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254604, 39.253578, 27.222279>,  <38.982193, 38.936794, 26.638344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254604, 39.253578, 27.222279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.952293, 39.492298, 27.114479>,  <38.770908, 39.635532, 27.049799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.952293, 39.492298, 27.114479>,  <39.254604, 39.253578, 27.222279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952293, 39.492298, 27.114479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393018, -0.084217, 0.915666,
		0.523776, 0.797956, 0.298204,
		-0.755775, 0.596804, -0.269500,
		38.725559, 39.671341, 27.033628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209991, 39.864338, 27.732012>,  <39.254604, 39.253578, 27.222279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209991, 39.864338, 27.732012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862000, 39.767555, 27.560152>,  <38.653206, 39.709488, 27.457035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862000, 39.767555, 27.560152>,  <39.209991, 39.864338, 27.732012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862000, 39.767555, 27.560152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416110, -0.107265, 0.902965,
		-0.264563, 0.964340, -0.007362,
		-0.869976, -0.241955, -0.429650,
		38.601006, 39.694969, 27.431257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770142, 39.979828, 28.247061>,  <39.209991, 39.864338, 27.732012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770142, 39.979828, 28.247061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516541, 39.820263, 27.982061>,  <38.364380, 39.724525, 27.823061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516541, 39.820263, 27.982061>,  <38.770142, 39.979828, 28.247061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516541, 39.820263, 27.982061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607316, -0.273516, 0.745892,
		-0.478750, 0.875247, -0.068855,
		-0.634007, -0.398913, -0.662498,
		38.326340, 39.700588, 27.783312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126301, 40.321438, 28.308599>,  <38.770142, 39.979828, 28.247061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126301, 40.321438, 28.308599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052029, 39.953987, 28.169090>,  <38.007465, 39.733517, 28.085384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052029, 39.953987, 28.169090>,  <38.126301, 40.321438, 28.308599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052029, 39.953987, 28.169090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696486, -0.127333, 0.706182,
		-0.693130, 0.374040, -0.616169,
		-0.185682, -0.918630, -0.348772,
		37.996323, 39.678398, 28.064459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391998, 40.223297, 28.305378>,  <38.126301, 40.321438, 28.308599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391998, 40.223297, 28.305378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574497, 39.867397, 28.310789>,  <37.683998, 39.653858, 28.314035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574497, 39.867397, 28.310789>,  <37.391998, 40.223297, 28.305378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574497, 39.867397, 28.310789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540035, -0.264773, 0.798910,
		-0.707249, -0.371804, -0.601299,
		0.456246, -0.889751, 0.013527,
		37.711372, 39.600471, 28.314848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897232, 39.805256, 28.573492>,  <37.391998, 40.223297, 28.305378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897232, 39.805256, 28.573492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210049, 39.557251, 28.598793>,  <37.397739, 39.408447, 28.613974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210049, 39.557251, 28.598793>,  <36.897232, 39.805256, 28.573492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210049, 39.557251, 28.598793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421269, -0.451102, 0.786791,
		-0.459284, -0.641948, -0.613971,
		0.782042, -0.620008, 0.063249,
		37.444660, 39.371250, 28.617767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.586166, 40.140053, 24.808649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.597462, 39.763054, 24.941862>,  <42.604240, 39.536854, 25.021790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.597462, 39.763054, 24.941862>,  <42.586166, 40.140053, 24.808649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597462, 39.763054, 24.941862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937171, -0.090933, -0.336812,
		0.347726, 0.321620, 0.880709,
		0.028240, -0.942492, 0.333032,
		42.605934, 39.480305, 25.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274963, 40.736404, 25.020790>,  <42.586166, 40.140053, 24.808649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274963, 40.736404, 25.020790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.590179, 40.618423, 25.236937>,  <42.779308, 40.547634, 25.366625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.590179, 40.618423, 25.236937>,  <42.274963, 40.736404, 25.020790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590179, 40.618423, 25.236937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610476, -0.261121, 0.747753,
		-0.079449, -0.919141, -0.385834,
		0.788040, -0.294951, 0.540368,
		42.826591, 40.529938, 25.399046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078960, 40.272545, 25.402716>,  <42.274963, 40.736404, 25.020790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078960, 40.272545, 25.402716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.404465, 40.362835, 25.616949>,  <42.599766, 40.417007, 25.745489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.404465, 40.362835, 25.616949>,  <42.078960, 40.272545, 25.402716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404465, 40.362835, 25.616949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512281, -0.156710, 0.844399,
		0.274534, -0.961504, -0.011889,
		0.813756, 0.225726, 0.535583,
		42.648590, 40.430553, 25.777624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136532, 39.798069, 26.005627>,  <42.078960, 40.272545, 25.402716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136532, 39.798069, 26.005627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.362015, 40.108265, 26.119366>,  <42.497303, 40.294384, 26.187609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.362015, 40.108265, 26.119366>,  <42.136532, 39.798069, 26.005627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362015, 40.108265, 26.119366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318075, -0.113896, 0.941200,
		0.762275, -0.621003, 0.182460,
		0.563706, 0.775489, 0.284345,
		42.531128, 40.340912, 26.204670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640663, 39.553768, 26.620388>,  <42.136532, 39.798069, 26.005627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640663, 39.553768, 26.620388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.615005, 39.952896, 26.626474>,  <42.599609, 40.192375, 26.630127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.615005, 39.952896, 26.626474>,  <42.640663, 39.553768, 26.620388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615005, 39.952896, 26.626474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247580, -0.030683, 0.968382,
		0.966742, 0.058349, 0.249009,
		-0.064145, 0.997825, 0.015216,
		42.595760, 40.252243, 26.631039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894920, 39.699257, 27.196516>,  <42.640663, 39.553768, 26.620388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894920, 39.699257, 27.196516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.675629, 40.022251, 27.109411>,  <42.544056, 40.216045, 27.057148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.675629, 40.022251, 27.109411>,  <42.894920, 39.699257, 27.196516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675629, 40.022251, 27.109411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359168, 0.007828, 0.933240,
		0.755280, 0.589840, 0.285730,
		-0.548225, 0.807482, -0.217764,
		42.511162, 40.264496, 27.044083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083138, 40.187447, 27.833467>,  <42.894920, 39.699257, 27.196516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083138, 40.187447, 27.833467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.748672, 40.334053, 27.670250>,  <42.547993, 40.422016, 27.572319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.748672, 40.334053, 27.670250>,  <43.083138, 40.187447, 27.833467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748672, 40.334053, 27.670250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431555, 0.019517, 0.901875,
		0.338513, 0.930208, 0.141851,
		-0.836164, 0.366513, -0.408043,
		42.497822, 40.444008, 27.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981396, 40.666035, 28.285543>,  <43.083138, 40.187447, 27.833467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981396, 40.666035, 28.285543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.628597, 40.651432, 28.097607>,  <42.416920, 40.642670, 27.984844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.628597, 40.651432, 28.097607>,  <42.981396, 40.666035, 28.285543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628597, 40.651432, 28.097607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463049, 0.252399, 0.849636,
		0.087568, 0.966934, -0.239520,
		-0.881996, -0.036509, -0.469840,
		42.363998, 40.640480, 27.956656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603462, 41.265846, 28.441597>,  <42.981396, 40.666035, 28.285543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603462, 41.265846, 28.441597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.319004, 40.996246, 28.361597>,  <42.148331, 40.834488, 28.313597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.319004, 40.996246, 28.361597>,  <42.603462, 41.265846, 28.441597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319004, 40.996246, 28.361597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427924, 0.189258, 0.883777,
		-0.557812, 0.714079, -0.423009,
		-0.711145, -0.673997, -0.200001,
		42.105659, 40.794048, 28.301596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900764, 41.586132, 28.569807>,  <42.603462, 41.265846, 28.441597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900764, 41.586132, 28.569807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.837830, 41.192043, 28.596912>,  <41.800068, 40.955589, 28.613176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.837830, 41.192043, 28.596912>,  <41.900764, 41.586132, 28.569807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837830, 41.192043, 28.596912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541076, 0.143404, 0.828657,
		-0.826125, 0.093713, -0.555640,
		-0.157336, -0.985217, 0.067764,
		41.790630, 40.896477, 28.617241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304070, 41.490143, 28.998415>,  <41.900764, 41.586132, 28.569807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304070, 41.490143, 28.998415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418457, 41.109425, 28.954041>,  <41.487091, 40.880993, 28.927416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418457, 41.109425, 28.954041>,  <41.304070, 41.490143, 28.998415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418457, 41.109425, 28.954041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378485, -0.218550, 0.899436,
		-0.880324, -0.215223, -0.422739,
		0.285969, -0.951796, -0.110936,
		41.504250, 40.823887, 28.920759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695564, 41.076714, 29.179857>,  <41.304070, 41.490143, 28.998415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695564, 41.076714, 29.179857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.047356, 40.896957, 29.242567>,  <41.258430, 40.789104, 29.280193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.047356, 40.896957, 29.242567>,  <40.695564, 41.076714, 29.179857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047356, 40.896957, 29.242567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224862, -0.102011, 0.969036,
		-0.419480, -0.887494, -0.190765,
		0.879474, -0.449387, 0.156772,
		41.311199, 40.762142, 29.289598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907875, 40.966228, 28.947580>,  <40.695564, 41.076714, 29.179857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907875, 40.966228, 28.947580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.703007, 41.308884, 28.972420>,  <39.580086, 41.514477, 28.987324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.703007, 41.308884, 28.972420>,  <39.907875, 40.966228, 28.947580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703007, 41.308884, 28.972420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203913, 0.191515, -0.960074,
		-0.834327, -0.479057, -0.272767,
		-0.512169, 0.856637, 0.062100,
		39.549355, 41.565876, 28.991051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740154, 40.995708, 28.256716>,  <39.907875, 40.966228, 28.947580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740154, 40.995708, 28.256716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657066, 41.360065, 28.399332>,  <39.607212, 41.578682, 28.484901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657066, 41.360065, 28.399332>,  <39.740154, 40.995708, 28.256716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657066, 41.360065, 28.399332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254366, 0.402252, -0.879484,
		-0.944537, -0.091994, -0.315257,
		-0.207720, 0.910895, 0.356542,
		39.594749, 41.633335, 28.506294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359535, 41.295341, 27.789915>,  <39.740154, 40.995708, 28.256716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359535, 41.295341, 27.789915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516167, 41.595558, 28.002836>,  <39.610146, 41.775688, 28.130589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516167, 41.595558, 28.002836>,  <39.359535, 41.295341, 27.789915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516167, 41.595558, 28.002836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394738, 0.385540, -0.833991,
		-0.831173, 0.536693, -0.145300,
		0.391578, 0.750546, 0.532304,
		39.633640, 41.820721, 28.162527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291321, 41.880882, 27.385410>,  <39.359535, 41.295341, 27.789915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291321, 41.880882, 27.385410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.566433, 41.976154, 27.659704>,  <39.731499, 42.033318, 27.824280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.566433, 41.976154, 27.659704>,  <39.291321, 41.880882, 27.385410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566433, 41.976154, 27.659704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545000, 0.454572, -0.704514,
		-0.479520, 0.858273, 0.182834,
		0.687776, 0.238184, 0.685735,
		39.772766, 42.047611, 27.865425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239033, 42.610828, 27.430664>,  <39.291321, 41.880882, 27.385410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239033, 42.610828, 27.430664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610184, 42.543289, 27.563646>,  <39.832874, 42.502766, 27.643436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610184, 42.543289, 27.563646>,  <39.239033, 42.610828, 27.430664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610184, 42.543289, 27.563646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370735, 0.513131, -0.774114,
		-0.039890, 0.841540, 0.538721,
		0.927881, -0.168843, 0.332457,
		39.888550, 42.492638, 27.663383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553162, 43.207714, 27.207638>,  <39.239033, 42.610828, 27.430664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553162, 43.207714, 27.207638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830074, 42.936016, 27.305101>,  <39.996223, 42.772995, 27.363581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830074, 42.936016, 27.305101>,  <39.553162, 43.207714, 27.207638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830074, 42.936016, 27.305101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565028, 0.300185, -0.768526,
		0.448876, 0.669711, 0.591606,
		0.692282, -0.679247, 0.243660,
		40.037758, 42.732243, 27.378199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185970, 43.494450, 27.059507>,  <39.553162, 43.207714, 27.207638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185970, 43.494450, 27.059507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.302483, 43.111809, 27.056120>,  <40.372391, 42.882225, 27.054087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.302483, 43.111809, 27.056120>,  <40.185970, 43.494450, 27.059507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302483, 43.111809, 27.056120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588779, 0.186246, -0.786544,
		0.753986, 0.224118, 0.617476,
		0.291281, -0.956600, -0.008471,
		40.389866, 42.824829, 27.053579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908047, 43.521160, 26.952488>,  <40.185970, 43.494450, 27.059507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908047, 43.521160, 26.952488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.800247, 43.157135, 26.826527>,  <40.735569, 42.938721, 26.750950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.800247, 43.157135, 26.826527>,  <40.908047, 43.521160, 26.952488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800247, 43.157135, 26.826527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624102, 0.083984, -0.776816,
		0.733396, -0.405880, 0.545336,
		-0.269494, -0.910059, -0.314904,
		40.719398, 42.884117, 26.732056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504101, 43.324608, 26.701475>,  <40.908047, 43.521160, 26.952488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504101, 43.324608, 26.701475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.237099, 43.069103, 26.548414>,  <41.076897, 42.915802, 26.456577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.237099, 43.069103, 26.548414>,  <41.504101, 43.324608, 26.701475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237099, 43.069103, 26.548414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545635, -0.069914, -0.835102,
		0.506678, -0.766222, 0.395198,
		-0.667503, -0.638761, -0.382654,
		41.036846, 42.877476, 26.433619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937523, 42.808689, 26.347380>,  <41.504101, 43.324608, 26.701475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937523, 42.808689, 26.347380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581577, 42.773354, 26.168341>,  <41.368011, 42.752151, 26.060917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581577, 42.773354, 26.168341>,  <41.937523, 42.808689, 26.347380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581577, 42.773354, 26.168341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456207, -0.182882, -0.870878,
		-0.004922, -0.979158, 0.203042,
		-0.889860, -0.088343, -0.447599,
		41.314621, 42.746853, 26.034061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887215, 42.222858, 25.804453>,  <41.937523, 42.808689, 26.347380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887215, 42.222858, 25.804453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575748, 42.456772, 25.713495>,  <41.388870, 42.597122, 25.658920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575748, 42.456772, 25.713495>,  <41.887215, 42.222858, 25.804453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575748, 42.456772, 25.713495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194056, -0.120193, -0.973600,
		-0.596679, -0.802233, -0.019892,
		-0.778663, 0.584786, -0.227395,
		41.342148, 42.632206, 25.645277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550083, 41.728134, 25.348715>,  <41.887215, 42.222858, 25.804453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550083, 41.728134, 25.348715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414745, 42.098988, 25.284288>,  <41.333542, 42.321499, 25.245632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414745, 42.098988, 25.284288>,  <41.550083, 41.728134, 25.348715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414745, 42.098988, 25.284288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323949, -0.045944, -0.944958,
		-0.883506, -0.371895, -0.284801,
		-0.338340, 0.927137, -0.161067,
		41.313244, 42.377129, 25.235968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295525, 41.695004, 24.679241>,  <41.550083, 41.728134, 25.348715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295525, 41.695004, 24.679241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350578, 42.085075, 24.748625>,  <41.383610, 42.319118, 24.790255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350578, 42.085075, 24.748625>,  <41.295525, 41.695004, 24.679241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350578, 42.085075, 24.748625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330272, 0.119918, -0.936237,
		-0.933797, 0.186148, -0.305568,
		0.137636, 0.975176, 0.173459,
		41.391869, 42.377628, 24.800663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538540, 41.951527, 24.745184>,  <41.295525, 41.695004, 24.679241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538540, 41.951527, 24.745184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312611, 41.760651, 24.475883>,  <40.177055, 41.646126, 24.314302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312611, 41.760651, 24.475883>,  <40.538540, 41.951527, 24.745184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312611, 41.760651, 24.475883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618282, -0.295625, 0.728239,
		-0.546538, 0.827584, -0.128063,
		-0.564821, -0.477190, -0.673251,
		40.143166, 41.617493, 24.273909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928280, 41.876717, 25.062008>,  <40.538540, 41.951527, 24.745184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928280, 41.876717, 25.062008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.855007, 41.628021, 24.757406>,  <39.811043, 41.478806, 24.574646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.855007, 41.628021, 24.757406>,  <39.928280, 41.876717, 25.062008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855007, 41.628021, 24.757406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550946, -0.576608, 0.603308,
		-0.814189, 0.530061, -0.236922,
		-0.183180, -0.621738, -0.761503,
		39.800053, 41.441502, 24.528955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263828, 41.888588, 24.966661>,  <39.928280, 41.876717, 25.062008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263828, 41.888588, 24.966661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.391361, 41.538845, 24.820322>,  <39.467880, 41.328999, 24.732517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.391361, 41.538845, 24.820322>,  <39.263828, 41.888588, 24.966661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391361, 41.538845, 24.820322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608455, -0.484772, 0.628314,
		-0.726725, 0.022276, -0.686568,
		0.318833, -0.874357, -0.365850,
		39.487011, 41.276539, 24.710567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632675, 41.485580, 24.882874>,  <39.263828, 41.888588, 24.966661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632675, 41.485580, 24.882874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935360, 41.225193, 24.906981>,  <39.116970, 41.068962, 24.921446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935360, 41.225193, 24.906981>,  <38.632675, 41.485580, 24.882874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935360, 41.225193, 24.906981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514980, -0.536754, 0.668349,
		-0.402724, -0.536784, -0.741402,
		0.756710, -0.650967, 0.060269,
		39.162373, 41.029903, 24.925062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383656, 40.933800, 25.113058>,  <38.632675, 41.485580, 24.882874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383656, 40.933800, 25.113058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747684, 40.772770, 25.152468>,  <38.966103, 40.676151, 25.176113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747684, 40.772770, 25.152468>,  <38.383656, 40.933800, 25.113058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747684, 40.772770, 25.152468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354034, -0.631503, 0.689829,
		-0.215493, -0.662672, -0.717237,
		0.910068, -0.402579, 0.098523,
		39.020706, 40.651997, 25.182024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273598, 40.256241, 25.169374>,  <38.383656, 40.933800, 25.113058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273598, 40.256241, 25.169374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634327, 40.297272, 25.337276>,  <38.850765, 40.321888, 25.438019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634327, 40.297272, 25.337276>,  <38.273598, 40.256241, 25.169374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634327, 40.297272, 25.337276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304478, -0.538443, 0.785730,
		0.306611, -0.836396, -0.454348,
		0.901822, 0.102575, 0.419757,
		38.904873, 40.328045, 25.463203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340977, 39.650284, 25.433189>,  <38.273598, 40.256241, 25.169374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340977, 39.650284, 25.433189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564556, 39.901630, 25.649609>,  <38.698704, 40.052437, 25.779461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564556, 39.901630, 25.649609>,  <38.340977, 39.650284, 25.433189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564556, 39.901630, 25.649609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135006, -0.574824, 0.807063,
		0.818135, -0.524155, -0.236467,
		0.558953, 0.628362, 0.541048,
		38.732243, 40.090137, 25.811922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774925, 39.213387, 25.802469>,  <38.340977, 39.650284, 25.433189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774925, 39.213387, 25.802469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788544, 39.553928, 26.011862>,  <38.796715, 39.758255, 26.137497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788544, 39.553928, 26.011862>,  <38.774925, 39.213387, 25.802469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788544, 39.553928, 26.011862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030360, -0.522660, 0.852000,
		0.998959, -0.044898, 0.008054,
		0.034044, 0.851358, 0.523479,
		38.798756, 39.809338, 26.168905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444187, 38.803226, 26.035616>,  <38.774925, 39.213387, 25.802469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444187, 38.803226, 26.035616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.624008, 38.451950, 25.970274>,  <39.731899, 38.241184, 25.931068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.624008, 38.451950, 25.970274>,  <39.444187, 38.803226, 26.035616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624008, 38.451950, 25.970274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554063, 0.417591, -0.720161,
		0.700654, 0.233241, 0.674301,
		0.449553, -0.878189, -0.163356,
		39.758873, 38.188492, 25.921267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150066, 38.986000, 25.837492>,  <39.444187, 38.803226, 26.035616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150066, 38.986000, 25.837492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.106888, 38.614704, 25.695099>,  <40.080982, 38.391926, 25.609663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.106888, 38.614704, 25.695099>,  <40.150066, 38.986000, 25.837492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106888, 38.614704, 25.695099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444989, 0.275091, -0.852238,
		0.889007, -0.250404, 0.383360,
		-0.107945, -0.928236, -0.355985,
		40.074505, 38.336235, 25.588303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822449, 38.804092, 25.476841>,  <40.150066, 38.986000, 25.837492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822449, 38.804092, 25.476841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.554356, 38.543781, 25.334135>,  <40.393501, 38.387596, 25.248512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.554356, 38.543781, 25.334135>,  <40.822449, 38.804092, 25.476841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554356, 38.543781, 25.334135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431992, 0.048791, -0.900557,
		0.603468, -0.757700, 0.248429,
		-0.670231, -0.650776, -0.356764,
		40.353287, 38.348549, 25.227106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208912, 38.328079, 25.145231>,  <40.822449, 38.804092, 25.476841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208912, 38.328079, 25.145231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842522, 38.314880, 24.985281>,  <40.622688, 38.306961, 24.889311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842522, 38.314880, 24.985281>,  <41.208912, 38.328079, 25.145231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842522, 38.314880, 24.985281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393538, 0.120408, -0.911389,
		0.078224, -0.992176, -0.097304,
		-0.915974, -0.033000, -0.399877,
		40.567730, 38.304981, 24.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410469, 38.047783, 24.518328>,  <41.208912, 38.328079, 25.145231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410469, 38.047783, 24.518328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038799, 38.183804, 24.460371>,  <40.815796, 38.265415, 24.425596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038799, 38.183804, 24.460371>,  <41.410469, 38.047783, 24.518328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038799, 38.183804, 24.460371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224662, 0.208272, -0.951919,
		-0.293526, -0.917053, -0.269918,
		-0.929177, 0.340054, -0.144893,
		40.760048, 38.285820, 24.416903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112736, 37.582180, 23.963087>,  <41.410469, 38.047783, 24.518328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112736, 37.582180, 23.963087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.908981, 37.926266, 23.972466>,  <40.786728, 38.132717, 23.978092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.908981, 37.926266, 23.972466>,  <41.112736, 37.582180, 23.963087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908981, 37.926266, 23.972466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226378, 0.160238, -0.960769,
		-0.830228, -0.484094, -0.276358,
		-0.509386, 0.860219, 0.023446,
		40.756165, 38.184330, 23.979500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884388, 37.572460, 23.350780>,  <41.112736, 37.582180, 23.963087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884388, 37.572460, 23.350780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842339, 37.954334, 23.462149>,  <40.817108, 38.183460, 23.528969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842339, 37.954334, 23.462149>,  <40.884388, 37.572460, 23.350780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842339, 37.954334, 23.462149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097725, 0.288534, -0.952469,
		-0.989646, -0.072916, -0.123628,
		-0.105121, 0.954689, 0.278421,
		40.810802, 38.240742, 23.545675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441330, 37.819256, 22.865253>,  <40.884388, 37.572460, 23.350780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441330, 37.819256, 22.865253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.656719, 38.112915, 23.030703>,  <40.785954, 38.289108, 23.129972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.656719, 38.112915, 23.030703>,  <40.441330, 37.819256, 22.865253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656719, 38.112915, 23.030703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180266, 0.379135, -0.907613,
		-0.823138, 0.563283, 0.071810,
		0.538469, 0.734145, 0.413621,
		40.818260, 38.333160, 23.154789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256348, 38.327461, 22.446999>,  <40.441330, 37.819256, 22.865253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256348, 38.327461, 22.446999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600494, 38.443420, 22.614681>,  <40.806980, 38.512997, 22.715290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600494, 38.443420, 22.614681>,  <40.256348, 38.327461, 22.446999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600494, 38.443420, 22.614681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297783, 0.381595, -0.875049,
		-0.413641, 0.877693, 0.241985,
		0.860364, 0.289897, 0.419205,
		40.858604, 38.530388, 22.740442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.635029, 34.054337, 37.519062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975208, 34.192970, 37.677357>,  <37.179317, 34.276150, 37.772335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975208, 34.192970, 37.677357>,  <36.635029, 34.054337, 37.519062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975208, 34.192970, 37.677357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345706, 0.198802, -0.917041,
		-0.396506, 0.916710, 0.049256,
		0.850453, 0.346584, 0.395738,
		37.230343, 34.296944, 37.796078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699013, 34.657337, 37.198120>,  <36.635029, 34.054337, 37.519062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699013, 34.657337, 37.198120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051395, 34.527294, 37.335651>,  <37.262825, 34.449268, 37.418171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051395, 34.527294, 37.335651>,  <36.699013, 34.657337, 37.198120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051395, 34.527294, 37.335651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417936, 0.193826, -0.887559,
		0.221910, 0.925600, 0.306627,
		0.880957, -0.325109, 0.343830,
		37.315681, 34.429760, 37.438801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223598, 35.171829, 36.973618>,  <36.699013, 34.657337, 37.198120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223598, 35.171829, 36.973618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433975, 34.837906, 37.038712>,  <37.560200, 34.637554, 37.077770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433975, 34.837906, 37.038712>,  <37.223598, 35.171829, 36.973618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433975, 34.837906, 37.038712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405222, 0.077724, -0.910908,
		0.747782, 0.545031, 0.379160,
		0.525943, -0.834805, 0.162738,
		37.591759, 34.587463, 37.087532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851185, 35.324261, 36.615597>,  <37.223598, 35.171829, 36.973618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851185, 35.324261, 36.615597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819942, 34.929932, 36.674999>,  <37.801197, 34.693333, 36.710640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819942, 34.929932, 36.674999>,  <37.851185, 35.324261, 36.615597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819942, 34.929932, 36.674999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203856, -0.161602, -0.965571,
		0.975881, -0.045142, 0.213587,
		-0.078104, -0.985823, 0.148502,
		37.796513, 34.634186, 36.719551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368118, 35.091175, 36.269436>,  <37.851185, 35.324261, 36.615597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368118, 35.091175, 36.269436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.120064, 34.779621, 36.306896>,  <37.971233, 34.592690, 36.329372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.120064, 34.779621, 36.306896>,  <38.368118, 35.091175, 36.269436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120064, 34.779621, 36.306896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093962, -0.192262, -0.976835,
		0.778850, -0.596966, 0.192414,
		-0.620131, -0.778888, 0.093651,
		37.934025, 34.545956, 36.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681641, 34.523270, 35.731915>,  <38.368118, 35.091175, 36.269436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681641, 34.523270, 35.731915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.304386, 34.424557, 35.820995>,  <38.078033, 34.365330, 35.874443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.304386, 34.424557, 35.820995>,  <38.681641, 34.523270, 35.731915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304386, 34.424557, 35.820995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169938, -0.217835, -0.961077,
		0.285686, -0.944271, 0.163511,
		-0.943135, -0.246780, 0.222700,
		38.021446, 34.350521, 35.887806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551086, 33.884346, 35.383022>,  <38.681641, 34.523270, 35.731915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551086, 33.884346, 35.383022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190323, 34.046753, 35.441952>,  <37.973866, 34.144196, 35.477310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190323, 34.046753, 35.441952>,  <38.551086, 33.884346, 35.383022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190323, 34.046753, 35.441952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191359, -0.069838, -0.979032,
		-0.387216, -0.911193, 0.140683,
		-0.901912, 0.406018, 0.147323,
		37.919750, 34.168560, 35.486149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051891, 33.425690, 35.038570>,  <38.551086, 33.884346, 35.383022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051891, 33.425690, 35.038570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882385, 33.786644, 35.069851>,  <37.780682, 34.003216, 35.088619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882385, 33.786644, 35.069851>,  <38.051891, 33.425690, 35.038570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882385, 33.786644, 35.069851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095862, 0.041171, -0.994543,
		-0.900684, -0.428951, 0.069058,
		-0.423767, 0.902389, 0.078202,
		37.755257, 34.057362, 35.093311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489815, 33.471127, 34.576443>,  <38.051891, 33.425690, 35.038570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489815, 33.471127, 34.576443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510555, 33.864723, 34.644650>,  <37.522999, 34.100880, 34.685574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510555, 33.864723, 34.644650>,  <37.489815, 33.471127, 34.576443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510555, 33.864723, 34.644650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142946, 0.176297, -0.973902,
		-0.988371, 0.026123, 0.149798,
		0.051850, 0.983990, 0.170513,
		37.526112, 34.159920, 34.695805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955059, 33.787796, 34.257339>,  <37.489815, 33.471127, 34.576443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955059, 33.787796, 34.257339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212795, 34.089165, 34.309776>,  <37.367435, 34.269985, 34.341236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212795, 34.089165, 34.309776>,  <36.955059, 33.787796, 34.257339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212795, 34.089165, 34.309776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057410, 0.218587, -0.974127,
		-0.762581, 0.620143, 0.184099,
		0.644340, 0.753420, 0.131088,
		37.406097, 34.315189, 34.349102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671978, 34.312805, 33.921883>,  <36.955059, 33.787796, 34.257339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671978, 34.312805, 33.921883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059486, 34.408039, 33.949596>,  <37.291992, 34.465179, 33.966225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059486, 34.408039, 33.949596>,  <36.671978, 34.312805, 33.921883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059486, 34.408039, 33.949596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020704, 0.200778, -0.979418,
		-0.247099, 0.950264, 0.189578,
		0.968769, 0.238088, 0.069286,
		37.350117, 34.479465, 33.970383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594776, 35.032940, 33.711796>,  <36.671978, 34.312805, 33.921883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594776, 35.032940, 33.711796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963448, 34.883026, 33.671688>,  <37.184650, 34.793079, 33.647625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963448, 34.883026, 33.671688>,  <36.594776, 35.032940, 33.711796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963448, 34.883026, 33.671688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078846, 0.072098, -0.994276,
		0.379868, 0.924305, 0.036901,
		0.921674, -0.374784, -0.100266,
		37.239948, 34.770592, 33.641609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608913, 35.817158, 33.883255>,  <36.594776, 35.032940, 33.711796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608913, 35.817158, 33.883255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406841, 36.157986, 33.828445>,  <36.285599, 36.362484, 33.795559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406841, 36.157986, 33.828445>,  <36.608913, 35.817158, 33.883255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406841, 36.157986, 33.828445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206237, 0.034981, 0.977877,
		0.838011, 0.522260, 0.158057,
		-0.505177, 0.852069, -0.137024,
		36.255287, 36.413605, 33.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908955, 36.438847, 34.381783>,  <36.608913, 35.817158, 33.883255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908955, 36.438847, 34.381783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526348, 36.493210, 34.278549>,  <36.296783, 36.525829, 34.216610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526348, 36.493210, 34.278549>,  <36.908955, 36.438847, 34.381783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526348, 36.493210, 34.278549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244092, 0.111433, 0.963328,
		0.159687, 0.984434, -0.073413,
		-0.956514, 0.135911, -0.258087,
		36.239395, 36.533981, 34.201122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732365, 37.058159, 34.774403>,  <36.908955, 36.438847, 34.381783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732365, 37.058159, 34.774403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393986, 36.870739, 34.672546>,  <36.190960, 36.758289, 34.611431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393986, 36.870739, 34.672546>,  <36.732365, 37.058159, 34.774403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393986, 36.870739, 34.672546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391915, 0.222424, 0.892709,
		-0.361638, 0.854980, -0.371789,
		-0.845943, -0.468548, -0.254643,
		36.140202, 36.730175, 34.596153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146706, 37.341820, 35.122227>,  <36.732365, 37.058159, 34.774403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146706, 37.341820, 35.122227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938835, 37.010933, 35.036762>,  <35.814114, 36.812401, 34.985485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938835, 37.010933, 35.036762>,  <36.146706, 37.341820, 35.122227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938835, 37.010933, 35.036762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718064, 0.287382, 0.633874,
		-0.462950, 0.482828, -0.743340,
		-0.519674, -0.827217, -0.213658,
		35.782932, 36.762768, 34.972664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447857, 37.659035, 35.041401>,  <36.146706, 37.341820, 35.122227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447857, 37.659035, 35.041401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400070, 37.270084, 35.121620>,  <35.371399, 37.036716, 35.169750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400070, 37.270084, 35.121620>,  <35.447857, 37.659035, 35.041401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400070, 37.270084, 35.121620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747332, 0.221052, 0.626603,
		-0.653623, -0.075017, -0.753093,
		-0.119466, -0.972373, 0.200547,
		35.364231, 36.978374, 35.181786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707245, 37.472782, 34.890720>,  <35.447857, 37.659035, 35.041401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707245, 37.472782, 34.890720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890347, 37.227947, 35.148655>,  <35.000206, 37.081047, 35.303417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890347, 37.227947, 35.148655>,  <34.707245, 37.472782, 34.890720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890347, 37.227947, 35.148655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625704, 0.293487, 0.722745,
		-0.631632, -0.734316, -0.248639,
		0.457751, -0.612083, 0.644840,
		35.027672, 37.044323, 35.342106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109837, 37.282303, 35.370926>,  <34.707245, 37.472782, 34.890720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109837, 37.282303, 35.370926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432617, 37.146099, 35.563957>,  <34.626286, 37.064377, 35.679775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432617, 37.146099, 35.563957>,  <34.109837, 37.282303, 35.370926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432617, 37.146099, 35.563957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416960, 0.250244, 0.873798,
		-0.418300, -0.906328, 0.059955,
		0.806951, -0.340511, 0.482579,
		34.674702, 37.043945, 35.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855755, 36.836624, 35.905663>,  <34.109837, 37.282303, 35.370926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855755, 36.836624, 35.905663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217697, 36.946377, 36.035870>,  <34.434860, 37.012230, 36.113995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217697, 36.946377, 36.035870>,  <33.855755, 36.836624, 35.905663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217697, 36.946377, 36.035870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375103, 0.152204, 0.914402,
		0.201357, -0.949497, 0.240646,
		0.904850, 0.274389, 0.325512,
		34.489151, 37.028690, 36.133522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953598, 36.456512, 36.508560>,  <33.855755, 36.836624, 35.905663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953598, 36.456512, 36.508560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209686, 36.761154, 36.548721>,  <34.363338, 36.943939, 36.572819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209686, 36.761154, 36.548721>,  <33.953598, 36.456512, 36.508560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209686, 36.761154, 36.548721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168800, 0.011970, 0.985578,
		0.749415, -0.647935, 0.136222,
		0.640221, 0.761601, 0.100401,
		34.401752, 36.989635, 36.578842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313236, 36.363457, 37.162403>,  <33.953598, 36.456512, 36.508560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313236, 36.363457, 37.162403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357368, 36.747845, 37.060917>,  <34.383846, 36.978477, 37.000027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357368, 36.747845, 37.060917>,  <34.313236, 36.363457, 37.162403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357368, 36.747845, 37.060917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113467, 0.265784, 0.957332,
		0.987397, -0.076832, 0.138362,
		0.110328, 0.960966, -0.253717,
		34.390469, 37.036133, 36.984802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636963, 36.671696, 37.736374>,  <34.313236, 36.363457, 37.162403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636963, 36.671696, 37.736374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499409, 36.997589, 37.549633>,  <34.416874, 37.193127, 37.437588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499409, 36.997589, 37.549633>,  <34.636963, 36.671696, 37.736374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499409, 36.997589, 37.549633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141764, 0.446427, 0.883519,
		0.928248, 0.370014, -0.038021,
		-0.343888, 0.814734, -0.466850,
		34.396244, 37.242008, 37.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896496, 37.237400, 38.151676>,  <34.636963, 36.671696, 37.736374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896496, 37.237400, 38.151676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577534, 37.371811, 37.951183>,  <34.386158, 37.452457, 37.830887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577534, 37.371811, 37.951183>,  <34.896496, 37.237400, 38.151676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577534, 37.371811, 37.951183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185087, 0.654386, 0.733158,
		0.574361, 0.677394, -0.459615,
		-0.797403, 0.336029, -0.501231,
		34.338314, 37.472618, 37.800816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880508, 38.020931, 38.386021>,  <34.896496, 37.237400, 38.151676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880508, 38.020931, 38.386021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510975, 37.930031, 38.262806>,  <34.289253, 37.875488, 38.188877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510975, 37.930031, 38.262806>,  <34.880508, 38.020931, 38.386021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510975, 37.930031, 38.262806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381079, 0.622063, 0.683971,
		0.036183, 0.749262, -0.661285,
		-0.923834, -0.227254, -0.308037,
		34.233826, 37.861855, 38.170395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578415, 38.658775, 38.291172>,  <34.880508, 38.020931, 38.386021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578415, 38.658775, 38.291172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293354, 38.384407, 38.350006>,  <34.122318, 38.219784, 38.385307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293354, 38.384407, 38.350006>,  <34.578415, 38.658775, 38.291172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293354, 38.384407, 38.350006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387803, 0.559918, 0.732189,
		-0.584578, 0.464760, -0.665031,
		-0.712655, -0.685923, 0.147081,
		34.079559, 38.178631, 38.394131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896717, 38.947720, 38.227417>,  <34.578415, 38.658775, 38.291172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896717, 38.947720, 38.227417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894493, 38.649311, 38.493774>,  <33.893158, 38.470264, 38.653587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894493, 38.649311, 38.493774>,  <33.896717, 38.947720, 38.227417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894493, 38.649311, 38.493774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476512, 0.587417, 0.654123,
		-0.879150, -0.313669, -0.358757,
		-0.005562, -0.746025, 0.665895,
		33.892826, 38.425503, 38.693542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454266, 39.352703, 38.306686>,  <33.896717, 38.947720, 38.227417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454266, 39.352703, 38.306686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813744, 39.243771, 38.444199>,  <35.029430, 39.178410, 38.526707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813744, 39.243771, 38.444199>,  <34.454266, 39.352703, 38.306686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813744, 39.243771, 38.444199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438520, 0.545648, -0.714121,
		0.006898, 0.792529, 0.609795,
		0.898695, -0.272333, 0.343777,
		35.083351, 39.162071, 38.547333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813938, 39.963375, 38.251347>,  <34.454266, 39.352703, 38.306686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813938, 39.963375, 38.251347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093620, 39.678524, 38.226097>,  <35.261429, 39.507614, 38.210945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093620, 39.678524, 38.226097>,  <34.813938, 39.963375, 38.251347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093620, 39.678524, 38.226097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420431, 0.480996, -0.769338,
		0.578231, 0.511384, 0.635716,
		0.699204, -0.712130, -0.063126,
		35.303383, 39.464886, 38.207161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487682, 40.347565, 38.097832>,  <34.813938, 39.963375, 38.251347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487682, 40.347565, 38.097832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582863, 39.968323, 38.013477>,  <35.639973, 39.740776, 37.962864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582863, 39.968323, 38.013477>,  <35.487682, 40.347565, 38.097832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582863, 39.968323, 38.013477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547628, 0.310284, -0.777063,
		0.802174, 0.069415, 0.593042,
		0.237952, -0.948106, -0.210888,
		35.654247, 39.683891, 37.950211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219757, 40.281887, 38.030487>,  <35.487682, 40.347565, 38.097832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219757, 40.281887, 38.030487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067352, 39.979683, 37.817310>,  <35.975910, 39.798359, 37.689404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067352, 39.979683, 37.817310>,  <36.219757, 40.281887, 38.030487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067352, 39.979683, 37.817310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535032, 0.289938, -0.793521,
		0.754038, -0.587482, 0.293756,
		-0.381008, -0.755514, -0.532946,
		35.953049, 39.753029, 37.657425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783901, 40.018585, 37.660931>,  <36.219757, 40.281887, 38.030487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783901, 40.018585, 37.660931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485733, 39.841728, 37.461388>,  <36.306831, 39.735615, 37.341663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485733, 39.841728, 37.461388>,  <36.783901, 40.018585, 37.660931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485733, 39.841728, 37.461388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514380, 0.094470, -0.852343,
		0.423987, -0.891954, 0.157012,
		-0.745418, -0.442146, -0.498858,
		36.262108, 39.709084, 37.311729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140480, 39.593468, 37.065506>,  <36.783901, 40.018585, 37.660931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140480, 39.593468, 37.065506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760269, 39.661816, 36.961739>,  <36.532143, 39.702824, 36.899479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760269, 39.661816, 36.961739>,  <37.140480, 39.593468, 37.065506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760269, 39.661816, 36.961739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279424, 0.105488, -0.954356,
		-0.135702, -0.979631, -0.148013,
		-0.950530, 0.170866, -0.259418,
		36.475109, 39.713074, 36.883915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987156, 39.141628, 36.577755>,  <37.140480, 39.593468, 37.065506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987156, 39.141628, 36.577755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738262, 39.453552, 36.550285>,  <36.588924, 39.640709, 36.533802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738262, 39.453552, 36.550285>,  <36.987156, 39.141628, 36.577755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738262, 39.453552, 36.550285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126885, 0.013899, -0.991820,
		-0.772480, -0.625858, -0.107595,
		-0.622234, 0.779813, -0.068675,
		36.551594, 39.687496, 36.529682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835670, 39.085400, 35.999542>,  <36.987156, 39.141628, 36.577755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835670, 39.085400, 35.999542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693779, 39.451839, 36.074299>,  <36.608643, 39.671703, 36.119152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693779, 39.451839, 36.074299>,  <36.835670, 39.085400, 35.999542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693779, 39.451839, 36.074299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187375, 0.265492, -0.945730,
		-0.916002, -0.300457, -0.265831,
		-0.354727, 0.916100, 0.186893,
		36.587360, 39.726669, 36.130367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410114, 39.164726, 35.505535>,  <36.835670, 39.085400, 35.999542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410114, 39.164726, 35.505535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481918, 39.538109, 35.629749>,  <36.525002, 39.762138, 35.704277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481918, 39.538109, 35.629749>,  <36.410114, 39.164726, 35.505535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481918, 39.538109, 35.629749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011671, 0.317658, -0.948133,
		-0.983688, 0.166571, 0.067916,
		0.179506, 0.933460, 0.310532,
		36.535770, 39.818146, 35.722908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815212, 39.636467, 35.211105>,  <36.410114, 39.164726, 35.505535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815212, 39.636467, 35.211105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139496, 39.849648, 35.308025>,  <36.334068, 39.977558, 35.366177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139496, 39.849648, 35.308025>,  <35.815212, 39.636467, 35.211105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139496, 39.849648, 35.308025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057771, 0.339019, -0.939004,
		-0.582589, 0.775259, 0.244057,
		0.810711, 0.532954, 0.242296,
		36.382710, 40.009533, 35.380714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672092, 40.346916, 35.017029>,  <35.815212, 39.636467, 35.211105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672092, 40.346916, 35.017029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067715, 40.288403, 35.009304>,  <36.305088, 40.253296, 35.004669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067715, 40.288403, 35.009304>,  <35.672092, 40.346916, 35.017029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067715, 40.288403, 35.009304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052716, 0.472551, -0.879725,
		0.137812, 0.869078, 0.475090,
		0.989055, -0.146282, -0.019308,
		36.364429, 40.244518, 35.003513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863796, 40.805458, 34.549263>,  <35.672092, 40.346916, 35.017029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863796, 40.805458, 34.549263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234772, 40.667213, 34.606400>,  <36.457359, 40.584267, 34.640682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234772, 40.667213, 34.606400>,  <35.863796, 40.805458, 34.549263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234772, 40.667213, 34.606400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288918, 0.419661, -0.860471,
		0.237442, 0.839308, 0.489064,
		0.927442, -0.345611, 0.142846,
		36.513004, 40.563530, 34.649254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342037, 41.388191, 34.486225>,  <35.863796, 40.805458, 34.549263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342037, 41.388191, 34.486225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545315, 41.053921, 34.402901>,  <36.667282, 40.853359, 34.352905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545315, 41.053921, 34.402901>,  <36.342037, 41.388191, 34.486225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545315, 41.053921, 34.402901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333312, 0.413860, -0.847126,
		0.794133, 0.361068, 0.488860,
		0.508189, -0.835673, -0.208311,
		36.697773, 40.803219, 34.340408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032066, 41.655357, 34.365063>,  <36.342037, 41.388191, 34.486225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032066, 41.655357, 34.365063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989521, 41.297970, 34.190521>,  <36.963993, 41.083538, 34.085796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989521, 41.297970, 34.190521>,  <37.032066, 41.655357, 34.365063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989521, 41.297970, 34.190521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570810, 0.304462, -0.762547,
		0.814163, -0.330186, 0.477614,
		-0.106367, -0.893465, -0.436356,
		36.957611, 41.029930, 34.059616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677898, 41.382568, 34.222496>,  <37.032066, 41.655357, 34.365063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677898, 41.382568, 34.222496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445858, 41.159149, 33.985348>,  <37.306633, 41.025097, 33.843060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445858, 41.159149, 33.985348>,  <37.677898, 41.382568, 34.222496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445858, 41.159149, 33.985348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547455, 0.271598, -0.791535,
		0.603138, -0.783743, 0.148228,
		-0.580102, -0.558553, -0.592875,
		37.271828, 40.991585, 33.807484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169289, 41.185429, 33.730358>,  <37.677898, 41.382568, 34.222496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169289, 41.185429, 33.730358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816036, 41.093983, 33.566502>,  <37.604084, 41.039116, 33.468185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816036, 41.093983, 33.566502>,  <38.169289, 41.185429, 33.730358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816036, 41.093983, 33.566502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333949, 0.306912, -0.891226,
		0.329478, -0.923871, -0.194696,
		-0.883132, -0.228621, -0.409646,
		37.551098, 41.025398, 33.443607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308186, 40.601757, 33.265781>,  <38.169289, 41.185429, 33.730358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308186, 40.601757, 33.265781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964386, 40.772552, 33.153393>,  <37.758106, 40.875031, 33.085960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964386, 40.772552, 33.153393>,  <38.308186, 40.601757, 33.265781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964386, 40.772552, 33.153393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383594, 0.175530, -0.906667,
		-0.337818, -0.887057, -0.314658,
		-0.859497, 0.426989, -0.280972,
		37.706535, 40.900650, 33.069099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274567, 40.287880, 32.575661>,  <38.308186, 40.601757, 33.265781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274567, 40.287880, 32.575661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020718, 40.597008, 32.575642>,  <37.868408, 40.782486, 32.575630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020718, 40.597008, 32.575642>,  <38.274567, 40.287880, 32.575661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020718, 40.597008, 32.575642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137328, 0.112714, -0.984092,
		-0.760520, -0.624537, -0.177661,
		-0.634626, 0.772819, -0.000045,
		37.830330, 40.828854, 32.575626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750187, 40.211597, 31.979040>,  <38.274567, 40.287880, 32.575661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750187, 40.211597, 31.979040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.792973, 40.602913, 32.050041>,  <37.818642, 40.837704, 32.092640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.792973, 40.602913, 32.050041>,  <37.750187, 40.211597, 31.979040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792973, 40.602913, 32.050041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113441, 0.165352, -0.979689,
		-0.987770, 0.124926, -0.093291,
		0.106962, 0.978290, 0.177501,
		37.825062, 40.896400, 32.103291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336010, 40.604660, 31.495516>,  <37.750187, 40.211597, 31.979040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336010, 40.604660, 31.495516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623623, 40.861187, 31.602629>,  <37.796192, 41.015102, 31.666897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623623, 40.861187, 31.602629>,  <37.336010, 40.604660, 31.495516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623623, 40.861187, 31.602629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186413, 0.193216, -0.963285,
		-0.669507, 0.742553, 0.019380,
		0.719034, 0.641313, 0.267782,
		37.839333, 41.053581, 31.682962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309013, 41.008823, 30.909901>,  <37.336010, 40.604660, 31.495516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309013, 41.008823, 30.909901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.652870, 41.092957, 31.096134>,  <37.859184, 41.143436, 31.207874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.652870, 41.092957, 31.096134>,  <37.309013, 41.008823, 30.909901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652870, 41.092957, 31.096134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420809, 0.225261, -0.878736,
		-0.289705, 0.951324, 0.105135,
		0.859646, 0.210333, 0.465585,
		37.910763, 41.156055, 31.235809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521931, 41.756870, 30.798450>,  <37.309013, 41.008823, 30.909901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521931, 41.756870, 30.798450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.865547, 41.570843, 30.884012>,  <38.071716, 41.459225, 30.935349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.865547, 41.570843, 30.884012>,  <37.521931, 41.756870, 30.798450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865547, 41.570843, 30.884012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345742, 0.218972, -0.912422,
		0.377503, 0.857764, 0.348901,
		0.859042, -0.465072, 0.213903,
		38.123260, 41.431320, 30.948183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023144, 42.134182, 30.387728>,  <37.521931, 41.756870, 30.798450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023144, 42.134182, 30.387728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249779, 41.827717, 30.509031>,  <38.385761, 41.643837, 30.581814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249779, 41.827717, 30.509031>,  <38.023144, 42.134182, 30.387728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249779, 41.827717, 30.509031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677477, 0.223645, -0.700719,
		0.469044, 0.602471, 0.645775,
		0.566588, -0.766167, 0.303261,
		38.419754, 41.597866, 30.600010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754242, 42.346649, 30.540747>,  <38.023144, 42.134182, 30.387728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754242, 42.346649, 30.540747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798706, 41.950645, 30.506041>,  <38.825386, 41.713043, 30.485218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798706, 41.950645, 30.506041>,  <38.754242, 42.346649, 30.540747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798706, 41.950645, 30.506041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630496, 0.137738, -0.763873,
		0.768192, 0.030207, 0.639507,
		0.111159, -0.990008, -0.086763,
		38.832054, 41.653645, 30.480011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513874, 42.210678, 30.522150>,  <38.754242, 42.346649, 30.540747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513874, 42.210678, 30.522150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.278442, 41.942009, 30.342182>,  <39.137184, 41.780807, 30.234201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.278442, 41.942009, 30.342182>,  <39.513874, 42.210678, 30.522150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278442, 41.942009, 30.342182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511347, 0.121758, -0.850705,
		0.626178, -0.730772, 0.271795,
		-0.588579, -0.671675, -0.449921,
		39.101868, 41.740505, 30.207207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979198, 41.836193, 30.104347>,  <39.513874, 42.210678, 30.522150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979198, 41.836193, 30.104347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.643936, 41.699314, 29.934458>,  <39.442780, 41.617188, 29.832523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.643936, 41.699314, 29.934458>,  <39.979198, 41.836193, 30.104347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643936, 41.699314, 29.934458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443143, 0.026740, -0.896052,
		0.317983, -0.939248, 0.129230,
		-0.838159, -0.342197, -0.424725,
		39.392487, 41.596657, 29.807041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086140, 41.158264, 29.649162>,  <39.979198, 41.836193, 30.104347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086140, 41.158264, 29.649162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.763245, 41.357601, 29.522663>,  <39.569508, 41.477203, 29.446764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.763245, 41.357601, 29.522663>,  <40.086140, 41.158264, 29.649162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763245, 41.357601, 29.522663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348219, -0.030506, -0.936917,
		-0.476554, -0.866443, -0.148907,
		-0.807242, 0.498344, -0.316249,
		39.521072, 41.507103, 29.427788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401257, 40.486134, 29.428869>,  <40.086140, 41.158264, 29.649162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401257, 40.486134, 29.428869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.794636, 40.459805, 29.496397>,  <41.030663, 40.444008, 29.536913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.794636, 40.459805, 29.496397>,  <40.401257, 40.486134, 29.428869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794636, 40.459805, 29.496397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181152, -0.336909, 0.923946,
		-0.003938, -0.939234, -0.343256,
		0.983447, -0.065820, 0.168817,
		41.089668, 40.440060, 29.547043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652138, 39.793625, 29.651321>,  <40.401257, 40.486134, 29.428869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652138, 39.793625, 29.651321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903614, 40.070438, 29.793213>,  <41.054501, 40.236526, 29.878347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903614, 40.070438, 29.793213>,  <40.652138, 39.793625, 29.651321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903614, 40.070438, 29.793213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186420, -0.308736, 0.932700,
		0.754981, -0.652509, -0.065090,
		0.628691, 0.692036, 0.354730,
		41.092220, 40.278049, 29.899632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007381, 39.391487, 30.071465>,  <40.652138, 39.793625, 29.651321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007381, 39.391487, 30.071465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057659, 39.768452, 30.195442>,  <41.087826, 39.994629, 30.269829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057659, 39.768452, 30.195442>,  <41.007381, 39.391487, 30.071465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057659, 39.768452, 30.195442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345671, -0.251241, 0.904096,
		0.929900, -0.220775, 0.294186,
		0.125690, 0.942410, 0.309944,
		41.095367, 40.051174, 30.288425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292469, 39.313778, 30.691120>,  <41.007381, 39.391487, 30.071465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292469, 39.313778, 30.691120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.174786, 39.695541, 30.711279>,  <41.104176, 39.924599, 30.723375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.174786, 39.695541, 30.711279>,  <41.292469, 39.313778, 30.691120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174786, 39.695541, 30.711279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169234, -0.103924, 0.980082,
		0.940638, 0.279823, 0.192094,
		-0.294212, 0.954411, 0.050399,
		41.086521, 39.981865, 30.726398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634251, 39.544807, 31.324848>,  <41.292469, 39.313778, 30.691120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634251, 39.544807, 31.324848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.320282, 39.779041, 31.243862>,  <41.131901, 39.919582, 31.195271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.320282, 39.779041, 31.243862>,  <41.634251, 39.544807, 31.324848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320282, 39.779041, 31.243862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338648, -0.131809, 0.931635,
		0.518865, 0.799822, 0.301767,
		-0.784918, 0.585586, -0.202467,
		41.084808, 39.954716, 31.183123>
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
