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
	<24.156105, 34.780861, 35.216312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255888, 35.158798, 35.301208>,  <24.315758, 35.385559, 35.352146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255888, 35.158798, 35.301208>,  <24.156105, 34.780861, 35.216312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255888, 35.158798, 35.301208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577662, 0.030714, -0.815698,
		-0.777225, 0.326083, -0.538137,
		0.249456, 0.944842, 0.212237,
		24.330725, 35.442249, 35.364880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172796, 35.145309, 34.526352>,  <24.156105, 34.780861, 35.216312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172796, 35.145309, 34.526352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431631, 35.285000, 34.797443>,  <24.586931, 35.368816, 34.960098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431631, 35.285000, 34.797443>,  <24.172796, 35.145309, 34.526352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431631, 35.285000, 34.797443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716513, 0.025238, -0.697117,
		-0.260558, 0.936698, -0.233895,
		0.647085, 0.349228, 0.677732,
		24.625757, 35.389767, 35.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359318, 35.875633, 34.337173>,  <24.172796, 35.145309, 34.526352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359318, 35.875633, 34.337173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663071, 35.719864, 34.545666>,  <24.845324, 35.626400, 34.670761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663071, 35.719864, 34.545666>,  <24.359318, 35.875633, 34.337173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663071, 35.719864, 34.545666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595806, 0.094301, -0.797573,
		0.261443, 0.916218, 0.303633,
		0.759383, -0.389426, 0.521234,
		24.890886, 35.603035, 34.702034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952475, 36.204735, 34.050892>,  <24.359318, 35.875633, 34.337173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952475, 36.204735, 34.050892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126780, 35.909756, 34.257305>,  <25.231361, 35.732769, 34.381153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126780, 35.909756, 34.257305>,  <24.952475, 36.204735, 34.050892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126780, 35.909756, 34.257305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631716, -0.157805, -0.758968,
		0.641129, 0.656713, 0.397091,
		0.435761, -0.737445, 0.516030,
		25.257507, 35.688522, 34.412113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655195, 36.352024, 34.009289>,  <24.952475, 36.204735, 34.050892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655195, 36.352024, 34.009289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637846, 35.968513, 34.121624>,  <25.627436, 35.738407, 34.189026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637846, 35.968513, 34.121624>,  <25.655195, 36.352024, 34.009289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637846, 35.968513, 34.121624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761559, -0.213673, -0.611859,
		0.646642, 0.187337, 0.739431,
		-0.043372, -0.958775, 0.280838,
		25.624834, 35.680882, 34.205875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300364, 36.137024, 34.345257>,  <25.655195, 36.352024, 34.009289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300364, 36.137024, 34.345257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108368, 35.860916, 34.128689>,  <25.993170, 35.695251, 33.998749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108368, 35.860916, 34.128689>,  <26.300364, 36.137024, 34.345257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108368, 35.860916, 34.128689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787502, -0.067067, -0.612652,
		0.386586, -0.720434, 0.575783,
		-0.479991, -0.690273, -0.541416,
		25.964371, 35.653835, 33.966263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814772, 35.623455, 34.225460>,  <26.300364, 36.137024, 34.345257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814772, 35.623455, 34.225460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533009, 35.536839, 33.955078>,  <26.363951, 35.484867, 33.792847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533009, 35.536839, 33.955078>,  <26.814772, 35.623455, 34.225460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533009, 35.536839, 33.955078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689665, 0.016403, -0.723943,
		0.167855, -0.976135, 0.137790,
		-0.704406, -0.216546, -0.675959,
		26.321688, 35.471874, 33.752289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977987, 34.989964, 33.933678>,  <26.814772, 35.623455, 34.225460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977987, 34.989964, 33.933678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818628, 35.223347, 33.650593>,  <26.723013, 35.363377, 33.480743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818628, 35.223347, 33.650593>,  <26.977987, 34.989964, 33.933678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818628, 35.223347, 33.650593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692147, -0.315049, -0.649367,
		-0.601842, -0.748546, -0.278324,
		-0.398395, 0.583458, -0.707713,
		26.699110, 35.398384, 33.438278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857721, 34.508778, 33.301392>,  <26.977987, 34.989964, 33.933678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857721, 34.508778, 33.301392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900034, 34.886971, 33.178181>,  <26.925421, 35.113884, 33.104256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900034, 34.886971, 33.178181>,  <26.857721, 34.508778, 33.301392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900034, 34.886971, 33.178181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738749, -0.282071, -0.612116,
		-0.665628, -0.162802, -0.728310,
		0.105781, 0.945480, -0.308024,
		26.931768, 35.170616, 33.085773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191669, 34.426273, 32.675045>,  <26.857721, 34.508778, 33.301392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191669, 34.426273, 32.675045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235058, 34.805546, 32.794502>,  <27.261091, 35.033108, 32.866177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235058, 34.805546, 32.794502>,  <27.191669, 34.426273, 32.675045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235058, 34.805546, 32.794502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815238, 0.087068, -0.572543,
		-0.568876, 0.305572, -0.763548,
		0.108473, 0.948180, 0.298645,
		27.267599, 35.090000, 32.884094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319403, 34.766266, 32.019413>,  <27.191669, 34.426273, 32.675045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319403, 34.766266, 32.019413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477110, 35.000500, 32.302723>,  <27.571733, 35.141041, 32.472710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477110, 35.000500, 32.302723>,  <27.319403, 34.766266, 32.019413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477110, 35.000500, 32.302723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915022, -0.178549, -0.361739,
		-0.085367, 0.790705, -0.606216,
		0.394268, 0.585581, 0.708270,
		27.595390, 35.176174, 32.515205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773916, 35.341927, 31.797163>,  <27.319403, 34.766266, 32.019413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773916, 35.341927, 31.797163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891176, 35.221111, 32.160004>,  <27.961533, 35.148624, 32.377708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891176, 35.221111, 32.160004>,  <27.773916, 35.341927, 31.797163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891176, 35.221111, 32.160004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888633, -0.263931, -0.375061,
		0.352695, 0.916032, 0.191028,
		0.293150, -0.302037, 0.907104,
		27.979120, 35.130501, 32.432137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503983, 35.347088, 31.813622>,  <27.773916, 35.341927, 31.797163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503983, 35.347088, 31.813622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367235, 35.106594, 32.102520>,  <28.285187, 34.962296, 32.275860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367235, 35.106594, 32.102520>,  <28.503983, 35.347088, 31.813622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367235, 35.106594, 32.102520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732739, -0.651755, -0.195724,
		0.588405, 0.462307, 0.663364,
		-0.341866, -0.601238, 0.722247,
		28.264675, 34.926224, 32.319195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235006, 35.607712, 31.972002>,  <28.503983, 35.347088, 31.813622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235006, 35.607712, 31.972002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299206, 35.869617, 32.267441>,  <29.337725, 36.026760, 32.444702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299206, 35.869617, 32.267441>,  <29.235006, 35.607712, 31.972002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299206, 35.869617, 32.267441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772937, 0.548747, -0.318505,
		-0.613848, -0.519768, 0.594165,
		0.160497, 0.654766, 0.738595,
		29.347355, 36.066048, 32.489017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692110, 35.621441, 32.569283>,  <29.235006, 35.607712, 31.972002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692110, 35.621441, 32.569283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879448, 35.965218, 32.487289>,  <28.991850, 36.171482, 32.438095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879448, 35.965218, 32.487289>,  <28.692110, 35.621441, 32.569283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879448, 35.965218, 32.487289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838031, 0.358595, -0.411234,
		-0.279926, 0.364379, 0.888183,
		0.468343, 0.859440, -0.204981,
		29.019951, 36.223049, 32.425797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417294, 36.265244, 32.796066>,  <28.692110, 35.621441, 32.569283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417294, 36.265244, 32.796066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639071, 36.314316, 32.466816>,  <28.772137, 36.343758, 32.269264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639071, 36.314316, 32.466816>,  <28.417294, 36.265244, 32.796066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639071, 36.314316, 32.466816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786030, 0.402132, -0.469518,
		0.273406, 0.907325, 0.319390,
		0.554442, 0.122681, -0.823130,
		28.805403, 36.351120, 32.219875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983006, 36.126823, 33.358707>,  <28.417294, 36.265244, 32.796066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983006, 36.126823, 33.358707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851425, 35.854023, 33.097427>,  <27.772478, 35.690342, 32.940659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851425, 35.854023, 33.097427>,  <27.983006, 36.126823, 33.358707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851425, 35.854023, 33.097427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944290, 0.245139, 0.219595,
		0.010361, 0.689046, -0.724643,
		-0.328950, -0.681999, -0.653200,
		27.752741, 35.649422, 32.901466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462437, 36.434666, 32.970768>,  <27.983006, 36.126823, 33.358707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462437, 36.434666, 32.970768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397282, 36.042122, 32.929989>,  <27.358189, 35.806595, 32.905521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397282, 36.042122, 32.929989>,  <27.462437, 36.434666, 32.970768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397282, 36.042122, 32.929989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977280, 0.146276, 0.153384,
		-0.135613, 0.124611, -0.982894,
		-0.162887, -0.981364, -0.101943,
		27.348415, 35.747711, 32.899406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867825, 36.464581, 32.694077>,  <27.462437, 36.434666, 32.970768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867825, 36.464581, 32.694077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898891, 36.084633, 32.815216>,  <26.917532, 35.856663, 32.887897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898891, 36.084633, 32.815216>,  <26.867825, 36.464581, 32.694077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898891, 36.084633, 32.815216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959701, 0.011054, 0.280804,
		-0.270075, -0.312450, -0.910733,
		0.077670, -0.949870, 0.302844,
		26.922192, 35.799671, 32.906071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314342, 36.144516, 32.403656>,  <26.867825, 36.464581, 32.694077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314342, 36.144516, 32.403656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430605, 35.912411, 32.707973>,  <26.500362, 35.773148, 32.890564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430605, 35.912411, 32.707973>,  <26.314342, 36.144516, 32.403656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430605, 35.912411, 32.707973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949047, -0.073643, 0.306409,
		-0.121771, -0.811090, -0.572106,
		0.290657, -0.580267, 0.760795,
		26.517801, 35.738331, 32.936214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700544, 35.977631, 32.816898>,  <26.314342, 36.144516, 32.403656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700544, 35.977631, 32.816898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971853, 35.765656, 33.020512>,  <26.134638, 35.638470, 33.142677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971853, 35.765656, 33.020512>,  <25.700544, 35.977631, 32.816898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971853, 35.765656, 33.020512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680763, -0.192423, 0.706778,
		-0.276603, -0.825914, -0.491280,
		0.678271, -0.529943, 0.509028,
		26.175335, 35.606674, 33.173222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343208, 35.366337, 32.943768>,  <25.700544, 35.977631, 32.816898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343208, 35.366337, 32.943768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651936, 35.401112, 33.195717>,  <25.837172, 35.421978, 33.346886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651936, 35.401112, 33.195717>,  <25.343208, 35.366337, 32.943768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651936, 35.401112, 33.195717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547124, -0.413911, 0.727553,
		0.323963, -0.906157, -0.271898,
		0.771818, 0.086938, 0.629872,
		25.883482, 35.427193, 33.384678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385801, 34.732250, 33.312984>,  <25.343208, 35.366337, 32.943768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385801, 34.732250, 33.312984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546083, 35.034275, 33.520565>,  <25.642252, 35.215492, 33.645115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546083, 35.034275, 33.520565>,  <25.385801, 34.732250, 33.312984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546083, 35.034275, 33.520565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446086, -0.333962, 0.830347,
		0.800277, -0.564221, 0.203005,
		0.400703, 0.755066, 0.518953,
		25.666294, 35.260796, 33.676250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133926, 34.846443, 33.978046>,  <25.385801, 34.732250, 33.312984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133926, 34.846443, 33.978046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527393, 34.917408, 33.990208>,  <25.763474, 34.959988, 33.997505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527393, 34.917408, 33.990208>,  <25.133926, 34.846443, 33.978046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527393, 34.917408, 33.990208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076574, 0.259569, 0.962684,
		0.162899, -0.949289, 0.268915,
		0.983666, 0.177412, 0.030408,
		25.822493, 34.970631, 33.999329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496065, 34.428871, 34.436939>,  <25.133926, 34.846443, 33.978046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496065, 34.428871, 34.436939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567099, 34.818581, 34.381428>,  <25.609718, 35.052406, 34.348122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567099, 34.818581, 34.381428>,  <25.496065, 34.428871, 34.436939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567099, 34.818581, 34.381428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389031, 0.199031, 0.899467,
		0.903946, -0.105744, 0.414367,
		0.177585, 0.974271, -0.138775,
		25.620375, 35.110863, 34.339794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767113, 34.707146, 35.063885>,  <25.496065, 34.428871, 34.436939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767113, 34.707146, 35.063885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603809, 35.011311, 34.861855>,  <25.505827, 35.193810, 34.740635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603809, 35.011311, 34.861855>,  <25.767113, 34.707146, 35.063885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603809, 35.011311, 34.861855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479072, 0.292498, 0.827608,
		0.777054, 0.579847, 0.244875,
		-0.408261, 0.760409, -0.505075,
		25.481331, 35.239433, 34.710331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805182, 35.229973, 35.546349>,  <25.767113, 34.707146, 35.063885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805182, 35.229973, 35.546349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539238, 35.349373, 35.272457>,  <25.379671, 35.421013, 35.108120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539238, 35.349373, 35.272457>,  <25.805182, 35.229973, 35.546349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539238, 35.349373, 35.272457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654112, 0.209979, 0.726668,
		0.360693, 0.931023, 0.055649,
		-0.664860, 0.298504, -0.684731,
		25.339781, 35.438923, 35.067039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700727, 34.568295, 35.933220>,  <25.805182, 35.229973, 35.546349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700727, 34.568295, 35.933220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496754, 34.255154, 36.075829>,  <25.374371, 34.067268, 36.161396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496754, 34.255154, 36.075829>,  <25.700727, 34.568295, 35.933220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496754, 34.255154, 36.075829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719092, -0.160479, 0.676130,
		-0.472096, 0.601156, 0.644777,
		-0.509933, -0.782853, 0.356525,
		25.343773, 34.020298, 36.182785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573257, 34.551430, 36.760704>,  <25.700727, 34.568295, 35.933220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573257, 34.551430, 36.760704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587914, 34.191273, 36.587292>,  <25.596706, 33.975178, 36.483242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587914, 34.191273, 36.587292>,  <25.573257, 34.551430, 36.760704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587914, 34.191273, 36.587292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731474, -0.271420, 0.625522,
		-0.680885, -0.340038, 0.648668,
		0.036640, -0.900392, -0.433534,
		25.598906, 33.921154, 36.457230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394712, 34.037323, 37.273663>,  <25.573257, 34.551430, 36.760704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394712, 34.037323, 37.273663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660076, 33.917435, 36.999420>,  <25.819294, 33.845501, 36.834873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660076, 33.917435, 36.999420>,  <25.394712, 34.037323, 37.273663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660076, 33.917435, 36.999420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636371, -0.255982, 0.727671,
		-0.393604, -0.919042, 0.020915,
		0.663406, -0.299724, -0.685607,
		25.859098, 33.827518, 36.793739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983133, 33.839054, 37.671047>,  <25.394712, 34.037323, 37.273663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983133, 33.839054, 37.671047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109241, 33.663349, 37.334560>,  <26.184906, 33.557926, 37.132668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109241, 33.663349, 37.334560>,  <25.983133, 33.839054, 37.671047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109241, 33.663349, 37.334560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776687, -0.389921, 0.494689,
		-0.545310, -0.809326, 0.218241,
		0.315268, -0.439264, -0.841221,
		26.203821, 33.531570, 37.082195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067003, 33.134636, 37.854137>,  <25.983133, 33.839054, 37.671047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067003, 33.134636, 37.854137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292328, 33.237850, 37.540169>,  <26.427523, 33.299778, 37.351788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292328, 33.237850, 37.540169>,  <26.067003, 33.134636, 37.854137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292328, 33.237850, 37.540169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787449, -0.455340, 0.415438,
		-0.250207, -0.852105, -0.459688,
		0.563311, 0.258036, -0.784919,
		26.461321, 33.315262, 37.304691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432493, 32.554718, 37.671658>,  <26.067003, 33.134636, 37.854137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432493, 32.554718, 37.671658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626682, 32.891186, 37.576366>,  <26.743195, 33.093067, 37.519192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626682, 32.891186, 37.576366>,  <26.432493, 32.554718, 37.671658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626682, 32.891186, 37.576366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854812, -0.399568, 0.331123,
		0.183344, -0.364387, -0.913021,
		0.485471, 0.841170, -0.238224,
		26.772324, 33.143536, 37.504898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119621, 32.382660, 37.542084>,  <26.432493, 32.554718, 37.671658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119621, 32.382660, 37.542084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189241, 32.771038, 37.607777>,  <27.231014, 33.004066, 37.647194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189241, 32.771038, 37.607777>,  <27.119621, 32.382660, 37.542084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189241, 32.771038, 37.607777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811107, -0.235928, 0.535204,
		0.558401, 0.040058, -0.828604,
		0.174052, 0.970945, 0.164234,
		27.241457, 33.062321, 37.657047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732204, 31.808760, 37.465008>,  <27.119621, 32.382660, 37.542084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732204, 31.808760, 37.465008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055082, 31.809221, 37.701122>,  <28.248810, 31.809498, 37.842789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055082, 31.809221, 37.701122>,  <27.732204, 31.808760, 37.465008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055082, 31.809221, 37.701122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580346, 0.181169, -0.793962,
		-0.107855, 0.983451, 0.145570,
		0.807196, 0.001152, 0.590282,
		28.297241, 31.809566, 37.878208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266928, 32.066505, 37.044598>,  <27.732204, 31.808760, 37.465008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266928, 32.066505, 37.044598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497934, 31.955816, 37.351818>,  <28.636538, 31.889402, 37.536148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497934, 31.955816, 37.351818>,  <28.266928, 32.066505, 37.044598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497934, 31.955816, 37.351818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815907, 0.227625, -0.531491,
		-0.027752, 0.933602, 0.357237,
		0.577517, -0.276722, 0.768049,
		28.671190, 31.872799, 37.582233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899271, 32.517559, 37.457451>,  <28.266928, 32.066505, 37.044598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899271, 32.517559, 37.457451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763281, 32.839668, 37.651749>,  <27.681686, 33.032936, 37.768326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763281, 32.839668, 37.651749>,  <27.899271, 32.517559, 37.457451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763281, 32.839668, 37.651749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700502, -0.127774, 0.702119,
		0.627465, 0.578967, -0.520658,
		-0.339977, 0.805277, 0.485741,
		27.661287, 33.081253, 37.797470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528221, 32.733974, 37.731026>,  <27.899271, 32.517559, 37.457451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528221, 32.733974, 37.731026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253723, 32.941303, 37.935146>,  <28.089024, 33.065701, 38.057617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253723, 32.941303, 37.935146>,  <28.528221, 32.733974, 37.731026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253723, 32.941303, 37.935146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547337, -0.094079, 0.831608,
		0.479048, 0.849996, -0.219134,
		-0.686247, 0.518320, 0.510303,
		28.047850, 33.096798, 38.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918875, 33.316269, 38.058273>,  <28.528221, 32.733974, 37.731026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918875, 33.316269, 38.058273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586548, 33.237373, 38.266441>,  <28.387152, 33.190037, 38.391342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586548, 33.237373, 38.266441>,  <28.918875, 33.316269, 38.058273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586548, 33.237373, 38.266441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548795, -0.134854, 0.825008,
		-0.092542, 0.971036, 0.220283,
		-0.830819, -0.197238, 0.520420,
		28.337303, 33.178204, 38.422569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962864, 33.592045, 38.717960>,  <28.918875, 33.316269, 38.058273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962864, 33.592045, 38.717960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707804, 33.284859, 38.742046>,  <28.554768, 33.100548, 38.756496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707804, 33.284859, 38.742046>,  <28.962864, 33.592045, 38.717960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707804, 33.284859, 38.742046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437354, -0.296574, 0.848979,
		-0.634132, 0.567686, 0.524985,
		-0.637650, -0.767969, 0.060213,
		28.516508, 33.054466, 38.760109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171417, 33.033501, 39.222775>,  <28.962864, 33.592045, 38.717960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171417, 33.033501, 39.222775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865675, 33.117798, 39.466530>,  <28.682230, 33.168377, 39.612782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865675, 33.117798, 39.466530>,  <29.171417, 33.033501, 39.222775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865675, 33.117798, 39.466530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598509, 0.119732, -0.792118,
		-0.239897, -0.970181, 0.034614,
		-0.764354, 0.210743, 0.609385,
		28.636370, 33.181019, 39.649345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675245, 32.454803, 39.104916>,  <29.171417, 33.033501, 39.222775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675245, 32.454803, 39.104916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560478, 32.822605, 39.212383>,  <28.491617, 33.043285, 39.276863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560478, 32.822605, 39.212383>,  <28.675245, 32.454803, 39.104916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560478, 32.822605, 39.212383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544821, 0.074060, -0.835276,
		-0.787940, -0.386034, 0.479717,
		-0.286917, 0.919507, 0.268674,
		28.474403, 33.098457, 39.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927916, 32.359478, 39.049206>,  <28.675245, 32.454803, 39.104916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927916, 32.359478, 39.049206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032333, 32.745403, 39.036652>,  <28.094984, 32.976959, 39.029118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032333, 32.745403, 39.036652>,  <27.927916, 32.359478, 39.049206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032333, 32.745403, 39.036652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393587, 0.076688, -0.916083,
		-0.881444, 0.251494, 0.399758,
		0.261046, 0.964816, -0.031388,
		28.110647, 33.034847, 39.027237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264879, 32.923641, 39.117756>,  <27.927916, 32.359478, 39.049206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264879, 32.923641, 39.117756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588146, 33.029858, 38.907478>,  <27.782106, 33.093590, 38.781311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588146, 33.029858, 38.907478>,  <27.264879, 32.923641, 39.117756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588146, 33.029858, 38.907478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588938, 0.370485, -0.718257,
		0.004031, 0.890071, 0.455804,
		0.808168, 0.265545, -0.525690,
		27.830597, 33.109520, 38.749771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140368, 33.646503, 38.814590>,  <27.264879, 32.923641, 39.117756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140368, 33.646503, 38.814590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436972, 33.490971, 38.595879>,  <27.614935, 33.397652, 38.464653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436972, 33.490971, 38.595879>,  <27.140368, 33.646503, 38.814590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436972, 33.490971, 38.595879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436925, 0.338610, -0.833331,
		0.509174, 0.856826, 0.081191,
		0.741511, -0.388836, -0.546780,
		27.659426, 33.374321, 38.431843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244286, 34.158394, 38.368790>,  <27.140368, 33.646503, 38.814590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244286, 34.158394, 38.368790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384918, 33.827003, 38.194427>,  <27.469297, 33.628170, 38.089809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384918, 33.827003, 38.194427>,  <27.244286, 34.158394, 38.368790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384918, 33.827003, 38.194427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428599, 0.271521, -0.861730,
		0.832282, 0.489798, -0.259623,
		0.351581, -0.828477, -0.435909,
		27.490393, 33.578461, 38.063656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522881, 34.327034, 37.723541>,  <27.244286, 34.158394, 38.368790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522881, 34.327034, 37.723541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431314, 33.938419, 37.699146>,  <27.376375, 33.705250, 37.684509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431314, 33.938419, 37.699146>,  <27.522881, 34.327034, 37.723541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431314, 33.938419, 37.699146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603882, 0.190868, -0.773884,
		0.763495, -0.140325, -0.630384,
		-0.228916, -0.971534, -0.060987,
		27.362640, 33.646957, 37.680851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369028, 34.182415, 37.041039>,  <27.522881, 34.327034, 37.723541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369028, 34.182415, 37.041039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201733, 33.847980, 37.183044>,  <27.101355, 33.647320, 37.268250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201733, 33.847980, 37.183044>,  <27.369028, 34.182415, 37.041039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201733, 33.847980, 37.183044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736161, 0.083038, -0.671693,
		0.532113, -0.542278, -0.650223,
		-0.418238, -0.836085, 0.355018,
		27.076262, 33.597157, 37.289551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332546, 33.796890, 36.497284>,  <27.369028, 34.182415, 37.041039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332546, 33.796890, 36.497284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041286, 33.673237, 36.741982>,  <26.866529, 33.599045, 36.888802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041286, 33.673237, 36.741982>,  <27.332546, 33.796890, 36.497284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041286, 33.673237, 36.741982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652917, 0.041267, -0.756304,
		0.208554, -0.950123, -0.231887,
		-0.728151, -0.309133, 0.611745,
		26.822842, 33.580498, 36.925507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080585, 33.100582, 36.263771>,  <27.332546, 33.796890, 36.497284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080585, 33.100582, 36.263771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821527, 33.324203, 36.470852>,  <26.666092, 33.458378, 36.595100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821527, 33.324203, 36.470852>,  <27.080585, 33.100582, 36.263771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821527, 33.324203, 36.470852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565395, 0.102860, -0.818382,
		-0.510770, -0.822727, 0.249469,
		-0.647644, 0.559053, 0.517703,
		26.627234, 33.491920, 36.626163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445599, 32.695351, 35.692120>,  <27.080585, 33.100582, 36.263771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445599, 32.695351, 35.692120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813498, 32.569782, 35.597870>,  <28.034237, 32.494442, 35.541321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813498, 32.569782, 35.597870>,  <27.445599, 32.695351, 35.692120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813498, 32.569782, 35.597870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086599, 0.747796, -0.658257,
		0.382837, 0.585026, 0.714969,
		0.919748, -0.313921, -0.235621,
		28.089422, 32.475605, 35.527184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667130, 32.263458, 36.227123>,  <27.445599, 32.695351, 35.692120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667130, 32.263458, 36.227123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332130, 32.385742, 36.408295>,  <27.131132, 32.459114, 36.516998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332130, 32.385742, 36.408295>,  <27.667130, 32.263458, 36.227123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332130, 32.385742, 36.408295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410153, -0.899369, -0.151360,
		0.361074, -0.312532, 0.878606,
		-0.837496, 0.305711, 0.452925,
		27.080881, 32.477455, 36.544170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324852, 31.642765, 36.162251>,  <27.667130, 32.263458, 36.227123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324852, 31.642765, 36.162251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072105, 31.910381, 36.318779>,  <26.920458, 32.070950, 36.412697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072105, 31.910381, 36.318779>,  <27.324852, 31.642765, 36.162251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072105, 31.910381, 36.318779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688889, -0.716153, 0.112056,
		0.355217, -0.198773, 0.913406,
		-0.631865, 0.669040, 0.391322,
		26.882545, 32.111092, 36.436176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876562, 31.444559, 36.622639>,  <27.324852, 31.642765, 36.162251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876562, 31.444559, 36.622639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159460, 31.169109, 36.558636>,  <28.329199, 31.003839, 36.520233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159460, 31.169109, 36.558636>,  <27.876562, 31.444559, 36.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159460, 31.169109, 36.558636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452147, 0.266599, 0.851168,
		-0.543480, -0.674328, 0.499911,
		0.707243, -0.688626, -0.160004,
		28.371634, 30.962521, 36.510635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999876, 31.140268, 37.249302>,  <27.876562, 31.444559, 36.622639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999876, 31.140268, 37.249302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323290, 31.070818, 37.024403>,  <28.517338, 31.029148, 36.889462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323290, 31.070818, 37.024403>,  <27.999876, 31.140268, 37.249302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323290, 31.070818, 37.024403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582756, 0.103677, 0.806007,
		-0.081652, -0.979339, 0.185008,
		0.808535, -0.173627, -0.562250,
		28.565851, 31.018730, 36.855728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448244, 30.639193, 37.616039>,  <27.999876, 31.140268, 37.249302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448244, 30.639193, 37.616039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701063, 30.833975, 37.374912>,  <28.852755, 30.950844, 37.230236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701063, 30.833975, 37.374912>,  <28.448244, 30.639193, 37.616039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701063, 30.833975, 37.374912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748140, -0.180676, 0.638469,
		0.201993, -0.854534, -0.478508,
		0.632048, 0.486957, -0.602816,
		28.890678, 30.980062, 37.194069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073856, 30.203596, 37.501564>,  <28.448244, 30.639193, 37.616039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073856, 30.203596, 37.501564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201830, 30.576902, 37.436249>,  <29.278614, 30.800886, 37.397060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201830, 30.576902, 37.436249>,  <29.073856, 30.203596, 37.501564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201830, 30.576902, 37.436249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716048, -0.125323, 0.686709,
		0.620417, -0.336620, -0.708356,
		0.319933, 0.933264, -0.163284,
		29.297810, 30.856882, 37.387264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826157, 30.223145, 37.405079>,  <29.073856, 30.203596, 37.501564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826157, 30.223145, 37.405079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708090, 30.583265, 37.533035>,  <29.637249, 30.799337, 37.609810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708090, 30.583265, 37.533035>,  <29.826157, 30.223145, 37.405079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708090, 30.583265, 37.533035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647962, -0.057424, 0.759505,
		0.702154, 0.431457, -0.566413,
		-0.295168, 0.900304, 0.319889,
		29.619539, 30.853357, 37.629002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252937, 30.146833, 37.974911>,  <29.826157, 30.223145, 37.405079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252937, 30.146833, 37.974911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089928, 29.796982, 37.869877>,  <29.992123, 29.587070, 37.806854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089928, 29.796982, 37.869877>,  <30.252937, 30.146833, 37.974911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089928, 29.796982, 37.869877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900184, -0.336381, -0.276617,
		0.153608, -0.349105, 0.924408,
		-0.407522, -0.874628, -0.262588,
		29.967670, 29.534594, 37.791100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671719, 30.265896, 38.497471>,  <30.252937, 30.146833, 37.974911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671719, 30.265896, 38.497471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617870, 29.873018, 38.549885>,  <29.585562, 29.637291, 38.581333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617870, 29.873018, 38.549885>,  <29.671719, 30.265896, 38.497471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617870, 29.873018, 38.549885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090540, -0.143878, -0.985445,
		0.986752, -0.120798, 0.108297,
		-0.134621, -0.982195, 0.131034,
		29.577484, 29.578360, 38.589195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010479, 30.999035, 38.605934>,  <29.671719, 30.265896, 38.497471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010479, 30.999035, 38.605934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215982, 31.148958, 38.297241>,  <30.339285, 31.238913, 38.112026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215982, 31.148958, 38.297241>,  <30.010479, 30.999035, 38.605934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215982, 31.148958, 38.297241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803617, -0.104740, -0.585857,
		-0.300416, 0.921166, 0.247392,
		0.513760, 0.374810, -0.771731,
		30.370110, 31.261400, 38.065723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538296, 31.412823, 38.152290>,  <30.010479, 30.999035, 38.605934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538296, 31.412823, 38.152290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862022, 31.330473, 37.932247>,  <30.056257, 31.281063, 37.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862022, 31.330473, 37.932247>,  <29.538296, 31.412823, 38.152290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862022, 31.330473, 37.932247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570954, -0.055837, -0.819081,
		0.137912, 0.976984, -0.162735,
		0.809316, -0.205875, -0.550112,
		30.104816, 31.268711, 37.767212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669262, 32.046974, 37.688179>,  <29.538296, 31.412823, 38.152290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669262, 32.046974, 37.688179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740715, 31.666819, 37.586315>,  <29.783587, 31.438725, 37.525196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740715, 31.666819, 37.586315>,  <29.669262, 32.046974, 37.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740715, 31.666819, 37.586315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780346, 0.020797, -0.625002,
		0.599292, 0.310365, -0.737918,
		0.178632, -0.950390, -0.254656,
		29.794304, 31.381702, 37.509918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776691, 31.959654, 36.987759>,  <29.669262, 32.046974, 37.688179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776691, 31.959654, 36.987759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642090, 31.601219, 37.103546>,  <29.561329, 31.386158, 37.173019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642090, 31.601219, 37.103546>,  <29.776691, 31.959654, 36.987759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642090, 31.601219, 37.103546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624196, -0.017914, -0.781062,
		0.705085, -0.443517, -0.553306,
		-0.336502, -0.896087, 0.289473,
		29.541140, 31.332394, 37.190388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802774, 31.552498, 36.456123>,  <29.776691, 31.959654, 36.987759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802774, 31.552498, 36.456123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526392, 31.368111, 36.678864>,  <29.360561, 31.257479, 36.812508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526392, 31.368111, 36.678864>,  <29.802774, 31.552498, 36.456123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526392, 31.368111, 36.678864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524323, -0.210724, -0.825034,
		0.497658, -0.862034, -0.096096,
		-0.690957, -0.460970, 0.556853,
		29.319105, 31.229820, 36.845921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696026, 30.940395, 36.135742>,  <29.802774, 31.552498, 36.456123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696026, 30.940395, 36.135742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358295, 30.995552, 36.342854>,  <29.155657, 31.028646, 36.467121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358295, 30.995552, 36.342854>,  <29.696026, 30.940395, 36.135742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358295, 30.995552, 36.342854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535279, -0.260806, -0.803403,
		0.024259, -0.955492, 0.294016,
		-0.844327, 0.137891, 0.517782,
		29.104998, 31.036921, 36.498188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136250, 30.323320, 36.186588>,  <29.696026, 30.940395, 36.135742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136250, 30.323320, 36.186588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969864, 30.685886, 36.157227>,  <28.870031, 30.903425, 36.139610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969864, 30.685886, 36.157227>,  <29.136250, 30.323320, 36.186588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969864, 30.685886, 36.157227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426524, -0.265754, -0.864553,
		-0.803150, -0.328315, 0.497151,
		-0.415966, 0.906413, -0.073406,
		28.845074, 30.957809, 36.135204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441490, 30.410465, 35.888878>,  <29.136250, 30.323320, 36.186588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441490, 30.410465, 35.888878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664282, 30.690529, 35.710194>,  <28.797956, 30.858566, 35.602982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664282, 30.690529, 35.710194>,  <28.441490, 30.410465, 35.888878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664282, 30.690529, 35.710194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218248, -0.395573, -0.892127,
		-0.801337, 0.594391, -0.067518,
		0.556980, 0.700158, -0.446712,
		28.831375, 30.900576, 35.576180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122242, 30.635740, 35.229805>,  <28.441490, 30.410465, 35.888878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122242, 30.635740, 35.229805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487818, 30.782274, 35.159935>,  <28.707163, 30.870195, 35.118015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487818, 30.782274, 35.159935>,  <28.122242, 30.635740, 35.229805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487818, 30.782274, 35.159935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123762, -0.158320, -0.979601,
		-0.386516, 0.916915, -0.099357,
		0.913941, 0.366335, -0.174673,
		28.761999, 30.892176, 35.107533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015894, 31.074003, 34.728329>,  <28.122242, 30.635740, 35.229805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015894, 31.074003, 34.728329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410961, 31.014273, 34.709507>,  <28.648001, 30.978434, 34.698215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410961, 31.014273, 34.709507>,  <28.015894, 31.074003, 34.728329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410961, 31.014273, 34.709507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073432, -0.176380, -0.981579,
		0.138276, 0.972929, -0.185170,
		0.987668, -0.149326, -0.047055,
		28.707262, 30.969475, 34.695389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353907, 31.540462, 34.309219>,  <28.015894, 31.074003, 34.728329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353907, 31.540462, 34.309219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659782, 31.283360, 34.290848>,  <28.843307, 31.129097, 34.279827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659782, 31.283360, 34.290848>,  <28.353907, 31.540462, 34.309219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659782, 31.283360, 34.290848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031989, 0.033316, -0.998933,
		0.643604, 0.765343, 0.004915,
		0.764690, -0.642760, -0.045924,
		28.889189, 31.090532, 34.277069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923388, 31.835602, 33.867481>,  <28.353907, 31.540462, 34.309219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923388, 31.835602, 33.867481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934900, 31.435823, 33.874119>,  <28.941809, 31.195955, 33.878101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934900, 31.435823, 33.874119>,  <28.923388, 31.835602, 33.867481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934900, 31.435823, 33.874119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067487, -0.014624, -0.997613,
		0.997305, 0.029833, 0.067029,
		0.028782, -0.999448, 0.016598,
		28.943535, 31.135988, 33.879097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533358, 31.700367, 33.458008>,  <28.923388, 31.835602, 33.867481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533358, 31.700367, 33.458008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342642, 31.348818, 33.464397>,  <29.228212, 31.137888, 33.468231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342642, 31.348818, 33.464397>,  <29.533358, 31.700367, 33.458008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342642, 31.348818, 33.464397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296625, -0.177970, -0.938265,
		0.827458, -0.442615, 0.345550,
		-0.476787, -0.878874, 0.015972,
		29.199606, 31.085155, 33.469189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984257, 31.190855, 33.128414>,  <29.533358, 31.700367, 33.458008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984257, 31.190855, 33.128414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617357, 31.032034, 33.115753>,  <29.397217, 30.936741, 33.108158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617357, 31.032034, 33.115753>,  <29.984257, 31.190855, 33.128414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617357, 31.032034, 33.115753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126116, -0.214126, -0.968630,
		0.377820, -0.892468, 0.246482,
		-0.917250, -0.397053, -0.031653,
		29.342182, 30.912918, 33.106258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001606, 30.785580, 32.544949>,  <29.984257, 31.190855, 33.128414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001606, 30.785580, 32.544949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603777, 30.803089, 32.582706>,  <29.365080, 30.813595, 32.605362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603777, 30.803089, 32.582706>,  <30.001606, 30.785580, 32.544949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603777, 30.803089, 32.582706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087106, 0.145881, -0.985460,
		-0.056907, -0.988333, -0.141276,
		-0.994572, 0.043774, 0.094392,
		29.305405, 30.816221, 32.611023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604277, 30.379862, 32.077316>,  <30.001606, 30.785580, 32.544949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604277, 30.379862, 32.077316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357166, 30.683271, 32.160255>,  <29.208900, 30.865316, 32.210018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357166, 30.683271, 32.160255>,  <29.604277, 30.379862, 32.077316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357166, 30.683271, 32.160255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155764, 0.140418, -0.977763,
		-0.770773, -0.636336, 0.031404,
		-0.617776, 0.758525, 0.207349,
		29.171833, 30.910830, 32.222462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122972, 30.396656, 31.529457>,  <29.604277, 30.379862, 32.077316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122972, 30.396656, 31.529457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033031, 30.744595, 31.705097>,  <28.979067, 30.953358, 31.810480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033031, 30.744595, 31.705097>,  <29.122972, 30.396656, 31.529457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033031, 30.744595, 31.705097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398746, 0.329035, -0.856001,
		-0.889068, -0.367564, 0.272863,
		-0.224854, 0.869846, 0.439099,
		28.965576, 31.005548, 31.836826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383497, 30.559088, 31.258041>,  <29.122972, 30.396656, 31.529457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383497, 30.559088, 31.258041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549950, 30.892479, 31.403452>,  <28.649822, 31.092514, 31.490698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549950, 30.892479, 31.403452>,  <28.383497, 30.559088, 31.258041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549950, 30.892479, 31.403452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362761, 0.518762, -0.774139,
		-0.833810, 0.190271, 0.518226,
		0.416132, 0.833477, 0.363526,
		28.674789, 31.142523, 31.512510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878017, 31.164455, 31.294115>,  <28.383497, 30.559088, 31.258041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878017, 31.164455, 31.294115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243107, 31.326477, 31.272711>,  <28.462160, 31.423691, 31.259869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243107, 31.326477, 31.272711>,  <27.878017, 31.164455, 31.294115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243107, 31.326477, 31.272711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318309, 0.622845, -0.714663,
		-0.256147, 0.669325, 0.697419,
		0.912726, 0.405054, -0.053512,
		28.516924, 31.447992, 31.256657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733618, 31.915430, 31.261961>,  <27.878017, 31.164455, 31.294115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733618, 31.915430, 31.261961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102690, 31.846779, 31.123857>,  <28.324133, 31.805588, 31.040995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102690, 31.846779, 31.123857>,  <27.733618, 31.915430, 31.261961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102690, 31.846779, 31.123857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141259, 0.682732, -0.716884,
		0.358758, 0.710226, 0.605699,
		0.922680, -0.171628, -0.345261,
		28.379494, 31.795290, 31.020279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046228, 32.493793, 31.018082>,  <27.733618, 31.915430, 31.261961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046228, 32.493793, 31.018082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299755, 32.244823, 30.834402>,  <28.451872, 32.095440, 30.724195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299755, 32.244823, 30.834402>,  <28.046228, 32.493793, 31.018082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299755, 32.244823, 30.834402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082821, 0.535649, -0.840369,
		0.769037, 0.570671, 0.287953,
		0.633816, -0.622426, -0.459198,
		28.489901, 32.058094, 30.696642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349585, 32.872391, 30.660980>,  <28.046228, 32.493793, 31.018082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349585, 32.872391, 30.660980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428391, 32.521309, 30.486252>,  <28.475674, 32.310658, 30.381414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428391, 32.521309, 30.486252>,  <28.349585, 32.872391, 30.660980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428391, 32.521309, 30.486252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124924, 0.419446, -0.899143,
		0.972409, 0.231715, -0.027009,
		0.197017, -0.877709, -0.436820,
		28.487495, 32.257996, 30.355206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720844, 33.042946, 30.010689>,  <28.349585, 32.872391, 30.660980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720844, 33.042946, 30.010689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593647, 32.670357, 29.939985>,  <28.517328, 32.446804, 29.897564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593647, 32.670357, 29.939985>,  <28.720844, 33.042946, 30.010689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593647, 32.670357, 29.939985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201260, 0.248508, -0.947491,
		0.926485, -0.265722, -0.266492,
		-0.317995, -0.931469, -0.176760,
		28.498249, 32.390915, 29.886957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141060, 32.759682, 29.427082>,  <28.720844, 33.042946, 30.010689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141060, 32.759682, 29.427082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822620, 32.521000, 29.467419>,  <28.631556, 32.377792, 29.491621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822620, 32.521000, 29.467419>,  <29.141060, 32.759682, 29.427082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822620, 32.521000, 29.467419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269686, 0.200640, -0.941814,
		0.541752, -0.776974, -0.320652,
		-0.796100, -0.596704, 0.100842,
		28.583790, 32.341988, 29.497671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164440, 32.190643, 28.889965>,  <29.141060, 32.759682, 29.427082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164440, 32.190643, 28.889965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783922, 32.230373, 29.006701>,  <28.555611, 32.254211, 29.076742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783922, 32.230373, 29.006701>,  <29.164440, 32.190643, 28.889965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783922, 32.230373, 29.006701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273203, 0.166946, -0.947359,
		-0.142817, -0.980951, -0.131679,
		-0.951296, 0.099324, 0.291841,
		28.498533, 32.260170, 29.094254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887413, 31.855623, 28.385935>,  <29.164440, 32.190643, 28.889965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887413, 31.855623, 28.385935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588284, 32.079189, 28.529251>,  <28.408806, 32.213329, 28.615242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588284, 32.079189, 28.529251>,  <28.887413, 31.855623, 28.385935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588284, 32.079189, 28.529251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290259, 0.210116, -0.933596,
		-0.597083, -0.802163, 0.005100,
		-0.747824, 0.558915, 0.358292,
		28.363935, 32.246864, 28.636738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244013, 31.644367, 28.069649>,  <28.887413, 31.855623, 28.385935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244013, 31.644367, 28.069649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140783, 32.003902, 28.211348>,  <28.078846, 32.219624, 28.296368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140783, 32.003902, 28.211348>,  <28.244013, 31.644367, 28.069649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140783, 32.003902, 28.211348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496880, 0.190974, -0.846545,
		-0.828558, -0.394488, 0.397329,
		-0.258073, 0.898837, 0.354246,
		28.063362, 32.273552, 28.317621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545948, 31.640284, 27.939291>,  <28.244013, 31.644367, 28.069649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545948, 31.640284, 27.939291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697460, 32.010475, 27.938095>,  <27.788368, 32.232590, 27.937378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697460, 32.010475, 27.938095>,  <27.545948, 31.640284, 27.939291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697460, 32.010475, 27.938095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412741, 0.166035, -0.895588,
		-0.828353, 0.340467, 0.444875,
		0.378783, 0.925481, -0.002989,
		27.811094, 32.288120, 27.937199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965057, 32.061539, 27.690567>,  <27.545948, 31.640284, 27.939291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965057, 32.061539, 27.690567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293026, 32.287605, 27.654097>,  <27.489807, 32.423244, 27.632214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293026, 32.287605, 27.654097>,  <26.965057, 32.061539, 27.690567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293026, 32.287605, 27.654097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246711, 0.205122, -0.947132,
		-0.516584, 0.799070, 0.307617,
		0.819923, 0.565166, -0.091177,
		27.539003, 32.457153, 27.626743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703819, 32.628265, 27.431433>,  <26.965057, 32.061539, 27.690567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703819, 32.628265, 27.431433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088396, 32.667152, 27.328529>,  <27.319141, 32.690483, 27.266788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088396, 32.667152, 27.328529>,  <26.703819, 32.628265, 27.431433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088396, 32.667152, 27.328529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261889, 0.038111, -0.964345,
		-0.083948, 0.994533, 0.062102,
		0.961440, 0.097218, -0.257258,
		27.376827, 32.696320, 27.251352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700846, 33.220852, 26.973955>,  <26.703819, 32.628265, 27.431433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700846, 33.220852, 26.973955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040625, 33.022305, 26.902332>,  <27.244492, 32.903175, 26.859358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040625, 33.022305, 26.902332>,  <26.700846, 33.220852, 26.973955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040625, 33.022305, 26.902332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200916, 0.009533, -0.979562,
		0.487926, 0.868062, -0.091629,
		0.849447, -0.496364, -0.179059,
		27.295460, 32.873394, 26.848614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132460, 33.667126, 26.520132>,  <26.700846, 33.220852, 26.973955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132460, 33.667126, 26.520132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273722, 33.295872, 26.473064>,  <27.358479, 33.073120, 26.444824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273722, 33.295872, 26.473064>,  <27.132460, 33.667126, 26.520132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273722, 33.295872, 26.473064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214329, 0.042165, -0.975851,
		0.910684, 0.369845, -0.184036,
		0.353154, -0.928136, -0.117668,
		27.379667, 33.017429, 26.437763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667589, 33.702820, 26.021976>,  <27.132460, 33.667126, 26.520132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667589, 33.702820, 26.021976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541262, 33.323402, 26.012739>,  <27.465466, 33.095753, 26.007196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541262, 33.323402, 26.012739>,  <27.667589, 33.702820, 26.021976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541262, 33.323402, 26.012739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234250, 0.101534, -0.966860,
		0.919449, -0.299941, -0.254261,
		-0.315817, -0.948539, -0.023094,
		27.446516, 33.038841, 26.005812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641924, 33.603657, 25.283043>,  <27.667589, 33.702820, 26.021976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641924, 33.603657, 25.283043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465397, 33.276997, 25.431807>,  <27.359482, 33.081001, 25.521065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465397, 33.276997, 25.431807>,  <27.641924, 33.603657, 25.283043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465397, 33.276997, 25.431807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356999, -0.220460, -0.907717,
		0.823282, -0.533360, -0.194252,
		-0.441315, -0.816654, 0.371910,
		27.333002, 33.032001, 25.543379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797735, 32.987671, 24.901896>,  <27.641924, 33.603657, 25.283043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797735, 32.987671, 24.901896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444841, 32.896873, 25.066885>,  <27.233105, 32.842396, 25.165878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444841, 32.896873, 25.066885>,  <27.797735, 32.987671, 24.901896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444841, 32.896873, 25.066885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334181, -0.315205, -0.888239,
		0.331639, -0.921477, 0.202228,
		-0.882235, -0.226994, 0.412474,
		27.180170, 32.828773, 25.190628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592936, 32.302254, 24.652496>,  <27.797735, 32.987671, 24.901896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592936, 32.302254, 24.652496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279625, 32.530674, 24.750786>,  <27.091639, 32.667725, 24.809759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279625, 32.530674, 24.750786>,  <27.592936, 32.302254, 24.652496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279625, 32.530674, 24.750786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368952, -0.108878, -0.923049,
		-0.500352, -0.813664, 0.295971,
		-0.783277, 0.571049, 0.245726,
		27.044641, 32.701988, 24.824503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027510, 31.856623, 24.270414>,  <27.592936, 32.302254, 24.652496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027510, 31.856623, 24.270414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884789, 32.206993, 24.400303>,  <26.799156, 32.417217, 24.478235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884789, 32.206993, 24.400303>,  <27.027510, 31.856623, 24.270414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884789, 32.206993, 24.400303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436140, 0.151197, -0.887086,
		-0.826120, -0.458138, 0.328080,
		-0.356803, 0.875928, 0.324719,
		26.777748, 32.469772, 24.497719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328899, 31.840357, 24.275309>,  <27.027510, 31.856623, 24.270414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328899, 31.840357, 24.275309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407743, 32.230721, 24.237904>,  <26.455050, 32.464939, 24.215460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407743, 32.230721, 24.237904>,  <26.328899, 31.840357, 24.275309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407743, 32.230721, 24.237904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244429, -0.043453, -0.968693,
		-0.949422, 0.213796, 0.229976,
		0.197109, 0.975911, -0.093513,
		26.466877, 32.523495, 24.209850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828413, 32.045078, 23.762251>,  <26.328899, 31.840357, 24.275309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828413, 32.045078, 23.762251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104670, 32.334335, 23.758549>,  <26.270424, 32.507889, 23.756327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104670, 32.334335, 23.758549>,  <25.828413, 32.045078, 23.762251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104670, 32.334335, 23.758549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007480, -0.019941, -0.999773,
		-0.723160, 0.690414, -0.019181,
		0.690640, 0.723139, -0.009256,
		26.311861, 32.551277, 23.755772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605135, 32.449520, 23.236475>,  <25.828413, 32.045078, 23.762251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605135, 32.449520, 23.236475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989080, 32.552078, 23.281942>,  <26.219448, 32.613613, 23.309223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989080, 32.552078, 23.281942>,  <25.605135, 32.449520, 23.236475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989080, 32.552078, 23.281942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059289, 0.210632, -0.975766,
		-0.274128, 0.943342, 0.186976,
		0.959864, 0.256399, 0.113670,
		26.277040, 32.628998, 23.316044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661734, 33.136936, 22.982010>,  <25.605135, 32.449520, 23.236475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661734, 33.136936, 22.982010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008383, 32.940388, 22.947338>,  <26.216373, 32.822456, 22.926535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008383, 32.940388, 22.947338>,  <25.661734, 33.136936, 22.982010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008383, 32.940388, 22.947338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026110, 0.218142, -0.975568,
		0.498279, 0.843187, 0.201877,
		0.866624, -0.491376, -0.086680,
		26.268370, 32.792976, 22.921333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017363, 33.534008, 22.604897>,  <25.661734, 33.136936, 22.982010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017363, 33.534008, 22.604897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247049, 33.208416, 22.569767>,  <26.384861, 33.013062, 22.548689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247049, 33.208416, 22.569767>,  <26.017363, 33.534008, 22.604897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247049, 33.208416, 22.569767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160443, 0.217075, -0.962879,
		0.802828, 0.538811, 0.255245,
		0.574218, -0.813978, -0.087826,
		26.419315, 32.964222, 22.543419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794775, 33.594894, 22.379496>,  <26.017363, 33.534008, 22.604897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794775, 33.594894, 22.379496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652750, 33.237991, 22.267927>,  <26.567535, 33.023849, 22.200985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652750, 33.237991, 22.267927>,  <26.794775, 33.594894, 22.379496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652750, 33.237991, 22.267927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241738, 0.200582, -0.949384,
		0.903046, -0.404518, 0.144474,
		-0.355064, -0.892262, -0.278922,
		26.546230, 32.970314, 22.184250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278477, 33.194977, 21.909307>,  <26.794775, 33.594894, 22.379496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278477, 33.194977, 21.909307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899633, 33.086849, 21.840128>,  <26.672327, 33.021973, 21.798620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899633, 33.086849, 21.840128>,  <27.278477, 33.194977, 21.909307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899633, 33.086849, 21.840128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059784, 0.380865, -0.922696,
		0.315293, -0.884234, -0.344560,
		-0.947109, -0.270320, -0.172947,
		26.615501, 33.005753, 21.788244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261709, 32.857819, 21.241177>,  <27.278477, 33.194977, 21.909307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261709, 32.857819, 21.241177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878433, 32.953934, 21.303322>,  <26.648468, 33.011604, 21.340609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878433, 32.953934, 21.303322>,  <27.261709, 32.857819, 21.241177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878433, 32.953934, 21.303322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013642, 0.580708, -0.813998,
		-0.285813, -0.777844, -0.559705,
		-0.958188, 0.240287, 0.155363,
		26.590977, 33.026020, 21.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081499, 32.825722, 20.595858>,  <27.261709, 32.857819, 21.241177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081499, 32.825722, 20.595858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815405, 33.060112, 20.780935>,  <26.655748, 33.200748, 20.891981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815405, 33.060112, 20.780935>,  <27.081499, 32.825722, 20.595858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815405, 33.060112, 20.780935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133190, 0.702905, -0.698702,
		-0.734656, -0.403176, -0.545645,
		-0.665237, 0.585980, 0.462695,
		26.615833, 33.235905, 20.919744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816721, 33.241493, 20.094378>,  <27.081499, 32.825722, 20.595858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816721, 33.241493, 20.094378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731930, 33.441559, 20.430210>,  <26.681055, 33.561600, 20.631710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731930, 33.441559, 20.430210>,  <26.816721, 33.241493, 20.094378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731930, 33.441559, 20.430210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189591, 0.863831, -0.466746,
		-0.958708, 0.060237, -0.277940,
		-0.211978, 0.500167, 0.839582,
		26.668337, 33.591610, 20.682085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478121, 33.768154, 19.845009>,  <26.816721, 33.241493, 20.094378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478121, 33.768154, 19.845009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593872, 33.902859, 20.203419>,  <26.663322, 33.983681, 20.418465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593872, 33.902859, 20.203419>,  <26.478121, 33.768154, 19.845009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593872, 33.902859, 20.203419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192083, 0.896602, -0.399009,
		-0.937745, 0.287575, 0.194770,
		0.289376, 0.336757, 0.896022,
		26.680685, 34.003887, 20.472225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243139, 34.480408, 19.779478>,  <26.478121, 33.768154, 19.845009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243139, 34.480408, 19.779478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500671, 34.482506, 20.085537>,  <26.655191, 34.483765, 20.269173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500671, 34.482506, 20.085537>,  <26.243139, 34.480408, 19.779478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500671, 34.482506, 20.085537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229504, 0.952612, -0.199648,
		-0.729938, 0.304144, 0.612117,
		0.643831, 0.005247, 0.765149,
		26.693821, 34.484081, 20.315083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982740, 35.011967, 20.251732>,  <26.243139, 34.480408, 19.779478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982740, 35.011967, 20.251732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374886, 34.957619, 20.308897>,  <26.610172, 34.925011, 20.343195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374886, 34.957619, 20.308897>,  <25.982740, 35.011967, 20.251732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374886, 34.957619, 20.308897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148499, 0.985531, -0.081707,
		-0.129741, 0.101325, 0.986357,
		0.980365, -0.135872, 0.142911,
		26.668995, 34.916859, 20.351770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380472, 35.590275, 19.865677>,  <25.982740, 35.011967, 20.251732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380472, 35.590275, 19.865677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544367, 35.955017, 19.875807>,  <26.642704, 36.173862, 19.881886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544367, 35.955017, 19.875807>,  <26.380472, 35.590275, 19.865677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544367, 35.955017, 19.875807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649476, 0.311109, -0.693824,
		-0.640544, 0.267837, 0.719699,
		0.409737, 0.911852, 0.025325,
		26.667288, 36.228573, 19.883404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891283, 36.115040, 19.728168>,  <26.380472, 35.590275, 19.865677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891283, 36.115040, 19.728168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222641, 36.326317, 19.653582>,  <26.421455, 36.453083, 19.608829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222641, 36.326317, 19.653582>,  <25.891283, 36.115040, 19.728168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222641, 36.326317, 19.653582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412987, 0.351031, -0.840368,
		-0.378423, 0.773166, 0.508931,
		0.828395, 0.528196, -0.186469,
		26.471159, 36.484776, 19.597641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658489, 36.834476, 19.528006>,  <25.891283, 36.115040, 19.728168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658489, 36.834476, 19.528006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019629, 36.762154, 19.371967>,  <26.236311, 36.718758, 19.278345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019629, 36.762154, 19.371967>,  <25.658489, 36.834476, 19.528006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019629, 36.762154, 19.371967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375378, 0.110945, -0.920208,
		0.209663, 0.977240, 0.032294,
		0.902847, -0.180812, -0.390096,
		26.290483, 36.707909, 19.254938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441723, 36.126827, 19.181646>,  <25.658489, 36.834476, 19.528006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441723, 36.126827, 19.181646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180351, 36.239758, 18.900698>,  <25.023529, 36.307514, 18.732128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180351, 36.239758, 18.900698>,  <25.441723, 36.126827, 19.181646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180351, 36.239758, 18.900698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753601, 0.154920, -0.638816,
		-0.071543, -0.946727, -0.313990,
		-0.653427, 0.282326, -0.702371,
		24.984324, 36.324455, 18.689987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500441, 36.747837, 18.659117>,  <25.441723, 36.126827, 19.181646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500441, 36.747837, 18.659117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663969, 36.778481, 18.295359>,  <25.762087, 36.796867, 18.077105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663969, 36.778481, 18.295359>,  <25.500441, 36.747837, 18.659117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663969, 36.778481, 18.295359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904354, -0.167772, 0.392424,
		-0.122508, -0.982845, -0.137869,
		0.408823, 0.076607, -0.909393,
		25.786615, 36.801464, 18.022541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077242, 36.318684, 18.572084>,  <25.500441, 36.747837, 18.659117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077242, 36.318684, 18.572084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195938, 36.536011, 18.257950>,  <26.267157, 36.666409, 18.069469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195938, 36.536011, 18.257950>,  <26.077242, 36.318684, 18.572084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195938, 36.536011, 18.257950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936774, -0.325336, 0.128885,
		-0.185472, -0.773927, -0.605506,
		0.296741, 0.543317, -0.785335,
		26.284960, 36.699005, 18.022348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373648, 35.828556, 18.146851>,  <26.077242, 36.318684, 18.572084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373648, 35.828556, 18.146851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519014, 36.201199, 18.149479>,  <26.606234, 36.424782, 18.151056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519014, 36.201199, 18.149479>,  <26.373648, 35.828556, 18.146851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519014, 36.201199, 18.149479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930243, -0.363250, 0.051940,
		0.050775, -0.012761, -0.998629,
		0.363415, 0.931604, 0.006573,
		26.628038, 36.480679, 18.151451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952196, 36.113960, 18.446329>,  <26.373648, 35.828556, 18.146851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952196, 36.113960, 18.446329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811188, 36.469162, 18.564426>,  <26.726582, 36.682285, 18.635284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811188, 36.469162, 18.564426>,  <26.952196, 36.113960, 18.446329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811188, 36.469162, 18.564426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283443, -0.199357, 0.938039,
		0.891845, 0.414366, -0.181422,
		-0.352523, 0.888008, 0.295244,
		26.705431, 36.735565, 18.653000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463490, 36.533901, 18.725832>,  <26.952196, 36.113960, 18.446329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463490, 36.533901, 18.725832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110067, 36.601437, 18.900564>,  <26.898014, 36.641960, 19.005404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110067, 36.601437, 18.900564>,  <27.463490, 36.533901, 18.725832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110067, 36.601437, 18.900564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409643, -0.173457, 0.895603,
		0.226988, 0.970260, 0.084094,
		-0.883555, 0.168843, 0.436833,
		26.845001, 36.652088, 19.031614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582928, 36.993549, 19.261169>,  <27.463490, 36.533901, 18.725832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582928, 36.993549, 19.261169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234474, 36.832623, 19.373789>,  <27.025402, 36.736065, 19.441360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234474, 36.832623, 19.373789>,  <27.582928, 36.993549, 19.261169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234474, 36.832623, 19.373789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331032, -0.057657, 0.941856,
		-0.362692, 0.913683, 0.183407,
		-0.871132, -0.402318, 0.281546,
		26.973135, 36.711926, 19.458252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296354, 37.358875, 19.782421>,  <27.582928, 36.993549, 19.261169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296354, 37.358875, 19.782421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146593, 36.989235, 19.813038>,  <27.056736, 36.767452, 19.831408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146593, 36.989235, 19.813038>,  <27.296354, 37.358875, 19.782421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146593, 36.989235, 19.813038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460260, -0.113543, 0.880493,
		-0.804975, 0.364888, 0.467838,
		-0.374401, -0.924102, 0.076544,
		27.034273, 36.712006, 19.836000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001951, 37.295841, 20.405449>,  <27.296354, 37.358875, 19.782421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001951, 37.295841, 20.405449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105484, 36.927834, 20.287752>,  <27.167603, 36.707031, 20.217134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105484, 36.927834, 20.287752>,  <27.001951, 37.295841, 20.405449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105484, 36.927834, 20.287752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490424, -0.137270, 0.860606,
		-0.832161, -0.367055, 0.415667,
		0.258831, -0.920015, -0.294243,
		27.183134, 36.651829, 20.199480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891369, 36.906269, 21.023661>,  <27.001951, 37.295841, 20.405449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891369, 36.906269, 21.023661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146255, 36.694984, 20.799179>,  <27.299187, 36.568214, 20.664490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146255, 36.694984, 20.799179>,  <26.891369, 36.906269, 21.023661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146255, 36.694984, 20.799179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526948, -0.232764, 0.817403,
		-0.562389, -0.816586, 0.130019,
		0.637216, -0.528212, -0.561202,
		27.337421, 36.536522, 20.630819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843878, 36.259808, 21.261297>,  <26.891369, 36.906269, 21.023661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843878, 36.259808, 21.261297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186937, 36.267727, 21.055756>,  <27.392773, 36.272480, 20.932430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186937, 36.267727, 21.055756>,  <26.843878, 36.259808, 21.261297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186937, 36.267727, 21.055756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463365, -0.463097, 0.755536,
		-0.223005, -0.886086, -0.406349,
		0.857649, 0.019799, -0.513854,
		27.444233, 36.273666, 20.901600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170532, 35.653282, 21.427305>,  <26.843878, 36.259808, 21.261297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170532, 35.653282, 21.427305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457876, 35.902599, 21.303715>,  <27.630283, 36.052189, 21.229561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457876, 35.902599, 21.303715>,  <27.170532, 35.653282, 21.427305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457876, 35.902599, 21.303715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578552, -0.288631, 0.762870,
		0.386309, -0.726775, -0.567947,
		0.718362, 0.623290, -0.308976,
		27.673386, 36.089588, 21.211021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827347, 35.315411, 21.660135>,  <27.170532, 35.653282, 21.427305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827347, 35.315411, 21.660135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931252, 35.689449, 21.563702>,  <27.993595, 35.913872, 21.505842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931252, 35.689449, 21.563702>,  <27.827347, 35.315411, 21.660135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931252, 35.689449, 21.563702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630799, 0.024718, 0.775553,
		0.731174, -0.353535, -0.583436,
		0.259763, 0.935095, -0.241082,
		28.009180, 35.969978, 21.491377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574488, 35.362976, 21.731346>,  <27.827347, 35.315411, 21.660135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574488, 35.362976, 21.731346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459805, 35.745850, 21.747332>,  <28.390995, 35.975574, 21.756922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459805, 35.745850, 21.747332>,  <28.574488, 35.362976, 21.731346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459805, 35.745850, 21.747332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578504, 0.139729, 0.803623,
		0.763632, 0.253521, -0.593796,
		-0.286706, 0.957185, 0.039962,
		28.373793, 36.033005, 21.759319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213240, 35.792786, 21.909174>,  <28.574488, 35.362976, 21.731346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213240, 35.792786, 21.909174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911060, 36.044834, 21.980997>,  <28.729753, 36.196064, 22.024090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911060, 36.044834, 21.980997>,  <29.213240, 35.792786, 21.909174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911060, 36.044834, 21.980997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500842, 0.378669, 0.778311,
		0.422441, 0.677902, -0.601658,
		-0.755447, 0.630126, 0.179557,
		28.684425, 36.233871, 22.034864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567518, 36.450584, 22.121433>,  <29.213240, 35.792786, 21.909174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567518, 36.450584, 22.121433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196840, 36.400146, 22.263042>,  <28.974434, 36.369884, 22.348009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196840, 36.400146, 22.263042>,  <29.567518, 36.450584, 22.121433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196840, 36.400146, 22.263042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323209, 0.213243, 0.921989,
		-0.191755, 0.968827, -0.156855,
		-0.926696, -0.126099, 0.354024,
		28.918831, 36.362316, 22.369249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520472, 36.884892, 22.714361>,  <29.567518, 36.450584, 22.121433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520472, 36.884892, 22.714361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192007, 36.668987, 22.788500>,  <28.994928, 36.539444, 22.832983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192007, 36.668987, 22.788500>,  <29.520472, 36.884892, 22.714361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192007, 36.668987, 22.788500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229289, -0.014630, 0.973248,
		-0.522607, 0.841693, 0.135774,
		-0.821163, -0.539758, 0.185345,
		28.945658, 36.507061, 22.844103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232800, 37.136486, 23.350885>,  <29.520472, 36.884892, 22.714361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232800, 37.136486, 23.350885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080894, 36.768234, 23.314623>,  <28.989752, 36.547283, 23.292866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080894, 36.768234, 23.314623>,  <29.232800, 37.136486, 23.350885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080894, 36.768234, 23.314623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146609, -0.156657, 0.976711,
		-0.913392, 0.357629, 0.194465,
		-0.379764, -0.920630, -0.090657,
		28.966965, 36.492046, 23.287426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570765, 37.010906, 23.816589>,  <29.232800, 37.136486, 23.350885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570765, 37.010906, 23.816589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743666, 36.663635, 23.719082>,  <28.847406, 36.455273, 23.660578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743666, 36.663635, 23.719082>,  <28.570765, 37.010906, 23.816589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743666, 36.663635, 23.719082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074410, -0.303748, 0.949842,
		-0.898676, -0.392435, -0.195898,
		0.432255, -0.868178, -0.243770,
		28.873343, 36.403183, 23.645950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118229, 36.587399, 24.248486>,  <28.570765, 37.010906, 23.816589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118229, 36.587399, 24.248486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446283, 36.382401, 24.146721>,  <28.643116, 36.259399, 24.085663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446283, 36.382401, 24.146721>,  <28.118229, 36.587399, 24.248486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446283, 36.382401, 24.146721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098107, -0.312097, 0.944971,
		-0.563698, -0.799962, -0.205681,
		0.820134, -0.512500, -0.254410,
		28.692324, 36.228649, 24.070398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962679, 35.934559, 24.495108>,  <28.118229, 36.587399, 24.248486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962679, 35.934559, 24.495108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358761, 35.973129, 24.454708>,  <28.596409, 35.996269, 24.430470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358761, 35.973129, 24.454708>,  <27.962679, 35.934559, 24.495108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358761, 35.973129, 24.454708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125418, -0.296171, 0.946865,
		0.061387, -0.950255, -0.305363,
		0.990203, 0.096424, -0.100998,
		28.655821, 36.002056, 24.424408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275564, 35.338284, 24.896870>,  <27.962679, 35.934559, 24.495108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275564, 35.338284, 24.896870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576986, 35.594036, 24.835758>,  <28.757839, 35.747490, 24.799091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576986, 35.594036, 24.835758>,  <28.275564, 35.338284, 24.896870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576986, 35.594036, 24.835758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319246, -0.152772, 0.935277,
		0.574661, -0.753557, -0.319243,
		0.753556, 0.639385, -0.152778,
		28.803053, 35.785851, 24.789925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853447, 34.957550, 25.146408>,  <28.275564, 35.338284, 24.896870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853447, 34.957550, 25.146408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951214, 35.345387, 25.141575>,  <29.009874, 35.578091, 25.138676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951214, 35.345387, 25.141575>,  <28.853447, 34.957550, 25.146408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951214, 35.345387, 25.141575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243997, -0.049439, 0.968515,
		0.938471, -0.239667, -0.248662,
		0.244415, 0.969596, -0.012081,
		29.024538, 35.636265, 25.137951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544418, 34.961155, 25.295662>,  <28.853447, 34.957550, 25.146408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544418, 34.961155, 25.295662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397892, 35.314152, 25.413662>,  <29.309977, 35.525948, 25.484463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397892, 35.314152, 25.413662>,  <29.544418, 34.961155, 25.295662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397892, 35.314152, 25.413662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341479, -0.167418, 0.924858,
		0.865567, 0.439526, -0.240024,
		-0.366314, 0.882490, 0.295001,
		29.287998, 35.578899, 25.502163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974113, 35.214863, 25.727604>,  <29.544418, 34.961155, 25.295662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974113, 35.214863, 25.727604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713930, 35.504333, 25.819860>,  <29.557821, 35.678017, 25.875214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713930, 35.504333, 25.819860>,  <29.974113, 35.214863, 25.727604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713930, 35.504333, 25.819860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264088, -0.069229, 0.962011,
		0.712154, 0.686655, -0.146085,
		-0.650456, 0.723680, 0.230639,
		29.518793, 35.721436, 25.889051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269648, 35.928772, 26.035662>,  <29.974113, 35.214863, 25.727604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269648, 35.928772, 26.035662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892382, 35.886360, 26.161648>,  <29.666023, 35.860912, 26.237240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892382, 35.886360, 26.161648>,  <30.269648, 35.928772, 26.035662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892382, 35.886360, 26.161648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317495, -0.007474, 0.948230,
		-0.098187, 0.994335, 0.040713,
		-0.943163, -0.106030, 0.314963,
		29.609432, 35.854549, 26.256136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257534, 36.343403, 26.594807>,  <30.269648, 35.928772, 26.035662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257534, 36.343403, 26.594807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951328, 36.094116, 26.658796>,  <29.767605, 35.944546, 26.697189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951328, 36.094116, 26.658796>,  <30.257534, 36.343403, 26.594807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951328, 36.094116, 26.658796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336816, -0.176304, 0.924917,
		-0.548219, 0.761918, 0.344872,
		-0.765513, -0.623216, 0.159973,
		29.721674, 35.907150, 26.706789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897345, 36.561687, 27.251595>,  <30.257534, 36.343403, 26.594807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897345, 36.561687, 27.251595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734440, 36.203632, 27.179073>,  <29.636698, 35.988800, 27.135561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734440, 36.203632, 27.179073>,  <29.897345, 36.561687, 27.251595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734440, 36.203632, 27.179073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166801, -0.268074, 0.948848,
		-0.897950, 0.356188, 0.258486,
		-0.407262, -0.895135, -0.181305,
		29.612261, 35.935093, 27.124681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437553, 36.394646, 27.739588>,  <29.897345, 36.561687, 27.251595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437553, 36.394646, 27.739588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556181, 36.038799, 27.600662>,  <29.627357, 35.825291, 27.517307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556181, 36.038799, 27.600662>,  <29.437553, 36.394646, 27.739588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556181, 36.038799, 27.600662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218960, -0.290650, 0.931439,
		-0.929572, -0.352283, 0.108594,
		0.296568, -0.889618, -0.347316,
		29.645151, 35.771915, 27.496468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946705, 35.843197, 27.988344>,  <29.437553, 36.394646, 27.739588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946705, 35.843197, 27.988344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287098, 35.668941, 27.871012>,  <29.491335, 35.564388, 27.800611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287098, 35.668941, 27.871012>,  <28.946705, 35.843197, 27.988344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287098, 35.668941, 27.871012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117342, -0.386691, 0.914714,
		-0.511916, -0.812826, -0.277949,
		0.850983, -0.435641, -0.293332,
		29.542393, 35.538250, 27.783012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967260, 35.141796, 28.279369>,  <28.946705, 35.843197, 27.988344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967260, 35.141796, 28.279369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349627, 35.205814, 28.180895>,  <29.579046, 35.244225, 28.121809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349627, 35.205814, 28.180895>,  <28.967260, 35.141796, 28.279369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349627, 35.205814, 28.180895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291012, -0.404446, 0.867027,
		0.039197, -0.900448, -0.433193,
		0.955916, 0.160049, -0.246188,
		29.636402, 35.253830, 28.107038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328287, 34.612015, 28.523186>,  <28.967260, 35.141796, 28.279369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328287, 34.612015, 28.523186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625017, 34.877598, 28.485535>,  <29.803055, 35.036945, 28.462944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625017, 34.877598, 28.485535>,  <29.328287, 34.612015, 28.523186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625017, 34.877598, 28.485535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315665, -0.221895, 0.922560,
		0.591651, -0.714092, -0.374195,
		0.741825, 0.663954, -0.094130,
		29.847565, 35.076782, 28.457296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919090, 34.235065, 28.651247>,  <29.328287, 34.612015, 28.523186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919090, 34.235065, 28.651247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017626, 34.618450, 28.708757>,  <30.076746, 34.848480, 28.743263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017626, 34.618450, 28.708757>,  <29.919090, 34.235065, 28.651247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017626, 34.618450, 28.708757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347519, -0.225834, 0.910071,
		0.904737, -0.174219, -0.388715,
		0.246337, 0.958461, 0.143776,
		30.091526, 34.905987, 28.751890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614580, 34.253269, 28.943060>,  <29.919090, 34.235065, 28.651247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614580, 34.253269, 28.943060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444548, 34.593521, 29.066818>,  <30.342527, 34.797672, 29.141073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444548, 34.593521, 29.066818>,  <30.614580, 34.253269, 28.943060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444548, 34.593521, 29.066818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409464, -0.124131, 0.903842,
		0.807244, 0.510896, -0.295538,
		-0.425084, 0.850633, 0.309397,
		30.317022, 34.848713, 29.159637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138493, 34.547794, 29.331244>,  <30.614580, 34.253269, 28.943060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138493, 34.547794, 29.331244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774944, 34.683662, 29.428061>,  <30.556816, 34.765182, 29.486151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774944, 34.683662, 29.428061>,  <31.138493, 34.547794, 29.331244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774944, 34.683662, 29.428061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192055, -0.174306, 0.965781,
		0.370233, 0.924253, 0.093187,
		-0.908869, 0.339667, 0.242041,
		30.502283, 34.785564, 29.500673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274101, 34.833130, 30.000658>,  <31.138493, 34.547794, 29.331244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274101, 34.833130, 30.000658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881054, 34.762863, 29.976645>,  <30.645226, 34.720703, 29.962236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881054, 34.762863, 29.976645>,  <31.274101, 34.833130, 30.000658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881054, 34.762863, 29.976645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040792, -0.111164, 0.992965,
		-0.181100, 0.978154, 0.102066,
		-0.982618, -0.175662, -0.060032,
		30.586269, 34.710163, 29.958635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109043, 35.234779, 30.506535>,  <31.274101, 34.833130, 30.000658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109043, 35.234779, 30.506535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829983, 34.954140, 30.448513>,  <30.662546, 34.785755, 30.413700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829983, 34.954140, 30.448513>,  <31.109043, 35.234779, 30.506535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829983, 34.954140, 30.448513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202202, -0.001415, 0.979343,
		-0.687313, 0.712568, -0.140878,
		-0.697649, -0.701601, -0.145055,
		30.620687, 34.743660, 30.404997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542147, 35.380009, 30.995800>,  <31.109043, 35.234779, 30.506535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542147, 35.380009, 30.995800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431313, 35.020626, 30.859566>,  <30.364813, 34.804996, 30.777826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431313, 35.020626, 30.859566>,  <30.542147, 35.380009, 30.995800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431313, 35.020626, 30.859566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074740, -0.333234, 0.939877,
		-0.957934, 0.285881, 0.025183,
		-0.277085, -0.898458, -0.340583,
		30.348186, 34.751087, 30.757391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872272, 35.254681, 31.399458>,  <30.542147, 35.380009, 30.995800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872272, 35.254681, 31.399458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981438, 34.892696, 31.268881>,  <30.046936, 34.675507, 31.190535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981438, 34.892696, 31.268881>,  <29.872272, 35.254681, 31.399458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981438, 34.892696, 31.268881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285900, -0.400286, 0.870650,
		-0.918575, -0.144280, -0.367971,
		0.272911, -0.904961, -0.326443,
		30.063311, 34.621208, 31.170948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388977, 34.861183, 31.705648>,  <29.872272, 35.254681, 31.399458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388977, 34.861183, 31.705648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668245, 34.596462, 31.596420>,  <29.835806, 34.437630, 31.530884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668245, 34.596462, 31.596420>,  <29.388977, 34.861183, 31.705648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668245, 34.596462, 31.596420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200635, -0.547002, 0.812733,
		-0.687242, -0.512640, -0.514683,
		0.698172, -0.661807, -0.273070,
		29.877697, 34.397919, 31.514500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129618, 34.226147, 31.981054>,  <29.388977, 34.861183, 31.705648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129618, 34.226147, 31.981054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511295, 34.130650, 31.908930>,  <29.740303, 34.073353, 31.865654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511295, 34.130650, 31.908930>,  <29.129618, 34.226147, 31.981054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511295, 34.130650, 31.908930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022476, -0.543780, 0.838927,
		-0.298336, -0.804553, -0.513507,
		0.954197, -0.238741, -0.180312,
		29.797554, 34.059029, 31.854836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135008, 33.544189, 32.113956>,  <29.129618, 34.226147, 31.981054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135008, 33.544189, 32.113956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512447, 33.673241, 32.143711>,  <29.738911, 33.750671, 32.161564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512447, 33.673241, 32.143711>,  <29.135008, 33.544189, 32.113956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512447, 33.673241, 32.143711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185429, -0.701087, 0.688545,
		0.274299, -0.635915, -0.721369,
		0.943598, 0.322630, 0.074390,
		29.795527, 33.770031, 32.166027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556892, 32.872501, 32.103264>,  <29.135008, 33.544189, 32.113956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556892, 32.872501, 32.103264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762625, 33.156864, 32.295132>,  <29.886065, 33.327480, 32.410252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762625, 33.156864, 32.295132>,  <29.556892, 32.872501, 32.103264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762625, 33.156864, 32.295132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237240, -0.655438, 0.717021,
		0.824126, -0.254987, -0.505765,
		0.514329, 0.710903, 0.479670,
		29.916924, 33.370136, 32.439034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094538, 32.493820, 32.400444>,  <29.556892, 32.872501, 32.103264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094538, 32.493820, 32.400444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065388, 32.839611, 32.599392>,  <30.047897, 33.047085, 32.718761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065388, 32.839611, 32.599392>,  <30.094538, 32.493820, 32.400444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065388, 32.839611, 32.599392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197633, -0.476289, 0.856790,
		0.977564, 0.160733, -0.136139,
		-0.072873, 0.864473, 0.497369,
		30.043526, 33.098953, 32.748604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628651, 32.490383, 32.877281>,  <30.094538, 32.493820, 32.400444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628651, 32.490383, 32.877281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386826, 32.772877, 33.024654>,  <30.241732, 32.942371, 33.113079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386826, 32.772877, 33.024654>,  <30.628651, 32.490383, 32.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386826, 32.772877, 33.024654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241460, -0.278295, 0.929650,
		0.759081, 0.650992, -0.002280,
		-0.604561, 0.706230, 0.368437,
		30.205458, 32.984745, 33.135185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000515, 32.931644, 33.328545>,  <30.628651, 32.490383, 32.877281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000515, 32.931644, 33.328545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623959, 32.952248, 33.461891>,  <30.398026, 32.964611, 33.541897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623959, 32.952248, 33.461891>,  <31.000515, 32.931644, 33.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623959, 32.952248, 33.461891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323916, -0.137767, 0.936001,
		0.094140, 0.989124, 0.113008,
		-0.941390, 0.051510, 0.333363,
		30.341541, 32.967701, 33.561901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190128, 33.355827, 32.684364>,  <31.000515, 32.931644, 33.328545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190128, 33.355827, 32.684364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550108, 33.190750, 32.740620>,  <31.766096, 33.091705, 32.774372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550108, 33.190750, 32.740620>,  <31.190128, 33.355827, 32.684364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550108, 33.190750, 32.740620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385696, 0.603162, -0.698165,
		0.203300, 0.682555, 0.701988,
		0.899949, -0.412691, 0.140636,
		31.820093, 33.066944, 32.782810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667246, 33.978752, 32.575619>,  <31.190128, 33.355827, 32.684364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667246, 33.978752, 32.575619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879486, 33.642662, 32.530922>,  <32.006828, 33.441010, 32.504105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879486, 33.642662, 32.530922>,  <31.667246, 33.978752, 32.575619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879486, 33.642662, 32.530922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496704, 0.415043, -0.762249,
		0.686840, 0.348943, 0.637565,
		0.530599, -0.840225, -0.111747,
		32.038666, 33.390594, 32.497398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320656, 34.247669, 32.298897>,  <31.667246, 33.978752, 32.575619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320656, 34.247669, 32.298897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330093, 33.851616, 32.243656>,  <32.335754, 33.613983, 32.210510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330093, 33.851616, 32.243656>,  <32.320656, 34.247669, 32.298897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330093, 33.851616, 32.243656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407577, 0.135668, -0.903037,
		0.912866, -0.034980, 0.406758,
		0.023595, -0.990137, -0.138104,
		32.337173, 33.554573, 32.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031578, 34.129948, 32.014481>,  <32.320656, 34.247669, 32.298897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031578, 34.129948, 32.014481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818810, 33.802391, 31.928255>,  <32.691147, 33.605858, 31.876520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818810, 33.802391, 31.928255>,  <33.031578, 34.129948, 32.014481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818810, 33.802391, 31.928255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542025, -0.133679, -0.829662,
		0.650589, -0.558159, 0.514969,
		-0.531923, -0.818895, -0.215566,
		32.659233, 33.556721, 31.863585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550056, 33.635918, 31.803244>,  <33.031578, 34.129948, 32.014481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550056, 33.635918, 31.803244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195217, 33.543476, 31.643423>,  <32.982311, 33.488010, 31.547531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195217, 33.543476, 31.643423>,  <33.550056, 33.635918, 31.803244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195217, 33.543476, 31.643423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395915, 0.064015, -0.916053,
		0.237284, -0.970820, 0.034711,
		-0.887101, -0.231107, -0.399552,
		32.929089, 33.474144, 31.523558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736942, 33.418785, 31.166712>,  <33.550056, 33.635918, 31.803244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736942, 33.418785, 31.166712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342140, 33.439594, 31.105896>,  <33.105259, 33.452080, 31.069407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342140, 33.439594, 31.105896>,  <33.736942, 33.418785, 31.166712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342140, 33.439594, 31.105896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157910, 0.138634, -0.977673,
		-0.029782, -0.988977, -0.145048,
		-0.987004, 0.052021, -0.152040,
		33.046040, 33.455200, 31.060284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635551, 33.133617, 30.511410>,  <33.736942, 33.418785, 31.166712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635551, 33.133617, 30.511410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332546, 33.383442, 30.587412>,  <33.150745, 33.533337, 30.633013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332546, 33.383442, 30.587412>,  <33.635551, 33.133617, 30.511410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332546, 33.383442, 30.587412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143518, 0.443253, -0.884833,
		-0.636854, -0.642999, -0.425404,
		-0.757508, 0.624563, 0.190006,
		33.105293, 33.570812, 30.644413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289810, 33.166046, 29.885708>,  <33.635551, 33.133617, 30.511410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289810, 33.166046, 29.885708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167358, 33.497707, 30.072811>,  <33.093887, 33.696705, 30.185074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167358, 33.497707, 30.072811>,  <33.289810, 33.166046, 29.885708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167358, 33.497707, 30.072811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063408, 0.472497, -0.879048,
		-0.949876, -0.298762, -0.092071,
		-0.306130, 0.829149, 0.467758,
		33.075520, 33.746452, 30.213139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739376, 33.428238, 29.491283>,  <33.289810, 33.166046, 29.885708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739376, 33.428238, 29.491283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853161, 33.749344, 29.700909>,  <32.921432, 33.942009, 29.826685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853161, 33.749344, 29.700909>,  <32.739376, 33.428238, 29.491283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853161, 33.749344, 29.700909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066718, 0.561901, -0.824510,
		-0.956362, 0.199580, 0.213400,
		0.284465, 0.802767, 0.524065,
		32.938499, 33.990173, 29.858128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199734, 33.971439, 29.378778>,  <32.739376, 33.428238, 29.491283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199734, 33.971439, 29.378778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505558, 34.185574, 29.522362>,  <32.689053, 34.314056, 29.608513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505558, 34.185574, 29.522362>,  <32.199734, 33.971439, 29.378778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505558, 34.185574, 29.522362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093573, 0.643208, -0.759953,
		-0.637718, 0.547444, 0.541868,
		0.764565, 0.535339, 0.358959,
		32.734928, 34.346176, 29.630049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979723, 34.695145, 29.266706>,  <32.199734, 33.971439, 29.378778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979723, 34.695145, 29.266706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373775, 34.631416, 29.292421>,  <32.610207, 34.593178, 29.307850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373775, 34.631416, 29.292421>,  <31.979723, 34.695145, 29.266706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373775, 34.631416, 29.292421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141391, 0.539261, -0.830185,
		0.097600, 0.826930, 0.553769,
		0.985131, -0.159324, 0.064289,
		32.669315, 34.583618, 29.311708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237953, 35.351398, 29.287884>,  <31.979723, 34.695145, 29.266706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237953, 35.351398, 29.287884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542072, 35.132675, 29.147627>,  <32.724545, 35.001442, 29.063473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542072, 35.132675, 29.147627>,  <32.237953, 35.351398, 29.287884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542072, 35.132675, 29.147627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063966, 0.600204, -0.797285,
		0.646416, 0.583746, 0.491311,
		0.760299, -0.546805, -0.350642,
		32.770161, 34.968636, 29.042435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602211, 35.705082, 28.835178>,  <32.237953, 35.351398, 29.287884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602211, 35.705082, 28.835178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771465, 35.364967, 28.709976>,  <32.873016, 35.160900, 28.634855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771465, 35.364967, 28.709976>,  <32.602211, 35.705082, 28.835178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771465, 35.364967, 28.709976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054500, 0.368716, -0.927943,
		0.904426, 0.375587, 0.202357,
		0.423135, -0.850284, -0.313007,
		32.898407, 35.109882, 28.616074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109112, 35.932575, 28.471052>,  <32.602211, 35.705082, 28.835178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109112, 35.932575, 28.471052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033512, 35.565723, 28.330677>,  <32.988152, 35.345612, 28.246452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033512, 35.565723, 28.330677>,  <33.109112, 35.932575, 28.471052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033512, 35.565723, 28.330677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219267, 0.387770, -0.895297,
		0.957184, -0.092261, -0.274384,
		-0.188999, -0.917127, -0.350937,
		32.976810, 35.290585, 28.225395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468891, 35.793552, 27.887947>,  <33.109112, 35.932575, 28.471052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468891, 35.793552, 27.887947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178822, 35.520603, 27.851082>,  <33.004780, 35.356834, 27.828962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178822, 35.520603, 27.851082>,  <33.468891, 35.793552, 27.887947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178822, 35.520603, 27.851082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115764, 0.252760, -0.960579,
		0.678767, -0.685916, -0.262289,
		-0.725172, -0.682372, -0.092161,
		32.961269, 35.315891, 27.823433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621170, 35.477039, 27.299978>,  <33.468891, 35.793552, 27.887947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621170, 35.477039, 27.299978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240135, 35.375122, 27.366512>,  <33.011517, 35.313972, 27.406433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240135, 35.375122, 27.366512>,  <33.621170, 35.477039, 27.299978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240135, 35.375122, 27.366512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224623, 0.220082, -0.949267,
		0.205241, -0.941623, -0.266875,
		-0.952586, -0.254775, 0.166341,
		32.954361, 35.298683, 27.416412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470566, 34.963181, 26.809048>,  <33.621170, 35.477039, 27.299978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470566, 34.963181, 26.809048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111973, 35.107777, 26.911526>,  <32.896816, 35.194534, 26.973013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111973, 35.107777, 26.911526>,  <33.470566, 34.963181, 26.809048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111973, 35.107777, 26.911526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156300, 0.283032, -0.946289,
		-0.414589, -0.888378, -0.197233,
		-0.896486, 0.361494, 0.256196,
		32.843029, 35.216225, 26.988384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054600, 34.538227, 26.446190>,  <33.470566, 34.963181, 26.809048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054600, 34.538227, 26.446190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832947, 34.860031, 26.531700>,  <32.699955, 35.053116, 26.583006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832947, 34.860031, 26.531700>,  <33.054600, 34.538227, 26.446190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832947, 34.860031, 26.531700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189136, 0.128411, -0.973518,
		-0.810660, -0.579886, 0.081006,
		-0.554128, 0.804514, 0.213775,
		32.666710, 35.101387, 26.595833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357952, 34.444389, 26.228409>,  <33.054600, 34.538227, 26.446190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357952, 34.444389, 26.228409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408390, 34.841133, 26.235405>,  <32.438652, 35.079182, 26.239603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408390, 34.841133, 26.235405>,  <32.357952, 34.444389, 26.228409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408390, 34.841133, 26.235405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488631, 0.077444, -0.869047,
		-0.863331, 0.101035, 0.494421,
		0.126094, 0.991864, 0.017490,
		32.446217, 35.138691, 26.240652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711679, 34.813992, 26.077755>,  <32.357952, 34.444389, 26.228409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711679, 34.813992, 26.077755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003345, 35.077179, 26.002508>,  <32.178345, 35.235092, 25.957359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003345, 35.077179, 26.002508>,  <31.711679, 34.813992, 26.077755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003345, 35.077179, 26.002508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332990, 0.100980, -0.937508,
		-0.597858, 0.746241, 0.292729,
		0.729167, 0.657972, -0.188119,
		32.222095, 35.274570, 25.946072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408949, 35.482056, 25.867786>,  <31.711679, 34.813992, 26.077755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408949, 35.482056, 25.867786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786322, 35.521595, 25.741194>,  <32.012745, 35.545319, 25.665237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786322, 35.521595, 25.741194>,  <31.408949, 35.482056, 25.867786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786322, 35.521595, 25.741194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331500, 0.263019, -0.906051,
		-0.006317, 0.959714, 0.280908,
		0.943434, 0.098845, -0.316484,
		32.069351, 35.551247, 25.646248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535826, 36.205685, 25.757223>,  <31.408949, 35.482056, 25.867786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535826, 36.205685, 25.757223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752958, 35.964088, 25.523806>,  <31.883238, 35.819130, 25.383755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752958, 35.964088, 25.523806>,  <31.535826, 36.205685, 25.757223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752958, 35.964088, 25.523806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557345, 0.260694, -0.788292,
		0.628251, 0.753146, -0.195120,
		0.542832, -0.603995, -0.583544,
		31.915808, 35.782890, 25.348743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823727, 36.612946, 25.093410>,  <31.535826, 36.205685, 25.757223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823727, 36.612946, 25.093410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865818, 36.227638, 24.994579>,  <31.891073, 35.996456, 24.935280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865818, 36.227638, 24.994579>,  <31.823727, 36.612946, 25.093410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865818, 36.227638, 24.994579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353090, 0.196080, -0.914812,
		0.929653, 0.183506, -0.319486,
		0.105229, -0.963265, -0.247080,
		31.897387, 35.938660, 24.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032288, 36.599106, 24.482710>,  <31.823727, 36.612946, 25.093410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032288, 36.599106, 24.482710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882092, 36.228527, 24.493357>,  <31.791973, 36.006180, 24.499744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882092, 36.228527, 24.493357>,  <32.032288, 36.599106, 24.482710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882092, 36.228527, 24.493357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193486, 0.050271, -0.979814,
		0.906404, -0.373062, -0.198131,
		-0.375492, -0.926443, 0.026617,
		31.769444, 35.950596, 24.501341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158733, 36.345036, 23.870432>,  <32.032288, 36.599106, 24.482710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158733, 36.345036, 23.870432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919083, 36.049545, 23.993937>,  <31.775291, 35.872253, 24.068039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919083, 36.049545, 23.993937>,  <32.158733, 36.345036, 23.870432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919083, 36.049545, 23.993937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222211, -0.217069, -0.950528,
		0.769199, -0.638098, -0.034100,
		-0.599129, -0.738723, 0.308761,
		31.739344, 35.827927, 24.086565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339355, 35.790337, 23.482908>,  <32.158733, 36.345036, 23.870432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339355, 35.790337, 23.482908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975811, 35.694893, 23.619753>,  <31.757685, 35.637627, 23.701859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975811, 35.694893, 23.619753>,  <32.339355, 35.790337, 23.482908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975811, 35.694893, 23.619753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243315, -0.362891, -0.899504,
		0.338780, -0.900763, 0.271760,
		-0.908859, -0.238611, 0.342110,
		31.703154, 35.623310, 23.722385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237755, 35.108761, 23.249189>,  <32.339355, 35.790337, 23.482908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237755, 35.108761, 23.249189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883425, 35.277584, 23.326317>,  <31.670826, 35.378880, 23.372593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883425, 35.277584, 23.326317>,  <32.237755, 35.108761, 23.249189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883425, 35.277584, 23.326317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363762, -0.373658, -0.853262,
		-0.288079, -0.825982, 0.484525,
		-0.885826, 0.422058, 0.192818,
		31.617678, 35.404202, 23.384161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692150, 34.561981, 23.275049>,  <32.237755, 35.108761, 23.249189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692150, 34.561981, 23.275049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501476, 34.898792, 23.174038>,  <31.387072, 35.100880, 23.113432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501476, 34.898792, 23.174038>,  <31.692150, 34.561981, 23.275049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501476, 34.898792, 23.174038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339391, -0.441271, -0.830719,
		-0.810918, -0.310283, 0.496121,
		-0.476682, 0.842024, -0.252528,
		31.358471, 35.151398, 23.098280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117779, 34.314716, 22.899355>,  <31.692150, 34.561981, 23.275049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117779, 34.314716, 22.899355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113483, 34.703228, 22.804276>,  <31.110907, 34.936337, 22.747229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113483, 34.703228, 22.804276>,  <31.117779, 34.314716, 22.899355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113483, 34.703228, 22.804276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438387, -0.218221, -0.871892,
		-0.898722, 0.094839, 0.428141,
		-0.010740, 0.971280, -0.237697,
		31.110262, 34.994614, 22.732967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386671, 34.487362, 22.772308>,  <31.117779, 34.314716, 22.899355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386671, 34.487362, 22.772308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622217, 34.749603, 22.583237>,  <30.763546, 34.906948, 22.469793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622217, 34.749603, 22.583237>,  <30.386671, 34.487362, 22.772308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622217, 34.749603, 22.583237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485781, -0.180309, -0.855281,
		-0.645951, 0.733264, 0.212300,
		0.588867, 0.655601, -0.472677,
		30.798878, 34.946285, 22.441433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901344, 34.877148, 22.300880>,  <30.386671, 34.487362, 22.772308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901344, 34.877148, 22.300880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265917, 34.931259, 22.145451>,  <30.484661, 34.963726, 22.052193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265917, 34.931259, 22.145451>,  <29.901344, 34.877148, 22.300880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265917, 34.931259, 22.145451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372366, -0.130543, -0.918859,
		-0.175029, 0.982170, -0.068607,
		0.911432, 0.135280, -0.388576,
		30.539347, 34.971844, 22.028877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863655, 35.401207, 21.706738>,  <29.901344, 34.877148, 22.300880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863655, 35.401207, 21.706738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209133, 35.211166, 21.639439>,  <30.416420, 35.097141, 21.599058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209133, 35.211166, 21.639439>,  <29.863655, 35.401207, 21.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209133, 35.211166, 21.639439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225980, -0.066650, -0.971849,
		0.450512, 0.877404, -0.164928,
		0.863697, -0.475100, -0.168249,
		30.468243, 35.068638, 21.588964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107988, 35.808239, 21.031227>,  <29.863655, 35.401207, 21.706738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107988, 35.808239, 21.031227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321386, 35.471088, 21.059364>,  <30.449425, 35.268799, 21.076246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321386, 35.471088, 21.059364>,  <30.107988, 35.808239, 21.031227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321386, 35.471088, 21.059364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222778, -0.220259, -0.949661,
		0.815938, 0.490968, -0.305280,
		0.533493, -0.842874, 0.070341,
		30.481434, 35.218227, 21.080467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717463, 35.793823, 20.488005>,  <30.107988, 35.808239, 21.031227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717463, 35.793823, 20.488005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658558, 35.405884, 20.565674>,  <30.623215, 35.173119, 20.612276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658558, 35.405884, 20.565674>,  <30.717463, 35.793823, 20.488005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658558, 35.405884, 20.565674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337673, -0.135224, -0.931499,
		0.929673, -0.202740, -0.307580,
		-0.147260, -0.969851, 0.194174,
		30.614380, 35.114929, 20.623926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070311, 35.285492, 19.994154>,  <30.717463, 35.793823, 20.488005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070311, 35.285492, 19.994154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773100, 35.065784, 20.147104>,  <30.594774, 34.933960, 20.238874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773100, 35.065784, 20.147104>,  <31.070311, 35.285492, 19.994154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773100, 35.065784, 20.147104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218152, -0.341365, -0.914264,
		0.632709, -0.762740, 0.133819,
		-0.743027, -0.549271, 0.382378,
		30.550192, 34.901005, 20.261818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098684, 34.599152, 19.754642>,  <31.070311, 35.285492, 19.994154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098684, 34.599152, 19.754642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720032, 34.625889, 19.880766>,  <30.492840, 34.641930, 19.956440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720032, 34.625889, 19.880766>,  <31.098684, 34.599152, 19.754642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720032, 34.625889, 19.880766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314691, -0.403205, -0.859299,
		0.069699, -0.912666, 0.402721,
		-0.946631, 0.066841, 0.315310,
		30.436043, 34.645943, 19.975359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809977, 34.015171, 19.428785>,  <31.098684, 34.599152, 19.754642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809977, 34.015171, 19.428785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498281, 34.242821, 19.533770>,  <30.311264, 34.379410, 19.596760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498281, 34.242821, 19.533770>,  <30.809977, 34.015171, 19.428785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498281, 34.242821, 19.533770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426307, -0.174353, -0.887617,
		-0.459406, -0.803551, 0.378485,
		-0.779236, 0.569128, 0.262461,
		30.264511, 34.413559, 19.612509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099073, 33.619755, 19.314390>,  <30.809977, 34.015171, 19.428785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099073, 33.619755, 19.314390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026331, 34.013069, 19.310705>,  <29.982685, 34.249058, 19.308495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026331, 34.013069, 19.310705>,  <30.099073, 33.619755, 19.314390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026331, 34.013069, 19.310705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562149, -0.111647, -0.819465,
		-0.806794, -0.143844, 0.573055,
		-0.181855, 0.983282, -0.009214,
		29.971775, 34.308052, 19.307941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974173, 32.894585, 19.063305>,  <30.099073, 33.619755, 19.314390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974173, 32.894585, 19.063305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259443, 32.675213, 18.888672>,  <30.430605, 32.543591, 18.783892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259443, 32.675213, 18.888672>,  <29.974173, 32.894585, 19.063305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259443, 32.675213, 18.888672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542261, 0.036942, 0.839398,
		-0.444223, -0.835380, 0.323738,
		0.713175, -0.548430, -0.436584,
		30.473396, 32.510685, 18.757696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136013, 32.467163, 19.545567>,  <29.974173, 32.894585, 19.063305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136013, 32.467163, 19.545567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454292, 32.469440, 19.303299>,  <30.645260, 32.470806, 19.157938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454292, 32.469440, 19.303299>,  <30.136013, 32.467163, 19.545567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454292, 32.469440, 19.303299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603707, 0.073505, 0.793810,
		0.049030, -0.997279, 0.055057,
		0.795697, 0.005682, -0.605668,
		30.693001, 32.471149, 19.121599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584242, 31.931774, 19.754221>,  <30.136013, 32.467163, 19.545567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584242, 31.931774, 19.754221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818760, 32.193928, 19.563753>,  <30.959471, 32.351219, 19.449472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818760, 32.193928, 19.563753>,  <30.584242, 31.931774, 19.754221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818760, 32.193928, 19.563753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658597, -0.043351, 0.751246,
		0.471711, -0.754052, -0.457049,
		0.586293, 0.655382, -0.476167,
		30.994648, 32.390541, 19.420902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284395, 31.616503, 19.832949>,  <30.584242, 31.931774, 19.754221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284395, 31.616503, 19.832949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361994, 31.990208, 19.713272>,  <31.408554, 32.214432, 19.641466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361994, 31.990208, 19.713272>,  <31.284395, 31.616503, 19.832949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361994, 31.990208, 19.713272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717503, 0.072855, 0.692735,
		0.668995, -0.349059, -0.656204,
		0.193997, 0.934265, -0.299190,
		31.420193, 32.270489, 19.623514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995178, 31.616344, 19.708696>,  <31.284395, 31.616503, 19.832949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995178, 31.616344, 19.708696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849546, 31.983522, 19.771721>,  <31.762167, 32.203831, 19.809536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849546, 31.983522, 19.771721>,  <31.995178, 31.616344, 19.708696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849546, 31.983522, 19.771721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531466, 0.065834, 0.844517,
		0.764847, 0.391210, -0.511825,
		-0.364079, 0.917944, 0.157562,
		31.740322, 32.258907, 19.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543129, 32.082817, 20.022346>,  <31.995178, 31.616344, 19.708696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543129, 32.082817, 20.022346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227802, 32.313885, 20.107054>,  <32.038605, 32.452526, 20.157879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227802, 32.313885, 20.107054>,  <32.543129, 32.082817, 20.022346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227802, 32.313885, 20.107054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277691, 0.026920, 0.960293,
		0.549034, 0.815825, -0.181636,
		-0.788320, 0.577673, 0.211768,
		31.991306, 32.487186, 20.170584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793579, 32.708054, 20.432240>,  <32.543129, 32.082817, 20.022346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793579, 32.708054, 20.432240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403091, 32.722004, 20.517817>,  <32.168797, 32.730373, 20.569162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403091, 32.722004, 20.517817>,  <32.793579, 32.708054, 20.432240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403091, 32.722004, 20.517817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210450, -0.084033, 0.973986,
		0.051943, 0.995853, 0.074696,
		-0.976224, 0.034872, 0.213942,
		32.110226, 32.732464, 20.581999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733849, 33.134148, 20.981333>,  <32.793579, 32.708054, 20.432240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733849, 33.134148, 20.981333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355873, 33.005962, 21.007833>,  <32.129086, 32.929050, 21.023733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355873, 33.005962, 21.007833>,  <32.733849, 33.134148, 20.981333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355873, 33.005962, 21.007833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116123, -0.139095, 0.983447,
		-0.305939, 0.936995, 0.168650,
		-0.944943, -0.320459, 0.066252,
		32.072392, 32.909824, 21.027708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363777, 33.585510, 21.482866>,  <32.733849, 33.134148, 20.981333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363777, 33.585510, 21.482866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177422, 33.232723, 21.454351>,  <32.065609, 33.021049, 21.437243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177422, 33.232723, 21.454351>,  <32.363777, 33.585510, 21.482866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177422, 33.232723, 21.454351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003463, -0.082379, 0.996595,
		-0.884836, 0.464057, 0.041434,
		-0.465890, -0.881967, -0.071285,
		32.037655, 32.968132, 21.432966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862398, 33.572079, 22.014997>,  <32.363777, 33.585510, 21.482866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862398, 33.572079, 22.014997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911369, 33.185265, 21.925684>,  <31.940752, 32.953175, 21.872097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911369, 33.185265, 21.925684>,  <31.862398, 33.572079, 22.014997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911369, 33.185265, 21.925684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276702, -0.249312, 0.928052,
		-0.953126, -0.051835, -0.298102,
		0.122426, -0.967035, -0.223283,
		31.948097, 32.895153, 21.858700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427574, 33.319176, 22.417891>,  <31.862398, 33.572079, 22.014997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427574, 33.319176, 22.417891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692722, 33.034000, 22.326389>,  <31.851810, 32.862896, 22.271488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692722, 33.034000, 22.326389>,  <31.427574, 33.319176, 22.417891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692722, 33.034000, 22.326389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001495, -0.304260, 0.952588,
		-0.748733, -0.631785, -0.200619,
		0.662870, -0.712934, -0.228754,
		31.891584, 32.820122, 22.257763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105797, 32.660202, 22.590408>,  <31.427574, 33.319176, 22.417891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105797, 32.660202, 22.590408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501802, 32.605522, 22.576660>,  <31.739407, 32.572716, 22.568411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501802, 32.605522, 22.576660>,  <31.105797, 32.660202, 22.590408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501802, 32.605522, 22.576660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010833, -0.169347, 0.985497,
		-0.140534, -0.976031, -0.166175,
		0.990017, -0.136696, -0.034372,
		31.798807, 32.564510, 22.566349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218380, 32.211689, 23.195410>,  <31.105797, 32.660202, 22.590408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218380, 32.211689, 23.195410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581175, 32.337238, 23.083086>,  <31.798853, 32.412567, 23.015692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581175, 32.337238, 23.083086>,  <31.218380, 32.211689, 23.195410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581175, 32.337238, 23.083086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297223, -0.004665, 0.954797,
		0.298377, -0.949453, -0.097523,
		0.906989, 0.313875, -0.280807,
		31.853271, 32.431400, 22.998844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658573, 31.801048, 23.569450>,  <31.218380, 32.211689, 23.195410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658573, 31.801048, 23.569450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896036, 32.103043, 23.458048>,  <32.038513, 32.284241, 23.391207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896036, 32.103043, 23.458048>,  <31.658573, 31.801048, 23.569450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896036, 32.103043, 23.458048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464047, -0.038431, 0.884976,
		0.657443, -0.654612, -0.373165,
		0.593657, 0.754988, -0.278504,
		32.074135, 32.329540, 23.374496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320915, 31.608280, 23.648300>,  <31.658573, 31.801048, 23.569450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320915, 31.608280, 23.648300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334976, 32.008018, 23.651741>,  <32.343414, 32.247860, 23.653805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334976, 32.008018, 23.651741>,  <32.320915, 31.608280, 23.648300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334976, 32.008018, 23.651741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617568, -0.028487, 0.786002,
		0.785732, -0.022318, -0.618165,
		0.035151, 0.999345, 0.008600,
		32.345520, 32.307823, 23.654322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904652, 31.666151, 24.032980>,  <32.320915, 31.608280, 23.648300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904652, 31.666151, 24.032980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793850, 32.047417, 23.984413>,  <32.727367, 32.276176, 23.955273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793850, 32.047417, 23.984413>,  <32.904652, 31.666151, 24.032980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793850, 32.047417, 23.984413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543981, 0.259726, 0.797889,
		0.792056, 0.154972, -0.590450,
		-0.277006, 0.953166, -0.121416,
		32.710747, 32.333366, 23.947989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452377, 32.158798, 23.989069>,  <32.904652, 31.666151, 24.032980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452377, 32.158798, 23.989069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120564, 32.310932, 24.152636>,  <32.921474, 32.402214, 24.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120564, 32.310932, 24.152636>,  <33.452377, 32.158798, 23.989069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120564, 32.310932, 24.152636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422468, -0.051480, 0.904915,
		0.365224, 0.923414, -0.117976,
		-0.829537, 0.380338, 0.408915,
		32.871704, 32.425034, 24.275311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717739, 32.585728, 24.518093>,  <33.452377, 32.158798, 23.989069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717739, 32.585728, 24.518093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332603, 32.591480, 24.625971>,  <33.101521, 32.594933, 24.690697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332603, 32.591480, 24.625971>,  <33.717739, 32.585728, 24.518093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332603, 32.591480, 24.625971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259114, 0.330791, 0.907435,
		-0.076166, 0.943595, -0.322223,
		-0.962839, 0.014377, 0.269694,
		33.043751, 32.595795, 24.706879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586300, 33.167416, 24.869219>,  <33.717739, 32.585728, 24.518093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586300, 33.167416, 24.869219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294632, 32.926144, 24.998512>,  <33.119629, 32.781380, 25.076088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294632, 32.926144, 24.998512>,  <33.586300, 33.167416, 24.869219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294632, 32.926144, 24.998512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249885, 0.205036, 0.946318,
		-0.637076, 0.770800, 0.001219,
		-0.729172, -0.603181, 0.323235,
		33.075882, 32.745190, 25.095484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278397, 33.609375, 25.425938>,  <33.586300, 33.167416, 24.869219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278397, 33.609375, 25.425938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175552, 33.228619, 25.492630>,  <33.113846, 33.000164, 25.532646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175552, 33.228619, 25.492630>,  <33.278397, 33.609375, 25.425938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175552, 33.228619, 25.492630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227210, 0.108152, 0.967821,
		-0.939291, 0.286725, 0.188471,
		-0.257115, -0.951889, 0.166733,
		33.098419, 32.943050, 25.542650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831989, 33.610977, 25.998827>,  <33.278397, 33.609375, 25.425938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831989, 33.610977, 25.998827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957863, 33.231415, 25.989500>,  <33.033386, 33.003677, 25.983904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957863, 33.231415, 25.989500>,  <32.831989, 33.610977, 25.998827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957863, 33.231415, 25.989500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296637, 0.074980, 0.952042,
		-0.901654, -0.306512, 0.305076,
		0.314687, -0.948909, -0.023317,
		33.052269, 32.946743, 25.982506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782303, 33.368237, 26.714872>,  <32.831989, 33.610977, 25.998827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782303, 33.368237, 26.714872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009758, 33.086708, 26.544561>,  <33.146233, 32.917789, 26.442375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009758, 33.086708, 26.544561>,  <32.782303, 33.368237, 26.714872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009758, 33.086708, 26.544561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435534, -0.181494, 0.881686,
		-0.697825, -0.686801, 0.203334,
		0.568639, -0.703821, -0.425776,
		33.180351, 32.875561, 26.416828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682556, 32.813290, 27.191191>,  <32.782303, 33.368237, 26.714872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682556, 32.813290, 27.191191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022293, 32.728069, 26.998020>,  <33.226135, 32.676937, 26.882118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022293, 32.728069, 26.998020>,  <32.682556, 32.813290, 27.191191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022293, 32.728069, 26.998020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433052, -0.241838, 0.868320,
		-0.301794, -0.946636, -0.113138,
		0.849345, -0.213059, -0.482928,
		33.277096, 32.664154, 26.853142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895775, 32.163231, 27.420288>,  <32.682556, 32.813290, 27.191191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895775, 32.163231, 27.420288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209816, 32.379940, 27.300220>,  <33.398239, 32.509964, 27.228180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209816, 32.379940, 27.300220>,  <32.895775, 32.163231, 27.420288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209816, 32.379940, 27.300220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465995, -0.197437, 0.862477,
		0.408000, -0.817009, -0.407470,
		0.785101, 0.541770, -0.300168,
		33.445347, 32.542473, 27.210171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397568, 31.839890, 27.863224>,  <32.895775, 32.163231, 27.420288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397568, 31.839890, 27.863224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601997, 32.140549, 27.696451>,  <33.724655, 32.320946, 27.596388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601997, 32.140549, 27.696451>,  <33.397568, 31.839890, 27.863224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601997, 32.140549, 27.696451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613903, 0.020304, 0.789121,
		0.601608, -0.659249, -0.451063,
		0.511069, 0.751650, -0.416929,
		33.755318, 32.366043, 27.571373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077427, 31.728529, 27.925838>,  <33.397568, 31.839890, 27.863224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077427, 31.728529, 27.925838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102184, 32.124306, 27.873415>,  <34.117039, 32.361771, 27.841961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102184, 32.124306, 27.873415>,  <34.077427, 31.728529, 27.925838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102184, 32.124306, 27.873415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584256, 0.070544, 0.808498,
		0.809206, -0.126609, -0.573720,
		0.061891, 0.989441, -0.131057,
		34.120750, 32.421139, 27.834097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810501, 31.878340, 27.861347>,  <34.077427, 31.728529, 27.925838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810501, 31.878340, 27.861347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576015, 32.169388, 28.003849>,  <34.435322, 32.344017, 28.089350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576015, 32.169388, 28.003849>,  <34.810501, 31.878340, 27.861347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576015, 32.169388, 28.003849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528718, 0.010416, 0.848733,
		0.613845, 0.685901, -0.390813,
		-0.586218, 0.727621, 0.356254,
		34.400150, 32.387672, 28.110725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334282, 32.299019, 28.188686>,  <34.810501, 31.878340, 27.861347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334282, 32.299019, 28.188686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995705, 32.419975, 28.364002>,  <34.792557, 32.492550, 28.469191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995705, 32.419975, 28.364002>,  <35.334282, 32.299019, 28.188686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995705, 32.419975, 28.364002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474864, 0.056267, 0.878259,
		0.240914, 0.951523, -0.191220,
		-0.846442, 0.302388, 0.438289,
		34.741772, 32.510693, 28.495489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493145, 32.938503, 28.616405>,  <35.334282, 32.299019, 28.188686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493145, 32.938503, 28.616405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156921, 32.775272, 28.758919>,  <34.955189, 32.677334, 28.844427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156921, 32.775272, 28.758919>,  <35.493145, 32.938503, 28.616405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156921, 32.775272, 28.758919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401159, -0.026907, 0.915613,
		-0.364052, 0.912552, 0.186319,
		-0.840558, -0.408074, 0.356283,
		34.904755, 32.652851, 28.865805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459435, 33.128220, 29.338957>,  <35.493145, 32.938503, 28.616405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459435, 33.128220, 29.338957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206398, 32.823994, 29.280495>,  <35.054577, 32.641457, 29.245417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206398, 32.823994, 29.280495>,  <35.459435, 33.128220, 29.338957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206398, 32.823994, 29.280495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285769, -0.404619, 0.868688,
		-0.719835, 0.507758, 0.473306,
		-0.632592, -0.760569, -0.146157,
		35.016621, 32.595821, 29.236649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043652, 33.109241, 29.934814>,  <35.459435, 33.128220, 29.338957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043652, 33.109241, 29.934814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028393, 32.746983, 29.765888>,  <35.019238, 32.529629, 29.664532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028393, 32.746983, 29.765888>,  <35.043652, 33.109241, 29.934814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028393, 32.746983, 29.765888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382451, -0.403677, 0.831130,
		-0.923188, -0.129812, 0.361763,
		-0.038144, -0.905645, -0.422316,
		35.016949, 32.475288, 29.639193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759094, 32.655102, 30.440491>,  <35.043652, 33.109241, 29.934814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759094, 32.655102, 30.440491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922729, 32.413074, 30.167276>,  <35.020908, 32.267857, 30.003347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922729, 32.413074, 30.167276>,  <34.759094, 32.655102, 30.440491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922729, 32.413074, 30.167276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323599, -0.603689, 0.728590,
		-0.853190, -0.519085, -0.051160,
		0.409084, -0.605070, -0.683037,
		35.045456, 32.231552, 29.962366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509098, 32.039444, 30.680969>,  <34.759094, 32.655102, 30.440491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509098, 32.039444, 30.680969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824261, 31.949724, 30.451571>,  <35.013359, 31.895893, 30.313932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824261, 31.949724, 30.451571>,  <34.509098, 32.039444, 30.680969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824261, 31.949724, 30.451571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258035, -0.725347, 0.638193,
		-0.559126, -0.650817, -0.513629,
		0.787906, -0.224296, -0.573494,
		35.060631, 31.882435, 30.279522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671326, 31.315023, 30.876854>,  <34.509098, 32.039444, 30.680969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671326, 31.315023, 30.876854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000938, 31.435837, 30.685129>,  <35.198708, 31.508326, 30.570095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000938, 31.435837, 30.685129>,  <34.671326, 31.315023, 30.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000938, 31.435837, 30.685129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528367, -0.715001, 0.457822,
		-0.204430, -0.630514, -0.748772,
		0.824037, 0.302034, -0.479311,
		35.248150, 31.526447, 30.541336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049732, 30.694508, 30.825321>,  <34.671326, 31.315023, 30.876854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049732, 30.694508, 30.825321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314850, 30.991570, 30.787035>,  <35.473923, 31.169807, 30.764063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314850, 30.991570, 30.787035>,  <35.049732, 30.694508, 30.825321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314850, 30.991570, 30.787035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627619, -0.481259, 0.611952,
		0.408405, -0.465674, -0.785082,
		0.662798, 0.742656, -0.095717,
		35.513691, 31.214367, 30.758320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707146, 30.349718, 30.670641>,  <35.049732, 30.694508, 30.825321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707146, 30.349718, 30.670641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769730, 30.717007, 30.816185>,  <35.807281, 30.937380, 30.903511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769730, 30.717007, 30.816185>,  <35.707146, 30.349718, 30.670641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769730, 30.717007, 30.816185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623837, -0.377481, 0.684350,
		0.765734, 0.119916, -0.631880,
		0.156458, 0.918220, 0.363858,
		35.816666, 30.992474, 30.925343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363873, 30.326689, 30.913750>,  <35.707146, 30.349718, 30.670641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363873, 30.326689, 30.913750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236759, 30.668064, 31.078993>,  <36.160492, 30.872889, 31.178139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236759, 30.668064, 31.078993>,  <36.363873, 30.326689, 30.913750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236759, 30.668064, 31.078993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699165, -0.083379, 0.710082,
		0.640455, 0.514482, -0.570198,
		-0.317781, 0.853438, 0.413109,
		36.141426, 30.924095, 31.202925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935352, 30.752277, 30.946375>,  <36.363873, 30.326689, 30.913750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935352, 30.752277, 30.946375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659153, 30.860298, 31.214788>,  <36.493435, 30.925110, 31.375837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659153, 30.860298, 31.214788>,  <36.935352, 30.752277, 30.946375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659153, 30.860298, 31.214788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714679, 0.111589, 0.690494,
		0.111589, 0.956357, -0.270052,
		-0.690494, 0.270052, 0.671036,
		36.452003, 30.941315, 31.416100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252167, 31.253466, 31.363018>,  <36.935352, 30.752277, 30.946375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252167, 31.253466, 31.363018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940662, 31.144348, 31.588980>,  <36.753761, 31.078878, 31.724558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940662, 31.144348, 31.588980>,  <37.252167, 31.253466, 31.363018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940662, 31.144348, 31.588980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610641, -0.123349, 0.782242,
		-0.143709, 0.954133, 0.262637,
		-0.778759, -0.272792, 0.564906,
		36.707035, 31.062511, 31.758451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436089, 31.430426, 31.980864>,  <37.252167, 31.253466, 31.363018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436089, 31.430426, 31.980864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152802, 31.158401, 32.056705>,  <36.982830, 30.995186, 32.102211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152802, 31.158401, 32.056705>,  <37.436089, 31.430426, 31.980864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152802, 31.158401, 32.056705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494195, -0.285741, 0.821050,
		-0.504187, 0.675180, 0.538449,
		-0.708214, -0.680062, 0.189604,
		36.940338, 30.954384, 32.113586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143639, 31.522949, 32.650803>,  <37.436089, 31.430426, 31.980864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143639, 31.522949, 32.650803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099773, 31.136768, 32.556255>,  <37.073452, 30.905060, 32.499527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099773, 31.136768, 32.556255>,  <37.143639, 31.522949, 32.650803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099773, 31.136768, 32.556255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415303, -0.260560, 0.871568,
		-0.903048, -0.002583, 0.429531,
		-0.109667, -0.965454, -0.236371,
		37.066872, 30.847132, 32.485344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734848, 31.180336, 33.202896>,  <37.143639, 31.522949, 32.650803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734848, 31.180336, 33.202896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961964, 30.910700, 33.013908>,  <37.098232, 30.748919, 32.900517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961964, 30.910700, 33.013908>,  <36.734848, 31.180336, 33.202896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961964, 30.910700, 33.013908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300556, -0.364566, 0.881338,
		-0.766345, -0.642414, -0.004394,
		0.567786, -0.674088, -0.472465,
		37.132301, 30.708473, 32.872169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717381, 30.458193, 33.463192>,  <36.734848, 31.180336, 33.202896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717381, 30.458193, 33.463192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075760, 30.520676, 33.296875>,  <37.290787, 30.558165, 33.197086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075760, 30.520676, 33.296875>,  <36.717381, 30.458193, 33.463192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075760, 30.520676, 33.296875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434834, -0.117584, 0.892801,
		0.090571, -0.980700, -0.173272,
		0.895944, 0.156206, -0.415793,
		37.344543, 30.567537, 33.172138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096878, 29.853178, 33.771996>,  <36.717381, 30.458193, 33.463192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096878, 29.853178, 33.771996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326847, 30.148771, 33.631504>,  <37.464828, 30.326128, 33.547211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326847, 30.148771, 33.631504>,  <37.096878, 29.853178, 33.771996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326847, 30.148771, 33.631504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611441, -0.102797, 0.784584,
		0.543690, -0.665834, -0.510946,
		0.574927, 0.738984, -0.351229,
		37.499325, 30.370466, 33.526134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723423, 29.736309, 34.080452>,  <37.096878, 29.853178, 33.771996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723423, 29.736309, 34.080452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759666, 30.095535, 33.908279>,  <37.781410, 30.311071, 33.804974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759666, 30.095535, 33.908279>,  <37.723423, 29.736309, 34.080452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759666, 30.095535, 33.908279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718306, 0.240439, 0.652860,
		0.689802, -0.368336, -0.623299,
		0.090606, 0.898063, -0.430433,
		37.786850, 30.364954, 33.779148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440208, 29.913002, 33.739960>,  <37.723423, 29.736309, 34.080452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440208, 29.913002, 33.739960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215862, 30.209156, 33.888157>,  <38.081257, 30.386848, 33.977077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215862, 30.209156, 33.888157>,  <38.440208, 29.913002, 33.739960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215862, 30.209156, 33.888157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690396, 0.171273, 0.702865,
		0.456935, 0.649997, -0.607219,
		-0.560861, 0.740384, 0.370495,
		38.047604, 30.431271, 33.999306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939640, 30.433456, 33.934349>,  <38.440208, 29.913002, 33.739960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939640, 30.433456, 33.934349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616112, 30.449339, 34.169037>,  <38.421997, 30.458868, 34.309849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616112, 30.449339, 34.169037>,  <38.939640, 30.433456, 33.934349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616112, 30.449339, 34.169037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580040, 0.218086, 0.784852,
		-0.096793, 0.975122, -0.199422,
		-0.808817, 0.039705, 0.586719,
		38.373466, 30.461250, 34.345051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951450, 31.067167, 34.371124>,  <38.939640, 30.433456, 33.934349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951450, 31.067167, 34.371124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729992, 30.792171, 34.559097>,  <38.597118, 30.627174, 34.671883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729992, 30.792171, 34.559097>,  <38.951450, 31.067167, 34.371124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729992, 30.792171, 34.559097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584518, 0.081123, 0.807315,
		-0.593142, 0.721650, 0.356936,
		-0.553644, -0.687488, 0.469935,
		38.563900, 30.585924, 34.700077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759621, 31.327551, 35.039467>,  <38.951450, 31.067167, 34.371124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759621, 31.327551, 35.039467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697250, 30.935759, 35.090542>,  <38.659828, 30.700684, 35.121185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697250, 30.935759, 35.090542>,  <38.759621, 31.327551, 35.039467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697250, 30.935759, 35.090542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751654, -0.033789, 0.658691,
		-0.640862, 0.198678, 0.741500,
		-0.155922, -0.979482, 0.127683,
		38.650475, 30.641914, 35.128845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900070, 31.211449, 35.748177>,  <38.759621, 31.327551, 35.039467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900070, 31.211449, 35.748177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941750, 30.856201, 35.569118>,  <38.966759, 30.643053, 35.461685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941750, 30.856201, 35.569118>,  <38.900070, 31.211449, 35.748177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941750, 30.856201, 35.569118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709667, -0.248943, 0.659091,
		-0.696789, -0.386359, 0.604328,
		0.104203, -0.888118, -0.447647,
		38.973011, 30.589766, 35.434826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801949, 30.800463, 36.240448>,  <38.900070, 31.211449, 35.748177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801949, 30.800463, 36.240448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999886, 30.592657, 35.961811>,  <39.118649, 30.467974, 35.794628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999886, 30.592657, 35.961811>,  <38.801949, 30.800463, 36.240448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999886, 30.592657, 35.961811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643561, -0.319557, 0.695494,
		-0.583921, -0.792456, 0.176211,
		0.494838, -0.519516, -0.696590,
		39.148338, 30.436802, 35.752834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979488, 30.075932, 36.431751>,  <38.801949, 30.800463, 36.240448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979488, 30.075932, 36.431751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248821, 30.192631, 36.160015>,  <39.410419, 30.262650, 35.996971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248821, 30.192631, 36.160015>,  <38.979488, 30.075932, 36.431751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248821, 30.192631, 36.160015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736382, -0.346771, 0.580940,
		-0.066089, -0.891422, -0.448331,
		0.673330, 0.291749, -0.679344,
		39.450821, 30.280155, 35.956211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149250, 29.437632, 36.734531>,  <38.979488, 30.075932, 36.431751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149250, 29.437632, 36.734531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458611, 29.591579, 36.533047>,  <39.644226, 29.683949, 36.412155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458611, 29.591579, 36.533047>,  <39.149250, 29.437632, 36.734531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458611, 29.591579, 36.533047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626168, -0.587681, 0.512392,
		-0.098816, -0.711692, -0.695507,
		0.773401, 0.384871, -0.503711,
		39.690632, 29.707041, 36.381935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604469, 28.878984, 36.598804>,  <39.149250, 29.437632, 36.734531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604469, 28.878984, 36.598804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841358, 29.196472, 36.543266>,  <39.983494, 29.386965, 36.509945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841358, 29.196472, 36.543266>,  <39.604469, 28.878984, 36.598804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841358, 29.196472, 36.543266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788309, -0.535046, 0.303799,
		0.166842, -0.289372, -0.942564,
		0.592226, 0.793719, -0.138846,
		40.019028, 29.434587, 36.501614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203625, 28.660948, 36.434898>,  <39.604469, 28.878984, 36.598804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203625, 28.660948, 36.434898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351143, 29.025204, 36.509434>,  <40.439655, 29.243757, 36.554153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351143, 29.025204, 36.509434>,  <40.203625, 28.660948, 36.434898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351143, 29.025204, 36.509434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878713, -0.406930, 0.249541,
		0.303068, 0.071705, -0.950267,
		0.368799, 0.910641, 0.186336,
		40.461784, 29.298395, 36.565334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797905, 28.749506, 35.976963>,  <40.203625, 28.660948, 36.434898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797905, 28.749506, 35.976963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815712, 28.976690, 36.305702>,  <40.826397, 29.113001, 36.502945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815712, 28.976690, 36.305702>,  <40.797905, 28.749506, 35.976963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815712, 28.976690, 36.305702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962200, -0.245631, 0.117632,
		0.268682, 0.785547, -0.557428,
		0.044516, 0.567963, 0.821850,
		40.829067, 29.147079, 36.552258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339264, 29.261934, 35.964504>,  <40.797905, 28.749506, 35.976963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339264, 29.261934, 35.964504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277512, 29.201912, 36.355125>,  <41.240459, 29.165899, 36.589497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277512, 29.201912, 36.355125>,  <41.339264, 29.261934, 35.964504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277512, 29.201912, 36.355125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987473, -0.056059, 0.147495,
		0.032612, 0.987087, 0.156831,
		-0.154382, -0.150056, 0.976550,
		41.231197, 29.156895, 36.648090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003437, 29.457737, 36.273731>,  <41.339264, 29.261934, 35.964504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003437, 29.457737, 36.273731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811092, 29.308262, 36.591000>,  <41.695686, 29.218576, 36.781361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811092, 29.308262, 36.591000>,  <42.003437, 29.457737, 36.273731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811092, 29.308262, 36.591000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845842, 0.040530, 0.531891,
		-0.230908, 0.926669, 0.296590,
		-0.480866, -0.373686, 0.793175,
		41.666832, 29.196156, 36.828953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236858, 29.780054, 36.881363>,  <42.003437, 29.457737, 36.273731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236858, 29.780054, 36.881363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094921, 29.430111, 37.013248>,  <42.009758, 29.220146, 37.092381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094921, 29.430111, 37.013248>,  <42.236858, 29.780054, 36.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094921, 29.430111, 37.013248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793167, -0.094992, 0.601550,
		-0.494950, 0.474976, 0.727614,
		-0.354840, -0.874857, 0.329719,
		41.988468, 29.167654, 37.112164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365349, 29.740635, 37.609646>,  <42.236858, 29.780054, 36.881363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365349, 29.740635, 37.609646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358963, 29.380470, 37.435745>,  <42.355129, 29.164371, 37.331406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358963, 29.380470, 37.435745>,  <42.365349, 29.740635, 37.609646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358963, 29.380470, 37.435745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855087, -0.237658, 0.460809,
		-0.518239, -0.364392, 0.773723,
		-0.015966, -0.900410, -0.434750,
		42.354172, 29.110348, 37.305321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507175, 29.252096, 38.149014>,  <42.365349, 29.740635, 37.609646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507175, 29.252096, 38.149014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613464, 29.092913, 37.797783>,  <42.677238, 28.997402, 37.587044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613464, 29.092913, 37.797783>,  <42.507175, 29.252096, 38.149014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613464, 29.092913, 37.797783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860444, -0.312868, 0.402182,
		-0.434774, -0.862405, 0.259285,
		0.265722, -0.397959, -0.878078,
		42.693180, 28.973526, 37.534359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669235, 28.551708, 38.238094>,  <42.507175, 29.252096, 38.149014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669235, 28.551708, 38.238094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867718, 28.722179, 37.935532>,  <42.986809, 28.824461, 37.753994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867718, 28.722179, 37.935532>,  <42.669235, 28.551708, 38.238094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867718, 28.722179, 37.935532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867943, -0.222180, 0.444196,
		0.021248, -0.876931, -0.480146,
		0.496209, 0.426177, -0.756406,
		43.016579, 28.850033, 37.708611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982075, 28.129477, 37.866474>,  <42.669235, 28.551708, 38.238094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982075, 28.129477, 37.866474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196564, 28.465418, 37.832741>,  <43.325256, 28.666983, 37.812500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196564, 28.465418, 37.832741>,  <42.982075, 28.129477, 37.866474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196564, 28.465418, 37.832741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797993, -0.471848, 0.374921,
		0.275088, -0.268335, -0.923213,
		0.536221, 0.839854, -0.084330,
		43.357430, 28.717375, 37.807442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466831, 28.248035, 37.354057>,  <42.982075, 28.129477, 37.866474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466831, 28.248035, 37.354057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592842, 28.460957, 37.668362>,  <43.668449, 28.588709, 37.856945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592842, 28.460957, 37.668362>,  <43.466831, 28.248035, 37.354057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592842, 28.460957, 37.668362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727577, -0.667061, 0.160192,
		0.609417, 0.521234, -0.597433,
		0.315027, 0.532302, 0.785756,
		43.687351, 28.620647, 37.904087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777504, 28.251915, 36.996151>,  <43.466831, 28.248035, 37.354057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777504, 28.251915, 36.996151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636902, 28.389790, 37.344318>,  <42.552540, 28.472513, 37.553219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636902, 28.389790, 37.344318>,  <42.777504, 28.251915, 36.996151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636902, 28.389790, 37.344318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848135, 0.276401, -0.451961,
		-0.396370, -0.897104, 0.195182,
		-0.351507, 0.344685, 0.870422,
		42.531448, 28.493195, 37.605446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035000, 28.056101, 37.026360>,  <42.777504, 28.251915, 36.996151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035000, 28.056101, 37.026360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104271, 28.386129, 37.241493>,  <42.145836, 28.584146, 37.370575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104271, 28.386129, 37.241493>,  <42.035000, 28.056101, 37.026360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104271, 28.386129, 37.241493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809204, 0.430489, -0.399836,
		-0.561425, -0.365975, 0.742202,
		0.173180, 0.825071, 0.537836,
		42.156223, 28.633650, 37.402843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438107, 28.119860, 37.629826>,  <42.035000, 28.056101, 37.026360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438107, 28.119860, 37.629826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613811, 28.448050, 37.483471>,  <41.719234, 28.644962, 37.395660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613811, 28.448050, 37.483471>,  <41.438107, 28.119860, 37.629826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613811, 28.448050, 37.483471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898309, 0.405362, -0.169475,
		0.009266, 0.403120, 0.915100,
		0.439266, 0.820473, -0.365883,
		41.745590, 28.694191, 37.373707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171345, 28.716589, 37.933544>,  <41.438107, 28.119860, 37.629826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171345, 28.716589, 37.933544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310287, 28.873177, 37.592701>,  <41.393654, 28.967129, 37.388195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310287, 28.873177, 37.592701>,  <41.171345, 28.716589, 37.933544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310287, 28.873177, 37.592701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871740, 0.469663, -0.139592,
		0.345559, 0.791307, 0.504403,
		0.347359, 0.391471, -0.852110,
		41.414494, 28.990618, 37.337067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862171, 29.325676, 37.809925>,  <41.171345, 28.716589, 37.933544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862171, 29.325676, 37.809925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995117, 29.269131, 37.436928>,  <41.074883, 29.235203, 37.213127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995117, 29.269131, 37.436928>,  <40.862171, 29.325676, 37.809925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995117, 29.269131, 37.436928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885147, 0.294630, -0.360151,
		0.325653, 0.945098, -0.027203,
		0.332363, -0.141363, -0.932497,
		41.094826, 29.226721, 37.157177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884666, 29.990561, 37.578609>,  <40.862171, 29.325676, 37.809925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884666, 29.990561, 37.578609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881458, 29.740635, 37.266315>,  <40.879536, 29.590679, 37.078941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881458, 29.740635, 37.266315>,  <40.884666, 29.990561, 37.578609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881458, 29.740635, 37.266315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764502, 0.507100, -0.397979,
		0.644572, 0.593681, -0.481736,
		-0.008016, -0.624814, -0.780733,
		40.879055, 29.553190, 37.032097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874012, 30.417858, 36.906139>,  <40.884666, 29.990561, 37.578609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874012, 30.417858, 36.906139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764854, 30.052797, 36.784420>,  <40.699360, 29.833761, 36.711388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764854, 30.052797, 36.784420>,  <40.874012, 30.417858, 36.906139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764854, 30.052797, 36.784420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689243, 0.406144, -0.599992,
		0.671173, 0.046005, -0.739872,
		-0.272892, -0.912650, -0.304301,
		40.682987, 29.779001, 36.693130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802204, 30.484949, 36.230408>,  <40.874012, 30.417858, 36.906139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802204, 30.484949, 36.230408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564240, 30.176601, 36.321476>,  <40.421459, 29.991592, 36.376118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564240, 30.176601, 36.321476>,  <40.802204, 30.484949, 36.230408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564240, 30.176601, 36.321476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679976, 0.331624, -0.653956,
		0.428615, -0.543858, -0.721462,
		-0.594913, -0.770872, 0.227671,
		40.385765, 29.945339, 36.389778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417850, 30.492313, 35.724186>,  <40.802204, 30.484949, 36.230408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417850, 30.492313, 35.724186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206524, 30.212603, 35.916809>,  <40.079727, 30.044777, 36.032383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206524, 30.212603, 35.916809>,  <40.417850, 30.492313, 35.724186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206524, 30.212603, 35.916809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763316, 0.142826, -0.630040,
		0.371793, -0.700438, -0.609226,
		-0.528317, -0.699276, 0.481554,
		40.048027, 30.002821, 36.061275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161343, 30.043756, 35.244640>,  <40.417850, 30.492313, 35.724186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161343, 30.043756, 35.244640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892101, 30.007158, 35.538185>,  <39.730556, 29.985199, 35.714314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892101, 30.007158, 35.538185>,  <40.161343, 30.043756, 35.244640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892101, 30.007158, 35.538185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739520, 0.075169, -0.668925,
		0.006037, -0.992965, -0.118255,
		-0.673108, -0.091490, 0.733863,
		39.690170, 29.979710, 35.758343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724499, 29.457060, 35.122005>,  <40.161343, 30.043756, 35.244640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724499, 29.457060, 35.122005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536747, 29.755941, 35.310204>,  <39.424095, 29.935270, 35.423122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536747, 29.755941, 35.310204>,  <39.724499, 29.457060, 35.122005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536747, 29.755941, 35.310204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713486, -0.007027, -0.700634,
		-0.520212, -0.664555, 0.536419,
		-0.469380, 0.747206, 0.470496,
		39.395931, 29.980103, 35.451351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053391, 29.461794, 34.791901>,  <39.724499, 29.457060, 35.122005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053391, 29.461794, 34.791901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008110, 29.788549, 35.018131>,  <38.980942, 29.984602, 35.153870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008110, 29.788549, 35.018131>,  <39.053391, 29.461794, 34.791901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008110, 29.788549, 35.018131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880934, 0.180737, -0.437367,
		-0.459501, -0.547747, 0.699165,
		-0.113201, 0.816889, 0.565577,
		38.974148, 30.033617, 35.187805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384502, 29.412199, 35.273392>,  <39.053391, 29.461794, 34.791901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384502, 29.412199, 35.273392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483215, 29.794165, 35.207375>,  <38.542442, 30.023344, 35.167763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483215, 29.794165, 35.207375>,  <38.384502, 29.412199, 35.273392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483215, 29.794165, 35.207375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871407, 0.144163, -0.468899,
		-0.423965, 0.259537, 0.867695,
		0.246786, 0.954912, -0.165043,
		38.557251, 30.080639, 35.157864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737255, 29.134609, 35.483334>,  <38.384502, 29.412199, 35.273392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737255, 29.134609, 35.483334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354286, 29.249111, 35.468388>,  <37.124504, 29.317812, 35.459419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354286, 29.249111, 35.468388>,  <37.737255, 29.134609, 35.483334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354286, 29.249111, 35.468388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175234, -0.679138, -0.712787,
		-0.229417, -0.675891, 0.700385,
		-0.957424, 0.286257, -0.037367,
		37.067059, 29.334988, 35.457176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703377, 29.845062, 35.278664>,  <37.737255, 29.134609, 35.483334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703377, 29.845062, 35.278664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967365, 30.087927, 35.101669>,  <38.125759, 30.233644, 34.995472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967365, 30.087927, 35.101669>,  <37.703377, 29.845062, 35.278664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967365, 30.087927, 35.101669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671886, 0.213451, -0.709230,
		-0.336167, 0.765372, 0.548814,
		0.659970, 0.607160, -0.442488,
		38.165356, 30.270075, 34.968922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446091, 30.568413, 35.290375>,  <37.703377, 29.845062, 35.278664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446091, 30.568413, 35.290375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707912, 30.492622, 34.997623>,  <37.865005, 30.447147, 34.821972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707912, 30.492622, 34.997623>,  <37.446091, 30.568413, 35.290375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707912, 30.492622, 34.997623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694563, 0.231590, -0.681138,
		0.298557, 0.954182, 0.019985,
		0.654558, -0.189478, -0.731882,
		37.904282, 30.435780, 34.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471531, 31.294310, 34.949333>,  <37.446091, 30.568413, 35.290375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471531, 31.294310, 34.949333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542313, 30.948675, 34.760845>,  <37.584782, 30.741295, 34.647755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542313, 30.948675, 34.760845>,  <37.471531, 31.294310, 34.949333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542313, 30.948675, 34.760845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757030, 0.186460, -0.626210,
		0.628961, 0.467537, -0.621142,
		0.176958, -0.864084, -0.471215,
		37.595402, 30.689449, 34.619480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413399, 31.361334, 34.155876>,  <37.471531, 31.294310, 34.949333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413399, 31.361334, 34.155876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314690, 30.997515, 34.289639>,  <37.255466, 30.779224, 34.369896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314690, 30.997515, 34.289639>,  <37.413399, 31.361334, 34.155876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314690, 30.997515, 34.289639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851090, 0.038394, -0.523614,
		0.463412, -0.413825, -0.783580,
		-0.246770, -0.909546, 0.334410,
		37.240658, 30.724651, 34.389961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214863, 31.607454, 33.919994>,  <37.413399, 31.361334, 34.155876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214863, 31.607454, 33.919994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123489, 31.729525, 33.550198>,  <38.068665, 31.802767, 33.328320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123489, 31.729525, 33.550198>,  <38.214863, 31.607454, 33.919994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123489, 31.729525, 33.550198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971998, 0.125258, -0.198820,
		0.055124, -0.944022, -0.325244,
		-0.228430, 0.305177, -0.924493,
		38.054962, 31.821077, 33.272850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757320, 31.294294, 33.476910>,  <38.214863, 31.607454, 33.919994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757320, 31.294294, 33.476910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603615, 31.629827, 33.322662>,  <38.511391, 31.831148, 33.230114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603615, 31.629827, 33.322662>,  <38.757320, 31.294294, 33.476910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603615, 31.629827, 33.322662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893908, 0.233627, -0.382553,
		-0.230808, -0.491707, -0.839615,
		-0.384260, 0.838834, -0.385618,
		38.488338, 31.881477, 33.206978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941521, 31.245104, 32.747658>,  <38.757320, 31.294294, 33.476910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941521, 31.245104, 32.747658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884491, 31.607773, 32.906464>,  <38.850273, 31.825375, 33.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884491, 31.607773, 32.906464>,  <38.941521, 31.245104, 32.747658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884491, 31.607773, 32.906464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926216, 0.263641, -0.269476,
		-0.348995, 0.329299, -0.877362,
		-0.142571, 0.906673, 0.397012,
		38.841721, 31.879774, 33.025566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926117, 31.832409, 32.160568>,  <38.941521, 31.245104, 32.747658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926117, 31.832409, 32.160568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024731, 31.983078, 32.517742>,  <39.083897, 32.073479, 32.732048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024731, 31.983078, 32.517742>,  <38.926117, 31.832409, 32.160568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024731, 31.983078, 32.517742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810726, 0.424664, -0.402970,
		-0.530987, 0.823273, -0.200686,
		0.246530, 0.376673, 0.892939,
		39.098690, 32.096081, 32.785625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180077, 32.434326, 31.960854>,  <38.926117, 31.832409, 32.160568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180077, 32.434326, 31.960854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306023, 32.395565, 32.338524>,  <39.381588, 32.372307, 32.565128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306023, 32.395565, 32.338524>,  <39.180077, 32.434326, 31.960854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306023, 32.395565, 32.338524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796094, 0.568627, -0.207117,
		-0.516814, 0.816868, 0.256183,
		0.314860, -0.096905, 0.944178,
		39.400482, 32.366493, 32.621777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446190, 33.121689, 32.207138>,  <39.180077, 32.434326, 31.960854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446190, 33.121689, 32.207138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589413, 32.832825, 32.443874>,  <39.675346, 32.659508, 32.585918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589413, 32.832825, 32.443874>,  <39.446190, 33.121689, 32.207138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589413, 32.832825, 32.443874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922614, 0.371036, -0.105430,
		-0.143458, 0.583794, 0.799127,
		0.358055, -0.722161, 0.591845,
		39.696831, 32.616177, 32.621429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794353, 33.324322, 32.822819>,  <39.446190, 33.121689, 32.207138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794353, 33.324322, 32.822819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973530, 32.999382, 32.673447>,  <40.081036, 32.804420, 32.583824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973530, 32.999382, 32.673447>,  <39.794353, 33.324322, 32.822819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973530, 32.999382, 32.673447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811996, 0.544440, -0.210349,
		0.374186, -0.209000, 0.903495,
		0.447936, -0.812345, -0.373428,
		40.107910, 32.755680, 32.561417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540306, 33.205456, 33.078629>,  <39.794353, 33.324322, 32.822819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540306, 33.205456, 33.078629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515450, 33.024700, 32.722668>,  <40.500534, 32.916248, 32.509090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515450, 33.024700, 32.722668>,  <40.540306, 33.205456, 33.078629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515450, 33.024700, 32.722668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852490, 0.439652, -0.282785,
		0.519037, -0.776210, 0.357909,
		-0.062145, -0.451890, -0.889907,
		40.496807, 32.889133, 32.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089252, 33.662552, 33.372375>,  <40.540306, 33.205456, 33.078629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089252, 33.662552, 33.372375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154018, 33.869156, 33.708710>,  <40.192879, 33.993118, 33.910511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154018, 33.869156, 33.708710>,  <40.089252, 33.662552, 33.372375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154018, 33.869156, 33.708710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447144, -0.797983, 0.404085,
		0.879685, 0.310547, -0.360159,
		0.161914, 0.516511, 0.840833,
		40.202591, 34.024109, 33.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867710, 33.742599, 33.615295>,  <40.089252, 33.662552, 33.372375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867710, 33.742599, 33.615295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572983, 33.716461, 33.884464>,  <40.396145, 33.700779, 34.045967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572983, 33.716461, 33.884464>,  <40.867710, 33.742599, 33.615295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572983, 33.716461, 33.884464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490820, -0.736206, 0.465935,
		0.464966, 0.673595, 0.574523,
		-0.736819, -0.065344, 0.672925,
		40.351936, 33.696857, 34.086342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110497, 33.745861, 34.230495>,  <40.867710, 33.742599, 33.615295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110497, 33.745861, 34.230495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754948, 33.570778, 34.284626>,  <40.541618, 33.465729, 34.317104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754948, 33.570778, 34.284626>,  <41.110497, 33.745861, 34.230495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754948, 33.570778, 34.284626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405116, -0.612961, 0.678351,
		-0.213972, 0.657791, 0.722168,
		-0.888874, -0.437710, 0.135326,
		40.488285, 33.439465, 34.325222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598007, 33.133297, 34.025421>,  <41.110497, 33.745861, 34.230495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598007, 33.133297, 34.025421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726681, 32.765362, 33.935600>,  <41.803883, 32.544601, 33.881706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726681, 32.765362, 33.935600>,  <41.598007, 33.133297, 34.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726681, 32.765362, 33.935600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932078, 0.265904, 0.246019,
		-0.166587, -0.288443, 0.942894,
		0.321681, -0.919835, -0.224555,
		41.823185, 32.489410, 33.868233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870331, 32.721935, 34.530987>,  <41.598007, 33.133297, 34.025421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870331, 32.721935, 34.530987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056534, 32.654682, 34.183414>,  <42.168255, 32.614330, 33.974873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056534, 32.654682, 34.183414>,  <41.870331, 32.721935, 34.530987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056534, 32.654682, 34.183414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855532, 0.336903, 0.393142,
		0.226643, -0.926405, 0.300677,
		0.465508, -0.168137, -0.868926,
		42.196186, 32.604240, 33.922737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415634, 33.044014, 34.690128>,  <41.870331, 32.721935, 34.530987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415634, 33.044014, 34.690128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706055, 33.207603, 34.469009>,  <42.880306, 33.305756, 34.336338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706055, 33.207603, 34.469009>,  <42.415634, 33.044014, 34.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706055, 33.207603, 34.469009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659123, -0.643020, 0.389978,
		-0.195971, -0.647508, -0.736430,
		0.726053, 0.408973, -0.552800,
		42.923870, 33.330296, 34.303169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821175, 32.549694, 34.365528>,  <42.415634, 33.044014, 34.690128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821175, 32.549694, 34.365528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044949, 32.877178, 34.417290>,  <43.179211, 33.073669, 34.448345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044949, 32.877178, 34.417290>,  <42.821175, 32.549694, 34.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044949, 32.877178, 34.417290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742161, -0.564281, 0.361641,
		0.369099, -0.106278, -0.923293,
		0.559431, 0.818714, 0.129400,
		43.212776, 33.122791, 34.456108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491669, 32.450706, 34.030437>,  <42.821175, 32.549694, 34.365528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491669, 32.450706, 34.030437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559055, 32.738228, 34.300236>,  <43.599487, 32.910740, 34.462116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559055, 32.738228, 34.300236>,  <43.491669, 32.450706, 34.030437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559055, 32.738228, 34.300236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878202, -0.420200, 0.228459,
		0.447640, 0.553857, -0.702041,
		0.168464, 0.718801, 0.674496,
		43.609596, 32.953869, 34.502586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086178, 32.881653, 33.853222>,  <43.491669, 32.450706, 34.030437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086178, 32.881653, 33.853222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006088, 32.842503, 34.243160>,  <43.958035, 32.819012, 34.477123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006088, 32.842503, 34.243160>,  <44.086178, 32.881653, 33.853222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006088, 32.842503, 34.243160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894888, -0.423333, 0.141297,
		0.398856, 0.900671, 0.172350,
		-0.200224, -0.097877, 0.974849,
		43.946022, 32.813141, 34.535614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582031, 33.272552, 34.194523>,  <44.086178, 32.881653, 33.853222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582031, 33.272552, 34.194523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434723, 32.954170, 34.386703>,  <44.346336, 32.763142, 34.502010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434723, 32.954170, 34.386703>,  <44.582031, 33.272552, 34.194523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434723, 32.954170, 34.386703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917237, -0.395444, 0.047952,
		0.151825, 0.458348, 0.875709,
		-0.368273, -0.795953, 0.480452,
		44.324242, 32.715385, 34.530838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198177, 32.821732, 34.176064>,  <44.582031, 33.272552, 34.194523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198177, 32.821732, 34.176064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508209, 32.619217, 34.327282>,  <45.694229, 32.497707, 34.418015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508209, 32.619217, 34.327282>,  <45.198177, 32.821732, 34.176064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508209, 32.619217, 34.327282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324891, 0.193823, 0.925677,
		-0.541937, -0.840298, -0.014260,
		0.775081, -0.506292, 0.378045,
		45.740734, 32.467331, 34.440697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516174, 33.331997, 34.431820>,  <45.198177, 32.821732, 34.176064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516174, 33.331997, 34.431820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853901, 33.300663, 34.219788>,  <46.056538, 33.281864, 34.092567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853901, 33.300663, 34.219788>,  <45.516174, 33.331997, 34.431820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853901, 33.300663, 34.219788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106647, 0.944900, -0.309501,
		0.525120, 0.317849, 0.789444,
		0.844320, -0.078334, -0.530083,
		46.107197, 33.277164, 34.060764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995747, 33.896946, 34.684994>,  <45.516174, 33.331997, 34.431820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995747, 33.896946, 34.684994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026718, 33.769131, 34.307232>,  <46.045300, 33.692440, 34.080574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026718, 33.769131, 34.307232>,  <45.995747, 33.896946, 34.684994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026718, 33.769131, 34.307232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165490, 0.929989, -0.328228,
		0.983167, 0.181703, 0.019124,
		0.077425, -0.319539, -0.944405,
		46.049946, 33.673267, 34.023911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279678, 34.468235, 34.370033>,  <45.995747, 33.896946, 34.684994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279678, 34.468235, 34.370033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089951, 34.252701, 34.091560>,  <45.976112, 34.123379, 33.924477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089951, 34.252701, 34.091560>,  <46.279678, 34.468235, 34.370033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089951, 34.252701, 34.091560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189321, 0.834735, -0.517083,
		0.859754, -0.113460, -0.497946,
		-0.474321, -0.538836, -0.696186,
		45.947655, 34.091049, 33.882706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902100, 34.269241, 34.779827>,  <46.279678, 34.468235, 34.370033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902100, 34.269241, 34.779827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104267, 34.360012, 35.112827>,  <47.225567, 34.414474, 35.312626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104267, 34.360012, 35.112827>,  <46.902100, 34.269241, 34.779827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104267, 34.360012, 35.112827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565375, 0.641750, -0.518177,
		-0.651848, 0.732570, 0.196049,
		0.505416, 0.226931, 0.832501,
		47.255890, 34.428093, 35.362579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.901325, 34.953758, 35.000889>,  <46.902100, 34.269241, 34.779827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.901325, 34.953758, 35.000889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265659, 34.795246, 35.047108>,  <47.484261, 34.700138, 35.074841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265659, 34.795246, 35.047108>,  <46.901325, 34.953758, 35.000889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.265659, 34.795246, 35.047108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407692, 0.819831, -0.402076,
		0.064602, 0.413332, 0.908286,
		0.910832, -0.396275, 0.115549,
		47.538910, 34.676365, 35.081772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.408752, 35.481548, 35.289143>,  <46.901325, 34.953758, 35.000889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.408752, 35.481548, 35.289143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611252, 35.201439, 35.087811>,  <47.732750, 35.033375, 34.967010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611252, 35.201439, 35.087811>,  <47.408752, 35.481548, 35.289143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.611252, 35.201439, 35.087811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437016, 0.711468, -0.550301,
		0.743461, 0.058624, 0.666205,
		0.506244, -0.700269, -0.503329,
		47.763126, 34.991360, 34.936813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.966812, 29.168762, 25.309513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.681740, 29.334019, 25.536282>,  <28.510696, 29.433172, 25.672342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.681740, 29.334019, 25.536282>,  <28.966812, 29.168762, 25.309513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681740, 29.334019, 25.536282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579835, -0.107911, 0.807556,
		0.394812, 0.904251, -0.162647,
		-0.712682, 0.413141, 0.566921,
		28.467936, 29.457962, 25.706358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348345, 29.501633, 25.912794>,  <28.966812, 29.168762, 25.309513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348345, 29.501633, 25.912794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.969891, 29.518129, 26.041245>,  <28.742817, 29.528027, 26.118315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.969891, 29.518129, 26.041245>,  <29.348345, 29.501633, 25.912794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969891, 29.518129, 26.041245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319960, -0.032509, 0.946873,
		0.049490, 0.998620, 0.017562,
		-0.946138, 0.041242, 0.321127,
		28.686049, 29.530502, 26.137583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337025, 30.098881, 26.444290>,  <29.348345, 29.501633, 25.912794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337025, 30.098881, 26.444290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.033953, 29.852221, 26.529764>,  <28.852110, 29.704224, 26.581049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.033953, 29.852221, 26.529764>,  <29.337025, 30.098881, 26.444290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033953, 29.852221, 26.529764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186819, 0.108788, 0.976352,
		-0.625315, 0.779684, 0.032776,
		-0.757681, -0.616651, 0.213687,
		28.806648, 29.667225, 26.593870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891249, 30.483305, 26.951982>,  <29.337025, 30.098881, 26.444290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891249, 30.483305, 26.951982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.817423, 30.090582, 26.969839>,  <28.773127, 29.854948, 26.980553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.817423, 30.090582, 26.969839>,  <28.891249, 30.483305, 26.951982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817423, 30.090582, 26.969839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129712, 0.020689, 0.991336,
		-0.974223, 0.188755, 0.123533,
		-0.184564, -0.981806, 0.044640,
		28.762054, 29.796040, 26.983231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283957, 30.441029, 27.366947>,  <28.891249, 30.483305, 26.951982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283957, 30.441029, 27.366947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.498035, 30.103479, 27.382128>,  <28.626482, 29.900949, 27.391237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.498035, 30.103479, 27.382128>,  <28.283957, 30.441029, 27.366947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498035, 30.103479, 27.382128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019958, 0.057548, 0.998143,
		-0.844492, -0.533445, 0.047641,
		0.535196, -0.843875, 0.037953,
		28.658594, 29.850317, 27.393513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999819, 30.026913, 28.033754>,  <28.283957, 30.441029, 27.366947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999819, 30.026913, 28.033754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.368349, 29.890215, 27.959599>,  <28.589468, 29.808195, 27.915106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.368349, 29.890215, 27.959599>,  <27.999819, 30.026913, 28.033754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368349, 29.890215, 27.959599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231773, 0.099937, 0.967623,
		-0.312155, -0.934463, 0.171282,
		0.921325, -0.341747, -0.185387,
		28.644747, 29.787691, 27.903982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183966, 29.576326, 28.628391>,  <27.999819, 30.026913, 28.033754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183966, 29.576326, 28.628391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.541561, 29.621693, 28.454992>,  <28.756119, 29.648912, 28.350952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.541561, 29.621693, 28.454992>,  <28.183966, 29.576326, 28.628391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541561, 29.621693, 28.454992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412061, 0.171986, 0.894777,
		0.176051, -0.978547, 0.107013,
		0.893987, 0.113430, -0.433499,
		28.809757, 29.655718, 28.324944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685743, 29.109499, 28.921932>,  <28.183966, 29.576326, 28.628391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685743, 29.109499, 28.921932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.938660, 29.371517, 28.756464>,  <29.090408, 29.528728, 28.657183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.938660, 29.371517, 28.756464>,  <28.685743, 29.109499, 28.921932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938660, 29.371517, 28.756464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585476, -0.054327, 0.808867,
		0.507374, -0.753632, -0.417865,
		0.632290, 0.655048, -0.413669,
		29.128347, 29.568031, 28.632362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286848, 28.996483, 29.165131>,  <28.685743, 29.109499, 28.921932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286848, 28.996483, 29.165131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.407110, 29.354225, 29.032627>,  <29.479267, 29.568871, 28.953125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.407110, 29.354225, 29.032627>,  <29.286848, 28.996483, 29.165131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407110, 29.354225, 29.032627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623826, 0.078312, 0.777630,
		0.721420, -0.440447, -0.534377,
		0.300657, 0.894357, -0.331258,
		29.497307, 29.622532, 28.933250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024801, 29.014593, 29.033957>,  <29.286848, 28.996483, 29.165131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024801, 29.014593, 29.033957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.903467, 29.390709, 29.095718>,  <29.830667, 29.616379, 29.132776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.903467, 29.390709, 29.095718>,  <30.024801, 29.014593, 29.033957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903467, 29.390709, 29.095718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722851, 0.121484, 0.680242,
		0.620867, 0.317953, -0.716540,
		-0.303333, 0.940291, 0.154407,
		29.812468, 29.672796, 29.142040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611883, 29.402115, 29.085806>,  <30.024801, 29.014593, 29.033957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611883, 29.402115, 29.085806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.341478, 29.631765, 29.270582>,  <30.179235, 29.769556, 29.381447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.341478, 29.631765, 29.270582>,  <30.611883, 29.402115, 29.085806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341478, 29.631765, 29.270582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660668, 0.194559, 0.725027,
		0.326382, 0.795315, -0.510831,
		-0.676012, 0.574126, 0.461939,
		30.138674, 29.804003, 29.409164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990900, 29.935957, 29.399586>,  <30.611883, 29.402115, 29.085806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990900, 29.935957, 29.399586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644773, 29.948402, 29.599688>,  <30.437098, 29.955870, 29.719749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644773, 29.948402, 29.599688>,  <30.990900, 29.935957, 29.399586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644773, 29.948402, 29.599688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500005, 0.123149, 0.857222,
		-0.034933, 0.991900, -0.122121,
		-0.865318, 0.031116, 0.500257,
		30.385178, 29.957737, 29.749765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051861, 30.436588, 29.838533>,  <30.990900, 29.935957, 29.399586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051861, 30.436588, 29.838533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.735563, 30.265528, 30.013731>,  <30.545786, 30.162891, 30.118849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.735563, 30.265528, 30.013731>,  <31.051861, 30.436588, 29.838533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735563, 30.265528, 30.013731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464770, 0.046233, 0.884224,
		-0.398390, 0.902760, 0.162202,
		-0.790743, -0.427652, 0.437994,
		30.498341, 30.137232, 30.145130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959068, 30.841366, 30.456326>,  <31.051861, 30.436588, 29.838533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959068, 30.841366, 30.456326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.789120, 30.484299, 30.516499>,  <30.687151, 30.270058, 30.552603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.789120, 30.484299, 30.516499>,  <30.959068, 30.841366, 30.456326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789120, 30.484299, 30.516499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438013, -0.057288, 0.897141,
		-0.792230, 0.447061, 0.415340,
		-0.424871, -0.892667, 0.150433,
		30.661659, 30.216499, 30.561628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712322, 30.872604, 31.238953>,  <30.959068, 30.841366, 30.456326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712322, 30.872604, 31.238953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.701035, 30.479565, 31.165520>,  <30.694262, 30.243740, 31.121460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.701035, 30.479565, 31.165520>,  <30.712322, 30.872604, 31.238953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701035, 30.479565, 31.165520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454697, -0.176173, 0.873048,
		-0.890199, -0.058839, 0.451756,
		-0.028218, -0.982599, -0.183583,
		30.692570, 30.184784, 31.110445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459492, 30.509146, 31.910446>,  <30.712322, 30.872604, 31.238953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459492, 30.509146, 31.910446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.670971, 30.254265, 31.686142>,  <30.797857, 30.101336, 31.551559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.670971, 30.254265, 31.686142>,  <30.459492, 30.509146, 31.910446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670971, 30.254265, 31.686142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561989, -0.232322, 0.793848,
		-0.636120, -0.734846, 0.235274,
		0.528697, -0.637203, -0.560760,
		30.829580, 30.063105, 31.517914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619274, 30.029142, 32.312271>,  <30.459492, 30.509146, 31.910446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619274, 30.029142, 32.312271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.903307, 29.986063, 32.033936>,  <31.073727, 29.960217, 31.866936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.903307, 29.986063, 32.033936>,  <30.619274, 30.029142, 32.312271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903307, 29.986063, 32.033936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634703, -0.329970, 0.698765,
		-0.304861, -0.937828, -0.165949,
		0.710079, -0.107698, -0.695837,
		31.116331, 29.953754, 31.825184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919655, 29.376022, 32.378426>,  <30.619274, 30.029142, 32.312271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919655, 29.376022, 32.378426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.215532, 29.550694, 32.173618>,  <31.393059, 29.655497, 32.050735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.215532, 29.550694, 32.173618>,  <30.919655, 29.376022, 32.378426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215532, 29.550694, 32.173618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637491, -0.211009, 0.741000,
		0.215538, -0.874521, -0.434460,
		0.739695, 0.436678, -0.512019,
		31.437441, 29.681696, 32.020012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467691, 28.904781, 32.450546>,  <30.919655, 29.376022, 32.378426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467691, 28.904781, 32.450546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.656578, 29.242771, 32.350124>,  <31.769909, 29.445564, 32.289871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.656578, 29.242771, 32.350124>,  <31.467691, 28.904781, 32.450546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656578, 29.242771, 32.350124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714437, -0.200047, 0.670493,
		0.516326, -0.495982, -0.698147,
		0.472215, 0.844975, -0.251058,
		31.798243, 29.496264, 32.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136841, 28.741701, 32.397499>,  <31.467691, 28.904781, 32.450546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136841, 28.741701, 32.397499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.112720, 29.133442, 32.474678>,  <32.098248, 29.368486, 32.520985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.112720, 29.133442, 32.474678>,  <32.136841, 28.741701, 32.397499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112720, 29.133442, 32.474678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748778, -0.083447, 0.657547,
		0.660073, 0.184128, -0.728286,
		-0.060300, 0.979354, 0.192951,
		32.094631, 29.427248, 32.532562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832603, 29.024948, 32.382286>,  <32.136841, 28.741701, 32.397499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832603, 29.024948, 32.382286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629093, 29.301352, 32.587677>,  <32.506989, 29.467194, 32.710911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629093, 29.301352, 32.587677>,  <32.832603, 29.024948, 32.382286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629093, 29.301352, 32.587677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632064, -0.105135, 0.767751,
		0.584506, 0.715162, -0.383270,
		-0.508771, 0.691007, 0.513480,
		32.476463, 29.508654, 32.741722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360722, 29.574240, 32.753040>,  <32.832603, 29.024948, 32.382286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360722, 29.574240, 32.753040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.002316, 29.607853, 32.927444>,  <32.787273, 29.628021, 33.032085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.002316, 29.607853, 32.927444>,  <33.360722, 29.574240, 32.753040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002316, 29.607853, 32.927444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397708, -0.284784, 0.872196,
		0.197462, 0.954901, 0.221749,
		-0.896012, 0.084035, 0.436006,
		32.733513, 29.633064, 33.058247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860580, 29.570911, 32.146877>,  <33.360722, 29.574240, 32.753040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860580, 29.570911, 32.146877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.231014, 29.486244, 32.021931>,  <34.453274, 29.435444, 31.946962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.231014, 29.486244, 32.021931>,  <33.860580, 29.570911, 32.146877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231014, 29.486244, 32.021931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350526, -0.176186, -0.919831,
		0.139666, 0.961330, -0.237357,
		0.926080, -0.211669, -0.312364,
		34.508839, 29.422743, 31.928221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970371, 29.877499, 31.443964>,  <33.860580, 29.570911, 32.146877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970371, 29.877499, 31.443964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215366, 29.562517, 31.471596>,  <34.362366, 29.373528, 31.488174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215366, 29.562517, 31.471596>,  <33.970371, 29.877499, 31.443964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215366, 29.562517, 31.471596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330218, -0.334284, -0.882729,
		0.718201, 0.517851, -0.464777,
		0.612490, -0.787454, 0.069079,
		34.399113, 29.326281, 31.492319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464729, 29.947170, 30.922836>,  <33.970371, 29.877499, 31.443964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464729, 29.947170, 30.922836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473816, 29.559328, 31.020287>,  <34.479267, 29.326624, 31.078756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473816, 29.559328, 31.020287>,  <34.464729, 29.947170, 30.922836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473816, 29.559328, 31.020287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119740, -0.244574, -0.962209,
		0.992546, -0.007317, -0.121655,
		0.022713, -0.969603, 0.243627,
		34.480629, 29.268448, 31.093374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814777, 29.767509, 30.422918>,  <34.464729, 29.947170, 30.922836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814777, 29.767509, 30.422918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678043, 29.416464, 30.557346>,  <34.596004, 29.205835, 30.638002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678043, 29.416464, 30.557346>,  <34.814777, 29.767509, 30.422918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678043, 29.416464, 30.557346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026733, -0.366547, -0.930015,
		0.939381, -0.308924, 0.148759,
		-0.341831, -0.877616, 0.336069,
		34.575493, 29.153179, 30.658167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063934, 29.218885, 30.000040>,  <34.814777, 29.767509, 30.422918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063934, 29.218885, 30.000040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750347, 29.041946, 30.174271>,  <34.562195, 28.935783, 30.278809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750347, 29.041946, 30.174271>,  <35.063934, 29.218885, 30.000040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750347, 29.041946, 30.174271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288815, -0.361196, -0.886636,
		0.549530, -0.820893, 0.155408,
		-0.783966, -0.442349, 0.435574,
		34.515156, 28.909243, 30.304943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058823, 28.479620, 29.664515>,  <35.063934, 29.218885, 30.000040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058823, 28.479620, 29.664515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.700062, 28.566111, 29.818823>,  <34.484806, 28.618004, 29.911407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.700062, 28.566111, 29.818823>,  <35.058823, 28.479620, 29.664515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700062, 28.566111, 29.818823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439089, -0.331528, -0.835039,
		-0.052663, -0.918333, 0.392289,
		-0.896899, 0.216226, 0.385771,
		34.430992, 28.630978, 29.934555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604782, 27.884197, 29.391487>,  <35.058823, 28.479620, 29.664515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604782, 27.884197, 29.391487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327820, 28.139095, 29.526831>,  <34.161640, 28.292034, 29.608036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327820, 28.139095, 29.526831>,  <34.604782, 27.884197, 29.391487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327820, 28.139095, 29.526831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577080, -0.207651, -0.789848,
		-0.433068, -0.742157, 0.511522,
		-0.692409, 0.637247, 0.338357,
		34.120098, 28.330269, 29.628338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886715, 27.574753, 29.368145>,  <34.604782, 27.884197, 29.391487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886715, 27.574753, 29.368145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821381, 27.968904, 29.348736>,  <33.782181, 28.205395, 29.337091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821381, 27.968904, 29.348736>,  <33.886715, 27.574753, 29.368145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821381, 27.968904, 29.348736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522381, -0.128100, -0.843036,
		-0.836924, -0.112348, 0.535665,
		-0.163332, 0.985377, -0.048522,
		33.772381, 28.264517, 29.334179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209446, 27.683428, 29.253498>,  <33.886715, 27.574753, 29.368145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209446, 27.683428, 29.253498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342812, 28.040089, 29.130997>,  <33.422832, 28.254086, 29.057495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342812, 28.040089, 29.130997>,  <33.209446, 27.683428, 29.253498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342812, 28.040089, 29.130997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352258, -0.183493, -0.917738,
		-0.874498, 0.413871, 0.252911,
		0.333418, 0.891650, -0.306254,
		33.442837, 28.307585, 29.039120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661720, 27.924479, 28.910433>,  <33.209446, 27.683428, 29.253498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661720, 27.924479, 28.910433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.986946, 28.134033, 28.808870>,  <33.182083, 28.259766, 28.747932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.986946, 28.134033, 28.808870>,  <32.661720, 27.924479, 28.910433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986946, 28.134033, 28.808870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315305, 0.029641, -0.948527,
		-0.489396, 0.851271, 0.189284,
		0.813065, 0.523888, -0.253904,
		33.230865, 28.291199, 28.732698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315628, 28.516088, 28.602932>,  <32.661720, 27.924479, 28.910433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315628, 28.516088, 28.602932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.684406, 28.495905, 28.449326>,  <32.905674, 28.483795, 28.357161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.684406, 28.495905, 28.449326>,  <32.315628, 28.516088, 28.602932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684406, 28.495905, 28.449326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363361, 0.230607, -0.902657,
		0.134106, 0.971738, 0.194272,
		0.921946, -0.050461, -0.384018,
		32.960991, 28.480766, 28.334120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434807, 29.073862, 28.330147>,  <32.315628, 28.516088, 28.602932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434807, 29.073862, 28.330147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.682213, 28.820879, 28.143625>,  <32.830654, 28.669088, 28.031712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.682213, 28.820879, 28.143625>,  <32.434807, 29.073862, 28.330147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682213, 28.820879, 28.143625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298606, 0.359732, -0.883984,
		0.726828, 0.685995, 0.033643,
		0.618511, -0.632459, -0.466305,
		32.867767, 28.631142, 28.003735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830391, 29.446066, 27.827726>,  <32.434807, 29.073862, 28.330147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830391, 29.446066, 27.827726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.855846, 29.063255, 27.714554>,  <32.871120, 28.833569, 27.646650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.855846, 29.063255, 27.714554>,  <32.830391, 29.446066, 27.827726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855846, 29.063255, 27.714554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175016, 0.268410, -0.947273,
		0.982507, 0.109798, -0.150414,
		0.063636, -0.957027, -0.282931,
		32.874939, 28.776148, 27.629675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018661, 29.549236, 27.170815>,  <32.830391, 29.446066, 27.827726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018661, 29.549236, 27.170815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.875809, 29.177229, 27.205500>,  <32.790096, 28.954023, 27.226311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.875809, 29.177229, 27.205500>,  <33.018661, 29.549236, 27.170815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875809, 29.177229, 27.205500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315010, 0.032527, -0.948531,
		0.879332, -0.366067, -0.304582,
		-0.357133, -0.930020, 0.086713,
		32.768669, 28.898224, 27.231514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277576, 29.146896, 26.498280>,  <33.018661, 29.549236, 27.170815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277576, 29.146896, 26.498280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950470, 28.976959, 26.653593>,  <32.754208, 28.874996, 26.746782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950470, 28.976959, 26.653593>,  <33.277576, 29.146896, 26.498280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950470, 28.976959, 26.653593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441877, 0.031168, -0.896534,
		0.368787, -0.904729, -0.213218,
		-0.817766, -0.424846, 0.388285,
		32.705139, 28.849506, 26.770079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043190, 28.712543, 26.030310>,  <33.277576, 29.146896, 26.498280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043190, 28.712543, 26.030310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717197, 28.731318, 26.261345>,  <32.521603, 28.742582, 26.399965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717197, 28.731318, 26.261345>,  <33.043190, 28.712543, 26.030310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717197, 28.731318, 26.261345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564880, -0.286754, -0.773746,
		0.129311, -0.956854, 0.260210,
		-0.814978, 0.046934, 0.577588,
		32.472702, 28.745398, 26.434622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651798, 28.080645, 25.883842>,  <33.043190, 28.712543, 26.030310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651798, 28.080645, 25.883842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377258, 28.318386, 26.051493>,  <32.212532, 28.461031, 26.152082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377258, 28.318386, 26.051493>,  <32.651798, 28.080645, 25.883842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377258, 28.318386, 26.051493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648834, -0.240088, -0.722061,
		-0.328532, -0.767531, 0.550421,
		-0.686354, 0.594352, 0.419124,
		32.171352, 28.496691, 26.177231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994345, 27.688589, 25.791132>,  <32.651798, 28.080645, 25.883842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994345, 27.688589, 25.791132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.908525, 28.076439, 25.838108>,  <31.857033, 28.309149, 25.866295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.908525, 28.076439, 25.838108>,  <31.994345, 27.688589, 25.791132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908525, 28.076439, 25.838108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731794, -0.079947, -0.676821,
		-0.646874, -0.231155, 0.726719,
		-0.214549, 0.969626, 0.117442,
		31.844160, 28.367327, 25.873341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.269184, 27.700289, 25.785126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375889, 28.079668, 25.716675>,  <31.439913, 28.307295, 25.675604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375889, 28.079668, 25.716675>,  <31.269184, 27.700289, 25.785126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375889, 28.079668, 25.716675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857099, 0.152275, -0.492133,
		-0.440704, 0.277956, 0.853534,
		0.266763, 0.948448, -0.171128,
		31.455917, 28.364202, 25.665337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691309, 28.011963, 25.870096>,  <31.269184, 27.700289, 25.785126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691309, 28.011963, 25.870096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906878, 28.256819, 25.638632>,  <31.036219, 28.403732, 25.499754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906878, 28.256819, 25.638632>,  <30.691309, 28.011963, 25.870096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906878, 28.256819, 25.638632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762995, 0.063647, -0.643263,
		-0.356938, 0.788183, 0.501362,
		0.538919, 0.612141, -0.578661,
		31.068554, 28.440462, 25.465033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354998, 28.596972, 25.838591>,  <30.691309, 28.011963, 25.870096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354998, 28.596972, 25.838591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558226, 28.617218, 25.494659>,  <30.680162, 28.629366, 25.288301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558226, 28.617218, 25.494659>,  <30.354998, 28.596972, 25.838591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558226, 28.617218, 25.494659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811088, 0.364030, -0.457842,
		0.289827, 0.930011, 0.226009,
		0.508072, 0.050618, -0.859826,
		30.710648, 28.632404, 25.236712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055216, 29.209871, 25.439297>,  <30.354998, 28.596972, 25.838591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055216, 29.209871, 25.439297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282181, 29.018085, 25.171520>,  <30.418360, 28.903013, 25.010855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282181, 29.018085, 25.171520>,  <30.055216, 29.209871, 25.439297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282181, 29.018085, 25.171520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669797, 0.204151, -0.713929,
		0.478973, 0.853483, -0.205307,
		0.567413, -0.479467, -0.669443,
		30.452404, 28.874245, 24.970688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098854, 29.716518, 24.880972>,  <30.055216, 29.209871, 25.439297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098854, 29.716518, 24.880972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193949, 29.362446, 24.721006>,  <30.251005, 29.150002, 24.625027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193949, 29.362446, 24.721006>,  <30.098854, 29.716518, 24.880972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193949, 29.362446, 24.721006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543213, 0.220151, -0.810218,
		0.805233, 0.409858, -0.428505,
		0.237738, -0.885183, -0.399913,
		30.265270, 29.096891, 24.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295124, 29.875767, 24.206646>,  <30.098854, 29.716518, 24.880972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295124, 29.875767, 24.206646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198622, 29.487692, 24.215904>,  <30.140720, 29.254847, 24.221458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198622, 29.487692, 24.215904>,  <30.295124, 29.875767, 24.206646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198622, 29.487692, 24.215904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577765, 0.124428, -0.806663,
		0.779732, -0.207986, -0.590558,
		-0.241257, -0.970185, 0.023146,
		30.126245, 29.196636, 24.222849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423361, 29.582886, 23.537056>,  <30.295124, 29.875767, 24.206646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423361, 29.582886, 23.537056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143341, 29.362421, 23.718672>,  <29.975328, 29.230143, 23.827641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143341, 29.362421, 23.718672>,  <30.423361, 29.582886, 23.537056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143341, 29.362421, 23.718672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571459, 0.051123, -0.819036,
		0.428209, -0.832831, -0.350755,
		-0.700050, -0.551161, 0.454038,
		29.933327, 29.197073, 23.854883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331532, 28.823011, 23.258408>,  <30.423361, 29.582886, 23.537056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331532, 28.823011, 23.258408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996822, 29.018587, 23.356993>,  <29.795996, 29.135933, 23.416143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996822, 29.018587, 23.356993>,  <30.331532, 28.823011, 23.258408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996822, 29.018587, 23.356993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330473, -0.092086, -0.939312,
		-0.436573, -0.867443, 0.238637,
		-0.836775, 0.488941, 0.246465,
		29.745790, 29.165270, 23.430933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824886, 28.535969, 22.913567>,  <30.331532, 28.823011, 23.258408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824886, 28.535969, 22.913567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.657282, 28.891361, 22.988430>,  <29.556719, 29.104597, 23.033348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.657282, 28.891361, 22.988430>,  <29.824886, 28.535969, 22.913567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657282, 28.891361, 22.988430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180394, 0.120559, -0.976178,
		-0.889881, -0.442792, 0.109761,
		-0.419011, 0.888482, 0.187160,
		29.531578, 29.157906, 23.044579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287460, 28.484701, 22.521915>,  <29.824886, 28.535969, 22.913567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287460, 28.484701, 22.521915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.297361, 28.878719, 22.590117>,  <29.303301, 29.115129, 22.631037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.297361, 28.878719, 22.590117>,  <29.287460, 28.484701, 22.521915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297361, 28.878719, 22.590117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237809, 0.171462, -0.956058,
		-0.970997, -0.016884, 0.238496,
		0.024751, 0.985046, 0.170504,
		29.304787, 29.174232, 22.641268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692274, 28.725868, 22.218569>,  <29.287460, 28.484701, 22.521915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692274, 28.725868, 22.218569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.909096, 29.059513, 22.259428>,  <29.039188, 29.259701, 22.283943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.909096, 29.059513, 22.259428>,  <28.692274, 28.725868, 22.218569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909096, 29.059513, 22.259428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164243, 0.224367, -0.960564,
		-0.824136, 0.503901, 0.258617,
		0.542055, 0.834112, 0.102147,
		29.071712, 29.309746, 22.290071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262636, 29.178749, 21.866726>,  <28.692274, 28.725868, 22.218569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262636, 29.178749, 21.866726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.638565, 29.315386, 21.863878>,  <28.864122, 29.397367, 21.862169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.638565, 29.315386, 21.863878>,  <28.262636, 29.178749, 21.866726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638565, 29.315386, 21.863878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147045, 0.385579, -0.910882,
		-0.308404, 0.857114, 0.412604,
		0.939822, 0.341591, -0.007120,
		28.920511, 29.417864, 21.861742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198303, 29.790554, 21.304712>,  <28.262636, 29.178749, 21.866726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198303, 29.790554, 21.304712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.590652, 29.755842, 21.374405>,  <28.826061, 29.735016, 21.416222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.590652, 29.755842, 21.374405>,  <28.198303, 29.790554, 21.304712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590652, 29.755842, 21.374405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194310, 0.383848, -0.902720,
		0.011457, 0.919310, 0.393368,
		0.980873, -0.086778, 0.174234,
		28.884914, 29.729809, 21.426676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490637, 30.512428, 21.317947>,  <28.198303, 29.790554, 21.304712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490637, 30.512428, 21.317947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.798809, 30.271315, 21.234921>,  <28.983713, 30.126646, 21.185104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.798809, 30.271315, 21.234921>,  <28.490637, 30.512428, 21.317947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798809, 30.271315, 21.234921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066866, 0.400195, -0.913987,
		0.634005, 0.690286, 0.348629,
		0.770432, -0.602784, -0.207569,
		29.029940, 30.090479, 21.172649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000065, 30.918974, 20.933344>,  <28.490637, 30.512428, 21.317947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000065, 30.918974, 20.933344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.110506, 30.538635, 20.877264>,  <29.176771, 30.310432, 20.843616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.110506, 30.538635, 20.877264>,  <29.000065, 30.918974, 20.933344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110506, 30.538635, 20.877264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133413, 0.182373, -0.974136,
		0.951824, 0.250257, 0.177209,
		0.276102, -0.950848, -0.140199,
		29.193336, 30.253382, 20.835205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704361, 30.933723, 20.587280>,  <29.000065, 30.918974, 20.933344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704361, 30.933723, 20.587280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527016, 30.588839, 20.489281>,  <29.420609, 30.381908, 20.430481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527016, 30.588839, 20.489281>,  <29.704361, 30.933723, 20.587280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527016, 30.588839, 20.489281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002263, 0.274408, -0.961610,
		0.896340, -0.425787, -0.123613,
		-0.443361, -0.862210, -0.245000,
		29.394007, 30.330175, 20.415781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052807, 30.730753, 20.059082>,  <29.704361, 30.933723, 20.587280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052807, 30.730753, 20.059082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714960, 30.517565, 20.038847>,  <29.512251, 30.389652, 20.026705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714960, 30.517565, 20.038847>,  <30.052807, 30.730753, 20.059082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714960, 30.517565, 20.038847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125234, 0.288564, -0.949235,
		0.520516, -0.795406, -0.310473,
		-0.844618, -0.532973, -0.050590,
		29.461575, 30.357674, 20.023670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137514, 30.455605, 19.400360>,  <30.052807, 30.730753, 20.059082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137514, 30.455605, 19.400360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749823, 30.402277, 19.483131>,  <29.517208, 30.370281, 19.532795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749823, 30.402277, 19.483131>,  <30.137514, 30.455605, 19.400360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749823, 30.402277, 19.483131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223786, 0.127065, -0.966320,
		0.102526, -0.982895, -0.152988,
		-0.969230, -0.133310, 0.206931,
		29.459053, 30.362282, 19.545210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838139, 29.996435, 18.817577>,  <30.137514, 30.455605, 19.400360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838139, 29.996435, 18.817577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510309, 30.173824, 18.962702>,  <29.313612, 30.280258, 19.049776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510309, 30.173824, 18.962702>,  <29.838139, 29.996435, 18.817577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510309, 30.173824, 18.962702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348376, 0.117035, -0.930020,
		-0.454902, -0.888613, 0.058577,
		-0.819572, 0.443475, 0.362810,
		29.264437, 30.306868, 19.071545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334494, 29.742184, 18.357719>,  <29.838139, 29.996435, 18.817577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334494, 29.742184, 18.357719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.180374, 30.062267, 18.541552>,  <29.087902, 30.254316, 18.651852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.180374, 30.062267, 18.541552>,  <29.334494, 29.742184, 18.357719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180374, 30.062267, 18.541552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368699, 0.323058, -0.871605,
		-0.845936, -0.505273, 0.170563,
		-0.385297, 0.800208, 0.459580,
		29.064785, 30.302330, 18.679426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651939, 29.658197, 18.190388>,  <29.334494, 29.742184, 18.357719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651939, 29.658197, 18.190388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734543, 30.037701, 18.286064>,  <28.784105, 30.265402, 18.343470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734543, 30.037701, 18.286064>,  <28.651939, 29.658197, 18.190388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734543, 30.037701, 18.286064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408334, 0.305721, -0.860115,
		-0.889167, 0.079950, 0.450544,
		0.206507, 0.948758, 0.239191,
		28.796495, 30.322329, 18.357822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007643, 30.063354, 18.142988>,  <28.651939, 29.658197, 18.190388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007643, 30.063354, 18.142988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320070, 30.311829, 18.117510>,  <28.507526, 30.460913, 18.102222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320070, 30.311829, 18.117510>,  <28.007643, 30.063354, 18.142988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320070, 30.311829, 18.117510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378599, 0.389974, -0.839395,
		-0.496580, 0.679742, 0.539777,
		0.781071, 0.621185, -0.063696,
		28.554392, 30.498184, 18.098400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872196, 30.750629, 18.158951>,  <28.007643, 30.063354, 18.142988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872196, 30.750629, 18.158951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.209848, 30.699240, 17.950743>,  <28.412439, 30.668406, 17.825817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.209848, 30.699240, 17.950743>,  <27.872196, 30.750629, 18.158951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209848, 30.699240, 17.950743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424650, 0.432461, -0.795393,
		0.327291, 0.892453, 0.310497,
		0.844129, -0.128473, -0.520521,
		28.463087, 30.660698, 17.794586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167801, 31.399521, 17.936459>,  <27.872196, 30.750629, 18.158951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167801, 31.399521, 17.936459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299288, 31.125065, 17.676870>,  <28.378180, 30.960392, 17.521118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299288, 31.125065, 17.676870>,  <28.167801, 31.399521, 17.936459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299288, 31.125065, 17.676870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328363, 0.561252, -0.759720,
		0.885507, 0.462830, -0.040810,
		0.328717, -0.686138, -0.648969,
		28.397903, 30.919224, 17.482180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882225, 31.545937, 18.584377>,  <28.167801, 31.399521, 17.936459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882225, 31.545937, 18.584377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.483192, 31.567677, 18.567026>,  <27.243773, 31.580721, 18.556616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.483192, 31.567677, 18.567026>,  <27.882225, 31.545937, 18.584377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483192, 31.567677, 18.567026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060938, -0.382748, 0.921841,
		0.033496, 0.922253, 0.385133,
		-0.997579, 0.054348, -0.043379,
		27.183918, 31.583981, 18.554012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719454, 31.767578, 19.269873>,  <27.882225, 31.545937, 18.584377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719454, 31.767578, 19.269873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.372293, 31.637924, 19.119308>,  <27.163998, 31.560131, 19.028969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.372293, 31.637924, 19.119308>,  <27.719454, 31.767578, 19.269873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372293, 31.637924, 19.119308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342455, -0.158478, 0.926072,
		-0.359825, 0.932642, 0.026541,
		-0.867900, -0.324135, -0.376413,
		27.111923, 31.540684, 19.006384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148428, 32.201359, 19.598480>,  <27.719454, 31.767578, 19.269873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148428, 32.201359, 19.598480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.977564, 31.858398, 19.483662>,  <26.875046, 31.652622, 19.414770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.977564, 31.858398, 19.483662>,  <27.148428, 32.201359, 19.598480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977564, 31.858398, 19.483662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352151, -0.134638, 0.926209,
		-0.832780, 0.496725, -0.244422,
		-0.427162, -0.857401, -0.287046,
		26.849415, 31.601177, 19.397549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479113, 32.254192, 19.770515>,  <27.148428, 32.201359, 19.598480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479113, 32.254192, 19.770515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.549572, 31.862135, 19.734102>,  <26.591848, 31.626900, 19.712254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.549572, 31.862135, 19.734102>,  <26.479113, 32.254192, 19.770515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549572, 31.862135, 19.734102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212297, -0.128132, 0.968768,
		-0.961198, -0.151322, -0.230652,
		0.176150, -0.980145, -0.091035,
		26.602417, 31.568092, 19.706791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871265, 31.958660, 20.064182>,  <26.479113, 32.254192, 19.770515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871265, 31.958660, 20.064182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.164209, 31.686369, 20.070612>,  <26.339975, 31.522995, 20.074469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.164209, 31.686369, 20.070612>,  <25.871265, 31.958660, 20.064182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164209, 31.686369, 20.070612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167975, -0.157739, 0.973089,
		-0.659874, -0.715351, -0.229867,
		0.732360, -0.680728, 0.016072,
		26.383917, 31.482151, 20.075434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629995, 31.569012, 20.568806>,  <25.871265, 31.958660, 20.064182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629995, 31.569012, 20.568806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.993477, 31.420612, 20.492262>,  <26.211565, 31.331572, 20.446335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.993477, 31.420612, 20.492262>,  <25.629995, 31.569012, 20.568806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993477, 31.420612, 20.492262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021146, -0.416908, 0.908703,
		-0.416908, -0.829787, -0.371001,
		-0.908703, 0.371001, 0.191359,
		26.266088, 31.309313, 20.434855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667835, 30.859564, 20.910320>,  <25.629995, 31.569012, 20.568806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667835, 30.859564, 20.910320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.039209, 30.989859, 20.838879>,  <26.262033, 31.068035, 20.796013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.039209, 30.989859, 20.838879>,  <25.667835, 30.859564, 20.910320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039209, 30.989859, 20.838879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282477, -0.306776, 0.908898,
		0.241269, -0.894307, -0.376835,
		0.928437, 0.325736, -0.178605,
		26.317741, 31.087580, 20.785297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099545, 30.306057, 20.966812>,  <25.667835, 30.859564, 20.910320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099545, 30.306057, 20.966812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.313387, 30.636728, 21.037018>,  <26.441692, 30.835131, 21.079142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.313387, 30.636728, 21.037018>,  <26.099545, 30.306057, 20.966812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313387, 30.636728, 21.037018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380128, -0.420711, 0.823714,
		0.754786, -0.373643, -0.539156,
		0.534604, 0.826676, 0.175515,
		26.473768, 30.884731, 21.089672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365913, 30.055414, 21.544189>,  <26.099545, 30.306057, 20.966812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365913, 30.055414, 21.544189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.515320, 30.426405, 21.537556>,  <26.604963, 30.648998, 21.533575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.515320, 30.426405, 21.537556>,  <26.365913, 30.055414, 21.544189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515320, 30.426405, 21.537556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488885, -0.181630, 0.853230,
		0.788338, -0.326804, -0.521271,
		0.373517, 0.927475, -0.016584,
		26.627375, 30.704647, 21.532581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074493, 29.969084, 21.675940>,  <26.365913, 30.055414, 21.544189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074493, 29.969084, 21.675940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.949640, 30.333366, 21.784149>,  <26.874727, 30.551937, 21.849075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.949640, 30.333366, 21.784149>,  <27.074493, 29.969084, 21.675940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949640, 30.333366, 21.784149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536591, -0.065984, 0.841259,
		0.783991, 0.407746, -0.468082,
		-0.312134, 0.910708, 0.270524,
		26.856001, 30.606579, 21.865307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712461, 30.390429, 21.819880>,  <27.074493, 29.969084, 21.675940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712461, 30.390429, 21.819880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.386444, 30.515619, 22.014917>,  <27.190834, 30.590734, 22.131941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.386444, 30.515619, 22.014917>,  <27.712461, 30.390429, 21.819880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386444, 30.515619, 22.014917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448904, -0.190958, 0.872938,
		0.366321, 0.930366, 0.015142,
		-0.815042, 0.312978, 0.487597,
		27.141932, 30.609512, 22.161196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963980, 30.790953, 22.340975>,  <27.712461, 30.390429, 21.819880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963980, 30.790953, 22.340975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.593044, 30.718824, 22.472139>,  <27.370483, 30.675547, 22.550838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.593044, 30.718824, 22.472139>,  <27.963980, 30.790953, 22.340975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593044, 30.718824, 22.472139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329736, 0.020634, 0.943848,
		-0.176962, 0.983391, 0.040323,
		-0.927340, -0.180321, 0.327911,
		27.314842, 30.664728, 22.570513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793592, 31.184231, 22.991621>,  <27.963980, 30.790953, 22.340975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793592, 31.184231, 22.991621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.524387, 30.888378, 22.991699>,  <27.362864, 30.710867, 22.991747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.524387, 30.888378, 22.991699>,  <27.793592, 31.184231, 22.991621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524387, 30.888378, 22.991699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228397, -0.207572, 0.951183,
		-0.703484, 0.640203, 0.308628,
		-0.673012, -0.739631, 0.000197,
		27.322483, 30.666489, 22.991758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423054, 31.372114, 23.489292>,  <27.793592, 31.184231, 22.991621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423054, 31.372114, 23.489292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.382477, 30.977434, 23.438490>,  <27.358130, 30.740625, 23.408009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.382477, 30.977434, 23.438490>,  <27.423054, 31.372114, 23.489292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382477, 30.977434, 23.438490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235067, -0.147825, 0.960672,
		-0.966671, 0.067600, 0.246937,
		-0.101444, -0.986701, -0.127008,
		27.352043, 30.681423, 23.400387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051357, 31.114693, 24.033689>,  <27.423054, 31.372114, 23.489292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051357, 31.114693, 24.033689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.214582, 30.771242, 23.909595>,  <27.312517, 30.565172, 23.835140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.214582, 30.771242, 23.909595>,  <27.051357, 31.114693, 24.033689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214582, 30.771242, 23.909595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271469, -0.210325, 0.939185,
		-0.871658, -0.467467, 0.147264,
		0.408065, -0.858626, -0.310234,
		27.337002, 30.513655, 23.816525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939236, 30.666529, 24.568651>,  <27.051357, 31.114693, 24.033689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939236, 30.666529, 24.568651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.200506, 30.434561, 24.373896>,  <27.357267, 30.295380, 24.257042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.200506, 30.434561, 24.373896>,  <26.939236, 30.666529, 24.568651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200506, 30.434561, 24.373896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226735, -0.463710, 0.856484,
		-0.722465, -0.669827, -0.171396,
		0.653174, -0.579918, -0.486887,
		27.396458, 30.260586, 24.227829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719702, 30.025169, 24.804853>,  <26.939236, 30.666529, 24.568651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719702, 30.025169, 24.804853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097515, 29.986176, 24.679407>,  <27.324203, 29.962780, 24.604139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097515, 29.986176, 24.679407>,  <26.719702, 30.025169, 24.804853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097515, 29.986176, 24.679407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248032, -0.414173, 0.875752,
		-0.215263, -0.904963, -0.367021,
		0.944533, -0.097484, -0.313616,
		27.380875, 29.956930, 24.585321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976570, 29.306120, 24.875206>,  <26.719702, 30.025169, 24.804853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976570, 29.306120, 24.875206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317114, 29.515299, 24.858635>,  <27.521441, 29.640806, 24.848692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317114, 29.515299, 24.858635>,  <26.976570, 29.306120, 24.875206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317114, 29.515299, 24.858635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320918, -0.456727, 0.829706,
		0.414973, -0.719670, -0.556662,
		0.851357, 0.522948, -0.041425,
		27.572521, 29.672184, 24.846207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640472, 28.792461, 24.975468>,  <26.976570, 29.306120, 24.875206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640472, 28.792461, 24.975468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.747425, 29.172485, 25.039839>,  <27.811596, 29.400499, 25.078461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.747425, 29.172485, 25.039839>,  <27.640472, 28.792461, 24.975468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747425, 29.172485, 25.039839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654638, -0.301649, 0.693150,
		0.707076, -0.079985, -0.702599,
		0.267379, 0.950058, 0.160928,
		27.827639, 29.457502, 25.088118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329258, 28.708984, 25.182339>,  <27.640472, 28.792461, 24.975468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329258, 28.708984, 25.182339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230040, 29.080084, 25.293880>,  <28.170509, 29.302744, 25.360806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230040, 29.080084, 25.293880>,  <28.329258, 28.708984, 25.182339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230040, 29.080084, 25.293880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545382, -0.104167, 0.831690,
		0.800645, 0.358379, -0.480138,
		-0.248046, 0.927746, 0.278854,
		28.155626, 29.358408, 25.377537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.753563, 27.680485, 27.676149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.509239, 27.991547, 27.735693>,  <33.362644, 28.178185, 27.771420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.509239, 27.991547, 27.735693>,  <33.753563, 27.680485, 27.676149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509239, 27.991547, 27.735693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407451, 0.147521, 0.901233,
		0.678889, 0.611138, -0.406964,
		-0.610813, 0.777656, 0.148858,
		33.325996, 28.224844, 27.780350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187267, 28.330456, 27.864195>,  <33.753563, 27.680485, 27.676149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187267, 28.330456, 27.864195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816738, 28.366173, 28.010595>,  <33.594421, 28.387604, 28.098434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816738, 28.366173, 28.010595>,  <34.187267, 28.330456, 27.864195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816738, 28.366173, 28.010595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376233, 0.169149, 0.910954,
		0.019433, 0.981537, -0.190281,
		-0.926321, 0.089293, 0.366000,
		33.538841, 28.392962, 28.120396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264824, 28.878399, 28.324093>,  <34.187267, 28.330456, 27.864195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264824, 28.878399, 28.324093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923809, 28.717957, 28.458132>,  <33.719200, 28.621691, 28.538555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923809, 28.717957, 28.458132>,  <34.264824, 28.878399, 28.324093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923809, 28.717957, 28.458132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246583, 0.256634, 0.934524,
		-0.460840, 0.879349, -0.119885,
		-0.852539, -0.401105, 0.335100,
		33.668049, 28.597626, 28.558662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070267, 29.424879, 28.798737>,  <34.264824, 28.878399, 28.324093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070267, 29.424879, 28.798737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.865059, 29.088022, 28.865200>,  <33.741936, 28.885908, 28.905079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.865059, 29.088022, 28.865200>,  <34.070267, 29.424879, 28.798737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865059, 29.088022, 28.865200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017160, 0.203597, 0.978904,
		-0.858207, 0.499342, -0.118900,
		-0.513016, -0.842143, 0.166160,
		33.711155, 28.835379, 28.915049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557961, 29.566391, 29.304106>,  <34.070267, 29.424879, 28.798737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557961, 29.566391, 29.304106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.609150, 29.169683, 29.305714>,  <33.639866, 28.931660, 29.306679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.609150, 29.169683, 29.305714>,  <33.557961, 29.566391, 29.304106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609150, 29.169683, 29.305714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127492, 0.020470, 0.991628,
		-0.983549, -0.126393, 0.129062,
		0.127977, -0.991769, 0.004020,
		33.647545, 28.872152, 29.306919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374653, 29.367096, 29.939768>,  <33.557961, 29.566391, 29.304106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374653, 29.367096, 29.939768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599625, 29.048851, 29.849718>,  <33.734608, 28.857904, 29.795689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599625, 29.048851, 29.849718>,  <33.374653, 29.367096, 29.939768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599625, 29.048851, 29.849718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235464, -0.106881, 0.965988,
		-0.792613, -0.596304, 0.127225,
		0.562425, -0.795612, -0.225123,
		33.768353, 28.810167, 29.782181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189255, 28.787802, 30.359577>,  <33.374653, 29.367096, 29.939768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189255, 28.787802, 30.359577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.566517, 28.748318, 30.232630>,  <33.792873, 28.724627, 30.156462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.566517, 28.748318, 30.232630>,  <33.189255, 28.787802, 30.359577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566517, 28.748318, 30.232630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326602, 0.098217, 0.940045,
		-0.061624, -0.990257, 0.124873,
		0.943151, -0.098713, -0.317367,
		33.849461, 28.718704, 30.137419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507954, 28.295277, 30.823193>,  <33.189255, 28.787802, 30.359577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507954, 28.295277, 30.823193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.822788, 28.479115, 30.658621>,  <34.011688, 28.589418, 30.559877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.822788, 28.479115, 30.658621>,  <33.507954, 28.295277, 30.823193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822788, 28.479115, 30.658621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405628, 0.116868, 0.906536,
		0.464724, -0.880405, -0.094440,
		0.787082, 0.459597, -0.411428,
		34.058914, 28.616993, 30.535192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068077, 28.077526, 31.186024>,  <33.507954, 28.295277, 30.823193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068077, 28.077526, 31.186024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228138, 28.402153, 31.015734>,  <34.324173, 28.596930, 30.913561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228138, 28.402153, 31.015734>,  <34.068077, 28.077526, 31.186024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228138, 28.402153, 31.015734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321386, 0.310768, 0.894502,
		0.858249, -0.494756, -0.136473,
		0.400149, 0.811566, -0.425724,
		34.348183, 28.645622, 30.888016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628452, 28.088142, 31.589796>,  <34.068077, 28.077526, 31.186024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628452, 28.088142, 31.589796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.567642, 28.445311, 31.420288>,  <34.531158, 28.659613, 31.318584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.567642, 28.445311, 31.420288>,  <34.628452, 28.088142, 31.589796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567642, 28.445311, 31.420288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449459, 0.444310, 0.774967,
		0.880270, -0.072654, -0.468877,
		-0.152023, 0.892922, -0.423768,
		34.522034, 28.713186, 31.293158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286678, 28.408390, 31.622328>,  <34.628452, 28.088142, 31.589796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286678, 28.408390, 31.622328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017525, 28.698166, 31.562437>,  <34.856033, 28.872032, 31.526503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017525, 28.698166, 31.562437>,  <35.286678, 28.408390, 31.622328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017525, 28.698166, 31.562437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461641, 0.569375, 0.680220,
		0.578029, 0.388588, -0.717553,
		-0.672882, 0.724439, -0.149727,
		34.815659, 28.915497, 31.517519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674274, 29.029486, 31.371603>,  <35.286678, 28.408390, 31.622328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674274, 29.029486, 31.371603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.333076, 29.094719, 31.569914>,  <35.128357, 29.133858, 31.688900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.333076, 29.094719, 31.569914>,  <35.674274, 29.029486, 31.371603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333076, 29.094719, 31.569914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511647, 0.448770, 0.732682,
		-0.103003, 0.878641, -0.466241,
		-0.852999, 0.163082, 0.495779,
		35.077175, 29.143644, 31.718647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839024, 29.517525, 31.813993>,  <35.674274, 29.029486, 31.371603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839024, 29.517525, 31.813993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490520, 29.404621, 31.974609>,  <35.281418, 29.336880, 32.070980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490520, 29.404621, 31.974609>,  <35.839024, 29.517525, 31.813993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490520, 29.404621, 31.974609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320173, 0.293228, 0.900837,
		-0.372012, 0.913426, -0.165107,
		-0.871262, -0.282259, 0.401539,
		35.229141, 29.319944, 32.095070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530205, 29.772657, 32.150734>,  <35.839024, 29.517525, 31.813993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530205, 29.772657, 32.150734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.632969, 30.120228, 32.319950>,  <36.694626, 30.328770, 32.421482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.632969, 30.120228, 32.319950>,  <36.530205, 29.772657, 32.150734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632969, 30.120228, 32.319950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728629, 0.461722, -0.505877,
		-0.634898, -0.178277, 0.751746,
		0.256912, 0.868925, 0.423044,
		36.710041, 30.380905, 32.446865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952942, 30.185484, 32.377083>,  <36.530205, 29.772657, 32.150734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952942, 30.185484, 32.377083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.245579, 30.450653, 32.313461>,  <36.421162, 30.609755, 32.275288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.245579, 30.450653, 32.313461>,  <35.952942, 30.185484, 32.377083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245579, 30.450653, 32.313461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606106, 0.525669, -0.596915,
		-0.312098, 0.533106, 0.786380,
		0.731595, 0.662925, -0.159058,
		36.465057, 30.649530, 32.265743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646591, 30.782068, 32.468327>,  <35.952942, 30.185484, 32.377083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646591, 30.782068, 32.468327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982853, 30.849224, 32.262367>,  <36.184608, 30.889517, 32.138794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982853, 30.849224, 32.262367>,  <35.646591, 30.782068, 32.468327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982853, 30.849224, 32.262367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516641, 0.533769, -0.669457,
		0.162440, 0.828797, 0.535452,
		0.840652, 0.167890, -0.514896,
		36.235050, 30.899591, 32.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499229, 31.426029, 32.261444>,  <35.646591, 30.782068, 32.468327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499229, 31.426029, 32.261444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.784382, 31.272396, 32.026745>,  <35.955475, 31.180216, 31.885925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.784382, 31.272396, 32.026745>,  <35.499229, 31.426029, 32.261444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784382, 31.272396, 32.026745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407884, 0.453514, -0.792436,
		0.570462, 0.804241, 0.166641,
		0.712884, -0.384085, -0.586750,
		35.998245, 31.157171, 31.850719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776390, 31.934683, 31.940100>,  <35.499229, 31.426029, 32.261444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776390, 31.934683, 31.940100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876873, 31.618141, 31.717154>,  <35.937164, 31.428217, 31.583385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876873, 31.618141, 31.717154>,  <35.776390, 31.934683, 31.940100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876873, 31.618141, 31.717154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404914, 0.437107, -0.803108,
		0.879170, 0.427432, -0.210625,
		0.251208, -0.791353, -0.557364,
		35.952236, 31.380735, 31.549944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115616, 32.209606, 31.304033>,  <35.776390, 31.934683, 31.940100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115616, 32.209606, 31.304033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015884, 31.834379, 31.207808>,  <35.956047, 31.609243, 31.150072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015884, 31.834379, 31.207808>,  <36.115616, 32.209606, 31.304033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015884, 31.834379, 31.207808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374689, 0.322505, -0.869252,
		0.892998, -0.126591, -0.431891,
		-0.249326, -0.938065, -0.240564,
		35.941086, 31.552959, 31.135639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459763, 32.087490, 30.637938>,  <36.115616, 32.209606, 31.304033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459763, 32.087490, 30.637938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149883, 31.840822, 30.693884>,  <35.963955, 31.692822, 30.727451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149883, 31.840822, 30.693884>,  <36.459763, 32.087490, 30.637938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149883, 31.840822, 30.693884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422581, 0.340355, -0.839990,
		0.470395, -0.709841, -0.524266,
		-0.774695, -0.616672, 0.139864,
		35.917473, 31.655821, 30.735844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286076, 31.946978, 29.989433>,  <36.459763, 32.087490, 30.637938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286076, 31.946978, 29.989433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.958782, 31.791674, 30.159018>,  <35.762405, 31.698492, 30.260769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.958782, 31.791674, 30.159018>,  <36.286076, 31.946978, 29.989433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958782, 31.791674, 30.159018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516902, 0.174127, -0.838148,
		0.251597, -0.904949, -0.343170,
		-0.818237, -0.388260, 0.423960,
		35.713310, 31.675196, 30.286205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072704, 31.440424, 29.586372>,  <36.286076, 31.946978, 29.989433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072704, 31.440424, 29.586372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.757133, 31.573744, 29.792870>,  <35.567791, 31.653736, 29.916767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.757133, 31.573744, 29.792870>,  <36.072704, 31.440424, 29.586372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757133, 31.573744, 29.792870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393023, 0.372115, -0.840871,
		-0.472365, -0.866280, -0.162576,
		-0.788926, 0.333302, 0.516242,
		35.520454, 31.673735, 29.947742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614155, 31.491970, 29.092819>,  <36.072704, 31.440424, 29.586372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614155, 31.491970, 29.092819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.415409, 31.694017, 29.375090>,  <35.296162, 31.815247, 29.544451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.415409, 31.694017, 29.375090>,  <35.614155, 31.491970, 29.092819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415409, 31.694017, 29.375090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597443, 0.390678, -0.700309,
		-0.629431, -0.769561, 0.107666,
		-0.496868, 0.505121, 0.705674,
		35.266350, 31.845554, 29.586792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883152, 31.336323, 29.019876>,  <35.614155, 31.491970, 29.092819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883152, 31.336323, 29.019876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.903702, 31.686249, 29.212566>,  <34.916031, 31.896204, 29.328180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.903702, 31.686249, 29.212566>,  <34.883152, 31.336323, 29.019876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903702, 31.686249, 29.212566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668952, 0.388300, -0.633819,
		-0.741528, -0.289690, 0.605158,
		0.051372, 0.874816, 0.481724,
		34.919113, 31.948694, 29.357084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196587, 31.617657, 29.108639>,  <34.883152, 31.336323, 29.019876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196587, 31.617657, 29.108639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.453651, 31.922403, 29.140995>,  <34.607891, 32.105251, 29.160408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.453651, 31.922403, 29.140995>,  <34.196587, 31.617657, 29.108639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453651, 31.922403, 29.140995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503614, 0.499649, -0.704787,
		-0.577370, 0.412204, 0.704793,
		0.642664, 0.761866, 0.080890,
		34.646450, 32.150963, 29.165262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741753, 32.181976, 29.304007>,  <34.196587, 31.617657, 29.108639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741753, 32.181976, 29.304007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086140, 32.307041, 29.143515>,  <34.292770, 32.382080, 29.047218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086140, 32.307041, 29.143515>,  <33.741753, 32.181976, 29.304007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086140, 32.307041, 29.143515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507701, 0.479627, -0.715680,
		-0.031321, 0.819880, 0.571678,
		0.860964, 0.312658, -0.401232,
		34.344429, 32.400837, 29.023146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617340, 32.848343, 29.080212>,  <33.741753, 32.181976, 29.304007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617340, 32.848343, 29.080212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.948490, 32.743179, 28.882017>,  <34.147179, 32.680080, 28.763102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.948490, 32.743179, 28.882017>,  <33.617340, 32.848343, 29.080212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948490, 32.743179, 28.882017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414319, 0.308836, -0.856131,
		0.378110, 0.914056, 0.146748,
		0.827873, -0.262912, -0.495484,
		34.196854, 32.664307, 28.733372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726562, 33.429279, 28.591661>,  <33.617340, 32.848343, 29.080212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726562, 33.429279, 28.591661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.924393, 33.108471, 28.457701>,  <34.043091, 32.915985, 28.377323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.924393, 33.108471, 28.457701>,  <33.726562, 33.429279, 28.591661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924393, 33.108471, 28.457701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466236, 0.080373, -0.881002,
		0.733498, 0.591866, -0.334180,
		0.494575, -0.802019, -0.334903,
		34.072765, 32.867867, 28.357229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727741, 34.166035, 28.789415>,  <33.726562, 33.429279, 28.591661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727741, 34.166035, 28.789415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.464836, 34.455505, 28.873610>,  <33.307095, 34.629189, 28.924126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.464836, 34.455505, 28.873610>,  <33.727741, 34.166035, 28.789415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464836, 34.455505, 28.873610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115903, -0.373015, 0.920557,
		0.744699, 0.580649, 0.329044,
		-0.657260, 0.723675, 0.210485,
		33.267658, 34.672607, 28.936754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957943, 34.670177, 29.336586>,  <33.727741, 34.166035, 28.789415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957943, 34.670177, 29.336586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558193, 34.669453, 29.350750>,  <33.318344, 34.669018, 29.359247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558193, 34.669453, 29.350750>,  <33.957943, 34.670177, 29.336586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558193, 34.669453, 29.350750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033718, -0.357331, 0.933369,
		0.010958, 0.933976, 0.357168,
		-0.999371, -0.001816, 0.035408,
		33.258381, 34.668907, 29.361372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672649, 35.168659, 29.920361>,  <33.957943, 34.670177, 29.336586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672649, 35.168659, 29.920361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389297, 34.895462, 29.849125>,  <33.219284, 34.731544, 29.806383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389297, 34.895462, 29.849125>,  <33.672649, 35.168659, 29.920361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389297, 34.895462, 29.849125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002134, -0.250239, 0.968182,
		-0.705825, 0.686224, 0.175808,
		-0.708384, -0.682991, -0.178089,
		33.176781, 34.690563, 29.795698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473862, 34.998398, 30.572378>,  <33.672649, 35.168659, 29.920361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473862, 34.998398, 30.572378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254223, 34.740623, 30.359512>,  <33.122440, 34.585960, 30.231792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254223, 34.740623, 30.359512>,  <33.473862, 34.998398, 30.572378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254223, 34.740623, 30.359512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200400, -0.516648, 0.832415,
		-0.811378, 0.563721, 0.154545,
		-0.549095, -0.644432, -0.532167,
		33.089493, 34.547295, 30.199862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819550, 34.823952, 30.880728>,  <33.473862, 34.998398, 30.572378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819550, 34.823952, 30.880728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.891029, 34.486790, 30.677723>,  <32.933918, 34.284492, 30.555920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.891029, 34.486790, 30.677723>,  <32.819550, 34.823952, 30.880728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891029, 34.486790, 30.677723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330460, -0.537271, 0.775974,
		-0.926748, 0.029044, -0.374559,
		0.178702, -0.842909, -0.507513,
		32.944641, 34.233917, 30.525469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185093, 34.429840, 30.790697>,  <32.819550, 34.823952, 30.880728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185093, 34.429840, 30.790697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.477764, 34.159809, 30.752941>,  <32.653366, 33.997791, 30.730288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.477764, 34.159809, 30.752941>,  <32.185093, 34.429840, 30.790697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477764, 34.159809, 30.752941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509535, -0.633648, 0.582121,
		-0.452790, -0.377830, -0.807605,
		0.731680, -0.675081, -0.094391,
		32.697269, 33.957283, 30.724625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849768, 33.790081, 30.810850>,  <32.185093, 34.429840, 30.790697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849768, 33.790081, 30.810850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.220585, 33.662205, 30.889223>,  <32.443077, 33.585480, 30.936247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.220585, 33.662205, 30.889223>,  <31.849768, 33.790081, 30.810850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220585, 33.662205, 30.889223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360624, -0.617110, 0.699375,
		-0.102667, -0.719010, -0.687375,
		0.927043, -0.319687, 0.195935,
		32.498699, 33.566299, 30.948004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746628, 33.098869, 30.938694>,  <31.849768, 33.790081, 30.810850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746628, 33.098869, 30.938694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.094940, 33.187878, 31.114067>,  <32.303928, 33.241283, 31.219290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.094940, 33.187878, 31.114067>,  <31.746628, 33.098869, 30.938694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094940, 33.187878, 31.114067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309652, -0.444444, 0.840586,
		0.381909, -0.867729, -0.318108,
		0.870782, 0.222524, 0.438431,
		32.356174, 33.254635, 31.245596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010838, 32.491123, 31.416636>,  <31.746628, 33.098869, 30.938694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010838, 32.491123, 31.416636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.181561, 32.828686, 31.546652>,  <32.283997, 33.031223, 31.624662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.181561, 32.828686, 31.546652>,  <32.010838, 32.491123, 31.416636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181561, 32.828686, 31.546652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141793, -0.292531, 0.945685,
		0.893155, -0.449718, -0.005195,
		0.426812, 0.843907, 0.325042,
		32.309605, 33.081860, 31.644165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385677, 32.287579, 31.930567>,  <32.010838, 32.491123, 31.416636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385677, 32.287579, 31.930567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.379139, 32.672031, 32.040802>,  <32.375214, 32.902702, 32.106945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.379139, 32.672031, 32.040802>,  <32.385677, 32.287579, 31.930567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379139, 32.672031, 32.040802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117382, -0.275566, 0.954089,
		0.992952, -0.016751, 0.117325,
		-0.016349, 0.961136, 0.275590,
		32.374233, 32.960373, 32.123478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892487, 32.374817, 32.431725>,  <32.385677, 32.287579, 31.930567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892487, 32.374817, 32.431725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609756, 32.654961, 32.471493>,  <32.440117, 32.823048, 32.495354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609756, 32.654961, 32.471493>,  <32.892487, 32.374817, 32.431725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609756, 32.654961, 32.471493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233285, -0.363470, 0.901924,
		0.667809, 0.614314, 0.420296,
		-0.706830, 0.700363, 0.099419,
		32.397709, 32.865070, 32.501320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032326, 32.604622, 32.999840>,  <32.892487, 32.374817, 32.431725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032326, 32.604622, 32.999840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.662716, 32.740429, 32.929523>,  <32.440948, 32.821915, 32.887333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.662716, 32.740429, 32.929523>,  <33.032326, 32.604622, 32.999840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662716, 32.740429, 32.929523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279589, -0.286432, 0.916399,
		0.260782, 0.895926, 0.359596,
		-0.924025, 0.339519, -0.175795,
		32.385509, 32.842285, 32.876785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.306263, 35.741409, 25.389278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913437, 35.693916, 25.447857>,  <32.677742, 35.665421, 25.483004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913437, 35.693916, 25.447857>,  <33.306263, 35.741409, 25.389278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913437, 35.693916, 25.447857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139652, 0.063682, 0.988151,
		-0.126654, 0.990882, -0.045958,
		-0.982067, -0.118735, 0.146445,
		32.618816, 35.658295, 25.491791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989540, 36.280659, 25.900137>,  <33.306263, 35.741409, 25.389278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989540, 36.280659, 25.900137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762974, 35.951183, 25.910757>,  <32.627033, 35.753498, 25.917130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762974, 35.951183, 25.910757>,  <32.989540, 36.280659, 25.900137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762974, 35.951183, 25.910757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080218, -0.023043, 0.996511,
		-0.820205, 0.566571, 0.079126,
		-0.566417, -0.823691, 0.026549,
		32.593048, 35.704075, 25.918722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497509, 36.425793, 26.391220>,  <32.989540, 36.280659, 25.900137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497509, 36.425793, 26.391220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505985, 36.028355, 26.346828>,  <32.511070, 35.789890, 26.320194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505985, 36.028355, 26.346828>,  <32.497509, 36.425793, 26.391220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505985, 36.028355, 26.346828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168076, -0.105884, 0.980071,
		-0.985546, -0.039423, 0.164756,
		0.021193, -0.993597, -0.110980,
		32.512344, 35.730274, 26.313534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125748, 36.215508, 26.914604>,  <32.497509, 36.425793, 26.391220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125748, 36.215508, 26.914604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278702, 35.859169, 26.816488>,  <32.370476, 35.645367, 26.757618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278702, 35.859169, 26.816488>,  <32.125748, 36.215508, 26.914604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278702, 35.859169, 26.816488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010277, -0.269550, 0.962931,
		-0.923945, -0.365692, -0.112228,
		0.382387, -0.890849, -0.245291,
		32.393417, 35.591915, 26.742901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672678, 35.674606, 27.167286>,  <32.125748, 36.215508, 26.914604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672678, 35.674606, 27.167286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050739, 35.547569, 27.136774>,  <32.277576, 35.471348, 27.118467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050739, 35.547569, 27.136774>,  <31.672678, 35.674606, 27.167286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050739, 35.547569, 27.136774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042171, -0.350237, 0.935711,
		-0.323894, -0.881173, -0.344421,
		0.945153, -0.317596, -0.076280,
		32.334286, 35.452290, 27.113890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670187, 34.989738, 27.627598>,  <31.672678, 35.674606, 27.167286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670187, 34.989738, 27.627598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046207, 35.106441, 27.556971>,  <32.271820, 35.176464, 27.514595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046207, 35.106441, 27.556971>,  <31.670187, 34.989738, 27.627598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046207, 35.106441, 27.556971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292862, -0.425374, 0.856322,
		0.174733, -0.856699, -0.485320,
		0.940053, 0.291760, -0.176568,
		32.328224, 35.193970, 27.504000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143822, 34.376232, 27.634134>,  <31.670187, 34.989738, 27.627598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143822, 34.376232, 27.634134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397732, 34.677345, 27.703852>,  <32.550079, 34.858013, 27.745682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397732, 34.677345, 27.703852>,  <32.143822, 34.376232, 27.634134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397732, 34.677345, 27.703852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337221, -0.472842, 0.814065,
		0.695226, -0.457975, -0.554003,
		0.634777, 0.752781, 0.174294,
		32.588165, 34.903179, 27.756140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885105, 34.108829, 27.794897>,  <32.143822, 34.376232, 27.634134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885105, 34.108829, 27.794897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885933, 34.473591, 27.959059>,  <32.886429, 34.692448, 28.057556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885933, 34.473591, 27.959059>,  <32.885105, 34.108829, 27.794897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885933, 34.473591, 27.959059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560748, -0.340870, 0.754565,
		0.827984, 0.228571, -0.512053,
		0.002072, 0.911901, 0.410406,
		32.886555, 34.747162, 28.082180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505928, 34.182323, 28.104340>,  <32.885105, 34.108829, 27.794897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505928, 34.182323, 28.104340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265839, 34.437683, 28.297079>,  <33.121784, 34.590900, 28.412722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265839, 34.437683, 28.297079>,  <33.505928, 34.182323, 28.104340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265839, 34.437683, 28.297079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368717, -0.313751, 0.874990,
		0.709774, 0.702856, -0.047068,
		-0.600224, 0.638400, 0.481847,
		33.085770, 34.629204, 28.441633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850349, 33.644531, 27.774994>,  <33.505928, 34.182323, 28.104340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850349, 33.644531, 27.774994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957962, 33.259480, 27.787365>,  <34.022530, 33.028446, 27.794788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957962, 33.259480, 27.787365>,  <33.850349, 33.644531, 27.774994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957962, 33.259480, 27.787365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445472, -0.152842, -0.882153,
		0.853917, 0.223554, -0.469947,
		0.269036, -0.962633, 0.030927,
		34.038673, 32.970688, 27.796642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325005, 33.481892, 27.173302>,  <33.850349, 33.644531, 27.774994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325005, 33.481892, 27.173302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139423, 33.145473, 27.284571>,  <34.028072, 32.943623, 27.351332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139423, 33.145473, 27.284571>,  <34.325005, 33.481892, 27.173302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139423, 33.145473, 27.284571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333549, -0.125046, -0.934402,
		0.820664, -0.526306, -0.222516,
		-0.463957, -0.841050, 0.278170,
		34.000237, 32.893158, 27.368021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468723, 33.031063, 26.654512>,  <34.325005, 33.481892, 27.173302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468723, 33.031063, 26.654512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152424, 32.874260, 26.842575>,  <33.962646, 32.780178, 26.955412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152424, 32.874260, 26.842575>,  <34.468723, 33.031063, 26.654512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152424, 32.874260, 26.842575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369962, -0.305864, -0.877255,
		0.487697, -0.867626, 0.096833,
		-0.790747, -0.392010, 0.470157,
		33.915199, 32.756657, 26.983622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456047, 32.384460, 26.436636>,  <34.468723, 33.031063, 26.654512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456047, 32.384460, 26.436636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087189, 32.489971, 26.549822>,  <33.865875, 32.553276, 26.617733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087189, 32.489971, 26.549822>,  <34.456047, 32.384460, 26.436636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087189, 32.489971, 26.549822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357904, -0.304169, -0.882828,
		-0.146799, -0.915371, 0.374894,
		-0.922147, 0.263775, 0.282963,
		33.810543, 32.569103, 26.634710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075027, 31.992331, 25.978992>,  <34.456047, 32.384460, 26.436636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075027, 31.992331, 25.978992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793301, 32.229866, 26.134577>,  <33.624264, 32.372387, 26.227928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793301, 32.229866, 26.134577>,  <34.075027, 31.992331, 25.978992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793301, 32.229866, 26.134577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549428, -0.109052, -0.828394,
		-0.449516, -0.797159, 0.403079,
		-0.704318, 0.593839, 0.388961,
		33.582005, 32.408016, 26.251265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408527, 31.693018, 25.990515>,  <34.075027, 31.992331, 25.978992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408527, 31.693018, 25.990515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308445, 32.080288, 25.988211>,  <33.248394, 32.312649, 25.986828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308445, 32.080288, 25.988211>,  <33.408527, 31.693018, 25.990515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308445, 32.080288, 25.988211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470588, -0.126811, -0.873193,
		-0.846134, -0.215771, 0.487341,
		-0.250210, 0.968175, -0.005760,
		33.233383, 32.370739, 25.986483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742199, 31.700850, 25.780003>,  <33.408527, 31.693018, 25.990515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742199, 31.700850, 25.780003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834126, 32.082703, 25.704248>,  <32.889282, 32.311813, 25.658796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834126, 32.082703, 25.704248>,  <32.742199, 31.700850, 25.780003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834126, 32.082703, 25.704248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530303, -0.040339, -0.846848,
		-0.816067, 0.295047, 0.496973,
		0.229813, 0.954631, -0.189383,
		32.903069, 32.369091, 25.647434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099876, 31.978180, 25.469215>,  <32.742199, 31.700850, 25.780003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099876, 31.978180, 25.469215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412659, 32.201813, 25.358961>,  <32.600327, 32.335995, 25.292809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412659, 32.201813, 25.358961>,  <32.099876, 31.978180, 25.469215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412659, 32.201813, 25.358961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433053, 0.169196, -0.885346,
		-0.448347, 0.811664, 0.374416,
		0.781953, 0.559084, -0.275635,
		32.647243, 32.369537, 25.276270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797028, 32.563946, 25.139357>,  <32.099876, 31.978180, 25.469215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797028, 32.563946, 25.139357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166382, 32.569210, 24.985899>,  <32.387997, 32.572369, 24.893824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166382, 32.569210, 24.985899>,  <31.797028, 32.563946, 25.139357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166382, 32.569210, 24.985899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379298, 0.185066, -0.906578,
		0.059068, 0.982638, 0.175880,
		0.923387, 0.013161, -0.383644,
		32.443398, 32.573158, 24.870806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944231, 33.196770, 24.784025>,  <31.797028, 32.563946, 25.139357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944231, 33.196770, 24.784025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215458, 32.949177, 24.625488>,  <32.378193, 32.800621, 24.530367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215458, 32.949177, 24.625488>,  <31.944231, 33.196770, 24.784025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215458, 32.949177, 24.625488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384862, 0.160399, -0.908930,
		0.626186, 0.768850, -0.129463,
		0.678065, -0.618985, -0.396340,
		32.418877, 32.763481, 24.506586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167957, 33.490444, 24.165459>,  <31.944231, 33.196770, 24.784025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167957, 33.490444, 24.165459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330791, 33.132217, 24.093643>,  <32.428493, 32.917282, 24.050554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330791, 33.132217, 24.093643>,  <32.167957, 33.490444, 24.165459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330791, 33.132217, 24.093643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280052, 0.064716, -0.957801,
		0.869397, 0.440188, -0.224461,
		0.407086, -0.895570, -0.179540,
		32.452919, 32.863544, 24.039782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483105, 33.584316, 23.474878>,  <32.167957, 33.490444, 24.165459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483105, 33.584316, 23.474878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447731, 33.191795, 23.543253>,  <32.426506, 32.956284, 23.584278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447731, 33.191795, 23.543253>,  <32.483105, 33.584316, 23.474878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447731, 33.191795, 23.543253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305097, -0.136675, -0.942463,
		0.948207, -0.135495, -0.287307,
		-0.088431, -0.981306, 0.170935,
		32.421200, 32.897404, 23.594534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919510, 33.295181, 23.013706>,  <32.483105, 33.584316, 23.474878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919510, 33.295181, 23.013706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677330, 32.997871, 23.127527>,  <32.532021, 32.819485, 23.195820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677330, 32.997871, 23.127527>,  <32.919510, 33.295181, 23.013706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677330, 32.997871, 23.127527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222608, -0.185109, -0.957173,
		0.764116, -0.642866, -0.053384,
		-0.605452, -0.743275, 0.284552,
		32.495693, 32.774887, 23.212893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016914, 32.838184, 22.512272>,  <32.919510, 33.295181, 23.013706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016914, 32.838184, 22.512272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666187, 32.743748, 22.679821>,  <32.455750, 32.687088, 22.780350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666187, 32.743748, 22.679821>,  <33.016914, 32.838184, 22.512272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666187, 32.743748, 22.679821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387590, -0.168493, -0.906303,
		0.284545, -0.957012, 0.056232,
		-0.876817, -0.236089, 0.418872,
		32.403141, 32.672920, 22.805483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.055170, 32.400551, 25.631430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.418619, 32.498131, 25.495842>,  <26.636688, 32.556679, 25.414490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.418619, 32.498131, 25.495842>,  <26.055170, 32.400551, 25.631430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418619, 32.498131, 25.495842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351404, -0.008016, 0.936190,
		0.225663, -0.969756, -0.093007,
		0.908621, 0.243946, -0.338967,
		26.691206, 32.571316, 25.394152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487497, 32.081844, 25.962675>,  <26.055170, 32.400551, 25.631430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487497, 32.081844, 25.962675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.768963, 32.349716, 25.867685>,  <26.937841, 32.510437, 25.810692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.768963, 32.349716, 25.867685>,  <26.487497, 32.081844, 25.962675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768963, 32.349716, 25.867685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463678, -0.179544, 0.867622,
		0.538388, -0.720624, -0.436852,
		0.703663, 0.669675, -0.237473,
		26.980062, 32.550617, 25.796444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161728, 31.787960, 26.080421>,  <26.487497, 32.081844, 25.962675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161728, 31.787960, 26.080421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.278730, 32.168236, 26.039181>,  <27.348932, 32.396400, 26.014437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.278730, 32.168236, 26.039181>,  <27.161728, 31.787960, 26.080421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278730, 32.168236, 26.039181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586141, -0.093059, 0.804847,
		0.755565, -0.295854, -0.584458,
		0.292507, 0.950689, -0.103100,
		27.366482, 32.453442, 26.008251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872952, 31.834360, 26.298876>,  <27.161728, 31.787960, 26.080421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872952, 31.834360, 26.298876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.723049, 32.203533, 26.334089>,  <27.633108, 32.425037, 26.355217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.723049, 32.203533, 26.334089>,  <27.872952, 31.834360, 26.298876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723049, 32.203533, 26.334089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475088, 0.109631, 0.873082,
		0.796146, 0.369017, -0.479560,
		-0.374756, 0.922934, 0.088033,
		27.610622, 32.480415, 26.360498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467272, 32.319187, 26.538059>,  <27.872952, 31.834360, 26.298876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467272, 32.319187, 26.538059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.109791, 32.468838, 26.637117>,  <27.895302, 32.558628, 26.696552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.109791, 32.468838, 26.637117>,  <28.467272, 32.319187, 26.538059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109791, 32.468838, 26.637117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296698, 0.078772, 0.951717,
		0.336554, 0.924026, -0.181401,
		-0.893701, 0.374126, 0.247645,
		27.841681, 32.581074, 26.711411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639549, 32.855450, 26.927015>,  <28.467272, 32.319187, 26.538059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639549, 32.855450, 26.927015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.259499, 32.789223, 27.032728>,  <28.031467, 32.749485, 27.096157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.259499, 32.789223, 27.032728>,  <28.639549, 32.855450, 26.927015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259499, 32.789223, 27.032728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245988, 0.123037, 0.961432,
		-0.191700, 0.978493, -0.076172,
		-0.950127, -0.165569, 0.264283,
		27.974461, 32.739552, 27.112013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460333, 33.326820, 27.422230>,  <28.639549, 32.855450, 26.927015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460333, 33.326820, 27.422230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184713, 33.046249, 27.495127>,  <28.019342, 32.877907, 27.538864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184713, 33.046249, 27.495127>,  <28.460333, 33.326820, 27.422230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184713, 33.046249, 27.495127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197861, 0.059837, 0.978402,
		-0.697182, 0.710226, 0.097554,
		-0.689049, -0.701426, 0.182243,
		27.977999, 32.835823, 27.549799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116631, 33.559616, 28.062998>,  <28.460333, 33.326820, 27.422230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116631, 33.559616, 28.062998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.030222, 33.170433, 28.030277>,  <27.978376, 32.936924, 28.010645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.030222, 33.170433, 28.030277>,  <28.116631, 33.559616, 28.062998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030222, 33.170433, 28.030277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211730, -0.128464, 0.968849,
		-0.953156, 0.191971, 0.233755,
		-0.216020, -0.972957, -0.081800,
		27.965416, 32.878548, 28.005737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812504, 33.510151, 28.794548>,  <28.116631, 33.559616, 28.062998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812504, 33.510151, 28.794548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.883129, 33.143112, 28.652090>,  <27.925505, 32.922890, 28.566616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.883129, 33.143112, 28.652090>,  <27.812504, 33.510151, 28.794548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883129, 33.143112, 28.652090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072434, -0.348734, 0.934418,
		-0.981620, -0.190781, 0.004892,
		0.176563, -0.917599, -0.356143,
		27.936098, 32.867832, 28.545246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443750, 33.027367, 29.178747>,  <27.812504, 33.510151, 28.794548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443750, 33.027367, 29.178747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.724140, 32.795807, 29.012129>,  <27.892374, 32.656872, 28.912157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.724140, 32.795807, 29.012129>,  <27.443750, 33.027367, 29.178747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724140, 32.795807, 29.012129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195260, -0.405969, 0.892784,
		-0.685937, -0.707152, -0.171537,
		0.700973, -0.578899, -0.416548,
		27.934433, 32.622139, 28.887165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284899, 32.428009, 29.385017>,  <27.443750, 33.027367, 29.178747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284899, 32.428009, 29.385017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.668591, 32.365265, 29.290979>,  <27.898806, 32.327618, 29.234556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.668591, 32.365265, 29.290979>,  <27.284899, 32.428009, 29.385017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668591, 32.365265, 29.290979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134372, -0.478669, 0.867652,
		-0.248636, -0.863869, -0.438076,
		0.959231, -0.156864, -0.235094,
		27.956360, 32.318207, 29.220451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456261, 31.727201, 29.621588>,  <27.284899, 32.428009, 29.385017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456261, 31.727201, 29.621588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.805073, 31.922106, 29.603107>,  <28.014360, 32.039047, 29.592020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.805073, 31.922106, 29.603107>,  <27.456261, 31.727201, 29.621588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805073, 31.922106, 29.603107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283515, -0.425931, 0.859187,
		0.398972, -0.762337, -0.509572,
		0.872033, 0.487263, -0.046199,
		28.066683, 32.068283, 29.589247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946783, 31.210014, 29.794538>,  <27.456261, 31.727201, 29.621588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946783, 31.210014, 29.794538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.113470, 31.571108, 29.837275>,  <28.213482, 31.787764, 29.862917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.113470, 31.571108, 29.837275>,  <27.946783, 31.210014, 29.794538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113470, 31.571108, 29.837275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471937, -0.315296, 0.823324,
		0.776931, -0.292672, -0.557424,
		0.416718, 0.902735, 0.106840,
		28.238485, 31.841928, 29.869328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744831, 31.064331, 29.852064>,  <27.946783, 31.210014, 29.794538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744831, 31.064331, 29.852064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.648329, 31.418869, 30.010145>,  <28.590427, 31.631592, 30.104994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.648329, 31.418869, 30.010145>,  <28.744831, 31.064331, 29.852064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648329, 31.418869, 30.010145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497130, -0.236871, 0.834718,
		0.833462, 0.397848, -0.383483,
		-0.241255, 0.886346, 0.395205,
		28.575953, 31.684772, 30.128706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339487, 30.830050, 29.288221>,  <28.744831, 31.064331, 29.852064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339487, 30.830050, 29.288221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.511412, 30.470177, 29.257658>,  <29.614567, 30.254253, 29.239321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.511412, 30.470177, 29.257658>,  <29.339487, 30.830050, 29.288221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511412, 30.470177, 29.257658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422959, -0.125852, -0.897367,
		0.797728, 0.418014, -0.434620,
		0.429810, -0.899681, -0.076407,
		29.640354, 30.200272, 29.234735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581825, 30.880402, 28.557926>,  <29.339487, 30.830050, 29.288221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581825, 30.880402, 28.557926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.554176, 30.500910, 28.681305>,  <29.537586, 30.273214, 28.755331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.554176, 30.500910, 28.681305>,  <29.581825, 30.880402, 28.557926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554176, 30.500910, 28.681305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409796, -0.254891, -0.875841,
		0.909554, -0.186940, -0.371166,
		-0.069123, -0.948727, 0.308445,
		29.533440, 30.216291, 28.773838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850523, 30.418653, 27.985153>,  <29.581825, 30.880402, 28.557926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850523, 30.418653, 27.985153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.638601, 30.152590, 28.195629>,  <29.511448, 29.992952, 28.321915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.638601, 30.152590, 28.195629>,  <29.850523, 30.418653, 27.985153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638601, 30.152590, 28.195629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391311, -0.358724, -0.847463,
		0.752453, -0.654891, -0.070230,
		-0.529803, -0.665157, 0.526189,
		29.479660, 29.953043, 28.353485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015862, 29.741074, 27.738132>,  <29.850523, 30.418653, 27.985153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015862, 29.741074, 27.738132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.658306, 29.752441, 27.917088>,  <29.443773, 29.759262, 28.024462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.658306, 29.752441, 27.917088>,  <30.015862, 29.741074, 27.738132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658306, 29.752441, 27.917088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443300, -0.204535, -0.872726,
		0.066703, -0.978447, 0.195430,
		-0.893888, 0.028421, 0.447388,
		29.390141, 29.760967, 28.051304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728901, 29.139240, 27.563663>,  <30.015862, 29.741074, 27.738132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728901, 29.139240, 27.563663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.394434, 29.333822, 27.665005>,  <29.193754, 29.450571, 27.725809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.394434, 29.333822, 27.665005>,  <29.728901, 29.139240, 27.563663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394434, 29.333822, 27.665005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415308, -0.259830, -0.871784,
		-0.358255, -0.834176, 0.419289,
		-0.836166, 0.486455, 0.253354,
		29.143583, 29.479759, 27.741011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163033, 28.654547, 27.428162>,  <29.728901, 29.139240, 27.563663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163033, 28.654547, 27.428162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004284, 29.021683, 27.425055>,  <28.909035, 29.241964, 27.423189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004284, 29.021683, 27.425055>,  <29.163033, 28.654547, 27.428162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004284, 29.021683, 27.425055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425517, -0.191479, -0.884461,
		-0.813283, -0.347710, 0.466549,
		-0.396870, 0.917842, -0.007770,
		28.885223, 29.297035, 27.422724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532732, 28.519922, 27.093893>,  <29.163033, 28.654547, 27.428162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532732, 28.519922, 27.093893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.596397, 28.913958, 27.067776>,  <28.634598, 29.150379, 27.052105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.596397, 28.913958, 27.067776>,  <28.532732, 28.519922, 27.093893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596397, 28.913958, 27.067776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309924, -0.012938, -0.950673,
		-0.937344, 0.171551, 0.303244,
		0.159165, 0.985090, -0.065295,
		28.644148, 29.209484, 27.048187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834444, 28.873892, 26.902004>,  <28.532732, 28.519922, 27.093893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834444, 28.873892, 26.902004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.141390, 29.110275, 26.802471>,  <28.325558, 29.252106, 26.742752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.141390, 29.110275, 26.802471>,  <27.834444, 28.873892, 26.902004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141390, 29.110275, 26.802471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427261, 0.181888, -0.885644,
		-0.478121, 0.785928, 0.392068,
		0.767365, 0.590960, -0.248832,
		28.371599, 29.287563, 26.727821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527077, 29.435484, 26.692305>,  <27.834444, 28.873892, 26.902004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527077, 29.435484, 26.692305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.887537, 29.480923, 26.524963>,  <28.103813, 29.508186, 26.424559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.887537, 29.480923, 26.524963>,  <27.527077, 29.435484, 26.692305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887537, 29.480923, 26.524963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430703, 0.344094, -0.834323,
		0.049176, 0.932038, 0.359008,
		0.901153, 0.113597, -0.418353,
		28.157883, 29.515001, 26.399458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617275, 30.115126, 26.347221>,  <27.527077, 29.435484, 26.692305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617275, 30.115126, 26.347221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894295, 29.909861, 26.144426>,  <28.060507, 29.786701, 26.022749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894295, 29.909861, 26.144426>,  <27.617275, 30.115126, 26.347221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894295, 29.909861, 26.144426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396655, 0.316132, -0.861815,
		0.602528, 0.797949, 0.015387,
		0.692549, -0.513165, -0.506989,
		28.102060, 29.755911, 25.992329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958281, 30.590302, 25.866127>,  <27.617275, 30.115126, 26.347221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958281, 30.590302, 25.866127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.989676, 30.223824, 25.708939>,  <28.008512, 30.003937, 25.614626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.989676, 30.223824, 25.708939>,  <27.958281, 30.590302, 25.866127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989676, 30.223824, 25.708939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222515, 0.368144, -0.902750,
		0.971765, 0.158296, -0.174973,
		0.078486, -0.916195, -0.392972,
		28.013222, 29.948965, 25.591047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455107, 30.578697, 25.242104>,  <27.958281, 30.590302, 25.866127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455107, 30.578697, 25.242104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.235931, 30.246525, 25.201809>,  <28.104427, 30.047220, 25.177633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.235931, 30.246525, 25.201809>,  <28.455107, 30.578697, 25.242104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235931, 30.246525, 25.201809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236868, 0.269518, -0.933410,
		0.802284, -0.487588, -0.344382,
		-0.547936, -0.830432, -0.100736,
		28.071550, 29.997395, 25.171589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671370, 30.240988, 24.686296>,  <28.455107, 30.578697, 25.242104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671370, 30.240988, 24.686296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.333363, 30.036356, 24.748558>,  <28.130558, 29.913576, 24.785915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.333363, 30.036356, 24.748558>,  <28.671370, 30.240988, 24.686296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333363, 30.036356, 24.748558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269223, 0.155514, -0.950439,
		0.462018, -0.845046, -0.269141,
		-0.845020, -0.511579, 0.155655,
		28.079857, 29.882883, 24.795254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622292, 29.749825, 24.230881>,  <28.671370, 30.240988, 24.686296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622292, 29.749825, 24.230881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.238773, 29.800554, 24.332569>,  <28.008663, 29.830992, 24.393581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.238773, 29.800554, 24.332569>,  <28.622292, 29.749825, 24.230881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238773, 29.800554, 24.332569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255324, 0.007735, -0.966824,
		-0.124581, -0.991895, 0.024964,
		-0.958795, 0.126822, 0.254219,
		27.951134, 29.838602, 24.408834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835201, 29.023514, 24.476398>,  <28.622292, 29.749825, 24.230881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835201, 29.023514, 24.476398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.046736, 28.985102, 24.139090>,  <29.173656, 28.962053, 23.936705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.046736, 28.985102, 24.139090>,  <28.835201, 29.023514, 24.476398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046736, 28.985102, 24.139090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816917, -0.211861, 0.536434,
		-0.230172, -0.972570, -0.033589,
		0.528836, -0.096033, -0.843273,
		29.205387, 28.956291, 23.886108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108362, 28.315636, 24.452528>,  <28.835201, 29.023514, 24.476398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108362, 28.315636, 24.452528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.355860, 28.567957, 24.265234>,  <29.504358, 28.719349, 24.152857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.355860, 28.567957, 24.265234>,  <29.108362, 28.315636, 24.452528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355860, 28.567957, 24.265234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733404, -0.250204, 0.632073,
		0.281558, -0.734498, -0.617445,
		0.618743, 0.630802, -0.468237,
		29.541483, 28.757198, 24.124763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714426, 27.964096, 24.238165>,  <29.108362, 28.315636, 24.452528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714426, 27.964096, 24.238165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.830870, 28.346231, 24.258492>,  <29.900736, 28.575514, 24.270687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.830870, 28.346231, 24.258492>,  <29.714426, 27.964096, 24.238165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830870, 28.346231, 24.258492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790438, -0.270104, 0.549774,
		0.538947, -0.119876, -0.833766,
		0.291109, 0.955340, 0.050817,
		29.918201, 28.632833, 24.273737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411219, 27.919420, 24.074991>,  <29.714426, 27.964096, 24.238165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411219, 27.919420, 24.074991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.388178, 28.279234, 24.248207>,  <30.374353, 28.495121, 24.352137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.388178, 28.279234, 24.248207>,  <30.411219, 27.919420, 24.074991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388178, 28.279234, 24.248207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795618, -0.220651, 0.564186,
		0.603054, 0.377032, -0.702974,
		-0.057604, 0.899533, 0.433038,
		30.370897, 28.549093, 24.378119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114050, 28.229996, 24.108112>,  <30.411219, 27.919420, 24.074991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114050, 28.229996, 24.108112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.915236, 28.455200, 24.372225>,  <30.795948, 28.590322, 24.530693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.915236, 28.455200, 24.372225>,  <31.114050, 28.229996, 24.108112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915236, 28.455200, 24.372225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787878, -0.026031, 0.615281,
		0.363598, 0.826038, -0.430647,
		-0.497035, 0.563013, 0.660282,
		30.766125, 28.624104, 24.570309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544907, 28.750385, 24.247612>,  <31.114050, 28.229996, 24.108112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544907, 28.750385, 24.247612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.291410, 28.743420, 24.556952>,  <31.139313, 28.739241, 24.742556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.291410, 28.743420, 24.556952>,  <31.544907, 28.750385, 24.247612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291410, 28.743420, 24.556952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772870, 0.027464, 0.633970,
		-0.032280, 0.999471, -0.003946,
		-0.633743, -0.017415, 0.773348,
		31.101288, 28.738195, 24.788956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720707, 29.336096, 24.688704>,  <31.544907, 28.750385, 24.247612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720707, 29.336096, 24.688704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.525705, 29.065887, 24.909977>,  <31.408705, 28.903763, 25.042740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.525705, 29.065887, 24.909977>,  <31.720707, 29.336096, 24.688704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525705, 29.065887, 24.909977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712177, 0.058883, 0.699526,
		-0.505119, 0.734985, 0.452386,
		-0.487503, -0.675522, 0.553182,
		31.379454, 28.863230, 25.075932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749050, 29.575947, 25.391638>,  <31.720707, 29.336096, 24.688704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749050, 29.575947, 25.391638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.667801, 29.190306, 25.460039>,  <31.619051, 28.958921, 25.501080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.667801, 29.190306, 25.460039>,  <31.749050, 29.575947, 25.391638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667801, 29.190306, 25.460039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662426, -0.006695, 0.749097,
		-0.721063, 0.265437, 0.640008,
		-0.203123, -0.964105, 0.171005,
		31.606865, 28.901073, 25.511341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602589, 29.635075, 26.115395>,  <31.749050, 29.575947, 25.391638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602589, 29.635075, 26.115395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669476, 29.245092, 26.056736>,  <31.709608, 29.011103, 26.021542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669476, 29.245092, 26.056736>,  <31.602589, 29.635075, 26.115395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669476, 29.245092, 26.056736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567702, -0.026393, 0.822811,
		-0.806073, -0.220837, 0.549070,
		0.167216, -0.974953, -0.146645,
		31.719641, 28.952606, 26.012743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280027, 29.276825, 26.727100>,  <31.602589, 29.635075, 26.115395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280027, 29.276825, 26.727100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.550512, 29.045660, 26.544342>,  <31.712803, 28.906961, 26.434687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.550512, 29.045660, 26.544342>,  <31.280027, 29.276825, 26.727100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550512, 29.045660, 26.544342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507809, -0.083670, 0.857397,
		-0.533730, -0.811798, 0.236891,
		0.676212, -0.577914, -0.456896,
		31.753376, 28.872286, 26.407274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351156, 28.612984, 27.058350>,  <31.280027, 29.276825, 26.727100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351156, 28.612984, 27.058350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.695021, 28.690514, 26.869284>,  <31.901339, 28.737032, 26.755844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.695021, 28.690514, 26.869284>,  <31.351156, 28.612984, 27.058350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695021, 28.690514, 26.869284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500216, -0.131450, 0.855865,
		0.103759, -0.972189, -0.209958,
		0.859661, 0.193828, -0.472666,
		31.952919, 28.748661, 26.727484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784039, 28.084566, 27.230921>,  <31.351156, 28.612984, 27.058350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784039, 28.084566, 27.230921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068905, 28.343357, 27.121931>,  <32.239826, 28.498631, 27.056538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068905, 28.343357, 27.121931>,  <31.784039, 28.084566, 27.230921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068905, 28.343357, 27.121931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528687, -0.238933, 0.814495,
		0.461855, -0.724109, -0.512207,
		0.712166, 0.646976, -0.272474,
		32.282555, 28.537449, 27.040188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395641, 27.634384, 27.257988>,  <31.784039, 28.084566, 27.230921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395641, 27.634384, 27.257988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525272, 28.012568, 27.244808>,  <32.603050, 28.239477, 27.236900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525272, 28.012568, 27.244808>,  <32.395641, 27.634384, 27.257988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525272, 28.012568, 27.244808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538718, -0.155806, 0.827954,
		0.777661, -0.286071, -0.559828,
		0.324078, 0.945456, -0.032947,
		32.622498, 28.296204, 27.234924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165222, 27.598686, 27.259403>,  <32.395641, 27.634384, 27.257988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165222, 27.598686, 27.259403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.042496, 27.958046, 27.385094>,  <32.968861, 28.173662, 27.460508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.042496, 27.958046, 27.385094>,  <33.165222, 27.598686, 27.259403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042496, 27.958046, 27.385094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594172, -0.077113, 0.800633,
		0.743521, 0.432352, -0.510145,
		-0.306817, 0.898401, 0.314226,
		32.950451, 28.227566, 27.479362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.986027, 32.110725, 22.487177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627373, 32.286953, 22.504787>,  <32.412182, 32.392689, 22.515354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627373, 32.286953, 22.504787>,  <32.986027, 32.110725, 22.487177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627373, 32.286953, 22.504787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085820, -0.075386, -0.993455,
		-0.434372, -0.894545, 0.105403,
		-0.896636, 0.440574, 0.044024,
		32.358383, 32.419125, 22.517994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629574, 31.819429, 21.919487>,  <32.986027, 32.110725, 22.487177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629574, 31.819429, 21.919487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399696, 32.126244, 22.033602>,  <32.261772, 32.310333, 22.102070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399696, 32.126244, 22.033602>,  <32.629574, 31.819429, 21.919487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399696, 32.126244, 22.033602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279168, 0.143947, -0.949391,
		-0.769283, -0.625249, 0.131407,
		-0.574690, 0.767035, 0.285285,
		32.227291, 32.356354, 22.119186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066444, 31.658239, 21.588018>,  <32.629574, 31.819429, 21.919487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066444, 31.658239, 21.588018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022816, 32.048031, 21.666496>,  <31.996637, 32.281906, 21.713583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022816, 32.048031, 21.666496>,  <32.066444, 31.658239, 21.588018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022816, 32.048031, 21.666496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264417, 0.161815, -0.950736,
		-0.958220, -0.155579, 0.240019,
		-0.109076, 0.974480, 0.196192,
		31.990093, 32.340374, 21.725353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576410, 31.814226, 21.212158>,  <32.066444, 31.658239, 21.588018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576410, 31.814226, 21.212158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.701176, 32.186008, 21.290972>,  <31.776035, 32.409077, 21.338261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.701176, 32.186008, 21.290972>,  <31.576410, 31.814226, 21.212158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701176, 32.186008, 21.290972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306885, 0.294823, -0.904932,
		-0.899184, 0.221793, 0.377195,
		0.311913, 0.929456, 0.197035,
		31.794750, 32.464844, 21.350082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011383, 32.253204, 21.143255>,  <31.576410, 31.814226, 21.212158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011383, 32.253204, 21.143255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336500, 32.482929, 21.104189>,  <31.531570, 32.620762, 21.080750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336500, 32.482929, 21.104189>,  <31.011383, 32.253204, 21.143255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336500, 32.482929, 21.104189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238455, 0.175026, -0.955251,
		-0.531515, 0.799710, 0.279207,
		0.812792, 0.574309, -0.097666,
		31.580338, 32.655220, 21.074888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874575, 32.907970, 20.913029>,  <31.011383, 32.253204, 21.143255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874575, 32.907970, 20.913029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244984, 32.818233, 20.791603>,  <31.467230, 32.764393, 20.718748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244984, 32.818233, 20.791603>,  <30.874575, 32.907970, 20.913029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244984, 32.818233, 20.791603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273028, 0.157219, -0.949072,
		0.260644, 0.961744, 0.084336,
		0.926024, -0.224344, -0.303562,
		31.522791, 32.750931, 20.700535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941370, 33.307331, 20.382858>,  <30.874575, 32.907970, 20.913029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941370, 33.307331, 20.382858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250917, 33.061073, 20.323376>,  <31.436646, 32.913319, 20.287685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250917, 33.061073, 20.323376>,  <30.941370, 33.307331, 20.382858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250917, 33.061073, 20.323376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142389, 0.059668, -0.988011,
		0.617134, 0.785763, -0.041486,
		0.773867, -0.615642, -0.148707,
		31.483078, 32.876381, 20.278763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425781, 33.573265, 19.957876>,  <30.941370, 33.307331, 20.382858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425781, 33.573265, 19.957876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520037, 33.186916, 19.914871>,  <31.576590, 32.955105, 19.889069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520037, 33.186916, 19.914871>,  <31.425781, 33.573265, 19.957876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520037, 33.186916, 19.914871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255889, 0.045063, -0.965655,
		0.937548, 0.255057, -0.236539,
		0.235638, -0.965876, -0.107515,
		31.590729, 32.897152, 19.882616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700031, 33.471123, 19.288116>,  <31.425781, 33.573265, 19.957876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700031, 33.471123, 19.288116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614265, 33.093185, 19.387144>,  <31.562805, 32.866421, 19.446560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614265, 33.093185, 19.387144>,  <31.700031, 33.471123, 19.288116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614265, 33.093185, 19.387144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246552, -0.192899, -0.949738,
		0.945113, -0.264675, -0.191594,
		-0.214414, -0.944847, 0.247568,
		31.549942, 32.809731, 19.461414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900671, 32.983627, 18.710529>,  <31.700031, 33.471123, 19.288116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900671, 32.983627, 18.710529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.628996, 32.786076, 18.927706>,  <31.465990, 32.667545, 19.058012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.628996, 32.786076, 18.927706>,  <31.900671, 32.983627, 18.710529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628996, 32.786076, 18.927706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530213, -0.181361, -0.828241,
		0.507521, -0.850405, -0.138684,
		-0.679188, -0.493882, 0.542940,
		31.425240, 32.637913, 19.090588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755995, 32.409447, 18.360956>,  <31.900671, 32.983627, 18.710529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755995, 32.409447, 18.360956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.431965, 32.440536, 18.593418>,  <31.237547, 32.459190, 18.732895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.431965, 32.440536, 18.593418>,  <31.755995, 32.409447, 18.360956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431965, 32.440536, 18.593418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582414, -0.221021, -0.782268,
		0.067649, -0.972167, 0.224309,
		-0.810073, 0.077720, 0.581155,
		31.188944, 32.463852, 18.767765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396595, 31.867126, 18.192076>,  <31.755995, 32.409447, 18.360956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396595, 31.867126, 18.192076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111847, 32.087219, 18.366653>,  <30.940998, 32.219276, 18.471399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111847, 32.087219, 18.366653>,  <31.396595, 31.867126, 18.192076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111847, 32.087219, 18.366653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647210, -0.272684, -0.711872,
		-0.272684, -0.789232, 0.550232,
		0.711872, -0.550232, -0.436443,
		30.898285, 32.252289, 18.497585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773867, 31.435461, 18.230021>,  <31.396595, 31.867126, 18.192076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773867, 31.435461, 18.230021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663740, 31.819399, 18.251549>,  <30.597664, 32.049763, 18.264465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663740, 31.819399, 18.251549>,  <30.773867, 31.435461, 18.230021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663740, 31.819399, 18.251549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756544, -0.181779, -0.628170,
		-0.593163, -0.213664, 0.776212,
		-0.275316, 0.959846, 0.053822,
		30.581146, 32.107353, 18.267694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020761, 31.625542, 18.555933>,  <30.773867, 31.435461, 18.230021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020761, 31.625542, 18.555933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.156790, 31.849483, 18.253696>,  <30.238407, 31.983849, 18.072355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.156790, 31.849483, 18.253696>,  <30.020761, 31.625542, 18.555933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156790, 31.849483, 18.253696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659829, -0.430445, -0.615908,
		-0.670059, 0.708011, 0.223027,
		0.340069, 0.559855, -0.755590,
		30.258810, 32.017441, 18.027020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425608, 31.384220, 18.123535>,  <30.020761, 31.625542, 18.555933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425608, 31.384220, 18.123535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.104719, 31.146160, 18.142456>,  <28.912186, 31.003325, 18.153809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.104719, 31.146160, 18.142456>,  <29.425608, 31.384220, 18.123535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104719, 31.146160, 18.142456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174523, -0.158001, 0.971894,
		-0.570951, 0.787928, 0.230619,
		-0.802220, -0.595152, 0.047301,
		28.864054, 30.967615, 18.156647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994287, 31.600739, 18.744295>,  <29.425608, 31.384220, 18.123535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994287, 31.600739, 18.744295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.930468, 31.224247, 18.625212>,  <28.892176, 30.998352, 18.553761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.930468, 31.224247, 18.625212>,  <28.994287, 31.600739, 18.744295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930468, 31.224247, 18.625212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170860, -0.323351, 0.930727,
		-0.972292, 0.097631, 0.212409,
		-0.159550, -0.941229, -0.297710,
		28.882603, 30.941877, 18.535898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536335, 31.362919, 19.171856>,  <28.994287, 31.600739, 18.744295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536335, 31.362919, 19.171856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.701647, 31.025854, 19.033798>,  <28.800833, 30.823616, 18.950964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.701647, 31.025854, 19.033798>,  <28.536335, 31.362919, 19.171856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701647, 31.025854, 19.033798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239579, -0.265052, 0.933996,
		-0.878523, -0.468689, 0.092344,
		0.413278, -0.842661, -0.345143,
		28.825630, 30.773056, 18.930256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353374, 30.986900, 19.619167>,  <28.536335, 31.362919, 19.171856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353374, 30.986900, 19.619167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.634760, 30.771200, 19.433975>,  <28.803591, 30.641781, 19.322861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.634760, 30.771200, 19.433975>,  <28.353374, 30.986900, 19.619167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634760, 30.771200, 19.433975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250903, -0.421053, 0.871644,
		-0.664973, -0.729331, -0.160894,
		0.703462, -0.539251, -0.462980,
		28.845798, 30.609425, 19.295082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192051, 30.379433, 19.857473>,  <28.353374, 30.986900, 19.619167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192051, 30.379433, 19.857473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.575657, 30.362473, 19.745405>,  <28.805820, 30.352297, 19.678164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.575657, 30.362473, 19.745405>,  <28.192051, 30.379433, 19.857473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575657, 30.362473, 19.745405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241470, -0.395109, 0.886330,
		-0.148278, -0.917655, -0.368676,
		0.959013, -0.042399, -0.280173,
		28.863361, 30.349752, 19.661354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403055, 29.674393, 20.004072>,  <28.192051, 30.379433, 19.857473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403055, 29.674393, 20.004072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752476, 29.869081, 20.002932>,  <28.962128, 29.985895, 20.002247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752476, 29.869081, 20.002932>,  <28.403055, 29.674393, 20.004072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752476, 29.869081, 20.002932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231571, -0.410449, 0.881990,
		0.428113, -0.771125, -0.471259,
		0.873552, 0.486722, -0.002851,
		29.014542, 30.015099, 20.002077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919874, 29.158325, 20.139172>,  <28.403055, 29.674393, 20.004072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919874, 29.158325, 20.139172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.055216, 29.523539, 20.230282>,  <29.136421, 29.742666, 20.284948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.055216, 29.523539, 20.230282>,  <28.919874, 29.158325, 20.139172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055216, 29.523539, 20.230282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005974, -0.244132, 0.969724,
		0.940999, -0.326751, -0.088058,
		0.338356, 0.913035, 0.227776,
		29.156723, 29.797449, 20.298615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476177, 29.019718, 20.571583>,  <28.919874, 29.158325, 20.139172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476177, 29.019718, 20.571583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.405123, 29.406683, 20.643761>,  <29.362490, 29.638863, 20.687067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.405123, 29.406683, 20.643761>,  <29.476177, 29.019718, 20.571583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405123, 29.406683, 20.643761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176764, -0.149014, 0.972908,
		0.968091, 0.204719, -0.144534,
		-0.177635, 0.967412, 0.180446,
		29.351831, 29.696907, 20.697895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020853, 29.285116, 20.917154>,  <29.476177, 29.019718, 20.571583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020853, 29.285116, 20.917154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724524, 29.542536, 20.994122>,  <29.546726, 29.696987, 21.040302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724524, 29.542536, 20.994122>,  <30.020853, 29.285116, 20.917154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724524, 29.542536, 20.994122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018301, -0.267021, 0.963517,
		0.671452, 0.717316, 0.186037,
		-0.740822, 0.643551, 0.192419,
		29.502277, 29.735601, 21.051847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105453, 29.462471, 21.599346>,  <30.020853, 29.285116, 20.917154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105453, 29.462471, 21.599346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724257, 29.572567, 21.548666>,  <29.495539, 29.638624, 21.518257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724257, 29.572567, 21.548666>,  <30.105453, 29.462471, 21.599346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724257, 29.572567, 21.548666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137026, -0.018528, 0.990394,
		0.270246, 0.961198, 0.055371,
		-0.952990, 0.275238, -0.126702,
		29.438360, 29.655138, 21.510654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935720, 30.204306, 21.828800>,  <30.105453, 29.462471, 21.599346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935720, 30.204306, 21.828800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.638681, 29.939917, 21.872002>,  <29.460459, 29.781282, 21.897923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.638681, 29.939917, 21.872002>,  <29.935720, 30.204306, 21.828800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638681, 29.939917, 21.872002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079058, 0.073622, 0.994148,
		-0.665055, 0.746790, -0.002417,
		-0.742598, -0.660972, 0.108003,
		29.415901, 29.741625, 21.904402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758512, 30.394087, 22.379065>,  <29.935720, 30.204306, 21.828800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758512, 30.394087, 22.379065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.556829, 30.050108, 22.347416>,  <29.435820, 29.843719, 22.328426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.556829, 30.050108, 22.347416>,  <29.758512, 30.394087, 22.379065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556829, 30.050108, 22.347416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063864, -0.054241, 0.996483,
		-0.861217, 0.507489, -0.027571,
		-0.504209, -0.859949, -0.079123,
		29.405567, 29.792124, 22.323679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283682, 30.507326, 22.890123>,  <29.758512, 30.394087, 22.379065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283682, 30.507326, 22.890123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.319969, 30.114380, 22.824724>,  <29.341742, 29.878613, 22.785484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.319969, 30.114380, 22.824724>,  <29.283682, 30.507326, 22.890123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319969, 30.114380, 22.824724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059231, -0.169207, 0.983799,
		-0.994113, -0.079566, -0.073537,
		0.090720, -0.982363, -0.163499,
		29.347185, 29.819672, 22.775675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873100, 30.220648, 23.368267>,  <29.283682, 30.507326, 22.890123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873100, 30.220648, 23.368267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.081123, 29.898857, 23.253473>,  <29.205936, 29.705782, 23.184597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.081123, 29.898857, 23.253473>,  <28.873100, 30.220648, 23.368267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081123, 29.898857, 23.253473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216428, -0.449144, 0.866850,
		-0.826257, -0.388700, -0.407691,
		0.520056, -0.804476, -0.286983,
		29.237141, 29.657515, 23.167379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345093, 29.809862, 23.509872>,  <28.873100, 30.220648, 23.368267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345093, 29.809862, 23.509872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.042482, 29.904882, 23.753590>,  <27.860916, 29.961895, 23.899820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.042482, 29.904882, 23.753590>,  <28.345093, 29.809862, 23.509872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042482, 29.904882, 23.753590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548895, 0.275831, -0.789070,
		-0.355506, -0.931390, -0.078283,
		-0.756525, 0.237550, 0.609295,
		27.815525, 29.976147, 23.936378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771482, 29.395329, 23.371073>,  <28.345093, 29.809862, 23.509872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771482, 29.395329, 23.371073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.663618, 29.753084, 23.513817>,  <27.598900, 29.967737, 23.599463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.663618, 29.753084, 23.513817>,  <27.771482, 29.395329, 23.371073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663618, 29.753084, 23.513817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556165, 0.157873, -0.815939,
		-0.786107, -0.418499, 0.454857,
		-0.269660, 0.894391, 0.356859,
		27.582720, 30.021400, 23.620874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009081, 29.416605, 23.214596>,  <27.771482, 29.395329, 23.371073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009081, 29.416605, 23.214596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.089584, 29.797773, 23.305311>,  <27.137886, 30.026474, 23.359741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.089584, 29.797773, 23.305311>,  <27.009081, 29.416605, 23.214596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089584, 29.797773, 23.305311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392451, 0.290576, -0.872667,
		-0.897483, 0.086630, 0.432457,
		0.201261, 0.952922, 0.226789,
		27.149963, 30.083651, 23.373348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373857, 29.790236, 23.056461>,  <27.009081, 29.416605, 23.214596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373857, 29.790236, 23.056461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.667738, 30.061420, 23.046818>,  <26.844067, 30.224131, 23.041031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.667738, 30.061420, 23.046818>,  <26.373857, 29.790236, 23.056461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667738, 30.061420, 23.046818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385003, 0.387436, -0.837655,
		-0.558558, 0.624708, 0.545667,
		0.734701, 0.677962, -0.024109,
		26.888147, 30.264809, 23.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099340, 30.399632, 22.935022>,  <26.373857, 29.790236, 23.056461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099340, 30.399632, 22.935022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.478096, 30.469109, 22.826777>,  <26.705349, 30.510796, 22.761829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.478096, 30.469109, 22.826777>,  <26.099340, 30.399632, 22.935022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478096, 30.469109, 22.826777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311441, 0.285890, -0.906240,
		-0.080042, 0.942389, 0.324801,
		0.946888, 0.173694, -0.270616,
		26.762163, 30.521217, 22.745592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075207, 31.098146, 22.759340>,  <26.099340, 30.399632, 22.935022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075207, 31.098146, 22.759340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.397442, 30.928097, 22.594271>,  <26.590782, 30.826067, 22.495228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.397442, 30.928097, 22.594271>,  <26.075207, 31.098146, 22.759340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397442, 30.928097, 22.594271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232791, 0.413391, -0.880293,
		0.544830, 0.805219, 0.234057,
		0.805586, -0.425124, -0.412675,
		26.639118, 30.800560, 22.470469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469976, 31.681631, 22.474144>,  <26.075207, 31.098146, 22.759340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469976, 31.681631, 22.474144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.575872, 31.349651, 22.277739>,  <26.639410, 31.150463, 22.159895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.575872, 31.349651, 22.277739>,  <26.469976, 31.681631, 22.474144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575872, 31.349651, 22.277739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244165, 0.434899, -0.866745,
		0.932897, 0.349350, -0.087510,
		0.264740, -0.829950, -0.491015,
		26.655294, 31.100666, 22.130434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199903, 31.853067, 22.557247>,  <26.469976, 31.681631, 22.474144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199903, 31.853067, 22.557247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.998083, 32.198380, 22.551931>,  <26.876991, 32.405567, 22.548742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.998083, 32.198380, 22.551931>,  <27.199903, 31.853067, 22.557247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998083, 32.198380, 22.551931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029275, 0.032490, 0.999043,
		0.862885, 0.503680, -0.041665,
		-0.504551, 0.863279, -0.013290,
		26.846718, 32.457363, 22.547945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488346, 32.414246, 22.980101>,  <27.199903, 31.853067, 22.557247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488346, 32.414246, 22.980101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.103468, 32.518597, 22.948790>,  <26.872541, 32.581207, 22.930004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.103468, 32.518597, 22.948790>,  <27.488346, 32.414246, 22.980101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103468, 32.518597, 22.948790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034092, 0.169777, 0.984893,
		0.270224, 0.950326, -0.154465,
		-0.962194, 0.260875, -0.078276,
		26.814810, 32.596859, 22.925306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478472, 32.979248, 23.489037>,  <27.488346, 32.414246, 22.980101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478472, 32.979248, 23.489037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.100050, 32.860069, 23.438122>,  <26.872997, 32.788563, 23.407572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.100050, 32.860069, 23.438122>,  <27.478472, 32.979248, 23.489037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100050, 32.860069, 23.438122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223679, 0.316387, 0.921882,
		-0.234402, 0.900625, -0.365966,
		-0.946057, -0.297950, -0.127289,
		26.816233, 32.770683, 23.399935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221626, 33.472729, 23.867571>,  <27.478472, 32.979248, 23.489037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221626, 33.472729, 23.867571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.931215, 33.200432, 23.828629>,  <26.756969, 33.037052, 23.805264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.931215, 33.200432, 23.828629>,  <27.221626, 33.472729, 23.867571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931215, 33.200432, 23.828629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231273, 0.108384, 0.966833,
		-0.647611, 0.724461, -0.236127,
		-0.726025, -0.680741, -0.097358,
		26.713408, 32.996208, 23.799421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651070, 33.773148, 24.290588>,  <27.221626, 33.472729, 23.867571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651070, 33.773148, 24.290588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.644966, 33.376007, 24.243248>,  <26.641304, 33.137722, 24.214844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.644966, 33.376007, 24.243248>,  <26.651070, 33.773148, 24.290588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644966, 33.376007, 24.243248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094510, -0.116402, 0.988695,
		-0.995407, 0.026269, -0.092059,
		-0.015257, -0.992855, -0.118350,
		26.640388, 33.078152, 24.207743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088793, 33.511509, 24.666790>,  <26.651070, 33.773148, 24.290588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088793, 33.511509, 24.666790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.367464, 33.226833, 24.630703>,  <26.534666, 33.056026, 24.609051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.367464, 33.226833, 24.630703>,  <26.088793, 33.511509, 24.666790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367464, 33.226833, 24.630703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127173, -0.246289, 0.960817,
		-0.706022, -0.657906, -0.262091,
		0.696678, -0.711689, -0.090217,
		26.576468, 33.013325, 24.603638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865889, 32.969284, 25.139118>,  <26.088793, 33.511509, 24.666790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865889, 32.969284, 25.139118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.247391, 32.878166, 25.060667>,  <26.476292, 32.823498, 25.013596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.247391, 32.878166, 25.060667>,  <25.865889, 32.969284, 25.139118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247391, 32.878166, 25.060667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117727, -0.317282, 0.940996,
		-0.276572, -0.920568, -0.275793,
		0.953755, -0.227785, -0.196127,
		26.533516, 32.809830, 25.001829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.555769, 35.443317, 19.383879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665564, 35.058720, 19.378466>,  <29.731440, 34.827961, 19.375217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665564, 35.058720, 19.378466>,  <29.555769, 35.443317, 19.383879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665564, 35.058720, 19.378466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141287, 0.026406, 0.989617,
		-0.951155, -0.273548, 0.143095,
		0.274486, -0.961496, -0.013532,
		29.747910, 34.770271, 19.374407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302246, 35.217762, 19.949619>,  <29.555769, 35.443317, 19.383879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302246, 35.217762, 19.949619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587896, 34.957741, 19.845728>,  <29.759287, 34.801727, 19.783394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587896, 34.957741, 19.845728>,  <29.302246, 35.217762, 19.949619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587896, 34.957741, 19.845728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264857, -0.092540, 0.959837,
		-0.647979, -0.754234, 0.106085,
		0.714125, -0.650051, -0.259728,
		29.802134, 34.762726, 19.767809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207869, 34.525024, 20.366280>,  <29.302246, 35.217762, 19.949619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207869, 34.525024, 20.366280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581490, 34.588139, 20.238121>,  <29.805662, 34.626007, 20.161226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581490, 34.588139, 20.238121>,  <29.207869, 34.525024, 20.366280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581490, 34.588139, 20.238121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319922, 0.029086, 0.946997,
		0.158745, -0.987044, -0.023313,
		0.934050, 0.157790, -0.320395,
		29.861704, 34.635475, 20.142002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708345, 34.076241, 20.761425>,  <29.207869, 34.525024, 20.366280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708345, 34.076241, 20.761425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953047, 34.353680, 20.609276>,  <30.099867, 34.520142, 20.517986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953047, 34.353680, 20.609276>,  <29.708345, 34.076241, 20.761425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953047, 34.353680, 20.609276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589341, -0.078868, 0.804026,
		0.527671, -0.716032, -0.457013,
		0.611752, 0.693598, -0.380371,
		30.136572, 34.561760, 20.495165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408476, 33.854626, 21.052563>,  <29.708345, 34.076241, 20.761425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408476, 33.854626, 21.052563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457186, 34.225616, 20.911165>,  <30.486412, 34.448212, 20.826326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457186, 34.225616, 20.911165>,  <30.408476, 33.854626, 21.052563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457186, 34.225616, 20.911165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355127, 0.291854, 0.888091,
		0.926853, -0.233680, -0.293832,
		0.121773, 0.927478, -0.353492,
		30.493717, 34.503860, 20.805117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050196, 34.068047, 21.330139>,  <30.408476, 33.854626, 21.052563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050196, 34.068047, 21.330139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895241, 34.412048, 21.197279>,  <30.802269, 34.618450, 21.117563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895241, 34.412048, 21.197279>,  <31.050196, 34.068047, 21.330139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895241, 34.412048, 21.197279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512985, 0.500432, 0.697434,
		0.766015, 0.099789, -0.635030,
		-0.387385, 0.860006, -0.332148,
		30.779026, 34.670052, 21.097635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588518, 34.543064, 21.272982>,  <31.050196, 34.068047, 21.330139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588518, 34.543064, 21.272982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243614, 34.727150, 21.357561>,  <31.036671, 34.837601, 21.408310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243614, 34.727150, 21.357561>,  <31.588518, 34.543064, 21.272982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243614, 34.727150, 21.357561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425387, 0.431504, 0.795519,
		0.274864, 0.775894, -0.567836,
		-0.862262, 0.460210, 0.211450,
		30.984936, 34.865211, 21.420996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775354, 35.112122, 21.559914>,  <31.588518, 34.543064, 21.272982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775354, 35.112122, 21.559914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.405380, 35.076912, 21.707830>,  <31.183395, 35.055786, 21.796581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.405380, 35.076912, 21.707830>,  <31.775354, 35.112122, 21.559914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405380, 35.076912, 21.707830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301078, 0.424220, 0.854043,
		-0.232046, 0.901271, -0.365875,
		-0.924936, -0.088020, 0.369792,
		31.127899, 35.050507, 21.818768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618876, 35.686863, 21.835726>,  <31.775354, 35.112122, 21.559914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618876, 35.686863, 21.835726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343084, 35.462296, 22.018778>,  <31.177608, 35.327553, 22.128609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343084, 35.462296, 22.018778>,  <31.618876, 35.686863, 21.835726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343084, 35.462296, 22.018778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049512, 0.593807, 0.803083,
		-0.722611, 0.576367, -0.381620,
		-0.689479, -0.561422, 0.457628,
		31.136240, 35.293869, 22.156067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108610, 36.149208, 22.208313>,  <31.618876, 35.686863, 21.835726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108610, 36.149208, 22.208313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142496, 35.789253, 22.379436>,  <31.162828, 35.573280, 22.482111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142496, 35.789253, 22.379436>,  <31.108610, 36.149208, 22.208313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142496, 35.789253, 22.379436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098458, 0.434809, 0.895124,
		-0.991529, -0.033711, 0.125437,
		0.084716, -0.899891, 0.427806,
		31.167912, 35.519287, 22.507778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688061, 36.192810, 22.811886>,  <31.108610, 36.149208, 22.208313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688061, 36.192810, 22.811886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.900328, 35.869011, 22.912367>,  <31.027687, 35.674732, 22.972656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.900328, 35.869011, 22.912367>,  <30.688061, 36.192810, 22.811886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900328, 35.869011, 22.912367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015467, 0.287078, 0.957782,
		-0.847439, -0.512149, 0.139823,
		0.530667, -0.809499, 0.251203,
		31.059528, 35.626160, 22.987728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424994, 35.907093, 23.485294>,  <30.688061, 36.192810, 22.811886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424994, 35.907093, 23.485294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.797445, 35.768570, 23.439568>,  <31.020916, 35.685455, 23.412130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.797445, 35.768570, 23.439568>,  <30.424994, 35.907093, 23.485294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797445, 35.768570, 23.439568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226183, 0.302493, 0.925926,
		-0.286074, -0.888015, 0.359988,
		0.931130, -0.346306, -0.114318,
		31.076784, 35.664677, 23.405272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811762, 35.687599, 23.726259>,  <30.424994, 35.907093, 23.485294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811762, 35.687599, 23.726259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466122, 35.857151, 23.834818>,  <29.258738, 35.958881, 23.899952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466122, 35.857151, 23.834818>,  <29.811762, 35.687599, 23.726259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466122, 35.857151, 23.834818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301057, -0.003163, -0.953601,
		-0.403358, -0.905711, 0.130347,
		-0.864098, 0.423884, 0.271395,
		29.206892, 35.984318, 23.916237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373768, 35.249062, 23.381250>,  <29.811762, 35.687599, 23.726259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373768, 35.249062, 23.381250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228647, 35.611443, 23.468542>,  <29.141575, 35.828873, 23.520918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228647, 35.611443, 23.468542>,  <29.373768, 35.249062, 23.381250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228647, 35.611443, 23.468542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303880, 0.106366, -0.946754,
		-0.880926, -0.409801, 0.236711,
		-0.362802, 0.905952, 0.218231,
		29.119806, 35.883228, 23.534012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575451, 35.264999, 23.176664>,  <29.373768, 35.249062, 23.381250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575451, 35.264999, 23.176664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693113, 35.644928, 23.219208>,  <28.763712, 35.872887, 23.244734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693113, 35.644928, 23.219208>,  <28.575451, 35.264999, 23.176664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693113, 35.644928, 23.219208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413476, 0.226797, -0.881817,
		-0.861690, 0.215416, 0.459442,
		0.294158, 0.949821, 0.106360,
		28.781361, 35.929874, 23.251116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951612, 35.663956, 23.007345>,  <28.575451, 35.264999, 23.176664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951612, 35.663956, 23.007345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254217, 35.921959, 22.964157>,  <28.435780, 36.076759, 22.938244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254217, 35.921959, 22.964157>,  <27.951612, 35.663956, 23.007345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254217, 35.921959, 22.964157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311819, 0.210632, -0.926501,
		-0.574858, 0.734574, 0.360471,
		0.756510, 0.645008, -0.107971,
		28.481171, 36.115463, 22.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682924, 36.282543, 22.781019>,  <27.951612, 35.663956, 23.007345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682924, 36.282543, 22.781019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064623, 36.290546, 22.661676>,  <28.293642, 36.295349, 22.590071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064623, 36.290546, 22.661676>,  <27.682924, 36.282543, 22.781019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064623, 36.290546, 22.661676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296184, 0.200523, -0.933845,
		0.041145, 0.979485, 0.197274,
		0.954244, 0.020006, -0.298358,
		28.350897, 36.296547, 22.572168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635376, 36.930286, 22.451624>,  <27.682924, 36.282543, 22.781019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635376, 36.930286, 22.451624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954973, 36.724339, 22.327351>,  <28.146730, 36.600769, 22.252787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954973, 36.724339, 22.327351>,  <27.635376, 36.930286, 22.451624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954973, 36.724339, 22.327351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333047, 0.051299, -0.941514,
		0.500691, 0.855735, -0.130487,
		0.798992, -0.514866, -0.310685,
		28.194672, 36.569878, 22.234144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775654, 37.162155, 21.714891>,  <27.635376, 36.930286, 22.451624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775654, 37.162155, 21.714891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987383, 36.823414, 21.735506>,  <28.114420, 36.620171, 21.747875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987383, 36.823414, 21.735506>,  <27.775654, 37.162155, 21.714891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987383, 36.823414, 21.735506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290411, -0.237927, -0.926851,
		0.797169, 0.475636, -0.371876,
		0.529323, -0.846854, 0.051539,
		28.146179, 36.569359, 21.750967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383928, 37.152687, 21.270042>,  <27.775654, 37.162155, 21.714891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383928, 37.152687, 21.270042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.241440, 36.782993, 21.325035>,  <28.155947, 36.561176, 21.358030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.241440, 36.782993, 21.325035>,  <28.383928, 37.152687, 21.270042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241440, 36.782993, 21.325035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243966, -0.050036, -0.968492,
		0.901990, -0.378539, -0.207658,
		-0.356221, -0.924232, 0.137482,
		28.134573, 36.505722, 21.366280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692442, 36.714725, 20.772816>,  <28.383928, 37.152687, 21.270042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692442, 36.714725, 20.772816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358564, 36.537525, 20.903683>,  <28.158237, 36.431206, 20.982203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358564, 36.537525, 20.903683>,  <28.692442, 36.714725, 20.772816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358564, 36.537525, 20.903683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330575, -0.072107, -0.941021,
		0.440464, -0.893617, -0.086258,
		-0.834693, -0.443000, 0.327168,
		28.108156, 36.404625, 21.001833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567266, 36.414581, 20.249807>,  <28.692442, 36.714725, 20.772816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567266, 36.414581, 20.249807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226931, 36.361786, 20.453238>,  <28.022728, 36.330109, 20.575294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226931, 36.361786, 20.453238>,  <28.567266, 36.414581, 20.249807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226931, 36.361786, 20.453238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500008, -0.093991, -0.860905,
		0.161435, -0.986784, 0.013974,
		-0.850841, -0.131993, 0.508574,
		27.971678, 36.322189, 20.605810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260550, 35.972595, 19.835209>,  <28.567266, 36.414581, 20.249807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260550, 35.972595, 19.835209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982164, 36.127365, 20.077177>,  <27.815134, 36.220226, 20.222357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982164, 36.127365, 20.077177>,  <28.260550, 35.972595, 19.835209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982164, 36.127365, 20.077177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658641, -0.008379, -0.752410,
		-0.286057, -0.922074, 0.260675,
		-0.695962, 0.386923, 0.604919,
		27.773376, 36.243443, 20.258654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673656, 35.596004, 19.728941>,  <28.260550, 35.972595, 19.835209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673656, 35.596004, 19.728941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550381, 35.950809, 19.866480>,  <27.476416, 36.163692, 19.949003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550381, 35.950809, 19.866480>,  <27.673656, 35.596004, 19.728941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550381, 35.950809, 19.866480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738062, 0.005114, -0.674714,
		-0.600237, -0.461719, 0.653093,
		-0.308189, 0.887011, 0.343847,
		27.457924, 36.216911, 19.969633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945061, 34.914623, 19.968227>,  <27.673656, 35.596004, 19.728941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945061, 34.914623, 19.968227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634975, 35.091488, 20.148687>,  <27.448925, 35.197609, 20.256964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634975, 35.091488, 20.148687>,  <27.945061, 34.914623, 19.968227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634975, 35.091488, 20.148687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333809, -0.893059, 0.301689,
		0.536301, 0.083275, 0.839908,
		-0.775211, 0.442166, 0.451151,
		27.402412, 35.224136, 20.284033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880600, 34.583805, 20.637674>,  <27.945061, 34.914623, 19.968227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880600, 34.583805, 20.637674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508591, 34.709480, 20.561419>,  <27.285385, 34.784885, 20.515665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508591, 34.709480, 20.561419>,  <27.880600, 34.583805, 20.637674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508591, 34.709480, 20.561419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365909, -0.743356, 0.559940,
		0.034213, 0.590513, 0.806302,
		-0.930021, 0.314191, -0.190642,
		27.229584, 34.803738, 20.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557579, 34.540459, 21.294991>,  <27.880600, 34.583805, 20.637674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557579, 34.540459, 21.294991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.272099, 34.520901, 21.015493>,  <27.100811, 34.509167, 20.847795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.272099, 34.520901, 21.015493>,  <27.557579, 34.540459, 21.294991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272099, 34.520901, 21.015493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352797, -0.836692, 0.418903,
		-0.605115, 0.545486, 0.579898,
		-0.713701, -0.048898, -0.698741,
		27.057987, 34.506229, 20.805872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988947, 34.413689, 21.613035>,  <27.557579, 34.540459, 21.294991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988947, 34.413689, 21.613035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.874084, 34.295296, 21.248632>,  <26.805166, 34.224258, 21.029991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.874084, 34.295296, 21.248632>,  <26.988947, 34.413689, 21.613035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874084, 34.295296, 21.248632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393483, -0.830666, 0.393912,
		-0.873334, 0.471580, 0.122066,
		-0.287157, -0.295986, -0.911007,
		26.787937, 34.206501, 20.975330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284212, 34.307831, 21.631702>,  <26.988947, 34.413689, 21.613035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284212, 34.307831, 21.631702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380371, 34.074722, 21.321198>,  <26.438066, 33.934856, 21.134893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380371, 34.074722, 21.321198>,  <26.284212, 34.307831, 21.631702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380371, 34.074722, 21.321198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438270, -0.778724, 0.448897,
		-0.866100, 0.232300, -0.442614,
		0.240395, -0.582774, -0.776263,
		26.452490, 33.899891, 21.088318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742327, 33.924416, 21.511486>,  <26.284212, 34.307831, 21.631702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742327, 33.924416, 21.511486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032509, 33.709045, 21.339994>,  <26.206617, 33.579823, 21.237099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032509, 33.709045, 21.339994>,  <25.742327, 33.924416, 21.511486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032509, 33.709045, 21.339994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246470, -0.784829, 0.568591,
		-0.642626, -0.306818, -0.702065,
		0.725454, -0.538429, -0.428730,
		26.250145, 33.547516, 21.211374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373369, 33.223110, 21.535913>,  <25.742327, 33.924416, 21.511486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373369, 33.223110, 21.535913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.764568, 33.158073, 21.483631>,  <25.999287, 33.119049, 21.452261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.764568, 33.158073, 21.483631>,  <25.373369, 33.223110, 21.535913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764568, 33.158073, 21.483631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033838, -0.741874, 0.669685,
		-0.205856, -0.650527, -0.731053,
		0.977997, -0.162596, -0.130707,
		26.057968, 33.109295, 21.444420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456907, 32.536884, 21.596945>,  <25.373369, 33.223110, 21.535913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456907, 32.536884, 21.596945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.828098, 32.675598, 21.651487>,  <26.050814, 32.758827, 21.684214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.828098, 32.675598, 21.651487>,  <25.456907, 32.536884, 21.596945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828098, 32.675598, 21.651487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185883, -0.747953, 0.637192,
		0.322958, -0.565955, -0.758547,
		0.927979, 0.346787, 0.136356,
		26.106493, 32.779633, 21.692394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848606, 32.035183, 21.670492>,  <25.456907, 32.536884, 21.596945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848606, 32.035183, 21.670492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.040995, 32.326439, 21.865831>,  <26.156427, 32.501190, 21.983034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.040995, 32.326439, 21.865831>,  <25.848606, 32.035183, 21.670492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040995, 32.326439, 21.865831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095739, -0.597296, 0.796286,
		0.871493, -0.336238, -0.356994,
		0.480972, 0.728136, 0.488348,
		26.185286, 32.544880, 22.012337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546110, 31.958849, 21.735563>,  <25.848606, 32.035183, 21.670492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546110, 31.958849, 21.735563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602568, 31.568159, 21.670956>,  <26.636442, 31.333746, 21.632191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602568, 31.568159, 21.670956>,  <26.546110, 31.958849, 21.735563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602568, 31.568159, 21.670956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090139, 0.175152, -0.980406,
		0.985877, 0.123817, 0.112762,
		0.141142, -0.976725, -0.161518,
		26.644911, 31.275143, 21.622499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270081, 31.906157, 21.385847>,  <26.546110, 31.958849, 21.735563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270081, 31.906157, 21.385847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.023571, 31.603342, 21.299034>,  <26.875666, 31.421654, 21.246946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.023571, 31.603342, 21.299034>,  <27.270081, 31.906157, 21.385847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023571, 31.603342, 21.299034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166913, 0.143769, -0.975433,
		0.769641, -0.637360, 0.037758,
		-0.616274, -0.757036, -0.217034,
		26.838688, 31.376232, 21.233923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502417, 31.629808, 20.800451>,  <27.270081, 31.906157, 21.385847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502417, 31.629808, 20.800451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.149963, 31.440956, 20.789934>,  <26.938492, 31.327644, 20.783623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.149963, 31.440956, 20.789934>,  <27.502417, 31.629808, 20.800451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149963, 31.440956, 20.789934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060216, 0.167185, -0.984085,
		0.469016, -0.865528, -0.175742,
		-0.881135, -0.472134, -0.026294,
		26.885622, 31.299316, 20.782045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531195, 31.007055, 20.367071>,  <27.502417, 31.629808, 20.800451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531195, 31.007055, 20.367071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144554, 31.106861, 20.390484>,  <26.912569, 31.166744, 20.404531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144554, 31.106861, 20.390484>,  <27.531195, 31.007055, 20.367071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144554, 31.106861, 20.390484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097968, -0.148691, -0.984019,
		-0.236826, -0.956887, 0.168170,
		-0.966600, 0.249516, 0.058531,
		26.854574, 31.181715, 20.408043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107563, 30.448141, 20.128355>,  <27.531195, 31.007055, 20.367071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107563, 30.448141, 20.128355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864487, 30.764868, 20.103893>,  <26.718641, 30.954905, 20.089216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864487, 30.764868, 20.103893>,  <27.107563, 30.448141, 20.128355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864487, 30.764868, 20.103893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014185, -0.066168, -0.997707,
		-0.794049, -0.607163, 0.028978,
		-0.607688, 0.791817, -0.061153,
		26.682180, 31.002413, 20.085546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784983, 30.296148, 19.574984>,  <27.107563, 30.448141, 20.128355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784983, 30.296148, 19.574984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723618, 30.688240, 19.624973>,  <26.686798, 30.923494, 19.654966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723618, 30.688240, 19.624973>,  <26.784983, 30.296148, 19.574984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723618, 30.688240, 19.624973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092730, 0.140192, -0.985773,
		-0.983802, -0.139639, -0.112404,
		-0.153411, 0.980228, 0.124972,
		26.677595, 30.982309, 19.662464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354601, 30.444674, 19.005714>,  <26.784983, 30.296148, 19.574984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354601, 30.444674, 19.005714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510021, 30.793455, 19.124859>,  <26.603273, 31.002724, 19.196346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510021, 30.793455, 19.124859>,  <26.354601, 30.444674, 19.005714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510021, 30.793455, 19.124859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043575, 0.340289, -0.939311,
		-0.920397, 0.351990, 0.170215,
		0.388550, 0.871956, 0.297863,
		26.626587, 31.055042, 19.214218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948189, 31.045692, 18.680553>,  <26.354601, 30.444674, 19.005714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948189, 31.045692, 18.680553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308920, 31.192350, 18.772009>,  <26.525358, 31.280344, 18.826881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308920, 31.192350, 18.772009>,  <25.948189, 31.045692, 18.680553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308920, 31.192350, 18.772009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036243, 0.463095, -0.885567,
		-0.430568, 0.806918, 0.404345,
		0.901830, 0.366642, 0.228639,
		26.579470, 31.302343, 18.840601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900614, 31.757702, 18.424799>,  <25.948189, 31.045692, 18.680553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900614, 31.757702, 18.424799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289461, 31.676821, 18.472301>,  <26.522770, 31.628292, 18.500803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289461, 31.676821, 18.472301>,  <25.900614, 31.757702, 18.424799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289461, 31.676821, 18.472301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215091, 0.567131, -0.795047,
		0.093412, 0.798421, 0.594809,
		0.972116, -0.202205, 0.118756,
		26.581097, 31.616159, 18.507929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.649782, 29.818832, 33.680756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996014, 29.768419, 33.486897>,  <32.203754, 29.738173, 33.370579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996014, 29.768419, 33.486897>,  <31.649782, 29.818832, 33.680756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996014, 29.768419, 33.486897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388758, 0.440929, -0.808980,
		0.315654, 0.888649, 0.332664,
		0.865581, -0.126032, -0.484650,
		32.255688, 29.730610, 33.341503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759130, 30.413769, 33.348522>,  <31.649782, 29.818832, 33.680756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759130, 30.413769, 33.348522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968552, 30.135061, 33.152397>,  <32.094204, 29.967836, 33.034721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968552, 30.135061, 33.152397>,  <31.759130, 30.413769, 33.348522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968552, 30.135061, 33.152397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474127, 0.239879, -0.847149,
		0.707882, 0.675998, -0.204767,
		0.523552, -0.696767, -0.490315,
		32.125618, 29.926031, 33.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952084, 30.708965, 32.712482>,  <31.759130, 30.413769, 33.348522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952084, 30.708965, 32.712482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.018890, 30.320267, 32.645775>,  <32.058975, 30.087048, 32.605751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.018890, 30.320267, 32.645775>,  <31.952084, 30.708965, 32.712482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018890, 30.320267, 32.645775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306012, 0.109703, -0.945686,
		0.937263, 0.208981, -0.279043,
		0.167019, -0.971747, -0.166771,
		32.068996, 30.028742, 32.595745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353428, 30.698587, 32.109333>,  <31.952084, 30.708965, 32.712482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353428, 30.698587, 32.109333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205452, 30.329157, 32.149628>,  <32.116665, 30.107498, 32.173805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205452, 30.329157, 32.149628>,  <32.353428, 30.698587, 32.109333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205452, 30.329157, 32.149628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438614, 0.078035, -0.895281,
		0.818999, -0.375390, -0.433962,
		-0.369944, -0.923576, 0.100741,
		32.094467, 30.052084, 32.179852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392883, 30.344660, 31.511204>,  <32.353428, 30.698587, 32.109333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392883, 30.344660, 31.511204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089054, 30.147686, 31.681175>,  <31.906757, 30.029501, 31.783157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089054, 30.147686, 31.681175>,  <32.392883, 30.344660, 31.511204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089054, 30.147686, 31.681175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512434, 0.050704, -0.857228,
		0.400584, -0.868871, -0.290854,
		-0.759568, -0.492435, 0.424928,
		31.861183, 29.999956, 31.808653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135048, 29.899361, 31.051981>,  <32.392883, 30.344660, 31.511204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135048, 29.899361, 31.051981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.815245, 29.907936, 31.292088>,  <31.623362, 29.913082, 31.436152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.815245, 29.907936, 31.292088>,  <32.135048, 29.899361, 31.051981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815245, 29.907936, 31.292088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600651, -0.029945, -0.798951,
		0.000855, -0.999322, 0.036812,
		-0.799511, 0.021428, 0.600269,
		31.575392, 29.914368, 31.472168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658587, 29.334600, 30.800720>,  <32.135048, 29.899361, 31.051981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658587, 29.334600, 30.800720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.412983, 29.571260, 31.009697>,  <31.265621, 29.713257, 31.135082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.412983, 29.571260, 31.009697>,  <31.658587, 29.334600, 30.800720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412983, 29.571260, 31.009697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560693, 0.138920, -0.816287,
		-0.555535, -0.794135, 0.246437,
		-0.614007, 0.591651, 0.522441,
		31.228781, 29.748756, 31.166430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966782, 28.986467, 30.718971>,  <31.658587, 29.334600, 30.800720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966782, 28.986467, 30.718971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.868294, 29.358559, 30.827820>,  <30.809202, 29.581814, 30.893129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.868294, 29.358559, 30.827820>,  <30.966782, 28.986467, 30.718971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868294, 29.358559, 30.827820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699410, 0.023838, -0.714323,
		-0.670972, -0.366202, 0.644742,
		-0.246217, 0.930230, 0.272120,
		30.794428, 29.637627, 30.909456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171114, 29.047781, 30.769037>,  <30.966782, 28.986467, 30.718971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171114, 29.047781, 30.769037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.312298, 29.416138, 30.702848>,  <30.397009, 29.637152, 30.663136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.312298, 29.416138, 30.702848>,  <30.171114, 29.047781, 30.769037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312298, 29.416138, 30.702848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719647, 0.154180, -0.677006,
		-0.597935, 0.358037, 0.717135,
		0.352961, 0.920890, -0.165471,
		30.418186, 29.692404, 30.653208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530176, 29.553102, 30.736729>,  <30.171114, 29.047781, 30.769037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530176, 29.553102, 30.736729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.838335, 29.727112, 30.550291>,  <30.023230, 29.831518, 30.438429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.838335, 29.727112, 30.550291>,  <29.530176, 29.553102, 30.736729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838335, 29.727112, 30.550291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596610, 0.234095, -0.767630,
		-0.224828, 0.869456, 0.439886,
		0.770395, 0.435025, -0.466095,
		30.069454, 29.857620, 30.410463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345324, 30.219246, 30.553230>,  <29.530176, 29.553102, 30.736729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345324, 30.219246, 30.553230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.640917, 30.153988, 30.291761>,  <29.818274, 30.114834, 30.134880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.640917, 30.153988, 30.291761>,  <29.345324, 30.219246, 30.553230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640917, 30.153988, 30.291761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628268, 0.183464, -0.756055,
		0.243272, 0.969394, 0.033078,
		0.738984, -0.163145, -0.653671,
		29.862612, 30.105045, 30.095659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336323, 30.668526, 30.033243>,  <29.345324, 30.219246, 30.553230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336323, 30.668526, 30.033243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.553423, 30.385847, 29.851694>,  <29.683683, 30.216240, 29.742765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.553423, 30.385847, 29.851694>,  <29.336323, 30.668526, 30.033243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553423, 30.385847, 29.851694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596616, 0.055957, -0.800574,
		0.591160, 0.705301, -0.391256,
		0.542752, -0.706697, -0.453873,
		29.716248, 30.173838, 29.715532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355907, 31.322006, 30.120422>,  <29.336323, 30.668526, 30.033243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355907, 31.322006, 30.120422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075260, 31.548870, 30.292961>,  <28.906872, 31.684988, 30.396484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075260, 31.548870, 30.292961>,  <29.355907, 31.322006, 30.120422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075260, 31.548870, 30.292961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144988, -0.479060, 0.865725,
		0.697645, 0.669950, 0.253887,
		-0.701620, 0.567158, 0.431349,
		28.864775, 31.719017, 30.422365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674643, 31.650532, 30.622999>,  <29.355907, 31.322006, 30.120422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674643, 31.650532, 30.622999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.291233, 31.673246, 30.734720>,  <29.061188, 31.686876, 30.801754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.291233, 31.673246, 30.734720>,  <29.674643, 31.650532, 30.622999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291233, 31.673246, 30.734720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262129, -0.209138, 0.942099,
		0.111913, 0.976236, 0.185578,
		-0.958522, 0.056788, 0.279305,
		29.003677, 31.690283, 30.818512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617096, 32.124496, 31.189056>,  <29.674643, 31.650532, 30.622999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617096, 32.124496, 31.189056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.294950, 31.889000, 31.216705>,  <29.101664, 31.747704, 31.233294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.294950, 31.889000, 31.216705>,  <29.617096, 32.124496, 31.189056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294950, 31.889000, 31.216705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189862, -0.145729, 0.970935,
		-0.561554, 0.795079, 0.229143,
		-0.805363, -0.588739, 0.069121,
		29.053341, 31.712378, 31.237442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307415, 32.213356, 31.869797>,  <29.617096, 32.124496, 31.189056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307415, 32.213356, 31.869797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.098957, 31.888208, 31.765751>,  <28.973883, 31.693121, 31.703323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.098957, 31.888208, 31.765751>,  <29.307415, 32.213356, 31.869797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098957, 31.888208, 31.765751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014795, -0.313329, 0.949529,
		-0.853341, 0.490993, 0.175316,
		-0.521143, -0.812866, -0.260113,
		28.942614, 31.644348, 31.687717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774086, 32.180553, 32.384232>,  <29.307415, 32.213356, 31.869797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774086, 32.180553, 32.384232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.811466, 31.818804, 32.217682>,  <28.833895, 31.601753, 32.117752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.811466, 31.818804, 32.217682>,  <28.774086, 32.180553, 32.384232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811466, 31.818804, 32.217682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071726, -0.423237, 0.903175,
		-0.993037, -0.054537, -0.104419,
		0.093450, -0.904376, -0.416378,
		28.839502, 31.547491, 32.092770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286444, 31.792524, 32.744278>,  <28.774086, 32.180553, 32.384232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286444, 31.792524, 32.744278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.516272, 31.518124, 32.565720>,  <28.654169, 31.353483, 32.458584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.516272, 31.518124, 32.565720>,  <28.286444, 31.792524, 32.744278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516272, 31.518124, 32.565720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094281, -0.597260, 0.796487,
		-0.813008, -0.415550, -0.407844,
		0.574569, -0.686002, -0.446399,
		28.688643, 31.312323, 32.431801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068270, 31.115835, 32.891308>,  <28.286444, 31.792524, 32.744278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068270, 31.115835, 32.891308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.451988, 31.037600, 32.809826>,  <28.682219, 30.990658, 32.760937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.451988, 31.037600, 32.809826>,  <28.068270, 31.115835, 32.891308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451988, 31.037600, 32.809826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092720, -0.463206, 0.881387,
		-0.266749, -0.864398, -0.426216,
		0.959296, -0.195591, -0.203707,
		28.739777, 30.978922, 32.748714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140709, 30.433105, 33.177258>,  <28.068270, 31.115835, 32.891308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140709, 30.433105, 33.177258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.519436, 30.555674, 33.137974>,  <28.746672, 30.629213, 33.114403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.519436, 30.555674, 33.137974>,  <28.140709, 30.433105, 33.177258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519436, 30.555674, 33.137974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180287, -0.252389, 0.950682,
		0.266522, -0.917827, -0.294210,
		0.946817, 0.306420, -0.098205,
		28.803480, 30.647600, 33.108513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603109, 29.944267, 33.477291>,  <28.140709, 30.433105, 33.177258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603109, 29.944267, 33.477291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808168, 30.287477, 33.464737>,  <28.931204, 30.493404, 33.457203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808168, 30.287477, 33.464737>,  <28.603109, 29.944267, 33.477291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808168, 30.287477, 33.464737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211815, -0.090962, 0.973068,
		0.832061, -0.505489, -0.228374,
		0.512649, 0.858024, -0.031384,
		28.961964, 30.544886, 33.455322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000885, 29.850632, 34.085686>,  <28.603109, 29.944267, 33.477291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000885, 29.850632, 34.085686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.015566, 30.244081, 34.015106>,  <29.024374, 30.480152, 33.972759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.015566, 30.244081, 34.015106>,  <29.000885, 29.850632, 34.085686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015566, 30.244081, 34.015106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193402, 0.166241, 0.966933,
		0.980433, -0.069613, -0.184134,
		0.036701, 0.983625, -0.176451,
		29.026577, 30.539169, 33.962170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663240, 30.094507, 34.366013>,  <29.000885, 29.850632, 34.085686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663240, 30.094507, 34.366013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.414438, 30.406353, 34.336861>,  <29.265158, 30.593460, 34.319370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.414438, 30.406353, 34.336861>,  <29.663240, 30.094507, 34.366013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414438, 30.406353, 34.336861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193807, 0.243464, 0.950349,
		0.758649, 0.576998, -0.302531,
		-0.622005, 0.779614, -0.072877,
		29.227837, 30.640238, 34.314999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011524, 30.695019, 34.599411>,  <29.663240, 30.094507, 34.366013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011524, 30.695019, 34.599411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623304, 30.778549, 34.647449>,  <29.390371, 30.828667, 34.676273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623304, 30.778549, 34.647449>,  <30.011524, 30.695019, 34.599411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623304, 30.778549, 34.647449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194928, 0.387867, 0.900868,
		0.141543, 0.897748, -0.417151,
		-0.970551, 0.208825, 0.120096,
		29.332140, 30.841196, 34.683479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917315, 31.382980, 34.807621>,  <30.011524, 30.695019, 34.599411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917315, 31.382980, 34.807621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.567719, 31.223007, 34.918034>,  <29.357960, 31.127024, 34.984280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.567719, 31.223007, 34.918034>,  <29.917315, 31.382980, 34.807621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567719, 31.223007, 34.918034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062280, 0.471161, 0.879846,
		-0.481935, 0.786168, -0.386883,
		-0.873991, -0.399933, 0.276031,
		29.305521, 31.103027, 35.000843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565693, 31.905991, 35.156937>,  <29.917315, 31.382980, 34.807621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565693, 31.905991, 35.156937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404030, 31.563374, 35.285305>,  <29.307032, 31.357803, 35.362328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404030, 31.563374, 35.285305>,  <29.565693, 31.905991, 35.156937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404030, 31.563374, 35.285305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174092, 0.416473, 0.892324,
		-0.897969, 0.304770, -0.317438,
		-0.404158, -0.856543, 0.320922,
		29.282782, 31.306410, 35.381580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425041, 32.360531, 34.474518>,  <29.565693, 31.905991, 35.156937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425041, 32.360531, 34.474518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.775412, 32.548790, 34.432098>,  <29.985634, 32.661747, 34.406647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.775412, 32.548790, 34.432098>,  <29.425041, 32.360531, 34.474518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775412, 32.548790, 34.432098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302289, 0.364102, -0.880938,
		-0.375999, 0.803692, 0.461198,
		0.875926, 0.470647, -0.106045,
		30.038189, 32.689983, 34.400284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489626, 33.094318, 34.450043>,  <29.425041, 32.360531, 34.474518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489626, 33.094318, 34.450043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756332, 32.922577, 34.206379>,  <29.916357, 32.819530, 34.060181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756332, 32.922577, 34.206379>,  <29.489626, 33.094318, 34.450043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756332, 32.922577, 34.206379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522154, 0.314086, -0.792909,
		0.531769, 0.846760, -0.014768,
		0.666766, -0.429356, -0.609161,
		29.956362, 32.793770, 34.023632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127499, 33.226643, 33.868820>,  <29.489626, 33.094318, 34.450043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127499, 33.226643, 33.868820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.515104, 33.153439, 33.802460>,  <29.747667, 33.109516, 33.762642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.515104, 33.153439, 33.802460>,  <29.127499, 33.226643, 33.868820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515104, 33.153439, 33.802460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038898, 0.550204, -0.834124,
		0.243931, 0.814729, 0.526036,
		0.969012, -0.183007, -0.165903,
		29.805807, 33.098537, 33.752689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410011, 33.865833, 33.716743>,  <29.127499, 33.226643, 33.868820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410011, 33.865833, 33.716743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.632889, 33.590603, 33.530800>,  <29.766615, 33.425465, 33.419235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.632889, 33.590603, 33.530800>,  <29.410011, 33.865833, 33.716743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632889, 33.590603, 33.530800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161538, 0.638934, -0.752109,
		0.814520, 0.343977, 0.467159,
		0.557192, -0.688072, -0.464859,
		29.800047, 33.384182, 33.391342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986345, 34.232811, 33.485653>,  <29.410011, 33.865833, 33.716743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986345, 34.232811, 33.485653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.008570, 33.888573, 33.283154>,  <30.021904, 33.682030, 33.161652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.008570, 33.888573, 33.283154>,  <29.986345, 34.232811, 33.485653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008570, 33.888573, 33.283154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048149, 0.508753, -0.859565,
		0.997294, 0.023381, 0.069702,
		0.055559, -0.860595, -0.506251,
		30.025238, 33.630394, 33.131279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570997, 34.318954, 33.054337>,  <29.986345, 34.232811, 33.485653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570997, 34.318954, 33.054337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.382090, 34.022953, 32.862770>,  <30.268745, 33.845352, 32.747829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.382090, 34.022953, 32.862770>,  <30.570997, 34.318954, 33.054337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382090, 34.022953, 32.862770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145682, 0.470327, -0.870385,
		0.869332, -0.480826, -0.114316,
		-0.472269, -0.740000, -0.478918,
		30.240410, 33.800953, 32.719093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971527, 34.062984, 32.430958>,  <30.570997, 34.318954, 33.054337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971527, 34.062984, 32.430958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589336, 33.978928, 32.348103>,  <30.360022, 33.928493, 32.298389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589336, 33.978928, 32.348103>,  <30.971527, 34.062984, 32.430958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589336, 33.978928, 32.348103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081392, 0.487058, -0.869569,
		0.283616, -0.847712, -0.448270,
		-0.955477, -0.210138, -0.207135,
		30.302692, 33.915886, 32.285961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071718, 34.020107, 31.728956>,  <30.971527, 34.062984, 32.430958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071718, 34.020107, 31.728956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.674343, 34.010983, 31.773794>,  <30.435919, 34.005508, 31.800697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.674343, 34.010983, 31.773794>,  <31.071718, 34.020107, 31.728956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674343, 34.010983, 31.773794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110663, 0.439898, -0.891203,
		-0.028981, -0.897758, -0.439535,
		-0.993436, -0.022813, 0.112097,
		30.376312, 34.004139, 31.807423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810427, 33.551483, 31.274250>,  <31.071718, 34.020107, 31.728956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810427, 33.551483, 31.274250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.527983, 33.826664, 31.341335>,  <30.358517, 33.991772, 31.381586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.527983, 33.826664, 31.341335>,  <30.810427, 33.551483, 31.274250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527983, 33.826664, 31.341335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231587, 0.448191, -0.863419,
		-0.669159, -0.570830, -0.475794,
		-0.706111, 0.687952, 0.167715,
		30.316149, 34.033051, 31.391649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448296, 33.489979, 30.670164>,  <30.810427, 33.551483, 31.274250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448296, 33.489979, 30.670164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329247, 33.837872, 30.827635>,  <30.257816, 34.046608, 30.922117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329247, 33.837872, 30.827635>,  <30.448296, 33.489979, 30.670164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329247, 33.837872, 30.827635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115377, 0.376574, -0.919174,
		-0.947686, -0.318990, -0.011730,
		-0.297624, 0.869734, 0.393678,
		30.239960, 34.098793, 30.945738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797510, 33.629036, 30.464964>,  <30.448296, 33.489979, 30.670164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797510, 33.629036, 30.464964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982931, 33.975353, 30.540352>,  <30.094183, 34.183144, 30.585585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982931, 33.975353, 30.540352>,  <29.797510, 33.629036, 30.464964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982931, 33.975353, 30.540352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130716, 0.277197, -0.951880,
		-0.876375, 0.416609, 0.241668,
		0.463552, 0.865794, 0.188471,
		30.121996, 34.235092, 30.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600996, 33.978630, 29.950788>,  <29.797510, 33.629036, 30.464964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600996, 33.978630, 29.950788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880001, 34.216457, 30.110767>,  <30.047405, 34.359154, 30.206755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880001, 34.216457, 30.110767>,  <29.600996, 33.978630, 29.950788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880001, 34.216457, 30.110767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084319, 0.486161, -0.869792,
		-0.711592, 0.640416, 0.288971,
		0.697515, 0.594571, 0.399948,
		30.089256, 34.394829, 30.230751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303963, 34.750713, 30.008690>,  <29.600996, 33.978630, 29.950788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303963, 34.750713, 30.008690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.703222, 34.739002, 29.987373>,  <29.942778, 34.731976, 29.974583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.703222, 34.739002, 29.987373>,  <29.303963, 34.750713, 30.008690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703222, 34.739002, 29.987373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028157, 0.554250, -0.831873,
		0.053894, 0.831835, 0.552400,
		0.998150, -0.029279, -0.053292,
		30.002666, 34.730217, 29.971386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447227, 35.473145, 29.841454>,  <29.303963, 34.750713, 30.008690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447227, 35.473145, 29.841454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.771961, 35.260914, 29.743952>,  <29.966801, 35.133575, 29.685452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.771961, 35.260914, 29.743952>,  <29.447227, 35.473145, 29.841454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771961, 35.260914, 29.743952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035683, 0.461770, -0.886281,
		0.582795, 0.710817, 0.393814,
		0.811835, -0.530573, -0.243753,
		30.015512, 35.101742, 29.670826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948868, 35.964825, 29.535631>,  <29.447227, 35.473145, 29.841454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948868, 35.964825, 29.535631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.034838, 35.595699, 29.407747>,  <30.086420, 35.374222, 29.331017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.034838, 35.595699, 29.407747>,  <29.948868, 35.964825, 29.535631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034838, 35.595699, 29.407747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010625, 0.325133, -0.945609,
		0.976573, 0.206630, 0.060074,
		0.214923, -0.922818, -0.319712,
		30.099314, 35.318855, 29.311834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494011, 36.116142, 29.005713>,  <29.948868, 35.964825, 29.535631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494011, 36.116142, 29.005713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322983, 35.762711, 28.929317>,  <30.220366, 35.550652, 28.883480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322983, 35.762711, 28.929317>,  <30.494011, 36.116142, 29.005713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322983, 35.762711, 28.929317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081067, 0.247902, -0.965387,
		0.900340, -0.397288, -0.177624,
		-0.427570, -0.883576, -0.190989,
		30.194712, 35.497639, 28.872021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779854, 35.926052, 28.372183>,  <30.494011, 36.116142, 29.005713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779854, 35.926052, 28.372183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476017, 35.667099, 28.397196>,  <30.293715, 35.511726, 28.412205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476017, 35.667099, 28.397196>,  <30.779854, 35.926052, 28.372183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476017, 35.667099, 28.397196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136821, 0.065056, -0.988457,
		0.635844, -0.759382, -0.137992,
		-0.759593, -0.647385, 0.062534,
		30.248138, 35.472885, 28.415956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884390, 35.408394, 27.883957>,  <30.779854, 35.926052, 28.372183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884390, 35.408394, 27.883957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491201, 35.416096, 27.957052>,  <30.255287, 35.420715, 28.000910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491201, 35.416096, 27.957052>,  <30.884390, 35.408394, 27.883957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491201, 35.416096, 27.957052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182308, 0.022073, -0.982994,
		-0.022962, -0.999571, -0.018186,
		-0.982973, 0.019256, 0.182736,
		30.196310, 35.421871, 28.011873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584881, 34.899162, 27.342098>,  <30.884390, 35.408394, 27.883957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584881, 34.899162, 27.342098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268721, 35.093571, 27.491257>,  <30.079025, 35.210217, 27.580751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268721, 35.093571, 27.491257>,  <30.584881, 34.899162, 27.342098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268721, 35.093571, 27.491257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402923, 0.046054, -0.914074,
		-0.461434, -0.872732, 0.159429,
		-0.790400, 0.486023, 0.372895,
		30.031601, 35.239376, 27.603125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971138, 34.610115, 27.035648>,  <30.584881, 34.899162, 27.342098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971138, 34.610115, 27.035648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.862928, 34.968582, 27.176327>,  <29.798002, 35.183662, 27.260735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.862928, 34.968582, 27.176327>,  <29.971138, 34.610115, 27.035648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862928, 34.968582, 27.176327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408110, 0.224116, -0.884996,
		-0.871930, -0.382946, 0.305107,
		-0.270526, 0.896172, 0.351697,
		29.781771, 35.237434, 27.281836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302422, 34.656677, 26.820257>,  <29.971138, 34.610115, 27.035648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302422, 34.656677, 26.820257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401793, 35.027111, 26.933851>,  <29.461414, 35.249371, 27.002007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401793, 35.027111, 26.933851>,  <29.302422, 34.656677, 26.820257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401793, 35.027111, 26.933851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575392, 0.376931, -0.725842,
		-0.779235, 0.016917, 0.626503,
		0.248427, 0.926087, 0.283984,
		29.476320, 35.304935, 27.019047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688051, 35.141769, 26.846100>,  <29.302422, 34.656677, 26.820257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688051, 35.141769, 26.846100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.007790, 35.368202, 26.765507>,  <29.199633, 35.504063, 26.717152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.007790, 35.368202, 26.765507>,  <28.688051, 35.141769, 26.846100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007790, 35.368202, 26.765507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535888, 0.519959, -0.665181,
		-0.271785, 0.639683, 0.718984,
		0.799347, 0.566082, -0.201482,
		29.247593, 35.538025, 26.705063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343744, 35.809055, 26.614124>,  <28.688051, 35.141769, 26.846100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343744, 35.809055, 26.614124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729328, 35.833282, 26.510498>,  <28.960678, 35.847820, 26.448322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729328, 35.833282, 26.510498>,  <28.343744, 35.809055, 26.614124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729328, 35.833282, 26.510498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263702, 0.346661, -0.900159,
		0.035288, 0.936033, 0.350139,
		0.963958, 0.060568, -0.259067,
		29.018517, 35.851452, 26.432777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434721, 36.387505, 26.185219>,  <28.343744, 35.809055, 26.614124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434721, 36.387505, 26.185219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.772032, 36.186813, 26.108118>,  <28.974419, 36.066399, 26.061857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.772032, 36.186813, 26.108118>,  <28.434721, 36.387505, 26.185219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772032, 36.186813, 26.108118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079171, 0.238761, -0.967846,
		0.531615, 0.831423, 0.161620,
		0.843278, -0.501725, -0.192754,
		29.025015, 36.036297, 26.050291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881102, 36.838463, 25.746950>,  <28.434721, 36.387505, 26.185219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881102, 36.838463, 25.746950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003563, 36.465660, 25.669359>,  <29.077040, 36.241978, 25.622805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003563, 36.465660, 25.669359>,  <28.881102, 36.838463, 25.746950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003563, 36.465660, 25.669359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143531, 0.156242, -0.977234,
		0.941100, 0.327024, -0.085939,
		0.306152, -0.932010, -0.193978,
		29.095407, 36.186058, 25.611166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324408, 36.872269, 25.225401>,  <28.881102, 36.838463, 25.746950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324408, 36.872269, 25.225401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.222385, 36.486256, 25.201206>,  <29.161171, 36.254646, 25.186689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.222385, 36.486256, 25.201206>,  <29.324408, 36.872269, 25.225401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222385, 36.486256, 25.201206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172204, 0.106891, -0.979245,
		0.951468, -0.239346, -0.193446,
		-0.255056, -0.965032, -0.060487,
		29.145868, 36.196747, 25.183060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773781, 36.642731, 24.659422>,  <29.324408, 36.872269, 25.225401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773781, 36.642731, 24.659422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.468163, 36.386402, 24.689293>,  <29.284792, 36.232605, 24.707214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.468163, 36.386402, 24.689293>,  <29.773781, 36.642731, 24.659422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468163, 36.386402, 24.689293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006821, -0.107717, -0.994158,
		0.645124, -0.760093, 0.077930,
		-0.764047, -0.640824, 0.074676,
		29.238949, 36.194157, 24.711695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967983, 36.137482, 24.273705>,  <29.773781, 36.642731, 24.659422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967983, 36.137482, 24.273705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573156, 36.090992, 24.317863>,  <29.336260, 36.063099, 24.344358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573156, 36.090992, 24.317863>,  <29.967983, 36.137482, 24.273705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573156, 36.090992, 24.317863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107315, -0.032487, -0.993694,
		0.119082, -0.992691, 0.019594,
		-0.987068, -0.116229, 0.110399,
		29.277037, 36.056122, 24.350983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498205, 35.574989, 24.192099>,  <29.967983, 36.137482, 24.273705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498205, 35.574989, 24.192099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.864389, 35.572674, 24.031151>,  <31.084099, 35.571285, 23.934582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.864389, 35.572674, 24.031151>,  <30.498205, 35.574989, 24.192099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864389, 35.572674, 24.031151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399498, -0.107000, 0.910468,
		-0.048323, -0.994242, -0.095642,
		0.915460, -0.005787, -0.402369,
		31.139027, 35.570934, 23.910440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817762, 34.953945, 24.347971>,  <30.498205, 35.574989, 24.192099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817762, 34.953945, 24.347971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.089727, 35.237820, 24.274149>,  <31.252907, 35.408146, 24.229856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.089727, 35.237820, 24.274149>,  <30.817762, 34.953945, 24.347971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089727, 35.237820, 24.274149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404969, -0.153587, 0.901338,
		0.611324, -0.687571, -0.391828,
		0.679914, 0.709688, -0.184553,
		31.293701, 35.450726, 24.218782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467796, 34.704262, 24.463905>,  <30.817762, 34.953945, 24.347971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467796, 34.704262, 24.463905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.571173, 35.090111, 24.484755>,  <31.633198, 35.321621, 24.497265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.571173, 35.090111, 24.484755>,  <31.467796, 34.704262, 24.463905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571173, 35.090111, 24.484755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504278, -0.180734, 0.844416,
		0.823961, -0.191947, -0.533146,
		0.258441, 0.964620, 0.052123,
		31.648705, 35.379498, 24.500391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196880, 34.698811, 24.630283>,  <31.467796, 34.704262, 24.463905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196880, 34.698811, 24.630283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105240, 35.079666, 24.711227>,  <32.050255, 35.308178, 24.759794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105240, 35.079666, 24.711227>,  <32.196880, 34.698811, 24.630283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105240, 35.079666, 24.711227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581928, -0.032679, 0.812583,
		0.780303, 0.303921, -0.546588,
		-0.229100, 0.952136, 0.202360,
		32.036510, 35.365307, 24.771935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753311, 35.085495, 24.718258>,  <32.196880, 34.698811, 24.630283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753311, 35.085495, 24.718258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495033, 35.339977, 24.887175>,  <32.340069, 35.492664, 24.988523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495033, 35.339977, 24.887175>,  <32.753311, 35.085495, 24.718258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495033, 35.339977, 24.887175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636702, 0.143272, 0.757683,
		0.421538, 0.758101, -0.497582,
		-0.645690, 0.636204, 0.422290,
		32.301327, 35.530838, 25.013861>
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
