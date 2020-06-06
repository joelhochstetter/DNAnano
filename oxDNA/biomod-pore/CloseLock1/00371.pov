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
	<23.920057, 35.328140, 34.568333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239393, 35.127563, 34.701721>,  <24.430996, 35.007217, 34.781754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239393, 35.127563, 34.701721>,  <23.920057, 35.328140, 34.568333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239393, 35.127563, 34.701721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121209, -0.408619, -0.904621,
		0.589882, 0.762616, -0.265437,
		0.798341, -0.501446, 0.333472,
		24.478895, 34.977131, 34.801762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446987, 35.281586, 34.035915>,  <23.920057, 35.328140, 34.568333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446987, 35.281586, 34.035915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530544, 34.963257, 34.263256>,  <24.580679, 34.772259, 34.399662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530544, 34.963257, 34.263256>,  <24.446987, 35.281586, 34.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530544, 34.963257, 34.263256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084210, -0.593652, -0.800304,
		0.974306, 0.119317, -0.191026,
		0.208893, -0.795827, 0.568351,
		24.593212, 34.724510, 34.433762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951580, 34.930393, 33.644566>,  <24.446987, 35.281586, 34.035915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951580, 34.930393, 33.644566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742153, 34.700012, 33.895695>,  <24.616497, 34.561783, 34.046371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742153, 34.700012, 33.895695>,  <24.951580, 34.930393, 33.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742153, 34.700012, 33.895695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279281, -0.580158, -0.765126,
		0.804911, -0.575933, 0.142899,
		-0.523566, -0.575950, 0.627822,
		24.585083, 34.527225, 34.084042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039984, 34.194321, 33.669796>,  <24.951580, 34.930393, 33.644566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039984, 34.194321, 33.669796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340906, 34.088833, 33.911285>,  <25.521460, 34.025539, 34.056179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340906, 34.088833, 33.911285>,  <25.039984, 34.194321, 33.669796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340906, 34.088833, 33.911285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535905, -0.288049, -0.793621,
		0.383200, 0.920585, -0.075370,
		0.752306, -0.263724, 0.603726,
		25.566597, 34.009716, 34.092403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627905, 34.513111, 33.451344>,  <25.039984, 34.194321, 33.669796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627905, 34.513111, 33.451344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743200, 34.177555, 33.636028>,  <25.812378, 33.976219, 33.746838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743200, 34.177555, 33.636028>,  <25.627905, 34.513111, 33.451344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743200, 34.177555, 33.636028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543841, -0.253446, -0.800002,
		0.788135, 0.481687, 0.383173,
		0.288237, -0.838894, 0.461710,
		25.829672, 33.925888, 33.774540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415253, 34.505310, 33.292736>,  <25.627905, 34.513111, 33.451344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415253, 34.505310, 33.292736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267956, 34.145473, 33.386665>,  <26.179577, 33.929573, 33.443024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267956, 34.145473, 33.386665>,  <26.415253, 34.505310, 33.292736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267956, 34.145473, 33.386665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594186, -0.421969, -0.684752,
		0.715080, -0.112629, 0.689909,
		-0.368243, -0.899587, 0.234819,
		26.157482, 33.875599, 33.457111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907026, 34.065414, 33.171440>,  <26.415253, 34.505310, 33.292736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907026, 34.065414, 33.171440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645380, 33.764835, 33.205975>,  <26.488392, 33.584488, 33.226696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645380, 33.764835, 33.205975>,  <26.907026, 34.065414, 33.171440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645380, 33.764835, 33.205975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574437, -0.567776, -0.589621,
		0.492093, -0.336083, 0.803052,
		-0.654115, -0.751451, 0.086340,
		26.449146, 33.539398, 33.231876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258116, 33.434006, 33.363106>,  <26.907026, 34.065414, 33.171440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258116, 33.434006, 33.363106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902046, 33.316612, 33.223701>,  <26.688404, 33.246178, 33.140060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902046, 33.316612, 33.223701>,  <27.258116, 33.434006, 33.363106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902046, 33.316612, 33.223701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444629, -0.726575, -0.523826,
		-0.099484, -0.621253, 0.777269,
		-0.890172, -0.293484, -0.348510,
		26.634995, 33.228565, 33.119148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269341, 32.720158, 33.503544>,  <27.258116, 33.434006, 33.363106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269341, 32.720158, 33.503544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010780, 32.792942, 33.207150>,  <26.855644, 32.836613, 33.029312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010780, 32.792942, 33.207150>,  <27.269341, 32.720158, 33.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010780, 32.792942, 33.207150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417575, -0.728434, -0.543153,
		-0.638592, -0.660510, 0.394876,
		-0.646399, 0.181963, -0.740984,
		26.816860, 32.847530, 32.984856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829203, 32.091656, 33.262691>,  <27.269341, 32.720158, 33.503544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829203, 32.091656, 33.262691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859030, 32.345116, 32.954685>,  <26.876926, 32.497192, 32.769882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859030, 32.345116, 32.954685>,  <26.829203, 32.091656, 33.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859030, 32.345116, 32.954685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423238, -0.719277, -0.550917,
		-0.902945, -0.284819, -0.321821,
		0.074567, 0.633654, -0.770014,
		26.881399, 32.535213, 32.723682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621998, 31.734543, 32.724030>,  <26.829203, 32.091656, 33.262691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621998, 31.734543, 32.724030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824022, 32.033405, 32.551205>,  <26.945236, 32.212723, 32.447510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824022, 32.033405, 32.551205>,  <26.621998, 31.734543, 32.724030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824022, 32.033405, 32.551205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368782, -0.639418, -0.674644,
		-0.780330, 0.181399, -0.598481,
		0.505059, 0.747154, -0.432060,
		26.975540, 32.257553, 32.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572260, 31.400930, 32.053795>,  <26.621998, 31.734543, 32.724030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572260, 31.400930, 32.053795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845560, 31.692963, 32.048840>,  <27.009541, 31.868181, 32.045868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845560, 31.692963, 32.048840>,  <26.572260, 31.400930, 32.053795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845560, 31.692963, 32.048840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560787, -0.535530, -0.631448,
		-0.467641, 0.424491, -0.775319,
		0.683250, 0.730079, -0.012387,
		27.050535, 31.911987, 32.045124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728188, 31.609718, 31.360504>,  <26.572260, 31.400930, 32.053795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728188, 31.609718, 31.360504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067551, 31.710623, 31.546654>,  <27.271168, 31.771166, 31.658342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067551, 31.710623, 31.546654>,  <26.728188, 31.609718, 31.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067551, 31.710623, 31.546654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521268, -0.551153, -0.651545,
		0.092132, 0.795358, -0.599097,
		0.848405, 0.252262, 0.465373,
		27.322073, 31.786301, 31.686266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031197, 31.784977, 30.795835>,  <26.728188, 31.609718, 31.360504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031197, 31.784977, 30.795835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297508, 31.731821, 31.089523>,  <27.457294, 31.699928, 31.265736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297508, 31.731821, 31.089523>,  <27.031197, 31.784977, 30.795835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297508, 31.731821, 31.089523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602849, -0.484032, -0.634260,
		0.439672, 0.864901, -0.242147,
		0.665779, -0.132888, 0.734220,
		27.497242, 31.691954, 31.309790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585711, 31.752880, 30.422064>,  <27.031197, 31.784977, 30.795835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585711, 31.752880, 30.422064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726778, 31.606049, 30.766361>,  <27.811419, 31.517950, 30.972939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726778, 31.606049, 30.766361>,  <27.585711, 31.752880, 30.422064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726778, 31.606049, 30.766361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641696, -0.574618, -0.507978,
		0.681066, 0.731483, 0.032903,
		0.352670, -0.367080, 0.860742,
		27.832579, 31.495924, 31.024584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336714, 31.806999, 30.424833>,  <27.585711, 31.752880, 30.422064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336714, 31.806999, 30.424833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230938, 31.503429, 30.662861>,  <28.167473, 31.321287, 30.805677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230938, 31.503429, 30.662861>,  <28.336714, 31.806999, 30.424833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230938, 31.503429, 30.662861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607960, -0.610168, -0.508015,
		0.748636, 0.227438, 0.622749,
		-0.264439, -0.758925, 0.595067,
		28.151606, 31.275751, 30.841381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916027, 31.346668, 30.474962>,  <28.336714, 31.806999, 30.424833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916027, 31.346668, 30.474962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646742, 31.090464, 30.622761>,  <28.485170, 30.936741, 30.711441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646742, 31.090464, 30.622761>,  <28.916027, 31.346668, 30.474962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646742, 31.090464, 30.622761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509581, -0.763955, -0.395854,
		0.535830, -0.078204, 0.840696,
		-0.673211, -0.640513, 0.369499,
		28.444778, 30.898310, 30.733610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237724, 30.811466, 30.777159>,  <28.916027, 31.346668, 30.474962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237724, 30.811466, 30.777159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882887, 30.642544, 30.702618>,  <28.669985, 30.541191, 30.657892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882887, 30.642544, 30.702618>,  <29.237724, 30.811466, 30.777159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882887, 30.642544, 30.702618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460857, -0.833079, -0.305926,
		-0.026052, -0.357266, 0.933639,
		-0.887092, -0.422304, -0.186352,
		28.616760, 30.515852, 30.646711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214914, 30.158552, 31.143742>,  <29.237724, 30.811466, 30.777159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214914, 30.158552, 31.143742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915976, 30.104679, 30.883486>,  <28.736612, 30.072355, 30.727333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915976, 30.104679, 30.883486>,  <29.214914, 30.158552, 31.143742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915976, 30.104679, 30.883486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421385, -0.853192, -0.307405,
		-0.513718, -0.503908, 0.694385,
		-0.747348, -0.134684, -0.650639,
		28.691771, 30.064274, 30.688293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061029, 29.504005, 31.128996>,  <29.214914, 30.158552, 31.143742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061029, 29.504005, 31.128996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888258, 29.608429, 30.783676>,  <28.784595, 29.671083, 30.576485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888258, 29.608429, 30.783676>,  <29.061029, 29.504005, 31.128996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888258, 29.608429, 30.783676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293333, -0.864492, -0.408179,
		-0.852871, -0.429540, 0.296826,
		-0.431933, 0.261056, -0.863299,
		28.758678, 29.686747, 30.524687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628233, 29.008734, 30.907516>,  <29.061029, 29.504005, 31.128996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628233, 29.008734, 30.907516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680712, 29.201797, 30.561146>,  <28.712198, 29.317636, 30.353323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680712, 29.201797, 30.561146>,  <28.628233, 29.008734, 30.907516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680712, 29.201797, 30.561146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213297, -0.866761, -0.450810,
		-0.968138, -0.125554, -0.216666,
		0.131197, 0.482661, -0.865925,
		28.720070, 29.346596, 30.301369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391815, 28.594160, 30.440657>,  <28.628233, 29.008734, 30.907516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391815, 28.594160, 30.440657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640800, 28.825573, 30.229815>,  <28.790192, 28.964420, 30.103310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640800, 28.825573, 30.229815>,  <28.391815, 28.594160, 30.440657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640800, 28.825573, 30.229815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479478, -0.814189, -0.327409,
		-0.618580, -0.048935, -0.784196,
		0.622462, 0.578534, -0.527105,
		28.827539, 28.999132, 30.071684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525257, 28.182343, 29.866343>,  <28.391815, 28.594160, 30.440657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525257, 28.182343, 29.866343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826492, 28.445032, 29.882187>,  <29.007233, 28.602646, 29.891693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826492, 28.445032, 29.882187>,  <28.525257, 28.182343, 29.866343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826492, 28.445032, 29.882187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621517, -0.690380, -0.370260,
		-0.215814, 0.303457, -0.928083,
		0.753088, 0.656726, 0.039610,
		29.052420, 28.642050, 29.894070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956978, 28.052444, 29.269331>,  <28.525257, 28.182343, 29.866343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956978, 28.052444, 29.269331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191380, 28.260506, 29.517859>,  <29.332020, 28.385344, 29.666975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191380, 28.260506, 29.517859>,  <28.956978, 28.052444, 29.269331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191380, 28.260506, 29.517859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758708, -0.621463, -0.195309,
		0.284537, 0.585852, -0.758825,
		0.586004, 0.520154, 0.621320,
		29.367180, 28.416552, 29.704254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601023, 28.159256, 28.907919>,  <28.956978, 28.052444, 29.269331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601023, 28.159256, 28.907919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659805, 28.174650, 29.303276>,  <29.695074, 28.183887, 29.540491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659805, 28.174650, 29.303276>,  <29.601023, 28.159256, 28.907919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659805, 28.174650, 29.303276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801226, -0.590590, -0.096131,
		0.580036, 0.806054, -0.117625,
		0.146955, 0.038485, 0.988394,
		29.703892, 28.186195, 29.599794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360643, 28.312351, 29.235929>,  <29.601023, 28.159256, 28.907919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360643, 28.312351, 29.235929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173958, 28.096533, 29.516233>,  <30.061947, 27.967041, 29.684416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173958, 28.096533, 29.516233>,  <30.360643, 28.312351, 29.235929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173958, 28.096533, 29.516233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699556, -0.710001, -0.080747,
		0.541109, 0.452536, 0.708811,
		-0.466716, -0.539546, 0.700762,
		30.033943, 27.934669, 29.726461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832670, 27.970592, 29.707134>,  <30.360643, 28.312351, 29.235929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832670, 27.970592, 29.707134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490990, 27.762888, 29.717758>,  <30.285980, 27.638266, 29.724133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490990, 27.762888, 29.717758>,  <30.832670, 27.970592, 29.707134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490990, 27.762888, 29.717758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511535, -0.848445, -0.135920,
		0.093113, -0.102516, 0.990364,
		-0.854203, -0.519262, 0.026561,
		30.234730, 27.607109, 29.725727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135723, 27.519081, 30.020687>,  <30.832670, 27.970592, 29.707134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135723, 27.519081, 30.020687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020336, 27.155737, 29.899578>,  <30.951105, 26.937731, 29.826912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020336, 27.155737, 29.899578>,  <31.135723, 27.519081, 30.020687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020336, 27.155737, 29.899578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616559, 0.065709, -0.784562,
		0.732559, -0.412996, 0.541102,
		-0.288466, -0.908359, -0.302772,
		30.933796, 26.883228, 29.808746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748377, 27.122469, 29.772345>,  <31.135723, 27.519081, 30.020687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748377, 27.122469, 29.772345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413925, 26.969410, 29.615135>,  <31.213253, 26.877575, 29.520809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413925, 26.969410, 29.615135>,  <31.748377, 27.122469, 29.772345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413925, 26.969410, 29.615135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408675, 0.043361, -0.911649,
		0.365884, -0.922875, 0.120124,
		-0.836130, -0.382650, -0.393021,
		31.163086, 26.854614, 29.497229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209343, 26.542971, 29.743399>,  <31.748377, 27.122469, 29.772345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209343, 26.542971, 29.743399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291462, 26.295950, 30.047104>,  <32.340733, 26.147738, 30.229326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291462, 26.295950, 30.047104>,  <32.209343, 26.542971, 29.743399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291462, 26.295950, 30.047104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144775, 0.786415, 0.600493,
		-0.967933, -0.013355, 0.250853,
		0.205294, -0.617554, 0.759264,
		32.353050, 26.110683, 30.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780060, 26.493807, 30.303997>,  <32.209343, 26.542971, 29.743399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780060, 26.493807, 30.303997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133831, 26.396454, 30.463272>,  <32.346092, 26.338041, 30.558838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133831, 26.396454, 30.463272>,  <31.780060, 26.493807, 30.303997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133831, 26.396454, 30.463272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036714, 0.814308, 0.579271,
		-0.465234, -0.526941, 0.711260,
		0.884426, -0.243383, 0.398190,
		32.399158, 26.323439, 30.582729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691692, 26.190800, 31.080309>,  <31.780060, 26.493807, 30.303997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691692, 26.190800, 31.080309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018024, 26.394312, 30.970352>,  <32.213825, 26.516418, 30.904377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018024, 26.394312, 30.970352>,  <31.691692, 26.190800, 31.080309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018024, 26.394312, 30.970352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246876, 0.736276, 0.630039,
		0.522947, -0.446140, 0.726282,
		0.815830, 0.508779, -0.274892,
		32.262772, 26.546946, 30.887884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050987, 26.391396, 31.653791>,  <31.691692, 26.190800, 31.080309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050987, 26.391396, 31.653791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117641, 26.632853, 31.341934>,  <32.157635, 26.777727, 31.154819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117641, 26.632853, 31.341934>,  <32.050987, 26.391396, 31.653791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117641, 26.632853, 31.341934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461520, 0.746487, 0.479330,
		0.871339, 0.279949, 0.402985,
		0.166635, 0.603644, -0.779645,
		32.167633, 26.813946, 31.108040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579735, 27.084503, 31.821215>,  <32.050987, 26.391396, 31.653791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579735, 27.084503, 31.821215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267311, 27.099169, 31.571863>,  <32.079857, 27.107967, 31.422253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267311, 27.099169, 31.571863>,  <32.579735, 27.084503, 31.821215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267311, 27.099169, 31.571863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422855, 0.703517, 0.571190,
		0.459498, 0.709732, -0.533986,
		-0.781061, 0.036662, -0.623378,
		32.032993, 27.110167, 31.384850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335121, 27.751509, 31.787014>,  <32.579735, 27.084503, 31.821215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335121, 27.751509, 31.787014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003223, 27.575602, 31.649534>,  <31.804085, 27.470057, 31.567047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003223, 27.575602, 31.649534>,  <32.335121, 27.751509, 31.787014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003223, 27.575602, 31.649534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557686, 0.628264, 0.542468,
		-0.022626, 0.641785, -0.766551,
		-0.829744, -0.439768, -0.343699,
		31.754301, 27.443670, 31.546425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904049, 28.268602, 31.587620>,  <32.335121, 27.751509, 31.787014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904049, 28.268602, 31.587620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682589, 27.954279, 31.697872>,  <31.549711, 27.765684, 31.764023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682589, 27.954279, 31.697872>,  <31.904049, 28.268602, 31.587620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682589, 27.954279, 31.697872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515044, 0.583215, 0.628164,
		-0.654370, 0.205822, -0.727625,
		-0.553652, -0.785810, 0.275631,
		31.516493, 27.718536, 31.780561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248524, 28.597990, 31.582588>,  <31.904049, 28.268602, 31.587620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248524, 28.597990, 31.582588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253368, 28.257921, 31.793137>,  <31.256275, 28.053881, 31.919464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253368, 28.257921, 31.793137>,  <31.248524, 28.597990, 31.582588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253368, 28.257921, 31.793137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763011, 0.332368, 0.554387,
		-0.646271, -0.408340, -0.644664,
		0.012113, -0.850170, 0.526368,
		31.257002, 28.002871, 31.951048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575396, 28.278994, 31.592834>,  <31.248524, 28.597990, 31.582588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575396, 28.278994, 31.592834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755476, 28.144129, 31.923565>,  <30.863523, 28.063210, 32.122002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755476, 28.144129, 31.923565>,  <30.575396, 28.278994, 31.592834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755476, 28.144129, 31.923565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708877, 0.428108, 0.560551,
		-0.542966, -0.838479, -0.046271,
		0.450201, -0.337160, 0.826826,
		30.890537, 28.042980, 32.171612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972239, 28.053158, 31.960142>,  <30.575396, 28.278994, 31.592834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972239, 28.053158, 31.960142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249844, 28.063242, 32.247952>,  <30.416407, 28.069292, 32.420635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249844, 28.063242, 32.247952>,  <29.972239, 28.053158, 31.960142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249844, 28.063242, 32.247952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607138, 0.557623, 0.566074,
		-0.386953, -0.829711, 0.402302,
		0.694010, 0.025209, 0.719523,
		30.458046, 28.070805, 32.463810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614145, 27.952345, 32.604313>,  <29.972239, 28.053158, 31.960142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614145, 27.952345, 32.604313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950787, 28.140778, 32.709980>,  <30.152771, 28.253838, 32.773380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950787, 28.140778, 32.709980>,  <29.614145, 27.952345, 32.604313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950787, 28.140778, 32.709980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530150, 0.627119, 0.570669,
		0.103170, -0.620324, 0.777531,
		0.841604, 0.471084, 0.264165,
		30.203268, 28.282103, 32.789230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510439, 28.145605, 33.352383>,  <29.614145, 27.952345, 32.604313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510439, 28.145605, 33.352383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832155, 28.375982, 33.293858>,  <30.025185, 28.514208, 33.258743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832155, 28.375982, 33.293858>,  <29.510439, 28.145605, 33.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832155, 28.375982, 33.293858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364929, 0.673042, 0.643306,
		0.468981, -0.464011, 0.751499,
		0.804291, 0.575941, -0.146313,
		30.073442, 28.548765, 33.249962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764328, 28.355015, 33.959087>,  <29.510439, 28.145605, 33.352383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764328, 28.355015, 33.959087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907345, 28.640451, 33.718105>,  <29.993155, 28.811714, 33.573517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907345, 28.640451, 33.718105>,  <29.764328, 28.355015, 33.959087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907345, 28.640451, 33.718105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425888, 0.698699, 0.574838,
		0.831134, 0.051049, 0.553724,
		0.357542, 0.713592, -0.602454,
		30.014608, 28.854528, 33.537369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611418, 28.852865, 34.362442>,  <29.764328, 28.355015, 33.959087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611418, 28.852865, 34.362442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772249, 29.066204, 34.064751>,  <29.868748, 29.194206, 33.886135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772249, 29.066204, 34.064751>,  <29.611418, 28.852865, 34.362442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772249, 29.066204, 34.064751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048734, 0.799209, 0.599075,
		0.914308, -0.277144, 0.295352,
		0.402078, 0.533345, -0.744229,
		29.892872, 29.226208, 33.841480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155537, 29.301176, 34.671852>,  <29.611418, 28.852865, 34.362442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155537, 29.301176, 34.671852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975918, 29.408581, 34.330971>,  <29.868147, 29.473022, 34.126442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975918, 29.408581, 34.330971>,  <30.155537, 29.301176, 34.671852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975918, 29.408581, 34.330971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242622, 0.881299, 0.405520,
		0.859936, 0.388862, -0.330600,
		-0.449049, 0.268511, -0.852207,
		29.841204, 29.489134, 34.075310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373104, 30.032469, 34.539906>,  <30.155537, 29.301176, 34.671852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373104, 30.032469, 34.539906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042683, 29.970896, 34.323040>,  <29.844431, 29.933952, 34.192921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042683, 29.970896, 34.323040>,  <30.373104, 30.032469, 34.539906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042683, 29.970896, 34.323040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397905, 0.840558, 0.367606,
		0.399135, 0.519391, -0.755595,
		-0.826053, -0.153931, -0.542165,
		29.794867, 29.924717, 34.160389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244713, 30.678591, 34.058739>,  <30.373104, 30.032469, 34.539906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244713, 30.678591, 34.058739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902752, 30.477949, 34.111710>,  <29.697577, 30.357563, 34.143494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902752, 30.477949, 34.111710>,  <30.244713, 30.678591, 34.058739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902752, 30.477949, 34.111710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466845, 0.855149, 0.225337,
		-0.226275, 0.130818, -0.965239,
		-0.854901, -0.501606, 0.132427,
		29.646282, 30.327467, 34.151436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716192, 31.117004, 33.836224>,  <30.244713, 30.678591, 34.058739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716192, 31.117004, 33.836224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493942, 30.860415, 34.047806>,  <29.360592, 30.706461, 34.174755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493942, 30.860415, 34.047806>,  <29.716192, 31.117004, 33.836224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493942, 30.860415, 34.047806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736243, 0.675189, 0.045452,
		-0.386300, -0.364184, -0.847433,
		-0.555625, -0.641474, 0.528954,
		29.327255, 30.667973, 34.206493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117113, 31.342772, 33.664776>,  <29.716192, 31.117004, 33.836224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117113, 31.342772, 33.664776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028118, 31.114946, 33.981281>,  <28.974722, 30.978252, 34.171185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028118, 31.114946, 33.981281>,  <29.117113, 31.342772, 33.664776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028118, 31.114946, 33.981281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736822, 0.629708, 0.246093,
		-0.638430, -0.528269, -0.559767,
		-0.222487, -0.569561, 0.791265,
		28.961372, 30.944078, 34.218662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395271, 31.121960, 33.673965>,  <29.117113, 31.342772, 33.664776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395271, 31.121960, 33.673965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518791, 31.102177, 34.053902>,  <28.592903, 31.090307, 34.281864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518791, 31.102177, 34.053902>,  <28.395271, 31.121960, 33.673965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518791, 31.102177, 34.053902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756641, 0.592333, 0.276832,
		-0.576313, -0.804174, 0.145490,
		0.308800, -0.049458, 0.949840,
		28.611431, 31.087339, 34.338852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827419, 31.351620, 34.016457>,  <28.395271, 31.121960, 33.673965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827419, 31.351620, 34.016457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101192, 31.369593, 34.307533>,  <28.265455, 31.380377, 34.482178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101192, 31.369593, 34.307533>,  <27.827419, 31.351620, 34.016457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101192, 31.369593, 34.307533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427673, 0.833084, 0.350809,
		-0.590465, -0.551319, 0.589406,
		0.684432, 0.044932, 0.727691,
		28.306522, 31.383072, 34.525841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386101, 31.395548, 34.660450>,  <27.827419, 31.351620, 34.016457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386101, 31.395548, 34.660450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749947, 31.545872, 34.731293>,  <27.968254, 31.636066, 34.773800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749947, 31.545872, 34.731293>,  <27.386101, 31.395548, 34.660450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749947, 31.545872, 34.731293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414069, 0.785337, 0.460209,
		0.033862, -0.491948, 0.869966,
		0.909616, 0.375809, 0.177107,
		28.022831, 31.658615, 34.784424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410055, 31.593346, 35.302406>,  <27.386101, 31.395548, 34.660450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410055, 31.593346, 35.302406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725658, 31.803984, 35.175812>,  <27.915020, 31.930367, 35.099857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725658, 31.803984, 35.175812>,  <27.410055, 31.593346, 35.302406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725658, 31.803984, 35.175812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298544, 0.778838, 0.551618,
		0.536968, -0.340748, 0.771723,
		0.789010, 0.526594, -0.316483,
		27.962362, 31.961962, 35.080868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803164, 31.778399, 35.901966>,  <27.410055, 31.593346, 35.302406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803164, 31.778399, 35.901966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931719, 32.045952, 35.633846>,  <28.008852, 32.206482, 35.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931719, 32.045952, 35.633846>,  <27.803164, 31.778399, 35.901966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931719, 32.045952, 35.633846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353200, 0.741448, 0.570530,
		0.878612, 0.053388, 0.474542,
		0.321389, 0.668883, -0.670302,
		28.028135, 32.246616, 35.432755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231974, 32.277176, 36.269535>,  <27.803164, 31.778399, 35.901966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231974, 32.277176, 36.269535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124224, 32.481255, 35.942822>,  <28.059574, 32.603703, 35.746792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124224, 32.481255, 35.942822>,  <28.231974, 32.277176, 36.269535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124224, 32.481255, 35.942822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184017, 0.805238, 0.563675,
		0.945291, 0.302141, -0.123024,
		-0.269373, 0.510199, -0.816784,
		28.043411, 32.634315, 35.697788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441782, 32.977875, 36.383472>,  <28.231974, 32.277176, 36.269535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441782, 32.977875, 36.383472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165342, 33.025368, 36.098297>,  <27.999479, 33.053864, 35.927193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165342, 33.025368, 36.098297>,  <28.441782, 32.977875, 36.383472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165342, 33.025368, 36.098297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322937, 0.831747, 0.451561,
		0.646601, 0.542309, -0.536477,
		-0.691100, 0.118732, -0.712941,
		27.958012, 33.060986, 35.884415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349760, 33.570374, 35.851151>,  <28.441782, 32.977875, 36.383472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349760, 33.570374, 35.851151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991167, 33.448914, 35.980217>,  <27.776012, 33.376038, 36.057659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991167, 33.448914, 35.980217>,  <28.349760, 33.570374, 35.851151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991167, 33.448914, 35.980217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148709, 0.892199, 0.426459,
		-0.417383, 0.334328, -0.844995,
		-0.896481, -0.303654, 0.322671,
		27.722223, 33.357819, 36.077019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034172, 34.101334, 36.344688>,  <28.349760, 33.570374, 35.851151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034172, 34.101334, 36.344688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703913, 34.155445, 36.563782>,  <27.505756, 34.187912, 36.695236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703913, 34.155445, 36.563782>,  <28.034172, 34.101334, 36.344688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703913, 34.155445, 36.563782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000643, -0.970604, 0.240682,
		0.564186, 0.199071, 0.801289,
		-0.825648, 0.135274, 0.547729,
		27.456219, 34.196026, 36.728100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171177, 34.796917, 36.312283>,  <28.034172, 34.101334, 36.344688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171177, 34.796917, 36.312283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911263, 34.670109, 36.588623>,  <27.755314, 34.594025, 36.754429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911263, 34.670109, 36.588623>,  <28.171177, 34.796917, 36.312283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911263, 34.670109, 36.588623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630233, -0.732812, 0.256500,
		0.424949, 0.602068, 0.675968,
		-0.649788, -0.317018, 0.690851,
		27.716326, 34.575005, 36.795879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878645, 35.125519, 36.533539>,  <28.171177, 34.796917, 36.312283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878645, 35.125519, 36.533539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021988, 34.927395, 36.850082>,  <29.107994, 34.808521, 37.040009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021988, 34.927395, 36.850082>,  <28.878645, 35.125519, 36.533539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021988, 34.927395, 36.850082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868355, -0.134443, -0.477372,
		0.342841, 0.858249, 0.381928,
		0.358357, -0.495311, 0.791358,
		29.129496, 34.778801, 37.087490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632795, 35.110767, 36.794151>,  <28.878645, 35.125519, 36.533539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632795, 35.110767, 36.794151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881224, 34.881336, 36.580505>,  <30.030281, 34.743675, 36.452320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881224, 34.881336, 36.580505>,  <29.632795, 35.110767, 36.794151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881224, 34.881336, 36.580505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089003, -0.625454, 0.775168,
		-0.778685, -0.528972, -0.337400,
		0.621070, -0.573582, -0.534112,
		30.067545, 34.709263, 36.420273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433434, 34.430779, 36.774757>,  <29.632795, 35.110767, 36.794151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433434, 34.430779, 36.774757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831110, 34.443092, 36.733505>,  <30.069715, 34.450481, 36.708755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831110, 34.443092, 36.733505>,  <29.433434, 34.430779, 36.774757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831110, 34.443092, 36.733505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105996, -0.445995, 0.888737,
		-0.018636, -0.894506, -0.446668,
		0.994192, 0.030782, -0.103126,
		30.129368, 34.452328, 36.702568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798994, 33.807640, 36.677635>,  <29.433434, 34.430779, 36.774757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798994, 33.807640, 36.677635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064449, 34.037792, 36.868855>,  <30.223722, 34.175884, 36.983585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064449, 34.037792, 36.868855>,  <29.798994, 33.807640, 36.677635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064449, 34.037792, 36.868855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091804, -0.696865, 0.711303,
		0.742400, -0.428160, -0.515287,
		0.663637, 0.575377, 0.478046,
		30.263540, 34.210403, 37.012268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361481, 33.383076, 36.883984>,  <29.798994, 33.807640, 36.677635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361481, 33.383076, 36.883984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380480, 33.672180, 37.159767>,  <30.391880, 33.845642, 37.325237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380480, 33.672180, 37.159767>,  <30.361481, 33.383076, 36.883984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380480, 33.672180, 37.159767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238786, -0.678444, 0.694762,
		0.969910, 0.131634, -0.204810,
		0.047498, 0.722763, 0.689462,
		30.394730, 33.889008, 37.366608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065960, 33.415558, 37.231438>,  <30.361481, 33.383076, 36.883984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065960, 33.415558, 37.231438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758102, 33.547832, 37.449905>,  <30.573389, 33.627197, 37.580986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758102, 33.547832, 37.449905>,  <31.065960, 33.415558, 37.231438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758102, 33.547832, 37.449905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067032, -0.808844, 0.584190,
		0.634948, 0.486228, 0.600353,
		-0.769641, 0.330688, 0.546166,
		30.527210, 33.647038, 37.613754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253290, 33.346115, 37.961056>,  <31.065960, 33.415558, 37.231438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253290, 33.346115, 37.961056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858822, 33.412170, 37.966640>,  <30.622141, 33.451805, 37.969990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858822, 33.412170, 37.966640>,  <31.253290, 33.346115, 37.961056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858822, 33.412170, 37.966640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106472, -0.695867, 0.710234,
		0.127001, 0.698927, 0.703827,
		-0.986172, 0.165138, 0.013960,
		30.562971, 33.461712, 37.970829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756430, 33.347820, 38.621662>,  <31.253290, 33.346115, 37.961056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756430, 33.347820, 38.621662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070412, 33.119450, 38.525421>,  <32.258801, 32.982426, 38.467678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070412, 33.119450, 38.525421>,  <31.756430, 33.347820, 38.621662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070412, 33.119450, 38.525421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431654, 0.225393, 0.873426,
		-0.444435, -0.789454, 0.423367,
		0.784954, -0.570929, -0.240598,
		32.305897, 32.948170, 38.453243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805656, 32.982426, 39.183056>,  <31.756430, 33.347820, 38.621662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805656, 32.982426, 39.183056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166019, 32.954369, 39.011734>,  <32.382236, 32.937534, 38.908939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166019, 32.954369, 39.011734>,  <31.805656, 32.982426, 39.183056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166019, 32.954369, 39.011734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430878, 0.262925, 0.863258,
		0.052062, -0.962263, 0.267094,
		0.900907, -0.070142, -0.428307,
		32.436291, 32.933327, 38.883244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284828, 32.709320, 39.781754>,  <31.805656, 32.982426, 39.183056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284828, 32.709320, 39.781754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528259, 32.844170, 39.494427>,  <32.674316, 32.925079, 39.322029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528259, 32.844170, 39.494427>,  <32.284828, 32.709320, 39.781754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528259, 32.844170, 39.494427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548791, 0.475019, 0.687885,
		0.573120, -0.812836, 0.104072,
		0.608574, 0.337127, -0.718320,
		32.710831, 32.945309, 39.278931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959045, 32.446327, 39.915699>,  <32.284828, 32.709320, 39.781754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959045, 32.446327, 39.915699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032654, 32.765141, 39.685616>,  <33.076820, 32.956429, 39.547565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032654, 32.765141, 39.685616>,  <32.959045, 32.446327, 39.915699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032654, 32.765141, 39.685616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779047, 0.238567, 0.579803,
		0.599350, -0.554816, -0.577026,
		0.184025, 0.797035, -0.575213,
		33.087860, 33.004250, 39.513050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725285, 32.470863, 39.890255>,  <32.959045, 32.446327, 39.915699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725285, 32.470863, 39.890255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633282, 32.829529, 39.738949>,  <33.578079, 33.044727, 39.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633282, 32.829529, 39.738949>,  <33.725285, 32.470863, 39.890255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633282, 32.829529, 39.738949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704380, 0.421587, 0.571063,
		0.671525, -0.135093, -0.728563,
		-0.230006, 0.896668, -0.378263,
		33.564281, 33.098530, 39.625469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418514, 32.901096, 39.718174>,  <33.725285, 32.470863, 39.890255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418514, 32.901096, 39.718174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108185, 33.143719, 39.787678>,  <33.921989, 33.289291, 39.829380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108185, 33.143719, 39.787678>,  <34.418514, 32.901096, 39.718174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108185, 33.143719, 39.787678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504164, 0.430365, 0.748735,
		0.379369, 0.668488, -0.639690,
		-0.775821, 0.606556, 0.173760,
		33.875439, 33.325684, 39.839806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683296, 33.620434, 39.857655>,  <34.418514, 32.901096, 39.718174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683296, 33.620434, 39.857655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320236, 33.616005, 40.025490>,  <34.102402, 33.613346, 40.126190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320236, 33.616005, 40.025490>,  <34.683296, 33.620434, 39.857655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320236, 33.616005, 40.025490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387740, 0.360669, 0.848278,
		-0.160726, 0.932628, -0.323067,
		-0.907648, -0.011074, 0.419586,
		34.047943, 33.612682, 40.151367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596203, 34.246716, 40.099747>,  <34.683296, 33.620434, 39.857655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596203, 34.246716, 40.099747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312637, 34.048092, 40.300095>,  <34.142498, 33.928917, 40.420303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312637, 34.048092, 40.300095>,  <34.596203, 34.246716, 40.099747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312637, 34.048092, 40.300095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416958, 0.277706, 0.865463,
		-0.568846, 0.822381, 0.010174,
		-0.708915, -0.496557, 0.500870,
		34.099964, 33.899124, 40.450356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195881, 34.664032, 40.601028>,  <34.596203, 34.246716, 40.099747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195881, 34.664032, 40.601028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122868, 34.297005, 40.742313>,  <34.079060, 34.076790, 40.827084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122868, 34.297005, 40.742313>,  <34.195881, 34.664032, 40.601028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122868, 34.297005, 40.742313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148795, 0.329330, 0.932417,
		-0.971875, 0.222753, 0.076415,
		-0.182533, -0.917564, 0.353212,
		34.068108, 34.021736, 40.848278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659943, 34.734825, 41.126030>,  <34.195881, 34.664032, 40.601028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659943, 34.734825, 41.126030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854656, 34.394444, 41.204941>,  <33.971485, 34.190212, 41.252285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854656, 34.394444, 41.204941>,  <33.659943, 34.734825, 41.126030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854656, 34.394444, 41.204941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227279, 0.341438, 0.912011,
		-0.843439, -0.399112, 0.359610,
		0.486780, -0.850957, 0.197273,
		34.000690, 34.139156, 41.264122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372120, 34.503391, 41.814034>,  <33.659943, 34.734825, 41.126030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372120, 34.503391, 41.814034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695557, 34.268078, 41.809952>,  <33.889618, 34.126888, 41.807503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695557, 34.268078, 41.809952>,  <33.372120, 34.503391, 41.814034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695557, 34.268078, 41.809952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157278, 0.199405, 0.967213,
		-0.566966, -0.783681, 0.253761,
		0.808587, -0.588288, -0.010200,
		33.938133, 34.091591, 41.806892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349842, 33.965034, 42.334541>,  <33.372120, 34.503391, 41.814034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349842, 33.965034, 42.334541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742424, 34.012814, 42.274563>,  <33.977974, 34.041481, 42.238575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742424, 34.012814, 42.274563>,  <33.349842, 33.965034, 42.334541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742424, 34.012814, 42.274563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169414, -0.174291, 0.970011,
		0.089730, -0.977423, -0.191294,
		0.981452, 0.119447, -0.149950,
		34.036861, 34.048649, 42.229576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612041, 33.408951, 42.670944>,  <33.349842, 33.965034, 42.334541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612041, 33.408951, 42.670944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933414, 33.643505, 42.629673>,  <34.126240, 33.784237, 42.604912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933414, 33.643505, 42.629673>,  <33.612041, 33.408951, 42.670944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933414, 33.643505, 42.629673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178133, -0.071391, 0.981413,
		0.568120, -0.806880, -0.161813,
		0.803435, 0.586385, -0.103173,
		34.174446, 33.819420, 42.598721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249371, 33.116505, 43.009624>,  <33.612041, 33.408951, 42.670944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249371, 33.116505, 43.009624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319729, 33.509869, 42.991859>,  <34.361942, 33.745888, 42.981201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319729, 33.509869, 42.991859>,  <34.249371, 33.116505, 43.009624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319729, 33.509869, 42.991859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311697, -0.012848, 0.950095,
		0.933759, -0.180961, -0.308784,
		0.175897, 0.983407, -0.044408,
		34.372498, 33.804890, 42.978539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820351, 33.318298, 43.410912>,  <34.249371, 33.116505, 43.009624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820351, 33.318298, 43.410912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694824, 33.696045, 43.371529>,  <34.619511, 33.922691, 43.347900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694824, 33.696045, 43.371529>,  <34.820351, 33.318298, 43.410912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694824, 33.696045, 43.371529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173171, 0.158878, 0.971993,
		0.933559, 0.287975, -0.213395,
		-0.313813, 0.944367, -0.098453,
		34.600681, 33.979355, 43.341991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394760, 33.789768, 43.650208>,  <34.820351, 33.318298, 43.410912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394760, 33.789768, 43.650208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038322, 33.969326, 43.676888>,  <34.824459, 34.077061, 43.692898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038322, 33.969326, 43.676888>,  <35.394760, 33.789768, 43.650208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038322, 33.969326, 43.676888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216221, 0.290718, 0.932058,
		0.399003, 0.844972, -0.356117,
		-0.891092, 0.448893, 0.066703,
		34.770996, 34.103992, 43.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536621, 34.298000, 44.035542>,  <35.394760, 33.789768, 43.650208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536621, 34.298000, 44.035542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141808, 34.302773, 44.099571>,  <34.904919, 34.305637, 44.137989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141808, 34.302773, 44.099571>,  <35.536621, 34.298000, 44.035542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141808, 34.302773, 44.099571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156945, 0.280889, 0.946821,
		-0.033665, 0.959666, -0.279119,
		-0.987033, 0.011932, 0.160071,
		34.845699, 34.306351, 44.147594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404129, 34.910179, 44.362228>,  <35.536621, 34.298000, 44.035542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404129, 34.910179, 44.362228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080574, 34.688492, 44.440758>,  <34.886440, 34.555481, 44.487873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080574, 34.688492, 44.440758>,  <35.404129, 34.910179, 44.362228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080574, 34.688492, 44.440758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078245, 0.229463, 0.970167,
		-0.582734, 0.800117, -0.142245,
		-0.808887, -0.554220, 0.196321,
		34.837910, 34.522224, 44.499653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157619, 35.178608, 44.955437>,  <35.404129, 34.910179, 44.362228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157619, 35.178608, 44.955437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924545, 34.853832, 44.969429>,  <34.784698, 34.658966, 44.977825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924545, 34.853832, 44.969429>,  <35.157619, 35.178608, 44.955437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924545, 34.853832, 44.969429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221450, 0.200045, 0.954433,
		-0.781942, 0.548391, -0.296368,
		-0.582689, -0.811942, 0.034983,
		34.749737, 34.610249, 44.979923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450207, 35.364410, 45.159954>,  <35.157619, 35.178608, 44.955437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450207, 35.364410, 45.159954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493401, 34.980511, 45.263660>,  <34.519318, 34.750172, 45.325886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493401, 34.980511, 45.263660>,  <34.450207, 35.364410, 45.159954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493401, 34.980511, 45.263660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338683, 0.209679, 0.917240,
		-0.934683, -0.186860, -0.302408,
		0.107987, -0.959749, 0.259269,
		34.525795, 34.692585, 45.341442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175423, 35.447723, 45.788677>,  <34.450207, 35.364410, 45.159954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175423, 35.447723, 45.788677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313488, 35.072685, 45.771809>,  <34.396328, 34.847664, 45.761688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313488, 35.072685, 45.771809>,  <34.175423, 35.447723, 45.788677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313488, 35.072685, 45.771809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035531, -0.031844, 0.998861,
		-0.937871, -0.346264, 0.022323,
		0.345159, -0.937596, -0.042169,
		34.417034, 34.791405, 45.759159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773174, 35.227287, 46.272606>,  <34.175423, 35.447723, 45.788677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773174, 35.227287, 46.272606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099388, 34.998932, 46.234676>,  <34.295116, 34.861919, 46.211918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099388, 34.998932, 46.234676>,  <33.773174, 35.227287, 46.272606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099388, 34.998932, 46.234676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067577, -0.068781, 0.995340,
		-0.574746, -0.818144, -0.017515,
		0.815537, -0.570884, -0.094820,
		34.344048, 34.827667, 46.206230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589264, 34.820316, 46.744755>,  <33.773174, 35.227287, 46.272606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589264, 34.820316, 46.744755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985855, 34.805492, 46.694794>,  <34.223808, 34.796597, 46.664818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985855, 34.805492, 46.694794>,  <33.589264, 34.820316, 46.744755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985855, 34.805492, 46.694794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128631, 0.126186, 0.983632,
		-0.020694, -0.991314, 0.129878,
		0.991476, -0.037062, -0.124902,
		34.283298, 34.794373, 46.657322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851921, 34.458389, 47.293499>,  <33.589264, 34.820316, 46.744755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851921, 34.458389, 47.293499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212330, 34.590893, 47.181484>,  <34.428574, 34.670395, 47.114273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212330, 34.590893, 47.181484>,  <33.851921, 34.458389, 47.293499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212330, 34.590893, 47.181484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313857, -0.052239, 0.948032,
		0.299418, -0.942091, -0.151037,
		0.901023, 0.331262, -0.280041,
		34.482635, 34.690269, 47.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475704, 33.991356, 47.493320>,  <33.851921, 34.458389, 47.293499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475704, 33.991356, 47.493320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662258, 34.341927, 47.445385>,  <34.774193, 34.552269, 47.416622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662258, 34.341927, 47.445385>,  <34.475704, 33.991356, 47.493320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662258, 34.341927, 47.445385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328680, -0.045918, 0.943324,
		0.821251, -0.479343, -0.309479,
		0.466387, 0.876425, -0.119840,
		34.802174, 34.604855, 47.409431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184315, 33.869656, 47.619911>,  <34.475704, 33.991356, 47.493320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184315, 33.869656, 47.619911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130184, 34.264057, 47.658863>,  <35.097706, 34.500698, 47.682236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130184, 34.264057, 47.658863>,  <35.184315, 33.869656, 47.619911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130184, 34.264057, 47.658863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384258, -0.038363, 0.922428,
		0.913254, 0.162248, -0.373688,
		-0.135326, 0.986004, 0.097380,
		35.089588, 34.559860, 47.688076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881699, 34.237144, 47.722485>,  <35.184315, 33.869656, 47.619911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881699, 34.237144, 47.722485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614750, 34.499382, 47.863800>,  <35.454578, 34.656723, 47.948589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614750, 34.499382, 47.863800>,  <35.881699, 34.237144, 47.722485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614750, 34.499382, 47.863800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474587, 0.008815, 0.880164,
		0.573915, 0.755063, -0.317019,
		-0.667374, 0.655592, 0.353285,
		35.414539, 34.696060, 47.969784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290424, 34.846306, 48.090858>,  <35.881699, 34.237144, 47.722485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290424, 34.846306, 48.090858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922607, 34.863632, 48.247097>,  <35.701916, 34.874027, 48.340839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922607, 34.863632, 48.247097>,  <36.290424, 34.846306, 48.090858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922607, 34.863632, 48.247097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392310, 0.159515, 0.905896,
		-0.023066, 0.986245, -0.163674,
		-0.919544, 0.043316, 0.390593,
		35.646744, 34.876629, 48.364277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312317, 35.364346, 48.540890>,  <36.290424, 34.846306, 48.090858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312317, 35.364346, 48.540890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988445, 35.178600, 48.684437>,  <35.794121, 35.067154, 48.770565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988445, 35.178600, 48.684437>,  <36.312317, 35.364346, 48.540890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988445, 35.178600, 48.684437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330338, 0.144799, 0.932690,
		-0.485072, 0.873726, 0.036157,
		-0.809680, -0.464366, 0.358863,
		35.745541, 35.039291, 48.792095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010197, 35.806343, 49.069077>,  <36.312317, 35.364346, 48.540890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010197, 35.806343, 49.069077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886780, 35.433670, 49.145782>,  <35.812729, 35.210068, 49.191807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886780, 35.433670, 49.145782>,  <36.010197, 35.806343, 49.069077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886780, 35.433670, 49.145782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383272, 0.062744, 0.921502,
		-0.870578, 0.357816, 0.337729,
		-0.308538, -0.931682, 0.191765,
		35.794220, 35.154167, 49.203312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809105, 35.872425, 49.775192>,  <36.010197, 35.806343, 49.069077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809105, 35.872425, 49.775192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849842, 35.482361, 49.696518>,  <35.874283, 35.248322, 49.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849842, 35.482361, 49.696518>,  <35.809105, 35.872425, 49.775192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849842, 35.482361, 49.696518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320689, -0.154973, 0.934421,
		-0.941694, -0.158236, 0.296942,
		0.101841, -0.975164, -0.196681,
		35.880394, 35.189812, 49.637512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733524, 35.664288, 50.445610>,  <35.809105, 35.872425, 49.775192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733524, 35.664288, 50.445610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874039, 35.358727, 50.229073>,  <35.958347, 35.175388, 50.099152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874039, 35.358727, 50.229073>,  <35.733524, 35.664288, 50.445610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874039, 35.358727, 50.229073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405649, -0.396924, 0.823347,
		-0.843828, -0.508826, 0.170442,
		0.351288, -0.763903, -0.541340,
		35.979424, 35.129555, 50.066669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615826, 35.087276, 50.858627>,  <35.733524, 35.664288, 50.445610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615826, 35.087276, 50.858627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909847, 34.979931, 50.609573>,  <36.086262, 34.915524, 50.460140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909847, 34.979931, 50.609573>,  <35.615826, 35.087276, 50.858627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909847, 34.979931, 50.609573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431788, -0.522737, 0.735055,
		-0.522737, -0.809152, -0.268364,
		-0.735055, 0.268364, 0.622635,
		36.130363, 34.899422, 50.422783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683758, 34.366550, 50.849075>,  <35.615826, 35.087276, 50.858627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683758, 34.366550, 50.849075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047455, 34.493500, 50.741329>,  <36.265671, 34.569668, 50.676682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047455, 34.493500, 50.741329>,  <35.683758, 34.366550, 50.849075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047455, 34.493500, 50.741329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407840, -0.549561, 0.729143,
		0.083376, -0.772824, -0.629120,
		0.909238, 0.317374, -0.269369,
		36.320225, 34.588711, 50.660519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155750, 33.810341, 50.934624>,  <35.683758, 34.366550, 50.849075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155750, 33.810341, 50.934624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411591, 34.117821, 50.935596>,  <36.565094, 34.302311, 50.936180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411591, 34.117821, 50.935596>,  <36.155750, 33.810341, 50.934624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411591, 34.117821, 50.935596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588968, -0.492079, 0.641073,
		0.493993, -0.408597, -0.767476,
		0.639600, 0.768704, 0.002433,
		36.603470, 34.348431, 50.936325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984818, 33.636906, 50.826538>,  <36.155750, 33.810341, 50.934624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984818, 33.636906, 50.826538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007347, 33.992538, 51.008244>,  <37.020863, 34.205917, 51.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007347, 33.992538, 51.008244>,  <36.984818, 33.636906, 50.826538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007347, 33.992538, 51.008244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648735, -0.378440, 0.660247,
		0.758928, 0.257513, -0.598093,
		0.056320, 0.889084, 0.454266,
		37.024242, 34.259262, 51.144524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667843, 33.769917, 51.021858>,  <36.984818, 33.636906, 50.826538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667843, 33.769917, 51.021858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486572, 34.019623, 51.276390>,  <37.377811, 34.169449, 51.429111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486572, 34.019623, 51.276390>,  <37.667843, 33.769917, 51.021858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486572, 34.019623, 51.276390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638317, -0.271031, 0.720482,
		0.622240, 0.732687, -0.275657,
		-0.453176, 0.624269, 0.636333,
		37.350620, 34.206905, 51.467289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182144, 33.955223, 51.392555>,  <37.667843, 33.769917, 51.021858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182144, 33.955223, 51.392555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857918, 34.068779, 51.597450>,  <37.663380, 34.136913, 51.720387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857918, 34.068779, 51.597450>,  <38.182144, 33.955223, 51.392555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857918, 34.068779, 51.597450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495034, -0.135217, 0.858288,
		0.312920, 0.949276, -0.030931,
		-0.810569, 0.283887, 0.512236,
		37.614746, 34.153946, 51.751122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392891, 34.421082, 51.887600>,  <38.182144, 33.955223, 51.392555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392891, 34.421082, 51.887600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046581, 34.259998, 52.006432>,  <37.838795, 34.163349, 52.077728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046581, 34.259998, 52.006432>,  <38.392891, 34.421082, 51.887600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046581, 34.259998, 52.006432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433146, -0.305734, 0.847886,
		-0.250626, 0.862758, 0.439129,
		-0.865778, -0.402709, 0.297076,
		37.786846, 34.139187, 52.095554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116589, 34.741707, 52.576599>,  <38.392891, 34.421082, 51.887600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116589, 34.741707, 52.576599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029995, 34.361870, 52.485901>,  <37.978039, 34.133968, 52.431480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029995, 34.361870, 52.485901>,  <38.116589, 34.741707, 52.576599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029995, 34.361870, 52.485901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378850, -0.295761, 0.876925,
		-0.899782, 0.103937, 0.423780,
		-0.216483, -0.949591, -0.226744,
		37.965050, 34.076992, 52.417877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743011, 34.432629, 53.165409>,  <38.116589, 34.741707, 52.576599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743011, 34.432629, 53.165409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922691, 34.148663, 52.948433>,  <38.030499, 33.978283, 52.818249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922691, 34.148663, 52.948433>,  <37.743011, 34.432629, 53.165409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922691, 34.148663, 52.948433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472074, -0.326868, 0.818721,
		-0.758527, -0.623842, 0.188302,
		0.449202, -0.709915, -0.542438,
		38.057453, 33.935688, 52.785702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554649, 33.719299, 53.423191>,  <37.743011, 34.432629, 53.165409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554649, 33.719299, 53.423191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919453, 33.781082, 53.271198>,  <38.138332, 33.818150, 53.180000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919453, 33.781082, 53.271198>,  <37.554649, 33.719299, 53.423191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919453, 33.781082, 53.271198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407927, -0.244656, 0.879624,
		0.042894, -0.957229, -0.286134,
		0.912006, 0.154452, -0.379986,
		38.193054, 33.827419, 53.157204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935883, 34.095436, 53.637165>,  <37.554649, 33.719299, 53.423191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935883, 34.095436, 53.637165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770733, 33.901112, 53.945328>,  <36.671642, 33.784515, 54.130226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770733, 33.901112, 53.945328>,  <36.935883, 34.095436, 53.637165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770733, 33.901112, 53.945328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830845, 0.547436, -0.100052,
		-0.373143, -0.681397, -0.629652,
		-0.412870, -0.485810, 0.770407,
		36.646873, 33.755367, 54.176449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324364, 33.744434, 53.376881>,  <36.935883, 34.095436, 53.637165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324364, 33.744434, 53.376881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301548, 33.784023, 53.774261>,  <36.287861, 33.807777, 54.012691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301548, 33.784023, 53.774261>,  <36.324364, 33.744434, 53.376881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301548, 33.784023, 53.774261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861744, 0.497580, -0.099047,
		-0.504126, -0.861753, 0.056910,
		-0.057037, 0.098974, 0.993454,
		36.284435, 33.813717, 54.072296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796387, 33.415005, 53.756912>,  <36.324364, 33.744434, 53.376881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796387, 33.415005, 53.756912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898510, 33.759888, 53.931915>,  <35.959785, 33.966816, 54.036919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898510, 33.759888, 53.931915>,  <35.796387, 33.415005, 53.756912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898510, 33.759888, 53.931915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910774, 0.366344, -0.190480,
		-0.324513, -0.349841, 0.878807,
		0.255308, 0.862208, 0.437510,
		35.975101, 34.018551, 54.063168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269760, 32.825779, 53.678062>,  <35.796387, 33.415005, 53.756912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269760, 32.825779, 53.678062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227283, 32.449699, 53.807518>,  <36.201797, 32.224052, 53.885193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227283, 32.449699, 53.807518>,  <36.269760, 32.825779, 53.678062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227283, 32.449699, 53.807518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900038, -0.229240, -0.370649,
		0.422677, 0.251932, 0.870560,
		-0.106189, -0.940202, 0.323643,
		36.195427, 32.167641, 53.904610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889450, 32.624134, 53.958195>,  <36.269760, 32.825779, 53.678062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889450, 32.624134, 53.958195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661407, 32.335155, 53.801708>,  <36.524582, 32.161770, 53.707817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661407, 32.335155, 53.801708>,  <36.889450, 32.624134, 53.958195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661407, 32.335155, 53.801708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798498, -0.375175, -0.470790,
		0.193345, -0.580788, 0.790761,
		-0.570103, -0.722446, -0.391220,
		36.490376, 32.118423, 53.684341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291641, 32.000443, 54.014320>,  <36.889450, 32.624134, 53.958195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291641, 32.000443, 54.014320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020313, 31.948490, 53.725044>,  <36.857517, 31.917320, 53.551479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020313, 31.948490, 53.725044>,  <37.291641, 32.000443, 54.014320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020313, 31.948490, 53.725044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691855, -0.444325, -0.569132,
		-0.247415, -0.886401, 0.391253,
		-0.678324, -0.129878, -0.723194,
		36.816818, 31.909527, 53.508087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435307, 31.374683, 53.769978>,  <37.291641, 32.000443, 54.014320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435307, 31.374683, 53.769978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281574, 31.623056, 53.496704>,  <37.189335, 31.772079, 53.332741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281574, 31.623056, 53.496704>,  <37.435307, 31.374683, 53.769978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281574, 31.623056, 53.496704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682316, -0.307441, -0.663269,
		-0.621883, -0.721057, -0.305514,
		-0.384327, 0.620933, -0.683180,
		37.166275, 31.809336, 53.291752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942108, 31.357899, 53.094826>,  <37.435307, 31.374683, 53.769978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942108, 31.357899, 53.094826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649475, 31.605677, 52.980934>,  <37.473896, 31.754343, 52.912598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649475, 31.605677, 52.980934>,  <37.942108, 31.357899, 53.094826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649475, 31.605677, 52.980934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329326, -0.044583, -0.943163,
		-0.596931, -0.783773, -0.171383,
		-0.731585, 0.619444, -0.284730,
		37.430000, 31.791510, 52.895515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627037, 31.016241, 52.512241>,  <37.942108, 31.357899, 53.094826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627037, 31.016241, 52.512241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578381, 31.413031, 52.498413>,  <37.549187, 31.651104, 52.490116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578381, 31.413031, 52.498413>,  <37.627037, 31.016241, 52.512241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578381, 31.413031, 52.498413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324215, 0.006792, -0.945959,
		-0.938130, -0.126276, -0.322439,
		-0.121642, 0.991972, -0.034569,
		37.541889, 31.710623, 52.488041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231644, 31.145742, 52.034512>,  <37.627037, 31.016241, 52.512241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231644, 31.145742, 52.034512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404011, 31.504692, 52.072517>,  <37.507431, 31.720062, 52.095322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404011, 31.504692, 52.072517>,  <37.231644, 31.145742, 52.034512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404011, 31.504692, 52.072517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103047, 0.055668, -0.993117,
		-0.896488, 0.437743, -0.068483,
		0.430918, 0.897375, 0.095014,
		37.533287, 31.773905, 52.101021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877739, 31.527842, 51.504993>,  <37.231644, 31.145742, 52.034512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877739, 31.527842, 51.504993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216721, 31.705925, 51.620659>,  <37.420109, 31.812775, 51.690056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216721, 31.705925, 51.620659>,  <36.877739, 31.527842, 51.504993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216721, 31.705925, 51.620659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204608, 0.228692, -0.951754,
		-0.489858, 0.865731, 0.102712,
		0.847452, 0.445208, 0.289162,
		37.470955, 31.839487, 51.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833000, 32.154968, 51.228542>,  <36.877739, 31.527842, 51.504993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833000, 32.154968, 51.228542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216557, 32.066319, 51.299438>,  <37.446690, 32.013130, 51.341976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216557, 32.066319, 51.299438>,  <36.833000, 32.154968, 51.228542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216557, 32.066319, 51.299438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204363, 0.105934, -0.973146,
		0.196896, 0.969361, 0.146871,
		0.958889, -0.221624, 0.177243,
		37.504223, 31.999832, 51.352612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174324, 32.579113, 50.869801>,  <36.833000, 32.154968, 51.228542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174324, 32.579113, 50.869801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452297, 32.296238, 50.921883>,  <37.619080, 32.126514, 50.953133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452297, 32.296238, 50.921883>,  <37.174324, 32.579113, 50.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452297, 32.296238, 50.921883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253505, 0.071490, -0.964689,
		0.672907, 0.703402, 0.228957,
		0.694932, -0.707188, 0.130210,
		37.660778, 32.084084, 50.960945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779751, 32.874214, 50.540615>,  <37.174324, 32.579113, 50.869801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779751, 32.874214, 50.540615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845245, 32.480133, 50.560841>,  <37.884544, 32.243683, 50.572975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845245, 32.480133, 50.560841>,  <37.779751, 32.874214, 50.540615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845245, 32.480133, 50.560841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316514, 0.003925, -0.948580,
		0.934349, 0.171324, 0.312474,
		0.163741, -0.985207, 0.050559,
		37.894367, 32.184570, 50.576008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345875, 32.865681, 50.192928>,  <37.779751, 32.874214, 50.540615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345875, 32.865681, 50.192928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191948, 32.496483, 50.192375>,  <38.099594, 32.274963, 50.192043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191948, 32.496483, 50.192375>,  <38.345875, 32.865681, 50.192928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191948, 32.496483, 50.192375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313948, -0.129485, -0.940569,
		0.867959, -0.362379, 0.339600,
		-0.384816, -0.922993, -0.001381,
		38.076504, 32.219585, 50.191959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949799, 32.381046, 49.933891>,  <38.345875, 32.865681, 50.192928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949799, 32.381046, 49.933891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586128, 32.219463, 49.893456>,  <38.367928, 32.122513, 49.869194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586128, 32.219463, 49.893456>,  <38.949799, 32.381046, 49.933891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586128, 32.219463, 49.893456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200541, -0.211994, -0.956474,
		0.364940, -0.889876, 0.273750,
		-0.909177, -0.403954, -0.101091,
		38.313374, 32.098278, 49.863129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025887, 31.987425, 49.329166>,  <38.949799, 32.381046, 49.933891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025887, 31.987425, 49.329166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628620, 32.021854, 49.360687>,  <38.390259, 32.042511, 49.379601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628620, 32.021854, 49.360687>,  <39.025887, 31.987425, 49.329166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628620, 32.021854, 49.360687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067015, 0.132129, -0.988965,
		-0.095533, -0.987489, -0.125458,
		-0.993168, 0.086071, 0.078800,
		38.330669, 32.047676, 49.384327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810982, 31.570015, 48.728741>,  <39.025887, 31.987425, 49.329166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810982, 31.570015, 48.728741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473667, 31.757301, 48.834301>,  <38.271278, 31.869673, 48.897636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473667, 31.757301, 48.834301>,  <38.810982, 31.570015, 48.728741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473667, 31.757301, 48.834301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272040, 0.051634, -0.960899,
		-0.463533, -0.882105, 0.083831,
		-0.843286, 0.468214, 0.263903,
		38.220680, 31.897766, 48.913471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254967, 31.194183, 48.511086>,  <38.810982, 31.570015, 48.728741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254967, 31.194183, 48.511086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112148, 31.567549, 48.525269>,  <38.026455, 31.791567, 48.533779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112148, 31.567549, 48.525269>,  <38.254967, 31.194183, 48.511086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112148, 31.567549, 48.525269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304517, -0.080426, -0.949105,
		-0.883054, -0.349677, 0.312956,
		-0.357050, 0.933411, 0.035462,
		38.005032, 31.847572, 48.535908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601379, 31.153948, 48.212978>,  <38.254967, 31.194183, 48.511086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601379, 31.153948, 48.212978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736065, 31.529688, 48.186909>,  <37.816875, 31.755131, 48.171268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736065, 31.529688, 48.186909>,  <37.601379, 31.153948, 48.212978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736065, 31.529688, 48.186909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265038, 0.028133, -0.963827,
		-0.903536, 0.341809, 0.258436,
		0.336716, 0.939348, -0.065173,
		37.837078, 31.811493, 48.167358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331795, 31.363846, 47.549709>,  <37.601379, 31.153948, 48.212978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331795, 31.363846, 47.549709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540302, 31.698814, 47.615444>,  <37.665405, 31.899796, 47.654884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540302, 31.698814, 47.615444>,  <37.331795, 31.363846, 47.549709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540302, 31.698814, 47.615444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012802, 0.200218, -0.979668,
		-0.853298, 0.508564, 0.115088,
		0.521266, 0.837422, 0.164335,
		37.696682, 31.950041, 47.664745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003548, 31.880289, 47.267365>,  <37.331795, 31.363846, 47.549709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003548, 31.880289, 47.267365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378963, 32.015385, 47.295868>,  <37.604214, 32.096443, 47.312969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378963, 32.015385, 47.295868>,  <37.003548, 31.880289, 47.267365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378963, 32.015385, 47.295868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022384, 0.265557, -0.963835,
		-0.344446, 0.903002, 0.256795,
		0.938539, 0.337737, 0.071257,
		37.660526, 32.116707, 47.317245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959511, 32.578384, 46.937168>,  <37.003548, 31.880289, 47.267365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959511, 32.578384, 46.937168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337967, 32.449749, 46.922188>,  <37.565041, 32.372566, 46.913200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337967, 32.449749, 46.922188>,  <36.959511, 32.578384, 46.937168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337967, 32.449749, 46.922188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031028, 0.205201, -0.978228,
		0.322270, 0.924378, 0.204127,
		0.946139, -0.321587, -0.037449,
		37.621807, 32.353271, 46.910954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420635, 33.161263, 46.685211>,  <36.959511, 32.578384, 46.937168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420635, 33.161263, 46.685211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599407, 32.815727, 46.592220>,  <37.706669, 32.608406, 46.536427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599407, 32.815727, 46.592220>,  <37.420635, 33.161263, 46.685211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599407, 32.815727, 46.592220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203744, 0.154752, -0.966716,
		0.871060, 0.479416, -0.106839,
		0.446925, -0.863836, -0.232476,
		37.733486, 32.556576, 46.522476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894348, 33.329216, 46.164230>,  <37.420635, 33.161263, 46.685211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894348, 33.329216, 46.164230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844810, 32.933918, 46.128372>,  <37.815086, 32.696739, 46.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844810, 32.933918, 46.128372>,  <37.894348, 33.329216, 46.164230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844810, 32.933918, 46.128372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177345, 0.110932, -0.977877,
		0.976326, -0.105205, -0.188998,
		-0.123843, -0.988244, -0.089648,
		37.807659, 32.637444, 46.101479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358841, 33.041737, 45.633530>,  <37.894348, 33.329216, 46.164230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358841, 33.041737, 45.633530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032936, 32.809978, 45.642139>,  <37.837395, 32.670921, 45.647305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032936, 32.809978, 45.642139>,  <38.358841, 33.041737, 45.633530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032936, 32.809978, 45.642139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144697, 0.167242, -0.975240,
		0.561452, -0.797701, -0.220100,
		-0.814760, -0.579398, 0.021526,
		37.788509, 32.636158, 45.648598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378754, 32.763836, 44.966873>,  <38.358841, 33.041737, 45.633530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378754, 32.763836, 44.966873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009518, 32.670475, 45.089142>,  <37.787975, 32.614460, 45.162502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009518, 32.670475, 45.089142>,  <38.378754, 32.763836, 44.966873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009518, 32.670475, 45.089142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332969, 0.087247, -0.938893,
		0.192472, -0.968458, -0.158253,
		-0.923085, -0.233404, 0.305674,
		37.732594, 32.600456, 45.180843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156288, 32.249352, 44.538204>,  <38.378754, 32.763836, 44.966873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156288, 32.249352, 44.538204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804955, 32.344543, 44.704048>,  <37.594154, 32.401657, 44.803555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804955, 32.344543, 44.704048>,  <38.156288, 32.249352, 44.538204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804955, 32.344543, 44.704048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473555, -0.314465, -0.822714,
		-0.065406, -0.918956, 0.388899,
		-0.878332, 0.237975, 0.414608,
		37.541454, 32.415936, 44.828430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694969, 31.713972, 44.368786>,  <38.156288, 32.249352, 44.538204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694969, 31.713972, 44.368786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457878, 32.025265, 44.451767>,  <37.315624, 32.212040, 44.501556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457878, 32.025265, 44.451767>,  <37.694969, 31.713972, 44.368786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457878, 32.025265, 44.451767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472362, -0.127278, -0.872167,
		-0.652342, -0.614946, 0.443047,
		-0.592725, 0.778230, 0.207448,
		37.280060, 32.258732, 44.514000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053288, 31.453207, 44.348991>,  <37.694969, 31.713972, 44.368786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053288, 31.453207, 44.348991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044899, 31.847841, 44.284233>,  <37.039867, 32.084621, 44.245380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044899, 31.847841, 44.284233>,  <37.053288, 31.453207, 44.348991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044899, 31.847841, 44.284233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437514, -0.154656, -0.885812,
		-0.898967, 0.052256, 0.434888,
		-0.020969, 0.986585, -0.161894,
		37.038609, 32.143818, 44.235664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474964, 31.616442, 43.967182>,  <37.053288, 31.453207, 44.348991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474964, 31.616442, 43.967182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670067, 31.958448, 43.896702>,  <36.787128, 32.163651, 43.854412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670067, 31.958448, 43.896702>,  <36.474964, 31.616442, 43.967182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670067, 31.958448, 43.896702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243314, -0.060692, -0.968047,
		-0.838389, 0.515039, 0.178435,
		0.487752, 0.855015, -0.176200,
		36.816391, 32.214954, 43.843842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255856, 31.745850, 43.350266>,  <36.474964, 31.616442, 43.967182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255856, 31.745850, 43.350266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493259, 32.065907, 43.384956>,  <36.635700, 32.257942, 43.405773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493259, 32.065907, 43.384956>,  <36.255856, 31.745850, 43.350266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493259, 32.065907, 43.384956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174688, 0.233262, -0.956595,
		-0.785644, 0.552593, 0.278217,
		0.593505, 0.800144, 0.086729,
		36.671310, 32.305950, 43.410976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886227, 32.419594, 43.133133>,  <36.255856, 31.745850, 43.350266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886227, 32.419594, 43.133133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279682, 32.408203, 43.061970>,  <36.515755, 32.401367, 43.019272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279682, 32.408203, 43.061970>,  <35.886227, 32.419594, 43.133133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279682, 32.408203, 43.061970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174692, 0.091021, -0.980407,
		0.044113, 0.995442, 0.084556,
		0.983634, -0.028478, -0.177911,
		36.574772, 32.399658, 43.008598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970924, 32.802765, 42.556278>,  <35.886227, 32.419594, 43.133133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970924, 32.802765, 42.556278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312965, 32.595703, 42.567806>,  <36.518188, 32.471466, 42.574722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312965, 32.595703, 42.567806>,  <35.970924, 32.802765, 42.556278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312965, 32.595703, 42.567806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135053, 0.168730, -0.976366,
		0.500558, 0.838787, 0.214192,
		0.855104, -0.517655, 0.028821,
		36.569496, 32.440407, 42.576454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543869, 33.185051, 42.121666>,  <35.970924, 32.802765, 42.556278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543869, 33.185051, 42.121666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611713, 32.794182, 42.172836>,  <36.652420, 32.559662, 42.203537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611713, 32.794182, 42.172836>,  <36.543869, 33.185051, 42.121666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611713, 32.794182, 42.172836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282841, -0.076076, -0.956145,
		0.944051, 0.198355, 0.263481,
		0.169612, -0.977173, 0.127923,
		36.662598, 32.501030, 42.211212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041958, 33.039536, 41.611790>,  <36.543869, 33.185051, 42.121666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041958, 33.039536, 41.611790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926216, 32.663776, 41.685329>,  <36.856770, 32.438320, 41.729454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926216, 32.663776, 41.685329>,  <37.041958, 33.039536, 41.611790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926216, 32.663776, 41.685329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097577, -0.220011, -0.970605,
		0.952235, -0.262912, 0.155326,
		-0.289357, -0.939400, 0.183848,
		36.839409, 32.381958, 41.740482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364895, 32.590839, 41.056248>,  <37.041958, 33.039536, 41.611790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364895, 32.590839, 41.056248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075920, 32.356297, 41.202820>,  <36.902534, 32.215569, 41.290764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075920, 32.356297, 41.202820>,  <37.364895, 32.590839, 41.056248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075920, 32.356297, 41.202820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145697, -0.388959, -0.909661,
		0.675917, -0.710556, 0.195566,
		-0.722433, -0.586362, 0.366430,
		36.859192, 32.180389, 41.312748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451275, 31.894722, 40.836746>,  <37.364895, 32.590839, 41.056248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451275, 31.894722, 40.836746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058010, 31.926886, 40.902386>,  <36.822052, 31.946184, 40.941769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058010, 31.926886, 40.902386>,  <37.451275, 31.894722, 40.836746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058010, 31.926886, 40.902386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181386, -0.320308, -0.929786,
		-0.022203, -0.943895, 0.329499,
		-0.983161, 0.080410, 0.164097,
		36.763062, 31.951010, 40.951614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169590, 31.459219, 40.334595>,  <37.451275, 31.894722, 40.836746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169590, 31.459219, 40.334595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843899, 31.655060, 40.459385>,  <36.648483, 31.772564, 40.534260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843899, 31.655060, 40.459385>,  <37.169590, 31.459219, 40.334595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843899, 31.655060, 40.459385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434454, -0.157421, -0.886830,
		-0.385083, -0.857618, 0.340885,
		-0.814224, 0.489602, 0.311976,
		36.599632, 31.801941, 40.552979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668076, 31.041697, 40.048820>,  <37.169590, 31.459219, 40.334595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668076, 31.041697, 40.048820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448853, 31.368387, 40.121029>,  <36.317318, 31.564402, 40.164356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448853, 31.368387, 40.121029>,  <36.668076, 31.041697, 40.048820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448853, 31.368387, 40.121029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450774, -0.106596, -0.886250,
		-0.704581, -0.567093, 0.426580,
		-0.548058, 0.816727, 0.180525,
		36.284435, 31.613405, 40.175186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950718, 30.836098, 39.950264>,  <36.668076, 31.041697, 40.048820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950718, 30.836098, 39.950264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972782, 31.232479, 39.901333>,  <35.986019, 31.470308, 39.871975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972782, 31.232479, 39.901333>,  <35.950718, 30.836098, 39.950264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972782, 31.232479, 39.901333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547790, -0.072397, -0.833478,
		-0.834795, 0.112987, 0.538842,
		0.055161, 0.990955, -0.122330,
		35.989330, 31.529766, 39.864635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317501, 31.031424, 39.714191>,  <35.950718, 30.836098, 39.950264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317501, 31.031424, 39.714191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543865, 31.341557, 39.602043>,  <35.679684, 31.527637, 39.534752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543865, 31.341557, 39.602043>,  <35.317501, 31.031424, 39.714191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543865, 31.341557, 39.602043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388094, -0.049526, -0.920288,
		-0.727416, 0.629607, 0.272875,
		0.565906, 0.775333, -0.280373,
		35.713638, 31.574156, 39.517933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870178, 31.487778, 39.282207>,  <35.317501, 31.031424, 39.714191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870178, 31.487778, 39.282207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247108, 31.588184, 39.193649>,  <35.473267, 31.648428, 39.140514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247108, 31.588184, 39.193649>,  <34.870178, 31.487778, 39.282207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247108, 31.588184, 39.193649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247761, 0.078411, -0.965643,
		-0.225034, 0.964801, 0.136082,
		0.942324, 0.251019, -0.221395,
		35.529804, 31.663490, 39.127232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853420, 32.208447, 38.921555>,  <34.870178, 31.487778, 39.282207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853420, 32.208447, 38.921555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193592, 32.015862, 38.836735>,  <35.397694, 31.900311, 38.785843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193592, 32.015862, 38.836735>,  <34.853420, 32.208447, 38.921555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193592, 32.015862, 38.836735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099989, 0.247790, -0.963640,
		0.516501, 0.840709, 0.162587,
		0.850429, -0.481464, -0.212046,
		35.448719, 31.871422, 38.773121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212070, 32.695457, 38.539330>,  <34.853420, 32.208447, 38.921555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212070, 32.695457, 38.539330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364151, 32.338978, 38.440365>,  <35.455399, 32.125088, 38.380985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364151, 32.338978, 38.440365>,  <35.212070, 32.695457, 38.539330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364151, 32.338978, 38.440365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064551, 0.241275, -0.968307,
		0.922650, 0.384119, 0.034204,
		0.380198, -0.891201, -0.247408,
		35.478210, 32.071617, 38.366142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642769, 32.849907, 37.955318>,  <35.212070, 32.695457, 38.539330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642769, 32.849907, 37.955318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586952, 32.454559, 37.931126>,  <35.553463, 32.217350, 37.916611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586952, 32.454559, 37.931126>,  <35.642769, 32.849907, 37.955318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586952, 32.454559, 37.931126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012645, 0.059297, -0.998160,
		0.990136, -0.140048, 0.004223,
		-0.139540, -0.988368, -0.060483,
		35.545090, 32.158051, 37.912979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145382, 32.537838, 37.521507>,  <35.642769, 32.849907, 37.955318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145382, 32.537838, 37.521507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813133, 32.315186, 37.527527>,  <35.613785, 32.181595, 37.531139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813133, 32.315186, 37.527527>,  <36.145382, 32.537838, 37.521507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813133, 32.315186, 37.527527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155289, 0.205605, -0.966236,
		0.534745, -0.804914, -0.257219,
		-0.830622, -0.556633, 0.015048,
		35.563946, 32.148197, 37.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855843, 32.587666, 37.179974>,  <36.145382, 32.537838, 37.521507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855843, 32.587666, 37.179974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121548, 32.324238, 37.038525>,  <37.280968, 32.166180, 36.953655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121548, 32.324238, 37.038525>,  <36.855843, 32.587666, 37.179974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121548, 32.324238, 37.038525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339588, -0.155564, 0.927620,
		-0.665914, -0.736264, 0.120308,
		0.664258, -0.658570, -0.353619,
		37.320824, 32.126667, 36.932438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800438, 31.970470, 37.547874>,  <36.855843, 32.587666, 37.179974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800438, 31.970470, 37.547874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174023, 31.952904, 37.406010>,  <37.398174, 31.942364, 37.320892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174023, 31.952904, 37.406010>,  <36.800438, 31.970470, 37.547874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174023, 31.952904, 37.406010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301023, -0.438197, 0.846976,
		-0.192607, -0.897805, -0.396040,
		0.933963, -0.043916, -0.354660,
		37.454212, 31.939730, 37.299610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046715, 31.309036, 37.729740>,  <36.800438, 31.970470, 37.547874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046715, 31.309036, 37.729740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372150, 31.537102, 37.684158>,  <37.567413, 31.673941, 37.656811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372150, 31.537102, 37.684158>,  <37.046715, 31.309036, 37.729740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372150, 31.537102, 37.684158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425675, -0.450574, 0.784719,
		0.396073, -0.686947, -0.609287,
		0.813589, 0.570164, -0.113955,
		37.616226, 31.708151, 37.649971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505871, 30.912189, 38.085121>,  <37.046715, 31.309036, 37.729740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505871, 30.912189, 38.085121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715611, 31.245705, 38.016003>,  <37.841454, 31.445814, 37.974533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715611, 31.245705, 38.016003>,  <37.505871, 30.912189, 38.085121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715611, 31.245705, 38.016003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665482, -0.274667, 0.694040,
		0.531221, -0.478909, -0.698892,
		0.524345, 0.833789, -0.172797,
		37.872913, 31.495842, 37.964165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138947, 30.682104, 37.960548>,  <37.505871, 30.912189, 38.085121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138947, 30.682104, 37.960548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139091, 31.049316, 38.119152>,  <38.139179, 31.269644, 38.214314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139091, 31.049316, 38.119152>,  <38.138947, 30.682104, 37.960548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139091, 31.049316, 38.119152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736389, -0.268507, 0.620995,
		0.676558, 0.291759, -0.676126,
		0.000364, 0.918031, 0.396508,
		38.139202, 31.324726, 38.238106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843285, 30.801069, 38.143909>,  <38.138947, 30.682104, 37.960548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843285, 30.801069, 38.143909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664410, 31.100235, 38.340130>,  <38.557083, 31.279736, 38.457863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664410, 31.100235, 38.340130>,  <38.843285, 30.801069, 38.143909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664410, 31.100235, 38.340130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714283, -0.031487, 0.699148,
		0.538350, 0.663046, -0.520144,
		-0.447189, 0.747917, 0.490553,
		38.530254, 31.324610, 38.487297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430374, 31.228725, 38.458012>,  <38.843285, 30.801069, 38.143909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430374, 31.228725, 38.458012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095081, 31.322376, 38.655010>,  <38.893906, 31.378567, 38.773209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095081, 31.322376, 38.655010>,  <39.430374, 31.228725, 38.458012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095081, 31.322376, 38.655010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505725, -0.004061, 0.862685,
		0.203978, 0.972198, -0.115000,
		-0.838234, 0.234127, 0.492493,
		38.843613, 31.392614, 38.802757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548561, 31.828508, 38.831730>,  <39.430374, 31.228725, 38.458012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548561, 31.828508, 38.831730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236469, 31.658155, 39.014977>,  <39.049213, 31.555943, 39.124924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236469, 31.658155, 39.014977>,  <39.548561, 31.828508, 38.831730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236469, 31.658155, 39.014977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513060, -0.016795, 0.858189,
		-0.357795, 0.904622, 0.231607,
		-0.780226, -0.425884, 0.458116,
		39.002403, 31.530390, 39.152412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677109, 32.092289, 39.439411>,  <39.548561, 31.828508, 38.831730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677109, 32.092289, 39.439411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409325, 31.807882, 39.525471>,  <39.248653, 31.637239, 39.577106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409325, 31.807882, 39.525471>,  <39.677109, 32.092289, 39.439411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409325, 31.807882, 39.525471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412676, -0.115146, 0.903570,
		-0.617676, 0.693688, 0.370503,
		-0.669458, -0.711012, 0.215146,
		39.208488, 31.594578, 39.590015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333763, 32.255531, 40.098000>,  <39.677109, 32.092289, 39.439411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333763, 32.255531, 40.098000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307590, 31.859959, 40.044727>,  <39.291885, 31.622616, 40.012764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307590, 31.859959, 40.044727>,  <39.333763, 32.255531, 40.098000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307590, 31.859959, 40.044727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155283, -0.141930, 0.977621,
		-0.985701, 0.043290, 0.162851,
		-0.065435, -0.988930, -0.133178,
		39.287960, 31.563280, 40.004772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907845, 32.061100, 40.646275>,  <39.333763, 32.255531, 40.098000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907845, 32.061100, 40.646275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089890, 31.723129, 40.533863>,  <39.199116, 31.520348, 40.466415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089890, 31.723129, 40.533863>,  <38.907845, 32.061100, 40.646275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089890, 31.723129, 40.533863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280738, -0.163358, 0.945780,
		-0.845022, -0.509328, 0.162857,
		0.455109, -0.844926, -0.281029,
		39.226421, 31.469652, 40.449554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596836, 31.574488, 41.060177>,  <38.907845, 32.061100, 40.646275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596836, 31.574488, 41.060177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938004, 31.420822, 40.918789>,  <39.142704, 31.328623, 40.833958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938004, 31.420822, 40.918789>,  <38.596836, 31.574488, 41.060177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938004, 31.420822, 40.918789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258781, -0.276910, 0.925394,
		-0.453382, -0.880760, -0.136769,
		0.852922, -0.384164, -0.353470,
		39.193882, 31.305573, 40.812748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654671, 31.013750, 41.355244>,  <38.596836, 31.574488, 41.060177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654671, 31.013750, 41.355244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034348, 31.078665, 41.247391>,  <39.262154, 31.117613, 41.182678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034348, 31.078665, 41.247391>,  <38.654671, 31.013750, 41.355244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034348, 31.078665, 41.247391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290861, -0.125282, 0.948528,
		0.120152, -0.978759, -0.166119,
		0.949191, 0.162285, -0.269630,
		39.319103, 31.127350, 41.166500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121983, 30.484667, 41.672871>,  <38.654671, 31.013750, 41.355244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121983, 30.484667, 41.672871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349724, 30.800837, 41.582481>,  <39.486366, 30.990540, 41.528248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349724, 30.800837, 41.582481>,  <39.121983, 30.484667, 41.672871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349724, 30.800837, 41.582481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368620, 0.000241, 0.929580,
		0.734819, -0.612556, -0.291230,
		0.569350, 0.790427, -0.225977,
		39.520531, 31.037964, 41.514687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749027, 30.353701, 41.897522>,  <39.121983, 30.484667, 41.672871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749027, 30.353701, 41.897522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772709, 30.751945, 41.868523>,  <39.786919, 30.990892, 41.851124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772709, 30.751945, 41.868523>,  <39.749027, 30.353701, 41.897522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772709, 30.751945, 41.868523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452742, 0.037941, 0.890834,
		0.889674, -0.085566, -0.448508,
		0.059208, 0.995610, -0.072495,
		39.790470, 31.050629, 41.846775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350719, 30.477036, 42.126991>,  <39.749027, 30.353701, 41.897522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350719, 30.477036, 42.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181194, 30.838934, 42.144047>,  <40.079479, 31.056072, 42.154282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181194, 30.838934, 42.144047>,  <40.350719, 30.477036, 42.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181194, 30.838934, 42.144047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294366, 0.093066, 0.951150,
		0.856582, 0.415660, -0.305769,
		-0.423812, 0.904746, 0.042638,
		40.054050, 31.110357, 42.156837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833122, 31.019777, 42.416367>,  <40.350719, 30.477036, 42.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833122, 31.019777, 42.416367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462811, 31.164108, 42.461506>,  <40.240623, 31.250708, 42.488590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462811, 31.164108, 42.461506>,  <40.833122, 31.019777, 42.416367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462811, 31.164108, 42.461506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258599, 0.386627, 0.885238,
		0.275788, 0.848718, -0.451241,
		-0.925779, 0.360829, 0.112851,
		40.185078, 31.272356, 42.495361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922222, 31.691229, 42.743385>,  <40.833122, 31.019777, 42.416367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922222, 31.691229, 42.743385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536724, 31.596640, 42.792835>,  <40.305428, 31.539886, 42.822506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536724, 31.596640, 42.792835>,  <40.922222, 31.691229, 42.743385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536724, 31.596640, 42.792835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020640, 0.395832, 0.918091,
		-0.266038, 0.887354, -0.376599,
		-0.963742, -0.236474, 0.123622,
		40.247601, 31.525698, 42.829922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671169, 32.182995, 43.158253>,  <40.922222, 31.691229, 42.743385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671169, 32.182995, 43.158253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381161, 31.911381, 43.204308>,  <40.207157, 31.748413, 43.231941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381161, 31.911381, 43.204308>,  <40.671169, 32.182995, 43.158253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381161, 31.911381, 43.204308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147113, 0.315997, 0.937285,
		-0.672831, 0.662615, -0.328999,
		-0.725021, -0.679035, 0.115133,
		40.163654, 31.707670, 43.238846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113750, 32.593185, 43.352303>,  <40.671169, 32.182995, 43.158253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113750, 32.593185, 43.352303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059681, 32.216366, 43.475113>,  <40.027241, 31.990274, 43.548801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059681, 32.216366, 43.475113>,  <40.113750, 32.593185, 43.352303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059681, 32.216366, 43.475113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243293, 0.331945, 0.911384,
		-0.960487, 0.048498, -0.274066,
		-0.135175, -0.942051, 0.307030,
		40.019127, 31.933750, 43.567223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405319, 32.483204, 43.787560>,  <40.113750, 32.593185, 43.352303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405319, 32.483204, 43.787560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657967, 32.190479, 43.889938>,  <39.809555, 32.014843, 43.951366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657967, 32.190479, 43.889938>,  <39.405319, 32.483204, 43.787560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657967, 32.190479, 43.889938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000366, 0.329859, 0.944030,
		-0.775279, -0.596361, 0.208078,
		0.631619, -0.731811, 0.255951,
		39.847454, 31.970936, 43.966724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061604, 31.975847, 44.336727>,  <39.405319, 32.483204, 43.787560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061604, 31.975847, 44.336727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457253, 31.922895, 44.362389>,  <39.694641, 31.891125, 44.377785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457253, 31.922895, 44.362389>,  <39.061604, 31.975847, 44.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457253, 31.922895, 44.362389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062202, 0.018848, 0.997885,
		-0.133310, -0.991019, 0.010409,
		0.989120, -0.132381, 0.064156,
		39.753990, 31.883183, 44.381634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121685, 31.679411, 44.977074>,  <39.061604, 31.975847, 44.336727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121685, 31.679411, 44.977074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505173, 31.771051, 44.909698>,  <39.735264, 31.826036, 44.869274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505173, 31.771051, 44.909698>,  <39.121685, 31.679411, 44.977074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505173, 31.771051, 44.909698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161421, 0.049184, 0.985659,
		0.234102, -0.972159, 0.010171,
		0.958718, 0.229103, -0.168441,
		39.792789, 31.839783, 44.859165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539974, 31.184074, 45.358845>,  <39.121685, 31.679411, 44.977074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539974, 31.184074, 45.358845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753246, 31.516985, 45.298130>,  <39.881210, 31.716732, 45.261703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753246, 31.516985, 45.298130>,  <39.539974, 31.184074, 45.358845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753246, 31.516985, 45.298130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215450, 0.039919, 0.975699,
		0.818109, -0.552923, -0.158030,
		0.533178, 0.832275, -0.151785,
		39.913200, 31.766668, 45.252594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193890, 31.093843, 45.683342>,  <39.539974, 31.184074, 45.358845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193890, 31.093843, 45.683342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146126, 31.490145, 45.657574>,  <40.117466, 31.727926, 45.642113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146126, 31.490145, 45.657574>,  <40.193890, 31.093843, 45.683342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146126, 31.490145, 45.657574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243625, 0.092140, 0.965483,
		0.962491, 0.099592, -0.252374,
		-0.119408, 0.990753, -0.064421,
		40.110302, 31.787371, 45.638248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802715, 31.478554, 46.096912>,  <40.193890, 31.093843, 45.683342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802715, 31.478554, 46.096912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555103, 31.790491, 46.059723>,  <40.406536, 31.977654, 46.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555103, 31.790491, 46.059723>,  <40.802715, 31.478554, 46.096912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555103, 31.790491, 46.059723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350190, 0.380045, 0.856115,
		0.702973, 0.497400, -0.508353,
		-0.619029, 0.779845, -0.092977,
		40.369396, 32.024445, 46.031830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224293, 32.102329, 46.293571>,  <40.802715, 31.478554, 46.096912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224293, 32.102329, 46.293571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831120, 32.172421, 46.315960>,  <40.595215, 32.214474, 46.329395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831120, 32.172421, 46.315960>,  <41.224293, 32.102329, 46.293571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831120, 32.172421, 46.315960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142625, 0.533798, 0.833497,
		0.116172, 0.827258, -0.549681,
		-0.982935, 0.175228, 0.055975,
		40.536240, 32.224987, 46.332752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150280, 32.843075, 46.491104>,  <41.224293, 32.102329, 46.293571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150280, 32.843075, 46.491104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793179, 32.687862, 46.582691>,  <40.578918, 32.594734, 46.637642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793179, 32.687862, 46.582691>,  <41.150280, 32.843075, 46.491104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793179, 32.687862, 46.582691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102854, 0.670302, 0.734926,
		-0.438647, 0.632558, -0.638325,
		-0.892754, -0.388027, 0.228965,
		40.525352, 32.571453, 46.651382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635319, 33.399109, 46.594570>,  <41.150280, 32.843075, 46.491104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635319, 33.399109, 46.594570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495754, 33.083500, 46.796841>,  <40.412018, 32.894135, 46.918201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495754, 33.083500, 46.796841>,  <40.635319, 33.399109, 46.594570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495754, 33.083500, 46.796841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154086, 0.580537, 0.799521,
		-0.924402, 0.201044, -0.324132,
		-0.348909, -0.789024, 0.505672,
		40.391083, 32.846794, 46.948544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095364, 33.719082, 46.990929>,  <40.635319, 33.399109, 46.594570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095364, 33.719082, 46.990929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176929, 33.370308, 47.168983>,  <40.225868, 33.161041, 47.275814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176929, 33.370308, 47.168983>,  <40.095364, 33.719082, 46.990929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176929, 33.370308, 47.168983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012457, 0.452338, 0.891760,
		-0.978909, -0.187388, 0.081377,
		0.203915, -0.871938, 0.445132,
		40.238106, 33.108727, 47.302525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736794, 33.701313, 47.529453>,  <40.095364, 33.719082, 46.990929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736794, 33.701313, 47.529453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007648, 33.417946, 47.609077>,  <40.170162, 33.247925, 47.656853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007648, 33.417946, 47.609077>,  <39.736794, 33.701313, 47.529453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007648, 33.417946, 47.609077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096370, 0.182812, 0.978413,
		-0.729519, -0.681703, 0.055518,
		0.677137, -0.708421, 0.199061,
		40.210789, 33.205421, 47.668797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517666, 33.453350, 48.302582>,  <39.736794, 33.701313, 47.529453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517666, 33.453350, 48.302582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900524, 33.346783, 48.257156>,  <40.130238, 33.282841, 48.229900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900524, 33.346783, 48.257156>,  <39.517666, 33.453350, 48.302582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900524, 33.346783, 48.257156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182799, 0.251583, 0.950416,
		-0.224641, -0.930444, 0.289502,
		0.957142, -0.266423, -0.113568,
		40.187668, 33.266857, 48.223087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659084, 32.912170, 48.825924>,  <39.517666, 33.453350, 48.302582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659084, 32.912170, 48.825924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001381, 33.085323, 48.712566>,  <40.206760, 33.189217, 48.644554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001381, 33.085323, 48.712566>,  <39.659084, 32.912170, 48.825924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001381, 33.085323, 48.712566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248543, 0.136461, 0.958960,
		0.453790, -0.891061, 0.009186,
		0.855746, 0.432884, -0.283392,
		40.258106, 33.215187, 48.627548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112858, 32.756161, 49.392635>,  <39.659084, 32.912170, 48.825924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112858, 32.756161, 49.392635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347748, 33.017338, 49.201290>,  <40.488682, 33.174046, 49.086483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347748, 33.017338, 49.201290>,  <40.112858, 32.756161, 49.392635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347748, 33.017338, 49.201290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536103, 0.129032, 0.834233,
		0.606432, -0.746334, -0.274275,
		0.587226, 0.652945, -0.478361,
		40.523914, 33.213223, 49.057781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879787, 32.670330, 49.543163>,  <40.112858, 32.756161, 49.392635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879787, 32.670330, 49.543163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876556, 33.054234, 49.430874>,  <40.874619, 33.284576, 49.363503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876556, 33.054234, 49.430874>,  <40.879787, 32.670330, 49.543163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876556, 33.054234, 49.430874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662074, 0.215514, 0.717783,
		0.749395, -0.180062, -0.637169,
		-0.008073, 0.959756, -0.280720,
		40.874134, 33.342159, 49.346657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530609, 32.885338, 49.666111>,  <40.879787, 32.670330, 49.543163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530609, 32.885338, 49.666111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336578, 33.234169, 49.640228>,  <41.220161, 33.443466, 49.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336578, 33.234169, 49.640228>,  <41.530609, 32.885338, 49.666111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336578, 33.234169, 49.640228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504824, 0.339682, 0.793580,
		0.714041, 0.352280, -0.605016,
		-0.485075, 0.872075, -0.064708,
		41.191055, 33.495792, 49.620815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003288, 33.402348, 49.576523>,  <41.530609, 32.885338, 49.666111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003288, 33.402348, 49.576523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683643, 33.566387, 49.752361>,  <41.491856, 33.664810, 49.857864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683643, 33.566387, 49.752361>,  <42.003288, 33.402348, 49.576523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683643, 33.566387, 49.752361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573348, 0.299946, 0.762434,
		0.180818, 0.861309, -0.474818,
		-0.799110, 0.410098, 0.439593,
		41.443909, 33.689415, 49.884239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168346, 34.122467, 49.850548>,  <42.003288, 33.402348, 49.576523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168346, 34.122467, 49.850548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849293, 34.012707, 50.065392>,  <41.657860, 33.946850, 50.194298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849293, 34.012707, 50.065392>,  <42.168346, 34.122467, 49.850548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849293, 34.012707, 50.065392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449559, 0.323186, 0.832735,
		-0.402091, 0.905678, -0.134423,
		-0.797634, -0.274404, 0.537106,
		41.610004, 33.930386, 50.226524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007877, 34.783302, 50.171059>,  <42.168346, 34.122467, 49.850548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007877, 34.783302, 50.171059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878098, 34.463234, 50.372833>,  <41.800228, 34.271191, 50.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878098, 34.463234, 50.372833>,  <42.007877, 34.783302, 50.171059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878098, 34.463234, 50.372833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511339, 0.300273, 0.805213,
		-0.795779, 0.519188, 0.311737,
		-0.324451, -0.800175, 0.504432,
		41.780762, 34.223183, 50.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701519, 35.236237, 49.703194>,  <42.007877, 34.783302, 50.171059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701519, 35.236237, 49.703194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082401, 35.309334, 49.801094>,  <42.310932, 35.353191, 49.859837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082401, 35.309334, 49.801094>,  <41.701519, 35.236237, 49.703194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082401, 35.309334, 49.801094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303143, -0.467024, -0.830658,
		-0.037494, 0.865154, -0.500102,
		0.952207, 0.182747, 0.244755,
		42.368065, 35.364159, 49.874519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006855, 35.344604, 49.054985>,  <41.701519, 35.236237, 49.703194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006855, 35.344604, 49.054985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335213, 35.306953, 49.280293>,  <42.532227, 35.284363, 49.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335213, 35.306953, 49.280293>,  <42.006855, 35.344604, 49.054985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335213, 35.306953, 49.280293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507688, -0.331361, -0.795269,
		0.261499, 0.938797, -0.224227,
		0.820897, -0.094125, 0.563266,
		42.581482, 35.278717, 49.449272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653072, 35.679180, 48.688271>,  <42.006855, 35.344604, 49.054985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653072, 35.679180, 48.688271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766064, 35.425491, 48.976151>,  <42.833858, 35.273277, 49.148880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766064, 35.425491, 48.976151>,  <42.653072, 35.679180, 48.688271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766064, 35.425491, 48.976151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650360, -0.424887, -0.629684,
		0.705151, 0.645937, 0.292452,
		0.282477, -0.634221, 0.719701,
		42.850807, 35.235226, 49.192062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333626, 35.678925, 48.624844>,  <42.653072, 35.679180, 48.688271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333626, 35.678925, 48.624844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257195, 35.330097, 48.805058>,  <43.211334, 35.120800, 48.913185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257195, 35.330097, 48.805058>,  <43.333626, 35.678925, 48.624844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257195, 35.330097, 48.805058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619808, -0.463110, -0.633535,
		0.761135, 0.158190, 0.629007,
		-0.191081, -0.872069, 0.450536,
		43.199871, 35.068478, 48.940220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035213, 35.251408, 48.610992>,  <43.333626, 35.678925, 48.624844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035213, 35.251408, 48.610992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737846, 34.991886, 48.675964>,  <43.559425, 34.836174, 48.714947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737846, 34.991886, 48.675964>,  <44.035213, 35.251408, 48.610992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737846, 34.991886, 48.675964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192265, -0.439918, -0.877215,
		0.640596, -0.620908, 0.451785,
		-0.743418, -0.648803, 0.162430,
		43.514820, 34.797245, 48.724693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294170, 34.550541, 48.550800>,  <44.035213, 35.251408, 48.610992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294170, 34.550541, 48.550800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901817, 34.515244, 48.481419>,  <43.666405, 34.494064, 48.439789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901817, 34.515244, 48.481419>,  <44.294170, 34.550541, 48.550800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901817, 34.515244, 48.481419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188920, -0.217877, -0.957517,
		0.046704, -0.971979, 0.230383,
		-0.980881, -0.088244, -0.173450,
		43.607552, 34.488770, 48.429382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165787, 33.828320, 48.212612>,  <44.294170, 34.550541, 48.550800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165787, 33.828320, 48.212612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828613, 34.031223, 48.140896>,  <43.626308, 34.152966, 48.097866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828613, 34.031223, 48.140896>,  <44.165787, 33.828320, 48.212612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828613, 34.031223, 48.140896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103820, -0.480356, -0.870907,
		-0.527900, -0.715505, 0.457573,
		-0.842937, 0.507258, -0.179296,
		43.575733, 34.183399, 48.087109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830589, 33.383018, 48.001160>,  <44.165787, 33.828320, 48.212612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830589, 33.383018, 48.001160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620792, 33.699921, 47.876423>,  <43.494915, 33.890060, 47.801582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620792, 33.699921, 47.876423>,  <43.830589, 33.383018, 48.001160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620792, 33.699921, 47.876423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193479, -0.467586, -0.862513,
		-0.829142, -0.392044, 0.398528,
		-0.524489, 0.792253, -0.311843,
		43.463444, 33.937595, 47.782871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346474, 33.159771, 47.586132>,  <43.830589, 33.383018, 48.001160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346474, 33.159771, 47.586132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371464, 33.542542, 47.472725>,  <43.386459, 33.772205, 47.404682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371464, 33.542542, 47.472725>,  <43.346474, 33.159771, 47.586132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371464, 33.542542, 47.472725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148101, -0.272035, -0.950822,
		-0.986997, 0.101393, 0.124726,
		0.062477, 0.956931, -0.283515,
		43.390205, 33.829620, 47.387672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938686, 33.152843, 47.070297>,  <43.346474, 33.159771, 47.586132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938686, 33.152843, 47.070297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133190, 33.500191, 47.031338>,  <43.249893, 33.708599, 47.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133190, 33.500191, 47.031338>,  <42.938686, 33.152843, 47.070297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133190, 33.500191, 47.031338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263226, 0.039282, -0.963934,
		-0.833223, 0.494363, 0.247678,
		0.486263, 0.868367, -0.097398,
		43.279068, 33.760700, 47.002117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367817, 33.564434, 46.797768>,  <42.938686, 33.152843, 47.070297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367817, 33.564434, 46.797768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737598, 33.688026, 46.708393>,  <42.959465, 33.762180, 46.654770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737598, 33.688026, 46.708393>,  <42.367817, 33.564434, 46.797768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737598, 33.688026, 46.708393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180069, -0.162758, -0.970095,
		-0.336102, 0.937040, -0.094825,
		0.924451, 0.308976, -0.223435,
		43.014935, 33.780720, 46.641361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347195, 33.944164, 46.158733>,  <42.367817, 33.564434, 46.797768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347195, 33.944164, 46.158733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741253, 33.876495, 46.170513>,  <42.977688, 33.835896, 46.177582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741253, 33.876495, 46.170513>,  <42.347195, 33.944164, 46.158733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741253, 33.876495, 46.170513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021605, -0.048016, -0.998613,
		0.170352, 0.984416, -0.043648,
		0.985146, -0.169173, 0.029448,
		43.036797, 33.825745, 46.179348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514969, 34.334541, 45.702457>,  <42.347195, 33.944164, 46.158733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514969, 34.334541, 45.702457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813217, 34.073483, 45.756287>,  <42.992165, 33.916847, 45.788586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813217, 34.073483, 45.756287>,  <42.514969, 34.334541, 45.702457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813217, 34.073483, 45.756287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032421, -0.166184, -0.985562,
		0.665584, 0.739216, -0.102751,
		0.745618, -0.652643, 0.134576,
		43.036903, 33.877689, 45.796658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097183, 34.496086, 45.291882>,  <42.514969, 34.334541, 45.702457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097183, 34.496086, 45.291882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173019, 34.107182, 45.346661>,  <43.218521, 33.873837, 45.379528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173019, 34.107182, 45.346661>,  <43.097183, 34.496086, 45.291882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173019, 34.107182, 45.346661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115310, -0.116468, -0.986478,
		0.975069, 0.202816, 0.090031,
		0.189588, -0.972266, 0.136951,
		43.229897, 33.815502, 45.387745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701557, 34.294037, 44.730392>,  <43.097183, 34.496086, 45.291882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701557, 34.294037, 44.730392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484745, 33.984612, 44.861725>,  <43.354660, 33.798954, 44.940525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484745, 33.984612, 44.861725>,  <43.701557, 34.294037, 44.730392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484745, 33.984612, 44.861725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109344, -0.322460, -0.940246,
		0.833217, -0.545539, 0.090197,
		-0.542026, -0.773567, 0.328331,
		43.322136, 33.752541, 44.960224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976624, 33.823990, 44.275585>,  <43.701557, 34.294037, 44.730392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976624, 33.823990, 44.275585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648739, 33.662891, 44.438496>,  <43.452007, 33.566231, 44.536240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648739, 33.662891, 44.438496>,  <43.976624, 33.823990, 44.275585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648739, 33.662891, 44.438496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211174, -0.448458, -0.868499,
		0.532428, -0.797924, 0.282556,
		-0.819711, -0.402745, 0.407273,
		43.402824, 33.542068, 44.560677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024426, 33.074802, 44.089539>,  <43.976624, 33.823990, 44.275585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024426, 33.074802, 44.089539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649010, 33.192989, 44.160919>,  <43.423759, 33.263901, 44.203747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649010, 33.192989, 44.160919>,  <44.024426, 33.074802, 44.089539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649010, 33.192989, 44.160919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315233, -0.523088, -0.791837,
		-0.140620, -0.799422, 0.584080,
		-0.938538, 0.295470, 0.178448,
		43.367447, 33.281631, 44.214455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643963, 32.621063, 43.799889>,  <44.024426, 33.074802, 44.089539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643963, 32.621063, 43.799889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344078, 32.879902, 43.855316>,  <43.164146, 33.035206, 43.888573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344078, 32.879902, 43.855316>,  <43.643963, 32.621063, 43.799889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344078, 32.879902, 43.855316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434377, -0.323227, -0.840738,
		-0.499249, -0.690501, 0.523410,
		-0.749711, 0.647095, 0.138567,
		43.119164, 33.074032, 43.896885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050438, 32.259323, 43.626770>,  <43.643963, 32.621063, 43.799889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050438, 32.259323, 43.626770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911297, 32.633701, 43.604877>,  <42.827812, 32.858330, 43.591743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911297, 32.633701, 43.604877>,  <43.050438, 32.259323, 43.626770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911297, 32.633701, 43.604877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518279, -0.240610, -0.820667,
		-0.781270, -0.257110, 0.568780,
		-0.347856, 0.935949, -0.054727,
		42.806938, 32.914486, 43.588459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256931, 32.235966, 43.657967>,  <43.050438, 32.259323, 43.626770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256931, 32.235966, 43.657967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368053, 32.561241, 43.453400>,  <42.434727, 32.756405, 43.330658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368053, 32.561241, 43.453400>,  <42.256931, 32.235966, 43.657967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368053, 32.561241, 43.453400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496083, -0.334451, -0.801277,
		-0.822633, 0.476307, 0.310495,
		0.277808, 0.813188, -0.511418,
		42.451397, 32.805199, 43.299973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671074, 32.308914, 43.152767>,  <42.256931, 32.235966, 43.657967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671074, 32.308914, 43.152767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927605, 32.575680, 43.001022>,  <42.081524, 32.735741, 42.909973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927605, 32.575680, 43.001022>,  <41.671074, 32.308914, 43.152767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927605, 32.575680, 43.001022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459374, -0.062270, -0.886058,
		-0.614551, 0.742525, 0.266429,
		0.641329, 0.666918, -0.379365,
		42.120003, 32.775757, 42.887215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315582, 32.862823, 42.810719>,  <41.671074, 32.308914, 43.152767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315582, 32.862823, 42.810719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686932, 32.851089, 42.662518>,  <41.909740, 32.844051, 42.573597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686932, 32.851089, 42.662518>,  <41.315582, 32.862823, 42.810719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686932, 32.851089, 42.662518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364178, 0.127232, -0.922598,
		0.074201, 0.991439, 0.107436,
		0.928369, -0.029332, -0.370501,
		41.965443, 32.842289, 42.551369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243465, 33.271149, 42.284130>,  <41.315582, 32.862823, 42.810719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243465, 33.271149, 42.284130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592106, 33.091122, 42.206413>,  <41.801292, 32.983105, 42.159782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592106, 33.091122, 42.206413>,  <41.243465, 33.271149, 42.284130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592106, 33.091122, 42.206413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171157, 0.092005, -0.980939,
		0.459360, 0.888245, 0.003160,
		0.871604, -0.450063, -0.194292,
		41.853588, 32.956104, 42.148125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478107, 33.696053, 41.717094>,  <41.243465, 33.271149, 42.284130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478107, 33.696053, 41.717094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670151, 33.345295, 41.726540>,  <41.785378, 33.134842, 41.732208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670151, 33.345295, 41.726540>,  <41.478107, 33.696053, 41.717094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670151, 33.345295, 41.726540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121650, -0.093214, -0.988187,
		0.868735, 0.471562, -0.151427,
		0.480106, -0.876893, 0.023613,
		41.814182, 33.082226, 41.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757820, 33.689491, 41.188339>,  <41.478107, 33.696053, 41.717094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757820, 33.689491, 41.188339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802792, 33.302124, 41.277359>,  <41.829777, 33.069706, 41.330772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802792, 33.302124, 41.277359>,  <41.757820, 33.689491, 41.188339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802792, 33.302124, 41.277359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047589, -0.228962, -0.972271,
		0.992519, 0.098724, -0.071829,
		0.112433, -0.968416, 0.222551,
		41.836521, 33.011600, 41.344124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244328, 33.452026, 40.768723>,  <41.757820, 33.689491, 41.188339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244328, 33.452026, 40.768723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037460, 33.118885, 40.847603>,  <41.913338, 32.918999, 40.894932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037460, 33.118885, 40.847603>,  <42.244328, 33.452026, 40.768723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037460, 33.118885, 40.847603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035094, -0.209583, -0.977161,
		0.855162, -0.512281, 0.079162,
		-0.517172, -0.832853, 0.197205,
		41.882309, 32.869030, 40.906765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642979, 32.858063, 40.399982>,  <42.244328, 33.452026, 40.768723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642979, 32.858063, 40.399982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259865, 32.764763, 40.467197>,  <42.029995, 32.708782, 40.507526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259865, 32.764763, 40.467197>,  <42.642979, 32.858063, 40.399982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259865, 32.764763, 40.467197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082858, -0.335723, -0.938310,
		0.275275, -0.912625, 0.302224,
		-0.957788, -0.233252, 0.168034,
		41.972527, 32.694786, 40.517609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481560, 32.187977, 40.100239>,  <42.642979, 32.858063, 40.399982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481560, 32.187977, 40.100239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117001, 32.352406, 40.107941>,  <41.898266, 32.451065, 40.112560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117001, 32.352406, 40.107941>,  <42.481560, 32.187977, 40.100239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117001, 32.352406, 40.107941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072011, -0.113242, -0.990954,
		-0.405178, -0.904540, 0.132811,
		-0.911397, 0.411076, 0.019254,
		41.843582, 32.475727, 40.113716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067253, 31.756783, 39.752323>,  <42.481560, 32.187977, 40.100239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067253, 31.756783, 39.752323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889244, 32.114857, 39.742519>,  <41.782440, 32.329700, 39.736637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889244, 32.114857, 39.742519>,  <42.067253, 31.756783, 39.752323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889244, 32.114857, 39.742519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069366, -0.061749, -0.995678,
		-0.892830, -0.441396, 0.089575,
		-0.445020, 0.895185, -0.024513,
		41.755737, 32.383411, 39.735165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497005, 31.678268, 39.223534>,  <42.067253, 31.756783, 39.752323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497005, 31.678268, 39.223534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497452, 32.077709, 39.244678>,  <41.497719, 32.317375, 39.257366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497452, 32.077709, 39.244678>,  <41.497005, 31.678268, 39.223534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497452, 32.077709, 39.244678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146570, 0.052456, -0.987808,
		-0.989200, -0.006641, 0.146424,
		0.001120, 0.998601, 0.052863,
		41.497787, 32.377289, 39.260536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937820, 31.900351, 38.914989>,  <41.497005, 31.678268, 39.223534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937820, 31.900351, 38.914989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221771, 32.181721, 38.900761>,  <41.392143, 32.350544, 38.892223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221771, 32.181721, 38.900761>,  <40.937820, 31.900351, 38.914989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221771, 32.181721, 38.900761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150845, 0.102512, -0.983228,
		-0.687982, 0.703337, 0.178879,
		0.709877, 0.703426, -0.035569,
		41.434734, 32.392750, 38.890091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642895, 32.401520, 38.631126>,  <40.937820, 31.900351, 38.914989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642895, 32.401520, 38.631126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024853, 32.507378, 38.577259>,  <41.254028, 32.570892, 38.544937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024853, 32.507378, 38.577259>,  <40.642895, 32.401520, 38.631126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024853, 32.507378, 38.577259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166292, 0.100869, -0.980904,
		-0.246008, 0.959056, 0.140328,
		0.954897, 0.264645, -0.134669,
		41.311321, 32.586773, 38.536858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610905, 32.966747, 38.226147>,  <40.642895, 32.401520, 38.631126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610905, 32.966747, 38.226147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984375, 32.830883, 38.180752>,  <41.208458, 32.749363, 38.153515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984375, 32.830883, 38.180752>,  <40.610905, 32.966747, 38.226147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984375, 32.830883, 38.180752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089563, 0.085351, -0.992317,
		0.346739, 0.936666, 0.049269,
		0.933676, -0.339663, -0.113485,
		41.264477, 32.728985, 38.146706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834454, 33.373032, 37.728020>,  <40.610905, 32.966747, 38.226147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834454, 33.373032, 37.728020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123302, 33.096565, 37.716534>,  <41.296612, 32.930687, 37.709644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123302, 33.096565, 37.716534>,  <40.834454, 33.373032, 37.728020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123302, 33.096565, 37.716534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079762, -0.041963, -0.995930,
		0.687148, 0.721477, -0.085432,
		0.722125, -0.691166, -0.028711,
		41.339939, 32.889214, 37.707920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280380, 33.634727, 37.190216>,  <40.834454, 33.373032, 37.728020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280380, 33.634727, 37.190216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341713, 33.240959, 37.224659>,  <41.378513, 33.004700, 37.245327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341713, 33.240959, 37.224659>,  <41.280380, 33.634727, 37.190216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341713, 33.240959, 37.224659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008433, -0.085834, -0.996274,
		0.988139, 0.153483, -0.004859,
		0.153328, -0.984416, 0.086110,
		41.387711, 32.945633, 37.250492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741467, 33.506660, 36.749138>,  <41.280380, 33.634727, 37.190216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741467, 33.506660, 36.749138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555462, 33.154125, 36.782612>,  <41.443859, 32.942604, 36.802696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555462, 33.154125, 36.782612>,  <41.741467, 33.506660, 36.749138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555462, 33.154125, 36.782612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046487, -0.070090, -0.996457,
		0.884086, -0.467250, -0.008378,
		-0.465007, -0.881343, 0.083687,
		41.415958, 32.889721, 36.807716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013721, 33.109840, 36.247643>,  <41.741467, 33.506660, 36.749138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013721, 33.109840, 36.247643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660702, 32.937912, 36.323910>,  <41.448891, 32.834755, 36.369671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660702, 32.937912, 36.323910>,  <42.013721, 33.109840, 36.247643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660702, 32.937912, 36.323910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182716, -0.060137, -0.981325,
		0.433261, -0.900909, -0.025461,
		-0.882553, -0.429822, 0.190665,
		41.395935, 32.808964, 36.381111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879925, 32.716251, 35.670906>,  <42.013721, 33.109840, 36.247643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879925, 32.716251, 35.670906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518677, 32.658550, 35.832680>,  <41.301929, 32.623932, 35.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518677, 32.658550, 35.832680>,  <41.879925, 32.716251, 35.670906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518677, 32.658550, 35.832680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384938, -0.145349, -0.911425,
		0.190258, -0.978808, 0.075741,
		-0.903120, -0.144250, 0.404435,
		41.247742, 32.615276, 35.954010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635597, 32.231907, 35.253838>,  <41.879925, 32.716251, 35.670906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635597, 32.231907, 35.253838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340134, 32.445221, 35.418758>,  <41.162857, 32.573208, 35.517712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340134, 32.445221, 35.418758>,  <41.635597, 32.231907, 35.253838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340134, 32.445221, 35.418758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443676, 0.075850, -0.892972,
		-0.507478, -0.842531, 0.180576,
		-0.738660, 0.533281, 0.412303,
		41.118534, 32.605206, 35.542450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933399, 31.875252, 35.283489>,  <41.635597, 32.231907, 35.253838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933399, 31.875252, 35.283489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925930, 32.273930, 35.251862>,  <40.921448, 32.513138, 35.232887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925930, 32.273930, 35.251862>,  <40.933399, 31.875252, 35.283489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925930, 32.273930, 35.251862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556932, -0.076045, -0.827069,
		-0.830348, 0.028588, 0.556511,
		-0.018676, 0.996695, -0.079065,
		40.920326, 32.572937, 35.228142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350189, 31.979614, 35.087490>,  <40.933399, 31.875252, 35.283489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350189, 31.979614, 35.087490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499161, 32.337360, 34.988365>,  <40.588543, 32.552010, 34.928890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499161, 32.337360, 34.988365>,  <40.350189, 31.979614, 35.087490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499161, 32.337360, 34.988365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593107, 0.023996, -0.804766,
		-0.713808, 0.446694, 0.539391,
		0.372428, 0.894365, -0.247809,
		40.610889, 32.605671, 34.914024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887112, 32.685169, 35.169525>,  <40.350189, 31.979614, 35.087490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887112, 32.685169, 35.169525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157478, 32.666523, 34.875324>,  <40.319698, 32.655334, 34.698803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157478, 32.666523, 34.875324>,  <39.887112, 32.685169, 35.169525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157478, 32.666523, 34.875324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736890, -0.027577, -0.675450,
		0.011206, 0.998532, -0.052992,
		0.675920, -0.046618, -0.735499,
		40.360256, 32.652538, 34.654675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140873, 33.346775, 35.302097>,  <39.887112, 32.685169, 35.169525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140873, 33.346775, 35.302097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133709, 33.703239, 35.120766>,  <40.129410, 33.917118, 35.011967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133709, 33.703239, 35.120766>,  <40.140873, 33.346775, 35.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133709, 33.703239, 35.120766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928468, 0.183055, 0.323168,
		0.370980, -0.415108, -0.830698,
		-0.017914, 0.891166, -0.453324,
		40.128334, 33.970589, 34.984768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640049, 33.383812, 34.775772>,  <40.140873, 33.346775, 35.302097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640049, 33.383812, 34.775772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553543, 33.744751, 34.924904>,  <40.501640, 33.961315, 35.014381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553543, 33.744751, 34.924904>,  <40.640049, 33.383812, 34.775772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553543, 33.744751, 34.924904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929978, 0.074115, 0.360068,
		0.297275, 0.424588, -0.855192,
		-0.216263, 0.902348, 0.372825,
		40.488663, 34.015457, 35.036751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949986, 33.443275, 35.452885>,  <40.640049, 33.383812, 34.775772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949986, 33.443275, 35.452885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204094, 33.663105, 35.669918>,  <41.356560, 33.795002, 35.800140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204094, 33.663105, 35.669918>,  <40.949986, 33.443275, 35.452885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204094, 33.663105, 35.669918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771530, -0.482805, -0.414296,
		0.034276, 0.681810, -0.730726,
		0.635269, 0.549576, 0.542585,
		41.394676, 33.827976, 35.832695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475368, 33.737335, 34.967815>,  <40.949986, 33.443275, 35.452885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475368, 33.737335, 34.967815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591785, 33.719757, 35.350094>,  <41.661636, 33.709209, 35.579460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591785, 33.719757, 35.350094>,  <41.475368, 33.737335, 34.967815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591785, 33.719757, 35.350094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798187, -0.539570, -0.267884,
		0.527439, 0.840793, -0.121961,
		0.291042, -0.043945, 0.955700,
		41.679096, 33.706573, 35.636803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253616, 34.156200, 35.189110>,  <41.475368, 33.737335, 34.967815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253616, 34.156200, 35.189110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119316, 33.821423, 35.361988>,  <42.038734, 33.620556, 35.465714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119316, 33.821423, 35.361988>,  <42.253616, 34.156200, 35.189110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119316, 33.821423, 35.361988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842242, -0.472197, -0.260110,
		0.421778, 0.276677, 0.863454,
		-0.335755, -0.836947, 0.432191,
		42.018589, 33.570339, 35.491646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873344, 34.535675, 35.740749>,  <42.253616, 34.156200, 35.189110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873344, 34.535675, 35.740749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205334, 34.695557, 35.585117>,  <42.404526, 34.791485, 35.491737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205334, 34.695557, 35.585117>,  <41.873344, 34.535675, 35.740749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205334, 34.695557, 35.585117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302374, 0.263759, 0.915970,
		0.468743, -0.877875, 0.098051,
		0.829970, 0.399707, -0.389082,
		42.454323, 34.815468, 35.468391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378895, 34.416660, 36.230358>,  <41.873344, 34.535675, 35.740749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378895, 34.416660, 36.230358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544197, 34.702042, 36.004009>,  <42.643379, 34.873268, 35.868202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544197, 34.702042, 36.004009>,  <42.378895, 34.416660, 36.230358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544197, 34.702042, 36.004009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301479, 0.479176, 0.824318,
		0.859262, -0.511251, -0.017069,
		0.413254, 0.713451, -0.565870,
		42.668175, 34.916077, 35.834248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075890, 34.443092, 36.362392>,  <42.378895, 34.416660, 36.230358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075890, 34.443092, 36.362392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940353, 34.799648, 36.241989>,  <42.859032, 35.013584, 36.169746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940353, 34.799648, 36.241989>,  <43.075890, 34.443092, 36.362392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940353, 34.799648, 36.241989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534078, 0.445626, 0.718456,
		0.774563, 0.082682, -0.627070,
		-0.338842, 0.891393, -0.301006,
		42.838699, 35.067066, 36.151688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556263, 34.720158, 36.644722>,  <43.075890, 34.443092, 36.362392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556263, 34.720158, 36.644722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273697, 34.992599, 36.567703>,  <43.104156, 35.156063, 36.521492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273697, 34.992599, 36.567703>,  <43.556263, 34.720158, 36.644722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273697, 34.992599, 36.567703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235587, 0.482789, 0.843453,
		0.667437, 0.550469, -0.501510,
		-0.706418, 0.681101, -0.192548,
		43.061771, 35.196930, 36.509937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777542, 35.464588, 36.831459>,  <43.556263, 34.720158, 36.644722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777542, 35.464588, 36.831459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377838, 35.479847, 36.833397>,  <43.138016, 35.489002, 36.834560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377838, 35.479847, 36.833397>,  <43.777542, 35.464588, 36.831459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377838, 35.479847, 36.833397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023056, 0.493612, 0.869377,
		0.030771, 0.868845, -0.494127,
		-0.999261, 0.038144, 0.004843,
		43.078060, 35.491291, 36.834850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616112, 36.188358, 36.881371>,  <43.777542, 35.464588, 36.831459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616112, 36.188358, 36.881371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285252, 35.996685, 36.998810>,  <43.086735, 35.881680, 37.069275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285252, 35.996685, 36.998810>,  <43.616112, 36.188358, 36.881371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285252, 35.996685, 36.998810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059509, 0.594189, 0.802121,
		-0.558820, 0.646003, -0.520000,
		-0.827151, -0.479186, 0.293602,
		43.037106, 35.852928, 37.086891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188473, 36.721924, 37.141983>,  <43.616112, 36.188358, 36.881371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188473, 36.721924, 37.141983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020027, 36.400040, 37.309368>,  <42.918961, 36.206909, 37.409798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020027, 36.400040, 37.309368>,  <43.188473, 36.721924, 37.141983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020027, 36.400040, 37.309368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287309, 0.555954, 0.779979,
		-0.860299, 0.208235, -0.465321,
		-0.421116, -0.804707, 0.418459,
		42.893692, 36.158627, 37.434906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592365, 36.977985, 37.483967>,  <43.188473, 36.721924, 37.141983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592365, 36.977985, 37.483967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646507, 36.617531, 37.648712>,  <42.678993, 36.401257, 37.747559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646507, 36.617531, 37.648712>,  <42.592365, 36.977985, 37.483967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646507, 36.617531, 37.648712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135787, 0.394893, 0.908637,
		-0.981448, -0.178914, -0.068912,
		0.135355, -0.901138, 0.411861,
		42.687115, 36.347191, 37.772270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028721, 36.883602, 37.949322>,  <42.592365, 36.977985, 37.483967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028721, 36.883602, 37.949322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326107, 36.641125, 38.062302>,  <42.504539, 36.495636, 38.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326107, 36.641125, 38.062302>,  <42.028721, 36.883602, 37.949322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326107, 36.641125, 38.062302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079380, 0.339367, 0.937299,
		-0.664042, -0.719274, 0.204189,
		0.743470, -0.606197, 0.282450,
		42.549149, 36.459267, 38.147038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911297, 36.711876, 38.648937>,  <42.028721, 36.883602, 37.949322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911297, 36.711876, 38.648937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296570, 36.608562, 38.619076>,  <42.527733, 36.546574, 38.601158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296570, 36.608562, 38.619076>,  <41.911297, 36.711876, 38.648937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296570, 36.608562, 38.619076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141177, 0.249591, 0.958005,
		-0.228804, -0.933271, 0.276865,
		0.963181, -0.258282, -0.074649,
		42.585526, 36.531078, 38.596680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053238, 36.239792, 39.156342>,  <41.911297, 36.711876, 38.648937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053238, 36.239792, 39.156342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414207, 36.382465, 39.059666>,  <42.630787, 36.468071, 39.001659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414207, 36.382465, 39.059666>,  <42.053238, 36.239792, 39.156342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414207, 36.382465, 39.059666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153755, 0.257417, 0.953989,
		0.402487, -0.898061, 0.177457,
		0.902421, 0.356683, -0.241689,
		42.684933, 36.489471, 38.987160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634079, 35.846260, 39.625694>,  <42.053238, 36.239792, 39.156342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634079, 35.846260, 39.625694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810806, 36.179054, 39.491470>,  <42.916843, 36.378731, 39.410934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810806, 36.179054, 39.491470>,  <42.634079, 35.846260, 39.625694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810806, 36.179054, 39.491470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330847, 0.196569, 0.922985,
		0.833868, -0.518812, -0.188410,
		0.441820, 0.831982, -0.335560,
		42.943352, 36.428650, 39.390800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365719, 35.815945, 40.023998>,  <42.634079, 35.846260, 39.625694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365719, 35.815945, 40.023998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286461, 36.186424, 39.895687>,  <43.238907, 36.408710, 39.818699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286461, 36.186424, 39.895687>,  <43.365719, 35.815945, 40.023998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286461, 36.186424, 39.895687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465607, 0.376930, 0.800708,
		0.862524, 0.009300, -0.505931,
		-0.198147, 0.926195, -0.320781,
		43.227016, 36.464283, 39.799454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996849, 36.159885, 40.198662>,  <43.365719, 35.815945, 40.023998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996849, 36.159885, 40.198662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714672, 36.436462, 40.136364>,  <43.545364, 36.602409, 40.098984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714672, 36.436462, 40.136364>,  <43.996849, 36.159885, 40.198662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714672, 36.436462, 40.136364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403507, 0.572455, 0.713777,
		0.582694, 0.440684, -0.682836,
		-0.705443, 0.691443, -0.155747,
		43.503040, 36.643894, 40.089642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399990, 36.830402, 40.194328>,  <43.996849, 36.159885, 40.198662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399990, 36.830402, 40.194328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017529, 36.886738, 40.297031>,  <43.788052, 36.920540, 40.358654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017529, 36.886738, 40.297031>,  <44.399990, 36.830402, 40.194328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017529, 36.886738, 40.297031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292688, 0.488688, 0.821899,
		-0.009724, 0.861017, -0.508483,
		-0.956159, 0.140835, 0.256762,
		43.730682, 36.928989, 40.374062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301201, 37.537693, 40.448601>,  <44.399990, 36.830402, 40.194328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301201, 37.537693, 40.448601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967587, 37.383343, 40.606331>,  <43.767418, 37.290733, 40.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967587, 37.383343, 40.606331>,  <44.301201, 37.537693, 40.448601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967587, 37.383343, 40.606331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121062, 0.569301, 0.813167,
		-0.538271, 0.725944, -0.428100,
		-0.834031, -0.385877, 0.394323,
		43.717377, 37.267578, 40.724628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928326, 38.045166, 40.666496>,  <44.301201, 37.537693, 40.448601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928326, 38.045166, 40.666496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812550, 37.743935, 40.902832>,  <43.743084, 37.563194, 41.044632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812550, 37.743935, 40.902832>,  <43.928326, 38.045166, 40.666496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812550, 37.743935, 40.902832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220781, 0.548091, 0.806754,
		-0.931385, 0.363957, 0.007624,
		-0.289445, -0.753082, 0.590838,
		43.725716, 37.518009, 41.080082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746712, 38.350475, 41.245979>,  <43.928326, 38.045166, 40.666496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746712, 38.350475, 41.245979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742325, 37.981689, 41.400829>,  <43.739693, 37.760418, 41.493740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742325, 37.981689, 41.400829>,  <43.746712, 38.350475, 41.245979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742325, 37.981689, 41.400829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221368, 0.375301, 0.900081,
		-0.975129, 0.095570, 0.199976,
		-0.010970, -0.921963, 0.387123,
		43.739033, 37.705101, 41.516968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231800, 38.401394, 41.672821>,  <43.746712, 38.350475, 41.245979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231800, 38.401394, 41.672821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466854, 38.106064, 41.805218>,  <43.607887, 37.928864, 41.884655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466854, 38.106064, 41.805218>,  <43.231800, 38.401394, 41.672821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466854, 38.106064, 41.805218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191048, 0.524120, 0.829939,
		-0.786249, -0.424463, 0.449046,
		0.587633, -0.738328, 0.330996,
		43.643143, 37.884567, 41.904518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028263, 38.193844, 42.288452>,  <43.231800, 38.401394, 41.672821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028263, 38.193844, 42.288452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403397, 38.055019, 42.286777>,  <43.628475, 37.971725, 42.285774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403397, 38.055019, 42.286777>,  <43.028263, 38.193844, 42.288452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403397, 38.055019, 42.286777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159205, 0.419428, 0.893719,
		-0.308423, -0.838825, 0.448607,
		0.937832, -0.347064, -0.004184,
		43.684746, 37.950901, 42.285522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947636, 37.879749, 43.007980>,  <43.028263, 38.193844, 42.288452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947636, 37.879749, 43.007980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335186, 37.866016, 42.909916>,  <43.567715, 37.857777, 42.851078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335186, 37.866016, 42.909916>,  <42.947636, 37.879749, 43.007980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335186, 37.866016, 42.909916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217913, 0.588196, 0.778806,
		0.117464, -0.807989, 0.577370,
		0.968874, -0.034335, -0.245164,
		43.625847, 37.855717, 42.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444553, 37.638786, 43.600079>,  <42.947636, 37.879749, 43.007980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444553, 37.638786, 43.600079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605106, 37.905849, 43.349277>,  <43.701439, 38.066086, 43.198799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605106, 37.905849, 43.349277>,  <43.444553, 37.638786, 43.600079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605106, 37.905849, 43.349277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238221, 0.584905, 0.775330,
		0.884390, -0.460566, 0.075719,
		0.401379, 0.667656, -0.627001,
		43.725521, 38.106148, 43.161179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950310, 37.905354, 43.896690>,  <43.444553, 37.638786, 43.600079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950310, 37.905354, 43.896690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844219, 38.165104, 43.611603>,  <43.780567, 38.320953, 43.440552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844219, 38.165104, 43.611603>,  <43.950310, 37.905354, 43.896690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844219, 38.165104, 43.611603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316315, 0.756883, 0.571902,
		0.910824, -0.073762, -0.406151,
		-0.265224, 0.649374, -0.712720,
		43.764652, 38.359917, 43.397785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494228, 38.187935, 43.553818>,  <43.950310, 37.905354, 43.896690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494228, 38.187935, 43.553818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202621, 38.461582, 43.562908>,  <44.027657, 38.625771, 43.568363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202621, 38.461582, 43.562908>,  <44.494228, 38.187935, 43.553818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202621, 38.461582, 43.562908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586207, 0.606859, 0.536735,
		0.353399, 0.404611, -0.843445,
		-0.729021, 0.684114, 0.022722,
		43.983913, 38.666817, 43.569725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039886, 37.664379, 43.805943>,  <44.494228, 38.187935, 43.553818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039886, 37.664379, 43.805943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134300, 38.039715, 43.704899>,  <45.190948, 38.264915, 43.644272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134300, 38.039715, 43.704899>,  <45.039886, 37.664379, 43.805943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134300, 38.039715, 43.704899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301431, 0.176434, 0.937022,
		0.923810, -0.297318, -0.241198,
		0.236038, 0.938335, -0.252613,
		45.205112, 38.321217, 43.629116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732502, 37.885719, 44.055840>,  <45.039886, 37.664379, 43.805943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732502, 37.885719, 44.055840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522812, 38.225269, 44.028694>,  <45.396999, 38.428997, 44.012405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522812, 38.225269, 44.028694>,  <45.732502, 37.885719, 44.055840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522812, 38.225269, 44.028694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146407, 0.168350, 0.974794,
		0.838899, 0.501076, -0.212535,
		-0.524226, 0.848870, -0.067868,
		45.365543, 38.479931, 44.008335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147007, 38.527225, 44.260460>,  <45.732502, 37.885719, 44.055840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147007, 38.527225, 44.260460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756626, 38.564186, 44.339428>,  <45.522396, 38.586361, 44.386806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756626, 38.564186, 44.339428>,  <46.147007, 38.527225, 44.260460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756626, 38.564186, 44.339428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215455, 0.271714, 0.937950,
		0.033023, 0.957932, -0.285088,
		-0.975955, 0.092398, 0.197418,
		45.463840, 38.591904, 44.398655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722679, 39.007763, 43.991108>,  <46.147007, 38.527225, 44.260460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722679, 39.007763, 43.991108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761860, 38.944973, 43.598015>,  <46.785366, 38.907299, 43.362160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761860, 38.944973, 43.598015>,  <46.722679, 39.007763, 43.991108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.761860, 38.944973, 43.598015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965957, 0.222593, -0.131832,
		0.239444, 0.962191, -0.129829,
		0.097949, -0.156975, -0.982733,
		46.791245, 38.897881, 43.303196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.519966, 39.525673, 43.593239>,  <46.722679, 39.007763, 43.991108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.519966, 39.525673, 43.593239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450706, 39.206181, 43.362747>,  <46.409153, 39.014484, 43.224453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450706, 39.206181, 43.362747>,  <46.519966, 39.525673, 43.593239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450706, 39.206181, 43.362747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868474, 0.399760, -0.293162,
		0.464514, 0.449682, -0.762898,
		-0.173146, -0.798735, -0.576231,
		46.398762, 38.966560, 43.189877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216503, 39.822575, 42.977989>,  <46.519966, 39.525673, 43.593239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216503, 39.822575, 42.977989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106869, 39.445316, 43.053204>,  <46.041088, 39.218964, 43.098331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106869, 39.445316, 43.053204>,  <46.216503, 39.822575, 42.977989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106869, 39.445316, 43.053204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941651, 0.223476, -0.251700,
		0.195368, -0.246051, -0.949363,
		-0.274090, -0.943142, 0.188034,
		46.024643, 39.162373, 43.109615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170685, 39.399471, 42.359913>,  <46.216503, 39.822575, 42.977989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170685, 39.399471, 42.359913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940376, 39.315361, 42.675957>,  <45.802193, 39.264896, 42.865585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940376, 39.315361, 42.675957>,  <46.170685, 39.399471, 42.359913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940376, 39.315361, 42.675957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803212, 0.326049, -0.498541,
		-0.152784, -0.921671, -0.356623,
		-0.575768, -0.210274, 0.790112,
		45.767647, 39.252277, 42.912991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653851, 40.020744, 42.308289>,  <46.170685, 39.399471, 42.359913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653851, 40.020744, 42.308289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367958, 40.145374, 42.057823>,  <45.196423, 40.220150, 41.907543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367958, 40.145374, 42.057823>,  <45.653851, 40.020744, 42.308289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367958, 40.145374, 42.057823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197344, -0.769070, -0.607936,
		-0.670981, -0.558080, 0.488191,
		-0.714730, 0.311572, -0.626166,
		45.153538, 40.238846, 41.869972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394775, 39.371506, 42.107609>,  <45.653851, 40.020744, 42.308289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394775, 39.371506, 42.107609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261894, 39.637482, 41.840027>,  <45.182167, 39.797066, 41.679478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261894, 39.637482, 41.840027>,  <45.394775, 39.371506, 42.107609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261894, 39.637482, 41.840027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045303, -0.697168, -0.715475,
		-0.942121, -0.267986, 0.201475,
		-0.332199, 0.664936, -0.668957,
		45.162235, 39.836964, 41.639339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724087, 39.074436, 41.691006>,  <45.394775, 39.371506, 42.107609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724087, 39.074436, 41.691006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848907, 39.369823, 41.451912>,  <44.923801, 39.547058, 41.308456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848907, 39.369823, 41.451912>,  <44.724087, 39.074436, 41.691006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848907, 39.369823, 41.451912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127882, -0.590775, -0.796637,
		-0.941419, 0.325032, -0.089916,
		0.312053, 0.738471, -0.597732,
		44.942524, 39.591366, 41.272591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334957, 38.990410, 41.124039>,  <44.724087, 39.074436, 41.691006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334957, 38.990410, 41.124039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647022, 39.187851, 40.970314>,  <44.834263, 39.306316, 40.878078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647022, 39.187851, 40.970314>,  <44.334957, 38.990410, 41.124039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647022, 39.187851, 40.970314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067473, -0.544357, -0.836135,
		-0.621927, 0.678253, -0.391383,
		0.780163, 0.493607, -0.384314,
		44.881073, 39.335934, 40.855019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135315, 39.165604, 40.384712>,  <44.334957, 38.990410, 41.124039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135315, 39.165604, 40.384712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534641, 39.188667, 40.382290>,  <44.774239, 39.202503, 40.380836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534641, 39.188667, 40.382290>,  <44.135315, 39.165604, 40.384712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534641, 39.188667, 40.382290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029125, -0.589168, -0.807486,
		-0.050128, 0.805951, -0.589856,
		0.998318, 0.057657, -0.006060,
		44.834137, 39.205963, 40.380470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286190, 39.058556, 39.661278>,  <44.135315, 39.165604, 40.384712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286190, 39.058556, 39.661278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658802, 39.016384, 39.800499>,  <44.882370, 38.991081, 39.884033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658802, 39.016384, 39.800499>,  <44.286190, 39.058556, 39.661278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658802, 39.016384, 39.800499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201771, -0.646421, -0.735818,
		0.302564, 0.755662, -0.580887,
		0.931528, -0.105426, 0.348054,
		44.938259, 38.984756, 39.904915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663055, 39.178394, 39.057159>,  <44.286190, 39.058556, 39.661278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663055, 39.178394, 39.057159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884258, 38.962345, 39.310913>,  <45.016979, 38.832714, 39.463165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884258, 38.962345, 39.310913>,  <44.663055, 39.178394, 39.057159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884258, 38.962345, 39.310913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193846, -0.657101, -0.728452,
		0.810310, 0.525815, -0.258683,
		0.553011, -0.540127, 0.634382,
		45.050163, 38.800308, 39.501228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275284, 39.116814, 38.780327>,  <44.663055, 39.178394, 39.057159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275284, 39.116814, 38.780327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263439, 38.803810, 39.029102>,  <45.256332, 38.616009, 39.178368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263439, 38.803810, 39.029102>,  <45.275284, 39.116814, 38.780327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263439, 38.803810, 39.029102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258493, -0.607040, -0.751455,
		0.965559, 0.138516, 0.220246,
		-0.029610, -0.782506, 0.621938,
		45.254555, 38.569057, 39.215683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790096, 38.730736, 38.579918>,  <45.275284, 39.116814, 38.780327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790096, 38.730736, 38.579918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579929, 38.459118, 38.784988>,  <45.453827, 38.296146, 38.908031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579929, 38.459118, 38.784988>,  <45.790096, 38.730736, 38.579918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579929, 38.459118, 38.784988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142162, -0.664143, -0.733964,
		0.838883, -0.312756, 0.445487,
		-0.525419, -0.679042, 0.512677,
		45.422302, 38.255405, 38.938793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167332, 38.035374, 38.628098>,  <45.790096, 38.730736, 38.579918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167332, 38.035374, 38.628098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795235, 37.913303, 38.709595>,  <45.571976, 37.840061, 38.758492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795235, 37.913303, 38.709595>,  <46.167332, 38.035374, 38.628098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795235, 37.913303, 38.709595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084406, -0.718324, -0.690570,
		0.357096, -0.625203, 0.693977,
		-0.930246, -0.305176, 0.203739,
		45.516159, 37.821751, 38.770718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263123, 37.274532, 38.624043>,  <46.167332, 38.035374, 38.628098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263123, 37.274532, 38.624043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874531, 37.350788, 38.567638>,  <45.641376, 37.396542, 38.533798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874531, 37.350788, 38.567638>,  <46.263123, 37.274532, 38.624043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874531, 37.350788, 38.567638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084729, -0.834492, -0.544467,
		-0.221463, -0.516992, 0.826845,
		-0.971481, 0.190637, -0.141005,
		45.583088, 37.407978, 38.525337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782375, 36.683247, 38.865963>,  <46.263123, 37.274532, 38.624043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782375, 36.683247, 38.865963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598999, 36.893242, 38.579128>,  <45.488972, 37.019241, 38.407028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598999, 36.893242, 38.579128>,  <45.782375, 36.683247, 38.865963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598999, 36.893242, 38.579128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079273, -0.827813, -0.555375,
		-0.885181, -0.197762, 0.421123,
		-0.458443, 0.524991, -0.717087,
		45.461464, 37.050739, 38.364002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475048, 36.254574, 38.459297>,  <45.782375, 36.683247, 38.865963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475048, 36.254574, 38.459297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433144, 36.553478, 38.196808>,  <45.408001, 36.732819, 38.039314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433144, 36.553478, 38.196808>,  <45.475048, 36.254574, 38.459297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433144, 36.553478, 38.196808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286269, -0.654586, -0.699691,
		-0.952405, 0.114555, 0.282492,
		-0.104762, 0.747258, -0.656224,
		45.401714, 36.777657, 37.999939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883282, 36.061916, 38.086571>,  <45.475048, 36.254574, 38.459297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883282, 36.061916, 38.086571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093231, 36.326191, 37.871906>,  <45.219200, 36.484756, 37.743107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093231, 36.326191, 37.871906>,  <44.883282, 36.061916, 38.086571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093231, 36.326191, 37.871906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048448, -0.606281, -0.793773,
		-0.849800, 0.442631, -0.286213,
		0.524874, 0.660682, -0.536662,
		45.250694, 36.524395, 37.710907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608616, 36.028725, 37.382973>,  <44.883282, 36.061916, 38.086571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608616, 36.028725, 37.382973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946533, 36.228851, 37.307060>,  <45.149284, 36.348927, 37.261513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946533, 36.228851, 37.307060>,  <44.608616, 36.028725, 37.382973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946533, 36.228851, 37.307060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044530, -0.419162, -0.906819,
		-0.533243, 0.757620, -0.376383,
		0.844790, 0.500315, -0.189778,
		45.199970, 36.378944, 37.250126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462063, 36.326458, 36.858906>,  <44.608616, 36.028725, 37.382973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462063, 36.326458, 36.858906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861771, 36.317230, 36.846775>,  <45.101597, 36.311695, 36.839497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861771, 36.317230, 36.846775>,  <44.462063, 36.326458, 36.858906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861771, 36.317230, 36.846775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037006, -0.398218, -0.916544,
		0.009070, 0.917000, -0.398783,
		0.999274, -0.023071, -0.030322,
		45.161552, 36.310310, 36.837677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549068, 36.511951, 36.232834>,  <44.462063, 36.326458, 36.858906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549068, 36.511951, 36.232834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893040, 36.340260, 36.343319>,  <45.099422, 36.237244, 36.409611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893040, 36.340260, 36.343319>,  <44.549068, 36.511951, 36.232834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893040, 36.340260, 36.343319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011355, -0.557099, -0.830368,
		0.510296, 0.710917, -0.483937,
		0.859924, -0.429229, 0.276213,
		45.151016, 36.211491, 36.426182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009995, 36.683254, 35.706291>,  <44.549068, 36.511951, 36.232834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009995, 36.683254, 35.706291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202190, 36.378166, 35.879448>,  <45.317509, 36.195114, 35.983341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202190, 36.378166, 35.879448>,  <45.009995, 36.683254, 35.706291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202190, 36.378166, 35.879448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035144, -0.509953, -0.859484,
		0.876296, 0.397760, -0.271832,
		0.480490, -0.762716, 0.432891,
		45.346336, 36.149353, 36.009315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518650, 36.502647, 35.173851>,  <45.009995, 36.683254, 35.706291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518650, 36.502647, 35.173851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464245, 36.186096, 35.412251>,  <45.431602, 35.996166, 35.555290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464245, 36.186096, 35.412251>,  <45.518650, 36.502647, 35.173851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464245, 36.186096, 35.412251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065682, -0.593065, -0.802471,
		0.988528, -0.148289, 0.028682,
		-0.136008, -0.791381, 0.596001,
		45.423443, 35.948681, 35.591049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970600, 35.981205, 34.936825>,  <45.518650, 36.502647, 35.173851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970600, 35.981205, 34.936825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684563, 35.787075, 35.138062>,  <45.512939, 35.670597, 35.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684563, 35.787075, 35.138062>,  <45.970600, 35.981205, 34.936825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684563, 35.787075, 35.138062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050465, -0.681982, -0.729626,
		0.697204, -0.547140, 0.463190,
		-0.715095, -0.485323, 0.503091,
		45.470036, 35.641479, 35.288990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092831, 35.205856, 35.048733>,  <45.970600, 35.981205, 34.936825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092831, 35.205856, 35.048733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700424, 35.282299, 35.035587>,  <45.464981, 35.328163, 35.027702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700424, 35.282299, 35.035587>,  <46.092831, 35.205856, 35.048733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700424, 35.282299, 35.035587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131195, -0.778922, -0.613244,
		-0.142790, -0.597294, 0.789209,
		-0.981019, 0.191105, -0.032860,
		45.406116, 35.339630, 35.025730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732624, 34.600613, 35.083893>,  <46.092831, 35.205856, 35.048733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732624, 34.600613, 35.083893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449203, 34.823025, 34.910095>,  <45.279152, 34.956470, 34.805817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449203, 34.823025, 34.910095>,  <45.732624, 34.600613, 35.083893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449203, 34.823025, 34.910095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233479, -0.765778, -0.599225,
		-0.665912, -0.323138, 0.672416,
		-0.708554, 0.556026, -0.434495,
		45.236637, 34.989834, 34.779747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463478, 34.511375, 35.424328>,  <45.732624, 34.600613, 35.083893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463478, 34.511375, 35.424328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533455, 34.153732, 35.259422>,  <46.575439, 33.939144, 35.160480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533455, 34.153732, 35.259422>,  <46.463478, 34.511375, 35.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533455, 34.153732, 35.259422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605510, 0.427879, -0.671028,
		0.776372, -0.132239, 0.616247,
		0.174943, -0.894110, -0.412265,
		46.585938, 33.885498, 35.135742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170113, 34.485630, 35.246212>,  <46.463478, 34.511375, 35.424328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170113, 34.485630, 35.246212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.939030, 34.260406, 35.009834>,  <46.800381, 34.125271, 34.868008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.939030, 34.260406, 35.009834>,  <47.170113, 34.485630, 35.246212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.939030, 34.260406, 35.009834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558743, 0.254979, -0.789172,
		0.595028, -0.786099, 0.167301,
		-0.577709, -0.563058, -0.590946,
		46.765717, 34.091488, 34.832550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337910, 35.217834, 35.090679>,  <47.170113, 34.485630, 35.246212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337910, 35.217834, 35.090679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645699, 34.996841, 35.218853>,  <47.830372, 34.864246, 35.295757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645699, 34.996841, 35.218853>,  <47.337910, 35.217834, 35.090679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645699, 34.996841, 35.218853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204901, -0.261646, -0.943163,
		0.604917, 0.791397, -0.088127,
		0.769475, -0.552478, 0.320432,
		47.876541, 34.831097, 35.314983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.159698, 37.395397, 45.268066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865997, 37.138542, 45.356190>,  <36.689777, 36.984428, 45.409065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865997, 37.138542, 45.356190>,  <37.159698, 37.395397, 45.268066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865997, 37.138542, 45.356190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155111, -0.157255, -0.975301,
		0.660921, -0.750288, 0.015862,
		-0.734251, -0.642136, 0.220311,
		36.645721, 36.945900, 45.422283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320656, 36.722191, 45.028400>,  <37.159698, 37.395397, 45.268066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320656, 36.722191, 45.028400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922688, 36.726154, 45.068470>,  <36.683907, 36.728531, 45.092514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922688, 36.726154, 45.068470>,  <37.320656, 36.722191, 45.028400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922688, 36.726154, 45.068470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090297, -0.527734, -0.844597,
		0.044499, -0.849352, 0.525947,
		-0.994920, 0.009908, 0.100177,
		36.624210, 36.729126, 45.098522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167801, 36.164959, 44.678829>,  <37.320656, 36.722191, 45.028400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167801, 36.164959, 44.678829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808773, 36.341148, 44.671333>,  <36.593357, 36.446861, 44.666836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808773, 36.341148, 44.671333>,  <37.167801, 36.164959, 44.678829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808773, 36.341148, 44.671333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216314, -0.477028, -0.851853,
		-0.384154, -0.760546, 0.523446,
		-0.897571, 0.440471, -0.018736,
		36.539501, 36.473289, 44.665714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702866, 35.580994, 44.394550>,  <37.167801, 36.164959, 44.678829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702866, 35.580994, 44.394550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495327, 35.921722, 44.365719>,  <36.370804, 36.126160, 44.348419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495327, 35.921722, 44.365719>,  <36.702866, 35.580994, 44.394550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495327, 35.921722, 44.365719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348138, -0.287551, -0.892253,
		-0.780768, -0.437848, 0.445746,
		-0.518846, 0.851823, -0.072079,
		36.339672, 36.177269, 44.344093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958157, 35.421234, 44.152073>,  <36.702866, 35.580994, 44.394550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958157, 35.421234, 44.152073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045444, 35.801167, 44.062454>,  <36.097816, 36.029125, 44.008682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045444, 35.801167, 44.062454>,  <35.958157, 35.421234, 44.152073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045444, 35.801167, 44.062454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313678, -0.149126, -0.937746,
		-0.924114, 0.274911, 0.265400,
		0.218219, 0.949835, -0.224043,
		36.110909, 36.086117, 43.995243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338444, 35.662521, 43.747883>,  <35.958157, 35.421234, 44.152073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338444, 35.662521, 43.747883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649532, 35.902100, 43.671558>,  <35.836185, 36.045845, 43.625763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649532, 35.902100, 43.671558>,  <35.338444, 35.662521, 43.747883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649532, 35.902100, 43.671558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111399, -0.167415, -0.979573,
		-0.618655, 0.783094, -0.063481,
		0.777725, 0.598945, -0.190807,
		35.882851, 36.081783, 43.614315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051384, 36.236286, 43.243008>,  <35.338444, 35.662521, 43.747883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051384, 36.236286, 43.243008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447472, 36.198803, 43.201653>,  <35.685123, 36.176315, 43.176842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447472, 36.198803, 43.201653>,  <35.051384, 36.236286, 43.243008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447472, 36.198803, 43.201653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129557, -0.342347, -0.930599,
		0.051807, 0.934889, -0.351138,
		0.990218, -0.093704, -0.103386,
		35.744537, 36.170692, 43.170635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194599, 36.469707, 42.538639>,  <35.051384, 36.236286, 43.243008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194599, 36.469707, 42.538639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512554, 36.257206, 42.655888>,  <35.703327, 36.129707, 42.726238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512554, 36.257206, 42.655888>,  <35.194599, 36.469707, 42.538639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512554, 36.257206, 42.655888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095664, -0.367325, -0.925160,
		0.599162, 0.763444, -0.241162,
		0.794892, -0.531250, 0.293121,
		35.751022, 36.097832, 42.743824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650074, 36.683563, 42.021004>,  <35.194599, 36.469707, 42.538639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650074, 36.683563, 42.021004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790474, 36.351406, 42.194092>,  <35.874714, 36.152111, 42.297943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790474, 36.351406, 42.194092>,  <35.650074, 36.683563, 42.021004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790474, 36.351406, 42.194092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251613, -0.361479, -0.897788,
		0.901935, 0.424004, 0.082058,
		0.351003, -0.830394, 0.432716,
		35.895775, 36.102287, 42.323906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408947, 36.623714, 41.791634>,  <35.650074, 36.683563, 42.021004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408947, 36.623714, 41.791634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300835, 36.256668, 41.908211>,  <36.235970, 36.036442, 41.978157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300835, 36.256668, 41.908211>,  <36.408947, 36.623714, 41.791634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300835, 36.256668, 41.908211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326522, -0.372128, -0.868852,
		0.905723, -0.139668, 0.400199,
		-0.270276, -0.917613, 0.291440,
		36.219753, 35.981384, 41.995644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069481, 36.166466, 41.749645>,  <36.408947, 36.623714, 41.791634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069481, 36.166466, 41.749645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732265, 35.953697, 41.717762>,  <36.529938, 35.826038, 41.698631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732265, 35.953697, 41.717762>,  <37.069481, 36.166466, 41.749645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732265, 35.953697, 41.717762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342966, -0.417476, -0.841480,
		0.414323, -0.736734, 0.534377,
		-0.843036, -0.531918, -0.079704,
		36.479355, 35.794121, 41.693851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328922, 35.561100, 41.648121>,  <37.069481, 36.166466, 41.749645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328922, 35.561100, 41.648121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943115, 35.519527, 41.551044>,  <36.711632, 35.494583, 41.492798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943115, 35.519527, 41.551044>,  <37.328922, 35.561100, 41.648121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943115, 35.519527, 41.551044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262140, -0.486213, -0.833594,
		-0.031361, -0.867638, 0.496208,
		-0.964520, -0.103933, -0.242691,
		36.653759, 35.488346, 41.478237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169247, 34.870548, 41.476482>,  <37.328922, 35.561100, 41.648121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169247, 34.870548, 41.476482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876926, 35.072365, 41.292580>,  <36.701534, 35.193455, 41.182240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876926, 35.072365, 41.292580>,  <37.169247, 34.870548, 41.476482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876926, 35.072365, 41.292580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352265, -0.298151, -0.887139,
		-0.584675, -0.810273, 0.040155,
		-0.730797, 0.504543, -0.459753,
		36.657688, 35.223728, 41.154655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793144, 34.401268, 41.089748>,  <37.169247, 34.870548, 41.476482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793144, 34.401268, 41.089748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722042, 34.758068, 40.923504>,  <36.679382, 34.972149, 40.823757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722042, 34.758068, 40.923504>,  <36.793144, 34.401268, 41.089748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722042, 34.758068, 40.923504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161332, -0.390211, -0.906481,
		-0.970760, -0.228185, -0.074545,
		-0.177757, 0.892002, -0.415615,
		36.668716, 35.025669, 40.798820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499771, 34.122105, 40.506035>,  <36.793144, 34.401268, 41.089748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499771, 34.122105, 40.506035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592300, 34.506096, 40.442886>,  <36.647816, 34.736492, 40.404995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592300, 34.506096, 40.442886>,  <36.499771, 34.122105, 40.506035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592300, 34.506096, 40.442886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249292, -0.215345, -0.944182,
		-0.940396, 0.179052, -0.289130,
		0.231321, 0.959983, -0.157873,
		36.661697, 34.794090, 40.395523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121372, 34.344635, 39.884853>,  <36.499771, 34.122105, 40.506035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121372, 34.344635, 39.884853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427509, 34.598171, 39.929585>,  <36.611191, 34.750294, 39.956421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427509, 34.598171, 39.929585>,  <36.121372, 34.344635, 39.884853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427509, 34.598171, 39.929585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303420, -0.202086, -0.931181,
		-0.567620, 0.746599, -0.346984,
		0.765339, 0.633839, 0.111825,
		36.657112, 34.788322, 39.963131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175480, 34.648281, 39.290119>,  <36.121372, 34.344635, 39.884853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175480, 34.648281, 39.290119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527519, 34.732304, 39.460442>,  <36.738743, 34.782719, 39.562634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527519, 34.732304, 39.460442>,  <36.175480, 34.648281, 39.290119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527519, 34.732304, 39.460442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465955, -0.209837, -0.859566,
		-0.091207, 0.954906, -0.282553,
		0.880095, 0.210055, 0.425805,
		36.791546, 34.795319, 39.588184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591099, 34.948627, 38.739773>,  <36.175480, 34.648281, 39.290119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591099, 34.948627, 38.739773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886658, 34.879704, 39.000340>,  <37.063992, 34.838348, 39.156677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886658, 34.879704, 39.000340>,  <36.591099, 34.948627, 38.739773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886658, 34.879704, 39.000340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605133, -0.255544, -0.753996,
		0.296389, 0.951317, -0.084547,
		0.738896, -0.172314, 0.651415,
		37.108326, 34.828011, 39.195763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022556, 35.487782, 38.695747>,  <36.591099, 34.948627, 38.739773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022556, 35.487782, 38.695747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213684, 35.159653, 38.821449>,  <37.328362, 34.962776, 38.896870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213684, 35.159653, 38.821449>,  <37.022556, 35.487782, 38.695747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213684, 35.159653, 38.821449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416123, -0.103694, -0.903376,
		0.773648, 0.562420, 0.291809,
		0.477818, -0.820324, 0.314258,
		37.357029, 34.913555, 38.915726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624680, 35.528229, 38.339104>,  <37.022556, 35.487782, 38.695747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624680, 35.528229, 38.339104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620583, 35.146580, 38.458805>,  <37.618126, 34.917591, 38.530624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620583, 35.146580, 38.458805>,  <37.624680, 35.528229, 38.339104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620583, 35.146580, 38.458805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237168, -0.293046, -0.926216,
		0.971415, 0.061486, 0.229288,
		-0.010242, -0.954119, 0.299252,
		37.617512, 34.860344, 38.548580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165752, 35.304962, 37.913052>,  <37.624680, 35.528229, 38.339104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165752, 35.304962, 37.913052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965431, 34.983627, 38.041954>,  <37.845238, 34.790829, 38.119293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965431, 34.983627, 38.041954>,  <38.165752, 35.304962, 37.913052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965431, 34.983627, 38.041954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256350, -0.493263, -0.831250,
		0.826727, -0.333686, 0.452964,
		-0.500807, -0.803334, 0.322253,
		37.815189, 34.742626, 38.138630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584591, 34.740215, 37.762768>,  <38.165752, 35.304962, 37.913052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584591, 34.740215, 37.762768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220325, 34.579319, 37.800495>,  <38.001766, 34.482780, 37.823132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220325, 34.579319, 37.800495>,  <38.584591, 34.740215, 37.762768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220325, 34.579319, 37.800495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177829, -0.587678, -0.789310,
		0.372925, -0.702022, 0.606707,
		-0.910661, -0.402244, 0.094320,
		37.947128, 34.458645, 37.828793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602768, 34.397236, 37.050922>,  <38.584591, 34.740215, 37.762768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602768, 34.397236, 37.050922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966019, 34.564537, 37.043289>,  <39.183971, 34.664917, 37.038712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966019, 34.564537, 37.043289>,  <38.602768, 34.397236, 37.050922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966019, 34.564537, 37.043289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003927, 0.054075, 0.998529,
		0.418670, -0.906719, 0.050750,
		0.908130, 0.418253, -0.019079,
		39.238457, 34.690014, 37.037567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966415, 34.141674, 37.616562>,  <38.602768, 34.397236, 37.050922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966415, 34.141674, 37.616562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.157555, 34.481377, 37.526733>,  <39.272240, 34.685196, 37.472836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.157555, 34.481377, 37.526733>,  <38.966415, 34.141674, 37.616562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157555, 34.481377, 37.526733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210792, 0.137318, 0.967838,
		0.852777, -0.509815, -0.113399,
		0.477847, 0.849254, -0.224567,
		39.300907, 34.736153, 37.459362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507679, 34.130787, 38.045750>,  <38.966415, 34.141674, 37.616562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507679, 34.130787, 38.045750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471668, 34.523594, 37.979370>,  <39.450062, 34.759277, 37.939545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471668, 34.523594, 37.979370>,  <39.507679, 34.130787, 38.045750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471668, 34.523594, 37.979370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263485, 0.184170, 0.946920,
		0.960453, 0.041524, -0.275327,
		-0.090027, 0.982017, -0.165945,
		39.444660, 34.818199, 37.929588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119595, 34.497490, 38.311455>,  <39.507679, 34.130787, 38.045750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119595, 34.497490, 38.311455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.852921, 34.793228, 38.273735>,  <39.692917, 34.970673, 38.251102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.852921, 34.793228, 38.273735>,  <40.119595, 34.497490, 38.311455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852921, 34.793228, 38.273735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249061, 0.340235, 0.906758,
		0.702492, 0.581039, -0.410973,
		-0.666689, 0.739347, -0.094298,
		39.652912, 35.015034, 38.245445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436195, 35.076080, 38.509556>,  <40.119595, 34.497490, 38.311455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436195, 35.076080, 38.509556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053665, 35.185822, 38.549904>,  <39.824146, 35.251667, 38.574112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053665, 35.185822, 38.549904>,  <40.436195, 35.076080, 38.509556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053665, 35.185822, 38.549904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234327, 0.513263, 0.825622,
		0.174736, 0.813200, -0.555134,
		-0.956325, 0.274349, 0.100869,
		39.766769, 35.268127, 38.580166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398563, 35.831627, 38.536198>,  <40.436195, 35.076080, 38.509556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398563, 35.831627, 38.536198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.047356, 35.716652, 38.689281>,  <39.836632, 35.647667, 38.781132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.047356, 35.716652, 38.689281>,  <40.398563, 35.831627, 38.536198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047356, 35.716652, 38.689281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102889, 0.667558, 0.737415,
		-0.467440, 0.686839, -0.556554,
		-0.878017, -0.287434, 0.382711,
		39.783951, 35.630421, 38.804096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192146, 36.401161, 38.869190>,  <40.398563, 35.831627, 38.536198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192146, 36.401161, 38.869190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956120, 36.133385, 39.049709>,  <39.814503, 35.972717, 39.158020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956120, 36.133385, 39.049709>,  <40.192146, 36.401161, 38.869190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956120, 36.133385, 39.049709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055401, 0.591239, 0.804591,
		-0.805454, 0.449756, -0.385956,
		-0.590062, -0.669444, 0.451299,
		39.779102, 35.932552, 39.185101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726257, 36.843719, 39.335880>,  <40.192146, 36.401161, 38.869190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726257, 36.843719, 39.335880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695980, 36.474712, 39.487263>,  <39.677814, 36.253307, 39.578091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695980, 36.474712, 39.487263>,  <39.726257, 36.843719, 39.335880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695980, 36.474712, 39.487263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286325, 0.383664, 0.877963,
		-0.955138, -0.041908, -0.293180,
		-0.075689, -0.922521, 0.378452,
		39.673275, 36.197956, 39.600800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116028, 36.821712, 39.708607>,  <39.726257, 36.843719, 39.335880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116028, 36.821712, 39.708607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279869, 36.491798, 39.864536>,  <39.378174, 36.293850, 39.958092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279869, 36.491798, 39.864536>,  <39.116028, 36.821712, 39.708607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279869, 36.491798, 39.864536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247888, 0.310606, 0.917647,
		-0.877939, -0.472503, -0.077229,
		0.409603, -0.824782, 0.389821,
		39.402752, 36.244366, 39.981483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672897, 36.675137, 40.255947>,  <39.116028, 36.821712, 39.708607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672897, 36.675137, 40.255947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003071, 36.460312, 40.325493>,  <39.201176, 36.331417, 40.367218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003071, 36.460312, 40.325493>,  <38.672897, 36.675137, 40.255947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003071, 36.460312, 40.325493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070419, 0.207623, 0.975671,
		-0.560093, -0.817593, 0.133559,
		0.825431, -0.537061, 0.173862,
		39.250702, 36.299194, 40.377651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444935, 36.211491, 40.925217>,  <38.672897, 36.675137, 40.255947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444935, 36.211491, 40.925217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841553, 36.248917, 40.889271>,  <39.079525, 36.271374, 40.867702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841553, 36.248917, 40.889271>,  <38.444935, 36.211491, 40.925217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841553, 36.248917, 40.889271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085338, 0.051324, 0.995029,
		0.097714, -0.994289, 0.042905,
		0.991549, 0.093567, -0.089866,
		39.139019, 36.276985, 40.862312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692303, 35.700771, 41.410114>,  <38.444935, 36.211491, 40.925217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692303, 35.700771, 41.410114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969769, 35.982674, 41.350582>,  <39.136250, 36.151814, 41.314861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969769, 35.982674, 41.350582>,  <38.692303, 35.700771, 41.410114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969769, 35.982674, 41.350582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107460, 0.103060, 0.988853,
		0.712235, -0.701928, -0.004243,
		0.693667, 0.704752, -0.148832,
		39.177868, 36.194099, 41.305931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299290, 35.549374, 41.787590>,  <38.692303, 35.700771, 41.410114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299290, 35.549374, 41.787590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299999, 35.942856, 41.715687>,  <39.300426, 36.178947, 41.672546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299999, 35.942856, 41.715687>,  <39.299290, 35.549374, 41.787590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299999, 35.942856, 41.715687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199498, 0.175795, 0.964000,
		0.979897, -0.037570, -0.195936,
		0.001773, 0.983710, -0.179756,
		39.300529, 36.237968, 41.661758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851086, 35.866184, 42.226543>,  <39.299290, 35.549374, 41.787590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851086, 35.866184, 42.226543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636898, 36.186852, 42.120262>,  <39.508385, 36.379253, 42.056492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636898, 36.186852, 42.120262>,  <39.851086, 35.866184, 42.226543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636898, 36.186852, 42.120262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044116, 0.340728, 0.939126,
		0.843400, 0.491154, -0.217817,
		-0.535472, 0.801668, -0.265702,
		39.476257, 36.427353, 42.040550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189449, 36.479225, 42.447876>,  <39.851086, 35.866184, 42.226543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189449, 36.479225, 42.447876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801563, 36.570366, 42.412689>,  <39.568832, 36.625050, 42.391579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801563, 36.570366, 42.412689>,  <40.189449, 36.479225, 42.447876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801563, 36.570366, 42.412689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034041, 0.230559, 0.972463,
		0.241860, 0.946005, -0.215820,
		-0.969714, 0.227854, -0.087966,
		39.510651, 36.638721, 42.386299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089397, 37.132504, 42.739986>,  <40.189449, 36.479225, 42.447876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089397, 37.132504, 42.739986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.708611, 37.011360, 42.758022>,  <39.480137, 36.938675, 42.768845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.708611, 37.011360, 42.758022>,  <40.089397, 37.132504, 42.739986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708611, 37.011360, 42.758022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016628, 0.198163, 0.980028,
		-0.305746, 0.932205, -0.193681,
		-0.951968, -0.302860, 0.045087,
		39.423019, 36.920502, 42.771549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628056, 37.683704, 43.030361>,  <40.089397, 37.132504, 42.739986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628056, 37.683704, 43.030361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384041, 37.370388, 43.078205>,  <39.237633, 37.182400, 43.106911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384041, 37.370388, 43.078205>,  <39.628056, 37.683704, 43.030361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384041, 37.370388, 43.078205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254346, 0.336542, 0.906668,
		-0.750439, 0.522681, -0.404531,
		-0.610040, -0.783290, 0.119612,
		39.201027, 37.135403, 43.114090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093513, 37.945038, 43.289085>,  <39.628056, 37.683704, 43.030361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093513, 37.945038, 43.289085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028877, 37.562340, 43.385857>,  <38.990093, 37.332722, 43.443920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028877, 37.562340, 43.385857>,  <39.093513, 37.945038, 43.289085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028877, 37.562340, 43.385857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060122, 0.254242, 0.965270,
		-0.985025, 0.141435, -0.098604,
		-0.161592, -0.956743, 0.241931,
		38.980400, 37.275318, 43.458435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.359509, 37.835247, 43.714180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619606, 37.542473, 43.795616>,  <38.775665, 37.366810, 43.844479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619606, 37.542473, 43.795616>,  <38.359509, 37.835247, 43.714180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619606, 37.542473, 43.795616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255985, 0.041219, 0.965801,
		-0.715297, -0.680125, -0.160563,
		0.650248, -0.731937, 0.203586,
		38.814682, 37.322891, 43.856693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055809, 37.467827, 44.237053>,  <38.359509, 37.835247, 43.714180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055809, 37.467827, 44.237053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434853, 37.341022, 44.252777>,  <38.662277, 37.264942, 44.262211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434853, 37.341022, 44.252777>,  <38.055809, 37.467827, 44.237053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434853, 37.341022, 44.252777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035629, 0.017411, 0.999213,
		-0.317443, -0.948263, 0.005204,
		0.947608, -0.317008, 0.039313,
		38.719135, 37.245922, 44.264572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029289, 36.899048, 44.710545>,  <38.055809, 37.467827, 44.237053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029289, 36.899048, 44.710545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415707, 37.001072, 44.694061>,  <38.647556, 37.062286, 44.684170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415707, 37.001072, 44.694061>,  <38.029289, 36.899048, 44.710545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415707, 37.001072, 44.694061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045975, -0.012748, 0.998861,
		0.254241, -0.966842, -0.024041,
		0.966047, 0.255057, -0.041210,
		38.705521, 37.077587, 44.681698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304653, 36.544193, 45.180523>,  <38.029289, 36.899048, 44.710545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304653, 36.544193, 45.180523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549477, 36.851421, 45.105202>,  <38.696369, 37.035759, 45.060009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549477, 36.851421, 45.105202>,  <38.304653, 36.544193, 45.180523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549477, 36.851421, 45.105202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050989, 0.199290, 0.978613,
		0.789167, -0.608571, 0.082814,
		0.612059, 0.768066, -0.188303,
		38.733093, 37.081841, 45.048710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799892, 36.479748, 45.718174>,  <38.304653, 36.544193, 45.180523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799892, 36.479748, 45.718174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838120, 36.856091, 45.588154>,  <38.861053, 37.081894, 45.510139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838120, 36.856091, 45.588154>,  <38.799892, 36.479748, 45.718174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838120, 36.856091, 45.588154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069399, 0.319456, 0.945056,
		0.993001, -0.112873, -0.034766,
		0.095565, 0.940855, -0.325054,
		38.866791, 37.138348, 45.490639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474541, 36.827110, 45.933636>,  <38.799892, 36.479748, 45.718174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474541, 36.827110, 45.933636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256145, 37.155880, 45.868713>,  <39.125111, 37.353142, 45.829758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256145, 37.155880, 45.868713>,  <39.474541, 36.827110, 45.933636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256145, 37.155880, 45.868713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211240, 0.322531, 0.922687,
		0.810727, 0.469486, -0.349720,
		-0.545985, 0.821922, -0.162310,
		39.092350, 37.402458, 45.820019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836388, 37.348785, 46.269375>,  <39.474541, 36.827110, 45.933636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836388, 37.348785, 46.269375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481239, 37.513340, 46.186962>,  <39.268150, 37.612072, 46.137516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481239, 37.513340, 46.186962>,  <39.836388, 37.348785, 46.269375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481239, 37.513340, 46.186962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034746, 0.386570, 0.921605,
		0.458783, 0.825423, -0.328930,
		-0.887869, 0.411388, -0.206032,
		39.214878, 37.636757, 46.125153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944054, 38.095356, 46.391308>,  <39.836388, 37.348785, 46.269375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944054, 38.095356, 46.391308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553150, 38.014618, 46.417316>,  <39.318607, 37.966175, 46.432922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553150, 38.014618, 46.417316>,  <39.944054, 38.095356, 46.391308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553150, 38.014618, 46.417316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016311, 0.377248, 0.925969,
		-0.211426, 0.903850, -0.371960,
		-0.977258, -0.201841, 0.065018,
		39.259972, 37.954067, 46.436821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663116, 38.618034, 46.881367>,  <39.944054, 38.095356, 46.391308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663116, 38.618034, 46.881367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377659, 38.338150, 46.867943>,  <39.206387, 38.170219, 46.859890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377659, 38.338150, 46.867943>,  <39.663116, 38.618034, 46.881367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377659, 38.338150, 46.867943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084385, 0.038310, 0.995696,
		-0.695410, 0.713403, -0.086384,
		-0.713642, -0.699707, -0.033559,
		39.163567, 38.128239, 46.857876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033699, 38.934746, 47.170715>,  <39.663116, 38.618034, 46.881367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033699, 38.934746, 47.170715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019974, 38.538132, 47.220795>,  <39.011738, 38.300163, 47.250843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019974, 38.538132, 47.220795>,  <39.033699, 38.934746, 47.170715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019974, 38.538132, 47.220795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194789, 0.116238, 0.973933,
		-0.980245, 0.057811, 0.189152,
		-0.034317, -0.991538, 0.125203,
		39.009678, 38.240669, 47.258354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708042, 38.823917, 47.884876>,  <39.033699, 38.934746, 47.170715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708042, 38.823917, 47.884876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872784, 38.476746, 47.773823>,  <38.971630, 38.268444, 47.707191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872784, 38.476746, 47.773823>,  <38.708042, 38.823917, 47.884876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872784, 38.476746, 47.773823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155960, -0.233036, 0.959881,
		-0.897804, -0.438631, 0.039384,
		0.411856, -0.867927, -0.277629,
		38.996342, 38.216366, 47.690533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471386, 38.325653, 48.348557>,  <38.708042, 38.823917, 47.884876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471386, 38.325653, 48.348557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814140, 38.180893, 48.201714>,  <39.019794, 38.094036, 48.113605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814140, 38.180893, 48.201714>,  <38.471386, 38.325653, 48.348557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814140, 38.180893, 48.201714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228574, -0.371575, 0.899826,
		-0.462057, -0.854962, -0.235677,
		0.856888, -0.361901, -0.367111,
		39.071205, 38.072323, 48.091579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569653, 37.778660, 48.738316>,  <38.471386, 38.325653, 48.348557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569653, 37.778660, 48.738316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918530, 37.848507, 48.555542>,  <39.127857, 37.890415, 48.445877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918530, 37.848507, 48.555542>,  <38.569653, 37.778660, 48.738316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918530, 37.848507, 48.555542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486834, -0.218801, 0.845647,
		0.047686, -0.960018, -0.275846,
		0.872192, 0.174617, -0.456935,
		39.180187, 37.900890, 48.418461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968887, 37.248917, 48.888077>,  <38.569653, 37.778660, 48.738316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968887, 37.248917, 48.888077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248421, 37.519207, 48.794247>,  <39.416142, 37.681381, 48.737949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248421, 37.519207, 48.794247>,  <38.968887, 37.248917, 48.888077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248421, 37.519207, 48.794247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534831, -0.275860, 0.798659,
		0.474966, -0.683587, -0.554181,
		0.698829, 0.675729, -0.234579,
		39.458069, 37.721928, 48.723873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690422, 36.955990, 48.739937>,  <38.968887, 37.248917, 48.888077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690422, 36.955990, 48.739937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758209, 37.335114, 48.847961>,  <39.798882, 37.562588, 48.912777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758209, 37.335114, 48.847961>,  <39.690422, 36.955990, 48.739937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758209, 37.335114, 48.847961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506665, -0.318833, 0.801022,
		0.845323, 0.001083, -0.534255,
		0.169471, 0.947810, 0.270066,
		39.809052, 37.619457, 48.928982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441437, 36.908234, 48.723255>,  <39.690422, 36.955990, 48.739937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441437, 36.908234, 48.723255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327724, 37.234020, 48.925571>,  <40.259499, 37.429493, 49.046963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327724, 37.234020, 48.925571>,  <40.441437, 36.908234, 48.723255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327724, 37.234020, 48.925571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732717, -0.155670, 0.662490,
		0.618314, 0.558936, -0.552521,
		-0.284278, 0.814468, 0.505795,
		40.242439, 37.478359, 49.077309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023548, 37.313526, 48.831486>,  <40.441437, 36.908234, 48.723255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023548, 37.313526, 48.831486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.759052, 37.426140, 49.109623>,  <40.600353, 37.493710, 49.276505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.759052, 37.426140, 49.109623>,  <41.023548, 37.313526, 48.831486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759052, 37.426140, 49.109623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679285, -0.168616, 0.714241,
		0.318328, 0.944621, -0.079746,
		-0.661241, 0.281533, 0.695342,
		40.560680, 37.510601, 49.318226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431805, 37.657398, 49.234608>,  <41.023548, 37.313526, 48.831486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431805, 37.657398, 49.234608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122726, 37.562561, 49.470142>,  <40.937279, 37.505661, 49.611462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122726, 37.562561, 49.470142>,  <41.431805, 37.657398, 49.234608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122726, 37.562561, 49.470142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634507, -0.315358, 0.705656,
		0.018390, 0.918879, 0.394111,
		-0.772699, -0.237089, 0.588834,
		40.890919, 37.491436, 49.646793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603619, 37.992245, 49.948364>,  <41.431805, 37.657398, 49.234608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603619, 37.992245, 49.948364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.333733, 37.703651, 50.010612>,  <41.171799, 37.530495, 50.047962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.333733, 37.703651, 50.010612>,  <41.603619, 37.992245, 49.948364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333733, 37.703651, 50.010612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544128, -0.343784, 0.765335,
		-0.498676, 0.601062, 0.624537,
		-0.674719, -0.721482, 0.155618,
		41.131317, 37.487206, 50.057297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780071, 37.880833, 50.673561>,  <41.603619, 37.992245, 49.948364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780071, 37.880833, 50.673561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.530598, 37.581814, 50.582176>,  <41.380913, 37.402405, 50.527344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.530598, 37.581814, 50.582176>,  <41.780071, 37.880833, 50.673561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530598, 37.581814, 50.582176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402222, -0.557521, 0.726215,
		-0.670250, 0.361037, 0.648396,
		-0.623685, -0.747544, -0.228461,
		41.343491, 37.357552, 50.513638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273312, 37.683987, 51.274506>,  <41.780071, 37.880833, 50.673561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273312, 37.683987, 51.274506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.320667, 37.344593, 51.068184>,  <41.349079, 37.140957, 50.944389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.320667, 37.344593, 51.068184>,  <41.273312, 37.683987, 51.274506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320667, 37.344593, 51.068184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543437, -0.379394, 0.748824,
		-0.831060, -0.368959, 0.416183,
		0.118388, -0.848487, -0.515805,
		41.356182, 37.090046, 50.913441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068047, 37.117783, 51.738430>,  <41.273312, 37.683987, 51.274506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068047, 37.117783, 51.738430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.298645, 36.959656, 51.452389>,  <41.437004, 36.864780, 51.280766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.298645, 36.959656, 51.452389>,  <41.068047, 37.117783, 51.738430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298645, 36.959656, 51.452389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550340, -0.459034, 0.697434,
		-0.603965, -0.795620, -0.047074,
		0.576500, -0.395319, -0.715101,
		41.471596, 36.841061, 51.237858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979610, 36.251202, 51.594769>,  <41.068047, 37.117783, 51.738430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979610, 36.251202, 51.594769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334160, 36.431431, 51.552212>,  <41.546890, 36.539570, 51.526680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334160, 36.431431, 51.552212>,  <40.979610, 36.251202, 51.594769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334160, 36.431431, 51.552212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319460, -0.428933, 0.844963,
		0.335085, -0.782943, -0.524137,
		0.886377, 0.450575, -0.106390,
		41.600075, 36.566605, 51.520294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469166, 35.707302, 51.819061>,  <40.979610, 36.251202, 51.594769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469166, 35.707302, 51.819061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602039, 36.084431, 51.829948>,  <41.681763, 36.310707, 51.836479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602039, 36.084431, 51.829948>,  <41.469166, 35.707302, 51.819061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602039, 36.084431, 51.829948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561431, -0.220831, 0.797514,
		0.757925, -0.249638, -0.602686,
		0.332182, 0.942823, 0.027219,
		41.701694, 36.367279, 51.838116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703156, 35.482674, 51.834332>,  <41.469166, 35.707302, 51.819061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703156, 35.482674, 51.834332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398544, 35.518105, 52.091152>,  <40.215778, 35.539364, 52.245243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398544, 35.518105, 52.091152>,  <40.703156, 35.482674, 51.834332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398544, 35.518105, 52.091152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647139, -0.049195, -0.760783,
		-0.035774, -0.994857, 0.094761,
		-0.761533, 0.088539, 0.642051,
		40.170086, 35.544678, 52.283768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254238, 35.130611, 51.530724>,  <40.703156, 35.482674, 51.834332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254238, 35.130611, 51.530724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017776, 35.328960, 51.785172>,  <39.875900, 35.447971, 51.937840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017776, 35.328960, 51.785172>,  <40.254238, 35.130611, 51.530724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017776, 35.328960, 51.785172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684208, 0.109304, -0.721049,
		-0.427081, -0.861487, 0.274667,
		-0.591152, 0.495876, 0.636118,
		39.840431, 35.477722, 51.976006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688171, 34.791946, 51.439228>,  <40.254238, 35.130611, 51.530724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688171, 34.791946, 51.439228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583889, 35.136341, 51.613918>,  <39.521320, 35.342979, 51.718731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583889, 35.136341, 51.613918>,  <39.688171, 34.791946, 51.439228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583889, 35.136341, 51.613918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655439, 0.174281, -0.734864,
		-0.708823, -0.477833, 0.518889,
		-0.260710, 0.860989, 0.436725,
		39.505676, 35.394638, 51.744934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907974, 34.780521, 51.514698>,  <39.688171, 34.791946, 51.439228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907974, 34.780521, 51.514698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058792, 35.150993, 51.516556>,  <39.149284, 35.373276, 51.517670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058792, 35.150993, 51.516556>,  <38.907974, 34.780521, 51.514698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058792, 35.150993, 51.516556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579953, 0.240002, -0.778495,
		-0.722142, 0.290837, 0.627634,
		0.377048, 0.926182, 0.004644,
		39.171906, 35.428848, 51.517948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310440, 35.151131, 51.472691>,  <38.907974, 34.780521, 51.514698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310440, 35.151131, 51.472691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587063, 35.428661, 51.392338>,  <38.753036, 35.595181, 51.344128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587063, 35.428661, 51.392338>,  <38.310440, 35.151131, 51.472691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587063, 35.428661, 51.392338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644644, 0.467386, -0.604967,
		-0.325853, 0.547866, 0.770495,
		0.691559, 0.693825, -0.200879,
		38.794529, 35.636810, 51.332073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973026, 35.825562, 51.465698>,  <38.310440, 35.151131, 51.472691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973026, 35.825562, 51.465698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290714, 35.814098, 51.222919>,  <38.481327, 35.807220, 51.077251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290714, 35.814098, 51.222919>,  <37.973026, 35.825562, 51.465698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290714, 35.814098, 51.222919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580233, 0.260781, -0.771572,
		0.180389, 0.964973, 0.190492,
		0.794222, -0.028653, -0.606951,
		38.528980, 35.805504, 51.040833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060783, 36.483490, 51.152229>,  <37.973026, 35.825562, 51.465698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060783, 36.483490, 51.152229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.265999, 36.256115, 50.894958>,  <38.389130, 36.119690, 50.740597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.265999, 36.256115, 50.894958>,  <38.060783, 36.483490, 51.152229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265999, 36.256115, 50.894958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543991, 0.364294, -0.755886,
		0.663978, 0.737678, -0.122327,
		0.513037, -0.568437, -0.643174,
		38.419910, 36.085583, 50.702007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828362, 36.789162, 50.612949>,  <38.060783, 36.483490, 51.152229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828362, 36.789162, 50.612949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026787, 36.474300, 50.466362>,  <38.145844, 36.285381, 50.378410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026787, 36.474300, 50.466362>,  <37.828362, 36.789162, 50.612949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026787, 36.474300, 50.466362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386117, 0.178053, -0.905103,
		0.777710, 0.590491, -0.215609,
		0.496066, -0.787157, -0.366472,
		38.175606, 36.238152, 50.356419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110424, 37.074009, 50.048702>,  <37.828362, 36.789162, 50.612949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110424, 37.074009, 50.048702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072250, 36.679745, 49.993034>,  <38.049347, 36.443188, 49.959633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072250, 36.679745, 49.993034>,  <38.110424, 37.074009, 50.048702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072250, 36.679745, 49.993034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373008, 0.165035, -0.913033,
		0.922907, -0.035224, -0.383409,
		-0.095436, -0.985658, -0.139173,
		38.043621, 36.384048, 49.951283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427757, 36.913712, 49.442139>,  <38.110424, 37.074009, 50.048702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427757, 36.913712, 49.442139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171219, 36.612217, 49.499496>,  <38.017296, 36.431320, 49.533913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171219, 36.612217, 49.499496>,  <38.427757, 36.913712, 49.442139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171219, 36.612217, 49.499496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296928, 0.071496, -0.952219,
		0.707467, -0.653280, -0.269658,
		-0.641345, -0.753733, 0.143397,
		37.978817, 36.386097, 49.542515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435509, 36.579483, 48.838554>,  <38.427757, 36.913712, 49.442139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435509, 36.579483, 48.838554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081257, 36.486084, 48.999126>,  <37.868706, 36.430046, 49.095470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081257, 36.486084, 48.999126>,  <38.435509, 36.579483, 48.838554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081257, 36.486084, 48.999126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436368, 0.122667, -0.891368,
		0.158883, -0.964591, -0.210525,
		-0.885629, -0.233490, 0.401426,
		37.815567, 36.416035, 49.119553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192066, 35.951488, 48.536789>,  <38.435509, 36.579483, 48.838554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192066, 35.951488, 48.536789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867924, 36.133007, 48.685051>,  <37.673439, 36.241917, 48.774010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867924, 36.133007, 48.685051>,  <38.192066, 35.951488, 48.536789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867924, 36.133007, 48.685051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389078, 0.056243, -0.919486,
		-0.438106, -0.889329, 0.130986,
		-0.810359, 0.453796, 0.370659,
		37.624817, 36.269146, 48.796249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726677, 35.552750, 48.301598>,  <38.192066, 35.951488, 48.536789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726677, 35.552750, 48.301598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543297, 35.892479, 48.406273>,  <37.433270, 36.096317, 48.469078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543297, 35.892479, 48.406273>,  <37.726677, 35.552750, 48.301598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543297, 35.892479, 48.406273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405854, 0.061877, -0.911841,
		-0.790637, -0.524239, 0.316333,
		-0.458449, 0.849320, 0.261687,
		37.405762, 36.147274, 48.484779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180573, 35.560192, 47.943321>,  <37.726677, 35.552750, 48.301598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180573, 35.560192, 47.943321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176929, 35.945881, 48.049297>,  <37.174744, 36.177296, 48.112881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176929, 35.945881, 48.049297>,  <37.180573, 35.560192, 47.943321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176929, 35.945881, 48.049297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481160, 0.228033, -0.846455,
		-0.876585, -0.135187, 0.461869,
		-0.009108, 0.964223, 0.264937,
		37.174198, 36.235149, 48.128777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548695, 35.834759, 47.676418>,  <37.180573, 35.560192, 47.943321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548695, 35.834759, 47.676418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736382, 36.180107, 47.750633>,  <36.848991, 36.387318, 47.795162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736382, 36.180107, 47.750633>,  <36.548695, 35.834759, 47.676418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736382, 36.180107, 47.750633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416351, 0.401566, -0.815718,
		-0.778775, 0.305499, 0.547887,
		0.469214, 0.863374, 0.185535,
		36.877144, 36.439121, 47.806293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110851, 36.333355, 47.479248>,  <36.548695, 35.834759, 47.676418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110851, 36.333355, 47.479248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456314, 36.534382, 47.463673>,  <36.663593, 36.654999, 47.454327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456314, 36.534382, 47.463673>,  <36.110851, 36.333355, 47.479248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456314, 36.534382, 47.463673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318017, 0.483316, -0.815641,
		-0.391098, 0.716819, 0.577246,
		0.863659, 0.502569, -0.038937,
		36.715412, 36.685154, 47.451992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858337, 36.998463, 47.469429>,  <36.110851, 36.333355, 47.479248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858337, 36.998463, 47.469429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213261, 36.955448, 47.290043>,  <36.426216, 36.929642, 47.182411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213261, 36.955448, 47.290043>,  <35.858337, 36.998463, 47.469429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213261, 36.955448, 47.290043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420013, 0.213168, -0.882127,
		0.190457, 0.971080, 0.143980,
		0.887308, -0.107533, -0.448466,
		36.479454, 36.923187, 47.155502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835075, 37.384174, 46.828331>,  <35.858337, 36.998463, 47.469429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835075, 37.384174, 46.828331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178860, 37.190498, 46.762749>,  <36.385132, 37.074295, 46.723400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178860, 37.190498, 46.762749>,  <35.835075, 37.384174, 46.828331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178860, 37.190498, 46.762749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242820, -0.104446, -0.964432,
		0.449841, 0.868708, -0.207338,
		0.859466, -0.484187, -0.163955,
		36.436699, 37.045242, 46.713562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206486, 37.837864, 46.336147>,  <35.835075, 37.384174, 46.828331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206486, 37.837864, 46.336147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328609, 37.458309, 46.304161>,  <36.401882, 37.230576, 46.284969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328609, 37.458309, 46.304161>,  <36.206486, 37.837864, 46.336147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328609, 37.458309, 46.304161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313585, -0.020895, -0.949330,
		0.899140, 0.314912, -0.303937,
		0.305306, -0.948891, -0.079964,
		36.420200, 37.173641, 46.280170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551319, 37.857193, 45.653648>,  <36.206486, 37.837864, 46.336147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551319, 37.857193, 45.653648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501961, 37.471340, 45.746819>,  <36.472347, 37.239830, 45.802723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501961, 37.471340, 45.746819>,  <36.551319, 37.857193, 45.653648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501961, 37.471340, 45.746819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058682, -0.227219, -0.972074,
		0.990621, -0.133618, -0.028569,
		-0.123395, -0.964633, 0.232929,
		36.464943, 37.181950, 45.816696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.825817, 37.930485, 42.396774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455975, 37.910145, 42.547783>,  <44.234070, 37.897942, 42.638390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455975, 37.910145, 42.547783>,  <44.825817, 37.930485, 42.396774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455975, 37.910145, 42.547783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255194, -0.653107, -0.712970,
		0.282818, -0.755556, 0.590888,
		-0.924602, -0.050850, 0.377524,
		44.178593, 37.894890, 42.661041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691513, 37.292431, 42.602066>,  <44.825817, 37.930485, 42.396774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691513, 37.292431, 42.602066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374969, 37.505348, 42.481785>,  <44.185043, 37.633099, 42.409618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374969, 37.505348, 42.481785>,  <44.691513, 37.292431, 42.602066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374969, 37.505348, 42.481785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232081, -0.716599, -0.657741,
		-0.565593, -0.450720, 0.690620,
		-0.791355, 0.532294, -0.300700,
		44.137562, 37.665035, 42.391575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395065, 36.802246, 42.217171>,  <44.691513, 37.292431, 42.602066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395065, 36.802246, 42.217171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170105, 37.126801, 42.153484>,  <44.035130, 37.321533, 42.115273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170105, 37.126801, 42.153484>,  <44.395065, 36.802246, 42.217171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170105, 37.126801, 42.153484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460156, -0.467106, -0.755029,
		-0.686993, -0.351367, 0.636068,
		-0.562403, 0.811389, -0.159215,
		44.001385, 37.370216, 42.105721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765289, 36.527092, 42.045212>,  <44.395065, 36.802246, 42.217171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765289, 36.527092, 42.045212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724739, 36.895561, 41.894924>,  <43.700409, 37.116642, 41.804752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724739, 36.895561, 41.894924>,  <43.765289, 36.527092, 42.045212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724739, 36.895561, 41.894924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535822, -0.368763, -0.759545,
		-0.838223, 0.124318, 0.530968,
		-0.101376, 0.921172, -0.375718,
		43.694324, 37.171913, 41.782207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138313, 36.565609, 41.708931>,  <43.765289, 36.527092, 42.045212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138313, 36.565609, 41.708931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345695, 36.845982, 41.513012>,  <43.470127, 37.014206, 41.395462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345695, 36.845982, 41.513012>,  <43.138313, 36.565609, 41.708931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345695, 36.845982, 41.513012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369321, -0.333062, -0.867566,
		-0.771234, 0.630690, 0.086188,
		0.518459, 0.700928, -0.489796,
		43.501232, 37.056259, 41.366074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666153, 36.779346, 41.173832>,  <43.138313, 36.565609, 41.708931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666153, 36.779346, 41.173832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023960, 36.900658, 41.042461>,  <43.238644, 36.973442, 40.963638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023960, 36.900658, 41.042461>,  <42.666153, 36.779346, 41.173832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023960, 36.900658, 41.042461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294368, -0.153302, -0.943317,
		-0.336434, 0.940490, -0.047856,
		0.894516, 0.303276, -0.328426,
		43.292316, 36.991642, 40.943935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610828, 37.296043, 40.732426>,  <42.666153, 36.779346, 41.173832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610828, 37.296043, 40.732426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976280, 37.180828, 40.617668>,  <43.195553, 37.111698, 40.548813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976280, 37.180828, 40.617668>,  <42.610828, 37.296043, 40.732426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976280, 37.180828, 40.617668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342350, -0.164506, -0.925059,
		0.219256, 0.943383, -0.248908,
		0.913632, -0.288038, -0.286898,
		43.250370, 37.094418, 40.531597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728794, 37.599388, 40.114796>,  <42.610828, 37.296043, 40.732426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728794, 37.599388, 40.114796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005474, 37.315269, 40.062595>,  <43.171482, 37.144798, 40.031273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005474, 37.315269, 40.062595>,  <42.728794, 37.599388, 40.114796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005474, 37.315269, 40.062595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336923, -0.157552, -0.928257,
		0.638778, 0.686042, -0.348294,
		0.691697, -0.710299, -0.130503,
		43.212982, 37.102180, 40.023445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206715, 37.751553, 39.446259>,  <42.728794, 37.599388, 40.114796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206715, 37.751553, 39.446259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174202, 37.366005, 39.547726>,  <43.154694, 37.134678, 39.608608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174202, 37.366005, 39.547726>,  <43.206715, 37.751553, 39.446259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174202, 37.366005, 39.547726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193270, -0.234440, -0.952725,
		0.977773, -0.126467, -0.167231,
		-0.081283, -0.963869, 0.253671,
		43.149818, 37.076843, 39.623829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491249, 37.472820, 38.958897>,  <43.206715, 37.751553, 39.446259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491249, 37.472820, 38.958897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319389, 37.144291, 39.109005>,  <43.216274, 36.947174, 39.199070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319389, 37.144291, 39.109005>,  <43.491249, 37.472820, 38.958897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319389, 37.144291, 39.109005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045768, -0.395239, -0.917437,
		0.901837, -0.411348, 0.132222,
		-0.429645, -0.821328, 0.375268,
		43.190495, 36.897892, 39.221584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770981, 37.045364, 38.482559>,  <43.491249, 37.472820, 38.958897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770981, 37.045364, 38.482559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462887, 36.858112, 38.655807>,  <43.278030, 36.745762, 38.759758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462887, 36.858112, 38.655807>,  <43.770981, 37.045364, 38.482559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462887, 36.858112, 38.655807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226912, -0.433534, -0.872101,
		0.596030, -0.770001, 0.227698,
		-0.770233, -0.468131, 0.433122,
		43.231815, 36.717674, 38.785744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831749, 36.258018, 38.363255>,  <43.770981, 37.045364, 38.482559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831749, 36.258018, 38.363255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444408, 36.308159, 38.449581>,  <43.212002, 36.338242, 38.501377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444408, 36.308159, 38.449581>,  <43.831749, 36.258018, 38.363255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444408, 36.308159, 38.449581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247169, -0.601529, -0.759651,
		0.034603, -0.788956, 0.613475,
		-0.968354, 0.125346, 0.215820,
		43.153904, 36.345764, 38.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470898, 35.650845, 38.508953>,  <43.831749, 36.258018, 38.363255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470898, 35.650845, 38.508953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168701, 35.889416, 38.400497>,  <42.987385, 36.032558, 38.335423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168701, 35.889416, 38.400497>,  <43.470898, 35.650845, 38.508953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168701, 35.889416, 38.400497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158506, -0.567947, -0.807658,
		-0.635700, -0.567199, 0.523614,
		-0.755488, 0.596424, -0.271140,
		42.942055, 36.068344, 38.319157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954796, 35.194565, 38.314808>,  <43.470898, 35.650845, 38.508953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954796, 35.194565, 38.314808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854717, 35.544357, 38.148586>,  <42.794670, 35.754234, 38.048855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854717, 35.544357, 38.148586>,  <42.954796, 35.194565, 38.314808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854717, 35.544357, 38.148586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186915, -0.464755, -0.865486,
		-0.949980, -0.138872, 0.279736,
		-0.250201, 0.874481, -0.415551,
		42.779655, 35.806702, 38.023922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340466, 35.146545, 38.076752>,  <42.954796, 35.194565, 38.314808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340466, 35.146545, 38.076752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517265, 35.446602, 37.880005>,  <42.623344, 35.626637, 37.761955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517265, 35.446602, 37.880005>,  <42.340466, 35.146545, 38.076752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517265, 35.446602, 37.880005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161158, -0.473008, -0.866194,
		-0.882421, 0.462123, -0.088177,
		0.441996, 0.750137, -0.491867,
		42.649864, 35.671642, 37.732445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954914, 35.230827, 37.405495>,  <42.340466, 35.146545, 38.076752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954914, 35.230827, 37.405495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.294334, 35.430862, 37.336353>,  <42.497986, 35.550884, 37.294868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.294334, 35.430862, 37.336353>,  <41.954914, 35.230827, 37.405495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294334, 35.430862, 37.336353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042211, -0.261663, -0.964236,
		-0.527435, 0.825495, -0.200924,
		0.848547, 0.500090, -0.172855,
		42.548897, 35.580891, 37.284496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861340, 35.833778, 36.782169>,  <41.954914, 35.230827, 37.405495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861340, 35.833778, 36.782169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240402, 35.706337, 36.790562>,  <42.467838, 35.629871, 36.795597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240402, 35.706337, 36.790562>,  <41.861340, 35.833778, 36.782169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240402, 35.706337, 36.790562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012011, -0.030087, -0.999475,
		0.319066, 0.947411, -0.024686,
		0.947656, -0.318602, 0.020979,
		42.524700, 35.610756, 36.796856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204464, 36.138073, 36.143902>,  <41.861340, 35.833778, 36.782169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204464, 36.138073, 36.143902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.465183, 35.852505, 36.246262>,  <42.621613, 35.681164, 36.307678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.465183, 35.852505, 36.246262>,  <42.204464, 36.138073, 36.143902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465183, 35.852505, 36.246262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219780, -0.145129, -0.964694,
		0.725851, 0.685024, 0.062311,
		0.651795, -0.713919, 0.255896,
		42.660721, 35.638329, 36.323032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819710, 36.240120, 35.781658>,  <42.204464, 36.138073, 36.143902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819710, 36.240120, 35.781658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787865, 35.852966, 35.877041>,  <42.768757, 35.620674, 35.934269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787865, 35.852966, 35.877041>,  <42.819710, 36.240120, 35.781658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787865, 35.852966, 35.877041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043193, -0.242336, -0.969230,
		0.995890, -0.066859, 0.061098,
		-0.079609, -0.967886, 0.238453,
		42.763981, 35.562599, 35.948578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101418, 35.994389, 35.260818>,  <42.819710, 36.240120, 35.781658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101418, 35.994389, 35.260818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967476, 35.655170, 35.425106>,  <42.887112, 35.451641, 35.523678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967476, 35.655170, 35.425106>,  <43.101418, 35.994389, 35.260818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967476, 35.655170, 35.425106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017773, -0.441493, -0.897088,
		0.942103, -0.293093, 0.162908,
		-0.334853, -0.848045, 0.410723,
		42.867020, 35.400757, 35.548325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461662, 35.503815, 34.927017>,  <43.101418, 35.994389, 35.260818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461662, 35.503815, 34.927017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.154709, 35.291706, 35.071201>,  <42.970535, 35.164440, 35.157711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.154709, 35.291706, 35.071201>,  <43.461662, 35.503815, 34.927017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154709, 35.291706, 35.071201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068404, -0.626677, -0.776271,
		0.637525, -0.571044, 0.517176,
		-0.767387, -0.530269, 0.360461,
		42.924492, 35.132626, 35.179340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171730, 35.115463, 35.193508>,  <43.461662, 35.503815, 34.927017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171730, 35.115463, 35.193508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568310, 35.165066, 35.209740>,  <44.806259, 35.194828, 35.219479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568310, 35.165066, 35.209740>,  <44.171730, 35.115463, 35.193508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568310, 35.165066, 35.209740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091885, 0.442756, 0.891922,
		0.092640, -0.888025, 0.450365,
		0.991451, 0.124010, 0.040579,
		44.865746, 35.202271, 35.221912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480785, 35.091705, 35.915142>,  <44.171730, 35.115463, 35.193508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480785, 35.091705, 35.915142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812416, 35.226631, 35.736771>,  <45.011395, 35.307587, 35.629749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812416, 35.226631, 35.736771>,  <44.480785, 35.091705, 35.915142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812416, 35.226631, 35.736771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203231, 0.561187, 0.802350,
		0.520891, -0.755837, 0.396716,
		0.829078, 0.337312, -0.445927,
		45.061138, 35.327827, 35.602993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041245, 34.898983, 36.321255>,  <44.480785, 35.091705, 35.915142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041245, 34.898983, 36.321255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163704, 35.210953, 36.102898>,  <45.237179, 35.398132, 35.971886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163704, 35.210953, 36.102898>,  <45.041245, 34.898983, 36.321255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163704, 35.210953, 36.102898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330547, 0.450658, 0.829244,
		0.892754, -0.434317, -0.119830,
		0.306153, 0.779920, -0.545889,
		45.255550, 35.444927, 35.939133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822403, 35.073715, 36.562111>,  <45.041245, 34.898983, 36.321255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822403, 35.073715, 36.562111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.683689, 35.407028, 36.389885>,  <45.600460, 35.607018, 36.286549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.683689, 35.407028, 36.389885>,  <45.822403, 35.073715, 36.562111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683689, 35.407028, 36.389885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084131, 0.484831, 0.870552,
		0.934165, 0.265667, -0.238235,
		-0.346781, 0.833282, -0.430561,
		45.579655, 35.657013, 36.260715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261066, 35.531651, 36.736664>,  <45.822403, 35.073715, 36.562111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261066, 35.531651, 36.736664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.947628, 35.760567, 36.639946>,  <45.759567, 35.897915, 36.581913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.947628, 35.760567, 36.639946>,  <46.261066, 35.531651, 36.736664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947628, 35.760567, 36.639946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070298, 0.468370, 0.880731,
		0.617286, 0.673136, -0.407242,
		-0.783592, 0.572291, -0.241798,
		45.712551, 35.932255, 36.567406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435211, 36.223694, 36.889198>,  <46.261066, 35.531651, 36.736664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435211, 36.223694, 36.889198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.039196, 36.274727, 36.865353>,  <45.801586, 36.305347, 36.851048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.039196, 36.274727, 36.865353>,  <46.435211, 36.223694, 36.889198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039196, 36.274727, 36.865353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065027, 0.789655, 0.610096,
		0.124908, 0.600140, -0.790082,
		-0.990035, 0.127582, -0.059610,
		45.742184, 36.313000, 36.847469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344257, 36.955269, 36.964027>,  <46.435211, 36.223694, 36.889198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344257, 36.955269, 36.964027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993092, 36.791470, 37.063286>,  <45.782391, 36.693192, 37.122841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993092, 36.791470, 37.063286>,  <46.344257, 36.955269, 36.964027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993092, 36.791470, 37.063286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126556, 0.698269, 0.704560,
		-0.461784, 0.587141, -0.664846,
		-0.877918, -0.409495, 0.248143,
		45.729717, 36.668621, 37.137730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918427, 37.501045, 36.978386>,  <46.344257, 36.955269, 36.964027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918427, 37.501045, 36.978386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.723656, 37.230450, 37.199390>,  <45.606792, 37.068092, 37.331993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.723656, 37.230450, 37.199390>,  <45.918427, 37.501045, 36.978386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723656, 37.230450, 37.199390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162329, 0.691631, 0.703772,
		-0.858227, 0.252996, -0.446586,
		-0.486925, -0.676490, 0.552508,
		45.577579, 37.027504, 37.365143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383453, 37.818344, 37.189342>,  <45.918427, 37.501045, 36.978386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383453, 37.818344, 37.189342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370148, 37.500786, 37.432201>,  <45.362164, 37.310249, 37.577915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370148, 37.500786, 37.432201>,  <45.383453, 37.818344, 37.189342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370148, 37.500786, 37.432201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164842, 0.603518, 0.780124,
		-0.985759, -0.074129, -0.150946,
		-0.033268, -0.793896, 0.607142,
		45.360168, 37.262615, 37.614346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762508, 37.842674, 37.638798>,  <45.383453, 37.818344, 37.189342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762508, 37.842674, 37.638798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990490, 37.591061, 37.850258>,  <45.127277, 37.440094, 37.977135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990490, 37.591061, 37.850258>,  <44.762508, 37.842674, 37.638798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990490, 37.591061, 37.850258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144361, 0.556716, 0.818063,
		-0.808898, -0.542572, 0.226493,
		0.569950, -0.629033, 0.528653,
		45.161476, 37.402351, 38.008854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333164, 37.591480, 38.272186>,  <44.762508, 37.842674, 37.638798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333164, 37.591480, 38.272186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725174, 37.553894, 38.342304>,  <44.960381, 37.531342, 38.384373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725174, 37.553894, 38.342304>,  <44.333164, 37.591480, 38.272186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725174, 37.553894, 38.342304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088902, 0.581444, 0.808714,
		-0.177914, -0.808142, 0.561474,
		0.980022, -0.093966, 0.175293,
		45.019180, 37.525703, 38.394894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289200, 37.552265, 38.964108>,  <44.333164, 37.591480, 38.272186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289200, 37.552265, 38.964108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675446, 37.631596, 38.896858>,  <44.907192, 37.679192, 38.856510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675446, 37.631596, 38.896858>,  <44.289200, 37.552265, 38.964108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675446, 37.631596, 38.896858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040798, 0.523037, 0.851333,
		0.256771, -0.828915, 0.496959,
		0.965611, 0.198322, -0.168118,
		44.965130, 37.691093, 38.846424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724113, 37.388359, 39.618233>,  <44.289200, 37.552265, 38.964108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724113, 37.388359, 39.618233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954636, 37.654320, 39.428169>,  <45.092949, 37.813896, 39.314129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954636, 37.654320, 39.428169>,  <44.724113, 37.388359, 39.618233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954636, 37.654320, 39.428169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022648, 0.594196, 0.804001,
		0.816923, -0.452585, 0.357495,
		0.576302, 0.664904, -0.475163,
		45.127525, 37.853790, 39.285622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209740, 37.574867, 40.122070>,  <44.724113, 37.388359, 39.618233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209740, 37.574867, 40.122070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228558, 37.872227, 39.855194>,  <45.239849, 38.050644, 39.695068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228558, 37.872227, 39.855194>,  <45.209740, 37.574867, 40.122070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228558, 37.872227, 39.855194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248721, 0.638173, 0.728610,
		0.967432, -0.200224, -0.154874,
		0.047049, 0.743401, -0.667189,
		45.242672, 38.095245, 39.655037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665684, 38.051422, 40.380913>,  <45.209740, 37.574867, 40.122070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665684, 38.051422, 40.380913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484985, 38.272411, 40.100712>,  <45.376568, 38.405006, 39.932590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484985, 38.272411, 40.100712>,  <45.665684, 38.051422, 40.380913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484985, 38.272411, 40.100712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010729, 0.788490, 0.614953,
		0.892082, 0.270287, -0.362125,
		-0.451746, 0.552474, -0.700498,
		45.349461, 38.438152, 39.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049362, 38.622581, 40.465130>,  <45.665684, 38.051422, 40.380913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049362, 38.622581, 40.465130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700451, 38.737942, 40.307167>,  <45.491104, 38.807159, 40.212391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700451, 38.737942, 40.307167>,  <46.049362, 38.622581, 40.465130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700451, 38.737942, 40.307167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000904, 0.808517, 0.588472,
		0.489003, 0.512957, -0.705515,
		-0.872282, 0.288403, -0.394904,
		45.438766, 38.824463, 40.188698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073055, 39.338055, 40.260201>,  <46.049362, 38.622581, 40.465130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073055, 39.338055, 40.260201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.682590, 39.278358, 40.323235>,  <45.448311, 39.242542, 40.361057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.682590, 39.278358, 40.323235>,  <46.073055, 39.338055, 40.260201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682590, 39.278358, 40.323235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029161, 0.809676, 0.586152,
		-0.215072, 0.567585, -0.794728,
		-0.976163, -0.149240, 0.157587,
		45.389740, 39.233585, 40.370510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832890, 40.090015, 40.328430>,  <46.073055, 39.338055, 40.260201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832890, 40.090015, 40.328430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548004, 39.868881, 40.501461>,  <45.377071, 39.736202, 40.605282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548004, 39.868881, 40.501461>,  <45.832890, 40.090015, 40.328430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548004, 39.868881, 40.501461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067523, 0.667343, 0.741684,
		-0.698705, 0.499030, -0.512621,
		-0.712216, -0.552832, 0.432580,
		45.334339, 39.703033, 40.631233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317593, 40.572243, 40.503033>,  <45.832890, 40.090015, 40.328430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317593, 40.572243, 40.503033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216068, 40.259548, 40.730881>,  <45.155155, 40.071930, 40.867592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216068, 40.259548, 40.730881>,  <45.317593, 40.572243, 40.503033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216068, 40.259548, 40.730881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127520, 0.610810, 0.781440,
		-0.958812, 0.125698, -0.254716,
		-0.253808, -0.781736, 0.569623,
		45.139927, 40.025028, 40.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777546, 40.754829, 40.820194>,  <45.317593, 40.572243, 40.503033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777546, 40.754829, 40.820194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906094, 40.472431, 41.072636>,  <44.983223, 40.302994, 41.224102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906094, 40.472431, 41.072636>,  <44.777546, 40.754829, 40.820194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906094, 40.472431, 41.072636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442764, 0.477095, 0.759171,
		-0.837067, -0.523406, -0.159264,
		0.321371, -0.705993, 0.631105,
		45.002506, 40.260632, 41.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181335, 40.457806, 41.070538>,  <44.777546, 40.754829, 40.820194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181335, 40.457806, 41.070538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493053, 40.418991, 41.318176>,  <44.680084, 40.395702, 41.466759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493053, 40.418991, 41.318176>,  <44.181335, 40.457806, 41.070538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493053, 40.418991, 41.318176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531106, 0.422089, 0.734689,
		-0.332609, -0.901346, 0.277393,
		0.779294, -0.097039, 0.619101,
		44.726841, 40.389881, 41.503906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.113937, 37.164768, 41.106323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824303, 36.891655, 41.145317>,  <39.650520, 36.727787, 41.168713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824303, 36.891655, 41.145317>,  <40.113937, 37.164768, 41.106323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824303, 36.891655, 41.145317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155774, -0.299585, -0.941267,
		0.671889, -0.666372, 0.323286,
		-0.724086, -0.682786, 0.097485,
		39.607079, 36.686821, 41.174561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374996, 36.490887, 40.842392>,  <40.113937, 37.164768, 41.106323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374996, 36.490887, 40.842392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979027, 36.434769, 40.850006>,  <39.741444, 36.401096, 40.854576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979027, 36.434769, 40.850006>,  <40.374996, 36.490887, 40.842392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979027, 36.434769, 40.850006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053114, -0.492620, -0.868622,
		0.131245, -0.858861, 0.495109,
		-0.989926, -0.140299, 0.019036,
		39.682049, 36.392677, 40.855717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224453, 35.657345, 40.972160>,  <40.374996, 36.490887, 40.842392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224453, 35.657345, 40.972160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943211, 35.848755, 40.761768>,  <39.774464, 35.963600, 40.635532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943211, 35.848755, 40.761768>,  <40.224453, 35.657345, 40.972160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943211, 35.848755, 40.761768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288825, -0.483741, -0.826181,
		-0.649787, -0.732809, 0.201910,
		-0.703105, 0.478525, -0.525982,
		39.732281, 35.992313, 40.603973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065258, 35.230755, 40.431900>,  <40.224453, 35.657345, 40.972160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065258, 35.230755, 40.431900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851761, 35.539967, 40.294758>,  <39.723663, 35.725494, 40.212475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851761, 35.539967, 40.294758>,  <40.065258, 35.230755, 40.431900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851761, 35.539967, 40.294758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057883, -0.437880, -0.897169,
		-0.843663, -0.459014, 0.278461,
		-0.533745, 0.773026, -0.342853,
		39.691639, 35.771873, 40.191902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407932, 34.942379, 40.171795>,  <40.065258, 35.230755, 40.431900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407932, 34.942379, 40.171795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477947, 35.293728, 39.993885>,  <39.519955, 35.504536, 39.887138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477947, 35.293728, 39.993885>,  <39.407932, 34.942379, 40.171795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477947, 35.293728, 39.993885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089720, -0.435641, -0.895638,
		-0.980465, 0.196676, 0.002554,
		0.175037, 0.878371, -0.444777,
		39.530457, 35.557240, 39.860451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932373, 35.032272, 39.696060>,  <39.407932, 34.942379, 40.171795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932373, 35.032272, 39.696060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196072, 35.291840, 39.544113>,  <39.354290, 35.447578, 39.452946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196072, 35.291840, 39.544113>,  <38.932373, 35.032272, 39.696060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196072, 35.291840, 39.544113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284624, -0.252251, -0.924856,
		-0.695976, 0.717830, 0.018401,
		0.659248, 0.648914, -0.379872,
		39.393845, 35.486515, 39.430153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597046, 35.389305, 39.204281>,  <38.932373, 35.032272, 39.696060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597046, 35.389305, 39.204281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987030, 35.434185, 39.127483>,  <39.221020, 35.461113, 39.081406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987030, 35.434185, 39.127483>,  <38.597046, 35.389305, 39.204281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987030, 35.434185, 39.127483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153337, -0.286089, -0.945855,
		-0.161049, 0.951612, -0.261721,
		0.974962, 0.112197, -0.191991,
		39.279518, 35.467846, 39.069885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543385, 35.684834, 38.631550>,  <38.597046, 35.389305, 39.204281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543385, 35.684834, 38.631550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922012, 35.558887, 38.603634>,  <39.149189, 35.483318, 38.586884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922012, 35.558887, 38.603634>,  <38.543385, 35.684834, 38.631550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922012, 35.558887, 38.603634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170975, -0.306451, -0.936405,
		0.273458, 0.898301, -0.343911,
		0.946566, -0.314868, -0.069785,
		39.205982, 35.464428, 38.582699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818653, 36.002480, 38.057724>,  <38.543385, 35.684834, 38.631550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818653, 36.002480, 38.057724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071255, 35.698780, 38.120663>,  <39.222816, 35.516560, 38.158424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071255, 35.698780, 38.120663>,  <38.818653, 36.002480, 38.057724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071255, 35.698780, 38.120663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022170, -0.185160, -0.982458,
		0.775059, 0.623910, -0.100096,
		0.631500, -0.759244, 0.157342,
		39.260704, 35.471008, 38.167866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388153, 36.095631, 37.602077>,  <38.818653, 36.002480, 38.057724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388153, 36.095631, 37.602077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355862, 35.704815, 37.680950>,  <39.336487, 35.470325, 37.728275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355862, 35.704815, 37.680950>,  <39.388153, 36.095631, 37.602077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355862, 35.704815, 37.680950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215986, -0.210272, -0.953486,
		0.973054, -0.034382, 0.228001,
		-0.080725, -0.977038, 0.197180,
		39.331642, 35.411705, 37.740105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971127, 35.818714, 37.236557>,  <39.388153, 36.095631, 37.602077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971127, 35.818714, 37.236557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776043, 35.476685, 37.306965>,  <39.658993, 35.271465, 37.349209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776043, 35.476685, 37.306965>,  <39.971127, 35.818714, 37.236557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776043, 35.476685, 37.306965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290869, -0.349262, -0.890736,
		0.823124, -0.383223, 0.419054,
		-0.487711, -0.855077, 0.176018,
		39.629730, 35.220161, 37.359772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427094, 35.190918, 36.967648>,  <39.971127, 35.818714, 37.236557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427094, 35.190918, 36.967648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047390, 35.066032, 36.982773>,  <39.819569, 34.991100, 36.991848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047390, 35.066032, 36.982773>,  <40.427094, 35.190918, 36.967648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047390, 35.066032, 36.982773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128075, -0.493574, -0.860222,
		0.287236, -0.811730, 0.508516,
		-0.949258, -0.312215, 0.037810,
		39.762611, 34.972366, 36.994118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350132, 34.467411, 37.186375>,  <40.427094, 35.190918, 36.967648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350132, 34.467411, 37.186375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076851, 34.572468, 36.913830>,  <39.912880, 34.635502, 36.750305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076851, 34.572468, 36.913830>,  <40.350132, 34.467411, 37.186375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076851, 34.572468, 36.913830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453622, -0.578552, -0.677868,
		-0.572229, -0.772206, 0.276139,
		-0.683214, 0.262633, -0.681354,
		39.871891, 34.651260, 36.709423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244102, 33.986588, 36.586773>,  <40.350132, 34.467411, 37.186375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244102, 33.986588, 36.586773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073822, 34.298347, 36.402897>,  <39.971653, 34.485405, 36.292572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073822, 34.298347, 36.402897>,  <40.244102, 33.986588, 36.586773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073822, 34.298347, 36.402897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278201, -0.370682, -0.886115,
		-0.861037, -0.505104, -0.059031,
		-0.425698, 0.779400, -0.459691,
		39.946114, 34.532169, 36.264988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687813, 33.781738, 36.107574>,  <40.244102, 33.986588, 36.586773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687813, 33.781738, 36.107574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900875, 34.110630, 36.027363>,  <40.028713, 34.307964, 35.979237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900875, 34.110630, 36.027363>,  <39.687813, 33.781738, 36.107574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900875, 34.110630, 36.027363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320742, -0.415381, -0.851225,
		-0.783199, 0.389094, -0.484980,
		0.532658, 0.822231, -0.200528,
		40.060673, 34.357300, 35.967205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104050, 33.170013, 36.083179>,  <39.687813, 33.781738, 36.107574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104050, 33.170013, 36.083179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400227, 32.969810, 35.903740>,  <40.577934, 32.849689, 35.796078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400227, 32.969810, 35.903740>,  <40.104050, 33.170013, 36.083179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400227, 32.969810, 35.903740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398859, -0.209996, 0.892644,
		-0.540978, -0.839878, 0.044142,
		0.740442, -0.500507, -0.448596,
		40.622360, 32.819660, 35.769161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041374, 32.481880, 36.319622>,  <40.104050, 33.170013, 36.083179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041374, 32.481880, 36.319622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419048, 32.575096, 36.226498>,  <40.645653, 32.631023, 36.170624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419048, 32.575096, 36.226498>,  <40.041374, 32.481880, 36.319622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419048, 32.575096, 36.226498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287263, -0.236652, 0.928157,
		0.161201, -0.943233, -0.290387,
		0.944190, 0.233038, -0.232807,
		40.702305, 32.645008, 36.156654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389370, 31.995209, 36.595383>,  <40.041374, 32.481880, 36.319622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389370, 31.995209, 36.595383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692951, 32.247917, 36.532318>,  <40.875099, 32.399540, 36.494480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692951, 32.247917, 36.532318>,  <40.389370, 31.995209, 36.595383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692951, 32.247917, 36.532318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416170, -0.284421, 0.863659,
		0.500791, -0.721091, -0.478786,
		0.758954, 0.631769, -0.157661,
		40.920639, 32.437447, 36.485020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855850, 31.698402, 36.966003>,  <40.389370, 31.995209, 36.595383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855850, 31.698402, 36.966003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024502, 32.058704, 36.924301>,  <41.125690, 32.274887, 36.899281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024502, 32.058704, 36.924301>,  <40.855850, 31.698402, 36.966003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024502, 32.058704, 36.924301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363186, -0.062401, 0.929625,
		0.830860, -0.429818, -0.353452,
		0.421625, 0.900757, -0.104258,
		41.150990, 32.328930, 36.893024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429512, 31.686127, 37.398109>,  <40.855850, 31.698402, 36.966003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429512, 31.686127, 37.398109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423260, 32.083996, 37.357349>,  <41.419506, 32.322716, 37.332893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423260, 32.083996, 37.357349>,  <41.429512, 31.686127, 37.398109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423260, 32.083996, 37.357349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129900, 0.103074, 0.986155,
		0.991404, 0.002181, -0.130819,
		-0.015635, 0.994671, -0.101905,
		41.418568, 32.382397, 37.326778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137592, 31.878891, 37.661884>,  <41.429512, 31.686127, 37.398109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137592, 31.878891, 37.661884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881557, 32.185616, 37.681000>,  <41.727936, 32.369652, 37.692471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881557, 32.185616, 37.681000>,  <42.137592, 31.878891, 37.661884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881557, 32.185616, 37.681000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227463, 0.129725, 0.965107,
		0.733855, 0.628628, -0.257457,
		-0.640092, 0.766811, 0.047790,
		41.689529, 32.415657, 37.695335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509750, 32.442932, 37.870724>,  <42.137592, 31.878891, 37.661884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509750, 32.442932, 37.870724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129635, 32.515003, 37.972301>,  <41.901566, 32.558247, 38.033249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129635, 32.515003, 37.972301>,  <42.509750, 32.442932, 37.870724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129635, 32.515003, 37.972301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290391, 0.218562, 0.931614,
		0.112353, 0.959045, -0.260019,
		-0.950289, 0.180177, 0.253942,
		41.844547, 32.569057, 38.048485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445541, 33.107475, 38.372452>,  <42.509750, 32.442932, 37.870724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445541, 33.107475, 38.372452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091991, 32.926250, 38.418930>,  <41.879864, 32.817516, 38.446815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091991, 32.926250, 38.418930>,  <42.445541, 33.107475, 38.372452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091991, 32.926250, 38.418930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092227, 0.074723, 0.992930,
		-0.458545, 0.888340, -0.024261,
		-0.883873, -0.453066, 0.116193,
		41.826828, 32.790329, 38.453789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188042, 33.462112, 38.855839>,  <42.445541, 33.107475, 38.372452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188042, 33.462112, 38.855839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962009, 33.132381, 38.869556>,  <41.826389, 32.934544, 38.877785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962009, 33.132381, 38.869556>,  <42.188042, 33.462112, 38.855839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962009, 33.132381, 38.869556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061476, 0.083518, 0.994608,
		-0.822744, 0.559923, -0.097870,
		-0.565078, -0.824325, 0.034292,
		41.792484, 32.885082, 38.879845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605183, 33.645916, 39.315300>,  <42.188042, 33.462112, 38.855839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605183, 33.645916, 39.315300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585625, 33.246525, 39.305099>,  <41.573891, 33.006889, 39.298981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585625, 33.246525, 39.305099>,  <41.605183, 33.645916, 39.315300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585625, 33.246525, 39.305099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243027, -0.012872, 0.969934,
		-0.968787, 0.053623, -0.242027,
		-0.048895, -0.998478, -0.025502,
		41.570957, 32.946980, 39.297447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014683, 33.478470, 39.735130>,  <41.605183, 33.645916, 39.315300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014683, 33.478470, 39.735130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238865, 33.147278, 39.727772>,  <41.373375, 32.948563, 39.723358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238865, 33.147278, 39.727772>,  <41.014683, 33.478470, 39.735130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238865, 33.147278, 39.727772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076446, -0.073839, 0.994336,
		-0.824647, -0.555878, -0.104679,
		0.560459, -0.827978, -0.018396,
		41.407001, 32.898884, 39.722252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676453, 33.001049, 40.296040>,  <41.014683, 33.478470, 39.735130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676453, 33.001049, 40.296040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029240, 32.825356, 40.227680>,  <41.240913, 32.719940, 40.186665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029240, 32.825356, 40.227680>,  <40.676453, 33.001049, 40.296040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029240, 32.825356, 40.227680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138879, -0.104315, 0.984800,
		-0.450388, -0.892295, -0.031001,
		0.881966, -0.439237, -0.170903,
		41.293831, 32.693584, 40.176411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683392, 32.356953, 40.704369>,  <40.676453, 33.001049, 40.296040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683392, 32.356953, 40.704369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056190, 32.487564, 40.641430>,  <41.279869, 32.565933, 40.603668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056190, 32.487564, 40.641430>,  <40.683392, 32.356953, 40.704369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056190, 32.487564, 40.641430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155215, 0.032748, 0.987338,
		0.327552, -0.944618, -0.020162,
		0.931997, 0.326534, -0.157345,
		41.335789, 32.585526, 40.594227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523556, 31.508675, 40.768276>,  <40.683392, 32.356953, 40.704369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523556, 31.508675, 40.768276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176186, 31.356018, 40.894890>,  <39.967766, 31.264423, 40.970860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176186, 31.356018, 40.894890>,  <40.523556, 31.508675, 40.768276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176186, 31.356018, 40.894890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353953, 0.030108, -0.934779,
		0.347222, -0.923819, -0.161230,
		-0.868421, -0.381643, 0.316535,
		39.915661, 31.241526, 40.989849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351227, 30.933010, 40.381653>,  <40.523556, 31.508675, 40.768276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351227, 30.933010, 40.381653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984936, 31.022713, 40.515007>,  <39.765160, 31.076534, 40.595020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984936, 31.022713, 40.515007>,  <40.351227, 30.933010, 40.381653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984936, 31.022713, 40.515007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326762, 0.067154, -0.942718,
		-0.233799, -0.972214, 0.011783,
		-0.915732, 0.224256, 0.333383,
		39.710217, 31.089989, 40.615021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852226, 30.445063, 40.008152>,  <40.351227, 30.933010, 40.381653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852226, 30.445063, 40.008152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645500, 30.757071, 40.149273>,  <39.521465, 30.944275, 40.233944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645500, 30.757071, 40.149273>,  <39.852226, 30.445063, 40.008152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645500, 30.757071, 40.149273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597176, -0.033188, -0.801424,
		-0.613417, -0.624876, 0.482960,
		-0.516819, 0.780019, 0.352803,
		39.490456, 30.991076, 40.255116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219284, 30.307215, 39.745476>,  <39.852226, 30.445063, 40.008152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219284, 30.307215, 39.745476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217869, 30.695309, 39.842335>,  <39.217018, 30.928165, 39.900448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217869, 30.695309, 39.842335>,  <39.219284, 30.307215, 39.745476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217869, 30.695309, 39.842335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652248, 0.181307, -0.736003,
		-0.757997, -0.160543, 0.632192,
		-0.003539, 0.970234, 0.242144,
		39.216808, 30.986380, 39.914978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513279, 30.497183, 39.792088>,  <39.219284, 30.307215, 39.745476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513279, 30.497183, 39.792088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715569, 30.835850, 39.725880>,  <38.836941, 31.039049, 39.686153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715569, 30.835850, 39.725880>,  <38.513279, 30.497183, 39.792088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715569, 30.835850, 39.725880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677062, 0.270624, -0.684361,
		-0.534631, 0.458168, 0.710107,
		0.505724, 0.846667, -0.165524,
		38.867287, 31.089849, 39.676224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044846, 31.052204, 39.864880>,  <38.513279, 30.497183, 39.792088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044846, 31.052204, 39.864880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338081, 31.210253, 39.643444>,  <38.514023, 31.305082, 39.510582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338081, 31.210253, 39.643444>,  <38.044846, 31.052204, 39.864880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338081, 31.210253, 39.643444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660150, 0.217532, -0.718945,
		-0.163646, 0.892502, 0.420309,
		0.733091, 0.395119, -0.553587,
		38.558010, 31.328789, 39.477367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867088, 31.715359, 39.651951>,  <38.044846, 31.052204, 39.864880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867088, 31.715359, 39.651951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144562, 31.595205, 39.390091>,  <38.311047, 31.523113, 39.232975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144562, 31.595205, 39.390091>,  <37.867088, 31.715359, 39.651951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144562, 31.595205, 39.390091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605920, 0.248056, -0.755863,
		0.389439, 0.920999, -0.009935,
		0.693685, -0.300382, -0.654654,
		38.352669, 31.505091, 39.193695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976227, 32.256195, 39.207146>,  <37.867088, 31.715359, 39.651951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976227, 32.256195, 39.207146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108845, 31.947403, 38.990215>,  <38.188416, 31.762127, 38.860058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108845, 31.947403, 38.990215>,  <37.976227, 32.256195, 39.207146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108845, 31.947403, 38.990215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401818, 0.404552, -0.821510,
		0.853592, 0.490285, -0.176069,
		0.331545, -0.771983, -0.542328,
		38.208309, 31.715809, 38.827518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166222, 32.545597, 38.595505>,  <37.976227, 32.256195, 39.207146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166222, 32.545597, 38.595505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151356, 32.158260, 38.496773>,  <38.142437, 31.925858, 38.437534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151356, 32.158260, 38.496773>,  <38.166222, 32.545597, 38.595505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151356, 32.158260, 38.496773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345192, 0.244240, -0.906194,
		0.937796, 0.051528, -0.343342,
		-0.037164, -0.968345, -0.246834,
		38.140205, 31.867758, 38.422722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518162, 32.596325, 37.971939>,  <38.166222, 32.545597, 38.595505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518162, 32.596325, 37.971939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319897, 32.248940, 37.968155>,  <38.200939, 32.040508, 37.965885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319897, 32.248940, 37.968155>,  <38.518162, 32.596325, 37.971939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319897, 32.248940, 37.968155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343756, 0.206167, -0.916148,
		0.797592, -0.450847, -0.400729,
		-0.495660, -0.868465, -0.009456,
		38.171200, 31.988400, 37.965317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682007, 32.309860, 37.334751>,  <38.518162, 32.596325, 37.971939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682007, 32.309860, 37.334751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336163, 32.138584, 37.439907>,  <38.128658, 32.035820, 37.503002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336163, 32.138584, 37.439907>,  <38.682007, 32.309860, 37.334751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336163, 32.138584, 37.439907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324061, 0.075373, -0.943029,
		0.383979, -0.900541, -0.203927,
		-0.864607, -0.428188, 0.262889,
		38.076782, 32.010128, 37.518772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649128, 31.832233, 36.808281>,  <38.682007, 32.309860, 37.334751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649128, 31.832233, 36.808281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289162, 31.888988, 36.973213>,  <38.073181, 31.923040, 37.072174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289162, 31.888988, 36.973213>,  <38.649128, 31.832233, 36.808281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289162, 31.888988, 36.973213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405853, 0.073289, -0.910995,
		-0.159477, -0.987166, -0.008369,
		-0.899916, 0.141886, 0.412332,
		38.019188, 31.931555, 37.096912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.965034, 31.456913, 44.537003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.599739, 31.607084, 44.473701>,  <40.380562, 31.697187, 44.435719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.599739, 31.607084, 44.473701>,  <40.965034, 31.456913, 44.537003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599739, 31.607084, 44.473701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094828, -0.573629, -0.813607,
		-0.396230, -0.728013, 0.559463,
		-0.913241, 0.375429, -0.158254,
		40.325768, 31.719713, 44.426224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442944, 30.868229, 44.279850>,  <40.965034, 31.456913, 44.537003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442944, 30.868229, 44.279850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266544, 31.213081, 44.180054>,  <40.160706, 31.419992, 44.120174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266544, 31.213081, 44.180054>,  <40.442944, 30.868229, 44.279850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266544, 31.213081, 44.180054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142015, -0.341511, -0.929087,
		-0.886201, -0.374295, 0.273042,
		-0.440999, 0.862133, -0.249491,
		40.134243, 31.471722, 44.105206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908051, 30.642262, 43.902435>,  <40.442944, 30.868229, 44.279850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908051, 30.642262, 43.902435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.943245, 31.029305, 43.807781>,  <39.964363, 31.261530, 43.750988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.943245, 31.029305, 43.807781>,  <39.908051, 30.642262, 43.902435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943245, 31.029305, 43.807781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226941, -0.211836, -0.950591,
		-0.969926, 0.137344, 0.200951,
		0.087990, 0.967607, -0.236634,
		39.969643, 31.319586, 43.736790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371777, 30.765173, 43.509480>,  <39.908051, 30.642262, 43.902435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371777, 30.765173, 43.509480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.623119, 31.064121, 43.423130>,  <39.773926, 31.243490, 43.371319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.623119, 31.064121, 43.423130>,  <39.371777, 30.765173, 43.509480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623119, 31.064121, 43.423130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207547, -0.106383, -0.972423,
		-0.749727, 0.655834, 0.088268,
		0.628358, 0.747372, -0.215874,
		39.811626, 31.288332, 43.358368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995476, 31.223173, 42.978638>,  <39.371777, 30.765173, 43.509480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995476, 31.223173, 42.978638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.387424, 31.297544, 42.949589>,  <39.622593, 31.342167, 42.932159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.387424, 31.297544, 42.949589>,  <38.995476, 31.223173, 42.978638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387424, 31.297544, 42.949589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076855, 0.015624, -0.996920,
		-0.184220, 0.982439, 0.029599,
		0.979876, 0.185927, -0.072627,
		39.681389, 31.353323, 42.927799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038960, 31.836340, 42.686989>,  <38.995476, 31.223173, 42.978638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038960, 31.836340, 42.686989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364162, 31.609470, 42.634335>,  <39.559284, 31.473349, 42.602741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364162, 31.609470, 42.634335>,  <39.038960, 31.836340, 42.686989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364162, 31.609470, 42.634335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080218, 0.114818, -0.990142,
		0.576697, 0.815556, 0.047851,
		0.813010, -0.567173, -0.131638,
		39.608067, 31.439318, 42.594845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416542, 32.239109, 42.258202>,  <39.038960, 31.836340, 42.686989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416542, 32.239109, 42.258202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593056, 31.880331, 42.247246>,  <39.698963, 31.665064, 42.240673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593056, 31.880331, 42.247246>,  <39.416542, 32.239109, 42.258202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593056, 31.880331, 42.247246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090255, 0.074729, -0.993111,
		0.892817, 0.435772, 0.113931,
		0.441284, -0.896949, -0.027388,
		39.725441, 31.611246, 42.239029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951733, 32.323929, 41.795010>,  <39.416542, 32.239109, 42.258202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951733, 32.323929, 41.795010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.914936, 31.925871, 41.809010>,  <39.892857, 31.687037, 41.817410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.914936, 31.925871, 41.809010>,  <39.951733, 32.323929, 41.795010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914936, 31.925871, 41.809010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005632, -0.034629, -0.999384,
		0.995744, -0.092132, -0.002419,
		-0.091992, -0.995144, 0.035001,
		39.887337, 31.627327, 41.819511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344784, 32.015785, 41.239113>,  <39.951733, 32.323929, 41.795010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344784, 32.015785, 41.239113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086300, 31.720078, 41.314903>,  <39.931210, 31.542654, 41.360378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086300, 31.720078, 41.314903>,  <40.344784, 32.015785, 41.239113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086300, 31.720078, 41.314903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221814, -0.055620, -0.973501,
		0.730216, -0.671112, -0.128038,
		-0.646207, -0.739267, 0.189476,
		39.892437, 31.498297, 41.371746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033348, 31.940979, 41.244370>,  <40.344784, 32.015785, 41.239113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033348, 31.940979, 41.244370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317039, 32.205757, 41.147354>,  <41.487255, 32.364624, 41.089146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317039, 32.205757, 41.147354>,  <41.033348, 31.940979, 41.244370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317039, 32.205757, 41.147354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221229, 0.117685, 0.968095,
		0.669370, -0.740255, -0.062976,
		0.709226, 0.661946, -0.242541,
		41.529808, 32.404343, 41.074593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698383, 31.776615, 41.562737>,  <41.033348, 31.940979, 41.244370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698383, 31.776615, 41.562737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766037, 32.159576, 41.469124>,  <41.806629, 32.389355, 41.412956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766037, 32.159576, 41.469124>,  <41.698383, 31.776615, 41.562737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766037, 32.159576, 41.469124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337890, 0.166735, 0.926299,
		0.925864, -0.235746, -0.295297,
		0.169135, 0.957405, -0.234030,
		41.816776, 32.446796, 41.398914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356190, 31.908413, 41.844456>,  <41.698383, 31.776615, 41.562737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356190, 31.908413, 41.844456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.182693, 32.265709, 41.797150>,  <42.078594, 32.480087, 41.768764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.182693, 32.265709, 41.797150>,  <42.356190, 31.908413, 41.844456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182693, 32.265709, 41.797150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517317, 0.354339, 0.778991,
		0.737732, 0.276703, -0.615781,
		-0.433744, 0.893241, -0.118265,
		42.052570, 32.533680, 41.761669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944946, 32.305725, 41.839870>,  <42.356190, 31.908413, 41.844456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944946, 32.305725, 41.839870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.604481, 32.499634, 41.920383>,  <42.400200, 32.615978, 41.968693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.604481, 32.499634, 41.920383>,  <42.944946, 32.305725, 41.839870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604481, 32.499634, 41.920383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333431, 0.203183, 0.920620,
		0.405391, 0.850714, -0.334580,
		-0.851165, 0.484770, 0.201286,
		42.349133, 32.645065, 41.980770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300007, 32.944523, 42.214752>,  <42.944946, 32.305725, 41.839870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300007, 32.944523, 42.214752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.905754, 32.944557, 42.282310>,  <42.669201, 32.944580, 42.322845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.905754, 32.944557, 42.282310>,  <43.300007, 32.944523, 42.214752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905754, 32.944557, 42.282310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157045, 0.368474, 0.916277,
		-0.062154, 0.929638, -0.363194,
		-0.985634, 0.000088, 0.168897,
		42.610065, 32.944584, 42.332981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071003, 33.555962, 42.432018>,  <43.300007, 32.944523, 42.214752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071003, 33.555962, 42.432018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.774319, 33.320263, 42.560181>,  <42.596310, 33.178844, 42.637077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.774319, 33.320263, 42.560181>,  <43.071003, 33.555962, 42.432018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774319, 33.320263, 42.560181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147595, 0.322604, 0.934956,
		-0.654283, 0.740754, -0.152308,
		-0.741707, -0.589246, 0.320406,
		42.551807, 33.143490, 42.656303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420254, 33.937099, 42.685329>,  <43.071003, 33.555962, 42.432018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420254, 33.937099, 42.685329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.478577, 33.583157, 42.862312>,  <42.513569, 33.370792, 42.968502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.478577, 33.583157, 42.862312>,  <42.420254, 33.937099, 42.685329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478577, 33.583157, 42.862312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326412, 0.465219, 0.822816,
		-0.933914, 0.024451, 0.356660,
		0.145807, -0.884858, 0.442456,
		42.522320, 33.317699, 42.995049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454586, 34.142365, 43.374458>,  <42.420254, 33.937099, 42.685329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454586, 34.142365, 43.374458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.544556, 33.759418, 43.446976>,  <42.598537, 33.529652, 43.490486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.544556, 33.759418, 43.446976>,  <42.454586, 34.142365, 43.374458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544556, 33.759418, 43.446976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342488, 0.251871, 0.905132,
		-0.912201, -0.141498, 0.384537,
		0.224928, -0.957361, 0.181295,
		42.612034, 33.472210, 43.501366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343037, 34.086117, 44.088764>,  <42.454586, 34.142365, 43.374458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343037, 34.086117, 44.088764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.569447, 33.763443, 44.020782>,  <42.705292, 33.569839, 43.979992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.569447, 33.763443, 44.020782>,  <42.343037, 34.086117, 44.088764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569447, 33.763443, 44.020782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352189, 0.050215, 0.934581,
		-0.745374, -0.588850, 0.312527,
		0.566022, -0.806681, -0.169957,
		42.739254, 33.521439, 43.969795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153149, 33.629410, 44.618099>,  <42.343037, 34.086117, 44.088764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153149, 33.629410, 44.618099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.514805, 33.511497, 44.494400>,  <42.731796, 33.440750, 44.420181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.514805, 33.511497, 44.494400>,  <42.153149, 33.629410, 44.618099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514805, 33.511497, 44.494400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311505, -0.040549, 0.949379,
		-0.292401, -0.954704, 0.055165,
		0.904139, -0.294783, -0.309251,
		42.786045, 33.423061, 44.401627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315178, 33.005985, 45.007271>,  <42.153149, 33.629410, 44.618099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315178, 33.005985, 45.007271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651974, 33.176628, 44.875168>,  <42.854050, 33.279015, 44.795906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651974, 33.176628, 44.875168>,  <42.315178, 33.005985, 45.007271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651974, 33.176628, 44.875168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325146, 0.087226, 0.941632,
		0.430511, -0.900223, -0.065265,
		0.841986, 0.426604, -0.330255,
		42.904572, 33.304607, 44.776093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722099, 32.646442, 45.365875>,  <42.315178, 33.005985, 45.007271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722099, 32.646442, 45.365875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.899948, 32.982208, 45.240852>,  <43.006657, 33.183666, 45.165836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.899948, 32.982208, 45.240852>,  <42.722099, 32.646442, 45.365875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899948, 32.982208, 45.240852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364269, 0.149338, 0.919242,
		0.818300, -0.522576, -0.239372,
		0.444626, 0.839412, -0.312562,
		43.033337, 33.234032, 45.147083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379951, 32.583271, 45.648510>,  <42.722099, 32.646442, 45.365875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379951, 32.583271, 45.648510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.334579, 32.968258, 45.549885>,  <43.307354, 33.199249, 45.490711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.334579, 32.968258, 45.549885>,  <43.379951, 32.583271, 45.648510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334579, 32.968258, 45.549885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203373, 0.265401, 0.942445,
		0.972508, 0.056760, -0.225845,
		-0.113433, 0.962466, -0.246562,
		43.300549, 33.256996, 45.475918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026436, 32.938770, 45.850819>,  <43.379951, 32.583271, 45.648510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026436, 32.938770, 45.850819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.745296, 33.223293, 45.848198>,  <43.576614, 33.394009, 45.846626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.745296, 33.223293, 45.848198>,  <44.026436, 32.938770, 45.850819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745296, 33.223293, 45.848198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304710, 0.309387, 0.900795,
		0.642774, 0.631123, -0.434195,
		-0.702846, 0.711312, -0.006556,
		43.534443, 33.436687, 45.846230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.711658, 35.832180, 47.743160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874035, 35.468143, 47.709839>,  <34.971462, 35.249722, 47.689846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874035, 35.468143, 47.709839>,  <34.711658, 35.832180, 47.743160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874035, 35.468143, 47.709839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253323, -0.024479, -0.967072,
		0.878087, 0.413679, -0.240484,
		0.405945, -0.910093, -0.083300,
		34.995819, 35.195114, 47.684849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290096, 35.789558, 47.144188>,  <34.711658, 35.832180, 47.743160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290096, 35.789558, 47.144188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130692, 35.430168, 47.217869>,  <35.035049, 35.214535, 47.262077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130692, 35.430168, 47.217869>,  <35.290096, 35.789558, 47.144188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130692, 35.430168, 47.217869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213742, -0.104326, -0.971303,
		0.891910, -0.426445, -0.150467,
		-0.398510, -0.898477, 0.184199,
		35.011139, 35.160625, 47.273129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582638, 35.299828, 46.717182>,  <35.290096, 35.789558, 47.144188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582638, 35.299828, 46.717182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239590, 35.131241, 46.835064>,  <35.033760, 35.030090, 46.905792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239590, 35.131241, 46.835064>,  <35.582638, 35.299828, 46.717182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239590, 35.131241, 46.835064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241825, -0.175246, -0.954363,
		0.453876, -0.889751, 0.048375,
		-0.857623, -0.421464, 0.294704,
		34.982304, 35.004803, 46.923473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590107, 34.727200, 46.369339>,  <35.582638, 35.299828, 46.717182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590107, 34.727200, 46.369339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.208572, 34.768578, 46.482113>,  <34.979652, 34.793404, 46.549778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.208572, 34.768578, 46.482113>,  <35.590107, 34.727200, 46.369339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208572, 34.768578, 46.482113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300260, -0.346195, -0.888815,
		0.005666, -0.932443, 0.361274,
		-0.953841, 0.103440, 0.281937,
		34.922421, 34.799610, 46.566692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296780, 34.035378, 46.411663>,  <35.590107, 34.727200, 46.369339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296780, 34.035378, 46.411663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020557, 34.303783, 46.303688>,  <34.854824, 34.464828, 46.238903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020557, 34.303783, 46.303688>,  <35.296780, 34.035378, 46.411663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020557, 34.303783, 46.303688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003296, -0.376127, -0.926562,
		-0.723269, -0.638956, 0.261950,
		-0.690559, 0.671017, -0.269935,
		34.813389, 34.505089, 46.222706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124809, 33.701477, 45.817142>,  <35.296780, 34.035378, 46.411663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124809, 33.701477, 45.817142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872566, 34.010948, 45.792599>,  <34.721222, 34.196629, 45.777874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872566, 34.010948, 45.792599>,  <35.124809, 33.701477, 45.817142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872566, 34.010948, 45.792599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024343, -0.098736, -0.994816,
		-0.775721, -0.625844, 0.081098,
		-0.630607, 0.773674, -0.061357,
		34.683384, 34.243050, 45.774193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604240, 33.460205, 45.475689>,  <35.124809, 33.701477, 45.817142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604240, 33.460205, 45.475689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.571423, 33.856220, 45.429924>,  <34.551731, 34.093830, 45.402466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.571423, 33.856220, 45.429924>,  <34.604240, 33.460205, 45.475689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571423, 33.856220, 45.429924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022650, -0.116625, -0.992918,
		-0.996371, -0.078874, 0.031994,
		-0.082047, 0.990039, -0.114415,
		34.546810, 34.153233, 45.395599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158890, 33.493103, 45.028889>,  <34.604240, 33.460205, 45.475689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158890, 33.493103, 45.028889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318348, 33.859158, 45.004860>,  <34.414024, 34.078789, 44.990444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318348, 33.859158, 45.004860>,  <34.158890, 33.493103, 45.028889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318348, 33.859158, 45.004860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004013, -0.063762, -0.997957,
		-0.917094, 0.398076, -0.021746,
		0.398650, 0.915134, -0.060073,
		34.437943, 34.133698, 44.986839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789894, 33.741638, 44.459690>,  <34.158890, 33.493103, 45.028889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789894, 33.741638, 44.459690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089752, 34.003551, 44.498241>,  <34.269669, 34.160702, 44.521370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089752, 34.003551, 44.498241>,  <33.789894, 33.741638, 44.459690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089752, 34.003551, 44.498241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025037, 0.117458, -0.992762,
		-0.661367, 0.746632, 0.071658,
		0.749645, 0.654786, 0.096376,
		34.314644, 34.199986, 44.527153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508255, 34.393326, 44.228893>,  <33.789894, 33.741638, 44.459690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508255, 34.393326, 44.228893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905552, 34.376308, 44.185699>,  <34.143929, 34.366096, 44.159782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905552, 34.376308, 44.185699>,  <33.508255, 34.393326, 44.228893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905552, 34.376308, 44.185699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104029, 0.086289, -0.990824,
		0.051471, 0.995361, 0.081280,
		0.993241, -0.042543, -0.107988,
		34.203526, 34.363544, 44.153301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627396, 34.773121, 43.640663>,  <33.508255, 34.393326, 44.228893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627396, 34.773121, 43.640663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977364, 34.582249, 43.673676>,  <34.187344, 34.467724, 43.693481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977364, 34.582249, 43.673676>,  <33.627396, 34.773121, 43.640663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977364, 34.582249, 43.673676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158769, 0.121650, -0.979793,
		0.457498, 0.870345, 0.182195,
		0.874922, -0.477180, 0.082529,
		34.239841, 34.439095, 43.698433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047012, 35.083149, 43.182732>,  <33.627396, 34.773121, 43.640663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047012, 35.083149, 43.182732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237495, 34.737812, 43.249508>,  <34.351784, 34.530609, 43.289574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237495, 34.737812, 43.249508>,  <34.047012, 35.083149, 43.182732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237495, 34.737812, 43.249508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116967, -0.125972, -0.985114,
		0.871520, 0.488644, 0.040994,
		0.476206, -0.863341, 0.166943,
		34.380356, 34.478809, 43.299591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749973, 35.065006, 42.866779>,  <34.047012, 35.083149, 43.182732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749973, 35.065006, 42.866779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614208, 34.689392, 42.888725>,  <34.532749, 34.464024, 42.901894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614208, 34.689392, 42.888725>,  <34.749973, 35.065006, 42.866779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614208, 34.689392, 42.888725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125675, -0.012530, -0.991992,
		0.932205, -0.343587, -0.113761,
		-0.339410, -0.939037, 0.054861,
		34.512386, 34.407681, 42.905182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114632, 34.729485, 42.405647>,  <34.749973, 35.065006, 42.866779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114632, 34.729485, 42.405647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823235, 34.463654, 42.472145>,  <34.648396, 34.304157, 42.512043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823235, 34.463654, 42.472145>,  <35.114632, 34.729485, 42.405647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823235, 34.463654, 42.472145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025487, -0.216212, -0.976014,
		0.684576, -0.715259, 0.140571,
		-0.728495, -0.664573, 0.166243,
		34.604687, 34.264282, 42.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789982, 34.799423, 42.317444>,  <35.114632, 34.729485, 42.405647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789982, 34.799423, 42.317444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913467, 35.166336, 42.216812>,  <35.987560, 35.386482, 42.156433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913467, 35.166336, 42.216812>,  <35.789982, 34.799423, 42.317444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913467, 35.166336, 42.216812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152367, 0.308771, 0.938853,
		0.938871, -0.251506, 0.235086,
		0.308715, 0.917281, -0.251575,
		36.006081, 35.441521, 42.141338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387596, 34.980003, 42.710361>,  <35.789982, 34.799423, 42.317444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387596, 34.980003, 42.710361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234055, 35.330208, 42.592960>,  <36.141930, 35.540329, 42.522518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234055, 35.330208, 42.592960>,  <36.387596, 34.980003, 42.710361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234055, 35.330208, 42.592960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056668, 0.339592, 0.938864,
		0.921655, 0.343751, -0.179966,
		-0.383851, 0.875507, -0.293507,
		36.118900, 35.592861, 42.504910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868778, 35.483459, 42.881184>,  <36.387596, 34.980003, 42.710361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868778, 35.483459, 42.881184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515457, 35.670593, 42.869110>,  <36.303463, 35.782871, 42.861866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515457, 35.670593, 42.869110>,  <36.868778, 35.483459, 42.881184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515457, 35.670593, 42.869110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188281, 0.412977, 0.891067,
		0.429333, 0.781399, -0.452868,
		-0.883303, 0.467831, -0.030182,
		36.250465, 35.810944, 42.860054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041737, 36.197975, 42.926174>,  <36.868778, 35.483459, 42.881184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041737, 36.197975, 42.926174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651443, 36.196289, 43.013744>,  <36.417267, 36.195278, 43.066288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651443, 36.196289, 43.013744>,  <37.041737, 36.197975, 42.926174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651443, 36.196289, 43.013744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188492, 0.492677, 0.849553,
		-0.111441, 0.870202, -0.479927,
		-0.975731, -0.004212, 0.218930,
		36.358723, 36.195026, 43.079422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815411, 36.900219, 43.226284>,  <37.041737, 36.197975, 42.926174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815411, 36.900219, 43.226284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.529514, 36.652996, 43.357220>,  <36.357975, 36.504662, 43.435780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.529514, 36.652996, 43.357220>,  <36.815411, 36.900219, 43.226284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529514, 36.652996, 43.357220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064141, 0.408130, 0.910668,
		-0.696444, 0.671886, -0.252064,
		-0.714740, -0.618061, 0.327335,
		36.315094, 36.467579, 43.455421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337402, 37.262489, 43.587391>,  <36.815411, 36.900219, 43.226284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337402, 37.262489, 43.587391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.267086, 36.894997, 43.728832>,  <36.224895, 36.674503, 43.813698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.267086, 36.894997, 43.728832>,  <36.337402, 37.262489, 43.587391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267086, 36.894997, 43.728832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042337, 0.365919, 0.929683,
		-0.983516, 0.148463, -0.103223,
		-0.175794, -0.918728, 0.353602,
		36.214348, 36.619377, 43.834911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921597, 37.383377, 44.115627>,  <36.337402, 37.262489, 43.587391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921597, 37.383377, 44.115627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053780, 37.014919, 44.197887>,  <36.133087, 36.793846, 44.247242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053780, 37.014919, 44.197887>,  <35.921597, 37.383377, 44.115627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053780, 37.014919, 44.197887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075825, 0.191273, 0.978603,
		-0.940771, -0.338976, -0.006639,
		0.330453, -0.921146, 0.205647,
		36.152916, 36.738575, 44.259583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483326, 37.273640, 44.744156>,  <35.921597, 37.383377, 44.115627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483326, 37.273640, 44.744156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760258, 36.985241, 44.732521>,  <35.926418, 36.812202, 44.725540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760258, 36.985241, 44.732521>,  <35.483326, 37.273640, 44.744156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760258, 36.985241, 44.732521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068555, -0.105848, 0.992017,
		-0.718317, -0.684808, -0.122709,
		0.692330, -0.720995, -0.029086,
		35.967957, 36.768944, 44.723797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346291, 36.718945, 45.245319>,  <35.483326, 37.273640, 44.744156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346291, 36.718945, 45.245319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741505, 36.709194, 45.184406>,  <35.978634, 36.703346, 45.147858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741505, 36.709194, 45.184406>,  <35.346291, 36.718945, 45.245319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741505, 36.709194, 45.184406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152870, 0.024249, 0.987949,
		-0.020389, -0.999409, 0.027685,
		0.988036, -0.024375, -0.152285,
		36.037914, 36.701881, 45.138721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646381, 36.087620, 45.632740>,  <35.346291, 36.718945, 45.245319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646381, 36.087620, 45.632740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923035, 36.372265, 45.583336>,  <36.089027, 36.543053, 45.553696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923035, 36.372265, 45.583336>,  <35.646381, 36.087620, 45.632740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923035, 36.372265, 45.583336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194936, -0.019265, 0.980627,
		0.695444, -0.702311, -0.152043,
		0.691635, 0.711609, -0.123508,
		36.130524, 36.585747, 45.546284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161438, 35.970142, 46.098679>,  <35.646381, 36.087620, 45.632740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161438, 35.970142, 46.098679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258640, 36.346409, 46.003937>,  <36.316959, 36.572166, 45.947090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258640, 36.346409, 46.003937>,  <36.161438, 35.970142, 46.098679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258640, 36.346409, 46.003937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586789, 0.051883, 0.808076,
		0.772417, -0.335349, -0.539363,
		0.243004, 0.940664, -0.236854,
		36.331543, 36.628609, 45.932880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891392, 35.961361, 46.095932>,  <36.161438, 35.970142, 46.098679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891392, 35.961361, 46.095932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741821, 36.327579, 46.155193>,  <36.652081, 36.547310, 46.190750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741821, 36.327579, 46.155193>,  <36.891392, 35.961361, 46.095932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741821, 36.327579, 46.155193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539394, 0.084732, 0.837780,
		0.754476, 0.393178, -0.525525,
		-0.373926, 0.915550, 0.148149,
		36.629642, 36.602245, 46.199638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411228, 36.349991, 46.307194>,  <36.891392, 35.961361, 46.095932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411228, 36.349991, 46.307194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.114601, 36.570114, 46.460678>,  <36.936623, 36.702187, 46.552769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.114601, 36.570114, 46.460678>,  <37.411228, 36.349991, 46.307194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114601, 36.570114, 46.460678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465423, 0.010086, 0.885031,
		0.483169, 0.834901, -0.263605,
		-0.741572, 0.550307, 0.383709,
		36.892128, 36.735207, 46.575790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728107, 36.953583, 46.602131>,  <37.411228, 36.349991, 46.307194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728107, 36.953583, 46.602131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360729, 36.932903, 46.758995>,  <37.140305, 36.920494, 46.853115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360729, 36.932903, 46.758995>,  <37.728107, 36.953583, 46.602131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360729, 36.932903, 46.758995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392652, 0.000706, 0.919687,
		-0.047827, 0.998662, 0.019653,
		-0.918443, -0.051703, 0.392160,
		37.085197, 36.917393, 46.876644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005100, 37.632324, 46.524185>,  <37.728107, 36.953583, 46.602131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005100, 37.632324, 46.524185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389034, 37.743698, 46.510391>,  <38.619396, 37.810520, 46.502113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389034, 37.743698, 46.510391>,  <38.005100, 37.632324, 46.524185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389034, 37.743698, 46.510391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045376, 0.032763, -0.998433,
		-0.276866, 0.959897, 0.044081,
		0.959836, 0.278433, -0.034486,
		38.676987, 37.827229, 46.500046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016491, 38.136772, 46.000095>,  <38.005100, 37.632324, 46.524185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016491, 38.136772, 46.000095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384571, 37.984047, 46.034634>,  <38.605419, 37.892410, 46.055359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384571, 37.984047, 46.034634>,  <38.016491, 38.136772, 46.000095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384571, 37.984047, 46.034634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116180, 0.055734, -0.991663,
		0.373818, 0.922557, 0.095646,
		0.920197, -0.381813, 0.086348,
		38.660629, 37.869503, 46.060539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368992, 38.391979, 45.502022>,  <38.016491, 38.136772, 46.000095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368992, 38.391979, 45.502022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578564, 38.066757, 45.603561>,  <38.704308, 37.871624, 45.664486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578564, 38.066757, 45.603561>,  <38.368992, 38.391979, 45.502022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578564, 38.066757, 45.603561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121375, -0.223718, -0.967067,
		0.843070, 0.537485, -0.018528,
		0.523929, -0.813056, 0.253847,
		38.735741, 37.822842, 45.679714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934612, 38.313332, 44.958481>,  <38.368992, 38.391979, 45.502022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934612, 38.313332, 44.958481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.969769, 37.959259, 45.141224>,  <38.990864, 37.746815, 45.250870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.969769, 37.959259, 45.141224>,  <38.934612, 38.313332, 44.958481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969769, 37.959259, 45.141224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412366, -0.385161, -0.825594,
		0.906769, 0.260958, 0.331167,
		0.087893, -0.885185, 0.456862,
		38.996136, 37.693703, 45.278282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621105, 38.056465, 44.844131>,  <38.934612, 38.313332, 44.958481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621105, 38.056465, 44.844131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379841, 37.746067, 44.917919>,  <39.235085, 37.559826, 44.962193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379841, 37.746067, 44.917919>,  <39.621105, 38.056465, 44.844131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379841, 37.746067, 44.917919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390903, -0.489179, -0.779679,
		0.695267, -0.398160, 0.598391,
		-0.603157, -0.775998, 0.184468,
		39.198895, 37.513268, 44.973259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988579, 37.445992, 44.665672>,  <39.621105, 38.056465, 44.844131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988579, 37.445992, 44.665672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.620667, 37.289082, 44.661133>,  <39.399921, 37.194935, 44.658409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.620667, 37.289082, 44.661133>,  <39.988579, 37.445992, 44.665672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620667, 37.289082, 44.661133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182498, -0.401944, -0.897294,
		0.347422, -0.827383, 0.441288,
		-0.919778, -0.392273, -0.011351,
		39.344734, 37.171398, 44.657726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974915, 36.842064, 44.316574>,  <39.988579, 37.445992, 44.665672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974915, 36.842064, 44.316574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587399, 36.941216, 44.316490>,  <39.354889, 37.000706, 44.316441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587399, 36.941216, 44.316490>,  <39.974915, 36.842064, 44.316574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587399, 36.941216, 44.316490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083860, -0.328564, -0.940751,
		-0.233260, -0.911374, 0.339097,
		-0.968792, 0.247876, -0.000213,
		39.296761, 37.015579, 44.316425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544247, 36.287315, 43.999561>,  <39.974915, 36.842064, 44.316574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544247, 36.287315, 43.999561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305519, 36.606598, 43.966885>,  <39.162285, 36.798168, 43.947281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305519, 36.606598, 43.966885>,  <39.544247, 36.287315, 43.999561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305519, 36.606598, 43.966885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367469, -0.362409, -0.856519,
		-0.713287, -0.481166, 0.509609,
		-0.596815, 0.798209, -0.081688,
		39.126476, 36.846062, 43.942379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840935, 36.026695, 43.812218>,  <39.544247, 36.287315, 43.999561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840935, 36.026695, 43.812218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.890453, 36.408535, 43.703831>,  <38.920166, 36.637638, 43.638798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.890453, 36.408535, 43.703831>,  <38.840935, 36.026695, 43.812218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890453, 36.408535, 43.703831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008908, -0.274126, -0.961652,
		-0.992267, 0.116636, -0.042439,
		0.123797, 0.954594, -0.270967,
		38.927593, 36.694912, 43.622540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355736, 36.182655, 43.219917>,  <38.840935, 36.026695, 43.812218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355736, 36.182655, 43.219917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619480, 36.481689, 43.188049>,  <38.777729, 36.661110, 43.168926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619480, 36.481689, 43.188049>,  <38.355736, 36.182655, 43.219917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619480, 36.481689, 43.188049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039869, -0.071057, -0.996675,
		-0.750766, 0.660349, -0.017047,
		0.659365, 0.747590, -0.079675,
		38.817291, 36.705967, 43.164146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243729, 36.433620, 42.645691>,  <38.355736, 36.182655, 43.219917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243729, 36.433620, 42.645691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592930, 36.621418, 42.698509>,  <38.802452, 36.734097, 42.730202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592930, 36.621418, 42.698509>,  <38.243729, 36.433620, 42.645691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592930, 36.621418, 42.698509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106485, 0.080728, -0.991032,
		-0.475940, 0.879239, 0.020482,
		0.873008, 0.469490, 0.132048,
		38.854832, 36.762264, 42.738125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288097, 36.963188, 42.157665>,  <38.243729, 36.433620, 42.645691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288097, 36.963188, 42.157665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.667625, 36.867332, 42.239941>,  <38.895344, 36.809818, 42.289307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.667625, 36.867332, 42.239941>,  <38.288097, 36.963188, 42.157665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667625, 36.867332, 42.239941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198126, -0.055493, -0.978605,
		0.245930, 0.969274, -0.005174,
		0.948823, -0.239643, 0.205685,
		38.952271, 36.795441, 42.301647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685997, 37.486568, 41.768494>,  <38.288097, 36.963188, 42.157665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685997, 37.486568, 41.768494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.897282, 37.159817, 41.861187>,  <39.024052, 36.963764, 41.916801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.897282, 37.159817, 41.861187>,  <38.685997, 37.486568, 41.768494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897282, 37.159817, 41.861187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252490, -0.109464, -0.961388,
		0.810706, 0.566324, 0.148434,
		0.528209, -0.816881, 0.231734,
		39.055744, 36.914753, 41.930706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388000, 37.565960, 41.519299>,  <38.685997, 37.486568, 41.768494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388000, 37.565960, 41.519299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.313339, 37.173260, 41.533905>,  <39.268543, 36.937641, 41.542667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.313339, 37.173260, 41.533905>,  <39.388000, 37.565960, 41.519299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313339, 37.173260, 41.533905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400894, -0.110050, -0.909491,
		0.896908, -0.155123, 0.414117,
		-0.186656, -0.981746, 0.036517,
		39.257343, 36.878735, 41.544861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.892275, 28.418140, 30.902847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865669, 28.358404, 30.508228>,  <29.849707, 28.322563, 30.271458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865669, 28.358404, 30.508228>,  <29.892275, 28.418140, 30.902847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865669, 28.358404, 30.508228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637484, 0.766986, -0.073124,
		0.767588, 0.624045, -0.146208,
		-0.066507, -0.149334, -0.986547,
		29.845715, 28.313602, 30.212265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141933, 29.015862, 30.522192>,  <29.892275, 28.418140, 30.902847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141933, 29.015862, 30.522192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895559, 28.798771, 30.293779>,  <29.747736, 28.668516, 30.156733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895559, 28.798771, 30.293779>,  <30.141933, 29.015862, 30.522192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895559, 28.798771, 30.293779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642676, 0.765373, -0.034222,
		0.455624, 0.345908, -0.820216,
		-0.615934, -0.542726, -0.571029,
		29.710779, 28.635954, 30.122471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081631, 29.448164, 29.962198>,  <30.141933, 29.015862, 30.522192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081631, 29.448164, 29.962198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774145, 29.193308, 29.984583>,  <29.589653, 29.040394, 29.998014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774145, 29.193308, 29.984583>,  <30.081631, 29.448164, 29.962198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774145, 29.193308, 29.984583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625982, 0.767424, 0.138585,
		-0.131245, 0.071501, -0.988768,
		-0.768714, -0.637140, 0.055962,
		29.543531, 29.002167, 30.001371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659641, 29.871361, 29.619844>,  <30.081631, 29.448164, 29.962198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659641, 29.871361, 29.619844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401012, 29.594925, 29.749052>,  <29.245836, 29.429064, 29.826576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401012, 29.594925, 29.749052>,  <29.659641, 29.871361, 29.619844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401012, 29.594925, 29.749052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670848, 0.716696, 0.190553,
		-0.363194, -0.093490, -0.927011,
		-0.646570, -0.691091, 0.323017,
		29.207041, 29.387598, 29.845957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053343, 30.109188, 29.353897>,  <29.659641, 29.871361, 29.619844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053343, 30.109188, 29.353897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.962669, 29.844690, 29.639936>,  <28.908264, 29.685991, 29.811560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.962669, 29.844690, 29.639936>,  <29.053343, 30.109188, 29.353897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962669, 29.844690, 29.639936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680766, 0.632650, 0.369204,
		-0.696542, -0.403123, -0.593566,
		-0.226685, -0.661246, 0.715100,
		28.894663, 29.646317, 29.854465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338861, 29.988914, 29.356230>,  <29.053343, 30.109188, 29.353897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338861, 29.988914, 29.356230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458158, 29.909807, 29.729740>,  <28.529737, 29.862343, 29.953846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458158, 29.909807, 29.729740>,  <28.338861, 29.988914, 29.356230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458158, 29.909807, 29.729740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593926, 0.727383, 0.343753,
		-0.747196, -0.657117, 0.099477,
		0.298244, -0.197769, 0.933777,
		28.547632, 29.850477, 30.009872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717100, 30.027517, 29.846087>,  <28.338861, 29.988914, 29.356230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717100, 30.027517, 29.846087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015745, 30.014732, 30.111883>,  <28.194931, 30.007061, 30.271360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015745, 30.014732, 30.111883>,  <27.717100, 30.027517, 29.846087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015745, 30.014732, 30.111883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440460, 0.724814, 0.529755,
		-0.498565, -0.688203, 0.527076,
		0.746611, -0.031961, 0.664492,
		28.239729, 30.005144, 30.311232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411245, 30.112610, 30.491922>,  <27.717100, 30.027517, 29.846087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411245, 30.112610, 30.491922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793285, 30.219967, 30.542126>,  <28.022509, 30.284380, 30.572247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793285, 30.219967, 30.542126>,  <27.411245, 30.112610, 30.491922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793285, 30.219967, 30.542126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284053, 0.708982, 0.645491,
		0.084261, -0.652158, 0.753385,
		0.955099, 0.268391, 0.125508,
		28.079815, 30.300484, 30.579779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564308, 30.065891, 31.157278>,  <27.411245, 30.112610, 30.491922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564308, 30.065891, 31.157278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821573, 30.335545, 31.012014>,  <27.975933, 30.497335, 30.924856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821573, 30.335545, 31.012014>,  <27.564308, 30.065891, 31.157278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821573, 30.335545, 31.012014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305822, 0.660946, 0.685290,
		0.702007, -0.329691, 0.631261,
		0.643163, 0.674132, -0.363162,
		28.014523, 30.537785, 30.903067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787132, 30.347019, 31.765686>,  <27.564308, 30.065891, 31.157278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787132, 30.347019, 31.765686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912369, 30.613956, 31.495388>,  <27.987511, 30.774118, 31.333210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912369, 30.613956, 31.495388>,  <27.787132, 30.347019, 31.765686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912369, 30.613956, 31.495388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190788, 0.741206, 0.643594,
		0.930363, -0.072578, 0.359384,
		0.313088, 0.667342, -0.675744,
		28.006296, 30.814159, 31.292665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022789, 30.958870, 32.227505>,  <27.787132, 30.347019, 31.765686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022789, 30.958870, 32.227505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018179, 31.148659, 31.875425>,  <28.015413, 31.262531, 31.664179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018179, 31.148659, 31.875425>,  <28.022789, 30.958870, 32.227505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018179, 31.148659, 31.875425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415266, 0.798486, 0.435861,
		0.909627, 0.370539, 0.187829,
		-0.011525, 0.474470, -0.880196,
		28.014721, 31.291000, 31.611366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336740, 31.560722, 32.287125>,  <28.022789, 30.958870, 32.227505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336740, 31.560722, 32.287125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094501, 31.617319, 31.973888>,  <27.949158, 31.651278, 31.785946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094501, 31.617319, 31.973888>,  <28.336740, 31.560722, 32.287125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094501, 31.617319, 31.973888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429321, 0.770475, 0.471223,
		0.670028, 0.621569, -0.405850,
		-0.605595, 0.141493, -0.783093,
		27.912823, 31.659767, 31.738960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367764, 32.298321, 32.140018>,  <28.336740, 31.560722, 32.287125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367764, 32.298321, 32.140018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030798, 32.146889, 31.986652>,  <27.828617, 32.056030, 31.894632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030798, 32.146889, 31.986652>,  <28.367764, 32.298321, 32.140018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030798, 32.146889, 31.986652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536634, 0.653618, 0.533673,
		0.048569, 0.655330, -0.753779,
		-0.842416, -0.378583, -0.383418,
		27.778072, 32.033314, 31.871626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022715, 32.821125, 31.974070>,  <28.367764, 32.298321, 32.140018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022715, 32.821125, 31.974070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727985, 32.551205, 31.990711>,  <27.551147, 32.389252, 32.000698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727985, 32.551205, 31.990711>,  <28.022715, 32.821125, 31.974070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727985, 32.551205, 31.990711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529428, 0.614168, 0.585238,
		-0.420474, 0.409190, -0.809793,
		-0.736823, -0.674804, 0.041605,
		27.506939, 32.348763, 32.003193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425493, 33.226353, 31.753902>,  <28.022715, 32.821125, 31.974070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425493, 33.226353, 31.753902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291195, 32.907619, 31.954832>,  <27.210617, 32.716381, 32.075390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291195, 32.907619, 31.954832>,  <27.425493, 33.226353, 31.753902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291195, 32.907619, 31.954832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712935, 0.563500, 0.417363,
		-0.615630, -0.217998, -0.757282,
		-0.335744, -0.796834, 0.502326,
		27.190472, 32.668568, 32.105530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692625, 33.359306, 31.782232>,  <27.425493, 33.226353, 31.753902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692625, 33.359306, 31.782232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.741776, 33.088188, 32.072197>,  <26.771267, 32.925518, 32.246174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.741776, 33.088188, 32.072197>,  <26.692625, 33.359306, 31.782232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741776, 33.088188, 32.072197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703868, 0.455418, 0.545127,
		-0.699622, -0.577226, -0.421117,
		0.122877, -0.677794, 0.724911,
		26.778639, 32.884850, 32.289669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083769, 33.176640, 31.994751>,  <26.692625, 33.359306, 31.782232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083769, 33.176640, 31.994751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305176, 33.079258, 32.313335>,  <26.438021, 33.020828, 32.504486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305176, 33.079258, 32.313335>,  <26.083769, 33.176640, 31.994751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305176, 33.079258, 32.313335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692691, 0.396363, 0.602558,
		-0.462381, -0.885228, 0.050758,
		0.553519, -0.243452, 0.796460,
		26.471231, 33.006222, 32.552273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582703, 32.799217, 32.538937>,  <26.083769, 33.176640, 31.994751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582703, 32.799217, 32.538937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.904018, 32.948929, 32.724255>,  <26.096809, 33.038754, 32.835445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.904018, 32.948929, 32.724255>,  <25.582703, 32.799217, 32.538937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904018, 32.948929, 32.724255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593917, 0.445190, 0.670126,
		0.044557, -0.813464, 0.579906,
		0.803292, 0.374275, 0.463294,
		26.145006, 33.061211, 32.863243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446186, 32.680214, 33.205460>,  <25.582703, 32.799217, 32.538937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446186, 32.680214, 33.205460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.750788, 32.938766, 33.224667>,  <25.933548, 33.093899, 33.236191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.750788, 32.938766, 33.224667>,  <25.446186, 32.680214, 33.205460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750788, 32.938766, 33.224667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385642, 0.392294, 0.835096,
		0.520957, -0.654442, 0.548005,
		0.761501, 0.646383, 0.048013,
		25.979239, 33.132683, 33.239071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775633, 32.609055, 33.955544>,  <25.446186, 32.680214, 33.205460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775633, 32.609055, 33.955544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871597, 32.970055, 33.812469>,  <25.929176, 33.186653, 33.726624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871597, 32.970055, 33.812469>,  <25.775633, 32.609055, 33.955544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871597, 32.970055, 33.812469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363901, 0.425187, 0.828729,
		0.900011, -0.068656, 0.430426,
		0.239909, 0.902498, -0.357689,
		25.943569, 33.240803, 33.705162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217390, 32.848141, 34.438770>,  <25.775633, 32.609055, 33.955544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217390, 32.848141, 34.438770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.070490, 33.167866, 34.248516>,  <25.982349, 33.359699, 34.134365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.070490, 33.167866, 34.248516>,  <26.217390, 32.848141, 34.438770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070490, 33.167866, 34.248516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373550, 0.341562, 0.862436,
		0.851815, 0.494401, 0.173145,
		-0.367249, 0.799314, -0.475631,
		25.960316, 33.407661, 34.105827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400175, 33.497559, 34.831409>,  <26.217390, 32.848141, 34.438770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400175, 33.497559, 34.831409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.076025, 33.554886, 34.604164>,  <25.881535, 33.589283, 34.467815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.076025, 33.554886, 34.604164>,  <26.400175, 33.497559, 34.831409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076025, 33.554886, 34.604164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501107, 0.332929, 0.798780,
		0.303622, 0.931996, -0.197979,
		-0.810374, 0.143319, -0.568114,
		25.832912, 33.597881, 34.433731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124702, 33.099579, 34.896469>,  <26.400175, 33.497559, 34.831409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124702, 33.099579, 34.896469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391308, 33.125866, 35.193504>,  <27.551271, 33.141636, 35.371727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391308, 33.125866, 35.193504>,  <27.124702, 33.099579, 34.896469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391308, 33.125866, 35.193504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582059, -0.668259, -0.463289,
		0.465799, 0.741020, -0.483653,
		0.666512, 0.065715, 0.742592,
		27.591261, 33.145580, 35.416283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759459, 33.254135, 34.606544>,  <27.124702, 33.099579, 34.896469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759459, 33.254135, 34.606544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862823, 33.056892, 34.938828>,  <27.924843, 32.938545, 35.138195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862823, 33.056892, 34.938828>,  <27.759459, 33.254135, 34.606544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862823, 33.056892, 34.938828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646886, -0.550323, -0.527903,
		0.717469, 0.673786, 0.176776,
		0.258410, -0.493109, 0.830703,
		27.940346, 32.908958, 35.188038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420774, 33.055683, 34.494793>,  <27.759459, 33.254135, 34.606544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420774, 33.055683, 34.494793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304535, 32.818150, 34.794903>,  <28.234791, 32.675629, 34.974968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304535, 32.818150, 34.794903>,  <28.420774, 33.055683, 34.494793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304535, 32.818150, 34.794903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633765, -0.706910, -0.314039,
		0.716864, 0.384240, 0.581778,
		-0.290598, -0.593833, 0.750276,
		28.217356, 32.639999, 35.019985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982901, 32.698940, 34.674404>,  <28.420774, 33.055683, 34.494793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982901, 32.698940, 34.674404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676374, 32.466331, 34.783653>,  <28.492458, 32.326767, 34.849201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676374, 32.466331, 34.783653>,  <28.982901, 32.698940, 34.674404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676374, 32.466331, 34.783653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548024, -0.813532, -0.194512,
		0.335306, 0.000620, 0.942109,
		-0.766315, -0.581520, 0.273122,
		28.446480, 32.291874, 34.865589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149740, 32.200150, 35.083862>,  <28.982901, 32.698940, 34.674404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149740, 32.200150, 35.083862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807871, 32.024384, 34.973263>,  <28.602749, 31.918924, 34.906902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807871, 32.024384, 34.973263>,  <29.149740, 32.200150, 35.083862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807871, 32.024384, 34.973263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477852, -0.874014, -0.088076,
		-0.202959, -0.207400, 0.956971,
		-0.854672, -0.439415, -0.276496,
		28.551470, 31.892559, 34.890312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173031, 31.620790, 35.448563>,  <29.149740, 32.200150, 35.083862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173031, 31.620790, 35.448563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.909567, 31.531233, 35.161221>,  <28.751488, 31.477497, 34.988815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.909567, 31.531233, 35.161221>,  <29.173031, 31.620790, 35.448563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909567, 31.531233, 35.161221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497625, -0.845721, -0.192679,
		-0.564390, -0.484383, 0.668459,
		-0.658661, -0.223895, -0.718357,
		28.711969, 31.464064, 34.945713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911976, 30.904093, 35.637226>,  <29.173031, 31.620790, 35.448563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911976, 30.904093, 35.637226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828117, 30.969732, 35.251663>,  <28.777802, 31.009117, 35.020325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828117, 30.969732, 35.251663>,  <28.911976, 30.904093, 35.637226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828117, 30.969732, 35.251663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352694, -0.906758, -0.231080,
		-0.911952, -0.388409, 0.132221,
		-0.209646, 0.164100, -0.963908,
		28.765223, 31.018963, 34.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792484, 30.346310, 35.364464>,  <28.911976, 30.904093, 35.637226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792484, 30.346310, 35.364464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847513, 30.516436, 35.006653>,  <28.880531, 30.618511, 34.791965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847513, 30.516436, 35.006653>,  <28.792484, 30.346310, 35.364464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847513, 30.516436, 35.006653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473365, -0.821536, -0.317811,
		-0.870057, -0.379715, -0.314352,
		0.137574, 0.425317, -0.894527,
		28.888784, 30.644032, 34.738297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612946, 29.843945, 34.887104>,  <28.792484, 30.346310, 35.364464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612946, 29.843945, 34.887104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846594, 30.100281, 34.687855>,  <28.986782, 30.254084, 34.568306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846594, 30.100281, 34.687855>,  <28.612946, 29.843945, 34.887104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846594, 30.100281, 34.687855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390710, -0.759921, -0.519486,
		-0.711441, 0.108822, -0.694269,
		0.584121, 0.640842, -0.498121,
		29.021830, 30.292534, 34.538418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490164, 29.733307, 34.150688>,  <28.612946, 29.843945, 34.887104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490164, 29.733307, 34.150688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844368, 29.919147, 34.149319>,  <29.056890, 30.030653, 34.148495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844368, 29.919147, 34.149319>,  <28.490164, 29.733307, 34.150688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844368, 29.919147, 34.149319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369161, -0.708045, -0.601990,
		-0.282114, 0.531804, -0.798496,
		0.885512, 0.464604, -0.003428,
		29.110022, 30.058529, 34.148289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631691, 29.730806, 33.471127>,  <28.490164, 29.733307, 34.150688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631691, 29.730806, 33.471127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973337, 29.787033, 33.671417>,  <29.178326, 29.820768, 33.791592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973337, 29.787033, 33.671417>,  <28.631691, 29.730806, 33.471127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973337, 29.787033, 33.671417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436735, -0.716631, -0.543785,
		0.282398, 0.683140, -0.673476,
		0.854116, 0.140567, 0.500727,
		29.229572, 29.829203, 33.821636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164961, 29.775351, 32.981281>,  <28.631691, 29.730806, 33.471127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164961, 29.775351, 32.981281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362198, 29.693624, 33.319538>,  <29.480541, 29.644588, 33.522491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362198, 29.693624, 33.319538>,  <29.164961, 29.775351, 32.981281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362198, 29.693624, 33.319538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634763, -0.580219, -0.510315,
		0.594924, 0.788417, -0.156412,
		0.493095, -0.204314, 0.845644,
		29.510126, 29.632330, 33.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814344, 29.900072, 32.822395>,  <29.164961, 29.775351, 32.981281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814344, 29.900072, 32.822395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859957, 29.663988, 33.142056>,  <29.887325, 29.522337, 33.333851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859957, 29.663988, 33.142056>,  <29.814344, 29.900072, 32.822395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859957, 29.663988, 33.142056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681916, -0.538486, -0.494999,
		0.722487, 0.601402, 0.341069,
		0.114032, -0.590210, 0.799155,
		29.894167, 29.486925, 33.381802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481482, 29.737795, 32.677975>,  <29.814344, 29.900072, 32.822395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481482, 29.737795, 32.677975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329672, 29.466284, 32.929440>,  <30.238586, 29.303377, 33.080318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329672, 29.466284, 32.929440>,  <30.481482, 29.737795, 32.677975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329672, 29.466284, 32.929440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629829, -0.687296, -0.361855,
		0.677699, 0.258619, 0.688361,
		-0.379525, -0.678779, 0.628666,
		30.215815, 29.262650, 33.118038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023710, 29.244297, 32.797161>,  <30.481482, 29.737795, 32.677975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023710, 29.244297, 32.797161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715534, 29.031569, 32.937778>,  <30.530628, 28.903931, 33.022148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715534, 29.031569, 32.937778>,  <31.023710, 29.244297, 32.797161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715534, 29.031569, 32.937778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540802, -0.837209, -0.081327,
		0.337568, 0.127458, 0.932632,
		-0.770442, -0.531823, 0.351544,
		30.484402, 28.872021, 33.043243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309448, 28.809319, 33.261665>,  <31.023710, 29.244297, 32.797161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309448, 28.809319, 33.261665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975452, 28.632477, 33.130615>,  <30.775055, 28.526371, 33.051983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975452, 28.632477, 33.130615>,  <31.309448, 28.809319, 33.261665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975452, 28.632477, 33.130615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530280, -0.805504, -0.264510,
		-0.146964, -0.394597, 0.907025,
		-0.834988, -0.442104, -0.327627,
		30.724957, 28.499846, 33.032326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242573, 28.088295, 33.488693>,  <31.309448, 28.809319, 33.261665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242573, 28.088295, 33.488693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026247, 28.087294, 33.152237>,  <30.896452, 28.086693, 32.950363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026247, 28.087294, 33.152237>,  <31.242573, 28.088295, 33.488693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026247, 28.087294, 33.152237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546307, -0.761419, -0.348984,
		-0.639586, -0.648255, 0.413152,
		-0.540813, -0.002503, -0.841139,
		30.864004, 28.086542, 32.899895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376442, 27.414173, 33.212608>,  <31.242573, 28.088295, 33.488693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376442, 27.414173, 33.212608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.233892, 27.593046, 32.884457>,  <31.148363, 27.700371, 32.687565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.233892, 27.593046, 32.884457>,  <31.376442, 27.414173, 33.212608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233892, 27.593046, 32.884457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293400, -0.780056, -0.552656,
		-0.887081, -0.437652, 0.146789,
		-0.356375, 0.447183, -0.820380,
		31.126980, 27.727201, 32.638344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205082, 26.968756, 32.709835>,  <31.376442, 27.414173, 33.212608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205082, 26.968756, 32.709835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.176069, 27.289347, 32.472389>,  <31.158663, 27.481701, 32.329922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.176069, 27.289347, 32.472389>,  <31.205082, 26.968756, 32.709835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176069, 27.289347, 32.472389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276765, -0.555631, -0.784012,
		-0.958197, -0.221155, -0.181521,
		-0.072529, 0.801476, -0.593612,
		31.154310, 27.529789, 32.294304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812262, 26.709890, 32.185539>,  <31.205082, 26.968756, 32.709835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812262, 26.709890, 32.185539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046116, 27.011572, 32.065952>,  <31.186428, 27.192581, 31.994202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046116, 27.011572, 32.065952>,  <30.812262, 26.709890, 32.185539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046116, 27.011572, 32.065952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360890, -0.571797, -0.736754,
		-0.726609, 0.322839, -0.606477,
		0.584635, 0.754204, -0.298963,
		31.221506, 27.237833, 31.976263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.274628, 33.494652, 46.254997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.887360, 33.594448, 46.247055>,  <43.654999, 33.654327, 46.242290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.887360, 33.594448, 46.247055>,  <44.274628, 33.494652, 46.254997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887360, 33.594448, 46.247055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092766, 0.431404, 0.897377,
		0.232457, 0.866973, -0.440818,
		-0.968173, 0.249494, -0.019857,
		43.596909, 33.669296, 46.241096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217991, 34.177711, 46.460213>,  <44.274628, 33.494652, 46.254997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217991, 34.177711, 46.460213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.841766, 34.058708, 46.525723>,  <43.616032, 33.987305, 46.565029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.841766, 34.058708, 46.525723>,  <44.217991, 34.177711, 46.460213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841766, 34.058708, 46.525723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020214, 0.530437, 0.847483,
		-0.339011, 0.793803, -0.504924,
		-0.940565, -0.297513, 0.163778,
		43.559597, 33.969456, 46.574856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019173, 34.727024, 46.714188>,  <44.217991, 34.177711, 46.460213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019173, 34.727024, 46.714188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.754173, 34.440689, 46.802437>,  <43.595173, 34.268890, 46.855389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.754173, 34.440689, 46.802437>,  <44.019173, 34.727024, 46.714188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754173, 34.440689, 46.802437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098711, 0.375399, 0.921592,
		-0.742529, 0.588777, -0.319363,
		-0.662500, -0.715833, 0.220626,
		43.555424, 34.225941, 46.868626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614704, 35.067657, 47.070278>,  <44.019173, 34.727024, 46.714188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614704, 35.067657, 47.070278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.528858, 34.687103, 47.158649>,  <43.477348, 34.458771, 47.211670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.528858, 34.687103, 47.158649>,  <43.614704, 35.067657, 47.070278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528858, 34.687103, 47.158649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216329, 0.266880, 0.939136,
		-0.952440, 0.153763, -0.263089,
		-0.214617, -0.951384, 0.220924,
		43.464474, 34.401688, 47.224926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018200, 35.103680, 47.343212>,  <43.614704, 35.067657, 47.070278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018200, 35.103680, 47.343212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.182224, 34.764568, 47.477749>,  <43.280640, 34.561104, 47.558472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.182224, 34.764568, 47.477749>,  <43.018200, 35.103680, 47.343212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182224, 34.764568, 47.477749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304977, 0.220094, 0.926578,
		-0.859558, -0.482529, -0.168301,
		0.410059, -0.847776, 0.336344,
		43.305241, 34.510235, 47.578651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569717, 34.931347, 47.808636>,  <43.018200, 35.103680, 47.343212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569717, 34.931347, 47.808636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.888657, 34.705425, 47.893703>,  <43.080021, 34.569870, 47.944744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.888657, 34.705425, 47.893703>,  <42.569717, 34.931347, 47.808636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888657, 34.705425, 47.893703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178282, 0.116217, 0.977092,
		-0.576585, -0.816998, -0.008030,
		0.797349, -0.564808, 0.212665,
		43.127861, 34.535984, 47.957504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328690, 34.324493, 48.238289>,  <42.569717, 34.931347, 47.808636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328690, 34.324493, 48.238289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.718254, 34.384941, 48.306011>,  <42.951992, 34.421211, 48.346645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.718254, 34.384941, 48.306011>,  <42.328690, 34.324493, 48.238289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718254, 34.384941, 48.306011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202340, 0.240408, 0.949349,
		0.102758, -0.958837, 0.264712,
		0.973909, 0.151115, 0.169307,
		43.010426, 34.430275, 48.356804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403107, 34.062386, 48.830154>,  <42.328690, 34.324493, 48.238289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403107, 34.062386, 48.830154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.736862, 34.280144, 48.795677>,  <42.937115, 34.410797, 48.774990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.736862, 34.280144, 48.795677>,  <42.403107, 34.062386, 48.830154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736862, 34.280144, 48.795677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105992, 0.311934, 0.944173,
		0.540891, -0.778671, 0.317976,
		0.834387, 0.544398, -0.086190,
		42.987179, 34.443462, 48.769821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947643, 33.921314, 49.456783>,  <42.403107, 34.062386, 48.830154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947643, 33.921314, 49.456783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.010445, 34.284931, 49.302387>,  <43.048126, 34.503101, 49.209747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.010445, 34.284931, 49.302387>,  <42.947643, 33.921314, 49.456783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010445, 34.284931, 49.302387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187642, 0.411179, 0.892032,
		0.969608, -0.067624, 0.235131,
		0.157004, 0.909042, -0.385994,
		43.057545, 34.557644, 49.186588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251556, 34.302612, 50.021893>,  <42.947643, 33.921314, 49.456783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251556, 34.302612, 50.021893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122433, 34.565617, 49.749577>,  <43.044960, 34.723419, 49.586185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122433, 34.565617, 49.749577>,  <43.251556, 34.302612, 50.021893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122433, 34.565617, 49.749577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133652, 0.680424, 0.720527,
		0.936981, 0.323580, -0.131768,
		-0.322806, 0.657509, -0.680792,
		43.025589, 34.762871, 49.545338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572372, 34.941910, 50.231888>,  <43.251556, 34.302612, 50.021893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572372, 34.941910, 50.231888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.267876, 35.060318, 50.001102>,  <43.085178, 35.131363, 49.862633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.267876, 35.060318, 50.001102>,  <43.572372, 34.941910, 50.231888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267876, 35.060318, 50.001102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127930, 0.803685, 0.581141,
		0.635728, 0.516197, -0.573926,
		-0.761239, 0.296025, -0.576962,
		43.039505, 35.149124, 49.828014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604309, 35.661808, 50.152649>,  <43.572372, 34.941910, 50.231888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604309, 35.661808, 50.152649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.223843, 35.569710, 50.070412>,  <42.995564, 35.514450, 50.021069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.223843, 35.569710, 50.070412>,  <43.604309, 35.661808, 50.152649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223843, 35.569710, 50.070412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308326, 0.740417, 0.597259,
		0.014704, 0.631482, -0.775251,
		-0.951167, -0.230248, -0.205589,
		42.938492, 35.500637, 50.008736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164913, 36.312965, 50.299175>,  <43.604309, 35.661808, 50.152649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164913, 36.312965, 50.299175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.901253, 36.012215, 50.293659>,  <42.743057, 35.831764, 50.290348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.901253, 36.012215, 50.293659>,  <43.164913, 36.312965, 50.299175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901253, 36.012215, 50.293659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542593, 0.462822, 0.700991,
		-0.520680, 0.469543, -0.713037,
		-0.659154, -0.751881, -0.013789,
		42.703506, 35.786652, 50.289524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627239, 36.684994, 50.685070>,  <43.164913, 36.312965, 50.299175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627239, 36.684994, 50.685070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.332851, 36.523651, 50.902565>,  <42.156219, 36.426846, 51.033062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.332851, 36.523651, 50.902565>,  <42.627239, 36.684994, 50.685070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332851, 36.523651, 50.902565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676933, 0.426152, -0.600130,
		0.010353, -0.809751, -0.586682,
		-0.735972, -0.403358, 0.543735,
		42.112061, 36.402645, 51.065685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171696, 36.157978, 50.343685>,  <42.627239, 36.684994, 50.685070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171696, 36.157978, 50.343685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.944866, 36.348827, 50.612247>,  <41.808769, 36.463337, 50.773384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.944866, 36.348827, 50.612247>,  <42.171696, 36.157978, 50.343685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944866, 36.348827, 50.612247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487230, 0.462916, -0.740483,
		-0.664105, -0.747036, -0.030039,
		-0.567073, 0.477123, 0.671404,
		41.774746, 36.491962, 50.813667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433670, 36.132118, 50.095356>,  <42.171696, 36.157978, 50.343685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433670, 36.132118, 50.095356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.451569, 36.445953, 50.342716>,  <41.462307, 36.634254, 50.491131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.451569, 36.445953, 50.342716>,  <41.433670, 36.132118, 50.095356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451569, 36.445953, 50.342716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681548, 0.476562, -0.555321,
		-0.730404, -0.396620, 0.556059,
		0.044745, 0.784590, 0.618398,
		41.464993, 36.681332, 50.528236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771992, 36.249992, 50.203640>,  <41.433670, 36.132118, 50.095356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771992, 36.249992, 50.203640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955307, 36.596733, 50.282158>,  <41.065296, 36.804779, 50.329269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955307, 36.596733, 50.282158>,  <40.771992, 36.249992, 50.203640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955307, 36.596733, 50.282158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652552, 0.478113, -0.587863,
		-0.603444, 0.141320, 0.784783,
		0.458292, 0.866854, 0.196296,
		41.092796, 36.856789, 50.341045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142040, 36.651707, 50.237373>,  <40.771992, 36.249992, 50.203640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142040, 36.651707, 50.237373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.425049, 36.933979, 50.222282>,  <40.594856, 37.103344, 50.213226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.425049, 36.933979, 50.222282>,  <40.142040, 36.651707, 50.237373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425049, 36.933979, 50.222282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608523, 0.581232, -0.540249,
		-0.359315, 0.405197, 0.840659,
		0.707526, 0.705680, -0.037727,
		40.637306, 37.145683, 50.210964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868946, 37.241497, 50.443981>,  <40.142040, 36.651707, 50.237373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868946, 37.241497, 50.443981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.162865, 37.344421, 50.192947>,  <40.339218, 37.406178, 50.042328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.162865, 37.344421, 50.192947>,  <39.868946, 37.241497, 50.443981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162865, 37.344421, 50.192947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643966, 0.555232, -0.526332,
		0.213023, 0.790891, 0.573684,
		0.734799, 0.257312, -0.627584,
		40.383305, 37.421616, 50.004673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615711, 37.888687, 50.152569>,  <39.868946, 37.241497, 50.443981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615711, 37.888687, 50.152569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.912140, 37.765034, 49.914158>,  <40.089996, 37.690842, 49.771111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.912140, 37.765034, 49.914158>,  <39.615711, 37.888687, 50.152569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912140, 37.765034, 49.914158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359476, 0.567089, -0.741072,
		0.567089, 0.763446, 0.309129,
		0.741072, -0.309129, -0.596030,
		40.134460, 37.672295, 49.735348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938370, 38.519356, 49.817085>,  <39.615711, 37.888687, 50.152569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938370, 38.519356, 49.817085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028015, 38.204773, 49.586864>,  <40.081802, 38.016022, 49.448730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028015, 38.204773, 49.586864>,  <39.938370, 38.519356, 49.817085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028015, 38.204773, 49.586864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560739, 0.378966, -0.736177,
		0.797086, 0.487722, -0.356065,
		0.224113, -0.786456, -0.575553,
		40.095249, 37.968838, 49.414200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026913, 38.870205, 49.227158>,  <39.938370, 38.519356, 49.817085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026913, 38.870205, 49.227158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.977459, 38.482124, 49.143810>,  <39.947788, 38.249275, 49.093800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.977459, 38.482124, 49.143810>,  <40.026913, 38.870205, 49.227158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977459, 38.482124, 49.143810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446193, 0.241908, -0.861622,
		0.886356, -0.013550, -0.462806,
		-0.123632, -0.970204, -0.208370,
		39.940369, 38.191063, 49.081299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148109, 38.744682, 48.499950>,  <40.026913, 38.870205, 49.227158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148109, 38.744682, 48.499950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.930088, 38.419685, 48.582668>,  <39.799274, 38.224686, 48.632298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.930088, 38.419685, 48.582668>,  <40.148109, 38.744682, 48.499950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930088, 38.419685, 48.582668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384914, 0.023384, -0.922656,
		0.744819, -0.582497, -0.325487,
		-0.545055, -0.812497, 0.206794,
		39.766571, 38.175938, 48.644707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374825, 38.217152, 48.035465>,  <40.148109, 38.744682, 48.499950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374825, 38.217152, 48.035465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015396, 38.098381, 48.164711>,  <39.799740, 38.027119, 48.242260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015396, 38.098381, 48.164711>,  <40.374825, 38.217152, 48.035465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015396, 38.098381, 48.164711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261368, -0.229335, -0.937599,
		0.352504, -0.926951, 0.128466,
		-0.898570, -0.296930, 0.323117,
		39.745827, 38.009300, 48.261646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198090, 37.622864, 47.626846>,  <40.374825, 38.217152, 48.035465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198090, 37.622864, 47.626846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845097, 37.738564, 47.775208>,  <39.633301, 37.807983, 47.864223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845097, 37.738564, 47.775208>,  <40.198090, 37.622864, 47.626846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845097, 37.738564, 47.775208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426098, -0.157701, -0.890826,
		-0.199190, -0.944171, 0.262420,
		-0.882476, 0.289260, 0.370897,
		39.580353, 37.825340, 47.886478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649582, 37.077164, 47.415356>,  <40.198090, 37.622864, 47.626846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649582, 37.077164, 47.415356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467556, 37.424511, 47.494209>,  <39.358341, 37.632919, 47.541523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467556, 37.424511, 47.494209>,  <39.649582, 37.077164, 47.415356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467556, 37.424511, 47.494209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503631, -0.068415, -0.861205,
		-0.734353, -0.491185, 0.468469,
		-0.455062, 0.868364, 0.197135,
		39.331036, 37.685020, 47.553349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862865, 36.929569, 47.359196>,  <39.649582, 37.077164, 47.415356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862865, 36.929569, 47.359196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919838, 37.322502, 47.310646>,  <38.954021, 37.558262, 47.281517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919838, 37.322502, 47.310646>,  <38.862865, 36.929569, 47.359196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919838, 37.322502, 47.310646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378136, -0.059322, -0.923847,
		-0.914728, 0.177479, 0.363007,
		0.142429, 0.982335, -0.121375,
		38.962566, 37.617203, 47.274235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366650, 37.130508, 46.905025>,  <38.862865, 36.929569, 47.359196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366650, 37.130508, 46.905025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600105, 37.454037, 46.876255>,  <38.740181, 37.648155, 46.858994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600105, 37.454037, 46.876255>,  <38.366650, 37.130508, 46.905025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600105, 37.454037, 46.876255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160859, 0.028346, -0.986570,
		-0.795918, 0.587374, 0.146650,
		0.583642, 0.808819, -0.071923,
		38.775196, 37.696682, 46.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801674, 37.303951, 47.229622>,  <38.366650, 37.130508, 46.905025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801674, 37.303951, 47.229622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.457474, 37.120728, 47.318817>,  <37.250954, 37.010792, 47.372334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.457474, 37.120728, 47.318817>,  <37.801674, 37.303951, 47.229622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457474, 37.120728, 47.318817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210127, 0.079630, 0.974426,
		-0.464104, 0.885346, 0.027730,
		-0.860496, -0.458062, 0.222992,
		37.199326, 36.983311, 47.385715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513588, 37.562317, 47.850010>,  <37.801674, 37.303951, 47.229622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513588, 37.562317, 47.850010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.326618, 37.208797, 47.841862>,  <37.214436, 36.996685, 47.836971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.326618, 37.208797, 47.841862>,  <37.513588, 37.562317, 47.850010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326618, 37.208797, 47.841862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123520, -0.088112, 0.988422,
		-0.875363, 0.459492, 0.150353,
		-0.467421, -0.883800, -0.020373,
		37.186394, 36.943657, 47.835751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257362, 37.446106, 48.526573>,  <37.513588, 37.562317, 47.850010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257362, 37.446106, 48.526573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224663, 37.069515, 48.395771>,  <37.205044, 36.843559, 48.317291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224663, 37.069515, 48.395771>,  <37.257362, 37.446106, 48.526573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224663, 37.069515, 48.395771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233242, -0.337060, 0.912134,
		-0.968976, -0.001706, 0.247147,
		-0.081748, -0.941482, -0.327001,
		37.200138, 36.787071, 48.297672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856483, 37.208595, 49.043369>,  <37.257362, 37.446106, 48.526573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856483, 37.208595, 49.043369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984413, 36.872826, 48.867607>,  <37.061172, 36.671364, 48.762150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984413, 36.872826, 48.867607>,  <36.856483, 37.208595, 49.043369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984413, 36.872826, 48.867607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270438, -0.363592, 0.891440,
		-0.908060, -0.403939, 0.110725,
		0.319828, -0.839425, -0.439403,
		37.080360, 36.620998, 48.735786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568886, 36.637215, 49.356819>,  <36.856483, 37.208595, 49.043369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568886, 36.637215, 49.356819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911968, 36.517349, 49.189709>,  <37.117817, 36.445431, 49.089443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911968, 36.517349, 49.189709>,  <36.568886, 36.637215, 49.356819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911968, 36.517349, 49.189709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327114, -0.308832, 0.893095,
		-0.396651, -0.902676, -0.166864,
		0.857709, -0.299664, -0.417777,
		37.169281, 36.427452, 49.064377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735828, 35.948353, 49.709949>,  <36.568886, 36.637215, 49.356819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735828, 35.948353, 49.709949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069393, 36.087311, 49.538414>,  <37.269531, 36.170685, 49.435493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069393, 36.087311, 49.538414>,  <36.735828, 35.948353, 49.709949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069393, 36.087311, 49.538414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542848, -0.376198, 0.750861,
		0.099520, -0.858947, -0.502301,
		0.833914, 0.347398, -0.428838,
		37.319569, 36.191528, 49.409763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207966, 35.345390, 49.599960>,  <36.735828, 35.948353, 49.709949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207966, 35.345390, 49.599960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435146, 35.674480, 49.590530>,  <37.571457, 35.871933, 49.584873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435146, 35.674480, 49.590530>,  <37.207966, 35.345390, 49.599960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435146, 35.674480, 49.590530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615438, -0.405491, 0.675880,
		0.546503, -0.398375, -0.736635,
		0.567953, 0.822724, -0.023573,
		37.605534, 35.921299, 49.583458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139717, 34.631134, 49.755779>,  <37.207966, 35.345390, 49.599960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139717, 34.631134, 49.755779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835262, 34.777138, 49.970234>,  <36.652592, 34.864738, 50.098907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835262, 34.777138, 49.970234>,  <37.139717, 34.631134, 49.755779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835262, 34.777138, 49.970234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558488, 0.051485, -0.827914,
		-0.329801, -0.929579, 0.164667,
		-0.761133, 0.365011, 0.536138,
		36.606922, 34.886642, 50.131077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666130, 34.211010, 49.548397>,  <37.139717, 34.631134, 49.755779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666130, 34.211010, 49.548397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489494, 34.536293, 49.700027>,  <36.383514, 34.731461, 49.791008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489494, 34.536293, 49.700027>,  <36.666130, 34.211010, 49.548397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489494, 34.536293, 49.700027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541908, 0.094996, -0.835052,
		-0.715078, -0.574175, 0.398732,
		-0.441588, 0.813203, 0.379079,
		36.357018, 34.780254, 49.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005959, 33.911243, 49.624115>,  <36.666130, 34.211010, 49.548397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005959, 33.911243, 49.624115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929611, 34.303780, 49.614754>,  <35.883804, 34.539299, 49.609135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929611, 34.303780, 49.614754>,  <36.005959, 33.911243, 49.624115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929611, 34.303780, 49.614754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516840, -0.120740, -0.847525,
		-0.834533, -0.149668, 0.530240,
		-0.190869, 0.981337, -0.023407,
		35.872349, 34.598179, 49.607731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280231, 33.960934, 49.470707>,  <36.005959, 33.911243, 49.624115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280231, 33.960934, 49.470707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.453384, 34.309956, 49.380146>,  <35.557278, 34.519371, 49.325809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.453384, 34.309956, 49.380146>,  <35.280231, 33.960934, 49.470707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453384, 34.309956, 49.380146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655602, 0.132352, -0.743417,
		-0.618708, 0.470243, 0.629342,
		0.432881, 0.872556, -0.226405,
		35.583248, 34.571724, 49.312225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779572, 34.415504, 49.306080>,  <35.280231, 33.960934, 49.470707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779572, 34.415504, 49.306080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085312, 34.608559, 49.135048>,  <35.268757, 34.724392, 49.032429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085312, 34.608559, 49.135048>,  <34.779572, 34.415504, 49.306080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085312, 34.608559, 49.135048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531796, 0.096858, -0.841316,
		-0.364634, 0.870449, 0.330697,
		0.764353, 0.482635, -0.427583,
		35.314617, 34.753349, 49.006771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394096, 34.896553, 48.869923>,  <34.779572, 34.415504, 49.306080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394096, 34.896553, 48.869923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761955, 34.885483, 48.713215>,  <34.982670, 34.878841, 48.619190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761955, 34.885483, 48.713215>,  <34.394096, 34.896553, 48.869923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761955, 34.885483, 48.713215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384878, 0.135159, -0.913018,
		0.078223, 0.990437, 0.113645,
		0.919647, -0.027680, -0.391770,
		35.037849, 34.877178, 48.595684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493835, 35.458729, 48.463806>,  <34.394096, 34.896553, 48.869923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493835, 35.458729, 48.463806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782009, 35.227375, 48.310734>,  <34.954914, 35.088562, 48.218891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782009, 35.227375, 48.310734>,  <34.493835, 35.458729, 48.463806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782009, 35.227375, 48.310734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397677, 0.107541, -0.911201,
		0.568183, 0.808641, -0.152536,
		0.720431, -0.578389, -0.382682,
		34.998138, 35.053860, 48.195930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.195667, 33.219578, 51.041660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.349487, 33.553608, 50.884296>,  <41.441780, 33.754028, 50.789879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.349487, 33.553608, 50.884296>,  <41.195667, 33.219578, 51.041660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349487, 33.553608, 50.884296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539231, -0.142693, -0.829981,
		-0.749234, 0.531305, 0.395428,
		0.384548, 0.835077, -0.393406,
		41.464851, 33.804131, 50.766273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611431, 33.656868, 50.893265>,  <41.195667, 33.219578, 51.041660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611431, 33.656868, 50.893265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.923496, 33.769569, 50.669849>,  <41.110733, 33.837189, 50.535801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.923496, 33.769569, 50.669849>,  <40.611431, 33.656868, 50.893265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923496, 33.769569, 50.669849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596340, 0.065175, -0.800081,
		-0.189019, 0.957272, 0.218866,
		0.780160, 0.281749, -0.558540,
		41.157543, 33.854095, 50.502289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328819, 34.204281, 50.328682>,  <40.611431, 33.656868, 50.893265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328819, 34.204281, 50.328682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.678619, 34.054165, 50.205780>,  <40.888500, 33.964096, 50.132038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.678619, 34.054165, 50.205780>,  <40.328819, 34.204281, 50.328682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678619, 34.054165, 50.205780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361473, -0.081892, -0.928779,
		0.323396, 0.923284, -0.207270,
		0.874501, -0.375286, -0.307259,
		40.940971, 33.941578, 50.113602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426174, 34.559139, 49.725254>,  <40.328819, 34.204281, 50.328682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426174, 34.559139, 49.725254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.647770, 34.226990, 49.701321>,  <40.780727, 34.027699, 49.686962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.647770, 34.226990, 49.701321>,  <40.426174, 34.559139, 49.725254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647770, 34.226990, 49.701321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359079, -0.173485, -0.917041,
		0.751106, 0.529514, -0.394278,
		0.553987, -0.830372, -0.059831,
		40.813965, 33.977879, 49.683372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834251, 34.553986, 49.107445>,  <40.426174, 34.559139, 49.725254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834251, 34.553986, 49.107445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.818501, 34.162430, 49.187664>,  <40.809048, 33.927494, 49.235794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.818501, 34.162430, 49.187664>,  <40.834251, 34.553986, 49.107445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818501, 34.162430, 49.187664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248140, -0.184837, -0.950927,
		0.967923, -0.087211, -0.235624,
		-0.039379, -0.978892, 0.200549,
		40.806686, 33.868763, 49.247829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252327, 34.179916, 48.490475>,  <40.834251, 34.553986, 49.107445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252327, 34.179916, 48.490475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.028442, 33.897308, 48.663700>,  <40.894112, 33.727741, 48.767635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.028442, 33.897308, 48.663700>,  <41.252327, 34.179916, 48.490475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028442, 33.897308, 48.663700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384372, -0.241638, -0.890993,
		0.734154, -0.665158, -0.136321,
		-0.559711, -0.706524, 0.433068,
		40.860531, 33.685352, 48.793621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422482, 33.623081, 48.098160>,  <41.252327, 34.179916, 48.490475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422482, 33.623081, 48.098160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.074154, 33.522869, 48.267353>,  <40.865158, 33.462742, 48.368870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.074154, 33.522869, 48.267353>,  <41.422482, 33.623081, 48.098160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074154, 33.522869, 48.267353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330960, -0.337462, -0.881240,
		0.363519, -0.907388, 0.210952,
		-0.870815, -0.250531, 0.422983,
		40.812908, 33.447708, 48.394249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355202, 32.844254, 47.849930>,  <41.422482, 33.623081, 48.098160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355202, 32.844254, 47.849930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.001053, 32.992172, 47.962616>,  <40.788563, 33.080921, 48.030228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.001053, 32.992172, 47.962616>,  <41.355202, 32.844254, 47.849930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001053, 32.992172, 47.962616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444026, -0.493223, -0.748045,
		-0.137673, -0.787390, 0.600885,
		-0.885374, 0.369794, 0.281718,
		40.735439, 33.103111, 48.047131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013927, 32.233131, 47.996906>,  <41.355202, 32.844254, 47.849930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013927, 32.233131, 47.996906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.776836, 32.542812, 47.908104>,  <40.634583, 32.728622, 47.854824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.776836, 32.542812, 47.908104>,  <41.013927, 32.233131, 47.996906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776836, 32.542812, 47.908104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321964, -0.480423, -0.815802,
		-0.738253, -0.412069, 0.534024,
		-0.592724, 0.774204, -0.222003,
		40.599018, 32.775074, 47.841503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468964, 31.922583, 47.852955>,  <41.013927, 32.233131, 47.996906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468964, 31.922583, 47.852955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.422256, 32.284130, 47.688328>,  <40.394234, 32.501060, 47.589554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.422256, 32.284130, 47.688328>,  <40.468964, 31.922583, 47.852955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422256, 32.284130, 47.688328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315049, -0.426707, -0.847741,
		-0.941865, 0.030677, 0.334588,
		-0.116765, 0.903870, -0.411565,
		40.387226, 32.555290, 47.564857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956142, 31.766592, 47.501492>,  <40.468964, 31.922583, 47.852955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956142, 31.766592, 47.501492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.107975, 32.103485, 47.348358>,  <40.199074, 32.305622, 47.256477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.107975, 32.103485, 47.348358>,  <39.956142, 31.766592, 47.501492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107975, 32.103485, 47.348358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333222, -0.261571, -0.905838,
		-0.863066, 0.471406, 0.181364,
		0.379578, 0.842233, -0.382836,
		40.221848, 32.356155, 47.233509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443481, 32.143002, 47.190479>,  <39.956142, 31.766592, 47.501492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443481, 32.143002, 47.190479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.776367, 32.274029, 47.011543>,  <39.976101, 32.352646, 46.904182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.776367, 32.274029, 47.011543>,  <39.443481, 32.143002, 47.190479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776367, 32.274029, 47.011543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423667, -0.144766, -0.894175,
		-0.357662, 0.933672, 0.018302,
		0.832216, 0.327566, -0.447344,
		40.026031, 32.372299, 46.877338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865337, 32.568813, 47.273151>,  <39.443481, 32.143002, 47.190479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865337, 32.568813, 47.273151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.484932, 32.445908, 47.286755>,  <38.256687, 32.372166, 47.294914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.484932, 32.445908, 47.286755>,  <38.865337, 32.568813, 47.273151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484932, 32.445908, 47.286755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059785, -0.074878, 0.995399,
		-0.303302, 0.948674, 0.089580,
		-0.951017, -0.307263, 0.034006,
		38.199627, 32.353729, 47.296955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630180, 32.833096, 47.926659>,  <38.865337, 32.568813, 47.273151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630180, 32.833096, 47.926659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333954, 32.576141, 47.847759>,  <38.156219, 32.421970, 47.800419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333954, 32.576141, 47.847759>,  <38.630180, 32.833096, 47.926659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333954, 32.576141, 47.847759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230806, -0.032514, 0.972456,
		-0.631104, 0.765692, -0.124188,
		-0.740565, -0.642384, -0.197246,
		38.111786, 32.383427, 47.788586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009281, 33.098240, 48.162861>,  <38.630180, 32.833096, 47.926659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009281, 33.098240, 48.162861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981091, 32.699265, 48.157848>,  <37.964176, 32.459881, 48.154839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981091, 32.699265, 48.157848>,  <38.009281, 33.098240, 48.162861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981091, 32.699265, 48.157848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081160, -0.006791, 0.996678,
		-0.994206, 0.071259, -0.080473,
		-0.070476, -0.997435, -0.012535,
		37.959949, 32.400036, 48.154087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561806, 33.034031, 48.668457>,  <38.009281, 33.098240, 48.162861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561806, 33.034031, 48.668457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.680195, 32.654964, 48.620583>,  <37.751228, 32.427525, 48.591858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.680195, 32.654964, 48.620583>,  <37.561806, 33.034031, 48.668457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680195, 32.654964, 48.620583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007889, -0.127717, 0.991779,
		-0.955163, -0.292600, -0.045277,
		0.295977, -0.947668, -0.119682,
		37.768990, 32.370663, 48.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211445, 32.673531, 49.162182>,  <37.561806, 33.034031, 48.668457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211445, 32.673531, 49.162182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.518139, 32.427685, 49.088036>,  <37.702156, 32.280178, 49.043549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.518139, 32.427685, 49.088036>,  <37.211445, 32.673531, 49.162182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518139, 32.427685, 49.088036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038326, -0.244407, 0.968915,
		-0.640814, -0.750009, -0.163841,
		0.766739, -0.614615, -0.185364,
		37.748161, 32.243301, 49.032425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026085, 31.978281, 49.381935>,  <37.211445, 32.673531, 49.162182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026085, 31.978281, 49.381935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.424004, 32.012531, 49.403992>,  <37.662754, 32.033081, 49.417225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.424004, 32.012531, 49.403992>,  <37.026085, 31.978281, 49.381935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424004, 32.012531, 49.403992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028801, -0.282847, 0.958733,
		0.097689, -0.955335, -0.278910,
		0.994800, 0.085625, 0.055145,
		37.722443, 32.038219, 49.420536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212433, 31.385874, 49.764103>,  <37.026085, 31.978281, 49.381935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212433, 31.385874, 49.764103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.539879, 31.614838, 49.782963>,  <37.736347, 31.752216, 49.794281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.539879, 31.614838, 49.782963>,  <37.212433, 31.385874, 49.764103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539879, 31.614838, 49.782963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099447, -0.222119, 0.969935,
		0.565673, -0.789310, -0.238753,
		0.818611, 0.572410, 0.047152,
		37.785461, 31.786560, 49.797108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613762, 30.995005, 50.149693>,  <37.212433, 31.385874, 49.764103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613762, 30.995005, 50.149693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751450, 31.369827, 50.173149>,  <37.834064, 31.594721, 50.187225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751450, 31.369827, 50.173149>,  <37.613762, 30.995005, 50.149693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751450, 31.369827, 50.173149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160886, -0.120408, 0.979601,
		0.925001, -0.327764, -0.192206,
		0.344221, 0.937055, 0.058645,
		37.854717, 31.650944, 50.190742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158207, 30.881628, 50.595871>,  <37.613762, 30.995005, 50.149693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158207, 30.881628, 50.595871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.066589, 31.270678, 50.611572>,  <38.011620, 31.504108, 50.620991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.066589, 31.270678, 50.611572>,  <38.158207, 30.881628, 50.595871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066589, 31.270678, 50.611572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024225, -0.034614, 0.999107,
		0.973115, 0.229788, -0.015634,
		-0.229042, 0.972625, 0.039250,
		37.997875, 31.562466, 50.623348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549809, 31.160883, 51.185051>,  <38.158207, 30.881628, 50.595871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549809, 31.160883, 51.185051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293468, 31.457737, 51.106518>,  <38.139664, 31.635849, 51.059399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293468, 31.457737, 51.106518>,  <38.549809, 31.160883, 51.185051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293468, 31.457737, 51.106518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021977, 0.237914, 0.971038,
		0.767354, 0.626601, -0.136157,
		-0.640847, 0.742137, -0.196335,
		38.101215, 31.680378, 51.047619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759567, 31.708361, 51.520546>,  <38.549809, 31.160883, 51.185051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759567, 31.708361, 51.520546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377090, 31.817812, 51.478924>,  <38.147606, 31.883482, 51.453953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377090, 31.817812, 51.478924>,  <38.759567, 31.708361, 51.520546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377090, 31.817812, 51.478924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019042, 0.296553, 0.954827,
		0.292124, 0.914978, -0.278351,
		-0.956191, 0.273627, -0.104053,
		38.090233, 31.899900, 51.447708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668316, 32.340351, 51.896770>,  <38.759567, 31.708361, 51.520546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668316, 32.340351, 51.896770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.292336, 32.214317, 51.844288>,  <38.066746, 32.138699, 51.812798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.292336, 32.214317, 51.844288>,  <38.668316, 32.340351, 51.896770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292336, 32.214317, 51.844288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191548, 0.168811, 0.966857,
		-0.282491, 0.933930, -0.219027,
		-0.939951, -0.315082, -0.131205,
		38.010349, 32.119793, 51.804928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213573, 32.819878, 52.328129>,  <38.668316, 32.340351, 51.896770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213573, 32.819878, 52.328129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.002258, 32.491226, 52.242485>,  <37.875469, 32.294037, 52.191101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.002258, 32.491226, 52.242485>,  <38.213573, 32.819878, 52.328129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002258, 32.491226, 52.242485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406326, 0.023232, 0.913433,
		-0.745525, 0.569556, -0.346120,
		-0.528292, -0.821625, -0.214105,
		37.843769, 32.244740, 52.178253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475651, 32.950737, 52.672932>,  <38.213573, 32.819878, 52.328129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475651, 32.950737, 52.672932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.512585, 32.558121, 52.605946>,  <37.534744, 32.322552, 52.565754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.512585, 32.558121, 52.605946>,  <37.475651, 32.950737, 52.672932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512585, 32.558121, 52.605946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610430, -0.188672, 0.769271,
		-0.786670, 0.031196, -0.616585,
		0.092334, -0.981544, -0.167466,
		37.540283, 32.263657, 52.555706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273117, 33.357796, 52.049427>,  <37.475651, 32.950737, 52.672932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273117, 33.357796, 52.049427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.435127, 33.583191, 52.337437>,  <37.532333, 33.718426, 52.510242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.435127, 33.583191, 52.337437>,  <37.273117, 33.357796, 52.049427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435127, 33.583191, 52.337437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503276, 0.794873, -0.338955,
		-0.763326, -0.225086, 0.605533,
		0.405027, 0.563484, 0.720027,
		37.556637, 33.752235, 52.553444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741825, 33.598530, 52.652966>,  <37.273117, 33.357796, 52.049427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741825, 33.598530, 52.652966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.041248, 33.814899, 52.499569>,  <37.220901, 33.944721, 52.407532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.041248, 33.814899, 52.499569>,  <36.741825, 33.598530, 52.652966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041248, 33.814899, 52.499569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662458, 0.585252, -0.467578,
		-0.028485, 0.604055, 0.796433,
		0.748557, 0.540923, -0.383490,
		37.265816, 33.977177, 52.384521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623768, 34.411129, 52.544975>,  <36.741825, 33.598530, 52.652966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623768, 34.411129, 52.544975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.922314, 34.325756, 52.292824>,  <37.101440, 34.274532, 52.141533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.922314, 34.325756, 52.292824>,  <36.623768, 34.411129, 52.544975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922314, 34.325756, 52.292824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441628, 0.549774, -0.709023,
		0.497894, 0.807587, 0.316077,
		0.746368, -0.213430, -0.630382,
		37.146225, 34.261726, 52.103710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796001, 35.112396, 52.258678>,  <36.623768, 34.411129, 52.544975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796001, 35.112396, 52.258678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933235, 34.836014, 52.004162>,  <37.015575, 34.670185, 51.851452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933235, 34.836014, 52.004162>,  <36.796001, 35.112396, 52.258678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933235, 34.836014, 52.004162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346965, 0.536279, -0.769429,
		0.872875, 0.484748, -0.055751,
		0.343081, -0.690959, -0.636295,
		37.036160, 34.628727, 51.813274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943722, 35.414070, 51.671383>,  <36.796001, 35.112396, 52.258678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943722, 35.414070, 51.671383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.990776, 35.049244, 51.514263>,  <37.019009, 34.830349, 51.419991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.990776, 35.049244, 51.514263>,  <36.943722, 35.414070, 51.671383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990776, 35.049244, 51.514263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367548, 0.327465, -0.870445,
		0.922534, 0.246771, -0.296707,
		0.117640, -0.912070, -0.392797,
		37.026070, 34.775623, 51.396423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401672, 35.393959, 51.013550>,  <36.943722, 35.414070, 51.671383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401672, 35.393959, 51.013550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.153278, 35.082100, 50.981255>,  <37.004242, 34.894985, 50.961876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.153278, 35.082100, 50.981255>,  <37.401672, 35.393959, 51.013550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153278, 35.082100, 50.981255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387974, 0.395244, -0.832621,
		0.681067, -0.485721, -0.547926,
		-0.620986, -0.779653, -0.080740,
		36.966984, 34.848206, 50.957031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405800, 35.084190, 50.315212>,  <37.401672, 35.393959, 51.013550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405800, 35.084190, 50.315212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043770, 34.999741, 50.462872>,  <36.826553, 34.949070, 50.551468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043770, 34.999741, 50.462872>,  <37.405800, 35.084190, 50.315212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043770, 34.999741, 50.462872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423014, 0.357900, -0.832446,
		0.043626, -0.909580, -0.413232,
		-0.905073, -0.211120, 0.369151,
		36.772247, 34.936405, 50.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955227, 35.102009, 49.710327>,  <37.405800, 35.084190, 50.315212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955227, 35.102009, 49.710327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995373, 35.495083, 49.772625>,  <38.019459, 35.730927, 49.810001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995373, 35.495083, 49.772625>,  <37.955227, 35.102009, 49.710327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995373, 35.495083, 49.772625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543137, -0.185261, 0.818951,
		0.833624, 0.002399, -0.552327,
		0.100360, 0.982686, 0.155741,
		38.025482, 35.789890, 49.819347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583435, 35.161186, 49.862885>,  <37.955227, 35.102009, 49.710327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583435, 35.161186, 49.862885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478386, 35.524097, 49.994267>,  <38.415356, 35.741844, 50.073097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478386, 35.524097, 49.994267>,  <38.583435, 35.161186, 49.862885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478386, 35.524097, 49.994267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740028, -0.029053, 0.671949,
		0.619184, 0.419537, -0.663777,
		-0.262622, 0.907273, 0.328458,
		38.399601, 35.796280, 50.092804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199490, 35.532715, 49.903271>,  <38.583435, 35.161186, 49.862885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199490, 35.532715, 49.903271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949032, 35.732090, 50.143101>,  <38.798756, 35.851715, 50.286999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949032, 35.732090, 50.143101>,  <39.199490, 35.532715, 49.903271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949032, 35.732090, 50.143101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637505, -0.115468, 0.761744,
		0.448917, 0.859200, -0.245458,
		-0.626148, 0.498441, 0.599579,
		38.761189, 35.881622, 50.322975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612854, 35.990719, 50.292057>,  <39.199490, 35.532715, 49.903271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612854, 35.990719, 50.292057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.289135, 35.939678, 50.521408>,  <39.094906, 35.909054, 50.659019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.289135, 35.939678, 50.521408>,  <39.612854, 35.990719, 50.292057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289135, 35.939678, 50.521408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584981, -0.086485, 0.806423,
		-0.053309, 0.988048, 0.144634,
		-0.809293, -0.127598, 0.573379,
		39.046349, 35.901398, 50.693420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732555, 36.416252, 50.839981>,  <39.612854, 35.990719, 50.292057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732555, 36.416252, 50.839981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.448502, 36.175510, 50.986118>,  <39.278069, 36.031063, 51.073799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.448502, 36.175510, 50.986118>,  <39.732555, 36.416252, 50.839981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448502, 36.175510, 50.986118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381998, 0.106527, 0.918003,
		-0.591425, 0.791467, 0.154260,
		-0.710136, -0.601857, 0.365342,
		39.235462, 35.994953, 51.095722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598965, 36.651806, 51.557636>,  <39.732555, 36.416252, 50.839981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598965, 36.651806, 51.557636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.453823, 36.279472, 51.540283>,  <39.366737, 36.056072, 51.529873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.453823, 36.279472, 51.540283>,  <39.598965, 36.651806, 51.557636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453823, 36.279472, 51.540283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297581, -0.159867, 0.941216,
		-0.883053, 0.328613, 0.335008,
		-0.362853, -0.930836, -0.043382,
		39.344967, 36.000221, 51.527267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231728, 36.616291, 52.131226>,  <39.598965, 36.651806, 51.557636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231728, 36.616291, 52.131226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.283390, 36.234806, 52.022591>,  <39.314388, 36.005917, 51.957409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.283390, 36.234806, 52.022591>,  <39.231728, 36.616291, 52.131226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283390, 36.234806, 52.022591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279752, -0.227713, 0.932676,
		-0.951345, -0.196435, 0.237392,
		0.129153, -0.953709, -0.271587,
		39.322136, 35.948692, 51.941116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916836, 36.071804, 52.575821>,  <39.231728, 36.616291, 52.131226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916836, 36.071804, 52.575821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.218330, 35.872997, 52.403843>,  <39.399227, 35.753712, 52.300655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.218330, 35.872997, 52.403843>,  <38.916836, 36.071804, 52.575821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218330, 35.872997, 52.403843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382571, -0.200103, 0.901997,
		-0.534346, -0.844351, 0.039322,
		0.753734, -0.497022, -0.429948,
		39.444450, 35.723892, 52.274857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063778, 35.459415, 52.950287>,  <38.916836, 36.071804, 52.575821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063778, 35.459415, 52.950287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.410927, 35.533642, 52.765953>,  <39.619217, 35.578178, 52.655354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.410927, 35.533642, 52.765953>,  <39.063778, 35.459415, 52.950287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410927, 35.533642, 52.765953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496653, -0.301989, 0.813719,
		0.011829, -0.935077, -0.354248,
		0.867868, 0.185564, -0.460837,
		39.671288, 35.589310, 52.627701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.843235, 33.852268, 37.988121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193943, 34.039722, 37.944935>,  <37.404369, 34.152195, 37.919022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193943, 34.039722, 37.944935>,  <36.843235, 33.852268, 37.988121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193943, 34.039722, 37.944935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044491, 0.302590, 0.952082,
		0.478850, -0.829952, 0.286151,
		0.876769, 0.468636, -0.107970,
		37.456974, 34.180313, 37.912544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145435, 33.612625, 38.548752>,  <36.843235, 33.852268, 37.988121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145435, 33.612625, 38.548752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339695, 33.943184, 38.434761>,  <37.456249, 34.141521, 38.366367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339695, 33.943184, 38.434761>,  <37.145435, 33.612625, 38.548752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339695, 33.943184, 38.434761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137517, 0.249716, 0.958505,
		0.863272, -0.504682, 0.007629,
		0.485645, 0.826401, -0.284975,
		37.485390, 34.191105, 38.349270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741756, 33.624481, 38.919319>,  <37.145435, 33.612625, 38.548752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741756, 33.624481, 38.919319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704159, 34.009544, 38.817768>,  <37.681599, 34.240582, 38.756840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704159, 34.009544, 38.817768>,  <37.741756, 33.624481, 38.919319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704159, 34.009544, 38.817768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052852, 0.259469, 0.964304,
		0.994169, 0.077223, -0.075267,
		-0.093996, 0.962659, -0.253874,
		37.675961, 34.298344, 38.741608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095837, 33.945602, 39.407024>,  <37.741756, 33.624481, 38.919319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095837, 33.945602, 39.407024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896484, 34.250565, 39.241928>,  <37.776871, 34.433540, 39.142872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896484, 34.250565, 39.241928>,  <38.095837, 33.945602, 39.407024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896484, 34.250565, 39.241928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232525, 0.341086, 0.910820,
		0.835192, 0.549909, 0.007287,
		-0.498383, 0.762404, -0.412740,
		37.746971, 34.479286, 39.118107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051018, 34.380383, 39.940834>,  <38.095837, 33.945602, 39.407024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051018, 34.380383, 39.940834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756973, 34.529247, 39.714165>,  <37.580547, 34.618565, 39.578163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756973, 34.529247, 39.714165>,  <38.051018, 34.380383, 39.940834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756973, 34.529247, 39.714165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499322, 0.268179, 0.823867,
		0.458579, 0.888582, -0.011313,
		-0.735107, 0.372159, -0.566670,
		37.536442, 34.640896, 39.544163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925789, 35.024830, 40.139587>,  <38.051018, 34.380383, 39.940834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925789, 35.024830, 40.139587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573803, 34.926605, 39.976929>,  <37.362610, 34.867672, 39.879333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573803, 34.926605, 39.976929>,  <37.925789, 35.024830, 40.139587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573803, 34.926605, 39.976929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475003, 0.444079, 0.759714,
		-0.005969, 0.861681, -0.507414,
		-0.879964, -0.245558, -0.406651,
		37.309814, 34.852940, 39.854935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609005, 35.678310, 40.086334>,  <37.925789, 35.024830, 40.139587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609005, 35.678310, 40.086334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321499, 35.400520, 40.073185>,  <37.148994, 35.233845, 40.065296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321499, 35.400520, 40.073185>,  <37.609005, 35.678310, 40.086334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321499, 35.400520, 40.073185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416873, 0.392640, 0.819787,
		-0.556416, 0.602937, -0.571724,
		-0.718762, -0.694478, -0.032877,
		37.105869, 35.192177, 40.063320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909367, 36.041122, 40.096004>,  <37.609005, 35.678310, 40.086334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909367, 36.041122, 40.096004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844131, 35.656811, 40.185719>,  <36.804993, 35.426224, 40.239548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844131, 35.656811, 40.185719>,  <36.909367, 36.041122, 40.096004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844131, 35.656811, 40.185719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655322, 0.275424, 0.703345,
		-0.737534, -0.032275, -0.674538,
		-0.163084, -0.960781, 0.224285,
		36.795208, 35.368576, 40.253002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271698, 36.127571, 40.300117>,  <36.909367, 36.041122, 40.096004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271698, 36.127571, 40.300117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397789, 35.769196, 40.425285>,  <36.473446, 35.554169, 40.500385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397789, 35.769196, 40.425285>,  <36.271698, 36.127571, 40.300117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397789, 35.769196, 40.425285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609848, 0.061393, 0.790137,
		-0.727129, -0.439905, -0.527036,
		0.315229, -0.895943, 0.312916,
		36.492359, 35.500412, 40.519161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659409, 35.811214, 40.574566>,  <36.271698, 36.127571, 40.300117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659409, 35.811214, 40.574566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967789, 35.633999, 40.757584>,  <36.152817, 35.527668, 40.867393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967789, 35.633999, 40.757584>,  <35.659409, 35.811214, 40.574566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967789, 35.633999, 40.757584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481579, 0.064618, 0.874017,
		-0.416789, -0.894171, -0.163540,
		0.770953, -0.443038, 0.457546,
		36.199074, 35.501087, 40.894848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365738, 35.361843, 41.114925>,  <35.659409, 35.811214, 40.574566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365738, 35.361843, 41.114925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745117, 35.438248, 41.216080>,  <35.972744, 35.484089, 41.276772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745117, 35.438248, 41.216080>,  <35.365738, 35.361843, 41.114925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745117, 35.438248, 41.216080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249599, -0.041502, 0.967459,
		0.195290, -0.980710, 0.008313,
		0.948453, 0.191010, 0.252890,
		36.029652, 35.495552, 41.291946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506565, 34.916973, 41.662933>,  <35.365738, 35.361843, 41.114925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506565, 34.916973, 41.662933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798870, 35.189278, 41.683128>,  <35.974255, 35.352661, 41.695244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798870, 35.189278, 41.683128>,  <35.506565, 34.916973, 41.662933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798870, 35.189278, 41.683128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148845, 0.086724, 0.985050,
		0.666208, -0.727351, 0.164703,
		0.730761, 0.680764, 0.050486,
		36.018097, 35.393505, 41.698273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252586, 34.185215, 41.897633>,  <35.506565, 34.916973, 41.662933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252586, 34.185215, 41.897633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873714, 34.141903, 42.018383>,  <34.646393, 34.115917, 42.090836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873714, 34.141903, 42.018383>,  <35.252586, 34.185215, 41.897633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873714, 34.141903, 42.018383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260708, -0.288247, -0.921382,
		0.186784, -0.951414, 0.244791,
		-0.947177, -0.108280, 0.301881,
		34.589561, 34.109421, 42.108948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980492, 33.507248, 41.783890>,  <35.252586, 34.185215, 41.897633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980492, 33.507248, 41.783890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663921, 33.748535, 41.744331>,  <34.473980, 33.893307, 41.720596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663921, 33.748535, 41.744331>,  <34.980492, 33.507248, 41.783890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663921, 33.748535, 41.744331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194989, -0.402462, -0.894430,
		-0.579335, -0.688590, 0.436138,
		-0.791423, 0.603216, -0.098893,
		34.426495, 33.929501, 41.714664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534351, 33.055550, 41.594872>,  <34.980492, 33.507248, 41.783890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534351, 33.055550, 41.594872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380848, 33.408802, 41.486946>,  <34.288746, 33.620754, 41.422192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380848, 33.408802, 41.486946>,  <34.534351, 33.055550, 41.594872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380848, 33.408802, 41.486946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242208, -0.378224, -0.893466,
		-0.891101, -0.277527, 0.359051,
		-0.383762, 0.883134, -0.269817,
		34.265720, 33.673740, 41.406002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807320, 32.992435, 41.521954>,  <34.534351, 33.055550, 41.594872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807320, 32.992435, 41.521954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883915, 33.320087, 41.305676>,  <33.929871, 33.516678, 41.175907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883915, 33.320087, 41.305676>,  <33.807320, 32.992435, 41.521954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883915, 33.320087, 41.305676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580811, -0.349510, -0.735188,
		-0.791195, 0.454824, 0.408834,
		0.191490, 0.819132, -0.540698,
		33.941360, 33.565826, 41.143467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270485, 33.049377, 41.039497>,  <33.807320, 32.992435, 41.521954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270485, 33.049377, 41.039497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511166, 33.313614, 40.859913>,  <33.655575, 33.472157, 40.752163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511166, 33.313614, 40.859913>,  <33.270485, 33.049377, 41.039497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511166, 33.313614, 40.859913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544034, -0.072588, -0.835918,
		-0.584790, 0.747228, 0.315708,
		0.601705, 0.660592, -0.448966,
		33.691677, 33.511791, 40.725224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858448, 33.606934, 40.666653>,  <33.270485, 33.049377, 41.039497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858448, 33.606934, 40.666653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222481, 33.595421, 40.501282>,  <33.440903, 33.588512, 40.402061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222481, 33.595421, 40.501282>,  <32.858448, 33.606934, 40.666653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222481, 33.595421, 40.501282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411354, 0.058464, -0.909599,
		0.050350, 0.997875, 0.041367,
		0.910084, -0.028782, -0.413423,
		33.495506, 33.586784, 40.377254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820576, 34.080254, 40.096943>,  <32.858448, 33.606934, 40.666653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820576, 34.080254, 40.096943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143330, 33.858257, 40.016018>,  <33.336983, 33.725060, 39.967461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143330, 33.858257, 40.016018>,  <32.820576, 34.080254, 40.096943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143330, 33.858257, 40.016018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361986, -0.193895, -0.911795,
		0.466809, 0.808945, -0.357348,
		0.806880, -0.554989, -0.202315,
		33.385395, 33.691761, 39.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037556, 34.183495, 39.323746>,  <32.820576, 34.080254, 40.096943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037556, 34.183495, 39.323746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232780, 33.850716, 39.429317>,  <33.349915, 33.651051, 39.492661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232780, 33.850716, 39.429317>,  <33.037556, 34.183495, 39.323746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232780, 33.850716, 39.429317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348467, -0.462984, -0.814995,
		0.800228, 0.305798, -0.515871,
		0.488064, -0.831946, 0.263932,
		33.379200, 33.601131, 39.508495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324303, 34.004089, 38.724743>,  <33.037556, 34.183495, 39.323746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324303, 34.004089, 38.724743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244843, 33.686932, 38.955170>,  <33.197166, 33.496639, 39.093426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244843, 33.686932, 38.955170>,  <33.324303, 34.004089, 38.724743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244843, 33.686932, 38.955170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573005, -0.382896, -0.724607,
		0.795111, -0.474038, -0.378268,
		-0.198655, -0.792892, 0.576071,
		33.185246, 33.449062, 39.127991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451523, 33.485176, 38.336422>,  <33.324303, 34.004089, 38.724743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451523, 33.485176, 38.336422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234112, 33.322281, 38.630016>,  <33.103664, 33.224545, 38.806171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234112, 33.322281, 38.630016>,  <33.451523, 33.485176, 38.336422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234112, 33.322281, 38.630016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506170, -0.538535, -0.673626,
		0.669601, -0.737657, 0.086580,
		-0.543531, -0.407236, 0.733984,
		33.071053, 33.200111, 38.850212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598194, 32.875732, 38.301426>,  <33.451523, 33.485176, 38.336422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598194, 32.875732, 38.301426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245396, 32.876488, 38.489929>,  <33.033718, 32.876942, 38.603031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245396, 32.876488, 38.489929>,  <33.598194, 32.875732, 38.301426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245396, 32.876488, 38.489929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404938, -0.514571, -0.755805,
		0.241072, -0.857445, 0.454612,
		-0.881992, 0.001886, 0.471261,
		32.980797, 32.877052, 38.631306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307423, 32.207073, 38.182377>,  <33.598194, 32.875732, 38.301426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307423, 32.207073, 38.182377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003983, 32.452194, 38.270916>,  <32.821918, 32.599266, 38.324039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003983, 32.452194, 38.270916>,  <33.307423, 32.207073, 38.182377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003983, 32.452194, 38.270916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502088, -0.333305, -0.798007,
		-0.415244, -0.716507, 0.560527,
		-0.758604, 0.612802, 0.221347,
		32.776402, 32.636036, 38.337322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615932, 31.736019, 38.136951>,  <33.307423, 32.207073, 38.182377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615932, 31.736019, 38.136951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544292, 32.128448, 38.107510>,  <32.501308, 32.363907, 38.089844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544292, 32.128448, 38.107510>,  <32.615932, 31.736019, 38.136951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544292, 32.128448, 38.107510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637203, -0.172676, -0.751103,
		-0.749598, -0.087619, 0.656069,
		-0.179098, 0.981074, -0.073606,
		32.490562, 32.422771, 38.085426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027878, 31.167931, 37.891083>,  <32.615932, 31.736019, 38.136951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027878, 31.167931, 37.891083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422760, 31.156088, 37.953762>,  <33.659687, 31.148981, 37.991367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422760, 31.156088, 37.953762>,  <33.027878, 31.167931, 37.891083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422760, 31.156088, 37.953762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137776, -0.336426, -0.931577,
		0.080299, 0.941245, -0.328041,
		0.987203, -0.029609, 0.156695,
		33.718922, 31.147205, 38.000771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380753, 31.261793, 37.326717>,  <33.027878, 31.167931, 37.891083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380753, 31.261793, 37.326717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684517, 31.049202, 37.476826>,  <33.866776, 30.921646, 37.566891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684517, 31.049202, 37.476826>,  <33.380753, 31.261793, 37.326717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684517, 31.049202, 37.476826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149274, -0.419083, -0.895593,
		0.633260, 0.736138, -0.238919,
		0.759407, -0.531479, 0.375275,
		33.912338, 30.889759, 37.589409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996998, 31.272572, 37.056137>,  <33.380753, 31.261793, 37.326717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996998, 31.272572, 37.056137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054634, 30.915422, 37.226791>,  <34.089214, 30.701134, 37.329182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054634, 30.915422, 37.226791>,  <33.996998, 31.272572, 37.056137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054634, 30.915422, 37.226791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052945, -0.437471, -0.897672,
		0.988147, 0.106757, -0.110308,
		0.144089, -0.892873, 0.426634,
		34.097862, 30.647560, 37.354782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603077, 30.977823, 36.814659>,  <33.996998, 31.272572, 37.056137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603077, 30.977823, 36.814659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326580, 30.707912, 36.918083>,  <34.160683, 30.545965, 36.980137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326580, 30.707912, 36.918083>,  <34.603077, 30.977823, 36.814659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326580, 30.707912, 36.918083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135120, -0.472196, -0.871076,
		0.709874, -0.567192, 0.417580,
		-0.691247, -0.674778, 0.258560,
		34.119205, 30.505480, 36.995651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720924, 31.088140, 37.645321>,  <34.603077, 30.977823, 36.814659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720924, 31.088140, 37.645321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997097, 31.371706, 37.587696>,  <35.162800, 31.541845, 37.553120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997097, 31.371706, 37.587696>,  <34.720924, 31.088140, 37.645321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997097, 31.371706, 37.587696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292784, -0.091738, 0.951768,
		0.661503, -0.699306, -0.270896,
		0.690428, 0.708911, -0.144060,
		35.204224, 31.584379, 37.544479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304554, 30.856897, 37.995079>,  <34.720924, 31.088140, 37.645321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304554, 30.856897, 37.995079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411015, 31.241861, 37.973419>,  <35.474892, 31.472839, 37.960423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411015, 31.241861, 37.973419>,  <35.304554, 30.856897, 37.995079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411015, 31.241861, 37.973419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426402, -0.067165, 0.902037,
		0.864492, -0.263166, -0.428249,
		0.266149, 0.962410, -0.054151,
		35.490860, 31.530584, 37.957172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996185, 30.875187, 38.208363>,  <35.304554, 30.856897, 37.995079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996185, 30.875187, 38.208363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827801, 31.232321, 38.272411>,  <35.726768, 31.446602, 38.310841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827801, 31.232321, 38.272411>,  <35.996185, 30.875187, 38.208363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827801, 31.232321, 38.272411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481100, 0.070119, 0.873857,
		0.768982, 0.444894, -0.459060,
		-0.420963, 0.892834, 0.160118,
		35.701511, 31.500172, 38.320446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579746, 31.317591, 38.476147>,  <35.996185, 30.875187, 38.208363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579746, 31.317591, 38.476147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227581, 31.487352, 38.560772>,  <36.016281, 31.589209, 38.611549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227581, 31.487352, 38.560772>,  <36.579746, 31.317591, 38.476147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227581, 31.487352, 38.560772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322488, 0.208733, 0.923273,
		0.347678, 0.881086, -0.320635,
		-0.880410, 0.424402, 0.211568,
		35.963459, 31.614674, 38.624241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762413, 31.901552, 38.942753>,  <36.579746, 31.317591, 38.476147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762413, 31.901552, 38.942753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368748, 31.841648, 38.980701>,  <36.132549, 31.805706, 39.003471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368748, 31.841648, 38.980701>,  <36.762413, 31.901552, 38.942753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368748, 31.841648, 38.980701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059535, 0.224880, 0.972566,
		-0.166987, 0.962809, -0.212402,
		-0.984160, -0.149760, 0.094873,
		36.073502, 31.796721, 39.009163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554008, 32.505550, 39.367325>,  <36.762413, 31.901552, 38.942753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554008, 32.505550, 39.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277817, 32.217991, 39.399376>,  <36.112103, 32.045456, 39.418606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277817, 32.217991, 39.399376>,  <36.554008, 32.505550, 39.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277817, 32.217991, 39.399376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034425, 0.077995, 0.996359,
		-0.722532, 0.690724, -0.029106,
		-0.690480, -0.718900, 0.080132,
		36.070671, 32.002319, 39.423416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085468, 32.780159, 39.817406>,  <36.554008, 32.505550, 39.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085468, 32.780159, 39.817406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043968, 32.382835, 39.837730>,  <36.019070, 32.144444, 39.849926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043968, 32.382835, 39.837730>,  <36.085468, 32.780159, 39.817406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043968, 32.382835, 39.837730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076095, 0.043009, 0.996172,
		-0.991688, 0.107218, 0.071123,
		-0.103749, -0.993305, 0.050810,
		36.012844, 32.084843, 39.852974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626255, 32.739525, 40.409866>,  <36.085468, 32.780159, 39.817406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626255, 32.739525, 40.409866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804939, 32.384586, 40.364124>,  <35.912148, 32.171623, 40.336678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804939, 32.384586, 40.364124>,  <35.626255, 32.739525, 40.409866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804939, 32.384586, 40.364124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234656, -0.007141, 0.972052,
		-0.863359, -0.461057, 0.205030,
		0.446707, -0.887342, -0.114355,
		35.938950, 32.118385, 40.329819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412201, 32.200779, 40.852852>,  <35.626255, 32.739525, 40.409866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412201, 32.200779, 40.852852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787758, 32.090843, 40.769955>,  <36.013092, 32.024879, 40.720215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787758, 32.090843, 40.769955>,  <35.412201, 32.200779, 40.852852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787758, 32.090843, 40.769955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223842, 0.030093, 0.974161,
		-0.261504, -0.961018, 0.089776,
		0.938888, -0.274843, -0.207247,
		36.069424, 32.008392, 40.707779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580208, 31.905470, 41.417294>,  <35.412201, 32.200779, 40.852852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580208, 31.905470, 41.417294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939034, 31.911379, 41.240631>,  <36.154327, 31.914925, 41.134632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939034, 31.911379, 41.240631>,  <35.580208, 31.905470, 41.417294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939034, 31.911379, 41.240631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440157, 0.058897, 0.895987,
		0.039230, -0.998155, 0.046341,
		0.897063, 0.014752, -0.441656,
		36.208153, 31.915810, 41.108135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977554, 31.418505, 41.841930>,  <35.580208, 31.905470, 41.417294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977554, 31.418505, 41.841930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227493, 31.691811, 41.690819>,  <36.377457, 31.855795, 41.600151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227493, 31.691811, 41.690819>,  <35.977554, 31.418505, 41.841930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227493, 31.691811, 41.690819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432490, 0.099928, 0.896084,
		0.650013, -0.723301, -0.233065,
		0.624848, 0.683264, -0.377775,
		36.414948, 31.896790, 41.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490891, 31.264994, 42.290138>,  <35.977554, 31.418505, 41.841930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490891, 31.264994, 42.290138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591988, 31.602173, 42.100166>,  <36.652645, 31.804480, 41.986183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591988, 31.602173, 42.100166>,  <36.490891, 31.264994, 42.290138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591988, 31.602173, 42.100166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552905, 0.276987, 0.785859,
		0.793988, -0.461214, -0.396063,
		0.252745, 0.842947, -0.474931,
		36.667812, 31.855057, 41.957687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218479, 31.339203, 42.376118>,  <36.490891, 31.264994, 42.290138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218479, 31.339203, 42.376118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069958, 31.705885, 42.317085>,  <36.980843, 31.925896, 42.281666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069958, 31.705885, 42.317085>,  <37.218479, 31.339203, 42.376118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069958, 31.705885, 42.317085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426943, 0.309704, 0.849590,
		0.824531, 0.252450, -0.506377,
		-0.371306, 0.916707, -0.147578,
		36.958565, 31.980898, 42.272812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671955, 31.830671, 42.741291>,  <37.218479, 31.339203, 42.376118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671955, 31.830671, 42.741291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333221, 32.032551, 42.674175>,  <37.129982, 32.153679, 42.633904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333221, 32.032551, 42.674175>,  <37.671955, 31.830671, 42.741291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333221, 32.032551, 42.674175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042595, 0.378825, 0.924488,
		0.530151, 0.775739, -0.342299,
		-0.846833, 0.504698, -0.167792,
		37.079170, 32.183960, 42.623837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852291, 32.494423, 42.974998>,  <37.671955, 31.830671, 42.741291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852291, 32.494423, 42.974998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454079, 32.456741, 42.972126>,  <37.215153, 32.434132, 42.970402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454079, 32.456741, 42.972126>,  <37.852291, 32.494423, 42.974998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454079, 32.456741, 42.972126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062975, 0.604991, 0.793738,
		-0.070434, 0.790639, -0.608217,
		-0.995527, -0.094209, -0.007179,
		37.155422, 32.428478, 42.969971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486656, 33.207119, 43.042072>,  <37.852291, 32.494423, 42.974998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486656, 33.207119, 43.042072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298340, 32.885605, 43.187550>,  <37.185349, 32.692696, 43.274837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298340, 32.885605, 43.187550>,  <37.486656, 33.207119, 43.042072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298340, 32.885605, 43.187550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057742, 0.439430, 0.896419,
		-0.880351, 0.401028, -0.253294,
		-0.470794, -0.803789, 0.363697,
		37.157101, 32.644466, 43.296658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217442, 33.418640, 43.680271>,  <37.486656, 33.207119, 43.042072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217442, 33.418640, 43.680271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125870, 33.031437, 43.721375>,  <37.070927, 32.799114, 43.746037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125870, 33.031437, 43.721375>,  <37.217442, 33.418640, 43.680271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125870, 33.031437, 43.721375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071698, 0.122041, 0.989932,
		-0.970799, 0.219256, -0.097343,
		-0.228929, -0.968005, 0.102757,
		37.057190, 32.741035, 43.752201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776764, 33.475441, 44.198620>,  <37.217442, 33.418640, 43.680271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776764, 33.475441, 44.198620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874882, 33.087753, 44.206963>,  <36.933754, 32.855141, 44.211967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874882, 33.087753, 44.206963>,  <36.776764, 33.475441, 44.198620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874882, 33.087753, 44.206963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066409, 0.038259, 0.997059,
		-0.967170, -0.243193, 0.073750,
		0.245299, -0.969223, 0.020853,
		36.948471, 32.796986, 44.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499100, 33.287895, 44.832848>,  <36.776764, 33.475441, 44.198620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499100, 33.287895, 44.832848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745064, 32.991402, 44.725174>,  <36.892643, 32.813507, 44.660568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745064, 32.991402, 44.725174>,  <36.499100, 33.287895, 44.832848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745064, 32.991402, 44.725174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294251, -0.101033, 0.950373,
		-0.731647, -0.663598, 0.155984,
		0.614906, -0.741235, -0.269185,
		36.929535, 32.769032, 44.644417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416988, 32.865353, 45.320656>,  <36.499100, 33.287895, 44.832848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416988, 32.865353, 45.320656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753078, 32.714066, 45.165234>,  <36.954731, 32.623295, 45.071980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753078, 32.714066, 45.165234>,  <36.416988, 32.865353, 45.320656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753078, 32.714066, 45.165234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294418, -0.283537, 0.912647,
		-0.455352, -0.881224, -0.126879,
		0.840222, -0.378220, -0.388557,
		37.005146, 32.600601, 45.048668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574001, 32.080227, 45.508400>,  <36.416988, 32.865353, 45.320656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574001, 32.080227, 45.508400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932178, 32.236691, 45.423386>,  <37.147087, 32.330570, 45.372379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932178, 32.236691, 45.423386>,  <36.574001, 32.080227, 45.508400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932178, 32.236691, 45.423386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374853, -0.404997, 0.833944,
		0.240131, -0.826420, -0.509281,
		0.895445, 0.391161, -0.212533,
		37.200813, 32.354038, 45.359627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110992, 31.572973, 45.666775>,  <36.574001, 32.080227, 45.508400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110992, 31.572973, 45.666775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307251, 31.921360, 45.677204>,  <37.425007, 32.130390, 45.683460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307251, 31.921360, 45.677204>,  <37.110992, 31.572973, 45.666775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307251, 31.921360, 45.677204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515090, -0.314045, 0.797532,
		0.702812, -0.377879, -0.602712,
		0.490650, 0.870967, 0.026073,
		37.454445, 32.182652, 45.685024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711761, 31.339729, 46.021641>,  <37.110992, 31.572973, 45.666775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711761, 31.339729, 46.021641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758553, 31.736629, 46.038391>,  <37.786629, 31.974770, 46.048439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758553, 31.736629, 46.038391>,  <37.711761, 31.339729, 46.021641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758553, 31.736629, 46.038391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200052, -0.064841, 0.977637,
		0.972777, -0.105983, -0.206086,
		0.116976, 0.992252, 0.041874,
		37.793644, 32.034306, 46.050953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433422, 31.496872, 46.325417>,  <37.711761, 31.339729, 46.021641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433422, 31.496872, 46.325417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239201, 31.841652, 46.383759>,  <38.122665, 32.048519, 46.418762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239201, 31.841652, 46.383759>,  <38.433422, 31.496872, 46.325417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239201, 31.841652, 46.383759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293071, 0.003314, 0.956085,
		0.823616, 0.506980, -0.254222,
		-0.485558, 0.861952, 0.145852,
		38.093533, 32.100239, 46.427513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861164, 31.990456, 46.732086>,  <38.433422, 31.496872, 46.325417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861164, 31.990456, 46.732086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488003, 32.116505, 46.801811>,  <38.264107, 32.192135, 46.843647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488003, 32.116505, 46.801811>,  <38.861164, 31.990456, 46.732086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488003, 32.116505, 46.801811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126119, -0.167489, 0.977774,
		0.337312, 0.934155, 0.116509,
		-0.932906, 0.315121, 0.174311,
		38.208130, 32.211040, 46.854103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274303, 32.475208, 46.516014>,  <38.861164, 31.990456, 46.732086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274303, 32.475208, 46.516014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658813, 32.375465, 46.469063>,  <39.889519, 32.315620, 46.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658813, 32.375465, 46.469063>,  <39.274303, 32.475208, 46.516014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658813, 32.375465, 46.469063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148857, -0.111323, -0.982573,
		0.231941, 0.961993, -0.144129,
		0.961273, -0.249353, -0.117379,
		39.947197, 32.300659, 46.433849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548134, 32.948711, 46.003601>,  <39.274303, 32.475208, 46.516014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548134, 32.948711, 46.003601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768677, 32.615036, 46.008064>,  <39.901005, 32.414829, 46.010742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768677, 32.615036, 46.008064>,  <39.548134, 32.948711, 46.003601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768677, 32.615036, 46.008064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104012, -0.082008, -0.991190,
		0.827758, 0.545342, -0.131982,
		0.551360, -0.834193, 0.011161,
		39.934086, 32.364777, 46.011414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074207, 33.091461, 45.511520>,  <39.548134, 32.948711, 46.003601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074207, 33.091461, 45.511520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066345, 32.694283, 45.558296>,  <40.061626, 32.455975, 45.586361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066345, 32.694283, 45.558296>,  <40.074207, 33.091461, 45.511520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066345, 32.694283, 45.558296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083739, -0.114920, -0.989839,
		0.996294, -0.029249, -0.080889,
		-0.019656, -0.992944, 0.116943,
		40.060448, 32.396400, 45.593380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643173, 32.802063, 45.036129>,  <40.074207, 33.091461, 45.511520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643173, 32.802063, 45.036129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419498, 32.475502, 45.093800>,  <40.285294, 32.279564, 45.128403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419498, 32.475502, 45.093800>,  <40.643173, 32.802063, 45.036129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419498, 32.475502, 45.093800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040683, -0.200724, -0.978803,
		0.828041, -0.541471, 0.145457,
		-0.559190, -0.816406, 0.144179,
		40.251743, 32.230579, 45.137054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028488, 32.213043, 44.559456>,  <40.643173, 32.802063, 45.036129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028488, 32.213043, 44.559456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653660, 32.103653, 44.646271>,  <40.428761, 32.038017, 44.698360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653660, 32.103653, 44.646271>,  <41.028488, 32.213043, 44.559456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653660, 32.103653, 44.646271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057107, -0.493201, -0.868039,
		0.344433, -0.825809, 0.446548,
		-0.937072, -0.273480, 0.217034,
		40.372540, 32.021610, 44.711380>
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
