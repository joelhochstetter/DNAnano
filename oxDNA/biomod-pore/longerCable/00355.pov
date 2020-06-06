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
	<24.565277, 35.398479, 35.352230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237673, 35.546741, 35.177032>,  <24.041111, 35.635700, 35.071915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237673, 35.546741, 35.177032>,  <24.565277, 35.398479, 35.352230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237673, 35.546741, 35.177032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380378, -0.922240, -0.069185,
		-0.429577, 0.109939, 0.896313,
		-0.819010, 0.370658, -0.437991,
		23.991970, 35.657940, 35.045635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112804, 35.811558, 34.907990>,  <24.565277, 35.398479, 35.352230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112804, 35.811558, 34.907990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229717, 35.634029, 35.246834>,  <25.299864, 35.527512, 35.450142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229717, 35.634029, 35.246834>,  <25.112804, 35.811558, 34.907990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229717, 35.634029, 35.246834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029542, 0.889559, 0.455863,
		-0.955876, -0.108214, 0.273111,
		0.292280, -0.443817, 0.847112,
		25.317402, 35.500885, 35.500969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676537, 36.074150, 35.508244>,  <25.112804, 35.811558, 34.907990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676537, 36.074150, 35.508244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027048, 35.942947, 35.649410>,  <25.237354, 35.864227, 35.734112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027048, 35.942947, 35.649410>,  <24.676537, 36.074150, 35.508244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.027048, 35.942947, 35.649410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058926, 0.799952, 0.597164,
		-0.478191, -0.502485, 0.720307,
		0.876277, -0.328003, 0.352921,
		25.289930, 35.844547, 35.755287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659657, 36.136047, 36.270241>,  <24.676537, 36.074150, 35.508244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659657, 36.136047, 36.270241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043015, 36.100208, 36.161831>,  <25.273029, 36.078705, 36.096786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043015, 36.100208, 36.161831>,  <24.659657, 36.136047, 36.270241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043015, 36.100208, 36.161831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262750, 0.647932, 0.714945,
		0.111550, -0.756410, 0.644516,
		0.958394, -0.089595, -0.271024,
		25.330532, 36.073330, 36.080524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082827, 35.886253, 36.812405>,  <24.659657, 36.136047, 36.270241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082827, 35.886253, 36.812405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313551, 36.106781, 36.571293>,  <25.451984, 36.239098, 36.426624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313551, 36.106781, 36.571293>,  <25.082827, 35.886253, 36.812405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313551, 36.106781, 36.571293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320205, 0.526254, 0.787734,
		0.751505, -0.647385, 0.127014,
		0.576809, 0.551316, -0.602779,
		25.486593, 36.272175, 36.390461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754408, 35.862179, 37.110954>,  <25.082827, 35.886253, 36.812405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754408, 35.862179, 37.110954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712488, 36.183731, 36.876762>,  <25.687336, 36.376663, 36.736248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712488, 36.183731, 36.876762>,  <25.754408, 35.862179, 37.110954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712488, 36.183731, 36.876762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166073, 0.594602, 0.786682,
		0.980529, -0.014790, -0.195817,
		-0.104798, 0.803884, -0.585480,
		25.681049, 36.424896, 36.701118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301357, 36.215897, 37.047077>,  <25.754408, 35.862179, 37.110954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301357, 36.215897, 37.047077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967371, 36.435848, 37.038441>,  <25.766979, 36.567818, 37.033260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967371, 36.435848, 37.038441>,  <26.301357, 36.215897, 37.047077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967371, 36.435848, 37.038441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304304, 0.494049, 0.814441,
		0.458506, 0.673463, -0.579845,
		-0.834968, 0.549875, -0.021587,
		25.716881, 36.600811, 37.031963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367010, 37.003571, 36.937943>,  <26.301357, 36.215897, 37.047077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367010, 37.003571, 36.937943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034275, 36.948429, 37.152992>,  <25.834635, 36.915344, 37.282024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034275, 36.948429, 37.152992>,  <26.367010, 37.003571, 36.937943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034275, 36.948429, 37.152992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360500, 0.602312, 0.712222,
		-0.422004, 0.786267, -0.451329,
		-0.831837, -0.137857, 0.537627,
		25.784723, 36.907074, 37.314281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188560, 37.680904, 37.189247>,  <26.367010, 37.003571, 36.937943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188560, 37.680904, 37.189247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989536, 37.424091, 37.422565>,  <25.870123, 37.270004, 37.562557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989536, 37.424091, 37.422565>,  <26.188560, 37.680904, 37.189247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989536, 37.424091, 37.422565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105531, 0.622642, 0.775358,
		-0.860987, 0.447342, -0.242047,
		-0.497559, -0.642029, 0.583295,
		25.840269, 37.231483, 37.597553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635223, 37.959492, 37.653515>,  <26.188560, 37.680904, 37.189247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635223, 37.959492, 37.653515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717791, 37.615028, 37.839333>,  <25.767332, 37.408352, 37.950825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717791, 37.615028, 37.839333>,  <25.635223, 37.959492, 37.653515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717791, 37.615028, 37.839333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037511, 0.467456, 0.883220,
		-0.977744, -0.199740, 0.064190,
		0.206420, -0.861155, 0.464545,
		25.779716, 37.356682, 37.978695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280085, 38.071301, 38.223888>,  <25.635223, 37.959492, 37.653515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280085, 38.071301, 38.223888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534966, 37.774864, 38.308506>,  <25.687895, 37.597000, 38.359276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534966, 37.774864, 38.308506>,  <25.280085, 38.071301, 38.223888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534966, 37.774864, 38.308506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206148, 0.428375, 0.879771,
		-0.742614, -0.516984, 0.425738,
		0.637203, -0.741095, 0.211542,
		25.726126, 37.552536, 38.371967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103683, 37.591850, 38.858494>,  <25.280085, 38.071301, 38.223888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103683, 37.591850, 38.858494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484486, 37.698586, 38.798512>,  <25.712967, 37.762627, 38.762524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484486, 37.698586, 38.798512>,  <25.103683, 37.591850, 38.858494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484486, 37.698586, 38.798512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080741, 0.253620, 0.963928,
		0.295252, -0.929769, 0.219901,
		0.952002, 0.266847, -0.149952,
		25.770086, 37.778637, 38.753525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410862, 37.188423, 39.317204>,  <25.103683, 37.591850, 38.858494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410862, 37.188423, 39.317204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626995, 37.516125, 39.240398>,  <25.756674, 37.712746, 39.194317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626995, 37.516125, 39.240398>,  <25.410862, 37.188423, 39.317204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626995, 37.516125, 39.240398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205726, 0.092644, 0.974215,
		0.815916, -0.565900, -0.118483,
		0.540331, 0.819252, -0.192010,
		25.789095, 37.761902, 39.182796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129704, 37.241829, 39.705536>,  <25.410862, 37.188423, 39.317204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129704, 37.241829, 39.705536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952307, 37.594807, 39.642788>,  <25.845869, 37.806595, 39.605137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952307, 37.594807, 39.642788>,  <26.129704, 37.241829, 39.705536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952307, 37.594807, 39.642788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396291, 0.350054, 0.848773,
		0.803909, 0.314256, -0.504950,
		-0.443491, 0.882443, -0.156875,
		25.819260, 37.859539, 39.595726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642826, 37.809383, 39.525375>,  <26.129704, 37.241829, 39.705536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642826, 37.809383, 39.525375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315792, 37.926624, 39.723625>,  <26.119572, 37.996971, 39.842575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315792, 37.926624, 39.723625>,  <26.642826, 37.809383, 39.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315792, 37.926624, 39.723625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560855, 0.210500, 0.800707,
		0.130364, 0.932619, -0.336492,
		-0.817586, 0.293107, 0.495622,
		26.070517, 38.014557, 39.872311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990751, 37.416592, 39.016689>,  <26.642826, 37.809383, 39.525375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990751, 37.416592, 39.016689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593777, 37.416744, 38.967583>,  <26.355593, 37.416836, 38.938118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593777, 37.416744, 38.967583>,  <26.990751, 37.416592, 39.016689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593777, 37.416744, 38.967583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068514, -0.828077, -0.556412,
		-0.101874, -0.560614, 0.821787,
		-0.992435, 0.000380, -0.122770,
		26.296045, 37.416859, 38.930752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724241, 36.783562, 38.620842>,  <26.990751, 37.416592, 39.016689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724241, 36.783562, 38.620842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389448, 37.000759, 38.593662>,  <26.188572, 37.131077, 38.577354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389448, 37.000759, 38.593662>,  <26.724241, 36.783562, 38.620842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389448, 37.000759, 38.593662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349972, -0.626588, -0.696352,
		-0.420693, -0.559053, 0.714477,
		-0.836981, 0.542997, -0.067948,
		26.138353, 37.163658, 38.573277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124168, 36.339817, 38.644909>,  <26.724241, 36.783562, 38.620842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124168, 36.339817, 38.644909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014055, 36.668167, 38.444756>,  <25.947987, 36.865177, 38.324661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014055, 36.668167, 38.444756>,  <26.124168, 36.339817, 38.644909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014055, 36.668167, 38.444756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331447, -0.569624, -0.752111,
		-0.902420, -0.041191, 0.428883,
		-0.275283, 0.820872, -0.500388,
		25.931471, 36.914429, 38.294640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321455, 36.345200, 38.425652>,  <26.124168, 36.339817, 38.644909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321455, 36.345200, 38.425652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443178, 36.631996, 38.174789>,  <25.516212, 36.804073, 38.024273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443178, 36.631996, 38.174789>,  <25.321455, 36.345200, 38.425652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443178, 36.631996, 38.174789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466225, -0.462027, -0.754430,
		-0.830682, 0.521973, 0.193681,
		0.304306, 0.716990, -0.627155,
		25.534470, 36.847092, 37.986645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700771, 36.543034, 37.940903>,  <25.321455, 36.345200, 38.425652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700771, 36.543034, 37.940903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030947, 36.662064, 37.749027>,  <25.229052, 36.733482, 37.633904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030947, 36.662064, 37.749027>,  <24.700771, 36.543034, 37.940903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030947, 36.662064, 37.749027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371301, -0.353851, -0.858444,
		-0.425189, 0.886701, -0.181592,
		0.825439, 0.297575, -0.479686,
		25.278578, 36.751335, 37.605122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580149, 36.948994, 37.427094>,  <24.700771, 36.543034, 37.940903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580149, 36.948994, 37.427094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907883, 36.741222, 37.330029>,  <25.104523, 36.616562, 37.271790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907883, 36.741222, 37.330029>,  <24.580149, 36.948994, 37.427094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907883, 36.741222, 37.330029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453592, -0.328442, -0.828480,
		0.350632, 0.788874, -0.504712,
		0.819336, -0.519425, -0.242665,
		25.153683, 36.585396, 37.257229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885237, 37.265755, 36.886368>,  <24.580149, 36.948994, 37.427094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885237, 37.265755, 36.886368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231014, 37.445007, 36.795231>,  <25.438480, 37.552559, 36.740551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231014, 37.445007, 36.795231>,  <24.885237, 37.265755, 36.886368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231014, 37.445007, 36.795231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279150, -0.804794, -0.523813,
		-0.418103, 0.389206, -0.820797,
		0.864445, 0.448134, -0.227840,
		25.490347, 37.579449, 36.726879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079659, 37.403431, 36.105984>,  <24.885237, 37.265755, 36.886368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079659, 37.403431, 36.105984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373362, 37.264366, 36.339222>,  <25.549583, 37.180927, 36.479164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373362, 37.264366, 36.339222>,  <25.079659, 37.403431, 36.105984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373362, 37.264366, 36.339222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109247, -0.787213, -0.606927,
		0.670024, 0.509342, -0.540036,
		0.734257, -0.347658, 0.583096,
		25.593639, 37.160069, 36.514153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751917, 37.216507, 35.681927>,  <25.079659, 37.403431, 36.105984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751917, 37.216507, 35.681927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754471, 37.002483, 36.019840>,  <25.756004, 36.874069, 36.222588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754471, 37.002483, 36.019840>,  <25.751917, 37.216507, 35.681927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754471, 37.002483, 36.019840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076088, -0.842096, -0.533933,
		0.997081, 0.067688, 0.035334,
		0.006386, -0.535063, 0.844788,
		25.756386, 36.841965, 36.273277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289263, 36.888428, 35.598801>,  <25.751917, 37.216507, 35.681927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289263, 36.888428, 35.598801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028629, 36.696030, 35.833435>,  <25.872250, 36.580589, 35.974216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028629, 36.696030, 35.833435>,  <26.289263, 36.888428, 35.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028629, 36.696030, 35.833435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104637, -0.822870, -0.558513,
		0.751326, -0.302539, 0.586497,
		-0.651583, -0.480995, 0.586587,
		25.833155, 36.551731, 36.009411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601841, 36.235855, 35.702591>,  <26.289263, 36.888428, 35.598801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601841, 36.235855, 35.702591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223915, 36.184872, 35.823311>,  <25.997160, 36.154282, 35.895744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223915, 36.184872, 35.823311>,  <26.601841, 36.235855, 35.702591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223915, 36.184872, 35.823311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017966, -0.899667, -0.436206,
		0.327117, -0.417555, 0.847727,
		-0.944813, -0.127460, 0.301798,
		25.940472, 36.146633, 35.913849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540165, 35.537281, 35.989243>,  <26.601841, 36.235855, 35.702591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540165, 35.537281, 35.989243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165485, 35.648415, 35.904007>,  <25.940678, 35.715096, 35.852867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165485, 35.648415, 35.904007>,  <26.540165, 35.537281, 35.989243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165485, 35.648415, 35.904007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192684, -0.917165, -0.348829,
		-0.292354, -0.285688, 0.912640,
		-0.936697, 0.277833, -0.213089,
		25.884476, 35.731766, 35.840080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098944, 35.063999, 36.315403>,  <26.540165, 35.537281, 35.989243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098944, 35.063999, 36.315403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947350, 35.222080, 35.980694>,  <25.856394, 35.316929, 35.779869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947350, 35.222080, 35.980694>,  <26.098944, 35.063999, 36.315403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947350, 35.222080, 35.980694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033849, -0.909539, -0.414239,
		-0.924782, -0.128667, 0.358081,
		-0.378988, 0.395201, -0.836770,
		25.833654, 35.340641, 35.729664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431644, 34.885887, 36.245720>,  <26.098944, 35.063999, 36.315403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431644, 34.885887, 36.245720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667599, 34.873844, 35.922951>,  <25.809172, 34.866619, 35.729290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667599, 34.873844, 35.922951>,  <25.431644, 34.885887, 36.245720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667599, 34.873844, 35.922951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064966, -0.997835, -0.010262,
		-0.804870, 0.058476, -0.590562,
		0.589884, -0.030107, -0.806926,
		25.844564, 34.864811, 35.680874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562365, 34.242241, 36.148563>,  <25.431644, 34.885887, 36.245720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562365, 34.242241, 36.148563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874697, 34.315300, 35.909584>,  <26.062096, 34.359135, 35.766197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874697, 34.315300, 35.909584>,  <25.562365, 34.242241, 36.148563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874697, 34.315300, 35.909584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341243, -0.925740, 0.162970,
		-0.523315, -0.331127, -0.785173,
		0.780829, 0.182651, -0.597448,
		26.108946, 34.370094, 35.730350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291779, 34.007782, 36.295631>,  <25.562365, 34.242241, 36.148563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291779, 34.007782, 36.295631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049595, 34.063522, 35.982197>,  <25.904285, 34.096966, 35.794136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049595, 34.063522, 35.982197>,  <26.291779, 34.007782, 36.295631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049595, 34.063522, 35.982197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394400, -0.802626, -0.447481,
		-0.691280, -0.579977, 0.430999,
		-0.605460, 0.139348, -0.783582,
		25.867956, 34.105328, 35.747124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052195, 33.333500, 36.053112>,  <26.291779, 34.007782, 36.295631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052195, 33.333500, 36.053112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067266, 33.595303, 35.751064>,  <26.076309, 33.752384, 35.569836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067266, 33.595303, 35.751064>,  <26.052195, 33.333500, 36.053112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067266, 33.595303, 35.751064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426965, -0.693750, -0.580010,
		-0.903483, -0.300556, -0.305590,
		0.037678, 0.654505, -0.755118,
		26.078569, 33.791653, 35.524529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900383, 32.906601, 35.572392>,  <26.052195, 33.333500, 36.053112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900383, 32.906601, 35.572392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053728, 33.219166, 35.375443>,  <26.145735, 33.406704, 35.257275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053728, 33.219166, 35.375443>,  <25.900383, 32.906601, 35.572392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053728, 33.219166, 35.375443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527942, -0.622820, -0.577384,
		-0.757832, -0.038594, -0.651308,
		0.383364, 0.781413, -0.492368,
		26.168737, 33.453590, 35.227734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747753, 32.795479, 34.839027>,  <25.900383, 32.906601, 35.572392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747753, 32.795479, 34.839027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057901, 33.032814, 34.925507>,  <26.243990, 33.175217, 34.977394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057901, 33.032814, 34.925507>,  <25.747753, 32.795479, 34.839027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057901, 33.032814, 34.925507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607657, -0.607815, -0.511188,
		-0.171900, 0.527737, -0.831832,
		0.775373, 0.593342, 0.216200,
		26.290514, 33.210815, 34.990368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712130, 32.102299, 34.967209>,  <25.747753, 32.795479, 34.839027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712130, 32.102299, 34.967209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489552, 32.395634, 34.810963>,  <25.356005, 32.571636, 34.717213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489552, 32.395634, 34.810963>,  <25.712130, 32.102299, 34.967209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489552, 32.395634, 34.810963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795789, 0.605565, 0.003251,
		0.238930, -0.309042, -0.920547,
		-0.556446, 0.733337, -0.390619,
		25.322618, 32.615635, 34.693775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218557, 32.111927, 34.466434>,  <25.712130, 32.102299, 34.967209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218557, 32.111927, 34.466434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412571, 32.210541, 34.802044>,  <26.528978, 32.269711, 35.003410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412571, 32.210541, 34.802044>,  <26.218557, 32.111927, 34.466434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412571, 32.210541, 34.802044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869637, -0.236975, -0.433098,
		0.092054, 0.939714, -0.329337,
		0.485033, 0.246535, 0.839025,
		26.558081, 32.284500, 35.053753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709488, 32.582752, 34.380905>,  <26.218557, 32.111927, 34.466434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709488, 32.582752, 34.380905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837137, 32.376713, 34.699108>,  <26.913727, 32.253090, 34.890030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837137, 32.376713, 34.699108>,  <26.709488, 32.582752, 34.380905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837137, 32.376713, 34.699108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919538, -0.034865, -0.391453,
		0.229372, 0.856421, 0.462527,
		0.319122, -0.515099, 0.795509,
		26.932875, 32.222183, 34.937759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333733, 32.673874, 34.360836>,  <26.709488, 32.582752, 34.380905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333733, 32.673874, 34.360836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353125, 32.356243, 34.603191>,  <27.364759, 32.165665, 34.748604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353125, 32.356243, 34.603191>,  <27.333733, 32.673874, 34.360836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353125, 32.356243, 34.603191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867319, -0.267386, -0.419836,
		0.495386, 0.545849, 0.675753,
		0.048480, -0.794074, 0.605884,
		27.367668, 32.118019, 34.784958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993216, 32.678696, 34.544266>,  <27.333733, 32.673874, 34.360836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993216, 32.678696, 34.544266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845829, 32.310204, 34.594185>,  <27.757397, 32.089108, 34.624134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845829, 32.310204, 34.594185>,  <27.993216, 32.678696, 34.544266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845829, 32.310204, 34.594185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867845, -0.388985, -0.309089,
		0.333285, -0.005586, 0.942810,
		-0.368465, -0.921227, 0.124795,
		27.735289, 32.033836, 34.631622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464752, 32.300690, 34.864922>,  <27.993216, 32.678696, 34.544266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464752, 32.300690, 34.864922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224899, 32.044289, 34.673271>,  <28.080988, 31.890450, 34.558281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224899, 32.044289, 34.673271>,  <28.464752, 32.300690, 34.864922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224899, 32.044289, 34.673271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767278, -0.290338, -0.571830,
		0.227435, -0.710509, 0.665920,
		-0.599632, -0.641000, -0.479125,
		28.045010, 31.851988, 34.529533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814438, 31.649536, 34.625755>,  <28.464752, 32.300690, 34.864922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814438, 31.649536, 34.625755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523819, 31.648556, 34.350910>,  <28.349447, 31.647968, 34.186005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523819, 31.648556, 34.350910>,  <28.814438, 31.649536, 34.625755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523819, 31.648556, 34.350910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684472, 0.085105, -0.724055,
		0.060247, -0.996369, -0.060160,
		-0.726546, -0.002444, -0.687113,
		28.305855, 31.647821, 34.144775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315195, 30.981514, 34.335899>,  <28.814438, 31.649536, 34.625755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315195, 30.981514, 34.335899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109890, 30.832045, 34.026855>,  <27.986708, 30.742363, 33.841431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109890, 30.832045, 34.026855>,  <28.315195, 30.981514, 34.335899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109890, 30.832045, 34.026855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404453, -0.899317, 0.166270,
		-0.756953, -0.227144, 0.612721,
		-0.513263, -0.373676, -0.772611,
		27.955912, 30.719942, 33.795071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597906, 30.958771, 34.057728>,  <28.315195, 30.981514, 34.335899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597906, 30.958771, 34.057728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798988, 31.195284, 34.309971>,  <27.919638, 31.337193, 34.461319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798988, 31.195284, 34.309971>,  <27.597906, 30.958771, 34.057728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798988, 31.195284, 34.309971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856811, 0.243994, 0.454248,
		0.114724, -0.768668, 0.629275,
		0.502706, 0.591283, 0.630612,
		27.949800, 31.372669, 34.499153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400616, 30.792631, 34.762657>,  <27.597906, 30.958771, 34.057728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400616, 30.792631, 34.762657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498224, 31.180044, 34.743084>,  <27.556789, 31.412493, 34.731339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498224, 31.180044, 34.743084>,  <27.400616, 30.792631, 34.762657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498224, 31.180044, 34.743084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864859, 0.240173, 0.440835,
		0.438718, -0.065248, 0.896253,
		0.244019, 0.968535, -0.048937,
		27.571430, 31.470604, 34.728401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432892, 31.044012, 35.508598>,  <27.400616, 30.792631, 34.762657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432892, 31.044012, 35.508598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411499, 31.378653, 35.290520>,  <27.398663, 31.579437, 35.159672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411499, 31.378653, 35.290520>,  <27.432892, 31.044012, 35.508598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411499, 31.378653, 35.290520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733855, 0.337334, 0.589629,
		0.677197, 0.431629, 0.595903,
		-0.053483, 0.836602, -0.545195,
		27.395454, 31.629633, 35.126961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483805, 31.523005, 36.006233>,  <27.432892, 31.044012, 35.508598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483805, 31.523005, 36.006233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302103, 31.670231, 35.681721>,  <27.193083, 31.758566, 35.487011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302103, 31.670231, 35.681721>,  <27.483805, 31.523005, 36.006233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302103, 31.670231, 35.681721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732527, 0.363953, 0.575275,
		0.507009, 0.855608, 0.104292,
		-0.454253, 0.368067, -0.811284,
		27.165827, 31.780651, 35.438335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218817, 31.674589, 36.083305>,  <27.483805, 31.523005, 36.006233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218817, 31.674589, 36.083305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054426, 31.835119, 36.410728>,  <27.955791, 31.931437, 36.607182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054426, 31.835119, 36.410728>,  <28.218817, 31.674589, 36.083305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054426, 31.835119, 36.410728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635756, 0.769695, -0.058172,
		-0.653385, 0.496495, -0.571473,
		-0.410978, 0.401326, 0.818556,
		27.931133, 31.955517, 36.656296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083693, 32.402084, 36.105186>,  <28.218817, 31.674589, 36.083305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083693, 32.402084, 36.105186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108578, 32.322308, 36.496361>,  <28.123508, 32.274441, 36.731064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108578, 32.322308, 36.496361>,  <28.083693, 32.402084, 36.105186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108578, 32.322308, 36.496361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677192, 0.728214, 0.105430,
		-0.733171, 0.655689, 0.180365,
		0.062215, -0.199440, 0.977933,
		28.127243, 32.262474, 36.789742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974483, 33.112114, 36.455059>,  <28.083693, 32.402084, 36.105186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974483, 33.112114, 36.455059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183304, 32.856380, 36.680878>,  <28.308596, 32.702942, 36.816368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183304, 32.856380, 36.680878>,  <27.974483, 33.112114, 36.455059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183304, 32.856380, 36.680878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560765, 0.756017, 0.337611,
		-0.642653, 0.140328, 0.753197,
		0.522053, -0.639333, 0.564547,
		28.339920, 32.664581, 36.850243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960163, 33.301491, 37.099735>,  <27.974483, 33.112114, 36.455059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960163, 33.301491, 37.099735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298761, 33.088623, 37.093475>,  <28.501921, 32.960903, 37.089718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298761, 33.088623, 37.093475>,  <27.960163, 33.301491, 37.099735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298761, 33.088623, 37.093475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504725, 0.792799, 0.341647,
		-0.169402, -0.297103, 0.939698,
		0.846496, -0.532165, -0.015653,
		28.552710, 32.928974, 37.088779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322090, 33.459991, 37.708733>,  <27.960163, 33.301491, 37.099735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322090, 33.459991, 37.708733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564350, 33.322525, 37.421654>,  <28.709705, 33.240044, 37.249409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564350, 33.322525, 37.421654>,  <28.322090, 33.459991, 37.708733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564350, 33.322525, 37.421654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540584, 0.839544, 0.054173,
		0.583917, -0.420783, 0.694249,
		0.605648, -0.343668, -0.717693,
		28.746044, 33.219425, 37.206345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977339, 33.537510, 37.952148>,  <28.322090, 33.459991, 37.708733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977339, 33.537510, 37.952148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009459, 33.535057, 37.553448>,  <29.028730, 33.533585, 37.314228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009459, 33.535057, 37.553448>,  <28.977339, 33.537510, 37.952148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009459, 33.535057, 37.553448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560805, 0.826976, 0.040093,
		0.824045, -0.562203, 0.069843,
		0.080299, -0.006130, -0.996752,
		29.033548, 33.533218, 37.254421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652092, 33.708736, 37.685894>,  <28.977339, 33.537510, 37.952148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652092, 33.708736, 37.685894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426180, 33.797894, 37.368065>,  <29.290632, 33.851387, 37.177368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426180, 33.797894, 37.368065>,  <29.652092, 33.708736, 37.685894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426180, 33.797894, 37.368065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432779, 0.899808, -0.055205,
		0.702655, -0.375052, -0.604658,
		-0.564781, 0.222894, -0.794570,
		29.256746, 33.864761, 37.129692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076632, 33.922779, 37.061897>,  <29.652092, 33.708736, 37.685894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076632, 33.922779, 37.061897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716637, 34.093735, 37.027588>,  <29.500639, 34.196308, 37.007004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716637, 34.093735, 37.027588>,  <30.076632, 33.922779, 37.061897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716637, 34.093735, 37.027588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431509, 0.845579, -0.314318,
		-0.061810, -0.319895, -0.945435,
		-0.899988, 0.427392, -0.085772,
		29.446640, 34.221951, 37.001858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841824, 34.047554, 36.330822>,  <30.076632, 33.922779, 37.061897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841824, 34.047554, 36.330822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653402, 34.314865, 36.561127>,  <29.540348, 34.475254, 36.699310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653402, 34.314865, 36.561127>,  <29.841824, 34.047554, 36.330822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653402, 34.314865, 36.561127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409350, 0.743790, -0.528402,
		-0.781370, -0.013217, -0.623928,
		-0.471056, 0.668282, 0.575765,
		29.512085, 34.515350, 36.733856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486452, 34.532223, 35.860981>,  <29.841824, 34.047554, 36.330822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486452, 34.532223, 35.860981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615192, 34.667870, 36.214569>,  <29.692436, 34.749260, 36.426723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615192, 34.667870, 36.214569>,  <29.486452, 34.532223, 35.860981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615192, 34.667870, 36.214569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542598, 0.699055, -0.465736,
		-0.775887, 0.629539, 0.040985,
		0.321850, 0.339120, 0.883974,
		29.711748, 34.769604, 36.479763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344099, 35.178310, 35.936901>,  <29.486452, 34.532223, 35.860981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344099, 35.178310, 35.936901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672661, 35.069740, 36.137550>,  <29.869799, 35.004597, 36.257938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672661, 35.069740, 36.137550>,  <29.344099, 35.178310, 35.936901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672661, 35.069740, 36.137550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547265, 0.622760, -0.559170,
		-0.160613, 0.733823, 0.660082,
		0.821404, -0.271429, 0.501619,
		29.919083, 34.988312, 36.288036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682705, 35.714005, 36.244621>,  <29.344099, 35.178310, 35.936901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682705, 35.714005, 36.244621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938526, 35.422733, 36.146046>,  <30.092018, 35.247971, 36.086903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938526, 35.422733, 36.146046>,  <29.682705, 35.714005, 36.244621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938526, 35.422733, 36.146046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407136, 0.592757, -0.694895,
		0.652084, 0.344089, 0.675566,
		0.639552, -0.728177, -0.246436,
		30.130392, 35.204281, 36.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397694, 35.858437, 36.295971>,  <29.682705, 35.714005, 36.244621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397694, 35.858437, 36.295971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393991, 35.596970, 35.993279>,  <30.391769, 35.440090, 35.811665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393991, 35.596970, 35.993279>,  <30.397694, 35.858437, 36.295971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393991, 35.596970, 35.993279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525704, 0.640559, -0.559749,
		0.850617, -0.402996, 0.337706,
		-0.009256, -0.653666, -0.756727,
		30.391214, 35.400871, 35.766262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070259, 35.759865, 35.920891>,  <30.397694, 35.858437, 36.295971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070259, 35.759865, 35.920891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827593, 35.640762, 35.626057>,  <30.681993, 35.569302, 35.449154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827593, 35.640762, 35.626057>,  <31.070259, 35.759865, 35.920891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827593, 35.640762, 35.626057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640610, 0.365914, -0.675075,
		0.470716, -0.881732, -0.031244,
		-0.606667, -0.297753, -0.737088,
		30.645592, 35.551437, 35.404930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894598, 35.057037, 35.781994>,  <31.070259, 35.759865, 35.920891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894598, 35.057037, 35.781994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189613, 35.171463, 35.537304>,  <31.366623, 35.240116, 35.390491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189613, 35.171463, 35.537304>,  <30.894598, 35.057037, 35.781994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189613, 35.171463, 35.537304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231474, -0.958061, -0.168938,
		-0.634394, -0.017000, -0.772823,
		0.737539, 0.286061, -0.611723,
		31.410875, 35.257282, 35.353786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776346, 34.659592, 35.153755>,  <30.894598, 35.057037, 35.781994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776346, 34.659592, 35.153755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152643, 34.758873, 35.246185>,  <31.378422, 34.818439, 35.301643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152643, 34.758873, 35.246185>,  <30.776346, 34.659592, 35.153755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152643, 34.758873, 35.246185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322198, -0.866722, -0.380765,
		0.105776, 0.432656, -0.895333,
		0.940744, 0.248199, 0.231079,
		31.434866, 34.833332, 35.315510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129555, 34.723209, 34.538395>,  <30.776346, 34.659592, 35.153755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129555, 34.723209, 34.538395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356873, 34.635674, 34.855671>,  <31.493263, 34.583153, 35.046036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356873, 34.635674, 34.855671>,  <31.129555, 34.723209, 34.538395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356873, 34.635674, 34.855671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341866, -0.814049, -0.469523,
		0.748446, 0.537992, -0.387806,
		0.568293, -0.218835, 0.793193,
		31.527361, 34.570023, 35.093628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932686, 34.700153, 34.381233>,  <31.129555, 34.723209, 34.538395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932686, 34.700153, 34.381233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778513, 34.457237, 34.659122>,  <31.686008, 34.311489, 34.825855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778513, 34.457237, 34.659122>,  <31.932686, 34.700153, 34.381233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778513, 34.457237, 34.659122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342303, -0.793277, -0.503527,
		0.856895, 0.043730, 0.513632,
		-0.385433, -0.607288, 0.694725,
		31.662884, 34.275051, 34.867538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401894, 34.225750, 34.404202>,  <31.932686, 34.700153, 34.381233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401894, 34.225750, 34.404202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067989, 34.068626, 34.558537>,  <31.867645, 33.974354, 34.651138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067989, 34.068626, 34.558537>,  <32.401894, 34.225750, 34.404202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067989, 34.068626, 34.558537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185352, -0.860321, -0.474861,
		0.518473, -0.324881, 0.790973,
		-0.834764, -0.392810, 0.385836,
		31.817560, 33.950783, 34.674286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493702, 33.644947, 34.891926>,  <32.401894, 34.225750, 34.404202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493702, 33.644947, 34.891926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169018, 33.630947, 34.658722>,  <31.974207, 33.622547, 34.518799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169018, 33.630947, 34.658722>,  <32.493702, 33.644947, 34.891926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169018, 33.630947, 34.658722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434925, -0.702468, -0.563364,
		-0.389828, -0.710854, 0.585423,
		-0.811711, -0.035000, -0.583010,
		31.925505, 33.620449, 34.483818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559616, 33.061031, 34.576347>,  <32.493702, 33.644947, 34.891926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559616, 33.061031, 34.576347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328079, 33.282864, 34.337223>,  <32.189156, 33.415962, 34.193748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328079, 33.282864, 34.337223>,  <32.559616, 33.061031, 34.576347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328079, 33.282864, 34.337223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464656, -0.378131, -0.800695,
		-0.670101, -0.741254, -0.038810,
		-0.578843, 0.554580, -0.597814,
		32.154427, 33.449238, 34.157879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208923, 32.623783, 34.082840>,  <32.559616, 33.061031, 34.576347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208923, 32.623783, 34.082840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296978, 32.997669, 33.971233>,  <32.349812, 33.222000, 33.904270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296978, 32.997669, 33.971233>,  <32.208923, 32.623783, 34.082840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296978, 32.997669, 33.971233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433754, -0.349997, -0.830277,
		-0.873725, 0.061752, -0.482484,
		0.220139, 0.934713, -0.279016,
		32.363018, 33.278084, 33.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843634, 32.750072, 33.506668>,  <32.208923, 32.623783, 34.082840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843634, 32.750072, 33.506668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159199, 32.995800, 33.500679>,  <32.348537, 33.143238, 33.497086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159199, 32.995800, 33.500679>,  <31.843634, 32.750072, 33.506668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159199, 32.995800, 33.500679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297475, -0.403108, -0.865455,
		-0.537703, 0.678315, -0.500763,
		0.788913, 0.614323, -0.014970,
		32.395874, 33.180096, 33.496189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090973, 32.741348, 32.842155>,  <31.843634, 32.750072, 33.506668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090973, 32.741348, 32.842155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406570, 32.931103, 32.998333>,  <32.595928, 33.044956, 33.092037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406570, 32.931103, 32.998333>,  <32.090973, 32.741348, 32.842155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406570, 32.931103, 32.998333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513719, -0.160781, -0.842759,
		-0.337020, 0.865508, -0.370558,
		0.788993, 0.474389, 0.390442,
		32.643269, 33.073421, 33.115467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269909, 33.217030, 32.359688>,  <32.090973, 32.741348, 32.842155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269909, 33.217030, 32.359688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586514, 33.110065, 32.579510>,  <32.776474, 33.045887, 32.711403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586514, 33.110065, 32.579510>,  <32.269909, 33.217030, 32.359688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586514, 33.110065, 32.579510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550397, -0.078983, -0.831159,
		0.265663, 0.960341, 0.084664,
		0.791509, -0.267407, 0.549552,
		32.823967, 33.029842, 32.744377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752991, 33.697376, 32.171642>,  <32.269909, 33.217030, 32.359688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752991, 33.697376, 32.171642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962112, 33.397976, 32.334824>,  <33.087585, 33.218334, 32.432732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962112, 33.397976, 32.334824>,  <32.752991, 33.697376, 32.171642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962112, 33.397976, 32.334824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684068, 0.082815, -0.724701,
		0.508655, 0.657942, 0.555322,
		0.522801, -0.748501, 0.407953,
		33.118954, 33.173424, 32.457211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516865, 33.909988, 32.096241>,  <32.752991, 33.697376, 32.171642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516865, 33.909988, 32.096241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487576, 33.512264, 32.127190>,  <33.470001, 33.273628, 32.145760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487576, 33.512264, 32.127190>,  <33.516865, 33.909988, 32.096241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487576, 33.512264, 32.127190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732156, -0.106267, -0.672796,
		0.677190, 0.007384, 0.735771,
		-0.073220, -0.994310, 0.077369,
		33.465611, 33.213970, 32.150402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214237, 33.717224, 31.938269>,  <33.516865, 33.909988, 32.096241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214237, 33.717224, 31.938269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016159, 33.371323, 31.904831>,  <33.897312, 33.163784, 31.884768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016159, 33.371323, 31.904831>,  <34.214237, 33.717224, 31.938269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016159, 33.371323, 31.904831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559050, -0.243520, -0.792566,
		0.665016, -0.439208, 0.604029,
		-0.495194, -0.864751, -0.083595,
		33.867599, 33.111897, 31.879753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757202, 33.214237, 31.831642>,  <34.214237, 33.717224, 31.938269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757202, 33.214237, 31.831642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419987, 33.032421, 31.716631>,  <34.217655, 32.923332, 31.647625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419987, 33.032421, 31.716631>,  <34.757202, 33.214237, 31.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419987, 33.032421, 31.716631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472931, -0.371866, -0.798782,
		0.256160, -0.809386, 0.528466,
		-0.843041, -0.454544, -0.287526,
		34.167076, 32.896057, 31.630373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918282, 32.536049, 31.745789>,  <34.757202, 33.214237, 31.831642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918282, 32.536049, 31.745789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607506, 32.633408, 31.513540>,  <34.421040, 32.691822, 31.374191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607506, 32.633408, 31.513540>,  <34.918282, 32.536049, 31.745789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607506, 32.633408, 31.513540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460019, -0.410158, -0.787498,
		-0.429829, -0.878933, 0.206696,
		-0.776936, 0.243405, -0.580624,
		34.374424, 32.706425, 31.339354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861156, 31.919415, 31.213984>,  <34.918282, 32.536049, 31.745789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861156, 31.919415, 31.213984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630024, 32.223186, 31.094397>,  <34.491344, 32.405449, 31.022644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630024, 32.223186, 31.094397>,  <34.861156, 31.919415, 31.213984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630024, 32.223186, 31.094397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264091, -0.172625, -0.948924,
		-0.772250, -0.627270, -0.100811,
		-0.577829, 0.759430, -0.298965,
		34.456676, 32.451015, 31.004707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442863, 31.693506, 30.679083>,  <34.861156, 31.919415, 31.213984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442863, 31.693506, 30.679083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472328, 32.089241, 30.628826>,  <34.490005, 32.326683, 30.598673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472328, 32.089241, 30.628826>,  <34.442863, 31.693506, 30.679083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472328, 32.089241, 30.628826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322697, -0.142851, -0.935660,
		-0.943631, 0.028379, -0.329779,
		0.073662, 0.989337, -0.125641,
		34.494427, 32.386044, 30.591133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438042, 31.728085, 29.978474>,  <34.442863, 31.693506, 30.679083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438042, 31.728085, 29.978474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535538, 32.107693, 30.058426>,  <34.594036, 32.335457, 30.106398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535538, 32.107693, 30.058426>,  <34.438042, 31.728085, 29.978474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535538, 32.107693, 30.058426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302004, 0.121580, -0.945522,
		-0.921620, 0.290830, -0.256973,
		0.243743, 0.949019, 0.199882,
		34.608662, 32.392399, 30.118391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315376, 32.024689, 29.372181>,  <34.438042, 31.728085, 29.978474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315376, 32.024689, 29.372181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494728, 32.336727, 29.546724>,  <34.602341, 32.523949, 29.651451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494728, 32.336727, 29.546724>,  <34.315376, 32.024689, 29.372181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494728, 32.336727, 29.546724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438200, 0.233652, -0.867979,
		-0.779061, 0.580398, -0.237072,
		0.448381, 0.780093, 0.436360,
		34.629242, 32.570755, 29.677631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082745, 32.673920, 29.079485>,  <34.315376, 32.024689, 29.372181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082745, 32.673920, 29.079485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453808, 32.732475, 29.216898>,  <34.676445, 32.767609, 29.299347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453808, 32.732475, 29.216898>,  <34.082745, 32.673920, 29.079485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453808, 32.732475, 29.216898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158028, 0.679631, -0.716330,
		-0.338336, 0.718800, 0.607335,
		0.927662, 0.146384, 0.343534,
		34.732105, 32.776390, 29.319958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261028, 33.430862, 29.063631>,  <34.082745, 32.673920, 29.079485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261028, 33.430862, 29.063631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620358, 33.256523, 29.085737>,  <34.835953, 33.151920, 29.099001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620358, 33.256523, 29.085737>,  <34.261028, 33.430862, 29.063631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620358, 33.256523, 29.085737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322602, 0.568987, -0.756427,
		0.298243, 0.697343, 0.651739,
		0.898320, -0.435852, 0.055268,
		34.889854, 33.125767, 29.102318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757412, 34.034000, 28.991306>,  <34.261028, 33.430862, 29.063631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757412, 34.034000, 28.991306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936085, 33.683022, 28.921375>,  <35.043289, 33.472435, 28.879417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936085, 33.683022, 28.921375>,  <34.757412, 34.034000, 28.991306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936085, 33.683022, 28.921375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303326, 0.332350, -0.893049,
		0.841706, 0.345880, 0.414607,
		0.446683, -0.877445, -0.174827,
		35.070091, 33.419788, 28.868927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423775, 34.242931, 28.689682>,  <34.757412, 34.034000, 28.991306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423775, 34.242931, 28.689682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379364, 33.854675, 28.604326>,  <35.352718, 33.621723, 28.553112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379364, 33.854675, 28.604326>,  <35.423775, 34.242931, 28.689682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379364, 33.854675, 28.604326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460494, 0.140030, -0.876548,
		0.880692, -0.195588, 0.431425,
		-0.111030, -0.970637, -0.213390,
		35.346054, 33.563484, 28.540310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038681, 33.984482, 28.573635>,  <35.423775, 34.242931, 28.689682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038681, 33.984482, 28.573635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801315, 33.720493, 28.389330>,  <35.658897, 33.562099, 28.278746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801315, 33.720493, 28.389330>,  <36.038681, 33.984482, 28.573635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801315, 33.720493, 28.389330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373594, 0.281213, -0.883938,
		0.712943, -0.696680, 0.079684,
		-0.593414, -0.659967, -0.460764,
		35.623291, 33.522503, 28.251101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450970, 33.533352, 28.174747>,  <36.038681, 33.984482, 28.573635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450970, 33.533352, 28.174747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089123, 33.516285, 28.005114>,  <35.872013, 33.506042, 27.903334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089123, 33.516285, 28.005114>,  <36.450970, 33.533352, 28.174747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089123, 33.516285, 28.005114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406008, 0.216554, -0.887841,
		0.129722, -0.975338, -0.178574,
		-0.904616, -0.042670, -0.424086,
		35.817738, 33.503483, 27.877888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461048, 33.159203, 27.534170>,  <36.450970, 33.533352, 28.174747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461048, 33.159203, 27.534170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106796, 33.340618, 27.494234>,  <35.894245, 33.449467, 27.470272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106796, 33.340618, 27.494234>,  <36.461048, 33.159203, 27.534170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106796, 33.340618, 27.494234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254907, 0.295041, -0.920854,
		-0.388186, -0.840983, -0.376907,
		-0.885627, 0.453539, -0.099842,
		35.841106, 33.476681, 27.464281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194519, 32.944759, 26.861771>,  <36.461048, 33.159203, 27.534170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194519, 32.944759, 26.861771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017250, 33.284428, 26.976665>,  <35.910889, 33.488228, 27.045603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017250, 33.284428, 26.976665>,  <36.194519, 32.944759, 26.861771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017250, 33.284428, 26.976665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187720, 0.401230, -0.896536,
		-0.876560, -0.343401, -0.337221,
		-0.443175, 0.849170, 0.287238,
		35.884296, 33.539177, 27.062838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835300, 33.128498, 26.284502>,  <36.194519, 32.944759, 26.861771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835300, 33.128498, 26.284502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848225, 33.463432, 26.502792>,  <35.855980, 33.664394, 26.633766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848225, 33.463432, 26.502792>,  <35.835300, 33.128498, 26.284502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848225, 33.463432, 26.502792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113710, 0.539387, -0.834345,
		-0.992988, 0.089015, -0.077784,
		0.032314, 0.837340, 0.545727,
		35.857918, 33.714634, 26.666510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318935, 33.630207, 26.008177>,  <35.835300, 33.128498, 26.284502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318935, 33.630207, 26.008177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611347, 33.817104, 26.207083>,  <35.786797, 33.929245, 26.326426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611347, 33.817104, 26.207083>,  <35.318935, 33.630207, 26.008177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611347, 33.817104, 26.207083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231387, 0.515826, -0.824854,
		-0.641911, 0.718056, 0.268971,
		0.731033, 0.467246, 0.497264,
		35.830658, 33.957279, 26.356262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276207, 34.314095, 25.708517>,  <35.318935, 33.630207, 26.008177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276207, 34.314095, 25.708517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619362, 34.294395, 25.913103>,  <35.825256, 34.282578, 26.035854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619362, 34.294395, 25.913103>,  <35.276207, 34.314095, 25.708517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619362, 34.294395, 25.913103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450116, 0.552122, -0.701824,
		-0.247829, 0.832307, 0.495828,
		0.857891, -0.049248, 0.511467,
		35.876728, 34.279621, 26.066544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526287, 35.019119, 25.659206>,  <35.276207, 34.314095, 25.708517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526287, 35.019119, 25.659206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836205, 34.772881, 25.716816>,  <36.022156, 34.625137, 25.751383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836205, 34.772881, 25.716816>,  <35.526287, 35.019119, 25.659206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836205, 34.772881, 25.716816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506557, 0.468158, -0.724036,
		0.378287, 0.633932, 0.674558,
		0.774789, -0.615596, 0.144025,
		36.068642, 34.588203, 25.760023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084549, 35.418163, 25.553806>,  <35.526287, 35.019119, 25.659206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084549, 35.418163, 25.553806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276840, 35.067421, 25.556019>,  <36.392216, 34.856976, 25.557346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276840, 35.067421, 25.556019>,  <36.084549, 35.418163, 25.553806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276840, 35.067421, 25.556019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683838, 0.370946, -0.628303,
		0.548878, 0.305823, 0.777949,
		0.480727, -0.876853, 0.005529,
		36.421059, 34.804363, 25.557678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763260, 35.583530, 25.657606>,  <36.084549, 35.418163, 25.553806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763260, 35.583530, 25.657606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741486, 35.221462, 25.488991>,  <36.728420, 35.004219, 25.387821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741486, 35.221462, 25.488991>,  <36.763260, 35.583530, 25.657606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741486, 35.221462, 25.488991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746466, 0.243501, -0.619270,
		0.663193, -0.348378, 0.662426,
		-0.054439, -0.905174, -0.421540,
		36.725155, 34.949909, 25.362528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409481, 35.333328, 25.634739>,  <36.763260, 35.583530, 25.657606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409481, 35.333328, 25.634739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223309, 35.138756, 25.338966>,  <37.111607, 35.022015, 25.161503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223309, 35.138756, 25.338966>,  <37.409481, 35.333328, 25.634739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223309, 35.138756, 25.338966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699698, 0.309411, -0.643962,
		0.542031, -0.817099, 0.196345,
		-0.465430, -0.486430, -0.739433,
		37.083679, 34.992828, 25.117136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806309, 34.901386, 25.297955>,  <37.409481, 35.333328, 25.634739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806309, 34.901386, 25.297955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525661, 35.019932, 25.038755>,  <37.357273, 35.091061, 24.883236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525661, 35.019932, 25.038755>,  <37.806309, 34.901386, 25.297955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525661, 35.019932, 25.038755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699851, 0.115671, -0.704861,
		-0.133942, -0.948045, -0.288568,
		-0.701618, 0.296365, -0.647997,
		37.315178, 35.108841, 24.844357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979633, 34.646091, 24.577461>,  <37.806309, 34.901386, 25.297955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979633, 34.646091, 24.577461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727379, 34.948978, 24.509438>,  <37.576027, 35.130711, 24.468624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727379, 34.948978, 24.509438>,  <37.979633, 34.646091, 24.577461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727379, 34.948978, 24.509438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531512, 0.261736, -0.805599,
		-0.565505, -0.598426, -0.567531,
		-0.630634, 0.757220, -0.170058,
		37.538189, 35.176144, 24.458420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838123, 34.759644, 23.872623>,  <37.979633, 34.646091, 24.577461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838123, 34.759644, 23.872623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745995, 35.129581, 23.993696>,  <37.690716, 35.351543, 24.066339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745995, 35.129581, 23.993696>,  <37.838123, 34.759644, 23.872623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745995, 35.129581, 23.993696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430102, 0.375767, -0.820861,
		-0.872905, -0.058881, -0.484325,
		-0.230326, 0.924842, 0.302684,
		37.676895, 35.407036, 24.084501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452568, 35.085506, 23.264767>,  <37.838123, 34.759644, 23.872623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452568, 35.085506, 23.264767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603298, 35.359421, 23.514267>,  <37.693737, 35.523769, 23.663967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603298, 35.359421, 23.514267>,  <37.452568, 35.085506, 23.264767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603298, 35.359421, 23.514267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406052, 0.483117, -0.775706,
		-0.832539, 0.545583, -0.096007,
		0.376829, 0.684790, 0.623749,
		37.716347, 35.564857, 23.701391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261368, 35.742348, 22.977453>,  <37.452568, 35.085506, 23.264767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261368, 35.742348, 22.977453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582085, 35.803940, 23.208426>,  <37.774513, 35.840897, 23.347010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582085, 35.803940, 23.208426>,  <37.261368, 35.742348, 22.977453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582085, 35.803940, 23.208426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386364, 0.603575, -0.697439,
		-0.455915, 0.782296, 0.424446,
		0.801788, 0.153982, 0.577430,
		37.822620, 35.850136, 23.381655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487358, 36.377087, 22.781240>,  <37.261368, 35.742348, 22.977453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487358, 36.377087, 22.781240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819233, 36.263668, 22.973581>,  <38.018356, 36.195618, 23.088985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819233, 36.263668, 22.973581>,  <37.487358, 36.377087, 22.781240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819233, 36.263668, 22.973581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534414, 0.652373, -0.537412,
		-0.161313, 0.702858, 0.692798,
		0.829687, -0.283549, 0.480853,
		38.068138, 36.178604, 23.117838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764198, 36.987648, 23.132851>,  <37.487358, 36.377087, 22.781240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764198, 36.987648, 23.132851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044281, 36.720184, 23.032772>,  <38.212334, 36.559708, 22.972725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044281, 36.720184, 23.032772>,  <37.764198, 36.987648, 23.132851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044281, 36.720184, 23.032772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545870, 0.727293, -0.416017,
		0.460141, 0.154725, 0.874260,
		0.700212, -0.668659, -0.250198,
		38.254345, 36.519588, 22.957712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380829, 37.389576, 23.243757>,  <37.764198, 36.987648, 23.132851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380829, 37.389576, 23.243757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529446, 37.066044, 23.061441>,  <38.618614, 36.871925, 22.952051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529446, 37.066044, 23.061441>,  <38.380829, 37.389576, 23.243757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529446, 37.066044, 23.061441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803322, 0.526188, -0.278926,
		0.465436, -0.262515, 0.845254,
		0.371541, -0.808834, -0.455791,
		38.640907, 36.823395, 22.924704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019688, 37.361412, 23.466362>,  <38.380829, 37.389576, 23.243757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019688, 37.361412, 23.466362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017021, 37.146046, 23.129299>,  <39.015423, 37.016827, 22.927061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017021, 37.146046, 23.129299>,  <39.019688, 37.361412, 23.466362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017021, 37.146046, 23.129299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873745, 0.406699, -0.266768,
		0.486339, -0.738043, 0.467726,
		-0.006663, -0.538413, -0.842655,
		39.015022, 36.984520, 22.876503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738411, 37.106365, 23.346466>,  <39.019688, 37.361412, 23.466362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738411, 37.106365, 23.346466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571678, 37.118343, 22.983070>,  <39.471638, 37.125530, 22.765034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571678, 37.118343, 22.983070>,  <39.738411, 37.106365, 23.346466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571678, 37.118343, 22.983070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762310, 0.555905, -0.331442,
		0.495109, -0.830706, -0.254546,
		-0.416834, 0.029943, -0.908489,
		39.446629, 37.127327, 22.710524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379433, 37.035351, 23.001829>,  <39.738411, 37.106365, 23.346466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379433, 37.035351, 23.001829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122292, 37.132290, 22.711172>,  <39.968006, 37.190453, 22.536777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122292, 37.132290, 22.711172>,  <40.379433, 37.035351, 23.001829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122292, 37.132290, 22.711172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707844, 0.550495, -0.442619,
		0.292745, -0.798888, -0.525432,
		-0.642851, 0.242350, -0.726643,
		39.929436, 37.204994, 22.493179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658764, 36.914906, 22.376192>,  <40.379433, 37.035351, 23.001829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658764, 36.914906, 22.376192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370491, 37.173042, 22.274885>,  <40.197525, 37.327923, 22.214100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370491, 37.173042, 22.274885>,  <40.658764, 36.914906, 22.376192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370491, 37.173042, 22.274885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651297, 0.505085, -0.566305,
		-0.237539, -0.573081, -0.784317,
		-0.720685, 0.645343, -0.253268,
		40.154285, 37.366646, 22.198904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669991, 36.979332, 21.653673>,  <40.658764, 36.914906, 22.376192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669991, 36.979332, 21.653673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499996, 37.304764, 21.812405>,  <40.397999, 37.500023, 21.907644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499996, 37.304764, 21.812405>,  <40.669991, 36.979332, 21.653673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499996, 37.304764, 21.812405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537393, 0.579545, -0.612647,
		-0.728417, -0.047115, -0.683512,
		-0.424991, 0.813577, 0.396831,
		40.372498, 37.548836, 21.931454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335754, 37.304668, 21.065855>,  <40.669991, 36.979332, 21.653673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335754, 37.304668, 21.065855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399342, 37.591576, 21.337223>,  <40.437492, 37.763721, 21.500044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399342, 37.591576, 21.337223>,  <40.335754, 37.304668, 21.065855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399342, 37.591576, 21.337223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606373, 0.471349, -0.640423,
		-0.779129, 0.513183, -0.360002,
		0.158968, 0.717268, 0.678422,
		40.447033, 37.806755, 21.540751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334213, 37.867512, 20.682859>,  <40.335754, 37.304668, 21.065855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334213, 37.867512, 20.682859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523281, 37.968025, 21.020721>,  <40.636723, 38.028332, 21.223438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523281, 37.968025, 21.020721>,  <40.334213, 37.867512, 20.682859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523281, 37.968025, 21.020721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789446, 0.305200, -0.532568,
		-0.391613, 0.918537, -0.054114,
		0.472668, 0.251280, 0.844656,
		40.665081, 38.043407, 21.274118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550583, 38.561127, 20.685091>,  <40.334213, 37.867512, 20.682859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550583, 38.561127, 20.685091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821621, 38.366978, 20.906099>,  <40.984241, 38.250488, 21.038704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821621, 38.366978, 20.906099>,  <40.550583, 38.561127, 20.685091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821621, 38.366978, 20.906099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687819, 0.152303, -0.709724,
		0.260331, 0.860939, 0.437049,
		0.677593, -0.485373, 0.552521,
		41.024899, 38.221367, 21.071856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279346, 38.870922, 20.804131>,  <40.550583, 38.561127, 20.685091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279346, 38.870922, 20.804131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552021, 39.113186, 20.968315>,  <41.715626, 39.258545, 21.066826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552021, 39.113186, 20.968315>,  <41.279346, 38.870922, 20.804131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552021, 39.113186, 20.968315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197795, 0.692678, -0.693595,
		-0.704399, 0.391629, 0.591988,
		0.681689, 0.605660, 0.410459,
		41.756527, 39.294884, 21.091454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906300, 39.519642, 20.918549>,  <41.279346, 38.870922, 20.804131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906300, 39.519642, 20.918549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301697, 39.576412, 20.897606>,  <41.538937, 39.610474, 20.885040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301697, 39.576412, 20.897606>,  <40.906300, 39.519642, 20.918549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301697, 39.576412, 20.897606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146125, 0.806327, -0.573135,
		-0.039123, 0.574190, 0.817786,
		0.988492, 0.141922, -0.052358,
		41.598244, 39.618988, 20.881899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162338, 40.259682, 21.309292>,  <40.906300, 39.519642, 20.918549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162338, 40.259682, 21.309292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383377, 40.089874, 21.022400>,  <41.515999, 39.987988, 20.850266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383377, 40.089874, 21.022400>,  <41.162338, 40.259682, 21.309292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383377, 40.089874, 21.022400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063873, 0.836453, -0.544304,
		0.830996, 0.346593, 0.435107,
		0.552599, -0.424523, -0.717227,
		41.549156, 39.962517, 20.807232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767681, 40.726601, 21.118372>,  <41.162338, 40.259682, 21.309292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767681, 40.726601, 21.118372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631092, 40.494621, 20.822519>,  <41.549141, 40.355434, 20.645008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631092, 40.494621, 20.822519>,  <41.767681, 40.726601, 21.118372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631092, 40.494621, 20.822519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069589, 0.800374, -0.595448,
		0.937314, -0.151856, -0.313660,
		-0.341468, -0.579949, -0.739634,
		41.528652, 40.320637, 20.600630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219887, 40.905170, 20.485558>,  <41.767681, 40.726601, 21.118372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219887, 40.905170, 20.485558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855042, 40.793335, 20.365633>,  <41.636135, 40.726234, 20.293678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855042, 40.793335, 20.365633>,  <42.219887, 40.905170, 20.485558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855042, 40.793335, 20.365633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130052, 0.496211, -0.858406,
		0.388771, -0.821951, -0.416237,
		-0.912110, -0.279591, -0.299808,
		41.581409, 40.709457, 20.275690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213234, 40.476933, 19.916866>,  <42.219887, 40.905170, 20.485558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213234, 40.476933, 19.916866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906422, 40.731972, 19.945536>,  <41.722336, 40.884995, 19.962738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906422, 40.731972, 19.945536>,  <42.213234, 40.476933, 19.916866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906422, 40.731972, 19.945536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284350, 0.437944, -0.852848,
		-0.575163, -0.633778, -0.517217,
		-0.767028, 0.637598, 0.071675,
		41.676311, 40.923252, 19.967037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577995, 39.830154, 20.181028>,  <42.213234, 40.476933, 19.916866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577995, 39.830154, 20.181028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276833, 39.948463, 20.416197>,  <42.096134, 40.019447, 20.557299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276833, 39.948463, 20.416197>,  <42.577995, 39.830154, 20.181028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276833, 39.948463, 20.416197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241989, -0.706329, 0.665237,
		0.612026, 0.643131, 0.460224,
		-0.752904, 0.295773, 0.587923,
		42.050961, 40.037197, 20.592573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931770, 39.861118, 20.837324>,  <42.577995, 39.830154, 20.181028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931770, 39.861118, 20.837324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535633, 39.817471, 20.871540>,  <42.297951, 39.791283, 20.892069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535633, 39.817471, 20.871540>,  <42.931770, 39.861118, 20.837324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535633, 39.817471, 20.871540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131580, -0.545205, 0.827912,
		-0.043704, 0.831171, 0.554297,
		-0.990342, -0.109117, 0.085538,
		42.238529, 39.784737, 20.897202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649227, 40.157284, 21.525885>,  <42.931770, 39.861118, 20.837324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649227, 40.157284, 21.525885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371422, 39.899448, 21.398033>,  <42.204739, 39.744747, 21.321321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371422, 39.899448, 21.398033>,  <42.649227, 40.157284, 21.525885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371422, 39.899448, 21.398033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130386, -0.549652, 0.825156,
		-0.707568, 0.531405, 0.465785,
		-0.694512, -0.644586, -0.319628,
		42.163067, 39.706074, 21.302145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652569, 40.434933, 22.234299>,  <42.649227, 40.157284, 21.525885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652569, 40.434933, 22.234299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484406, 40.078400, 22.166426>,  <42.383507, 39.864479, 22.125702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484406, 40.078400, 22.166426>,  <42.652569, 40.434933, 22.234299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484406, 40.078400, 22.166426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384360, 0.005543, 0.923167,
		-0.821904, 0.453325, -0.344922,
		-0.420406, -0.891328, -0.169684,
		42.358284, 39.811001, 22.115520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901436, 40.356274, 22.276361>,  <42.652569, 40.434933, 22.234299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901436, 40.356274, 22.276361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027817, 39.986935, 22.363632>,  <42.103645, 39.765331, 22.415995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027817, 39.986935, 22.363632>,  <41.901436, 40.356274, 22.276361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027817, 39.986935, 22.363632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606557, -0.019753, 0.794794,
		-0.729561, -0.383457, -0.566304,
		0.315956, -0.923347, 0.218178,
		42.122604, 39.709930, 22.429085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304787, 39.872833, 22.397188>,  <41.901436, 40.356274, 22.276361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304787, 39.872833, 22.397188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612621, 39.692799, 22.578365>,  <41.797321, 39.584778, 22.687071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612621, 39.692799, 22.578365>,  <41.304787, 39.872833, 22.397188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612621, 39.692799, 22.578365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498055, 0.020790, 0.866896,
		-0.399598, -0.892741, -0.208169,
		0.769586, -0.450089, 0.452942,
		41.843498, 39.557774, 22.714249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984169, 39.389450, 22.774881>,  <41.304787, 39.872833, 22.397188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984169, 39.389450, 22.774881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345432, 39.398865, 22.946348>,  <41.562191, 39.404514, 23.049229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345432, 39.398865, 22.946348>,  <40.984169, 39.389450, 22.774881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345432, 39.398865, 22.946348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415049, -0.207356, 0.885854,
		0.109738, -0.977982, -0.177505,
		0.903156, 0.023538, 0.428666,
		41.616379, 39.405926, 23.074947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796627, 38.998569, 23.406992>,  <40.984169, 39.389450, 22.774881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796627, 38.998569, 23.406992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170963, 39.122517, 23.474142>,  <41.395565, 39.196884, 23.514431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170963, 39.122517, 23.474142>,  <40.796627, 38.998569, 23.406992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170963, 39.122517, 23.474142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042858, -0.372747, 0.926943,
		0.349803, -0.874667, -0.335552,
		0.935843, 0.309866, 0.167874,
		41.451717, 39.215477, 23.524504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144608, 38.376633, 23.675325>,  <40.796627, 38.998569, 23.406992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144608, 38.376633, 23.675325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336044, 38.707851, 23.792145>,  <41.450909, 38.906582, 23.862236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336044, 38.707851, 23.792145>,  <41.144608, 38.376633, 23.675325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336044, 38.707851, 23.792145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165304, -0.241693, 0.956169,
		0.862334, -0.505895, 0.021205,
		0.478596, 0.828043, 0.292046,
		41.479622, 38.956264, 23.879759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690720, 38.138515, 24.004005>,  <41.144608, 38.376633, 23.675325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690720, 38.138515, 24.004005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607899, 38.507088, 24.135519>,  <41.558205, 38.728230, 24.214426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607899, 38.507088, 24.135519>,  <41.690720, 38.138515, 24.004005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607899, 38.507088, 24.135519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333119, -0.382385, 0.861866,
		0.919869, 0.068930, 0.386120,
		-0.207055, 0.921428, 0.328782,
		41.545784, 38.783516, 24.234154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882805, 38.177845, 24.757936>,  <41.690720, 38.138515, 24.004005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882805, 38.177845, 24.757936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625828, 38.480804, 24.711250>,  <41.471642, 38.662579, 24.683239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625828, 38.480804, 24.711250>,  <41.882805, 38.177845, 24.757936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625828, 38.480804, 24.711250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456831, -0.256222, 0.851855,
		0.615285, 0.600586, 0.510609,
		-0.642441, 0.757395, -0.116717,
		41.433094, 38.708023, 24.676235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506783, 38.289791, 25.511580>,  <41.882805, 38.177845, 24.757936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506783, 38.289791, 25.511580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281963, 38.502201, 25.257929>,  <41.147072, 38.629646, 25.105740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281963, 38.502201, 25.257929>,  <41.506783, 38.289791, 25.511580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281963, 38.502201, 25.257929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633175, 0.217037, 0.742957,
		0.532156, 0.819090, 0.214245,
		-0.562050, 0.531023, -0.634125,
		41.113350, 38.661507, 25.067692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268097, 38.767891, 25.947508>,  <41.506783, 38.289791, 25.511580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268097, 38.767891, 25.947508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029343, 38.745010, 25.627394>,  <40.886089, 38.731281, 25.435326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029343, 38.745010, 25.627394>,  <41.268097, 38.767891, 25.947508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029343, 38.745010, 25.627394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798701, -0.052380, 0.599444,
		-0.076205, 0.996988, -0.014419,
		-0.596884, -0.057197, -0.800287,
		40.850277, 38.727852, 25.387308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639046, 39.072803, 26.090824>,  <41.268097, 38.767891, 25.947508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639046, 39.072803, 26.090824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513771, 38.865913, 25.772230>,  <40.438606, 38.741779, 25.581074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513771, 38.865913, 25.772230>,  <40.639046, 39.072803, 26.090824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513771, 38.865913, 25.772230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921687, -0.036628, 0.386203,
		-0.228929, 0.855063, -0.465251,
		-0.313186, -0.517228, -0.796485,
		40.419815, 38.710747, 25.533285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951141, 39.329414, 25.994781>,  <40.639046, 39.072803, 26.090824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951141, 39.329414, 25.994781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984711, 38.959820, 25.845541>,  <40.004852, 38.738064, 25.755997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984711, 38.959820, 25.845541>,  <39.951141, 39.329414, 25.994781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984711, 38.959820, 25.845541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870375, -0.250282, 0.424037,
		-0.485185, 0.289151, -0.825220,
		0.083927, -0.923987, -0.373102,
		40.009888, 38.682625, 25.733610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354652, 39.170189, 25.704697>,  <39.951141, 39.329414, 25.994781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354652, 39.170189, 25.704697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525482, 38.813435, 25.764219>,  <39.627979, 38.599380, 25.799932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525482, 38.813435, 25.764219>,  <39.354652, 39.170189, 25.704697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525482, 38.813435, 25.764219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845743, -0.335795, 0.414682,
		-0.319878, -0.302960, -0.897716,
		0.427080, -0.891884, 0.148812,
		39.653606, 38.545868, 25.808861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956341, 38.622463, 25.397078>,  <39.354652, 39.170189, 25.704697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956341, 38.622463, 25.397078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180107, 38.462547, 25.687517>,  <39.314369, 38.366600, 25.861782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180107, 38.462547, 25.687517>,  <38.956341, 38.622463, 25.397078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180107, 38.462547, 25.687517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823773, -0.365291, 0.433544,
		0.091914, -0.840675, -0.533683,
		0.559419, -0.399785, 0.726101,
		39.347935, 38.342613, 25.905348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481483, 38.056820, 25.499680>,  <38.956341, 38.622463, 25.397078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481483, 38.056820, 25.499680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742104, 38.063065, 25.803059>,  <38.898476, 38.066811, 25.985086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742104, 38.063065, 25.803059>,  <38.481483, 38.056820, 25.499680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742104, 38.063065, 25.803059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702530, -0.364828, 0.611025,
		0.286245, -0.930944, -0.226732,
		0.651548, 0.015617, 0.758447,
		38.937569, 38.067749, 26.030592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505611, 37.349159, 25.823490>,  <38.481483, 38.056820, 25.499680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505611, 37.349159, 25.823490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641079, 37.603199, 26.101179>,  <38.722359, 37.755623, 26.267794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641079, 37.603199, 26.101179>,  <38.505611, 37.349159, 25.823490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641079, 37.603199, 26.101179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663110, -0.362342, 0.654976,
		0.667524, -0.682167, 0.298428,
		0.338670, 0.635103, 0.694224,
		38.742680, 37.793732, 26.309446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501862, 36.943172, 26.376616>,  <38.505611, 37.349159, 25.823490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501862, 36.943172, 26.376616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505543, 37.321739, 26.505737>,  <38.507751, 37.548882, 26.583210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505543, 37.321739, 26.505737>,  <38.501862, 36.943172, 26.376616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505543, 37.321739, 26.505737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592886, -0.254792, 0.763916,
		0.805234, -0.198417, 0.558775,
		0.009203, 0.946421, 0.322805,
		38.508305, 37.605667, 26.602579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631172, 36.962639, 27.090548>,  <38.501862, 36.943172, 26.376616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631172, 36.962639, 27.090548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445202, 37.310188, 27.022551>,  <38.333622, 37.518719, 26.981752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445202, 37.310188, 27.022551>,  <38.631172, 36.962639, 27.090548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445202, 37.310188, 27.022551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599913, -0.167962, 0.782236,
		0.651116, 0.465661, 0.599340,
		-0.464923, 0.868878, -0.169993,
		38.305725, 37.570850, 26.971552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608391, 37.332481, 27.773111>,  <38.631172, 36.962639, 27.090548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608391, 37.332481, 27.773111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344097, 37.503654, 27.526440>,  <38.185520, 37.606358, 27.378437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344097, 37.503654, 27.526440>,  <38.608391, 37.332481, 27.773111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344097, 37.503654, 27.526440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699996, -0.054699, 0.712049,
		0.270981, 0.902152, 0.335696,
		-0.660738, 0.427937, -0.616681,
		38.145874, 37.632034, 27.341436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285892, 37.838512, 28.186731>,  <38.608391, 37.332481, 27.773111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285892, 37.838512, 28.186731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032108, 37.780121, 27.883114>,  <37.879837, 37.745087, 27.700943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032108, 37.780121, 27.883114>,  <38.285892, 37.838512, 28.186731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032108, 37.780121, 27.883114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766168, -0.011079, 0.642545,
		-0.102206, 0.989226, -0.104814,
		-0.634461, -0.145977, -0.759046,
		37.841770, 37.736328, 27.655399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673565, 38.074001, 28.520342>,  <38.285892, 37.838512, 28.186731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673565, 38.074001, 28.520342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514118, 37.936539, 28.180223>,  <37.418449, 37.854061, 27.976152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514118, 37.936539, 28.180223>,  <37.673565, 38.074001, 28.520342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514118, 37.936539, 28.180223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901151, -0.025475, 0.432756,
		-0.170379, 0.938751, -0.299529,
		-0.398619, -0.343654, -0.850297,
		37.394531, 37.833443, 27.925135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957600, 38.385220, 28.412306>,  <37.673565, 38.074001, 28.520342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957600, 38.385220, 28.412306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017479, 38.026852, 28.245012>,  <37.053406, 37.811832, 28.144636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017479, 38.026852, 28.245012>,  <36.957600, 38.385220, 28.412306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017479, 38.026852, 28.245012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766012, -0.372543, 0.523867,
		-0.625152, 0.241949, -0.742055,
		0.149698, -0.895920, -0.418233,
		37.062389, 37.758076, 28.119543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305859, 38.153694, 28.235254>,  <36.957600, 38.385220, 28.412306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305859, 38.153694, 28.235254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511112, 37.812607, 28.274380>,  <36.634266, 37.607956, 28.297855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511112, 37.812607, 28.274380>,  <36.305859, 38.153694, 28.235254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511112, 37.812607, 28.274380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760155, -0.398572, 0.513133,
		-0.398572, -0.337657, -0.852718,
		-0.513133, 0.852718, -0.097812,
		36.665051, 37.556793, 28.303722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824951, 37.535549, 27.954155>,  <36.305859, 38.153694, 28.235254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824951, 37.535549, 27.954155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134205, 37.394478, 28.165014>,  <36.319756, 37.309837, 28.291529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134205, 37.394478, 28.165014>,  <35.824951, 37.535549, 27.954155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134205, 37.394478, 28.165014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633281, -0.474979, 0.611023,
		0.034892, -0.806236, -0.590564,
		0.773135, -0.352673, 0.527147,
		36.366146, 37.288677, 28.323158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628242, 36.819721, 28.151545>,  <35.824951, 37.535549, 27.954155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628242, 36.819721, 28.151545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934731, 36.888638, 28.399164>,  <36.118622, 36.929989, 28.547737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934731, 36.888638, 28.399164>,  <35.628242, 36.819721, 28.151545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934731, 36.888638, 28.399164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461497, -0.522812, 0.716720,
		0.447135, -0.834854, -0.321075,
		0.766218, 0.172295, 0.619051,
		36.164597, 36.940327, 28.584879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798641, 36.184109, 28.407982>,  <35.628242, 36.819721, 28.151545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798641, 36.184109, 28.407982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963215, 36.435364, 28.672153>,  <36.061958, 36.586117, 28.830656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963215, 36.435364, 28.672153>,  <35.798641, 36.184109, 28.407982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963215, 36.435364, 28.672153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381482, -0.539398, 0.750681,
		0.827763, -0.560798, 0.017695,
		0.411436, 0.628136, 0.660428,
		36.086647, 36.623806, 28.870281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085403, 35.768204, 28.916704>,  <35.798641, 36.184109, 28.407982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085403, 35.768204, 28.916704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077709, 36.118469, 29.109722>,  <36.073093, 36.328629, 29.225533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077709, 36.118469, 29.109722>,  <36.085403, 35.768204, 28.916704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077709, 36.118469, 29.109722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450988, -0.438342, 0.777474,
		0.892323, -0.202669, 0.403343,
		-0.019233, 0.875661, 0.482544,
		36.071938, 36.381168, 29.254486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363350, 35.661118, 29.611624>,  <36.085403, 35.768204, 28.916704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363350, 35.661118, 29.611624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149559, 35.997498, 29.645391>,  <36.021282, 36.199326, 29.665651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149559, 35.997498, 29.645391>,  <36.363350, 35.661118, 29.611624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149559, 35.997498, 29.645391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508351, -0.399664, 0.762789,
		0.675210, 0.364782, 0.641113,
		-0.534481, 0.840954, 0.084420,
		35.989216, 36.249783, 29.670717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287479, 35.707561, 30.356636>,  <36.363350, 35.661118, 29.611624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287479, 35.707561, 30.356636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039062, 35.982235, 30.205498>,  <35.890011, 36.147041, 30.114815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039062, 35.982235, 30.205498>,  <36.287479, 35.707561, 30.356636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039062, 35.982235, 30.205498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640052, -0.166089, 0.750165,
		0.452371, 0.707727, 0.542663,
		-0.621043, 0.686685, -0.377848,
		35.852749, 36.188240, 30.092144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197346, 36.219498, 30.850199>,  <36.287479, 35.707561, 30.356636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197346, 36.219498, 30.850199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875755, 36.215168, 30.612375>,  <35.682800, 36.212570, 30.469681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875755, 36.215168, 30.612375>,  <36.197346, 36.219498, 30.850199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875755, 36.215168, 30.612375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594604, 0.028198, 0.803524,
		0.008066, 0.999544, -0.029108,
		-0.803978, -0.010827, -0.594560,
		35.634563, 36.211922, 30.434008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855270, 36.834965, 30.966105>,  <36.197346, 36.219498, 30.850199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855270, 36.834965, 30.966105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598534, 36.567123, 30.816614>,  <35.444492, 36.406418, 30.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598534, 36.567123, 30.816614>,  <35.855270, 36.834965, 30.966105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598534, 36.567123, 30.816614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590979, 0.121367, 0.797505,
		-0.488654, 0.732735, -0.473620,
		-0.641841, -0.669604, -0.373724,
		35.405983, 36.366241, 30.704496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206726, 37.095928, 31.138176>,  <35.855270, 36.834965, 30.966105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206726, 37.095928, 31.138176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141499, 36.712578, 31.044428>,  <35.102360, 36.482567, 30.988178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141499, 36.712578, 31.044428>,  <35.206726, 37.095928, 31.138176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141499, 36.712578, 31.044428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518681, -0.118798, 0.846675,
		-0.839272, 0.259633, -0.477716,
		-0.163073, -0.958373, -0.234370,
		35.092575, 36.425068, 30.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404575, 36.987522, 31.263468>,  <35.206726, 37.095928, 31.138176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404575, 36.987522, 31.263468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600597, 36.638901, 31.257225>,  <34.718212, 36.429729, 31.253479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600597, 36.638901, 31.257225>,  <34.404575, 36.987522, 31.263468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600597, 36.638901, 31.257225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571523, -0.334774, 0.749192,
		-0.658183, -0.358227, -0.662169,
		0.490058, -0.871550, -0.015608,
		34.747616, 36.377438, 31.252542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891602, 36.557034, 31.531397>,  <34.404575, 36.987522, 31.263468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891602, 36.557034, 31.531397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185463, 36.286678, 31.554918>,  <34.361782, 36.124466, 31.569031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185463, 36.286678, 31.554918>,  <33.891602, 36.557034, 31.531397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185463, 36.286678, 31.554918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457375, -0.429396, 0.778735,
		-0.501087, -0.598997, -0.624592,
		0.734657, -0.675886, 0.058802,
		34.405861, 36.083912, 31.572559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577316, 35.910831, 31.416746>,  <33.891602, 36.557034, 31.531397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577316, 35.910831, 31.416746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898273, 35.896439, 31.655027>,  <34.090847, 35.887802, 31.797997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898273, 35.896439, 31.655027>,  <33.577316, 35.910831, 31.416746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898273, 35.896439, 31.655027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564293, -0.370639, 0.737699,
		0.194248, -0.928080, -0.317704,
		0.802397, -0.035982, 0.595705,
		34.138992, 35.885643, 31.833738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604813, 35.217419, 31.538183>,  <33.577316, 35.910831, 31.416746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604813, 35.217419, 31.538183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818871, 35.425705, 31.804256>,  <33.947308, 35.550678, 31.963900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818871, 35.425705, 31.804256>,  <33.604813, 35.217419, 31.538183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818871, 35.425705, 31.804256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503972, -0.435150, 0.746095,
		0.677960, -0.734504, 0.029558,
		0.535147, 0.520719, 0.665183,
		33.979416, 35.581921, 32.003811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669102, 34.754990, 32.033348>,  <33.604813, 35.217419, 31.538183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669102, 34.754990, 32.033348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733097, 35.108185, 32.209866>,  <33.771496, 35.320103, 32.315777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733097, 35.108185, 32.209866>,  <33.669102, 34.754990, 32.033348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733097, 35.108185, 32.209866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577722, -0.278731, 0.767168,
		0.800400, -0.377684, 0.465526,
		0.159991, 0.882986, 0.441292,
		33.781094, 35.373081, 32.342255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956573, 34.588867, 32.733418>,  <33.669102, 34.754990, 32.033348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956573, 34.588867, 32.733418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815788, 34.962025, 32.763962>,  <33.731319, 35.185921, 32.782288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815788, 34.962025, 32.763962>,  <33.956573, 34.588867, 32.733418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815788, 34.962025, 32.763962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580351, -0.281505, 0.764164,
		0.734382, 0.224638, 0.640485,
		-0.351960, 0.932895, 0.076364,
		33.710201, 35.241894, 32.786869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051868, 34.754772, 33.438725>,  <33.956573, 34.588867, 32.733418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051868, 34.754772, 33.438725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779102, 35.003483, 33.284645>,  <33.615440, 35.152710, 33.192196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779102, 35.003483, 33.284645>,  <34.051868, 34.754772, 33.438725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779102, 35.003483, 33.284645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628257, -0.228247, 0.743772,
		0.374539, 0.749197, 0.546282,
		-0.681919, 0.621777, -0.385201,
		33.574528, 35.190018, 33.169086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643230, 34.357563, 33.014969>,  <34.051868, 34.754772, 33.438725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643230, 34.357563, 33.014969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824627, 34.113941, 33.275246>,  <34.933464, 33.967766, 33.431412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824627, 34.113941, 33.275246>,  <34.643230, 34.357563, 33.014969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824627, 34.113941, 33.275246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885499, 0.390785, -0.251356,
		-0.101189, 0.690171, 0.716537,
		0.453490, -0.609058, 0.650689,
		34.960674, 33.931225, 33.470451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110027, 34.747402, 33.408119>,  <34.643230, 34.357563, 33.014969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110027, 34.747402, 33.408119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231205, 34.366222, 33.403992>,  <35.303913, 34.137512, 33.401516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231205, 34.366222, 33.403992>,  <35.110027, 34.747402, 33.408119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231205, 34.366222, 33.403992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915017, 0.293878, -0.276369,
		0.266400, 0.074280, 0.960996,
		0.302944, -0.952952, -0.010322,
		35.322090, 34.080338, 33.400894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842918, 34.759621, 33.521477>,  <35.110027, 34.747402, 33.408119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842918, 34.759621, 33.521477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844112, 34.375134, 33.411167>,  <35.844830, 34.144440, 33.344982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844112, 34.375134, 33.411167>,  <35.842918, 34.759621, 33.521477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844112, 34.375134, 33.411167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952259, 0.086923, -0.292654,
		0.305276, -0.261737, 0.915587,
		0.002987, -0.961217, -0.275777,
		35.845009, 34.086769, 33.328434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431034, 34.426605, 33.830551>,  <35.842918, 34.759621, 33.521477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431034, 34.426605, 33.830551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312107, 34.218060, 33.510605>,  <36.240749, 34.092934, 33.318638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312107, 34.218060, 33.510605>,  <36.431034, 34.426605, 33.830551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312107, 34.218060, 33.510605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914046, 0.086650, -0.396247,
		0.275897, -0.848923, 0.450789,
		-0.297322, -0.521365, -0.799861,
		36.222912, 34.061649, 33.270645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033882, 33.966061, 33.580315>,  <36.431034, 34.426605, 33.830551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033882, 33.966061, 33.580315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790226, 33.983551, 33.263573>,  <36.644032, 33.994045, 33.073528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790226, 33.983551, 33.263573>,  <37.033882, 33.966061, 33.580315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790226, 33.983551, 33.263573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785152, -0.107404, -0.609919,
		-0.111718, -0.993253, 0.031092,
		-0.609143, 0.043727, -0.791854,
		36.607483, 33.996670, 33.026016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178699, 33.403511, 33.195671>,  <37.033882, 33.966061, 33.580315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178699, 33.403511, 33.195671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991081, 33.657722, 32.950363>,  <36.878510, 33.810249, 32.803177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991081, 33.657722, 32.950363>,  <37.178699, 33.403511, 33.195671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991081, 33.657722, 32.950363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715316, -0.133898, -0.685853,
		-0.517995, -0.760378, -0.391800,
		-0.469046, 0.635529, -0.613269,
		36.850368, 33.848381, 32.766384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220837, 33.147987, 32.575985>,  <37.178699, 33.403511, 33.195671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220837, 33.147987, 32.575985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157478, 33.536945, 32.507442>,  <37.119465, 33.770321, 32.466316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157478, 33.536945, 32.507442>,  <37.220837, 33.147987, 32.575985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157478, 33.536945, 32.507442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697653, -0.012587, -0.716326,
		-0.698707, -0.233010, -0.676399,
		-0.158397, 0.972393, -0.171354,
		37.109959, 33.828663, 32.456036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208092, 33.226017, 31.854006>,  <37.220837, 33.147987, 32.575985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208092, 33.226017, 31.854006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271259, 33.598827, 31.984480>,  <37.309158, 33.822514, 32.062763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271259, 33.598827, 31.984480>,  <37.208092, 33.226017, 31.854006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271259, 33.598827, 31.984480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571595, 0.183078, -0.799851,
		-0.805196, 0.312758, -0.503828,
		0.157920, 0.932022, 0.326184,
		37.318634, 33.878433, 32.082336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103237, 33.752510, 31.326479>,  <37.208092, 33.226017, 31.854006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103237, 33.752510, 31.326479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301033, 33.984150, 31.585747>,  <37.419712, 34.123135, 31.741306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301033, 33.984150, 31.585747>,  <37.103237, 33.752510, 31.326479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301033, 33.984150, 31.585747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540917, 0.378687, -0.751003,
		-0.680360, 0.721967, -0.125991,
		0.494488, 0.579103, 0.648168,
		37.449379, 34.157879, 31.780197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086235, 34.446426, 30.965214>,  <37.103237, 33.752510, 31.326479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086235, 34.446426, 30.965214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378937, 34.440239, 31.237772>,  <37.554558, 34.436527, 31.401306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378937, 34.440239, 31.237772>,  <37.086235, 34.446426, 30.965214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378937, 34.440239, 31.237772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602324, 0.482559, -0.635879,
		-0.318974, 0.875727, 0.362433,
		0.731752, -0.015473, 0.681395,
		37.598461, 34.435596, 31.442190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414509, 35.110382, 31.087502>,  <37.086235, 34.446426, 30.965214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414509, 35.110382, 31.087502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707111, 34.877251, 31.229040>,  <37.882671, 34.737373, 31.313963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707111, 34.877251, 31.229040>,  <37.414509, 35.110382, 31.087502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707111, 34.877251, 31.229040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661718, 0.481712, -0.574529,
		0.164398, 0.654420, 0.738043,
		0.731507, -0.582828, 0.353849,
		37.926563, 34.702404, 31.335196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927982, 35.617901, 31.270510>,  <37.414509, 35.110382, 31.087502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927982, 35.617901, 31.270510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119717, 35.269073, 31.231047>,  <38.234756, 35.059776, 31.207369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119717, 35.269073, 31.231047>,  <37.927982, 35.617901, 31.270510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119717, 35.269073, 31.231047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762153, 0.469362, -0.445896,
		0.435158, 0.138541, 0.889631,
		0.479334, -0.872070, -0.098657,
		38.263515, 35.007454, 31.201450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613113, 35.791714, 31.357145>,  <37.927982, 35.617901, 31.270510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613113, 35.791714, 31.357145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623516, 35.440594, 31.165817>,  <38.629757, 35.229923, 31.051020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623516, 35.440594, 31.165817>,  <38.613113, 35.791714, 31.357145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623516, 35.440594, 31.165817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731946, 0.342614, -0.588957,
		0.680866, -0.334789, 0.651412,
		0.026007, -0.877800, -0.478322,
		38.631317, 35.177254, 31.022322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222500, 35.463375, 31.471498>,  <38.613113, 35.791714, 31.357145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222500, 35.463375, 31.471498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102798, 35.320847, 31.117439>,  <39.030979, 35.235329, 30.905005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102798, 35.320847, 31.117439>,  <39.222500, 35.463375, 31.471498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102798, 35.320847, 31.117439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761343, 0.470007, -0.446599,
		0.575157, -0.807546, 0.130631,
		-0.299251, -0.356320, -0.885147,
		39.013023, 35.213951, 30.851894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784672, 35.401268, 31.192539>,  <39.222500, 35.463375, 31.471498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784672, 35.401268, 31.192539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538578, 35.370262, 30.878731>,  <39.390923, 35.351658, 30.690445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538578, 35.370262, 30.878731>,  <39.784672, 35.401268, 31.192539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538578, 35.370262, 30.878731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736580, 0.298135, -0.607096,
		0.280955, -0.951371, -0.126324,
		-0.615235, -0.077519, -0.784523,
		39.354008, 35.347008, 30.643373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181793, 35.165440, 30.581768>,  <39.784672, 35.401268, 31.192539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181793, 35.165440, 30.581768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866714, 35.339611, 30.407440>,  <39.677670, 35.444115, 30.302843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866714, 35.339611, 30.407440>,  <40.181793, 35.165440, 30.581768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866714, 35.339611, 30.407440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587544, 0.318206, -0.744000,
		-0.185282, -0.842107, -0.506484,
		-0.787694, 0.435432, -0.435818,
		39.630405, 35.470242, 30.276695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244286, 35.009567, 29.853224>,  <40.181793, 35.165440, 30.581768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244286, 35.009567, 29.853224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008472, 35.332657, 29.855268>,  <39.866985, 35.526512, 29.856495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008472, 35.332657, 29.855268>,  <40.244286, 35.009567, 29.853224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008472, 35.332657, 29.855268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575373, 0.424374, -0.699180,
		-0.566916, -0.409249, -0.714928,
		-0.589536, 0.807726, 0.005113,
		39.831612, 35.574974, 29.856802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010052, 35.071861, 29.135571>,  <40.244286, 35.009567, 29.853224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010052, 35.071861, 29.135571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968597, 35.423958, 29.320797>,  <39.943726, 35.635216, 29.431932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968597, 35.423958, 29.320797>,  <40.010052, 35.071861, 29.135571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968597, 35.423958, 29.320797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434311, 0.458890, -0.775109,
		-0.894781, 0.120785, -0.429858,
		-0.103636, 0.880245, 0.463064,
		39.937508, 35.688030, 29.459717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008743, 35.507252, 28.538174>,  <40.010052, 35.071861, 29.135571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008743, 35.507252, 28.538174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071922, 35.756577, 28.844515>,  <40.109829, 35.906174, 29.028320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071922, 35.756577, 28.844515>,  <40.008743, 35.507252, 28.538174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071922, 35.756577, 28.844515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360219, 0.685770, -0.632425,
		-0.919399, 0.375764, -0.116215,
		0.157946, 0.623315, 0.765854,
		40.119305, 35.943569, 29.074270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699341, 36.178928, 28.411253>,  <40.008743, 35.507252, 28.538174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699341, 36.178928, 28.411253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981636, 36.261368, 28.682386>,  <40.151012, 36.310829, 28.845066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981636, 36.261368, 28.682386>,  <39.699341, 36.178928, 28.411253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981636, 36.261368, 28.682386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500741, 0.531724, -0.683029,
		-0.501189, 0.821459, 0.272058,
		0.705740, 0.206096, 0.677832,
		40.193359, 36.323196, 28.885736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908882, 36.916809, 28.440550>,  <39.699341, 36.178928, 28.411253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908882, 36.916809, 28.440550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220173, 36.705490, 28.576355>,  <40.406948, 36.578697, 28.657839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220173, 36.705490, 28.576355>,  <39.908882, 36.916809, 28.440550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220173, 36.705490, 28.576355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581615, 0.402454, -0.706933,
		0.236832, 0.747619, 0.620465,
		0.778225, -0.528296, 0.339513,
		40.453640, 36.547001, 28.678209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467846, 37.375809, 28.306313>,  <39.908882, 36.916809, 28.440550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467846, 37.375809, 28.306313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620720, 37.008705, 28.349510>,  <40.712444, 36.788445, 28.375429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620720, 37.008705, 28.349510>,  <40.467846, 37.375809, 28.306313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620720, 37.008705, 28.349510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652293, 0.185146, -0.735007,
		0.654562, 0.351349, 0.669405,
		0.382182, -0.917755, 0.107992,
		40.735374, 36.733379, 28.381908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150372, 37.470932, 28.292028>,  <40.467846, 37.375809, 28.306313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150372, 37.470932, 28.292028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119083, 37.088932, 28.177580>,  <41.100311, 36.859734, 28.108912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119083, 37.088932, 28.177580>,  <41.150372, 37.470932, 28.292028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119083, 37.088932, 28.177580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560753, 0.195152, -0.804656,
		0.824281, -0.223380, 0.520252,
		-0.078216, -0.954996, -0.286121,
		41.095619, 36.802433, 28.091743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738045, 37.347057, 27.972229>,  <41.150372, 37.470932, 28.292028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738045, 37.347057, 27.972229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553852, 37.011105, 27.857294>,  <41.443336, 36.809532, 27.788334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553852, 37.011105, 27.857294>,  <41.738045, 37.347057, 27.972229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553852, 37.011105, 27.857294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470424, 0.043609, -0.881362,
		0.752768, -0.541019, 0.375018,
		-0.460480, -0.839879, -0.287336,
		41.415707, 36.759140, 27.771093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246517, 36.887684, 27.659187>,  <41.738045, 37.347057, 27.972229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246517, 36.887684, 27.659187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890503, 36.768982, 27.520758>,  <41.676895, 36.697762, 27.437700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890503, 36.768982, 27.520758>,  <42.246517, 36.887684, 27.659187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890503, 36.768982, 27.520758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403764, -0.160645, -0.900648,
		0.211680, -0.941343, 0.262801,
		-0.890037, -0.296759, -0.346076,
		41.623493, 36.679955, 27.416935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297619, 36.243988, 27.406609>,  <42.246517, 36.887684, 27.659187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297619, 36.243988, 27.406609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981144, 36.400635, 27.218712>,  <41.791260, 36.494625, 27.105974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981144, 36.400635, 27.218712>,  <42.297619, 36.243988, 27.406609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981144, 36.400635, 27.218712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417906, -0.214591, -0.882783,
		-0.446517, -0.894754, 0.006122,
		-0.791188, 0.391619, -0.469741,
		41.743786, 36.518120, 27.077789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473976, 36.254093, 26.705252>,  <42.297619, 36.243988, 27.406609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473976, 36.254093, 26.705252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115166, 36.411945, 26.625647>,  <41.899879, 36.506657, 26.577883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115166, 36.411945, 26.625647>,  <42.473976, 36.254093, 26.705252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115166, 36.411945, 26.625647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249054, 0.079350, -0.965234,
		-0.365123, -0.915405, -0.169464,
		-0.897027, 0.394635, -0.199013,
		41.846058, 36.530334, 26.565943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116158, 35.808697, 26.352301>,  <42.473976, 36.254093, 26.705252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116158, 35.808697, 26.352301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989193, 36.175930, 26.257334>,  <41.913013, 36.396271, 26.200354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989193, 36.175930, 26.257334>,  <42.116158, 35.808697, 26.352301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989193, 36.175930, 26.257334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260088, -0.156479, -0.952822,
		-0.911922, -0.364189, -0.189114,
		-0.317414, 0.918086, -0.237418,
		41.893967, 36.451355, 26.186108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760944, 35.679272, 25.699253>,  <42.116158, 35.808697, 26.352301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760944, 35.679272, 25.699253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818428, 36.073814, 25.731356>,  <41.852917, 36.310539, 25.750618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818428, 36.073814, 25.731356>,  <41.760944, 35.679272, 25.699253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818428, 36.073814, 25.731356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123824, 0.062540, -0.990331,
		-0.981843, 0.152254, -0.113148,
		0.143706, 0.986361, 0.080258,
		41.861538, 36.369724, 25.755432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183674, 36.018543, 25.164293>,  <41.760944, 35.679272, 25.699253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183674, 36.018543, 25.164293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481468, 36.275707, 25.236311>,  <41.660145, 36.430004, 25.279522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481468, 36.275707, 25.236311>,  <41.183674, 36.018543, 25.164293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481468, 36.275707, 25.236311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281404, -0.057617, -0.957858,
		-0.605442, 0.763773, -0.223811,
		0.744481, 0.642909, 0.180045,
		41.704811, 36.468578, 25.290325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254375, 36.401386, 24.542797>,  <41.183674, 36.018543, 25.164293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254375, 36.401386, 24.542797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608360, 36.447140, 24.723358>,  <41.820751, 36.474594, 24.831696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608360, 36.447140, 24.723358>,  <41.254375, 36.401386, 24.542797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608360, 36.447140, 24.723358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447217, 0.061424, -0.892314,
		-0.129795, 0.991536, 0.003202,
		0.884958, 0.114385, 0.451404,
		41.873848, 36.481457, 24.858780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521328, 36.976097, 24.287571>,  <41.254375, 36.401386, 24.542797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521328, 36.976097, 24.287571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838997, 36.780354, 24.431692>,  <42.029598, 36.662907, 24.518166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838997, 36.780354, 24.431692>,  <41.521328, 36.976097, 24.287571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838997, 36.780354, 24.431692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334152, -0.143569, -0.931521,
		0.507576, 0.860184, 0.049502,
		0.794172, -0.489358, 0.360304,
		42.077248, 36.633545, 24.539783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124687, 37.419533, 24.058706>,  <41.521328, 36.976097, 24.287571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124687, 37.419533, 24.058706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240849, 37.044678, 24.136108>,  <42.310547, 36.819767, 24.182549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240849, 37.044678, 24.136108>,  <42.124687, 37.419533, 24.058706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240849, 37.044678, 24.136108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505044, -0.021655, -0.862822,
		0.812772, 0.348293, 0.467006,
		0.290402, -0.937136, 0.193503,
		42.327969, 36.763538, 24.194159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817993, 37.329754, 23.853699>,  <42.124687, 37.419533, 24.058706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817993, 37.329754, 23.853699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700798, 36.947754, 23.872173>,  <42.630482, 36.718555, 23.883259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700798, 36.947754, 23.872173>,  <42.817993, 37.329754, 23.853699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700798, 36.947754, 23.872173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558388, -0.210123, -0.802528,
		0.776119, -0.209342, 0.594824,
		-0.292989, -0.954999, 0.046187,
		42.612900, 36.661255, 23.886030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355644, 37.073868, 23.445154>,  <42.817993, 37.329754, 23.853699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355644, 37.073868, 23.445154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099136, 36.779903, 23.533403>,  <42.945232, 36.603523, 23.586353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099136, 36.779903, 23.533403>,  <43.355644, 37.073868, 23.445154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099136, 36.779903, 23.533403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364948, -0.545042, -0.754813,
		0.674973, -0.403521, 0.617724,
		-0.641268, -0.734915, 0.220625,
		42.906757, 36.559429, 23.599590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712036, 36.443714, 23.577295>,  <43.355644, 37.073868, 23.445154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712036, 36.443714, 23.577295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355850, 36.366241, 23.412582>,  <43.142139, 36.319759, 23.313755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355850, 36.366241, 23.412582>,  <43.712036, 36.443714, 23.577295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355850, 36.366241, 23.412582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454019, -0.439170, -0.775240,
		-0.030693, -0.877279, 0.478999,
		-0.890463, -0.193680, -0.411780,
		43.088711, 36.308136, 23.289049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788631, 35.759132, 23.304039>,  <43.712036, 36.443714, 23.577295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788631, 35.759132, 23.304039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470192, 35.921902, 23.124865>,  <43.279129, 36.019566, 23.017361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470192, 35.921902, 23.124865>,  <43.788631, 35.759132, 23.304039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470192, 35.921902, 23.124865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305770, -0.368280, -0.877995,
		-0.522243, -0.835932, 0.168760,
		-0.796095, 0.406925, -0.447934,
		43.231365, 36.043980, 22.990484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447147, 35.333988, 22.751797>,  <43.788631, 35.759132, 23.304039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447147, 35.333988, 22.751797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340893, 35.708092, 22.658216>,  <43.277142, 35.932552, 22.602068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340893, 35.708092, 22.658216>,  <43.447147, 35.333988, 22.751797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340893, 35.708092, 22.658216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308053, -0.147606, -0.939849,
		-0.913533, -0.321723, -0.248900,
		-0.265632, 0.935258, -0.233951,
		43.261204, 35.988670, 22.588032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350395, 35.253845, 22.021490>,  <43.447147, 35.333988, 22.751797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350395, 35.253845, 22.021490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527233, 34.915981, 21.900761>,  <43.633335, 34.713261, 21.828323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527233, 34.915981, 21.900761>,  <43.350395, 35.253845, 22.021490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527233, 34.915981, 21.900761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455312, -0.501245, 0.735829,
		-0.772815, -0.187882, -0.606183,
		0.442095, -0.844662, -0.301824,
		43.659863, 34.662582, 21.810213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786873, 34.790356, 22.001343>,  <43.350395, 35.253845, 22.021490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786873, 34.790356, 22.001343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130329, 34.589161, 22.040834>,  <43.336403, 34.468445, 22.064529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130329, 34.589161, 22.040834>,  <42.786873, 34.790356, 22.001343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130329, 34.589161, 22.040834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360637, -0.455922, 0.813680,
		-0.364254, -0.734263, -0.572867,
		0.858638, -0.502983, 0.098731,
		43.387920, 34.438267, 22.070454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694221, 34.190273, 22.169008>,  <42.786873, 34.790356, 22.001343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694221, 34.190273, 22.169008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076935, 34.181782, 22.285017>,  <43.306564, 34.176685, 22.354622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076935, 34.181782, 22.285017>,  <42.694221, 34.190273, 22.169008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076935, 34.181782, 22.285017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270562, -0.430545, 0.861062,
		0.106586, -0.902319, -0.417683,
		0.956784, -0.021232, 0.290023,
		43.363972, 34.175411, 22.372025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801685, 33.520100, 22.361660>,  <42.694221, 34.190273, 22.169008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801685, 33.520100, 22.361660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113201, 33.706577, 22.529537>,  <43.300110, 33.818466, 22.630264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113201, 33.706577, 22.529537>,  <42.801685, 33.520100, 22.361660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113201, 33.706577, 22.529537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145395, -0.516689, 0.843737,
		0.610198, -0.718118, -0.334611,
		0.778793, 0.466197, 0.419693,
		43.346840, 33.846436, 22.655445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412846, 33.073761, 22.559650>,  <42.801685, 33.520100, 22.361660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412846, 33.073761, 22.559650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454094, 33.369297, 22.826027>,  <43.478844, 33.546619, 22.985853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454094, 33.369297, 22.826027>,  <43.412846, 33.073761, 22.559650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454094, 33.369297, 22.826027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066014, -0.662952, 0.745746,
		0.992476, -0.120864, -0.019591,
		0.103121, 0.738841, 0.665943,
		43.485031, 33.590950, 23.025810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857533, 32.820236, 23.094376>,  <43.412846, 33.073761, 22.559650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857533, 32.820236, 23.094376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699608, 33.148281, 23.260044>,  <43.604851, 33.345108, 23.359446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699608, 33.148281, 23.260044>,  <43.857533, 32.820236, 23.094376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699608, 33.148281, 23.260044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137499, -0.498459, 0.855939,
		0.908414, 0.280989, 0.309564,
		-0.394814, 0.820112, 0.414172,
		43.581165, 33.394314, 23.384296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069084, 32.823833, 23.833076>,  <43.857533, 32.820236, 23.094376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069084, 32.823833, 23.833076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756756, 33.072517, 23.808434>,  <43.569359, 33.221729, 23.793648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756756, 33.072517, 23.808434>,  <44.069084, 32.823833, 23.833076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756756, 33.072517, 23.808434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333103, -0.330864, 0.882933,
		0.528544, 0.709935, 0.465439,
		-0.780822, 0.621708, -0.061605,
		43.522511, 33.259029, 23.789951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091377, 33.275654, 24.491259>,  <44.069084, 32.823833, 23.833076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091377, 33.275654, 24.491259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721184, 33.298325, 24.341454>,  <43.499065, 33.311928, 24.251570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721184, 33.298325, 24.341454>,  <44.091377, 33.275654, 24.491259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721184, 33.298325, 24.341454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378502, -0.100631, 0.920114,
		0.014464, 0.993308, 0.114585,
		-0.925487, 0.056679, -0.374514,
		43.443539, 33.315327, 24.229099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703125, 33.611427, 25.059624>,  <44.091377, 33.275654, 24.491259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703125, 33.611427, 25.059624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405502, 33.458393, 24.840534>,  <43.226929, 33.366573, 24.709080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405502, 33.458393, 24.840534>,  <43.703125, 33.611427, 25.059624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405502, 33.458393, 24.840534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502952, -0.218893, 0.836137,
		-0.439789, 0.897615, -0.029555,
		-0.744060, -0.382589, -0.547724,
		43.182285, 33.343616, 24.676216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067829, 33.847580, 25.338190>,  <43.703125, 33.611427, 25.059624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067829, 33.847580, 25.338190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009991, 33.501488, 25.146158>,  <42.975288, 33.293835, 25.030939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009991, 33.501488, 25.146158>,  <43.067829, 33.847580, 25.338190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009991, 33.501488, 25.146158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507855, -0.351504, 0.786466,
		-0.849220, 0.357532, -0.388583,
		-0.144598, -0.865226, -0.480078,
		42.966610, 33.241920, 25.002134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370918, 33.812214, 25.257105>,  <43.067829, 33.847580, 25.338190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370918, 33.812214, 25.257105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517479, 33.440041, 25.254461>,  <42.605415, 33.216736, 25.252876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517479, 33.440041, 25.254461>,  <42.370918, 33.812214, 25.257105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517479, 33.440041, 25.254461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655403, -0.263121, 0.707965,
		-0.660453, -0.255068, -0.706217,
		0.366400, -0.930434, -0.006607,
		42.627399, 33.160912, 25.252480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779221, 33.436756, 25.240082>,  <42.370918, 33.812214, 25.257105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779221, 33.436756, 25.240082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065300, 33.194157, 25.379019>,  <42.236946, 33.048595, 25.462381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065300, 33.194157, 25.379019>,  <41.779221, 33.436756, 25.240082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065300, 33.194157, 25.379019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559800, -0.199536, 0.804245,
		-0.418472, -0.769634, -0.482229,
		0.715196, -0.606505, 0.347341,
		42.279858, 33.012207, 25.483221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450775, 32.827282, 25.381947>,  <41.779221, 33.436756, 25.240082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450775, 32.827282, 25.381947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786873, 32.863235, 25.595829>,  <41.988533, 32.884808, 25.724159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786873, 32.863235, 25.595829>,  <41.450775, 32.827282, 25.381947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786873, 32.863235, 25.595829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536041, -0.010593, 0.844125,
		0.081538, -0.995896, 0.039282,
		0.840245, 0.089885, 0.534705,
		42.038948, 32.890202, 25.756241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495991, 32.295326, 25.789911>,  <41.450775, 32.827282, 25.381947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495991, 32.295326, 25.789911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708885, 32.586075, 25.963522>,  <41.836620, 32.760525, 26.067688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708885, 32.586075, 25.963522>,  <41.495991, 32.295326, 25.789911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708885, 32.586075, 25.963522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464196, -0.178177, 0.867626,
		0.707989, -0.663254, 0.242581,
		0.532234, 0.726875, 0.434028,
		41.868557, 32.804138, 26.093731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618343, 32.055733, 26.473110>,  <41.495991, 32.295326, 25.789911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618343, 32.055733, 26.473110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635174, 32.455379, 26.473064>,  <41.645271, 32.695168, 26.473038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635174, 32.455379, 26.473064>,  <41.618343, 32.055733, 26.473110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635174, 32.455379, 26.473064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393840, 0.016692, 0.919027,
		0.918215, -0.038627, 0.394194,
		0.042079, 0.999115, -0.000114,
		41.647797, 32.755116, 26.473030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726330, 32.151600, 27.143915>,  <41.618343, 32.055733, 26.473110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726330, 32.151600, 27.143915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612480, 32.516762, 27.026888>,  <41.544170, 32.735859, 26.956673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612480, 32.516762, 27.026888>,  <41.726330, 32.151600, 27.143915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612480, 32.516762, 27.026888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286027, 0.210419, 0.934833,
		0.914975, 0.349755, 0.201226,
		-0.284620, 0.912905, -0.292567,
		41.527096, 32.790634, 26.939117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984993, 32.673004, 27.663071>,  <41.726330, 32.151600, 27.143915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984993, 32.673004, 27.663071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695400, 32.878975, 27.479465>,  <41.521645, 33.002556, 27.369303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695400, 32.878975, 27.479465>,  <41.984993, 32.673004, 27.663071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695400, 32.878975, 27.479465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392459, 0.239756, 0.887971,
		0.567291, 0.823024, 0.028507,
		-0.723986, 0.514926, -0.459015,
		41.478203, 33.033451, 27.341761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905548, 33.284645, 28.102425>,  <41.984993, 32.673004, 27.663071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905548, 33.284645, 28.102425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564030, 33.239349, 27.899166>,  <41.359119, 33.212173, 27.777210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564030, 33.239349, 27.899166>,  <41.905548, 33.284645, 28.102425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564030, 33.239349, 27.899166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520549, 0.170418, 0.836652,
		-0.008142, 0.978844, -0.204446,
		-0.853793, -0.113236, -0.508149,
		41.307892, 33.205379, 27.746721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443916, 33.857548, 28.256826>,  <41.905548, 33.284645, 28.102425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443916, 33.857548, 28.256826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179909, 33.577190, 28.148661>,  <41.021503, 33.408974, 28.083761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179909, 33.577190, 28.148661>,  <41.443916, 33.857548, 28.256826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179909, 33.577190, 28.148661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513191, 0.157771, 0.843648,
		-0.548647, 0.695594, -0.463826,
		-0.660016, -0.700897, -0.270412,
		40.981903, 33.366920, 28.067537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794716, 34.196625, 28.377035>,  <41.443916, 33.857548, 28.256826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794716, 34.196625, 28.377035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702377, 33.807430, 28.375790>,  <40.646976, 33.573914, 28.375042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702377, 33.807430, 28.375790>,  <40.794716, 34.196625, 28.377035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702377, 33.807430, 28.375790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528138, 0.122611, 0.840260,
		-0.817179, 0.195613, -0.542175,
		-0.230842, -0.972986, -0.003116,
		40.633125, 33.515533, 28.374855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091827, 34.198524, 28.540226>,  <40.794716, 34.196625, 28.377035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091827, 34.198524, 28.540226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217823, 33.824184, 28.603422>,  <40.293419, 33.599579, 28.641340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217823, 33.824184, 28.603422>,  <40.091827, 34.198524, 28.540226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217823, 33.824184, 28.603422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596059, -0.065521, 0.800263,
		-0.738577, -0.346246, -0.578462,
		0.314989, -0.935853, 0.157991,
		40.312321, 33.543430, 28.650820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503098, 33.850449, 28.888678>,  <40.091827, 34.198524, 28.540226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503098, 33.850449, 28.888678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816734, 33.621830, 28.985455>,  <40.004917, 33.484657, 29.043520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816734, 33.621830, 28.985455>,  <39.503098, 33.850449, 28.888678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816734, 33.621830, 28.985455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435332, -0.228617, 0.870758,
		-0.442371, -0.788076, -0.428071,
		0.784087, -0.571551, 0.241941,
		40.051960, 33.450363, 29.058037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110779, 33.301952, 29.066154>,  <39.503098, 33.850449, 28.888678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110779, 33.301952, 29.066154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482338, 33.291733, 29.213938>,  <39.705273, 33.285603, 29.302608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482338, 33.291733, 29.213938>,  <39.110779, 33.301952, 29.066154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482338, 33.291733, 29.213938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368977, -0.149395, 0.917354,
		0.031763, -0.988448, -0.148197,
		0.928896, -0.025543, 0.369459,
		39.761005, 33.284069, 29.324776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064205, 32.818043, 29.648491>,  <39.110779, 33.301952, 29.066154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064205, 32.818043, 29.648491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423248, 32.980007, 29.718164>,  <39.638676, 33.077187, 29.759970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423248, 32.980007, 29.718164>,  <39.064205, 32.818043, 29.648491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423248, 32.980007, 29.718164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062179, -0.274903, 0.959459,
		0.436385, -0.872050, -0.221578,
		0.897609, 0.404916, 0.174186,
		39.692532, 33.101482, 29.770420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487598, 32.295109, 29.884516>,  <39.064205, 32.818043, 29.648491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487598, 32.295109, 29.884516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609180, 32.656303, 30.005987>,  <39.682129, 32.873020, 30.078871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609180, 32.656303, 30.005987>,  <39.487598, 32.295109, 29.884516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609180, 32.656303, 30.005987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041693, -0.331064, 0.942687,
		0.951773, -0.273874, -0.138278,
		0.303956, 0.902989, 0.303679,
		39.700367, 32.927200, 30.097092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964603, 32.195408, 30.426861>,  <39.487598, 32.295109, 29.884516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964603, 32.195408, 30.426861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854885, 32.572037, 30.505043>,  <39.789055, 32.798016, 30.551952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854885, 32.572037, 30.505043>,  <39.964603, 32.195408, 30.426861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854885, 32.572037, 30.505043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079362, -0.224722, 0.971186,
		0.958364, 0.250882, 0.136366,
		-0.274298, 0.941572, 0.195455,
		39.772594, 32.854507, 30.563679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423996, 32.643471, 30.889454>,  <39.964603, 32.195408, 30.426861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423996, 32.643471, 30.889454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034893, 32.730087, 30.922590>,  <39.801434, 32.782055, 30.942472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034893, 32.730087, 30.922590>,  <40.423996, 32.643471, 30.889454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034893, 32.730087, 30.922590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001598, -0.363565, 0.931567,
		0.231838, 0.906053, 0.354005,
		-0.972753, 0.216539, 0.082840,
		39.743069, 32.795048, 30.947443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357559, 33.026825, 31.578886>,  <40.423996, 32.643471, 30.889454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357559, 33.026825, 31.578886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993938, 32.888248, 31.486284>,  <39.775764, 32.805103, 31.430723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993938, 32.888248, 31.486284>,  <40.357559, 33.026825, 31.578886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993938, 32.888248, 31.486284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159894, -0.223027, 0.961609,
		-0.384777, 0.911172, 0.147350,
		-0.909055, -0.346445, -0.231506,
		39.721222, 32.784313, 31.416832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998871, 33.214634, 32.091541>,  <40.357559, 33.026825, 31.578886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998871, 33.214634, 32.091541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740440, 32.952545, 31.934944>,  <39.585381, 32.795292, 31.840986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740440, 32.952545, 31.934944>,  <39.998871, 33.214634, 32.091541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740440, 32.952545, 31.934944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339038, -0.213173, 0.916302,
		-0.683839, 0.724733, -0.084420,
		-0.646078, -0.655225, -0.391488,
		39.546616, 32.755978, 31.817497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313259, 33.330147, 32.488480>,  <39.998871, 33.214634, 32.091541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313259, 33.330147, 32.488480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297829, 32.965248, 32.325348>,  <39.288570, 32.746311, 32.227470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297829, 32.965248, 32.325348>,  <39.313259, 33.330147, 32.488480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297829, 32.965248, 32.325348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266843, -0.383903, 0.883976,
		-0.962967, 0.142929, -0.228615,
		-0.038580, -0.912244, -0.407826,
		39.286255, 32.691574, 32.202999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674717, 33.008389, 32.692043>,  <39.313259, 33.330147, 32.488480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674717, 33.008389, 32.692043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933079, 32.718048, 32.597439>,  <39.088097, 32.543842, 32.540676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933079, 32.718048, 32.597439>,  <38.674717, 33.008389, 32.692043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933079, 32.718048, 32.597439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296080, -0.523741, 0.798769,
		-0.703665, -0.445901, -0.553198,
		0.645905, -0.725856, -0.236516,
		39.126850, 32.500290, 32.526485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293987, 32.421177, 32.817673>,  <38.674717, 33.008389, 32.692043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293987, 32.421177, 32.817673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682415, 32.326107, 32.826973>,  <38.915470, 32.269066, 32.832554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682415, 32.326107, 32.826973>,  <38.293987, 32.421177, 32.817673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682415, 32.326107, 32.826973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141372, -0.493674, 0.858079,
		-0.192463, -0.836539, -0.512991,
		0.971067, -0.237672, 0.023249,
		38.973736, 32.254807, 32.833946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350441, 31.742613, 33.124912>,  <38.293987, 32.421177, 32.817673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350441, 31.742613, 33.124912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725151, 31.880972, 33.146088>,  <38.949978, 31.963987, 33.158794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725151, 31.880972, 33.146088>,  <38.350441, 31.742613, 33.124912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725151, 31.880972, 33.146088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136312, -0.500061, 0.855195,
		0.322283, -0.793911, -0.515596,
		0.936778, 0.345897, 0.052942,
		39.006184, 31.984741, 33.161972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719986, 31.142561, 33.296539>,  <38.350441, 31.742613, 33.124912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719986, 31.142561, 33.296539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970173, 31.439432, 33.392841>,  <39.120285, 31.617556, 33.450623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970173, 31.439432, 33.392841>,  <38.719986, 31.142561, 33.296539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970173, 31.439432, 33.392841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321963, -0.526564, 0.786811,
		0.710728, -0.414608, -0.568301,
		0.625465, 0.742180, 0.240755,
		39.157814, 31.662086, 33.465069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155285, 30.788361, 33.617039>,  <38.719986, 31.142561, 33.296539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155285, 30.788361, 33.617039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267979, 31.156944, 33.724026>,  <39.335594, 31.378094, 33.788219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267979, 31.156944, 33.724026>,  <39.155285, 30.788361, 33.617039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267979, 31.156944, 33.724026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362468, -0.360313, 0.859530,
		0.888394, -0.145210, -0.435512,
		0.281733, 0.921460, 0.267466,
		39.352497, 31.433382, 33.804264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914555, 30.832466, 33.738094>,  <39.155285, 30.788361, 33.617039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914555, 30.832466, 33.738094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738388, 31.128513, 33.941372>,  <39.632687, 31.306141, 34.063339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738388, 31.128513, 33.941372>,  <39.914555, 30.832466, 33.738094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738388, 31.128513, 33.941372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337420, -0.388094, 0.857631,
		0.831973, 0.549191, -0.078806,
		-0.440419, 0.740116, 0.508192,
		39.606262, 31.350548, 34.093830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400738, 31.278957, 34.139866>,  <39.914555, 30.832466, 33.738094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400738, 31.278957, 34.139866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043743, 31.296364, 34.319454>,  <39.829548, 31.306808, 34.427208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043743, 31.296364, 34.319454>,  <40.400738, 31.278957, 34.139866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043743, 31.296364, 34.319454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381350, -0.458810, 0.802537,
		0.240916, 0.887468, 0.392886,
		-0.892486, 0.043517, 0.448970,
		39.775997, 31.309420, 34.454144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523533, 31.478130, 34.902420>,  <40.400738, 31.278957, 34.139866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523533, 31.478130, 34.902420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151062, 31.332624, 34.912098>,  <39.927578, 31.245321, 34.917904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151062, 31.332624, 34.912098>,  <40.523533, 31.478130, 34.902420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151062, 31.332624, 34.912098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167774, -0.368669, 0.914295,
		-0.323668, 0.855429, 0.404326,
		-0.931177, -0.363764, 0.024193,
		39.871708, 31.223495, 34.919357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221077, 31.648703, 35.566998>,  <40.523533, 31.478130, 34.902420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221077, 31.648703, 35.566998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953983, 31.379763, 35.439198>,  <39.793728, 31.218399, 35.362518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953983, 31.379763, 35.439198>,  <40.221077, 31.648703, 35.566998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953983, 31.379763, 35.439198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064400, -0.375416, 0.924617,
		-0.741611, 0.637972, 0.207378,
		-0.667732, -0.672350, -0.319498,
		39.753662, 31.178057, 35.343349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655411, 31.639582, 35.993198>,  <40.221077, 31.648703, 35.566998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655411, 31.639582, 35.993198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648121, 31.270115, 35.840096>,  <39.643745, 31.048435, 35.748234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648121, 31.270115, 35.840096>,  <39.655411, 31.639582, 35.993198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648121, 31.270115, 35.840096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074775, -0.383011, 0.920712,
		-0.997034, -0.011839, 0.076049,
		-0.018227, -0.923668, -0.382760,
		39.642654, 30.993015, 35.725269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411060, 31.260258, 36.568085>,  <39.655411, 31.639582, 35.993198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411060, 31.260258, 36.568085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500530, 30.983322, 36.293674>,  <39.554214, 30.817162, 36.129028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500530, 30.983322, 36.293674>,  <39.411060, 31.260258, 36.568085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500530, 30.983322, 36.293674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146156, -0.672078, 0.725913,
		-0.963642, -0.262639, -0.049141,
		0.223679, -0.692338, -0.686028,
		39.567635, 30.775621, 36.087868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131962, 30.670286, 36.842224>,  <39.411060, 31.260258, 36.568085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131962, 30.670286, 36.842224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432785, 30.557262, 36.604038>,  <39.613277, 30.489449, 36.461128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432785, 30.557262, 36.604038>,  <39.131962, 30.670286, 36.842224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432785, 30.557262, 36.604038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333756, -0.615791, 0.713729,
		-0.568347, -0.735503, -0.368805,
		0.752057, -0.282555, -0.595461,
		39.658401, 30.472494, 36.425400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117161, 29.915091, 36.838898>,  <39.131962, 30.670286, 36.842224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117161, 29.915091, 36.838898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487865, 30.008286, 36.721035>,  <39.710289, 30.064203, 36.650318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487865, 30.008286, 36.721035>,  <39.117161, 29.915091, 36.838898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487865, 30.008286, 36.721035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368520, -0.715921, 0.593002,
		-0.072788, -0.658160, -0.749352,
		0.926766, 0.232988, -0.294655,
		39.765896, 30.078182, 36.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491222, 29.291452, 36.947830>,  <39.117161, 29.915091, 36.838898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491222, 29.291452, 36.947830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770439, 29.573296, 36.896820>,  <39.937969, 29.742401, 36.866215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770439, 29.573296, 36.896820>,  <39.491222, 29.291452, 36.947830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770439, 29.573296, 36.896820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685752, -0.606551, 0.402293,
		0.206110, -0.368268, -0.906586,
		0.698042, 0.704610, -0.127524,
		39.979851, 29.784679, 36.858562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982460, 28.846825, 36.632236>,  <39.491222, 29.291452, 36.947830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982460, 28.846825, 36.632236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130085, 29.172516, 36.811489>,  <40.218658, 29.367931, 36.919041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130085, 29.172516, 36.811489>,  <39.982460, 28.846825, 36.632236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130085, 29.172516, 36.811489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718919, -0.555684, 0.417578,
		0.589026, 0.168061, -0.790446,
		0.369059, 0.814230, 0.448135,
		40.240803, 29.416784, 36.945930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751938, 28.815611, 36.541451>,  <39.982460, 28.846825, 36.632236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751938, 28.815611, 36.541451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659061, 29.035391, 36.862495>,  <40.603336, 29.167259, 37.055122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659061, 29.035391, 36.862495>,  <40.751938, 28.815611, 36.541451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659061, 29.035391, 36.862495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661694, -0.515575, 0.544375,
		0.712914, 0.657488, -0.243852,
		-0.232196, 0.549447, 0.802616,
		40.589401, 29.200226, 37.103279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370602, 28.949570, 36.819172>,  <40.751938, 28.815611, 36.541451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370602, 28.949570, 36.819172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117592, 29.031120, 37.118065>,  <40.965786, 29.080050, 37.297401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117592, 29.031120, 37.118065>,  <41.370602, 28.949570, 36.819172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117592, 29.031120, 37.118065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641647, -0.402432, 0.652946,
		0.433829, 0.892459, 0.123731,
		-0.632520, 0.203875, 0.747230,
		40.927837, 29.092283, 37.342236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806980, 29.211897, 37.415699>,  <41.370602, 28.949570, 36.819172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806980, 29.211897, 37.415699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457981, 29.082550, 37.562222>,  <41.248581, 29.004942, 37.650135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457981, 29.082550, 37.562222>,  <41.806980, 29.211897, 37.415699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457981, 29.082550, 37.562222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485836, -0.494313, 0.720846,
		-0.052029, 0.806901, 0.588390,
		-0.872500, -0.323366, 0.366303,
		41.196232, 28.985540, 37.672112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782795, 29.285921, 38.137428>,  <41.806980, 29.211897, 37.415699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782795, 29.285921, 38.137428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508644, 29.003893, 38.064617>,  <41.344154, 28.834675, 38.020931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508644, 29.003893, 38.064617>,  <41.782795, 29.285921, 38.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508644, 29.003893, 38.064617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394276, -0.569472, 0.721283,
		-0.612213, 0.422583, 0.668295,
		-0.685377, -0.705072, -0.182024,
		41.303032, 28.792372, 38.010010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565338, 28.993233, 38.848248>,  <41.782795, 29.285921, 38.137428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565338, 28.993233, 38.848248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482407, 28.716614, 38.571472>,  <41.432648, 28.550642, 38.405407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482407, 28.716614, 38.571472>,  <41.565338, 28.993233, 38.848248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482407, 28.716614, 38.571472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416078, -0.702476, 0.577413,
		-0.885379, -0.168187, 0.433380,
		-0.207326, -0.691549, -0.691936,
		41.420208, 28.509150, 38.363892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100246, 28.457775, 38.724964>,  <41.565338, 28.993233, 38.848248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100246, 28.457775, 38.724964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972488, 28.173899, 38.473782>,  <40.895832, 28.003572, 38.323074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972488, 28.173899, 38.473782>,  <41.100246, 28.457775, 38.724964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972488, 28.173899, 38.473782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682337, -0.632074, 0.367287,
		-0.657572, -0.311165, 0.686130,
		-0.319398, -0.709689, -0.627954,
		40.876671, 27.960993, 38.285397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986198, 27.808086, 39.091026>,  <41.100246, 28.457775, 38.724964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986198, 27.808086, 39.091026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081879, 27.709690, 38.715309>,  <41.139286, 27.650652, 38.489880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081879, 27.709690, 38.715309>,  <40.986198, 27.808086, 39.091026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081879, 27.709690, 38.715309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618611, -0.707022, 0.342697,
		-0.748401, -0.663031, -0.016949,
		0.239202, -0.245990, -0.939293,
		41.153641, 27.635893, 38.433521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052444, 27.107777, 38.932816>,  <40.986198, 27.808086, 39.091026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052444, 27.107777, 38.932816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309246, 27.286201, 38.683380>,  <41.463326, 27.393255, 38.533718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309246, 27.286201, 38.683380>,  <41.052444, 27.107777, 38.932816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309246, 27.286201, 38.683380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707883, -0.657277, 0.258629,
		-0.294507, -0.607468, -0.737732,
		0.642003, 0.446060, -0.623589,
		41.501846, 27.420019, 38.496304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236763, 26.590349, 38.456123>,  <41.052444, 27.107777, 38.932816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236763, 26.590349, 38.456123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526882, 26.865141, 38.474030>,  <41.700954, 27.030016, 38.484772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526882, 26.865141, 38.474030>,  <41.236763, 26.590349, 38.456123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526882, 26.865141, 38.474030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688161, -0.721627, -0.075433,
		-0.019520, 0.085514, -0.996146,
		0.725296, 0.686981, 0.044762,
		41.744473, 27.071236, 38.487457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632969, 26.493797, 37.828880>,  <41.236763, 26.590349, 38.456123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632969, 26.493797, 37.828880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872566, 26.662535, 38.101131>,  <42.016327, 26.763777, 38.264481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872566, 26.662535, 38.101131>,  <41.632969, 26.493797, 37.828880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872566, 26.662535, 38.101131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718223, -0.658864, -0.223727,
		0.354062, 0.622852, -0.697635,
		0.598996, 0.421845, 0.680625,
		42.052265, 26.789087, 38.305321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286636, 26.275452, 37.620140>,  <41.632969, 26.493797, 37.828880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286636, 26.275452, 37.620140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377548, 26.452560, 37.967079>,  <42.432095, 26.558825, 38.175243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377548, 26.452560, 37.967079>,  <42.286636, 26.275452, 37.620140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377548, 26.452560, 37.967079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880610, -0.473713, 0.011074,
		0.415780, 0.761282, -0.497572,
		0.227276, 0.442771, 0.867352,
		42.445732, 26.585392, 38.227283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954941, 26.517828, 37.490635>,  <42.286636, 26.275452, 37.620140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954941, 26.517828, 37.490635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901798, 26.472927, 37.884537>,  <42.869911, 26.445986, 38.120880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901798, 26.472927, 37.884537>,  <42.954941, 26.517828, 37.490635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901798, 26.472927, 37.884537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807058, -0.588995, 0.041746,
		0.575331, 0.800302, 0.168849,
		-0.132861, -0.112253, 0.984757,
		42.861938, 26.439251, 38.179962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551121, 26.676992, 37.864349>,  <42.954941, 26.517828, 37.490635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551121, 26.676992, 37.864349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335873, 26.405870, 38.064754>,  <43.206726, 26.243196, 38.184998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335873, 26.405870, 38.064754>,  <43.551121, 26.676992, 37.864349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335873, 26.405870, 38.064754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819565, -0.559578, 0.123229,
		0.196829, 0.476921, 0.856624,
		-0.538118, -0.677804, 0.501009,
		43.174438, 26.202530, 38.215057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034325, 26.438948, 38.296658>,  <43.551121, 26.676992, 37.864349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034325, 26.438948, 38.296658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766144, 26.143328, 38.270412>,  <43.605236, 25.965956, 38.254665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766144, 26.143328, 38.270412>,  <44.034325, 26.438948, 38.296658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766144, 26.143328, 38.270412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728668, -0.672525, 0.129433,
		-0.139782, 0.038971, 0.989415,
		-0.670450, -0.739048, -0.065610,
		43.565010, 25.921614, 38.250729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247639, 25.963387, 38.867046>,  <44.034325, 26.438948, 38.296658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247639, 25.963387, 38.867046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058907, 25.826462, 38.542034>,  <43.945667, 25.744307, 38.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058907, 25.826462, 38.542034>,  <44.247639, 25.963387, 38.867046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058907, 25.826462, 38.542034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708768, -0.695398, -0.118614,
		-0.524427, -0.631859, 0.570729,
		-0.471831, -0.342310, -0.812526,
		43.917358, 25.723768, 38.298275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258118, 25.191177, 38.735909>,  <44.247639, 25.963387, 38.867046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258118, 25.191177, 38.735909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495651, 24.916489, 38.903610>,  <44.638172, 24.751675, 39.004230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495651, 24.916489, 38.903610>,  <44.258118, 25.191177, 38.735909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495651, 24.916489, 38.903610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102129, -0.452532, -0.885880,
		0.798081, 0.568882, -0.198594,
		0.593832, -0.686722, 0.419257,
		44.673801, 24.710472, 39.029388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911236, 25.420870, 38.382896>,  <44.258118, 25.191177, 38.735909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911236, 25.420870, 38.382896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063774, 25.167473, 38.652195>,  <45.155296, 25.015434, 38.813774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063774, 25.167473, 38.652195>,  <44.911236, 25.420870, 38.382896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063774, 25.167473, 38.652195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684343, -0.296166, -0.666304,
		0.621492, 0.714824, 0.320584,
		0.381344, -0.633492, 0.673249,
		45.178177, 24.977425, 38.854172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772331, 25.287296, 37.545967>,  <44.911236, 25.420870, 38.382896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772331, 25.287296, 37.545967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478252, 25.048534, 37.674458>,  <44.301804, 24.905277, 37.751553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478252, 25.048534, 37.674458>,  <44.772331, 25.287296, 37.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478252, 25.048534, 37.674458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595859, 0.795020, 0.113561,
		-0.323167, -0.107915, -0.940169,
		-0.735198, -0.596907, 0.321226,
		44.257694, 24.869463, 37.770824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079624, 25.370403, 37.132404>,  <44.772331, 25.287296, 37.545967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079624, 25.370403, 37.132404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015072, 25.280302, 37.516743>,  <43.976341, 25.226240, 37.747345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015072, 25.280302, 37.516743>,  <44.079624, 25.370403, 37.132404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015072, 25.280302, 37.516743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648300, 0.758263, 0.068875,
		-0.744085, -0.611798, -0.268402,
		-0.161382, -0.225254, 0.960842,
		43.966656, 25.212727, 37.804996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407455, 25.259596, 37.222874>,  <44.079624, 25.370403, 37.132404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407455, 25.259596, 37.222874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579205, 25.398882, 37.556194>,  <43.682255, 25.482454, 37.756187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579205, 25.398882, 37.556194>,  <43.407455, 25.259596, 37.222874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579205, 25.398882, 37.556194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766204, 0.628895, 0.131996,
		-0.478094, -0.695152, 0.536833,
		0.429369, 0.348217, 0.833299,
		43.708015, 25.503347, 37.806183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088142, 25.107311, 37.857307>,  <43.407455, 25.259596, 37.222874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088142, 25.107311, 37.857307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277954, 25.228230, 38.187988>,  <43.391842, 25.300779, 38.386398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277954, 25.228230, 38.187988>,  <43.088142, 25.107311, 37.857307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277954, 25.228230, 38.187988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784888, 0.570453, 0.241937,
		-0.398460, -0.763676, 0.507965,
		0.474532, 0.302294, 0.826703,
		43.420315, 25.318918, 38.436001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557556, 25.225605, 38.254204>,  <43.088142, 25.107311, 37.857307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557556, 25.225605, 38.254204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864548, 25.434214, 38.403332>,  <43.048740, 25.559380, 38.492809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864548, 25.434214, 38.403332>,  <42.557556, 25.225605, 38.254204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864548, 25.434214, 38.403332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623041, 0.743757, 0.242167,
		-0.150993, -0.418140, 0.895746,
		0.767477, 0.521521, 0.372820,
		43.094791, 25.590670, 38.515179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360222, 25.433542, 38.949017>,  <42.557556, 25.225605, 38.254204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360222, 25.433542, 38.949017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609436, 25.683756, 38.761173>,  <42.758965, 25.833883, 38.648468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609436, 25.683756, 38.761173>,  <42.360222, 25.433542, 38.949017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609436, 25.683756, 38.761173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657862, 0.743835, 0.118012,
		0.423131, 0.235411, 0.874953,
		0.623039, 0.625532, -0.469607,
		42.796349, 25.871416, 38.620293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337673, 26.050932, 39.322884>,  <42.360222, 25.433542, 38.949017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337673, 26.050932, 39.322884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463890, 26.127535, 38.951130>,  <42.539619, 26.173496, 38.728077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463890, 26.127535, 38.951130>,  <42.337673, 26.050932, 39.322884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463890, 26.127535, 38.951130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664349, 0.743921, -0.072265,
		0.677550, 0.640239, 0.361967,
		0.315542, 0.191510, -0.929386,
		42.558552, 26.184988, 38.672314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962872, 26.428722, 39.476688>,  <42.337673, 26.050932, 39.322884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962872, 26.428722, 39.476688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917053, 26.455610, 39.080231>,  <42.889561, 26.471743, 38.842358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917053, 26.455610, 39.080231>,  <42.962872, 26.428722, 39.476688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917053, 26.455610, 39.080231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940250, 0.314687, 0.130006,
		0.320639, 0.946812, 0.027158,
		-0.114545, 0.067220, -0.991141,
		42.882690, 26.475777, 38.782887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592575, 26.942747, 39.496578>,  <42.962872, 26.428722, 39.476688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592575, 26.942747, 39.496578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559383, 26.823689, 39.116154>,  <42.539467, 26.752253, 38.887897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559383, 26.823689, 39.116154>,  <42.592575, 26.942747, 39.496578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559383, 26.823689, 39.116154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699790, 0.696874, -0.157040,
		0.709513, 0.652514, -0.266114,
		-0.082977, -0.297646, -0.951063,
		42.534489, 26.734394, 38.830833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694359, 27.634602, 39.135868>,  <42.592575, 26.942747, 39.496578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694359, 27.634602, 39.135868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538666, 27.382051, 38.867580>,  <42.445251, 27.230522, 38.706608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538666, 27.382051, 38.867580>,  <42.694359, 27.634602, 39.135868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538666, 27.382051, 38.867580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696736, 0.678093, -0.233986,
		0.602541, 0.376238, -0.703839,
		-0.389233, -0.631376, -0.670718,
		42.421894, 27.192638, 38.666367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752350, 27.839916, 38.464897>,  <42.694359, 27.634602, 39.135868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752350, 27.839916, 38.464897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430115, 27.602928, 38.465889>,  <42.236774, 27.460735, 38.466484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430115, 27.602928, 38.465889>,  <42.752350, 27.839916, 38.464897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430115, 27.602928, 38.465889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533804, 0.723990, -0.436912,
		0.257063, -0.353295, -0.899501,
		-0.805588, -0.592471, 0.002480,
		42.188438, 27.425186, 38.466633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553394, 27.947128, 37.830456>,  <42.752350, 27.839916, 38.464897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553394, 27.947128, 37.830456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232628, 27.799917, 38.018703>,  <42.040169, 27.711592, 38.131653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232628, 27.799917, 38.018703>,  <42.553394, 27.947128, 37.830456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232628, 27.799917, 38.018703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588288, 0.623719, -0.514676,
		-0.104119, -0.689587, -0.716679,
		-0.801921, -0.368026, 0.470617,
		41.992050, 27.689510, 38.159889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933372, 27.862946, 37.429531>,  <42.553394, 27.947128, 37.830456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933372, 27.862946, 37.429531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776718, 27.906353, 37.795010>,  <41.682724, 27.932398, 38.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776718, 27.906353, 37.795010>,  <41.933372, 27.862946, 37.429531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776718, 27.906353, 37.795010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731229, 0.566046, -0.380653,
		-0.558502, -0.817200, -0.142333,
		-0.391637, 0.108518, 0.913698,
		41.659225, 27.938908, 38.069118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242344, 27.562687, 37.502056>,  <41.933372, 27.862946, 37.429531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242344, 27.562687, 37.502056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287086, 27.861914, 37.763710>,  <41.313931, 28.041449, 37.920700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287086, 27.861914, 37.763710>,  <41.242344, 27.562687, 37.502056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287086, 27.861914, 37.763710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628778, 0.563010, -0.536337,
		-0.769497, -0.351310, 0.533344,
		0.111857, 0.748065, 0.654131,
		41.320644, 28.086332, 37.959949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553871, 27.897596, 37.542915>,  <41.242344, 27.562687, 37.502056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553871, 27.897596, 37.542915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793861, 28.172724, 37.706345>,  <40.937855, 28.337801, 37.804401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793861, 28.172724, 37.706345>,  <40.553871, 27.897596, 37.542915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793861, 28.172724, 37.706345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570452, 0.725879, -0.384297,
		-0.560899, -0.002500, 0.827880,
		0.599980, 0.687818, 0.408571,
		40.973854, 28.379068, 37.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246296, 28.184561, 38.088058>,  <40.553871, 27.897596, 37.542915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246296, 28.184561, 38.088058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576122, 28.410019, 38.107613>,  <40.774017, 28.545294, 38.119343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576122, 28.410019, 38.107613>,  <40.246296, 28.184561, 38.088058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576122, 28.410019, 38.107613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429494, 0.679869, -0.594402,
		-0.368266, 0.469131, 0.802681,
		0.824570, 0.563644, 0.048884,
		40.823494, 28.579113, 38.122276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134777, 28.829533, 38.380611>,  <40.246296, 28.184561, 38.088058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134777, 28.829533, 38.380611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470768, 28.900171, 38.175381>,  <40.672363, 28.942554, 38.052242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470768, 28.900171, 38.175381>,  <40.134777, 28.829533, 38.380611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470768, 28.900171, 38.175381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481408, 0.678807, -0.554498,
		0.250358, 0.712766, 0.655198,
		0.839980, 0.176595, -0.513076,
		40.722763, 28.953150, 38.021458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179142, 29.561760, 38.272964>,  <40.134777, 28.829533, 38.380611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179142, 29.561760, 38.272964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415436, 29.417881, 37.984062>,  <40.557213, 29.331554, 37.810719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415436, 29.417881, 37.984062>,  <40.179142, 29.561760, 38.272964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415436, 29.417881, 37.984062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519160, 0.515793, -0.681491,
		0.617665, 0.777545, 0.117955,
		0.590731, -0.359696, -0.722258,
		40.592655, 29.309973, 37.767384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408161, 30.149570, 37.985306>,  <40.179142, 29.561760, 38.272964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408161, 30.149570, 37.985306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481056, 29.851892, 37.728256>,  <40.524792, 29.673286, 37.574028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481056, 29.851892, 37.728256>,  <40.408161, 30.149570, 37.985306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481056, 29.851892, 37.728256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615171, 0.423557, -0.664953,
		0.767042, 0.516504, -0.380618,
		0.182237, -0.744193, -0.642625,
		40.535728, 29.628635, 37.535469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928879, 30.395796, 37.520172>,  <40.408161, 30.149570, 37.985306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928879, 30.395796, 37.520172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704975, 30.111151, 37.350334>,  <40.570633, 29.940363, 37.248432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704975, 30.111151, 37.350334>,  <40.928879, 30.395796, 37.520172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704975, 30.111151, 37.350334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202696, 0.614405, -0.762510,
		0.803485, -0.340755, -0.488158,
		-0.559756, -0.711613, -0.424595,
		40.537048, 29.897667, 37.222954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866974, 30.679716, 36.878498>,  <40.928879, 30.395796, 37.520172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866974, 30.679716, 36.878498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610161, 30.373367, 36.864456>,  <40.456074, 30.189558, 36.856030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610161, 30.373367, 36.864456>,  <40.866974, 30.679716, 36.878498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610161, 30.373367, 36.864456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443808, 0.408603, -0.797545,
		0.625162, -0.496470, -0.602237,
		-0.642033, -0.765873, -0.035106,
		40.417549, 30.143606, 36.853924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817116, 30.551691, 36.193455>,  <40.866974, 30.679716, 36.878498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817116, 30.551691, 36.193455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488430, 30.369408, 36.330341>,  <40.291218, 30.260038, 36.412472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488430, 30.369408, 36.330341>,  <40.817116, 30.551691, 36.193455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488430, 30.369408, 36.330341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530656, 0.392865, -0.751040,
		0.207807, -0.798743, -0.564646,
		-0.821718, -0.455705, 0.342218,
		40.241917, 30.232697, 36.433006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673523, 30.055813, 35.707527>,  <40.817116, 30.551691, 36.193455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673523, 30.055813, 35.707527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350388, 30.167492, 35.915161>,  <40.156506, 30.234499, 36.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350388, 30.167492, 35.915161>,  <40.673523, 30.055813, 35.707527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350388, 30.167492, 35.915161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380175, 0.426176, -0.820879,
		-0.450411, -0.860478, -0.238135,
		-0.807835, 0.279200, 0.519086,
		40.108036, 30.251251, 36.070889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182629, 30.076139, 35.212440>,  <40.673523, 30.055813, 35.707527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182629, 30.076139, 35.212440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943729, 30.255844, 35.478210>,  <39.800388, 30.363667, 35.637672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943729, 30.255844, 35.478210>,  <40.182629, 30.076139, 35.212440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943729, 30.255844, 35.478210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453676, 0.493912, -0.741774,
		-0.661419, -0.744455, -0.091168,
		-0.597247, 0.449263, 0.664424,
		39.764557, 30.390623, 35.677536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683655, 30.358147, 34.784206>,  <40.182629, 30.076139, 35.212440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683655, 30.358147, 34.784206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790649, 30.217453, 34.425377>,  <40.854847, 30.133036, 34.210079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790649, 30.217453, 34.425377>,  <40.683655, 30.358147, 34.784206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790649, 30.217453, 34.425377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762828, -0.491484, 0.420164,
		-0.588683, -0.796696, 0.136850,
		0.267484, -0.351736, -0.897070,
		40.870895, 30.111933, 34.156258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857712, 29.701681, 34.941078>,  <40.683655, 30.358147, 34.784206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857712, 29.701681, 34.941078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054661, 29.860334, 34.631176>,  <41.172829, 29.955526, 34.445232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054661, 29.860334, 34.631176>,  <40.857712, 29.701681, 34.941078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054661, 29.860334, 34.631176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866593, -0.306399, 0.393873,
		-0.081161, -0.865333, -0.494583,
		0.492371, 0.396635, -0.774759,
		41.202374, 29.979324, 34.398746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354805, 29.224855, 34.797794>,  <40.857712, 29.701681, 34.941078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354805, 29.224855, 34.797794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457886, 29.578215, 34.641232>,  <41.519733, 29.790230, 34.547295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457886, 29.578215, 34.641232>,  <41.354805, 29.224855, 34.797794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457886, 29.578215, 34.641232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917197, -0.096253, 0.386634,
		0.303876, -0.458636, -0.835052,
		0.257701, 0.883396, -0.391410,
		41.535194, 29.843233, 34.523808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872459, 29.158106, 34.334179>,  <41.354805, 29.224855, 34.797794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872459, 29.158106, 34.334179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882442, 29.519779, 34.504745>,  <41.888432, 29.736784, 34.607086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882442, 29.519779, 34.504745>,  <41.872459, 29.158106, 34.334179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882442, 29.519779, 34.504745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893261, -0.211685, 0.396579,
		0.448846, 0.371003, -0.812954,
		0.024959, 0.904183, 0.426416,
		41.889931, 29.791035, 34.632671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436386, 29.545809, 34.071899>,  <41.872459, 29.158106, 34.334179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436386, 29.545809, 34.071899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343044, 29.567175, 34.460270>,  <42.287041, 29.579994, 34.693291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343044, 29.567175, 34.460270>,  <42.436386, 29.545809, 34.071899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343044, 29.567175, 34.460270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762876, -0.609090, 0.216861,
		0.602964, 0.791300, 0.101382,
		-0.233353, 0.053417, 0.970924,
		42.273037, 29.583200, 34.751549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339912, 30.138523, 33.619106>,  <42.436386, 29.545809, 34.071899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339912, 30.138523, 33.619106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262703, 30.475252, 33.417480>,  <42.216377, 30.677290, 33.296505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262703, 30.475252, 33.417480>,  <42.339912, 30.138523, 33.619106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262703, 30.475252, 33.417480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749628, 0.457987, 0.477813,
		0.633086, -0.285628, -0.719457,
		-0.193025, 0.841822, -0.504060,
		42.204796, 30.727798, 33.266262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845673, 30.061432, 33.075649>,  <42.339912, 30.138523, 33.619106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845673, 30.061432, 33.075649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919365, 30.398275, 33.278397>,  <42.963581, 30.600382, 33.400043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919365, 30.398275, 33.278397>,  <42.845673, 30.061432, 33.075649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919365, 30.398275, 33.278397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907408, 0.052459, -0.416963,
		-0.377718, 0.536752, -0.754471,
		0.184227, 0.842108, 0.506868,
		42.974632, 30.650908, 33.430458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056293, 30.602312, 32.617779>,  <42.845673, 30.061432, 33.075649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056293, 30.602312, 32.617779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222546, 30.661812, 32.976692>,  <43.322296, 30.697512, 33.192039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222546, 30.661812, 32.976692>,  <43.056293, 30.602312, 32.617779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222546, 30.661812, 32.976692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902997, 0.050578, -0.426658,
		-0.108849, 0.987580, -0.113300,
		0.415629, 0.148751, 0.897288,
		43.347233, 30.706436, 33.245880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333817, 31.210526, 32.806664>,  <43.056293, 30.602312, 32.617779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333817, 31.210526, 32.806664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601032, 31.114618, 33.088440>,  <43.761360, 31.057074, 33.257507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601032, 31.114618, 33.088440>,  <43.333817, 31.210526, 32.806664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601032, 31.114618, 33.088440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684021, 0.570601, -0.454455,
		-0.292992, 0.785446, 0.545188,
		0.668035, -0.239768, 0.704443,
		43.801441, 31.042688, 33.299774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590229, 31.778194, 33.182144>,  <43.333817, 31.210526, 32.806664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590229, 31.778194, 33.182144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884140, 31.507006, 33.190735>,  <44.060486, 31.344292, 33.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884140, 31.507006, 33.190735>,  <43.590229, 31.778194, 33.182144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884140, 31.507006, 33.190735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605476, 0.641270, -0.471351,
		0.305787, 0.359343, 0.881684,
		0.734774, -0.677971, 0.021481,
		44.104572, 31.303614, 33.197178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251839, 32.089615, 33.358513>,  <43.590229, 31.778194, 33.182144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251839, 32.089615, 33.358513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352760, 31.753889, 33.165894>,  <44.413315, 31.552452, 33.050323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352760, 31.753889, 33.165894>,  <44.251839, 32.089615, 33.358513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352760, 31.753889, 33.165894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791591, 0.465243, -0.396147,
		0.556530, -0.281238, 0.781780,
		0.252306, -0.839318, -0.481547,
		44.428452, 31.502094, 33.021431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946098, 31.962540, 33.606079>,  <44.251839, 32.089615, 33.358513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946098, 31.962540, 33.606079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880585, 31.797365, 33.247715>,  <44.841278, 31.698259, 33.032696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880585, 31.797365, 33.247715>,  <44.946098, 31.962540, 33.606079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880585, 31.797365, 33.247715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802204, 0.472812, -0.364580,
		0.574146, -0.778416, 0.253821,
		-0.163785, -0.412938, -0.895911,
		44.831448, 31.673483, 32.978943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508087, 31.979523, 34.081696>,  <44.946098, 31.962540, 33.606079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508087, 31.979523, 34.081696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653831, 32.212742, 34.372158>,  <45.741276, 32.352673, 34.546436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653831, 32.212742, 34.372158>,  <45.508087, 31.979523, 34.081696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653831, 32.212742, 34.372158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360522, 0.807263, -0.467279,
		-0.858643, -0.091538, 0.504334,
		0.364357, 0.583049, 0.726152,
		45.763138, 32.387657, 34.590004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299984, 32.096004, 34.003193>,  <45.508087, 31.979523, 34.081696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299984, 32.096004, 34.003193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382206, 32.486336, 34.032890>,  <46.431541, 32.720535, 34.050709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382206, 32.486336, 34.032890>,  <46.299984, 32.096004, 34.003193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382206, 32.486336, 34.032890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337622, -0.000498, 0.941282,
		0.918562, -0.218556, 0.329357,
		0.205559, 0.975824, 0.074246,
		46.443874, 32.779083, 34.055164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910473, 32.430698, 34.460762>,  <46.299984, 32.096004, 34.003193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910473, 32.430698, 34.460762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568970, 32.637844, 34.439144>,  <46.364067, 32.762131, 34.426174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568970, 32.637844, 34.439144>,  <46.910473, 32.430698, 34.460762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568970, 32.637844, 34.439144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253469, -0.322710, 0.911927,
		0.454814, 0.792260, 0.406777,
		-0.853755, 0.517862, -0.054040,
		46.312843, 32.793201, 34.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838669, 32.721127, 35.123158>,  <46.910473, 32.430698, 34.460762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838669, 32.721127, 35.123158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479691, 32.667759, 34.954971>,  <46.264305, 32.635738, 34.854061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479691, 32.667759, 34.954971>,  <46.838669, 32.721127, 35.123158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479691, 32.667759, 34.954971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351322, -0.360229, 0.864181,
		-0.266764, 0.923273, 0.276411,
		-0.897446, -0.133423, -0.420462,
		46.210457, 32.627731, 34.828831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313305, 32.998039, 35.527546>,  <46.838669, 32.721127, 35.123158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313305, 32.998039, 35.527546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136589, 32.686436, 35.349571>,  <46.030560, 32.499474, 35.242786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136589, 32.686436, 35.349571>,  <46.313305, 32.998039, 35.527546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136589, 32.686436, 35.349571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572681, -0.136872, 0.808271,
		-0.690551, 0.611889, -0.385656,
		-0.441787, -0.779010, -0.444935,
		46.004051, 32.452732, 35.216091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797329, 33.609653, 35.509220>,  <46.313305, 32.998039, 35.527546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797329, 33.609653, 35.509220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026192, 33.921539, 35.610943>,  <46.163509, 34.108673, 35.671974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026192, 33.921539, 35.610943>,  <45.797329, 33.609653, 35.509220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026192, 33.921539, 35.610943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819655, -0.554313, -0.144578,
		0.028233, 0.291162, -0.956257,
		0.572161, 0.779719, 0.254303,
		46.197842, 34.155457, 35.687233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405766, 33.898792, 35.007740>,  <45.797329, 33.609653, 35.509220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405766, 33.898792, 35.007740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493835, 33.937538, 35.395996>,  <46.546677, 33.960785, 35.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493835, 33.937538, 35.395996>,  <46.405766, 33.898792, 35.007740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493835, 33.937538, 35.395996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848453, -0.509987, -0.141564,
		0.481301, 0.854711, -0.194472,
		0.220174, 0.096865, 0.970639,
		46.559887, 33.966599, 35.687187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111515, 34.148342, 35.063786>,  <46.405766, 33.898792, 35.007740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111515, 34.148342, 35.063786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016117, 33.940941, 35.392242>,  <46.958878, 33.816502, 35.589317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016117, 33.940941, 35.392242>,  <47.111515, 34.148342, 35.063786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016117, 33.940941, 35.392242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854380, -0.514001, -0.076409,
		0.461686, 0.683344, 0.565586,
		-0.238498, -0.518502, 0.821142,
		46.944569, 33.785389, 35.638584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.610561, 34.796082, 34.927471>,  <47.111515, 34.148342, 35.063786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.610561, 34.796082, 34.927471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704422, 34.961018, 35.279591>,  <47.760738, 35.059978, 35.490860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704422, 34.961018, 35.279591>,  <47.610561, 34.796082, 34.927471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.704422, 34.961018, 35.279591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526523, 0.707324, -0.471664,
		-0.817137, 0.574171, -0.051131,
		0.234650, 0.412336, 0.880295,
		47.774818, 35.084717, 35.543678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.709251, 31.265583, 26.445658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523346, 31.614468, 26.384684>,  <38.411800, 31.823799, 26.348099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523346, 31.614468, 26.384684>,  <38.709251, 31.265583, 26.445658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523346, 31.614468, 26.384684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321678, -0.005932, 0.946831,
		0.824933, 0.489092, 0.283328,
		-0.464768, 0.872212, -0.152436,
		38.383915, 31.876131, 26.338953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814835, 31.669189, 27.062956>,  <38.709251, 31.265583, 26.445658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814835, 31.669189, 27.062956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501781, 31.833010, 26.875443>,  <38.313950, 31.931301, 26.762936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501781, 31.833010, 26.875443>,  <38.814835, 31.669189, 27.062956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501781, 31.833010, 26.875443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502131, 0.029727, 0.864280,
		0.367900, 0.911804, 0.182382,
		-0.782632, 0.409548, -0.468782,
		38.266991, 31.955873, 26.734808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697552, 32.310059, 27.444836>,  <38.814835, 31.669189, 27.062956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697552, 32.310059, 27.444836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375385, 32.188950, 27.241018>,  <38.182087, 32.116283, 27.118727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375385, 32.188950, 27.241018>,  <38.697552, 32.310059, 27.444836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375385, 32.188950, 27.241018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516944, -0.061731, 0.853790,
		-0.289956, 0.951063, -0.106796,
		-0.805415, -0.302769, -0.509546,
		38.133762, 32.098118, 27.088154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145779, 32.864616, 27.545706>,  <38.697552, 32.310059, 27.444836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145779, 32.864616, 27.545706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976868, 32.513042, 27.457020>,  <37.875523, 32.302097, 27.403809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976868, 32.513042, 27.457020>,  <38.145779, 32.864616, 27.545706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976868, 32.513042, 27.457020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582515, 0.075718, 0.809286,
		-0.694520, 0.470897, -0.543965,
		-0.422278, -0.878933, -0.221716,
		37.850185, 32.249363, 27.390505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467999, 32.893909, 27.864798>,  <38.145779, 32.864616, 27.545706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467999, 32.893909, 27.864798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514214, 32.505493, 27.781157>,  <37.541943, 32.272442, 27.730972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514214, 32.505493, 27.781157>,  <37.467999, 32.893909, 27.864798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514214, 32.505493, 27.781157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591961, -0.236359, 0.770530,
		-0.797642, 0.034752, -0.602130,
		0.115541, -0.971044, -0.209102,
		37.548878, 32.214180, 27.718426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751114, 32.555542, 27.811865>,  <37.467999, 32.893909, 27.864798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751114, 32.555542, 27.811865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004627, 32.263840, 27.915016>,  <37.156734, 32.088818, 27.976908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004627, 32.263840, 27.915016>,  <36.751114, 32.555542, 27.811865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004627, 32.263840, 27.915016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643272, -0.311781, 0.699281,
		-0.429551, -0.609083, -0.666711,
		0.633788, -0.729254, 0.257880,
		37.194763, 32.045063, 27.992380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304810, 32.082771, 28.171553>,  <36.751114, 32.555542, 27.811865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304810, 32.082771, 28.171553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673893, 31.947422, 28.245436>,  <36.895344, 31.866211, 28.289766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673893, 31.947422, 28.245436>,  <36.304810, 32.082771, 28.171553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673893, 31.947422, 28.245436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288876, -0.289622, 0.912507,
		-0.255268, -0.895336, -0.364983,
		0.922708, -0.338369, 0.184710,
		36.950703, 31.845909, 28.300848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250706, 31.337727, 28.557919>,  <36.304810, 32.082771, 28.171553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250706, 31.337727, 28.557919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596592, 31.518917, 28.644709>,  <36.804123, 31.627632, 28.696783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596592, 31.518917, 28.644709>,  <36.250706, 31.337727, 28.557919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596592, 31.518917, 28.644709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129336, -0.216608, 0.967653,
		0.485325, -0.864807, -0.128718,
		0.864715, 0.452978, 0.216976,
		36.856007, 31.654810, 28.709801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539223, 30.810692, 28.890678>,  <36.250706, 31.337727, 28.557919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539223, 30.810692, 28.890678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700325, 31.156855, 29.009916>,  <36.796986, 31.364552, 29.081459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700325, 31.156855, 29.009916>,  <36.539223, 30.810692, 28.890678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700325, 31.156855, 29.009916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047538, -0.345014, 0.937393,
		0.914072, -0.363370, -0.180096,
		0.402756, 0.865406, 0.298094,
		36.821152, 31.416477, 29.099344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073517, 30.621691, 29.314447>,  <36.539223, 30.810692, 28.890678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073517, 30.621691, 29.314447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007305, 31.005911, 29.403837>,  <36.967579, 31.236443, 29.457470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007305, 31.005911, 29.403837>,  <37.073517, 30.621691, 29.314447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007305, 31.005911, 29.403837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087764, -0.240047, 0.966786,
		0.982293, 0.140415, 0.124036,
		-0.165525, 0.960553, 0.223473,
		36.957649, 31.294077, 29.470879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486507, 30.901569, 29.844120>,  <37.073517, 30.621691, 29.314447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486507, 30.901569, 29.844120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205128, 31.183496, 29.880772>,  <37.036301, 31.352652, 29.902761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205128, 31.183496, 29.880772>,  <37.486507, 30.901569, 29.844120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205128, 31.183496, 29.880772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185994, -0.306973, 0.933367,
		0.685979, 0.639533, 0.347031,
		-0.703448, 0.704816, 0.091627,
		36.994095, 31.394941, 29.908260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552818, 31.233427, 30.524441>,  <37.486507, 30.901569, 29.844120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552818, 31.233427, 30.524441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181255, 31.298479, 30.391361>,  <36.958317, 31.337509, 30.311514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181255, 31.298479, 30.391361>,  <37.552818, 31.233427, 30.524441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181255, 31.298479, 30.391361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364918, -0.249110, 0.897095,
		0.063014, 0.954723, 0.290745,
		-0.928905, 0.162628, -0.332698,
		36.902584, 31.347267, 30.291552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204784, 31.692640, 30.964582>,  <37.552818, 31.233427, 30.524441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204784, 31.692640, 30.964582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904377, 31.486492, 30.799480>,  <36.724133, 31.362803, 30.700420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904377, 31.486492, 30.799480>,  <37.204784, 31.692640, 30.964582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904377, 31.486492, 30.799480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330823, -0.247291, 0.910716,
		-0.571428, 0.820511, 0.015223,
		-0.751017, -0.515373, -0.412753,
		36.679073, 31.331881, 30.675655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815525, 31.994942, 31.282759>,  <37.204784, 31.692640, 30.964582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815525, 31.994942, 31.282759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624237, 31.671677, 31.145247>,  <36.509464, 31.477718, 31.062738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624237, 31.671677, 31.145247>,  <36.815525, 31.994942, 31.282759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624237, 31.671677, 31.145247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476621, -0.089966, 0.874493,
		-0.737660, 0.582050, -0.342164,
		-0.478216, -0.808161, -0.343782,
		36.480774, 31.429228, 31.042112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156319, 31.937405, 31.671228>,  <36.815525, 31.994942, 31.282759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156319, 31.937405, 31.671228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166061, 31.576378, 31.499283>,  <36.171906, 31.359762, 31.396116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166061, 31.576378, 31.499283>,  <36.156319, 31.937405, 31.671228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166061, 31.576378, 31.499283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469217, -0.390006, 0.792294,
		-0.882747, 0.182403, -0.432998,
		0.024355, -0.902565, -0.429863,
		36.173367, 31.305609, 31.370323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455681, 31.741423, 31.680599>,  <36.156319, 31.937405, 31.671228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455681, 31.741423, 31.680599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713791, 31.435843, 31.680811>,  <35.868656, 31.252495, 31.680939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713791, 31.435843, 31.680811>,  <35.455681, 31.741423, 31.680599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713791, 31.435843, 31.680811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411315, -0.346837, 0.842926,
		-0.643770, -0.544137, -0.538029,
		0.645276, -0.763950, 0.000529,
		35.907375, 31.206657, 31.680969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068077, 31.294403, 31.838963>,  <35.455681, 31.741423, 31.680599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068077, 31.294403, 31.838963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433567, 31.161367, 31.932329>,  <35.652863, 31.081545, 31.988350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433567, 31.161367, 31.932329>,  <35.068077, 31.294403, 31.838963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433567, 31.161367, 31.932329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352531, -0.363255, 0.862420,
		-0.202042, -0.870305, -0.449164,
		0.913729, -0.332589, 0.233417,
		35.707687, 31.061590, 32.002354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850258, 30.662052, 32.097275>,  <35.068077, 31.294403, 31.838963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850258, 30.662052, 32.097275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221073, 30.724590, 32.233601>,  <35.443562, 30.762114, 32.315395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221073, 30.724590, 32.233601>,  <34.850258, 30.662052, 32.097275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221073, 30.724590, 32.233601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274536, -0.336075, 0.900935,
		0.255396, -0.928768, -0.268633,
		0.927040, 0.156346, 0.340812,
		35.499184, 30.771494, 32.335846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007053, 30.043200, 32.425838>,  <34.850258, 30.662052, 32.097275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007053, 30.043200, 32.425838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.266659, 30.309420, 32.573254>,  <35.422421, 30.469152, 32.661705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.266659, 30.309420, 32.573254>,  <35.007053, 30.043200, 32.425838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266659, 30.309420, 32.573254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127639, -0.382303, 0.915179,
		0.749993, -0.641004, -0.163170,
		0.649014, 0.665551, 0.368542,
		35.461365, 30.509085, 32.683815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604351, 29.753164, 32.806705>,  <35.007053, 30.043200, 32.425838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604351, 29.753164, 32.806705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585419, 30.122234, 32.959770>,  <35.574059, 30.343676, 33.051609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585419, 30.122234, 32.959770>,  <35.604351, 29.753164, 32.806705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585419, 30.122234, 32.959770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097076, -0.385529, 0.917574,
		0.994151, 0.006281, 0.107816,
		-0.047329, 0.922674, 0.382665,
		35.571220, 30.399036, 33.074570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018028, 29.683332, 33.396652>,  <35.604351, 29.753164, 32.806705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018028, 29.683332, 33.396652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802124, 30.016043, 33.448513>,  <35.672581, 30.215670, 33.479630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802124, 30.016043, 33.448513>,  <36.018028, 29.683332, 33.396652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802124, 30.016043, 33.448513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025337, -0.137891, 0.990123,
		0.841438, 0.537714, 0.053353,
		-0.539760, 0.831775, 0.129651,
		35.640198, 30.265575, 33.487408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443203, 30.056589, 33.835537>,  <36.018028, 29.683332, 33.396652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443203, 30.056589, 33.835537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048298, 30.114346, 33.862267>,  <35.811356, 30.148998, 33.878304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048298, 30.114346, 33.862267>,  <36.443203, 30.056589, 33.835537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048298, 30.114346, 33.862267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054968, -0.084584, 0.994899,
		0.149305, 0.985899, 0.075570,
		-0.987262, 0.144390, 0.066822,
		35.752121, 30.157663, 33.882313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056438, 29.549000, 33.727844>,  <36.443203, 30.056589, 33.835537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056438, 29.549000, 33.727844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420589, 29.383566, 33.722744>,  <37.639080, 29.284306, 33.719685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420589, 29.383566, 33.722744>,  <37.056438, 29.549000, 33.727844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420589, 29.383566, 33.722744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063175, 0.169386, -0.983523,
		0.408929, 0.894571, 0.180334,
		0.910377, -0.413584, -0.012752,
		37.693703, 29.259491, 33.718918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587292, 30.058130, 33.306934>,  <37.056438, 29.549000, 33.727844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587292, 30.058130, 33.306934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713886, 29.678814, 33.297310>,  <37.789845, 29.451223, 33.291534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713886, 29.678814, 33.297310>,  <37.587292, 30.058130, 33.306934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713886, 29.678814, 33.297310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263218, 0.112156, -0.958195,
		0.911346, 0.296926, 0.285103,
		0.316489, -0.948291, -0.024056,
		37.808834, 29.394327, 33.290092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297550, 30.121248, 33.149651>,  <37.587292, 30.058130, 33.306934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297550, 30.121248, 33.149651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169155, 29.749727, 33.075581>,  <38.092117, 29.526814, 33.031139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169155, 29.749727, 33.075581>,  <38.297550, 30.121248, 33.149651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169155, 29.749727, 33.075581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266127, 0.099192, -0.958821,
		0.908925, -0.357047, 0.215341,
		-0.320984, -0.928805, -0.185178,
		38.072861, 29.471087, 33.020027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019024, 29.725416, 32.993328>,  <38.297550, 30.121248, 33.149651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019024, 29.725416, 32.993328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731918, 29.495728, 32.835808>,  <38.559654, 29.357914, 32.741295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731918, 29.495728, 32.835808>,  <39.019024, 29.725416, 32.993328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731918, 29.495728, 32.835808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459468, 0.034347, -0.887530,
		0.523165, -0.817979, 0.239184,
		-0.717766, -0.574221, -0.393804,
		38.516590, 29.323462, 32.717667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392433, 29.250832, 32.529888>,  <39.019024, 29.725416, 32.993328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392433, 29.250832, 32.529888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009182, 29.237595, 32.416119>,  <38.779232, 29.229652, 32.347858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009182, 29.237595, 32.416119>,  <39.392433, 29.250832, 32.529888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009182, 29.237595, 32.416119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285799, -0.049569, -0.957007,
		0.017574, -0.998222, 0.056952,
		-0.958128, -0.033095, -0.284420,
		38.721745, 29.227667, 32.330791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399170, 28.738247, 32.019169>,  <39.392433, 29.250832, 32.529888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399170, 28.738247, 32.019169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.080708, 28.975443, 31.971004>,  <38.889629, 29.117760, 31.942106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.080708, 28.975443, 31.971004>,  <39.399170, 28.738247, 32.019169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080708, 28.975443, 31.971004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144558, -0.006837, -0.989473,
		-0.587569, -0.805182, -0.080278,
		-0.796157, 0.592988, -0.120412,
		38.841862, 29.153339, 31.934881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027176, 28.452227, 31.542315>,  <39.399170, 28.738247, 32.019169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027176, 28.452227, 31.542315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923347, 28.838346, 31.530865>,  <38.861050, 29.070019, 31.523994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923347, 28.838346, 31.530865>,  <39.027176, 28.452227, 31.542315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923347, 28.838346, 31.530865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086333, -0.006329, -0.996246,
		-0.961858, -0.261066, -0.081694,
		-0.259569, 0.965300, -0.028626,
		38.845478, 29.127937, 31.522278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562565, 28.487114, 30.870358>,  <39.027176, 28.452227, 31.542315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562565, 28.487114, 30.870358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637932, 28.866817, 30.971081>,  <38.683151, 29.094641, 31.031515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637932, 28.866817, 30.971081>,  <38.562565, 28.487114, 30.870358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637932, 28.866817, 30.971081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010878, 0.258400, -0.965977,
		-0.982030, 0.179264, 0.059012,
		0.188414, 0.949260, 0.251806,
		38.694454, 29.151596, 31.046623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072517, 28.964493, 30.498102>,  <38.562565, 28.487114, 30.870358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072517, 28.964493, 30.498102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.371597, 29.204729, 30.611406>,  <38.551044, 29.348871, 30.679390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.371597, 29.204729, 30.611406>,  <38.072517, 28.964493, 30.498102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371597, 29.204729, 30.611406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180533, 0.226650, -0.957099,
		-0.639028, 0.766758, 0.061038,
		0.747697, 0.600593, 0.283261,
		38.595905, 29.384907, 30.696384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970036, 29.671366, 30.111860>,  <38.072517, 28.964493, 30.498102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970036, 29.671366, 30.111860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353340, 29.655308, 30.225088>,  <38.583321, 29.645674, 30.293024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353340, 29.655308, 30.225088>,  <37.970036, 29.671366, 30.111860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353340, 29.655308, 30.225088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282695, 0.280946, -0.917144,
		-0.042709, 0.958884, 0.280568,
		0.958259, -0.040145, 0.283070,
		38.640820, 29.643265, 30.310009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324665, 30.334650, 30.112886>,  <37.970036, 29.671366, 30.111860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324665, 30.334650, 30.112886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630535, 30.080666, 30.068893>,  <38.814056, 29.928274, 30.042498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630535, 30.080666, 30.068893>,  <38.324665, 30.334650, 30.112886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630535, 30.080666, 30.068893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207699, 0.404404, -0.890684,
		0.610027, 0.658241, 0.441119,
		0.764675, -0.634962, -0.109982,
		38.859936, 29.890177, 30.035898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745941, 30.680449, 29.766104>,  <38.324665, 30.334650, 30.112886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745941, 30.680449, 29.766104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876675, 30.307829, 29.702356>,  <38.955116, 30.084257, 29.664108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876675, 30.307829, 29.702356>,  <38.745941, 30.680449, 29.766104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876675, 30.307829, 29.702356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219520, 0.238846, -0.945920,
		0.919234, 0.274173, 0.282556,
		0.326832, -0.931548, -0.159369,
		38.974724, 30.028364, 29.654545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325443, 30.820593, 29.392036>,  <38.745941, 30.680449, 29.766104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325443, 30.820593, 29.392036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265316, 30.426914, 29.354597>,  <39.229240, 30.190706, 29.332134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265316, 30.426914, 29.354597>,  <39.325443, 30.820593, 29.392036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265316, 30.426914, 29.354597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347702, 0.035995, -0.936914,
		0.925476, -0.173382, 0.336797,
		-0.150321, -0.984197, -0.093597,
		39.220219, 30.131655, 29.326517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884995, 30.613043, 29.125717>,  <39.325443, 30.820593, 29.392036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884995, 30.613043, 29.125717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.624088, 30.324615, 29.032249>,  <39.467545, 30.151558, 28.976170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.624088, 30.324615, 29.032249>,  <39.884995, 30.613043, 29.125717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624088, 30.324615, 29.032249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451690, -0.122200, -0.883766,
		0.608703, -0.682001, 0.405408,
		-0.652270, -0.721071, -0.233670,
		39.428406, 30.108294, 28.962149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243473, 30.063982, 28.733168>,  <39.884995, 30.613043, 29.125717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243473, 30.063982, 28.733168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858231, 29.987598, 28.657316>,  <39.627087, 29.941769, 28.611805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858231, 29.987598, 28.657316>,  <40.243473, 30.063982, 28.733168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858231, 29.987598, 28.657316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236598, -0.265034, -0.934761,
		0.128242, -0.945142, 0.300436,
		-0.963107, -0.190958, -0.189630,
		39.569298, 29.930311, 28.600428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207008, 29.408302, 28.359224>,  <40.243473, 30.063982, 28.733168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207008, 29.408302, 28.359224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848766, 29.574795, 28.296421>,  <39.633823, 29.674690, 28.258739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848766, 29.574795, 28.296421>,  <40.207008, 29.408302, 28.359224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848766, 29.574795, 28.296421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161596, -0.024441, -0.986554,
		-0.414471, -0.908931, -0.045371,
		-0.895600, 0.416230, -0.157010,
		39.580086, 29.699663, 28.249317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800747, 28.955200, 27.892801>,  <40.207008, 29.408302, 28.359224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800747, 28.955200, 27.892801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.701900, 29.340971, 27.855234>,  <39.642593, 29.572433, 27.832695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.701900, 29.340971, 27.855234>,  <39.800747, 28.955200, 27.892801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701900, 29.340971, 27.855234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143664, -0.059385, -0.987843,
		-0.958278, -0.257600, -0.123878,
		-0.247112, 0.964425, -0.093916,
		39.627766, 29.630299, 27.827059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378738, 28.961298, 27.352201>,  <39.800747, 28.955200, 27.892801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378738, 28.961298, 27.352201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493179, 29.342348, 27.393486>,  <39.561844, 29.570978, 27.418257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493179, 29.342348, 27.393486>,  <39.378738, 28.961298, 27.352201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493179, 29.342348, 27.393486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095256, 0.135455, -0.986194,
		-0.953452, 0.272324, 0.129497,
		0.286105, 0.952624, 0.103209,
		39.579010, 29.628136, 27.424448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.898785, 29.393349, 26.812244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.229900, 29.595272, 26.910173>,  <39.428570, 29.716427, 26.968931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.229900, 29.595272, 26.910173>,  <38.898785, 29.393349, 26.812244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229900, 29.595272, 26.910173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060255, 0.353854, -0.933358,
		-0.557798, 0.787373, 0.262498,
		0.827787, 0.504808, 0.244822,
		39.478237, 29.746714, 26.983620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746681, 30.034426, 26.536728>,  <38.898785, 29.393349, 26.812244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746681, 30.034426, 26.536728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144085, 30.011190, 26.575859>,  <39.382526, 29.997250, 26.599339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144085, 30.011190, 26.575859>,  <38.746681, 30.034426, 26.536728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144085, 30.011190, 26.575859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112125, 0.354036, -0.928486,
		0.019299, 0.933426, 0.358250,
		0.993507, -0.058088, 0.097828,
		39.442139, 29.993765, 26.605207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030884, 30.677689, 26.192585>,  <38.746681, 30.034426, 26.536728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030884, 30.677689, 26.192585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363503, 30.459864, 26.236372>,  <39.563072, 30.329168, 26.262644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363503, 30.459864, 26.236372>,  <39.030884, 30.677689, 26.192585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363503, 30.459864, 26.236372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335155, 0.334748, -0.880690,
		0.442948, 0.769022, 0.460872,
		0.831546, -0.544564, 0.109465,
		39.612965, 30.296495, 26.269211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521053, 31.178417, 26.145903>,  <39.030884, 30.677689, 26.192585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521053, 31.178417, 26.145903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671291, 30.818441, 26.057325>,  <39.761436, 30.602457, 26.004179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671291, 30.818441, 26.057325>,  <39.521053, 31.178417, 26.145903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671291, 30.818441, 26.057325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308127, 0.346604, -0.885959,
		0.874061, 0.264533, 0.407479,
		0.375599, -0.899938, -0.221443,
		39.783970, 30.548460, 25.990892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298855, 31.200474, 26.070278>,  <39.521053, 31.178417, 26.145903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298855, 31.200474, 26.070278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167831, 30.889942, 25.854864>,  <40.089218, 30.703625, 25.725616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167831, 30.889942, 25.854864>,  <40.298855, 31.200474, 26.070278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167831, 30.889942, 25.854864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416299, 0.393084, -0.819866,
		0.848173, -0.492749, 0.194424,
		-0.327563, -0.776327, -0.538534,
		40.069561, 30.657043, 25.693304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929790, 30.989040, 25.801682>,  <40.298855, 31.200474, 26.070278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929790, 30.989040, 25.801682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630886, 30.845009, 25.578274>,  <40.451542, 30.758591, 25.444229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630886, 30.845009, 25.578274>,  <40.929790, 30.989040, 25.801682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630886, 30.845009, 25.578274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465638, 0.315924, -0.826664,
		0.474115, -0.877801, -0.068410,
		-0.747259, -0.360079, -0.558522,
		40.406708, 30.736984, 25.410717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274673, 30.788282, 25.241356>,  <40.929790, 30.989040, 25.801682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274673, 30.788282, 25.241356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.901569, 30.769793, 25.098343>,  <40.677708, 30.758699, 25.012535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.901569, 30.769793, 25.098343>,  <41.274673, 30.788282, 25.241356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901569, 30.769793, 25.098343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336469, 0.244451, -0.909413,
		0.129435, -0.968559, -0.212461,
		-0.932757, -0.046223, -0.357530,
		40.621742, 30.755924, 24.991083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345322, 30.614622, 24.550982>,  <41.274673, 30.788282, 25.241356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345322, 30.614622, 24.550982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964062, 30.734535, 24.534830>,  <40.735306, 30.806482, 24.525139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964062, 30.734535, 24.534830>,  <41.345322, 30.614622, 24.550982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964062, 30.734535, 24.534830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152633, 0.361400, -0.919833,
		-0.261158, -0.882904, -0.390226,
		-0.953152, 0.299783, -0.040378,
		40.678116, 30.824471, 24.522717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977203, 30.300665, 23.976059>,  <41.345322, 30.614622, 24.550982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977203, 30.300665, 23.976059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809944, 30.654421, 24.059013>,  <40.709587, 30.866674, 24.108786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809944, 30.654421, 24.059013>,  <40.977203, 30.300665, 23.976059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809944, 30.654421, 24.059013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095530, 0.269852, -0.958151,
		-0.903341, -0.380839, -0.197324,
		-0.418149, 0.884388, 0.207387,
		40.684498, 30.919737, 24.121229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437469, 30.436762, 23.397549>,  <40.977203, 30.300665, 23.976059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437469, 30.436762, 23.397549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495689, 30.804443, 23.543907>,  <40.530621, 31.025053, 23.631721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495689, 30.804443, 23.543907>,  <40.437469, 30.436762, 23.397549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495689, 30.804443, 23.543907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079724, 0.357733, -0.930415,
		-0.986133, 0.164595, -0.021214,
		0.145553, 0.919204, 0.365894,
		40.539356, 31.080204, 23.653675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973896, 30.880037, 22.996758>,  <40.437469, 30.436762, 23.397549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973896, 30.880037, 22.996758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239498, 31.127068, 23.165377>,  <40.398857, 31.275286, 23.266548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239498, 31.127068, 23.165377>,  <39.973896, 30.880037, 22.996758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239498, 31.127068, 23.165377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069871, 0.510058, -0.857298,
		-0.744460, 0.598701, 0.295528,
		0.664001, 0.617575, 0.421549,
		40.438698, 31.312340, 23.291842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866482, 31.526495, 22.646156>,  <39.973896, 30.880037, 22.996758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866482, 31.526495, 22.646156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213734, 31.569757, 22.839920>,  <40.422085, 31.595715, 22.956179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213734, 31.569757, 22.839920>,  <39.866482, 31.526495, 22.646156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213734, 31.569757, 22.839920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351761, 0.554470, -0.754207,
		-0.350161, 0.825146, 0.443308,
		0.868131, 0.108155, 0.484408,
		40.474174, 31.602203, 22.985243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975140, 32.148571, 22.706297>,  <39.866482, 31.526495, 22.646156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975140, 32.148571, 22.706297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348782, 32.008263, 22.732864>,  <40.572968, 31.924078, 22.748804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348782, 32.008263, 22.732864>,  <39.975140, 32.148571, 22.706297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348782, 32.008263, 22.732864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310580, 0.706706, -0.635694,
		0.176043, 0.614432, 0.769078,
		0.934103, -0.350770, 0.066419,
		40.629013, 31.903032, 22.752790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370941, 32.696640, 22.799919>,  <39.975140, 32.148571, 22.706297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370941, 32.696640, 22.799919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639874, 32.430573, 22.669979>,  <40.801231, 32.270931, 22.592016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639874, 32.430573, 22.669979>,  <40.370941, 32.696640, 22.799919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639874, 32.430573, 22.669979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459412, 0.719030, -0.521476,
		0.580445, 0.201364, 0.789010,
		0.672328, -0.665168, -0.324848,
		40.841572, 32.231022, 22.572525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978893, 32.851303, 23.102205>,  <40.370941, 32.696640, 22.799919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978893, 32.851303, 23.102205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013283, 32.647141, 22.759956>,  <41.033916, 32.524643, 22.554607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013283, 32.647141, 22.759956>,  <40.978893, 32.851303, 23.102205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013283, 32.647141, 22.759956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467319, 0.779129, -0.417818,
		0.879899, -0.363927, 0.305508,
		0.085975, -0.510407, -0.855624,
		41.039074, 32.494019, 22.503269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523388, 33.126991, 22.931492>,  <40.978893, 32.851303, 23.102205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523388, 33.126991, 22.931492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.424484, 32.928291, 22.598721>,  <41.365143, 32.809071, 22.399057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.424484, 32.928291, 22.598721>,  <41.523388, 33.126991, 22.931492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424484, 32.928291, 22.598721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404332, 0.727364, -0.554489,
		0.880557, -0.473475, 0.021007,
		-0.247257, -0.496752, -0.831926,
		41.350307, 32.779266, 22.349142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066402, 33.220608, 22.509863>,  <41.523388, 33.126991, 22.931492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066402, 33.220608, 22.509863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.813263, 33.088699, 22.229649>,  <41.661381, 33.009552, 22.061520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.813263, 33.088699, 22.229649>,  <42.066402, 33.220608, 22.509863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813263, 33.088699, 22.229649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538328, 0.462898, -0.704222,
		0.556511, -0.822785, -0.115417,
		-0.632849, -0.329775, -0.700536,
		41.623409, 32.989765, 22.019487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498859, 33.024700, 21.764006>,  <42.066402, 33.220608, 22.509863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498859, 33.024700, 21.764006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.116604, 33.073074, 21.656584>,  <41.887249, 33.102100, 21.592131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.116604, 33.073074, 21.656584>,  <42.498859, 33.024700, 21.764006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116604, 33.073074, 21.656584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282924, 0.630393, -0.722882,
		0.081871, -0.766797, -0.636647,
		-0.955642, 0.120940, -0.268556,
		41.829910, 33.109356, 21.576017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440369, 32.939358, 20.975454>,  <42.498859, 33.024700, 21.764006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440369, 32.939358, 20.975454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105419, 33.130505, 21.081631>,  <41.904449, 33.245193, 21.145336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105419, 33.130505, 21.081631>,  <42.440369, 32.939358, 20.975454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105419, 33.130505, 21.081631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078660, 0.585870, -0.806579,
		-0.540947, -0.654526, -0.528179,
		-0.837370, 0.477863, 0.265439,
		41.854210, 33.273865, 21.161263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082432, 32.863560, 20.475677>,  <42.440369, 32.939358, 20.975454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082432, 32.863560, 20.475677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.931255, 33.187057, 20.655939>,  <41.840549, 33.381157, 20.764097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.931255, 33.187057, 20.655939>,  <42.082432, 32.863560, 20.475677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931255, 33.187057, 20.655939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160991, 0.536753, -0.828238,
		-0.911723, -0.240478, -0.333063,
		-0.377945, 0.808744, 0.450655,
		41.817871, 33.429680, 20.791136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605419, 33.019035, 20.102825>,  <42.082432, 32.863560, 20.475677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605419, 33.019035, 20.102825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649067, 33.371956, 20.285971>,  <41.675255, 33.583710, 20.395857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649067, 33.371956, 20.285971>,  <41.605419, 33.019035, 20.102825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649067, 33.371956, 20.285971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134223, 0.443315, -0.886259,
		-0.984925, 0.158163, -0.070051,
		0.109119, 0.882301, 0.457861,
		41.681801, 33.636646, 20.423328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083660, 33.503696, 19.787874>,  <41.605419, 33.019035, 20.102825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083660, 33.503696, 19.787874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.378532, 33.700459, 19.973173>,  <41.555454, 33.818516, 20.084352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.378532, 33.700459, 19.973173>,  <41.083660, 33.503696, 19.787874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378532, 33.700459, 19.973173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206698, 0.488554, -0.847698,
		-0.643307, 0.720657, 0.258476,
		0.737179, 0.491903, 0.463248,
		41.599686, 33.848030, 20.112148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917355, 34.188057, 19.765833>,  <41.083660, 33.503696, 19.787874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917355, 34.188057, 19.765833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.310520, 34.114899, 19.774166>,  <41.546417, 34.071003, 19.779165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.310520, 34.114899, 19.774166>,  <40.917355, 34.188057, 19.765833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310520, 34.114899, 19.774166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110279, 0.494447, -0.862184,
		0.147389, 0.849748, 0.506167,
		0.982911, -0.182896, 0.020834,
		41.605392, 34.060028, 19.780416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326675, 34.850845, 19.768564>,  <40.917355, 34.188057, 19.765833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326675, 34.850845, 19.768564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490685, 34.541683, 19.574860>,  <41.589088, 34.356186, 19.458637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490685, 34.541683, 19.574860>,  <41.326675, 34.850845, 19.768564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490685, 34.541683, 19.574860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105706, 0.487095, -0.866928,
		0.905931, 0.406646, 0.118017,
		0.410018, -0.772902, -0.484259,
		41.613689, 34.309811, 19.429583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029018, 35.471729, 19.555620>,  <41.326675, 34.850845, 19.768564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029018, 35.471729, 19.555620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674122, 35.648685, 19.503326>,  <40.461182, 35.754860, 19.471951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674122, 35.648685, 19.503326>,  <41.029018, 35.471729, 19.555620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674122, 35.648685, 19.503326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378265, -0.535504, 0.755083,
		0.264030, 0.719395, 0.642463,
		-0.887245, 0.442386, -0.130733,
		40.407948, 35.781403, 19.464106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868328, 35.461555, 20.192869>,  <41.029018, 35.471729, 19.555620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868328, 35.461555, 20.192869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533829, 35.543995, 19.989613>,  <40.333130, 35.593456, 19.867659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533829, 35.543995, 19.989613>,  <40.868328, 35.461555, 20.192869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533829, 35.543995, 19.989613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540037, -0.470259, 0.698009,
		-0.095101, 0.858127, 0.504554,
		-0.836251, 0.206096, -0.508142,
		40.282955, 35.605824, 19.837170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340179, 35.779041, 20.647617>,  <40.868328, 35.461555, 20.192869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340179, 35.779041, 20.647617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.131779, 35.631531, 20.339706>,  <40.006737, 35.543022, 20.154959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.131779, 35.631531, 20.339706>,  <40.340179, 35.779041, 20.647617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131779, 35.631531, 20.339706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614339, -0.464090, 0.638129,
		-0.592575, 0.805371, 0.015237,
		-0.521002, -0.368778, -0.769779,
		39.975479, 35.520897, 20.108772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593529, 35.936069, 20.668385>,  <40.340179, 35.779041, 20.647617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593529, 35.936069, 20.668385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623875, 35.604118, 20.447279>,  <39.642082, 35.404949, 20.314615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623875, 35.604118, 20.447279>,  <39.593529, 35.936069, 20.668385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623875, 35.604118, 20.447279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504596, -0.510090, 0.696557,
		-0.860016, 0.226081, -0.457449,
		0.075862, -0.829877, -0.552765,
		39.646633, 35.355156, 20.281450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953892, 35.634842, 20.722216>,  <39.593529, 35.936069, 20.668385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953892, 35.634842, 20.722216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.158043, 35.327911, 20.566925>,  <39.280533, 35.143753, 20.473751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.158043, 35.327911, 20.566925>,  <38.953892, 35.634842, 20.722216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158043, 35.327911, 20.566925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403540, -0.612365, 0.679826,
		-0.759385, -0.190307, -0.622188,
		0.510382, -0.767328, -0.388225,
		39.311157, 35.097713, 20.450459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489796, 35.068241, 20.768045>,  <38.953892, 35.634842, 20.722216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489796, 35.068241, 20.768045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856049, 34.908031, 20.754236>,  <39.075802, 34.811905, 20.745951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856049, 34.908031, 20.754236>,  <38.489796, 35.068241, 20.768045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856049, 34.908031, 20.754236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240393, -0.614342, 0.751529,
		-0.322212, -0.679828, -0.658797,
		0.915637, -0.400522, -0.034523,
		39.130741, 34.787876, 20.743879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332153, 34.385929, 20.847761>,  <38.489796, 35.068241, 20.768045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332153, 34.385929, 20.847761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.711720, 34.448124, 20.957588>,  <38.939457, 34.485443, 21.023483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.711720, 34.448124, 20.957588>,  <38.332153, 34.385929, 20.847761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711720, 34.448124, 20.957588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125416, -0.612608, 0.780374,
		0.289542, -0.774942, -0.561810,
		0.948913, 0.155491, 0.274566,
		38.996395, 34.494770, 21.039957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601540, 33.779346, 21.076900>,  <38.332153, 34.385929, 20.847761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601540, 33.779346, 21.076900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848816, 34.043434, 21.247522>,  <38.997181, 34.201889, 21.349895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848816, 34.043434, 21.247522>,  <38.601540, 33.779346, 21.076900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848816, 34.043434, 21.247522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022531, -0.527563, 0.849217,
		0.785708, -0.534586, -0.311257,
		0.618187, 0.660224, 0.426556,
		39.034271, 34.241501, 21.375488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907341, 33.294998, 21.628452>,  <38.601540, 33.779346, 21.076900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907341, 33.294998, 21.628452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997467, 33.662792, 21.757313>,  <39.051540, 33.883469, 21.834629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997467, 33.662792, 21.757313>,  <38.907341, 33.294998, 21.628452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997467, 33.662792, 21.757313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069956, -0.345069, 0.935966,
		0.971772, -0.188348, -0.142072,
		0.225312, 0.919485, 0.322153,
		39.065060, 33.938637, 21.853958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446239, 33.134697, 21.948000>,  <38.907341, 33.294998, 21.628452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446239, 33.134697, 21.948000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335640, 33.493176, 22.086779>,  <39.269279, 33.708263, 22.170046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335640, 33.493176, 22.086779>,  <39.446239, 33.134697, 21.948000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335640, 33.493176, 22.086779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028237, -0.353289, 0.935088,
		0.960598, 0.268351, 0.072380,
		-0.276503, 0.896200, 0.346946,
		39.252689, 33.762035, 22.190863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766754, 33.057610, 22.660753>,  <39.446239, 33.134697, 21.948000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766754, 33.057610, 22.660753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534019, 33.382187, 22.682770>,  <39.394379, 33.576935, 22.695980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534019, 33.382187, 22.682770>,  <39.766754, 33.057610, 22.660753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534019, 33.382187, 22.682770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277408, -0.261618, 0.924446,
		0.764536, 0.522605, 0.377319,
		-0.581834, 0.811443, 0.055042,
		39.359470, 33.625618, 22.699282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041641, 33.368984, 23.292433>,  <39.766754, 33.057610, 22.660753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041641, 33.368984, 23.292433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662563, 33.475147, 23.221527>,  <39.435116, 33.538845, 23.178984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662563, 33.475147, 23.221527>,  <40.041641, 33.368984, 23.292433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662563, 33.475147, 23.221527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273088, -0.386855, 0.880776,
		0.165192, 0.883120, 0.439103,
		-0.947700, 0.265411, -0.177264,
		39.378254, 33.554771, 23.168348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842194, 33.585041, 23.875156>,  <40.041641, 33.368984, 23.292433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842194, 33.585041, 23.875156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504860, 33.488934, 23.682882>,  <39.302460, 33.431271, 23.567518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504860, 33.488934, 23.682882>,  <39.842194, 33.585041, 23.875156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504860, 33.488934, 23.682882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328975, -0.476459, 0.815330,
		-0.424924, 0.845729, 0.322772,
		-0.843335, -0.240270, -0.480683,
		39.251858, 33.416851, 23.538677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300102, 33.702438, 24.315550>,  <39.842194, 33.585041, 23.875156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300102, 33.702438, 24.315550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118843, 33.448849, 24.064875>,  <39.010090, 33.296696, 23.914469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118843, 33.448849, 24.064875>,  <39.300102, 33.702438, 24.315550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118843, 33.448849, 24.064875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535926, -0.368033, 0.759826,
		-0.712351, 0.680169, -0.172991,
		-0.453144, -0.633973, -0.626689,
		38.982899, 33.258656, 23.876867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573204, 33.673809, 24.445047>,  <39.300102, 33.702438, 24.315550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573204, 33.673809, 24.445047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639561, 33.327370, 24.256426>,  <38.679375, 33.119507, 24.143253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639561, 33.327370, 24.256426>,  <38.573204, 33.673809, 24.445047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639561, 33.327370, 24.256426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500249, -0.485993, 0.716632,
		-0.849842, 0.117011, -0.513885,
		0.165891, -0.866094, -0.471552,
		38.689327, 33.067543, 24.114960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005535, 33.348812, 24.421833>,  <38.573204, 33.673809, 24.445047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005535, 33.348812, 24.421833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262962, 33.044769, 24.385912>,  <38.417419, 32.862343, 24.364359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262962, 33.044769, 24.385912>,  <38.005535, 33.348812, 24.421833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262962, 33.044769, 24.385912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410007, -0.441439, 0.798139,
		-0.646311, -0.476835, -0.595744,
		0.643565, -0.760105, -0.089802,
		38.456032, 32.816738, 24.358973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612858, 32.670601, 24.459282>,  <38.005535, 33.348812, 24.421833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612858, 32.670601, 24.459282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990456, 32.588409, 24.562551>,  <38.217014, 32.539093, 24.624514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990456, 32.588409, 24.562551>,  <37.612858, 32.670601, 24.459282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990456, 32.588409, 24.562551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320494, -0.384896, 0.865528,
		-0.078481, -0.899796, -0.429195,
		0.943994, -0.205482, 0.258172,
		38.273655, 32.526764, 24.640003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659901, 32.003757, 24.544416>,  <37.612858, 32.670601, 24.459282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659901, 32.003757, 24.544416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969616, 32.131824, 24.762764>,  <38.155445, 32.208664, 24.893772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969616, 32.131824, 24.762764>,  <37.659901, 32.003757, 24.544416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969616, 32.131824, 24.762764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336730, -0.521890, 0.783737,
		0.535807, -0.790649, -0.296286,
		0.774289, 0.320164, 0.545868,
		38.201904, 32.227875, 24.926525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730392, 31.547947, 24.985538>,  <37.659901, 32.003757, 24.544416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730392, 31.547947, 24.985538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974136, 31.814138, 25.157965>,  <38.120384, 31.973854, 25.261421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974136, 31.814138, 25.157965>,  <37.730392, 31.547947, 24.985538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974136, 31.814138, 25.157965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165683, -0.424789, 0.890002,
		0.775390, -0.613752, -0.148591,
		0.609360, 0.665479, 0.431065,
		38.156944, 32.013783, 25.287285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120197, 31.105602, 25.481823>,  <37.730392, 31.547947, 24.985538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120197, 31.105602, 25.481823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171356, 31.483725, 25.601847>,  <38.202049, 31.710598, 25.673861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171356, 31.483725, 25.601847>,  <38.120197, 31.105602, 25.481823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171356, 31.483725, 25.601847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048159, -0.296270, 0.953889,
		0.990618, -0.136447, 0.007634,
		0.127893, 0.945308, 0.300061,
		38.209724, 31.767317, 25.691866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.491032, 28.875277, 29.483303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334995, 29.240252, 29.532770>,  <39.241375, 29.459236, 29.562450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334995, 29.240252, 29.532770>,  <39.491032, 28.875277, 29.483303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334995, 29.240252, 29.532770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000197, -0.134226, 0.990951,
		0.920778, 0.386581, 0.052180,
		-0.390087, 0.912436, 0.123668,
		39.217968, 29.513983, 29.569870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887840, 29.158445, 30.030813>,  <39.491032, 28.875277, 29.483303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887840, 29.158445, 30.030813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573975, 29.406389, 30.034327>,  <39.385654, 29.555155, 30.036434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573975, 29.406389, 30.034327>,  <39.887840, 29.158445, 30.030813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573975, 29.406389, 30.034327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117720, -0.162901, 0.979595,
		0.608642, 0.767618, 0.200792,
		-0.784664, 0.619859, 0.008784,
		39.338577, 29.592346, 30.036963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902618, 29.491575, 30.654093>,  <39.887840, 29.158445, 30.030813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902618, 29.491575, 30.654093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534008, 29.614391, 30.559006>,  <39.312840, 29.688082, 30.501953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534008, 29.614391, 30.559006>,  <39.902618, 29.491575, 30.654093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534008, 29.614391, 30.559006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278844, -0.097208, 0.955404,
		0.270239, 0.946719, 0.175196,
		-0.921530, 0.307040, -0.237718,
		39.257549, 29.706503, 30.487690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742050, 29.926027, 31.127436>,  <39.902618, 29.491575, 30.654093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742050, 29.926027, 31.127436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387077, 29.794584, 30.998146>,  <39.174091, 29.715719, 30.920572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387077, 29.794584, 30.998146>,  <39.742050, 29.926027, 31.127436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387077, 29.794584, 30.998146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324046, -0.053912, 0.944504,
		-0.327797, 0.942927, -0.058640,
		-0.887437, -0.328608, -0.323224,
		39.120846, 29.696001, 30.901178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188179, 30.307804, 31.431562>,  <39.742050, 29.926027, 31.127436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188179, 30.307804, 31.431562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012409, 29.972853, 31.301514>,  <38.906948, 29.771881, 31.223484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012409, 29.972853, 31.301514>,  <39.188179, 30.307804, 31.431562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012409, 29.972853, 31.301514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464714, -0.097824, 0.880041,
		-0.768732, 0.537799, -0.346155,
		-0.439422, -0.837379, -0.325123,
		38.880581, 29.721640, 31.203978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457275, 30.359365, 31.548792>,  <39.188179, 30.307804, 31.431562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457275, 30.359365, 31.548792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555126, 29.971851, 31.532711>,  <38.613838, 29.739344, 31.523062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555126, 29.971851, 31.532711>,  <38.457275, 30.359365, 31.548792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555126, 29.971851, 31.532711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462355, -0.152995, 0.873396,
		-0.852283, -0.195068, -0.485348,
		0.244627, -0.968783, -0.040205,
		38.628513, 29.681217, 31.520649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801926, 29.915871, 31.712624>,  <38.457275, 30.359365, 31.548792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801926, 29.915871, 31.712624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.105644, 29.658211, 31.749592>,  <38.287876, 29.503614, 31.771772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.105644, 29.658211, 31.749592>,  <37.801926, 29.915871, 31.712624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105644, 29.658211, 31.749592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387966, -0.334070, 0.858999,
		-0.522450, -0.688089, -0.503566,
		0.759295, -0.644151, 0.092420,
		38.333431, 29.464966, 31.777317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496174, 29.303654, 31.803095>,  <37.801926, 29.915871, 31.712624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496174, 29.303654, 31.803095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856907, 29.262754, 31.971020>,  <38.073345, 29.238214, 32.071774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856907, 29.262754, 31.971020>,  <37.496174, 29.303654, 31.803095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856907, 29.262754, 31.971020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430781, -0.288168, 0.855212,
		0.033532, -0.952105, -0.303926,
		0.901834, -0.102249, 0.419812,
		38.127457, 29.232080, 32.096962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491093, 28.701603, 32.159733>,  <37.496174, 29.303654, 31.803095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491093, 28.701603, 32.159733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792023, 28.908955, 32.322361>,  <37.972580, 29.033365, 32.419937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792023, 28.908955, 32.322361>,  <37.491093, 28.701603, 32.159733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792023, 28.908955, 32.322361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403540, -0.125200, 0.906355,
		0.520736, -0.845938, 0.114995,
		0.752323, 0.518377, 0.406566,
		38.017719, 29.064468, 32.444332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608845, 28.294106, 32.719742>,  <37.491093, 28.701603, 32.159733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608845, 28.294106, 32.719742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805996, 28.632439, 32.801369>,  <37.924286, 28.835438, 32.850346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805996, 28.632439, 32.801369>,  <37.608845, 28.294106, 32.719742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805996, 28.632439, 32.801369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101110, -0.177265, 0.978956,
		0.864205, -0.503137, -0.001848,
		0.492877, 0.845831, 0.204065,
		37.953857, 28.886189, 32.862587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159740, 28.161890, 33.295292>,  <37.608845, 28.294106, 32.719742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159740, 28.161890, 33.295292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081665, 28.554195, 33.296177>,  <38.034821, 28.789579, 33.296707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081665, 28.554195, 33.296177>,  <38.159740, 28.161890, 33.295292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081665, 28.554195, 33.296177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037368, -0.009687, 0.999255,
		0.980053, 0.194961, 0.038540,
		-0.195189, 0.980763, 0.002208,
		38.023109, 28.848425, 33.296841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724018, 28.466900, 33.675789>,  <38.159740, 28.161890, 33.295292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724018, 28.466900, 33.675789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422115, 28.729294, 33.673706>,  <38.240974, 28.886730, 33.672459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422115, 28.729294, 33.673706>,  <38.724018, 28.466900, 33.675789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422115, 28.729294, 33.673706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072491, 0.091283, 0.993183,
		0.651990, 0.749232, -0.116449,
		-0.754755, 0.655987, -0.005203,
		38.195690, 28.926090, 33.672146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930229, 29.123068, 33.995003>,  <38.724018, 28.466900, 33.675789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930229, 29.123068, 33.995003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542233, 29.035158, 34.036602>,  <38.309433, 28.982412, 34.061562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542233, 29.035158, 34.036602>,  <38.930229, 29.123068, 33.995003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542233, 29.035158, 34.036602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116301, -0.043766, 0.992249,
		-0.213519, 0.974569, 0.068012,
		-0.969992, -0.219774, 0.103999,
		38.251236, 28.969225, 34.067802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326599, 29.797928, 34.213753>,  <38.930229, 29.123068, 33.995003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326599, 29.797928, 34.213753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.714565, 29.736189, 34.138443>,  <39.947346, 29.699146, 34.093258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.714565, 29.736189, 34.138443>,  <39.326599, 29.797928, 34.213753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714565, 29.736189, 34.138443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141081, -0.986595, 0.082013,
		-0.198407, -0.052984, -0.978686,
		0.969913, -0.154346, -0.188272,
		40.005539, 29.689884, 34.081963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488037, 29.926039, 35.048435>,  <39.326599, 29.797928, 34.213753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488037, 29.926039, 35.048435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506256, 30.264050, 35.261547>,  <39.517189, 30.466856, 35.389416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506256, 30.264050, 35.261547>,  <39.488037, 29.926039, 35.048435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506256, 30.264050, 35.261547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252754, 0.525728, -0.812235,
		-0.966458, -0.097667, 0.237530,
		0.045547, 0.845028, 0.532779,
		39.519920, 30.517557, 35.421379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884064, 30.284294, 34.885891>,  <39.488037, 29.926039, 35.048435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884064, 30.284294, 34.885891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171700, 30.534399, 35.007187>,  <39.344280, 30.684462, 35.079964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171700, 30.534399, 35.007187>,  <38.884064, 30.284294, 34.885891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171700, 30.534399, 35.007187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265208, 0.650269, -0.711910,
		-0.642316, 0.431508, 0.633428,
		0.719093, 0.625261, 0.303239,
		39.387428, 30.721977, 35.098160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592369, 30.877977, 34.912888>,  <38.884064, 30.284294, 34.885891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592369, 30.877977, 34.912888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.978512, 30.982353, 34.912735>,  <39.210197, 31.044979, 34.912643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.978512, 30.982353, 34.912735>,  <38.592369, 30.877977, 34.912888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978512, 30.982353, 34.912735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194832, 0.719816, -0.666262,
		-0.173582, 0.643253, 0.745718,
		0.965355, 0.260941, -0.000379,
		39.268120, 31.060635, 34.912621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594364, 31.653868, 34.844898>,  <38.592369, 30.877977, 34.912888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594364, 31.653868, 34.844898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.971344, 31.564182, 34.745682>,  <39.197533, 31.510370, 34.686153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.971344, 31.564182, 34.745682>,  <38.594364, 31.653868, 34.844898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971344, 31.564182, 34.745682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075143, 0.580824, -0.810553,
		0.325802, 0.782541, 0.530548,
		0.942447, -0.224213, -0.248037,
		39.254078, 31.496918, 34.671272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954739, 32.243431, 34.747650>,  <38.594364, 31.653868, 34.844898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954739, 32.243431, 34.747650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.144833, 31.955379, 34.545437>,  <39.258888, 31.782549, 34.424110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.144833, 31.955379, 34.545437>,  <38.954739, 32.243431, 34.747650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144833, 31.955379, 34.545437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038294, 0.557088, -0.829570,
		0.879024, 0.413602, 0.237172,
		0.475237, -0.720130, -0.505532,
		39.287403, 31.739340, 34.393776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437721, 32.617023, 34.226044>,  <38.954739, 32.243431, 34.747650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437721, 32.617023, 34.226044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417221, 32.246059, 34.077839>,  <39.404922, 32.023479, 33.988918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417221, 32.246059, 34.077839>,  <39.437721, 32.617023, 34.226044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417221, 32.246059, 34.077839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097142, 0.364607, -0.926080,
		0.993950, -0.083452, 0.071405,
		-0.051248, -0.927414, -0.370508,
		39.401848, 31.967834, 33.966686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989872, 32.601887, 33.741871>,  <39.437721, 32.617023, 34.226044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989872, 32.601887, 33.741871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715672, 32.321205, 33.664211>,  <39.551151, 32.152794, 33.617615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715672, 32.321205, 33.664211>,  <39.989872, 32.601887, 33.741871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715672, 32.321205, 33.664211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112281, 0.161589, -0.980450,
		0.719361, -0.693900, -0.031981,
		-0.685502, -0.701707, -0.194152,
		39.510021, 32.110695, 33.605965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281281, 32.313976, 33.256752>,  <39.989872, 32.601887, 33.741871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281281, 32.313976, 33.256752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893974, 32.223854, 33.213493>,  <39.661591, 32.169781, 33.187538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893974, 32.223854, 33.213493>,  <40.281281, 32.313976, 33.256752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893974, 32.223854, 33.213493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054651, 0.231355, -0.971333,
		0.243882, -0.946417, -0.211699,
		-0.968264, -0.225321, -0.108146,
		39.603493, 32.156261, 33.181049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210533, 31.907810, 32.683567>,  <40.281281, 32.313976, 33.256752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210533, 31.907810, 32.683567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.824467, 31.997740, 32.737087>,  <39.592827, 32.051697, 32.769199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.824467, 31.997740, 32.737087>,  <40.210533, 31.907810, 32.683567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824467, 31.997740, 32.737087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076083, 0.248115, -0.965738,
		-0.250319, -0.942281, -0.222368,
		-0.965169, 0.224824, 0.133800,
		39.534916, 32.065186, 32.777225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836555, 31.502853, 32.156342>,  <40.210533, 31.907810, 32.683567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836555, 31.502853, 32.156342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608654, 31.812862, 32.265678>,  <39.471912, 31.998869, 32.331280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608654, 31.812862, 32.265678>,  <39.836555, 31.502853, 32.156342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608654, 31.812862, 32.265678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043307, 0.303833, -0.951741,
		-0.820672, -0.554097, -0.139547,
		-0.569756, 0.775024, 0.273343,
		39.437729, 32.045368, 32.347683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224339, 31.505417, 31.676311>,  <39.836555, 31.502853, 32.156342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224339, 31.505417, 31.676311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225277, 31.871094, 31.838421>,  <39.225838, 32.090500, 31.935688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225277, 31.871094, 31.838421>,  <39.224339, 31.505417, 31.676311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225277, 31.871094, 31.838421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053777, 0.404575, -0.912922,
		-0.998550, 0.023933, -0.048215,
		0.002342, 0.914191, 0.405276,
		39.225979, 32.145351, 31.960003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684708, 31.860437, 31.463480>,  <39.224339, 31.505417, 31.676311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684708, 31.860437, 31.463480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944016, 32.147095, 31.566368>,  <39.099602, 32.319088, 31.628101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944016, 32.147095, 31.566368>,  <38.684708, 31.860437, 31.463480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944016, 32.147095, 31.566368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052064, 0.378754, -0.924032,
		-0.759626, 0.585632, 0.282848,
		0.648272, 0.716645, 0.257221,
		39.138496, 32.362087, 31.643534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425156, 32.460499, 31.159903>,  <38.684708, 31.860437, 31.463480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425156, 32.460499, 31.159903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806343, 32.553055, 31.238186>,  <39.035057, 32.608589, 31.285156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806343, 32.553055, 31.238186>,  <38.425156, 32.460499, 31.159903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806343, 32.553055, 31.238186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070092, 0.459976, -0.885161,
		-0.294841, 0.857251, 0.422126,
		0.952972, 0.231394, 0.195706,
		39.092236, 32.622475, 31.296898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538422, 33.253319, 31.025663>,  <38.425156, 32.460499, 31.159903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538422, 33.253319, 31.025663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908764, 33.103733, 31.003942>,  <39.130970, 33.013981, 30.990910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908764, 33.103733, 31.003942>,  <38.538422, 33.253319, 31.025663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908764, 33.103733, 31.003942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127494, 0.444395, -0.886712,
		0.355732, 0.814040, 0.459122,
		0.925851, -0.373967, -0.054300,
		39.186520, 32.991543, 30.987652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895973, 33.825714, 31.171370>,  <38.538422, 33.253319, 31.025663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895973, 33.825714, 31.171370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724323, 34.186256, 31.194727>,  <38.621334, 34.402580, 31.208742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724323, 34.186256, 31.194727>,  <38.895973, 33.825714, 31.171370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724323, 34.186256, 31.194727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423000, -0.257667, 0.868722,
		0.798073, 0.348093, 0.491845,
		-0.429128, 0.901354, 0.058394,
		38.595585, 34.456661, 31.212246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896179, 34.037788, 31.834888>,  <38.895973, 33.825714, 31.171370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896179, 34.037788, 31.834888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.605347, 34.272797, 31.692810>,  <38.430847, 34.413803, 31.607563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.605347, 34.272797, 31.692810>,  <38.896179, 34.037788, 31.834888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605347, 34.272797, 31.692810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607224, -0.308911, 0.732020,
		0.320354, 0.747924, 0.581363,
		-0.727085, 0.587523, -0.355197,
		38.387222, 34.449055, 31.586250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551270, 34.300953, 32.382999>,  <38.896179, 34.037788, 31.834888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551270, 34.300953, 32.382999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.271561, 34.343124, 32.100182>,  <38.103737, 34.368427, 31.930492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.271561, 34.343124, 32.100182>,  <38.551270, 34.300953, 32.382999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271561, 34.343124, 32.100182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706112, -0.256098, 0.660166,
		-0.111474, 0.960885, 0.253523,
		-0.699270, 0.105424, -0.707041,
		38.061779, 34.374752, 31.888069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093773, 34.908978, 32.593319>,  <38.551270, 34.300953, 32.382999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093773, 34.908978, 32.593319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899273, 34.663391, 32.344612>,  <37.782574, 34.516037, 32.195389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899273, 34.663391, 32.344612>,  <38.093773, 34.908978, 32.593319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899273, 34.663391, 32.344612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777666, -0.020434, 0.628345,
		-0.398491, 0.789064, -0.467528,
		-0.486251, -0.613970, -0.621771,
		37.753399, 34.479198, 32.158081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454456, 35.120350, 32.398529>,  <38.093773, 34.908978, 32.593319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454456, 35.120350, 32.398529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410782, 34.733643, 32.306068>,  <37.384579, 34.501617, 32.250591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410782, 34.733643, 32.306068>,  <37.454456, 35.120350, 32.398529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410782, 34.733643, 32.306068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848334, -0.030573, 0.528578,
		-0.518081, 0.253809, -0.816807,
		-0.109186, -0.966771, -0.231154,
		37.378025, 34.443611, 32.236721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884857, 35.085987, 32.119366>,  <37.454456, 35.120350, 32.398529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884857, 35.085987, 32.119366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939045, 34.703346, 32.222561>,  <36.971558, 34.473763, 32.284477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939045, 34.703346, 32.222561>,  <36.884857, 35.085987, 32.119366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939045, 34.703346, 32.222561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969221, -0.073924, 0.234832,
		-0.205569, -0.281863, -0.937174,
		0.135470, -0.956602, 0.257991,
		36.979687, 34.416367, 32.299957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241528, 34.738979, 32.000027>,  <36.884857, 35.085987, 32.119366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241528, 34.738979, 32.000027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.431232, 34.470776, 32.228233>,  <36.545055, 34.309853, 32.365158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.431232, 34.470776, 32.228233>,  <36.241528, 34.738979, 32.000027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431232, 34.470776, 32.228233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856782, -0.202480, 0.474264,
		-0.202480, -0.713735, -0.670510,
		-0.474264, 0.670510, -0.570517,
		36.573513, 34.269623, 32.399387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829498, 34.127998, 31.947515>,  <36.241528, 34.738979, 32.000027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829498, 34.127998, 31.947515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058411, 34.076103, 32.271408>,  <36.195759, 34.044968, 32.465744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058411, 34.076103, 32.271408>,  <35.829498, 34.127998, 31.947515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058411, 34.076103, 32.271408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807460, -0.261555, 0.528770,
		0.143188, -0.956430, -0.254439,
		0.572281, -0.129736, 0.809730,
		36.230095, 34.037182, 32.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788033, 33.430737, 32.186085>,  <35.829498, 34.127998, 31.947515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788033, 33.430737, 32.186085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924675, 33.615501, 32.513485>,  <36.006660, 33.726360, 32.709927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924675, 33.615501, 32.513485>,  <35.788033, 33.430737, 32.186085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924675, 33.615501, 32.513485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781330, -0.344435, 0.520469,
		0.522330, -0.817316, 0.243241,
		0.341607, 0.461908, 0.818502,
		36.027157, 33.754074, 32.759037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672821, 32.984093, 32.745773>,  <35.788033, 33.430737, 32.186085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672821, 32.984093, 32.745773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715118, 33.338886, 32.925587>,  <35.740498, 33.551762, 33.033474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715118, 33.338886, 32.925587>,  <35.672821, 32.984093, 32.745773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715118, 33.338886, 32.925587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698434, -0.255538, 0.668499,
		0.707819, -0.384661, 0.592476,
		0.105745, 0.886982, 0.449535,
		35.746841, 33.604980, 33.060448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603249, 32.796848, 33.403263>,  <35.672821, 32.984093, 32.745773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603249, 32.796848, 33.403263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.536110, 33.191113, 33.396240>,  <35.495827, 33.427670, 33.392025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.536110, 33.191113, 33.396240>,  <35.603249, 32.796848, 33.403263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536110, 33.191113, 33.396240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724670, -0.111287, 0.680050,
		0.668341, 0.126870, 0.732956,
		-0.167847, 0.985657, -0.017561,
		35.485756, 33.486809, 33.390972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562546, 32.993881, 34.100639>,  <35.603249, 32.796848, 33.403263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562546, 32.993881, 34.100639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.358894, 33.249207, 33.869698>,  <35.236702, 33.402401, 33.731133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.358894, 33.249207, 33.869698>,  <35.562546, 32.993881, 34.100639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358894, 33.249207, 33.869698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858842, -0.332824, 0.389382,
		0.056391, 0.694104, 0.717663,
		-0.509127, 0.638317, -0.577357,
		35.206158, 33.440701, 33.696491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.433376, 35.997318, 29.258541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127193, 36.198551, 29.098049>,  <40.943485, 36.319290, 29.001755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127193, 36.198551, 29.098049>,  <41.433376, 35.997318, 29.258541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127193, 36.198551, 29.098049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596159, -0.319726, 0.736457,
		0.242214, 0.802923, 0.544653,
		-0.765458, 0.503080, -0.401228,
		40.897556, 36.349476, 28.977680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078056, 36.275066, 29.861519>,  <41.433376, 35.997318, 29.258541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078056, 36.275066, 29.861519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799145, 36.307743, 29.576668>,  <40.631798, 36.327347, 29.405758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799145, 36.307743, 29.576668>,  <41.078056, 36.275066, 29.861519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799145, 36.307743, 29.576668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707654, -0.236618, 0.665762,
		-0.114116, 0.968163, 0.222798,
		-0.697283, 0.081690, -0.712125,
		40.589958, 36.332249, 29.363029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473576, 36.733181, 30.060041>,  <41.078056, 36.275066, 29.861519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473576, 36.733181, 30.060041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348637, 36.497787, 29.761747>,  <40.273674, 36.356552, 29.582771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348637, 36.497787, 29.761747>,  <40.473576, 36.733181, 30.060041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348637, 36.497787, 29.761747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755137, -0.322484, 0.570766,
		-0.576376, 0.741409, -0.343662,
		-0.312345, -0.588487, -0.745737,
		40.254932, 36.321239, 29.538027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745136, 36.754871, 30.114801>,  <40.473576, 36.733181, 30.060041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745136, 36.754871, 30.114801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785553, 36.427906, 29.887953>,  <39.809803, 36.231728, 29.751844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785553, 36.427906, 29.887953>,  <39.745136, 36.754871, 30.114801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785553, 36.427906, 29.887953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634352, -0.492063, 0.596214,
		-0.766413, 0.299513, -0.568246,
		0.101039, -0.817414, -0.567120,
		39.815865, 36.182682, 29.717817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002102, 36.579697, 29.867275>,  <39.745136, 36.754871, 30.114801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002102, 36.579697, 29.867275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251556, 36.267025, 29.870226>,  <39.401230, 36.079422, 29.871996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251556, 36.267025, 29.870226>,  <39.002102, 36.579697, 29.867275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251556, 36.267025, 29.870226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719510, -0.570296, 0.396317,
		-0.305584, -0.252467, -0.918084,
		0.623637, -0.781679, 0.007379,
		39.438648, 36.032520, 29.872438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596821, 35.994957, 29.639868>,  <39.002102, 36.579697, 29.867275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596821, 35.994957, 29.639868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909569, 35.847446, 29.840935>,  <39.097218, 35.758938, 29.961575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909569, 35.847446, 29.840935>,  <38.596821, 35.994957, 29.639868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909569, 35.847446, 29.840935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593594, -0.686829, 0.419419,
		0.190573, -0.626313, -0.755919,
		0.781875, -0.368779, 0.502667,
		39.144131, 35.736813, 29.991735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512989, 35.267281, 29.553272>,  <38.596821, 35.994957, 29.639868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512989, 35.267281, 29.553272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739399, 35.307407, 29.880575>,  <38.875244, 35.331486, 30.076958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739399, 35.307407, 29.880575>,  <38.512989, 35.267281, 29.553272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739399, 35.307407, 29.880575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599243, -0.631574, 0.491957,
		0.566144, -0.768798, -0.297374,
		0.566029, 0.100319, 0.818259,
		38.909206, 35.337502, 30.126053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627663, 34.514751, 29.849091>,  <38.512989, 35.267281, 29.553272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627663, 34.514751, 29.849091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753536, 34.744797, 30.151142>,  <38.829060, 34.882824, 30.332373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753536, 34.744797, 30.151142>,  <38.627663, 34.514751, 29.849091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753536, 34.744797, 30.151142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437069, -0.618397, 0.653113,
		0.842582, -0.535568, 0.056763,
		0.314684, 0.575111, 0.755130,
		38.847942, 34.917332, 30.377682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806561, 34.062229, 30.443417>,  <38.627663, 34.514751, 29.849091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806561, 34.062229, 30.443417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777527, 34.403290, 30.650381>,  <38.760105, 34.607925, 30.774559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777527, 34.403290, 30.650381>,  <38.806561, 34.062229, 30.443417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777527, 34.403290, 30.650381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466483, -0.487562, 0.738022,
		0.881547, -0.187791, 0.433140,
		-0.072589, 0.852653, 0.517410,
		38.755749, 34.659084, 30.805605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369461, 34.102169, 30.730690>,  <38.806561, 34.062229, 30.443417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369461, 34.102169, 30.730690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499447, 33.726376, 30.687284>,  <39.577438, 33.500900, 30.661242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499447, 33.726376, 30.687284>,  <39.369461, 34.102169, 30.730690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499447, 33.726376, 30.687284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265447, 0.200739, -0.942996,
		0.907710, 0.277634, 0.314615,
		0.324963, -0.939480, -0.108515,
		39.596935, 33.444530, 30.654730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043819, 34.181122, 30.451971>,  <39.369461, 34.102169, 30.730690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043819, 34.181122, 30.451971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954185, 33.803726, 30.354309>,  <39.900406, 33.577290, 30.295712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954185, 33.803726, 30.354309>,  <40.043819, 34.181122, 30.451971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954185, 33.803726, 30.354309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491718, 0.106843, -0.864175,
		0.841427, -0.313702, 0.439990,
		-0.224084, -0.943491, -0.244153,
		39.886959, 33.520679, 30.281063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626938, 33.926895, 30.041958>,  <40.043819, 34.181122, 30.451971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626938, 33.926895, 30.041958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342983, 33.659504, 29.953230>,  <40.172611, 33.499069, 29.899994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342983, 33.659504, 29.953230>,  <40.626938, 33.926895, 30.041958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342983, 33.659504, 29.953230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417321, -0.145515, -0.897033,
		0.567366, -0.729361, 0.382268,
		-0.709886, -0.668475, -0.221818,
		40.130016, 33.458961, 29.886684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998108, 33.274033, 29.956865>,  <40.626938, 33.926895, 30.041958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998108, 33.274033, 29.956865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648361, 33.289112, 29.763342>,  <40.438515, 33.298161, 29.647228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648361, 33.289112, 29.763342>,  <40.998108, 33.274033, 29.956865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648361, 33.289112, 29.763342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451705, -0.301138, -0.839809,
		-0.177348, -0.952835, 0.246277,
		-0.874363, 0.037694, -0.483807,
		40.386051, 33.300423, 29.618200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018665, 32.681377, 29.485533>,  <40.998108, 33.274033, 29.956865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018665, 32.681377, 29.485533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731213, 32.920010, 29.342613>,  <40.558743, 33.063190, 29.256863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731213, 32.920010, 29.342613>,  <41.018665, 32.681377, 29.485533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731213, 32.920010, 29.342613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227988, -0.283279, -0.931544,
		-0.656955, -0.750896, 0.067561,
		-0.718632, 0.596580, -0.357297,
		40.515621, 33.098984, 29.235424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656563, 32.329414, 28.911961>,  <41.018665, 32.681377, 29.485533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656563, 32.329414, 28.911961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540375, 32.707253, 28.850809>,  <40.470661, 32.933956, 28.814117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540375, 32.707253, 28.850809>,  <40.656563, 32.329414, 28.911961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540375, 32.707253, 28.850809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065309, -0.139826, -0.988020,
		-0.954654, -0.296970, -0.021076,
		-0.290465, 0.944594, -0.152881,
		40.453236, 32.990631, 28.804945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107441, 32.353458, 28.378229>,  <40.656563, 32.329414, 28.911961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107441, 32.353458, 28.378229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282986, 32.712818, 28.384890>,  <40.388313, 32.928432, 28.388885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282986, 32.712818, 28.384890>,  <40.107441, 32.353458, 28.378229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282986, 32.712818, 28.384890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177797, -0.068658, -0.981669,
		-0.880787, 0.433781, -0.189864,
		0.438865, 0.898399, 0.016652,
		40.414646, 32.982338, 28.389885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172531, 32.460667, 27.672243>,  <40.107441, 32.353458, 28.378229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172531, 32.460667, 27.672243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426960, 32.746025, 27.789875>,  <40.579617, 32.917240, 27.860455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426960, 32.746025, 27.789875>,  <40.172531, 32.460667, 27.672243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426960, 32.746025, 27.789875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336331, 0.086688, -0.937746,
		-0.694478, 0.695378, -0.184798,
		0.636068, 0.713397, 0.294080,
		40.617779, 32.960045, 27.878099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209663, 32.942242, 27.102255>,  <40.172531, 32.460667, 27.672243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209663, 32.942242, 27.102255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543228, 33.028576, 27.305433>,  <40.743366, 33.080376, 27.427340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543228, 33.028576, 27.305433>,  <40.209663, 32.942242, 27.102255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543228, 33.028576, 27.305433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513347, 0.034613, -0.857483,
		-0.202656, 0.975816, -0.081934,
		0.833910, 0.215835, 0.507947,
		40.793400, 33.093327, 27.457817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512039, 33.497944, 26.698736>,  <40.209663, 32.942242, 27.102255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512039, 33.497944, 26.698736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821560, 33.347321, 26.902473>,  <41.007275, 33.256947, 27.024715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821560, 33.347321, 26.902473>,  <40.512039, 33.497944, 26.698736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821560, 33.347321, 26.902473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586243, 0.121221, -0.801015,
		0.239886, 0.918428, 0.314556,
		0.773805, -0.376558, 0.509343,
		41.053699, 33.234352, 27.055277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155430, 33.978157, 26.521734>,  <40.512039, 33.497944, 26.698736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155430, 33.978157, 26.521734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261604, 33.608311, 26.631008>,  <41.325310, 33.386402, 26.696573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261604, 33.608311, 26.631008>,  <41.155430, 33.978157, 26.521734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261604, 33.608311, 26.631008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615230, -0.055722, -0.786376,
		0.742317, 0.376807, 0.554059,
		0.265438, -0.924614, 0.273186,
		41.341236, 33.330925, 26.712963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803707, 34.031044, 26.318718>,  <41.155430, 33.978157, 26.521734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803707, 34.031044, 26.318718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780190, 33.647194, 26.428741>,  <41.766079, 33.416882, 26.494757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780190, 33.647194, 26.428741>,  <41.803707, 34.031044, 26.318718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780190, 33.647194, 26.428741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771258, -0.218607, -0.597806,
		0.633801, 0.176994, 0.752974,
		-0.058797, -0.959627, 0.275061,
		41.762550, 33.359306, 26.511259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437611, 33.851139, 26.588295>,  <41.803707, 34.031044, 26.318718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437611, 33.851139, 26.588295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259079, 33.524746, 26.441347>,  <42.151962, 33.328911, 26.353178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259079, 33.524746, 26.441347>,  <42.437611, 33.851139, 26.588295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259079, 33.524746, 26.441347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743549, -0.109735, -0.659617,
		0.497923, -0.567563, 0.655702,
		-0.446327, -0.815985, -0.367371,
		42.125179, 33.279949, 26.331137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018826, 33.441292, 26.458792>,  <42.437611, 33.851139, 26.588295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018826, 33.441292, 26.458792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730354, 33.250546, 26.257795>,  <42.557270, 33.136097, 26.137197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730354, 33.250546, 26.257795>,  <43.018826, 33.441292, 26.458792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730354, 33.250546, 26.257795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630324, -0.150787, -0.761548,
		0.287388, -0.865945, 0.409326,
		-0.721179, -0.476868, -0.502491,
		42.514000, 33.107487, 26.107048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.377350, 34.399723, 24.171095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625420, 34.539532, 24.452013>,  <36.774261, 34.623417, 24.620564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625420, 34.539532, 24.452013>,  <36.377350, 34.399723, 24.171095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625420, 34.539532, 24.452013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397668, -0.631628, 0.665513,
		0.676199, -0.692015, -0.252727,
		0.620174, 0.349517, 0.702298,
		36.811470, 34.644386, 24.662703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684723, 33.824829, 24.623051>,  <36.377350, 34.399723, 24.171095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684723, 33.824829, 24.623051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670429, 34.163822, 24.834896>,  <36.661854, 34.367218, 24.962004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670429, 34.163822, 24.834896>,  <36.684723, 33.824829, 24.623051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670429, 34.163822, 24.834896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301021, -0.514467, 0.802939,
		0.952948, -0.130731, 0.273496,
		-0.035736, 0.847487, 0.529613,
		36.659710, 34.418068, 24.993780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912083, 33.626953, 25.348042>,  <36.684723, 33.824829, 24.623051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912083, 33.626953, 25.348042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793312, 34.002369, 25.418451>,  <36.722050, 34.227619, 25.460697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793312, 34.002369, 25.418451>,  <36.912083, 33.626953, 25.348042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793312, 34.002369, 25.418451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209925, -0.243984, 0.946786,
		0.931541, 0.244169, 0.269467,
		-0.296922, 0.938538, 0.176024,
		36.704235, 34.283932, 25.471258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184784, 33.960953, 25.989464>,  <36.912083, 33.626953, 25.348042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184784, 33.960953, 25.989464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835197, 34.142132, 25.919014>,  <36.625446, 34.250839, 25.876743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835197, 34.142132, 25.919014>,  <37.184784, 33.960953, 25.989464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835197, 34.142132, 25.919014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314433, -0.250678, 0.915583,
		0.370563, 0.855568, 0.361506,
		-0.873965, 0.452951, -0.176127,
		36.573009, 34.278015, 25.866177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057083, 34.368286, 26.506819>,  <37.184784, 33.960953, 25.989464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057083, 34.368286, 26.506819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689930, 34.303059, 26.362097>,  <36.469639, 34.263920, 26.275265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689930, 34.303059, 26.362097>,  <37.057083, 34.368286, 26.506819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689930, 34.303059, 26.362097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316400, -0.249611, 0.915197,
		-0.239552, 0.954517, 0.177518,
		-0.917881, -0.163071, -0.361804,
		36.414566, 34.254139, 26.253555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676090, 34.721375, 26.953056>,  <37.057083, 34.368286, 26.506819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676090, 34.721375, 26.953056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410927, 34.482792, 26.772041>,  <36.251827, 34.339642, 26.663433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410927, 34.482792, 26.772041>,  <36.676090, 34.721375, 26.953056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410927, 34.482792, 26.772041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387996, -0.243251, 0.888982,
		-0.640321, 0.764896, -0.070171,
		-0.662909, -0.596460, -0.452535,
		36.212055, 34.303856, 26.636280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995193, 34.813660, 27.323536>,  <36.676090, 34.721375, 26.953056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995193, 34.813660, 27.323536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952572, 34.467731, 27.127279>,  <35.926998, 34.260174, 27.009525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952572, 34.467731, 27.127279>,  <35.995193, 34.813660, 27.323536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952572, 34.467731, 27.127279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472662, -0.390076, 0.790210,
		-0.874778, 0.316111, -0.367202,
		-0.106558, -0.864821, -0.490643,
		35.920605, 34.208286, 26.980085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301189, 34.688976, 27.196466>,  <35.995193, 34.813660, 27.323536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301189, 34.688976, 27.196466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.502842, 34.343536, 27.193682>,  <35.623833, 34.136272, 27.192011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.502842, 34.343536, 27.193682>,  <35.301189, 34.688976, 27.196466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502842, 34.343536, 27.193682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626292, -0.371128, 0.685581,
		-0.594651, -0.341263, -0.727963,
		0.504131, -0.863599, -0.006962,
		35.654079, 34.084457, 27.191593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807594, 34.209133, 27.244089>,  <35.301189, 34.688976, 27.196466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807594, 34.209133, 27.244089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125210, 33.976067, 27.313374>,  <35.315781, 33.836227, 27.354944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125210, 33.976067, 27.313374>,  <34.807594, 34.209133, 27.244089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125210, 33.976067, 27.313374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510454, -0.484432, 0.710467,
		-0.330051, -0.652558, -0.682081,
		0.794042, -0.582661, 0.173214,
		35.363422, 33.801270, 27.365337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575146, 33.520790, 27.449669>,  <34.807594, 34.209133, 27.244089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575146, 33.520790, 27.449669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955898, 33.548710, 27.569035>,  <35.184349, 33.565460, 27.640654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955898, 33.548710, 27.569035>,  <34.575146, 33.520790, 27.449669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955898, 33.548710, 27.569035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222809, -0.510952, 0.830232,
		0.210424, -0.856771, -0.470813,
		0.951881, 0.069799, 0.298413,
		35.241463, 33.569649, 27.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662205, 32.888664, 27.715481>,  <34.575146, 33.520790, 27.449669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662205, 32.888664, 27.715481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964661, 33.087616, 27.885592>,  <35.146133, 33.206989, 27.987658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964661, 33.087616, 27.885592>,  <34.662205, 32.888664, 27.715481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964661, 33.087616, 27.885592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140075, -0.511790, 0.847614,
		0.639243, -0.700486, -0.317313,
		0.756139, 0.497384, 0.425279,
		35.191502, 33.236832, 28.013176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964855, 32.394890, 28.136930>,  <34.662205, 32.888664, 27.715481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964855, 32.394890, 28.136930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117626, 32.737446, 28.275919>,  <35.209290, 32.942978, 28.359312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117626, 32.737446, 28.275919>,  <34.964855, 32.394890, 28.136930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117626, 32.737446, 28.275919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029660, -0.387138, 0.921544,
		0.923717, -0.341655, -0.173258,
		0.381925, 0.856385, 0.347473,
		35.232204, 32.994362, 28.380161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541756, 32.257610, 28.553169>,  <34.964855, 32.394890, 28.136930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541756, 32.257610, 28.553169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417080, 32.623775, 28.655043>,  <35.342274, 32.843475, 28.716167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417080, 32.623775, 28.655043>,  <35.541756, 32.257610, 28.553169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417080, 32.623775, 28.655043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017389, -0.273487, 0.961718,
		0.950026, 0.295326, 0.101161,
		-0.311687, 0.915416, 0.254685,
		35.323574, 32.898399, 28.731447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032005, 32.514870, 29.102575>,  <35.541756, 32.257610, 28.553169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032005, 32.514870, 29.102575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681057, 32.706409, 29.114681>,  <35.470486, 32.821335, 29.121944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681057, 32.706409, 29.114681>,  <36.032005, 32.514870, 29.102575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681057, 32.706409, 29.114681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144095, -0.323134, 0.935319,
		0.457659, 0.816263, 0.352510,
		-0.877374, 0.478852, 0.030265,
		35.417847, 32.850063, 29.123760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611744, 32.578987, 29.636028>,  <36.032005, 32.514870, 29.102575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611744, 32.578987, 29.636028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723793, 32.197403, 29.593159>,  <36.791023, 31.968452, 29.567438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723793, 32.197403, 29.593159>,  <36.611744, 32.578987, 29.636028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723793, 32.197403, 29.593159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584403, 0.258035, -0.769344,
		0.761581, 0.152877, 0.629780,
		0.280120, -0.953964, -0.107173,
		36.807831, 31.911213, 29.561007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398705, 32.538155, 29.446363>,  <36.611744, 32.578987, 29.636028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398705, 32.538155, 29.446363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.247513, 32.184860, 29.335356>,  <37.156799, 31.972883, 29.268751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.247513, 32.184860, 29.335356>,  <37.398705, 32.538155, 29.446363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247513, 32.184860, 29.335356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499197, 0.058015, -0.864544,
		0.779701, -0.465317, 0.418982,
		-0.377980, -0.883241, -0.277519,
		37.134117, 31.919888, 29.252100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979637, 32.128365, 29.059227>,  <37.398705, 32.538155, 29.446363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979637, 32.128365, 29.059227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.638519, 31.943853, 28.961283>,  <37.433849, 31.833147, 28.902515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.638519, 31.943853, 28.961283>,  <37.979637, 32.128365, 29.059227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638519, 31.943853, 28.961283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306844, -0.063177, -0.949661,
		0.422588, -0.885004, 0.195417,
		-0.852799, -0.461278, -0.244860,
		37.382679, 31.805470, 28.887825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188164, 31.568682, 28.625822>,  <37.979637, 32.128365, 29.059227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188164, 31.568682, 28.625822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805710, 31.618149, 28.519604>,  <37.576237, 31.647829, 28.455872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805710, 31.618149, 28.519604>,  <38.188164, 31.568682, 28.625822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805710, 31.618149, 28.519604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262708, -0.039028, -0.964086,
		-0.129590, -0.991556, 0.004827,
		-0.956134, 0.123667, -0.265547,
		37.518871, 31.655249, 28.439939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017487, 31.035242, 28.126118>,  <38.188164, 31.568682, 28.625822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017487, 31.035242, 28.126118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755920, 31.334528, 28.081263>,  <37.598980, 31.514099, 28.054350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755920, 31.334528, 28.081263>,  <38.017487, 31.035242, 28.126118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755920, 31.334528, 28.081263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191480, 0.020278, -0.981287,
		-0.731938, -0.663148, -0.156528,
		-0.653912, 0.748214, -0.112137,
		37.559746, 31.558992, 28.047621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652161, 30.861734, 27.558750>,  <38.017487, 31.035242, 28.126118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652161, 30.861734, 27.558750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603302, 31.256657, 27.599369>,  <37.573986, 31.493610, 27.623741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603302, 31.256657, 27.599369>,  <37.652161, 30.861734, 27.558750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603302, 31.256657, 27.599369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386085, 0.141522, -0.911543,
		-0.914341, -0.072135, -0.398469,
		-0.122147, 0.987303, 0.101549,
		37.566658, 31.552847, 27.629833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335049, 31.125595, 26.997322>,  <37.652161, 30.861734, 27.558750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335049, 31.125595, 26.997322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492306, 31.472170, 27.120432>,  <37.586662, 31.680115, 27.194298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492306, 31.472170, 27.120432>,  <37.335049, 31.125595, 26.997322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492306, 31.472170, 27.120432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340195, 0.173906, -0.924134,
		-0.854227, 0.468023, -0.226386,
		0.393146, 0.866436, 0.307774,
		37.610249, 31.732101, 27.212765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118298, 31.622770, 26.494888>,  <37.335049, 31.125595, 26.997322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118298, 31.622770, 26.494888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.430271, 31.795328, 26.676262>,  <37.617455, 31.898863, 26.785086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.430271, 31.795328, 26.676262>,  <37.118298, 31.622770, 26.494888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430271, 31.795328, 26.676262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353854, 0.293637, -0.888012,
		-0.516230, 0.853039, 0.076367,
		0.779932, 0.431395, 0.453435,
		37.664249, 31.924747, 26.812292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168701, 32.375965, 26.281374>,  <37.118298, 31.622770, 26.494888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168701, 32.375965, 26.281374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518463, 32.219692, 26.396460>,  <37.728321, 32.125927, 26.465511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518463, 32.219692, 26.396460>,  <37.168701, 32.375965, 26.281374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518463, 32.219692, 26.396460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434378, 0.366154, -0.822950,
		0.216163, 0.844571, 0.489871,
		0.874408, -0.390681, 0.287714,
		37.780785, 32.102489, 26.482775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596954, 32.788090, 25.953836>,  <37.168701, 32.375965, 26.281374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596954, 32.788090, 25.953836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825756, 32.482204, 26.072510>,  <37.963039, 32.298672, 26.143713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825756, 32.482204, 26.072510>,  <37.596954, 32.788090, 25.953836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825756, 32.482204, 26.072510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642716, 0.193131, -0.741361,
		0.509630, 0.614747, 0.601966,
		0.572008, -0.764713, 0.296682,
		37.997360, 32.252789, 26.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262608, 32.986065, 26.027822>,  <37.596954, 32.788090, 25.953836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262608, 32.986065, 26.027822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262959, 32.599434, 25.925266>,  <38.263168, 32.367455, 25.863733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262959, 32.599434, 25.925266>,  <38.262608, 32.986065, 26.027822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262959, 32.599434, 25.925266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470867, 0.226585, -0.852610,
		0.882204, -0.119981, 0.455326,
		0.000873, -0.966573, -0.256389,
		38.263222, 32.309464, 25.848349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026768, 32.732761, 25.884417>,  <38.262608, 32.986065, 26.027822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026768, 32.732761, 25.884417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.743778, 32.514687, 25.704527>,  <38.573986, 32.383842, 25.596594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.743778, 32.514687, 25.704527>,  <39.026768, 32.732761, 25.884417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743778, 32.514687, 25.704527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412723, 0.197844, -0.889110,
		0.573706, -0.814635, 0.085041,
		-0.707475, -0.545186, -0.449723,
		38.531536, 32.351131, 25.569611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403522, 32.467224, 25.392315>,  <39.026768, 32.732761, 25.884417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403522, 32.467224, 25.392315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.031357, 32.418583, 25.254017>,  <38.808056, 32.389397, 25.171038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.031357, 32.418583, 25.254017>,  <39.403522, 32.467224, 25.392315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031357, 32.418583, 25.254017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312167, 0.231355, -0.921426,
		0.192043, -0.965239, -0.177294,
		-0.930414, -0.121608, -0.345746,
		38.752232, 32.382103, 25.150293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464039, 32.077644, 24.850788>,  <39.403522, 32.467224, 25.392315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464039, 32.077644, 24.850788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097267, 32.226376, 24.792837>,  <38.877205, 32.315613, 24.758066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097267, 32.226376, 24.792837>,  <39.464039, 32.077644, 24.850788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097267, 32.226376, 24.792837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199270, 0.112089, -0.973513,
		-0.345739, -0.921510, -0.176871,
		-0.916928, 0.371826, -0.144876,
		38.822189, 32.337925, 24.749374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522503, 31.341532, 24.604313>,  <39.464039, 32.077644, 24.850788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522503, 31.341532, 24.604313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880924, 31.166443, 24.574673>,  <40.095978, 31.061390, 24.556889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880924, 31.166443, 24.574673>,  <39.522503, 31.341532, 24.604313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880924, 31.166443, 24.574673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303860, -0.726386, 0.616467,
		-0.323667, -0.529870, -0.783886,
		0.896052, -0.437722, -0.074101,
		40.149738, 31.035126, 24.552443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381195, 30.697168, 24.595848>,  <39.522503, 31.341532, 24.604313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381195, 30.697168, 24.595848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.763798, 30.702545, 24.712414>,  <39.993359, 30.705770, 24.782352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.763798, 30.702545, 24.712414>,  <39.381195, 30.697168, 24.595848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763798, 30.702545, 24.712414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209547, -0.663329, 0.718390,
		0.202960, -0.748207, -0.631659,
		0.956502, 0.013442, 0.291414,
		40.050747, 30.706577, 24.799837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634308, 30.015545, 24.645027>,  <39.381195, 30.697168, 24.595848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634308, 30.015545, 24.645027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871208, 30.235241, 24.880848>,  <40.013348, 30.367060, 25.022341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871208, 30.235241, 24.880848>,  <39.634308, 30.015545, 24.645027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871208, 30.235241, 24.880848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195299, -0.612010, 0.766357,
		0.781727, -0.569015, -0.255198,
		0.592252, 0.549242, 0.589552,
		40.048885, 30.400013, 25.057713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867439, 29.513437, 25.107426>,  <39.634308, 30.015545, 24.645027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867439, 29.513437, 25.107426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.913166, 29.874344, 25.273724>,  <39.940601, 30.090889, 25.373503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.913166, 29.874344, 25.273724>,  <39.867439, 29.513437, 25.107426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913166, 29.874344, 25.273724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080412, -0.408711, 0.909115,
		0.990185, -0.137356, 0.025831,
		0.114315, 0.902269, 0.415744,
		39.947460, 30.145025, 25.398447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328720, 29.424643, 25.700897>,  <39.867439, 29.513437, 25.107426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328720, 29.424643, 25.700897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132393, 29.763241, 25.783407>,  <40.014599, 29.966400, 25.832912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132393, 29.763241, 25.783407>,  <40.328720, 29.424643, 25.700897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132393, 29.763241, 25.783407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072291, -0.275502, 0.958578,
		0.868260, 0.455572, 0.196414,
		-0.490814, 0.846494, 0.206274,
		39.985149, 30.017189, 25.845289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564129, 29.461624, 26.351931>,  <40.328720, 29.424643, 25.700897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564129, 29.461624, 26.351931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276836, 29.739471, 26.335718>,  <40.104462, 29.906179, 26.325991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276836, 29.739471, 26.335718>,  <40.564129, 29.461624, 26.351931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276836, 29.739471, 26.335718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142279, -0.089596, 0.985763,
		0.681098, 0.713777, 0.163181,
		-0.718235, 0.694619, -0.040532,
		40.061367, 29.947857, 26.323559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722736, 29.833311, 26.837093>,  <40.564129, 29.461624, 26.351931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722736, 29.833311, 26.837093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336681, 29.903124, 26.759073>,  <40.105049, 29.945011, 26.712261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336681, 29.903124, 26.759073>,  <40.722736, 29.833311, 26.837093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336681, 29.903124, 26.759073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197016, 0.006155, 0.980381,
		0.172309, 0.984632, 0.028446,
		-0.965139, 0.174533, -0.195049,
		40.047138, 29.955484, 26.700558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524940, 30.399759, 27.277704>,  <40.722736, 29.833311, 26.837093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524940, 30.399759, 27.277704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.198708, 30.187023, 27.186514>,  <40.002968, 30.059381, 27.131800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.198708, 30.187023, 27.186514>,  <40.524940, 30.399759, 27.277704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198708, 30.187023, 27.186514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336369, 0.115173, 0.934661,
		-0.470836, 0.838975, -0.272828,
		-0.815579, -0.531843, -0.227978,
		39.954033, 30.027470, 27.118120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927063, 30.849079, 27.562256>,  <40.524940, 30.399759, 27.277704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927063, 30.849079, 27.562256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797729, 30.475821, 27.499399>,  <39.720127, 30.251865, 27.461685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797729, 30.475821, 27.499399>,  <39.927063, 30.849079, 27.562256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797729, 30.475821, 27.499399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334282, -0.042718, 0.941505,
		-0.885273, 0.356953, -0.298121,
		-0.323338, -0.933145, -0.157140,
		39.700729, 30.195877, 27.452257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163479, 30.806585, 27.596834>,  <39.927063, 30.849079, 27.562256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163479, 30.806585, 27.596834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282490, 30.433516, 27.678415>,  <39.353897, 30.209673, 27.727364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282490, 30.433516, 27.678415>,  <39.163479, 30.806585, 27.596834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282490, 30.433516, 27.678415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609217, -0.020993, 0.792726,
		-0.735074, -0.360105, -0.574448,
		0.297524, -0.932675, 0.203951,
		39.371746, 30.153713, 27.739601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624428, 30.441574, 27.822493>,  <39.163479, 30.806585, 27.596834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624428, 30.441574, 27.822493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920437, 30.220459, 27.975750>,  <39.098042, 30.087790, 28.067705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920437, 30.220459, 27.975750>,  <38.624428, 30.441574, 27.822493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920437, 30.220459, 27.975750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472222, -0.021381, 0.881220,
		-0.478934, -0.833049, -0.276860,
		0.740019, -0.552786, 0.383144,
		39.142441, 30.054623, 28.090693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318943, 29.973001, 28.285450>,  <38.624428, 30.441574, 27.822493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318943, 29.973001, 28.285450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700184, 29.947767, 28.403849>,  <38.928928, 29.932627, 28.474888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700184, 29.947767, 28.403849>,  <38.318943, 29.973001, 28.285450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700184, 29.947767, 28.403849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300712, -0.087008, 0.949738,
		-0.034158, -0.994208, -0.101897,
		0.953103, -0.063082, 0.295999,
		38.986115, 29.928843, 28.492649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408497, 29.356070, 28.778341>,  <38.318943, 29.973001, 28.285450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408497, 29.356070, 28.778341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729301, 29.591938, 28.816431>,  <38.921783, 29.733459, 28.839285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729301, 29.591938, 28.816431>,  <38.408497, 29.356070, 28.778341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729301, 29.591938, 28.816431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030301, -0.119055, 0.992425,
		0.596544, -0.798819, -0.077616,
		0.802008, 0.589673, 0.095226,
		38.969906, 29.768841, 28.844999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893181, 28.922174, 29.013510>,  <38.408497, 29.356070, 28.778341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893181, 28.922174, 29.013510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986195, 29.301538, 29.099714>,  <39.042004, 29.529158, 29.151438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986195, 29.301538, 29.099714>,  <38.893181, 28.922174, 29.013510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986195, 29.301538, 29.099714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064609, -0.236161, 0.969564,
		0.970441, -0.211529, -0.116190,
		0.232530, 0.948411, 0.215514,
		39.055954, 29.586061, 29.164368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.067417, 32.072411, 25.964767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.842815, 32.358799, 25.798826>,  <42.708054, 32.530632, 25.699261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.842815, 32.358799, 25.798826>,  <43.067417, 32.072411, 25.964767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842815, 32.358799, 25.798826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644787, 0.064357, -0.761648,
		-0.518617, -0.695160, -0.497784,
		-0.561504, 0.715968, -0.414853,
		42.674366, 32.573589, 25.674370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897732, 31.881348, 25.168880>,  <43.067417, 32.072411, 25.964767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897732, 31.881348, 25.168880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.838108, 32.275002, 25.207378>,  <42.802334, 32.511192, 25.230476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.838108, 32.275002, 25.207378>,  <42.897732, 31.881348, 25.168880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838108, 32.275002, 25.207378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382072, 0.147094, -0.912351,
		-0.912032, -0.099221, -0.397935,
		-0.149058, 0.984133, 0.096245,
		42.793392, 32.570240, 25.236252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676785, 32.075245, 24.446119>,  <42.897732, 31.881348, 25.168880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676785, 32.075245, 24.446119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.767559, 32.433517, 24.599091>,  <42.822025, 32.648479, 24.690874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.767559, 32.433517, 24.599091>,  <42.676785, 32.075245, 24.446119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767559, 32.433517, 24.599091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472184, 0.242245, -0.847561,
		-0.851787, 0.372922, -0.367952,
		0.226940, 0.895682, 0.382429,
		42.835640, 32.702221, 24.713820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452320, 32.557194, 23.954050>,  <42.676785, 32.075245, 24.446119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452320, 32.557194, 23.954050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.683422, 32.810291, 24.160286>,  <42.822083, 32.962151, 24.284027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.683422, 32.810291, 24.160286>,  <42.452320, 32.557194, 23.954050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683422, 32.810291, 24.160286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245604, 0.467636, -0.849114,
		-0.778383, 0.617209, 0.114772,
		0.577752, 0.632748, 0.515589,
		42.856747, 33.000114, 24.314962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242527, 33.211678, 23.817530>,  <42.452320, 32.557194, 23.954050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242527, 33.211678, 23.817530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.620327, 33.257359, 23.940741>,  <42.847008, 33.284767, 24.014668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.620327, 33.257359, 23.940741>,  <42.242527, 33.211678, 23.817530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620327, 33.257359, 23.940741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170235, 0.631789, -0.756216,
		-0.280970, 0.766682, 0.577282,
		0.944498, 0.114201, 0.308029,
		42.903675, 33.291618, 24.033150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454449, 34.013348, 23.735352>,  <42.242527, 33.211678, 23.817530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454449, 34.013348, 23.735352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797039, 33.809460, 23.767937>,  <43.002594, 33.687126, 23.787487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797039, 33.809460, 23.767937>,  <42.454449, 34.013348, 23.735352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797039, 33.809460, 23.767937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368875, 0.493986, -0.787344,
		0.361083, 0.704390, 0.611109,
		0.856476, -0.509719, 0.081462,
		43.053982, 33.656544, 23.792376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077564, 34.484516, 23.825195>,  <42.454449, 34.013348, 23.735352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077564, 34.484516, 23.825195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.244473, 34.145042, 23.695202>,  <43.344620, 33.941357, 23.617207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.244473, 34.145042, 23.695202>,  <43.077564, 34.484516, 23.825195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244473, 34.145042, 23.695202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478465, 0.509190, -0.715399,
		0.772627, 0.143025, 0.618539,
		0.417274, -0.848687, -0.324982,
		43.369656, 33.890438, 23.597708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715420, 34.704060, 23.610003>,  <43.077564, 34.484516, 23.825195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715420, 34.704060, 23.610003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.652321, 34.346859, 23.441404>,  <43.614460, 34.132538, 23.340244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.652321, 34.346859, 23.441404>,  <43.715420, 34.704060, 23.610003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652321, 34.346859, 23.441404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288702, 0.366484, -0.884500,
		0.944334, -0.261216, 0.199999,
		-0.157749, -0.893004, -0.421497,
		43.604996, 34.078957, 23.314955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347076, 34.433376, 23.229361>,  <43.715420, 34.704060, 23.610003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347076, 34.433376, 23.229361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.029194, 34.256287, 23.063257>,  <43.838463, 34.150032, 22.963594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.029194, 34.256287, 23.063257>,  <44.347076, 34.433376, 23.229361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029194, 34.256287, 23.063257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369400, 0.190102, -0.909618,
		0.481648, -0.876276, 0.012465,
		-0.794707, -0.442720, -0.415259,
		43.790783, 34.123470, 22.938679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641212, 34.161690, 22.683567>,  <44.347076, 34.433376, 23.229361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641212, 34.161690, 22.683567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.251778, 34.143883, 22.593987>,  <44.018116, 34.133198, 22.540237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.251778, 34.143883, 22.593987>,  <44.641212, 34.161690, 22.683567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251778, 34.143883, 22.593987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211178, 0.197448, -0.957297,
		0.086838, -0.979302, -0.182830,
		-0.973583, -0.044520, -0.223953,
		43.959702, 34.130527, 22.526800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555626, 33.694149, 22.117254>,  <44.641212, 34.161690, 22.683567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555626, 33.694149, 22.117254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.218468, 33.907681, 22.090269>,  <44.016171, 34.035797, 22.074078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.218468, 33.907681, 22.090269>,  <44.555626, 33.694149, 22.117254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218468, 33.907681, 22.090269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258426, 0.291664, -0.920950,
		-0.471950, -0.793702, -0.383798,
		-0.842899, 0.533825, -0.067462,
		43.965599, 34.067829, 22.070030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128738, 33.583839, 21.469721>,  <44.555626, 33.694149, 22.117254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128738, 33.583839, 21.469721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.039818, 33.954987, 21.589487>,  <43.986465, 34.177673, 21.661346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.039818, 33.954987, 21.589487>,  <44.128738, 33.583839, 21.469721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039818, 33.954987, 21.589487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066421, 0.291972, -0.954118,
		-0.972713, -0.231988, -0.003275,
		-0.222300, 0.927865, 0.299414,
		43.973129, 34.233345, 21.679312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750832, 33.894413, 20.816397>,  <44.128738, 33.583839, 21.469721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750832, 33.894413, 20.816397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.864067, 34.198864, 21.049822>,  <43.932011, 34.381535, 21.189877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.864067, 34.198864, 21.049822>,  <43.750832, 33.894413, 20.816397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864067, 34.198864, 21.049822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233763, 0.644858, -0.727676,
		-0.930169, 0.069585, 0.360478,
		0.283092, 0.761128, 0.583561,
		43.948994, 34.427204, 21.224890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290863, 34.400925, 20.730467>,  <43.750832, 33.894413, 20.816397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290863, 34.400925, 20.730467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.622791, 34.597973, 20.835325>,  <43.821949, 34.716202, 20.898241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.622791, 34.597973, 20.835325>,  <43.290863, 34.400925, 20.730467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622791, 34.597973, 20.835325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141318, 0.639972, -0.755291,
		-0.539840, 0.589710, 0.600679,
		0.829820, 0.492623, 0.262146,
		43.871738, 34.745758, 20.913969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547604, 34.479591, 20.698212>,  <43.290863, 34.400925, 20.730467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547604, 34.479591, 20.698212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.235119, 34.301662, 20.523016>,  <42.047626, 34.194904, 20.417898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.235119, 34.301662, 20.523016>,  <42.547604, 34.479591, 20.698212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235119, 34.301662, 20.523016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294255, -0.356386, 0.886793,
		-0.550559, 0.821658, 0.147523,
		-0.781216, -0.444823, -0.437989,
		42.000755, 34.168217, 20.391619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007782, 34.613995, 21.161701>,  <42.547604, 34.479591, 20.698212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007782, 34.613995, 21.161701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.874088, 34.321785, 20.923498>,  <41.793873, 34.146461, 20.780577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.874088, 34.321785, 20.923498>,  <42.007782, 34.613995, 21.161701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874088, 34.321785, 20.923498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581308, -0.337564, 0.740359,
		-0.741869, 0.593626, -0.311832,
		-0.334233, -0.730520, -0.595508,
		41.773819, 34.102631, 20.744846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296307, 34.446457, 21.387373>,  <42.007782, 34.613995, 21.161701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296307, 34.446457, 21.387373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.442402, 34.139889, 21.176014>,  <41.530060, 33.955948, 21.049198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.442402, 34.139889, 21.176014>,  <41.296307, 34.446457, 21.387373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442402, 34.139889, 21.176014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392301, -0.641469, 0.659255,
		-0.844215, -0.033497, -0.534957,
		0.365242, -0.766417, -0.528397,
		41.551975, 33.909966, 21.017494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758690, 33.872963, 21.476368>,  <41.296307, 34.446457, 21.387373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758690, 33.872963, 21.476368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.097725, 33.690807, 21.367399>,  <41.301147, 33.581512, 21.302019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.097725, 33.690807, 21.367399>,  <40.758690, 33.872963, 21.476368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097725, 33.690807, 21.367399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276749, -0.817367, 0.505294,
		-0.452773, -0.352890, -0.818820,
		0.847589, -0.455391, -0.272420,
		41.352001, 33.554192, 21.285673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528122, 33.318153, 21.300354>,  <40.758690, 33.872963, 21.476368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528122, 33.318153, 21.300354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914158, 33.254387, 21.383488>,  <41.145779, 33.216129, 21.433367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914158, 33.254387, 21.383488>,  <40.528122, 33.318153, 21.300354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914158, 33.254387, 21.383488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250732, -0.791766, 0.556992,
		0.075764, -0.589656, -0.804093,
		0.965087, -0.159411, 0.207833,
		41.203686, 33.206562, 21.445837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802151, 32.650009, 21.074484>,  <40.528122, 33.318153, 21.300354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802151, 32.650009, 21.074484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038925, 32.761112, 21.377127>,  <41.180992, 32.827774, 21.558712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038925, 32.761112, 21.377127>,  <40.802151, 32.650009, 21.074484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038925, 32.761112, 21.377127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255412, -0.825712, 0.502955,
		0.764442, -0.490966, -0.417829,
		0.591940, 0.277762, 0.756608,
		41.216507, 32.844440, 21.604109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166557, 32.128872, 21.194332>,  <40.802151, 32.650009, 21.074484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166557, 32.128872, 21.194332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.198067, 32.317055, 21.545893>,  <41.216972, 32.429966, 21.756828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.198067, 32.317055, 21.545893>,  <41.166557, 32.128872, 21.194332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198067, 32.317055, 21.545893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003709, -0.881771, 0.471663,
		0.996886, -0.033895, -0.071206,
		0.078775, 0.470458, 0.878899,
		41.221699, 32.458191, 21.809563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379009, 31.603962, 21.515985>,  <41.166557, 32.128872, 21.194332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379009, 31.603962, 21.515985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.291168, 31.874966, 21.796772>,  <41.238464, 32.037567, 21.965244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.291168, 31.874966, 21.796772>,  <41.379009, 31.603962, 21.515985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291168, 31.874966, 21.796772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138016, -0.733870, 0.665122,
		0.965777, 0.049182, 0.254669,
		-0.219606, 0.677508, 0.701966,
		41.225285, 32.078217, 22.007362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696491, 31.434793, 22.061588>,  <41.379009, 31.603962, 21.515985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696491, 31.434793, 22.061588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.418365, 31.669891, 22.227045>,  <41.251492, 31.810949, 22.326319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.418365, 31.669891, 22.227045>,  <41.696491, 31.434793, 22.061588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418365, 31.669891, 22.227045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156012, -0.685240, 0.711412,
		0.701572, 0.430120, 0.568150,
		-0.695311, 0.587745, 0.413641,
		41.209774, 31.846214, 22.351137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819099, 31.345543, 22.813564>,  <41.696491, 31.434793, 22.061588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819099, 31.345543, 22.813564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.458076, 31.513266, 22.774427>,  <41.241463, 31.613899, 22.750946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.458076, 31.513266, 22.774427>,  <41.819099, 31.345543, 22.813564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458076, 31.513266, 22.774427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261984, -0.354471, 0.897616,
		0.341695, 0.835782, 0.429782,
		-0.902557, 0.419307, -0.097840,
		41.187309, 31.639057, 22.745075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723595, 31.698406, 23.380072>,  <41.819099, 31.345543, 22.813564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723595, 31.698406, 23.380072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.342888, 31.680161, 23.258707>,  <41.114464, 31.669214, 23.185888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.342888, 31.680161, 23.258707>,  <41.723595, 31.698406, 23.380072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342888, 31.680161, 23.258707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284329, -0.240538, 0.928062,
		-0.115314, 0.969567, 0.215967,
		-0.951767, -0.045613, -0.303413,
		41.057358, 31.666477, 23.167683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323627, 32.136875, 23.732998>,  <41.723595, 31.698406, 23.380072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323627, 32.136875, 23.732998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.053768, 31.867104, 23.613003>,  <40.891853, 31.705240, 23.541006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.053768, 31.867104, 23.613003>,  <41.323627, 32.136875, 23.732998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053768, 31.867104, 23.613003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198895, -0.225284, 0.953776,
		-0.710837, 0.703130, 0.017847,
		-0.674649, -0.674430, -0.299989,
		40.851372, 31.664774, 23.523006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701046, 32.286301, 24.160898>,  <41.323627, 32.136875, 23.732998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701046, 32.286301, 24.160898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.659351, 31.916769, 24.013561>,  <40.634335, 31.695051, 23.925159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.659351, 31.916769, 24.013561>,  <40.701046, 32.286301, 24.160898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659351, 31.916769, 24.013561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220069, -0.339756, 0.914404,
		-0.969900, 0.176372, -0.167892,
		-0.104233, -0.923828, -0.368344,
		40.628082, 31.639620, 23.903059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126846, 31.990515, 24.435518>,  <40.701046, 32.286301, 24.160898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126846, 31.990515, 24.435518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.302055, 31.647142, 24.328760>,  <40.407181, 31.441118, 24.264706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.302055, 31.647142, 24.328760>,  <40.126846, 31.990515, 24.435518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302055, 31.647142, 24.328760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327748, -0.428951, 0.841773,
		-0.837089, -0.281242, -0.469239,
		0.438023, -0.858431, -0.266893,
		40.433464, 31.389614, 24.248692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345943, 31.908283, 24.129545>,  <40.126846, 31.990515, 24.435518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345943, 31.908283, 24.129545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060585, 32.176693, 24.210329>,  <38.889370, 32.337738, 24.258799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060585, 32.176693, 24.210329>,  <39.345943, 31.908283, 24.129545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060585, 32.176693, 24.210329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042215, 0.246526, -0.968216,
		-0.699486, -0.699250, -0.147544,
		-0.713398, 0.671025, 0.201960,
		38.846565, 32.378002, 24.270918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793598, 31.939150, 23.536015>,  <39.345943, 31.908283, 24.129545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793598, 31.939150, 23.536015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819046, 32.293568, 23.719702>,  <38.834312, 32.506218, 23.829914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819046, 32.293568, 23.719702>,  <38.793598, 31.939150, 23.536015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819046, 32.293568, 23.719702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056627, 0.462614, -0.884750,
		-0.996366, 0.030282, 0.079605,
		0.063618, 0.886043, 0.459218,
		38.838131, 32.559380, 23.857468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494953, 32.432976, 23.043306>,  <38.793598, 31.939150, 23.536015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494953, 32.432976, 23.043306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.637089, 32.706940, 23.297750>,  <38.722370, 32.871319, 23.450417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.637089, 32.706940, 23.297750>,  <38.494953, 32.432976, 23.043306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637089, 32.706940, 23.297750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149012, 0.630313, -0.761906,
		-0.922782, 0.365526, 0.121918,
		0.355343, 0.684906, 0.636110,
		38.743690, 32.912411, 23.488583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134895, 33.100788, 22.886450>,  <38.494953, 32.432976, 23.043306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134895, 33.100788, 22.886450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473232, 33.191856, 23.079414>,  <38.676235, 33.246498, 23.195194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473232, 33.191856, 23.079414>,  <38.134895, 33.100788, 22.886450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473232, 33.191856, 23.079414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240855, 0.643915, -0.726197,
		-0.475969, 0.730437, 0.489811,
		0.845838, 0.227674, 0.482413,
		38.726982, 33.260159, 23.224138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133724, 33.769760, 22.864515>,  <38.134895, 33.100788, 22.886450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133724, 33.769760, 22.864515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518105, 33.692051, 22.943329>,  <38.748734, 33.645424, 22.990618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518105, 33.692051, 22.943329>,  <38.133724, 33.769760, 22.864515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518105, 33.692051, 22.943329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276203, 0.716267, -0.640839,
		-0.016631, 0.670239, 0.741959,
		0.960956, -0.194273, 0.197034,
		38.806393, 33.633770, 23.002439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418282, 34.437828, 22.912058>,  <38.133724, 33.769760, 22.864515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418282, 34.437828, 22.912058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716148, 34.187542, 22.819151>,  <38.894867, 34.037369, 22.763407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716148, 34.187542, 22.819151>,  <38.418282, 34.437828, 22.912058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716148, 34.187542, 22.819151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390999, 0.691006, -0.607973,
		0.540918, 0.361920, 0.759224,
		0.744666, -0.625719, -0.232267,
		38.939548, 33.999825, 22.749472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003765, 34.948399, 22.803242>,  <38.418282, 34.437828, 22.912058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003765, 34.948399, 22.803242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071495, 34.604073, 22.611275>,  <39.112133, 34.397476, 22.496096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071495, 34.604073, 22.611275>,  <39.003765, 34.948399, 22.803242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071495, 34.604073, 22.611275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323210, 0.508520, -0.798087,
		0.931055, -0.019976, 0.364331,
		0.169327, -0.860819, -0.479916,
		39.122292, 34.345825, 22.467300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241905, 35.699875, 22.939928>,  <39.003765, 34.948399, 22.803242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241905, 35.699875, 22.939928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934853, 35.956173, 22.934507>,  <38.750622, 36.109951, 22.931255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934853, 35.956173, 22.934507>,  <39.241905, 35.699875, 22.939928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934853, 35.956173, 22.934507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324934, -0.370877, 0.869982,
		0.552414, 0.672228, 0.492898,
		-0.767631, 0.640749, -0.013552,
		38.704563, 36.148399, 22.930441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194599, 35.780895, 23.627264>,  <39.241905, 35.699875, 22.939928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194599, 35.780895, 23.627264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.857422, 35.920544, 23.463524>,  <38.655117, 36.004333, 23.365280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.857422, 35.920544, 23.463524>,  <39.194599, 35.780895, 23.627264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857422, 35.920544, 23.463524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525230, -0.369153, 0.766720,
		0.116568, 0.861301, 0.494543,
		-0.842939, 0.349124, -0.409349,
		38.604542, 36.025280, 23.340719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773388, 36.173145, 24.207102>,  <39.194599, 35.780895, 23.627264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773388, 36.173145, 24.207102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.509075, 36.061497, 23.928402>,  <38.350487, 35.994507, 23.761183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.509075, 36.061497, 23.928402>,  <38.773388, 36.173145, 24.207102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509075, 36.061497, 23.928402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634125, -0.289031, 0.717179,
		-0.401560, 0.915726, 0.013992,
		-0.660784, -0.279118, -0.696748,
		38.310841, 35.977760, 23.719378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204735, 36.578438, 24.323729>,  <38.773388, 36.173145, 24.207102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204735, 36.578438, 24.323729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.030350, 36.277199, 24.126637>,  <37.925716, 36.096455, 24.008381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.030350, 36.277199, 24.126637>,  <38.204735, 36.578438, 24.323729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030350, 36.277199, 24.126637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607670, -0.157515, 0.778413,
		-0.663830, 0.638778, -0.388962,
		-0.435966, -0.753094, -0.492730,
		37.899559, 36.051270, 23.978817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445454, 36.629051, 24.269136>,  <38.204735, 36.578438, 24.323729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445454, 36.629051, 24.269136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534290, 36.239868, 24.243773>,  <37.587593, 36.006359, 24.228554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534290, 36.239868, 24.243773>,  <37.445454, 36.629051, 24.269136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534290, 36.239868, 24.243773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795378, -0.218404, 0.565396,
		-0.563958, -0.075133, -0.822378,
		0.222091, -0.972962, -0.063411,
		37.600918, 35.947979, 24.224749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831268, 36.265274, 24.354950>,  <37.445454, 36.629051, 24.269136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831268, 36.265274, 24.354950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045891, 35.928051, 24.369703>,  <37.174664, 35.725716, 24.378555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045891, 35.928051, 24.369703>,  <36.831268, 36.265274, 24.354950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045891, 35.928051, 24.369703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669073, -0.398379, 0.627404,
		-0.514245, -0.361314, -0.777820,
		0.536557, -0.843058, 0.036881,
		37.206860, 35.675133, 24.380768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415493, 35.636395, 24.142551>,  <36.831268, 36.265274, 24.354950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415493, 35.636395, 24.142551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.703381, 35.491673, 24.379566>,  <36.876114, 35.404839, 24.521774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.703381, 35.491673, 24.379566>,  <36.415493, 35.636395, 24.142551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703381, 35.491673, 24.379566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688101, -0.485221, 0.539516,
		0.092309, -0.796024, -0.598185,
		0.719719, -0.361810, 0.592535,
		36.919296, 35.383129, 24.557327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.772411, 36.715225, 21.953781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.838654, 36.384968, 22.169516>,  <42.878399, 36.186813, 22.298956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.838654, 36.384968, 22.169516>,  <42.772411, 36.715225, 21.953781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838654, 36.384968, 22.169516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584126, 0.358517, 0.728191,
		-0.794590, -0.435630, -0.422911,
		0.165601, -0.825647, 0.539337,
		42.888332, 36.137276, 22.331316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175255, 36.559071, 22.462381>,  <42.772411, 36.715225, 21.953781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175255, 36.559071, 22.462381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.499565, 36.389874, 22.624233>,  <42.694149, 36.288353, 22.721344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.499565, 36.389874, 22.624233>,  <42.175255, 36.559071, 22.462381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499565, 36.389874, 22.624233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441297, 0.012462, 0.897274,
		-0.384585, -0.906046, -0.176563,
		0.810772, -0.422995, 0.404629,
		42.742798, 36.262974, 22.745623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948040, 35.940460, 22.824055>,  <42.175255, 36.559071, 22.462381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948040, 35.940460, 22.824055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.303909, 36.050362, 22.969923>,  <42.517433, 36.116302, 23.057444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.303909, 36.050362, 22.969923>,  <41.948040, 35.940460, 22.824055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303909, 36.050362, 22.969923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384316, 0.019390, 0.922998,
		0.246525, -0.961320, 0.122842,
		0.889678, 0.274752, 0.364670,
		42.570812, 36.132790, 23.079325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911148, 35.656429, 23.458290>,  <41.948040, 35.940460, 22.824055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911148, 35.656429, 23.458290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.227371, 35.900944, 23.472929>,  <42.417107, 36.047653, 23.481712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.227371, 35.900944, 23.472929>,  <41.911148, 35.656429, 23.458290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227371, 35.900944, 23.472929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058336, 0.015687, 0.998174,
		0.609599, -0.791251, 0.048062,
		0.790560, 0.611290, 0.036595,
		42.464539, 36.084332, 23.483908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260769, 35.386837, 23.989359>,  <41.911148, 35.656429, 23.458290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260769, 35.386837, 23.989359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407246, 35.757648, 23.957062>,  <42.495132, 35.980137, 23.937683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407246, 35.757648, 23.957062>,  <42.260769, 35.386837, 23.989359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407246, 35.757648, 23.957062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120133, 0.133140, 0.983789,
		0.922753, -0.350553, 0.160122,
		0.366189, 0.927031, -0.080743,
		42.517101, 36.035759, 23.932838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791203, 35.492676, 24.419504>,  <42.260769, 35.386837, 23.989359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791203, 35.492676, 24.419504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.643635, 35.860470, 24.365168>,  <42.555096, 36.081146, 24.332565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.643635, 35.860470, 24.365168>,  <42.791203, 35.492676, 24.419504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643635, 35.860470, 24.365168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041502, 0.129708, 0.990683,
		0.928536, 0.371116, -0.009691,
		-0.368916, 0.919483, -0.135841,
		42.532959, 36.136314, 24.324415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037411, 35.923355, 25.018314>,  <42.791203, 35.492676, 24.419504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037411, 35.923355, 25.018314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.720650, 36.121368, 24.875301>,  <42.530594, 36.240177, 24.789494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.720650, 36.121368, 24.875301>,  <43.037411, 35.923355, 25.018314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720650, 36.121368, 24.875301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212896, 0.324945, 0.921458,
		0.572330, 0.805825, -0.151935,
		-0.791905, 0.495032, -0.357533,
		42.483078, 36.269878, 24.768042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063953, 36.596901, 25.406204>,  <43.037411, 35.923355, 25.018314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063953, 36.596901, 25.406204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.696461, 36.580166, 25.249142>,  <42.475964, 36.570126, 25.154903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.696461, 36.580166, 25.249142>,  <43.063953, 36.596901, 25.406204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696461, 36.580166, 25.249142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372311, 0.423110, 0.826052,
		0.131580, 0.905112, -0.404301,
		-0.918733, -0.041834, -0.392656,
		42.420841, 36.567616, 25.131344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691711, 37.271931, 25.521347>,  <43.063953, 36.596901, 25.406204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691711, 37.271931, 25.521347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.402519, 36.997677, 25.487398>,  <42.229004, 36.833122, 25.467028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.402519, 36.997677, 25.487398>,  <42.691711, 37.271931, 25.521347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402519, 36.997677, 25.487398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457144, 0.382656, 0.802866,
		-0.517996, 0.619256, -0.590087,
		-0.722980, -0.685636, -0.084874,
		42.185627, 36.791985, 25.461935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148502, 37.638538, 25.693588>,  <42.691711, 37.271931, 25.521347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148502, 37.638538, 25.693588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021858, 37.260124, 25.721235>,  <41.945869, 37.033077, 25.737823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021858, 37.260124, 25.721235>,  <42.148502, 37.638538, 25.693588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021858, 37.260124, 25.721235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534953, 0.238255, 0.810593,
		-0.783315, 0.219671, -0.581518,
		-0.316613, -0.946033, 0.069115,
		41.926876, 36.976315, 25.741970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477432, 37.638649, 25.869503>,  <42.148502, 37.638538, 25.693588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477432, 37.638649, 25.869503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581326, 37.266357, 25.972488>,  <41.643661, 37.042984, 26.034279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581326, 37.266357, 25.972488>,  <41.477432, 37.638649, 25.869503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581326, 37.266357, 25.972488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432342, 0.126325, 0.892817,
		-0.863493, -0.343204, -0.369582,
		0.259731, -0.930727, 0.257462,
		41.659245, 36.987141, 26.049726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941574, 37.348293, 26.148382>,  <41.477432, 37.638649, 25.869503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941574, 37.348293, 26.148382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227901, 37.106808, 26.288744>,  <41.399696, 36.961914, 26.372961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227901, 37.106808, 26.288744>,  <40.941574, 37.348293, 26.148382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227901, 37.106808, 26.288744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387415, 0.074735, 0.918871,
		-0.580964, -0.793687, -0.180393,
		0.715814, -0.603718, 0.350904,
		41.442646, 36.925694, 26.394014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286480, 37.408562, 25.865700>,  <40.941574, 37.348293, 26.148382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286480, 37.408562, 25.865700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071918, 37.745193, 25.840351>,  <39.943184, 37.947174, 25.825142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071918, 37.745193, 25.840351>,  <40.286480, 37.408562, 25.865700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071918, 37.745193, 25.840351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551310, 0.292555, -0.781325,
		-0.639008, -0.454042, -0.620899,
		-0.536401, 0.841581, -0.063373,
		39.910999, 37.997669, 25.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206757, 37.505203, 25.220303>,  <40.286480, 37.408562, 25.865700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206757, 37.505203, 25.220303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.137253, 37.875923, 25.353474>,  <40.095551, 38.098354, 25.433376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.137253, 37.875923, 25.353474>,  <40.206757, 37.505203, 25.220303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137253, 37.875923, 25.353474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650255, 0.361869, -0.667997,
		-0.739579, 0.100421, -0.665536,
		-0.173757, 0.926804, 0.332930,
		40.085125, 38.153965, 25.453352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085938, 37.865318, 24.606968>,  <40.206757, 37.505203, 25.220303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085938, 37.865318, 24.606968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191238, 38.123264, 24.893978>,  <40.254421, 38.278034, 25.066185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191238, 38.123264, 24.893978>,  <40.085938, 37.865318, 24.606968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191238, 38.123264, 24.893978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608291, 0.466323, -0.642281,
		-0.748784, 0.605549, -0.269504,
		0.263257, 0.644867, 0.717525,
		40.270214, 38.316723, 25.109236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170475, 38.606014, 24.311430>,  <40.085938, 37.865318, 24.606968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170475, 38.606014, 24.311430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391682, 38.619637, 24.644421>,  <40.524406, 38.627811, 24.844215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391682, 38.619637, 24.644421>,  <40.170475, 38.606014, 24.311430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391682, 38.619637, 24.644421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679380, 0.559960, -0.474223,
		-0.482304, 0.827819, 0.286528,
		0.553015, 0.034058, 0.832475,
		40.557587, 38.629852, 24.894163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202858, 39.331245, 24.414608>,  <40.170475, 38.606014, 24.311430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202858, 39.331245, 24.414608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491776, 39.132927, 24.607468>,  <40.665127, 39.013935, 24.723185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491776, 39.132927, 24.607468>,  <40.202858, 39.331245, 24.414608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491776, 39.132927, 24.607468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691562, 0.523246, -0.497952,
		-0.005398, 0.693106, 0.720815,
		0.722297, -0.495800, 0.482150,
		40.708466, 38.984188, 24.752113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622673, 39.763905, 24.604954>,  <40.202858, 39.331245, 24.414608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622673, 39.763905, 24.604954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874222, 39.453716, 24.627466>,  <41.025150, 39.267605, 24.640974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874222, 39.453716, 24.627466>,  <40.622673, 39.763905, 24.604954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874222, 39.453716, 24.627466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587570, 0.426587, -0.687594,
		0.509200, 0.465477, 0.723911,
		0.628870, -0.775471, 0.056282,
		41.062881, 39.221073, 24.644350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273441, 40.015320, 24.720055>,  <40.622673, 39.763905, 24.604954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273441, 40.015320, 24.720055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343197, 39.648064, 24.577732>,  <41.385052, 39.427708, 24.492338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343197, 39.648064, 24.577732>,  <41.273441, 40.015320, 24.720055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343197, 39.648064, 24.577732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444590, 0.395833, -0.803527,
		0.878594, -0.018060, 0.477227,
		0.174391, -0.918145, -0.355806,
		41.395515, 39.372620, 24.470991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910408, 40.127605, 24.266172>,  <41.273441, 40.015320, 24.720055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910408, 40.127605, 24.266172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799664, 39.758198, 24.160000>,  <41.733215, 39.536552, 24.096296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799664, 39.758198, 24.160000>,  <41.910408, 40.127605, 24.266172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799664, 39.758198, 24.160000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427193, 0.129136, -0.894891,
		0.860728, -0.361152, 0.358770,
		-0.276862, -0.923522, -0.265433,
		41.716606, 39.481140, 24.080370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460766, 39.893532, 23.949148>,  <41.910408, 40.127605, 24.266172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460766, 39.893532, 23.949148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.165813, 39.668819, 23.799120>,  <41.988842, 39.533993, 23.709103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.165813, 39.668819, 23.799120>,  <42.460766, 39.893532, 23.949148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165813, 39.668819, 23.799120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508968, -0.097019, -0.855300,
		0.444102, -0.821578, 0.357468,
		-0.737377, -0.561780, -0.375071,
		41.944599, 39.500286, 23.686598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773323, 39.344048, 23.598106>,  <42.460766, 39.893532, 23.949148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773323, 39.344048, 23.598106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.413227, 39.387997, 23.429588>,  <42.197170, 39.414368, 23.328478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.413227, 39.387997, 23.429588>,  <42.773323, 39.344048, 23.598106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413227, 39.387997, 23.429588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387171, -0.240577, -0.890068,
		-0.199144, -0.964392, 0.174040,
		-0.900245, 0.109869, -0.421294,
		42.143154, 39.420959, 23.303200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850761, 38.863037, 23.127384>,  <42.773323, 39.344048, 23.598106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850761, 38.863037, 23.127384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539978, 39.092869, 23.024466>,  <42.353508, 39.230766, 22.962715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539978, 39.092869, 23.024466>,  <42.850761, 38.863037, 23.127384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539978, 39.092869, 23.024466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238648, -0.109387, -0.964926,
		-0.582571, -0.811106, -0.052134,
		-0.776954, 0.574580, -0.257294,
		42.306892, 39.265244, 22.947277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550625, 38.497322, 22.567871>,  <42.850761, 38.863037, 23.127384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550625, 38.497322, 22.567871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.435814, 38.879097, 22.535200>,  <42.366928, 39.108162, 22.515598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.435814, 38.879097, 22.535200>,  <42.550625, 38.497322, 22.567871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435814, 38.879097, 22.535200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053250, -0.069237, -0.996178,
		-0.956441, -0.290281, -0.030950,
		-0.287028, 0.954434, -0.081678,
		42.349705, 39.165428, 22.510696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872032, 38.597916, 22.183325>,  <42.550625, 38.497322, 22.567871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872032, 38.597916, 22.183325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.058544, 38.950359, 22.151749>,  <42.170452, 39.161827, 22.132803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.058544, 38.950359, 22.151749>,  <41.872032, 38.597916, 22.183325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058544, 38.950359, 22.151749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229707, 0.034419, -0.972651,
		-0.854296, 0.471657, 0.218446,
		0.466276, 0.881110, -0.078939,
		42.198425, 39.214691, 22.128067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218460, 38.344463, 22.409046>,  <41.872032, 38.597916, 22.183325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218460, 38.344463, 22.409046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032135, 38.281776, 22.060688>,  <40.920341, 38.244164, 21.851673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032135, 38.281776, 22.060688>,  <41.218460, 38.344463, 22.409046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032135, 38.281776, 22.060688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741340, -0.468255, 0.480783,
		-0.483149, 0.869584, 0.101936,
		-0.465813, -0.156721, -0.870894,
		40.892391, 38.234760, 21.799419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542656, 38.736038, 22.512154>,  <41.218460, 38.344463, 22.409046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542656, 38.736038, 22.512154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511810, 38.458889, 22.225384>,  <40.493301, 38.292599, 22.053322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511810, 38.458889, 22.225384>,  <40.542656, 38.736038, 22.512154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511810, 38.458889, 22.225384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864903, -0.311217, 0.393810,
		-0.495979, 0.650442, -0.575265,
		-0.077118, -0.692870, -0.716926,
		40.488674, 38.251026, 22.010305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796371, 38.627270, 22.321047>,  <40.542656, 38.736038, 22.512154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796371, 38.627270, 22.321047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982075, 38.293613, 22.201931>,  <40.093498, 38.093422, 22.130461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982075, 38.293613, 22.201931>,  <39.796371, 38.627270, 22.321047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982075, 38.293613, 22.201931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742210, -0.549866, 0.383109,
		-0.483310, 0.043162, -0.874384,
		0.464259, -0.834137, -0.297791,
		40.121353, 38.043373, 22.112593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234829, 38.230072, 21.976435>,  <39.796371, 38.627270, 22.321047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234829, 38.230072, 21.976435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.536114, 37.974670, 22.039658>,  <39.716885, 37.821430, 22.077591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.536114, 37.974670, 22.039658>,  <39.234829, 38.230072, 21.976435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536114, 37.974670, 22.039658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651680, -0.691715, 0.311196,
		-0.089369, -0.337400, -0.937110,
		0.753210, -0.638507, 0.158058,
		39.762077, 37.783119, 22.087074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124859, 37.550365, 21.556311>,  <39.234829, 38.230072, 21.976435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124859, 37.550365, 21.556311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354977, 37.436539, 21.863050>,  <39.493046, 37.368244, 22.047094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354977, 37.436539, 21.863050>,  <39.124859, 37.550365, 21.556311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354977, 37.436539, 21.863050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716537, -0.627479, 0.304703,
		0.394475, -0.724771, -0.564887,
		0.575295, -0.284565, 0.766850,
		39.527565, 37.351170, 22.093105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027821, 36.946362, 21.435854>,  <39.124859, 37.550365, 21.556311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027821, 36.946362, 21.435854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146400, 37.014969, 21.811663>,  <39.217548, 37.056133, 22.037148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146400, 37.014969, 21.811663>,  <39.027821, 36.946362, 21.435854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146400, 37.014969, 21.811663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707357, -0.621534, 0.336662,
		0.641688, -0.764380, -0.062930,
		0.296451, 0.171518, 0.939520,
		39.235336, 37.066425, 22.093519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868183, 36.327847, 21.779623>,  <39.027821, 36.946362, 21.435854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868183, 36.327847, 21.779623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.925369, 36.530666, 22.119616>,  <38.959682, 36.652359, 22.323610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.925369, 36.530666, 22.119616>,  <38.868183, 36.327847, 21.779623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925369, 36.530666, 22.119616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441031, -0.736185, 0.513345,
		0.886032, -0.448258, 0.118374,
		0.142966, 0.507047, 0.849979,
		38.968258, 36.682781, 22.374609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082294, 35.780632, 22.186026>,  <38.868183, 36.327847, 21.779623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082294, 35.780632, 22.186026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958954, 36.084465, 22.415094>,  <38.884949, 36.266766, 22.552536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958954, 36.084465, 22.415094>,  <39.082294, 35.780632, 22.186026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958954, 36.084465, 22.415094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420851, -0.648814, 0.633976,
		0.853116, -0.045526, 0.519732,
		-0.308347, 0.759584, 0.572673,
		38.866451, 36.312340, 22.586897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452099, 35.151352, 22.263988>,  <39.082294, 35.780632, 22.186026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452099, 35.151352, 22.263988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351482, 34.778332, 22.160383>,  <39.291115, 34.554520, 22.098221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351482, 34.778332, 22.160383>,  <39.452099, 35.151352, 22.263988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351482, 34.778332, 22.160383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231328, 0.201931, -0.951689,
		0.939796, -0.299303, 0.164930,
		-0.251539, -0.932546, -0.259011,
		39.276020, 34.498569, 22.082680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905754, 35.000931, 21.829973>,  <39.452099, 35.151352, 22.263988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905754, 35.000931, 21.829973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626427, 34.744331, 21.702957>,  <39.458828, 34.590374, 21.626747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626427, 34.744331, 21.702957>,  <39.905754, 35.000931, 21.829973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626427, 34.744331, 21.702957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275580, 0.168476, -0.946399,
		0.660608, -0.748398, 0.059132,
		-0.698322, -0.641495, -0.317540,
		39.416931, 34.551884, 21.607695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256733, 34.638359, 21.340921>,  <39.905754, 35.000931, 21.829973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256733, 34.638359, 21.340921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.874332, 34.576553, 21.241167>,  <39.644894, 34.539471, 21.181314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.874332, 34.576553, 21.241167>,  <40.256733, 34.638359, 21.340921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874332, 34.576553, 21.241167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227640, 0.145551, -0.962806,
		0.185066, -0.977210, -0.103973,
		-0.955998, -0.154514, -0.249389,
		39.587532, 34.530201, 21.166351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226692, 34.155991, 20.738171>,  <40.256733, 34.638359, 21.340921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226692, 34.155991, 20.738171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878220, 34.351849, 20.723755>,  <39.669136, 34.469364, 20.715105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878220, 34.351849, 20.723755>,  <40.226692, 34.155991, 20.738171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878220, 34.351849, 20.723755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176345, 0.243557, -0.953720,
		-0.458203, -0.837217, -0.298527,
		-0.871179, 0.489641, -0.036041,
		39.616867, 34.498741, 20.712942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044556, 34.117031, 20.045687>,  <40.226692, 34.155991, 20.738171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044556, 34.117031, 20.045687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805252, 34.414398, 20.165289>,  <39.661671, 34.592819, 20.237051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805252, 34.414398, 20.165289>,  <40.044556, 34.117031, 20.045687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805252, 34.414398, 20.165289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036719, 0.398196, -0.916565,
		-0.800459, -0.537367, -0.265523,
		-0.598262, 0.743423, 0.299008,
		39.625774, 34.637424, 20.254992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584301, 34.281296, 19.527643>,  <40.044556, 34.117031, 20.045687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584301, 34.281296, 19.527643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.621464, 34.607498, 19.756142>,  <39.643761, 34.803219, 19.893240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.621464, 34.607498, 19.756142>,  <39.584301, 34.281296, 19.527643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621464, 34.607498, 19.756142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066155, 0.577515, -0.813695,
		-0.993474, 0.037809, 0.107606,
		0.092909, 0.815504, 0.571245,
		39.649338, 34.852150, 19.927515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392365, 34.935146, 19.108343>,  <39.584301, 34.281296, 19.527643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392365, 34.935146, 19.108343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.538277, 35.150108, 19.412483>,  <39.625824, 35.279083, 19.594967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.538277, 35.150108, 19.412483>,  <39.392365, 34.935146, 19.108343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538277, 35.150108, 19.412483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417277, 0.635668, -0.649467,
		-0.832355, 0.554190, 0.007634,
		0.364781, 0.537401, 0.760352,
		39.647713, 35.311329, 19.640589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163345, 35.645664, 19.119390>,  <39.392365, 34.935146, 19.108343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163345, 35.645664, 19.119390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.514202, 35.634022, 19.311132>,  <39.724716, 35.627037, 19.426178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.514202, 35.634022, 19.311132>,  <39.163345, 35.645664, 19.119390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514202, 35.634022, 19.311132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331393, 0.759107, -0.560299,
		-0.347574, 0.650314, 0.675488,
		0.877138, -0.029107, 0.479356,
		39.777344, 35.625290, 19.454939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244656, 36.348446, 19.533506>,  <39.163345, 35.645664, 19.119390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244656, 36.348446, 19.533506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598312, 36.171787, 19.472536>,  <39.810509, 36.065792, 19.435953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598312, 36.171787, 19.472536>,  <39.244656, 36.348446, 19.533506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598312, 36.171787, 19.472536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311054, 0.799856, -0.513299,
		0.348618, 0.406417, 0.844565,
		0.884144, -0.441651, -0.152427,
		39.863556, 36.039291, 19.426807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.505199, 30.914259, 33.685898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874348, 30.800251, 33.789490>,  <35.095837, 30.731846, 33.851643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874348, 30.800251, 33.789490>,  <34.505199, 30.914259, 33.685898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874348, 30.800251, 33.789490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292964, 0.083130, -0.952503,
		0.249954, 0.954910, 0.160219,
		0.922873, -0.285021, 0.258976,
		35.151211, 30.714745, 33.867184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025208, 31.408253, 33.500340>,  <34.505199, 30.914259, 33.685898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025208, 31.408253, 33.500340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240845, 31.071753, 33.516712>,  <35.370228, 30.869852, 33.526535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240845, 31.071753, 33.516712>,  <35.025208, 31.408253, 33.500340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240845, 31.071753, 33.516712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342399, 0.174496, -0.923209,
		0.769506, 0.511713, 0.382113,
		0.539095, -0.841250, 0.040935,
		35.402573, 30.819378, 33.528992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672371, 31.621029, 33.422401>,  <35.025208, 31.408253, 33.500340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672371, 31.621029, 33.422401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694992, 31.230124, 33.340664>,  <35.708565, 30.995581, 33.291622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694992, 31.230124, 33.340664>,  <35.672371, 31.621029, 33.422401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694992, 31.230124, 33.340664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298542, 0.211864, -0.930584,
		0.952720, -0.008379, 0.303735,
		0.056553, -0.977263, -0.204348,
		35.711960, 30.936945, 33.279358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372540, 31.340776, 33.129147>,  <35.672371, 31.621029, 33.422401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372540, 31.340776, 33.129147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089691, 31.084492, 33.009499>,  <35.919983, 30.930721, 32.937710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089691, 31.084492, 33.009499>,  <36.372540, 31.340776, 33.129147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089691, 31.084492, 33.009499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340606, 0.062066, -0.938155,
		0.619651, -0.765270, 0.174342,
		-0.707121, -0.640710, -0.299115,
		35.877556, 30.892279, 32.919765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651550, 30.717451, 32.848217>,  <36.372540, 31.340776, 33.129147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651550, 30.717451, 32.848217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293739, 30.774511, 32.678757>,  <36.079052, 30.808746, 32.577080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293739, 30.774511, 32.678757>,  <36.651550, 30.717451, 32.848217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293739, 30.774511, 32.678757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434257, 0.052447, -0.899261,
		-0.106061, -0.988383, -0.108862,
		-0.894523, 0.142650, -0.423649,
		36.025383, 30.817307, 32.551662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891960, 30.636856, 32.271069>,  <36.651550, 30.717451, 32.848217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891960, 30.636856, 32.271069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516743, 30.746542, 32.186333>,  <36.291611, 30.812353, 32.135490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516743, 30.746542, 32.186333>,  <36.891960, 30.636856, 32.271069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516743, 30.746542, 32.186333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233363, 0.048020, -0.971203,
		-0.256144, -0.960469, -0.109037,
		-0.938047, 0.274214, -0.211838,
		36.235329, 30.828806, 32.122780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723732, 30.201939, 31.698183>,  <36.891960, 30.636856, 32.271069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723732, 30.201939, 31.698183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486637, 30.523998, 31.690218>,  <36.344379, 30.717234, 31.685438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486637, 30.523998, 31.690218>,  <36.723732, 30.201939, 31.698183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486637, 30.523998, 31.690218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111246, 0.057359, -0.992136,
		-0.797677, -0.590290, -0.123569,
		-0.592736, 0.805151, -0.019913,
		36.308815, 30.765543, 31.684244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255466, 30.031160, 31.070320>,  <36.723732, 30.201939, 31.698183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255466, 30.031160, 31.070320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228504, 30.423418, 31.143852>,  <36.212326, 30.658773, 31.187971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228504, 30.423418, 31.143852>,  <36.255466, 30.031160, 31.070320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228504, 30.423418, 31.143852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081332, 0.189035, -0.978596,
		-0.994405, -0.051010, -0.092500,
		-0.067404, 0.980645, 0.183829,
		36.208282, 30.717611, 31.199001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912922, 30.347528, 30.491680>,  <36.255466, 30.031160, 31.070320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912922, 30.347528, 30.491680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114628, 30.652790, 30.653332>,  <36.235649, 30.835947, 30.750322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114628, 30.652790, 30.653332>,  <35.912922, 30.347528, 30.491680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114628, 30.652790, 30.653332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115054, 0.404437, -0.907300,
		-0.855853, 0.504012, 0.116138,
		0.504261, 0.763153, 0.404127,
		36.265907, 30.881737, 30.774570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738869, 30.796774, 29.955599>,  <35.912922, 30.347528, 30.491680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738869, 30.796774, 29.955599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015156, 30.969215, 30.187826>,  <36.180927, 31.072680, 30.327162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015156, 30.969215, 30.187826>,  <35.738869, 30.796774, 29.955599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015156, 30.969215, 30.187826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317828, 0.540168, -0.779233,
		-0.649534, 0.722750, 0.236087,
		0.690718, 0.431103, 0.580568,
		36.222370, 31.098547, 30.361996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635155, 31.543341, 29.900837>,  <35.738869, 30.796774, 29.955599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635155, 31.543341, 29.900837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011806, 31.475174, 30.016973>,  <36.237797, 31.434275, 30.086655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011806, 31.475174, 30.016973>,  <35.635155, 31.543341, 29.900837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011806, 31.475174, 30.016973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336613, 0.462138, -0.820439,
		0.005637, 0.870280, 0.492526,
		0.941626, -0.170415, 0.290342,
		36.294296, 31.424049, 30.104076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982349, 32.203144, 29.882137>,  <35.635155, 31.543341, 29.900837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982349, 32.203144, 29.882137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286201, 31.943005, 29.883522>,  <36.468513, 31.786921, 29.884354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286201, 31.943005, 29.883522>,  <35.982349, 32.203144, 29.882137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286201, 31.943005, 29.883522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409214, 0.473823, -0.779766,
		0.505481, 0.593748, 0.626061,
		0.759627, -0.650349, 0.003461,
		36.514091, 31.747900, 29.884560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920856, 32.920933, 29.735474>,  <35.982349, 32.203144, 29.882137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920856, 32.920933, 29.735474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553425, 32.847286, 29.595583>,  <35.332966, 32.803097, 29.511648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553425, 32.847286, 29.595583>,  <35.920856, 32.920933, 29.735474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553425, 32.847286, 29.595583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307140, -0.224366, 0.924838,
		-0.248748, 0.956953, 0.149548,
		-0.918580, -0.184120, -0.349729,
		35.277851, 32.792049, 29.490664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468933, 33.189026, 30.309059>,  <35.920856, 32.920933, 29.735474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468933, 33.189026, 30.309059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168961, 33.030144, 30.097464>,  <34.988979, 32.934814, 29.970507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168961, 33.030144, 30.097464>,  <35.468933, 33.189026, 30.309059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168961, 33.030144, 30.097464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590302, 0.040888, 0.806146,
		-0.298580, 0.916816, -0.265137,
		-0.749929, -0.397210, -0.528990,
		34.943981, 32.910980, 29.938766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901592, 33.641109, 30.457294>,  <35.468933, 33.189026, 30.309059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901592, 33.641109, 30.457294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817810, 33.270256, 30.333006>,  <34.767540, 33.047745, 30.258432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817810, 33.270256, 30.333006>,  <34.901592, 33.641109, 30.457294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817810, 33.270256, 30.333006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511016, -0.167134, 0.843166,
		-0.833662, 0.335386, -0.438775,
		-0.209452, -0.927136, -0.310721,
		34.754974, 32.992115, 30.239790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242874, 33.604836, 30.432409>,  <34.901592, 33.641109, 30.457294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242874, 33.604836, 30.432409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354855, 33.221764, 30.459187>,  <34.422043, 32.991920, 30.475252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354855, 33.221764, 30.459187>,  <34.242874, 33.604836, 30.432409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354855, 33.221764, 30.459187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631364, -0.131139, 0.764318,
		-0.723191, -0.256240, -0.641355,
		0.279955, -0.957676, 0.066943,
		34.438843, 32.934460, 30.479269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572437, 33.260548, 30.519968>,  <34.242874, 33.604836, 30.432409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572437, 33.260548, 30.519968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840416, 33.012226, 30.682829>,  <34.001202, 32.863232, 30.780546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840416, 33.012226, 30.682829>,  <33.572437, 33.260548, 30.519968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840416, 33.012226, 30.682829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471765, 0.067475, 0.879139,
		-0.573247, -0.781055, -0.247669,
		0.669945, -0.620805, 0.407154,
		34.041401, 32.825985, 30.804976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250881, 32.710663, 30.676802>,  <33.572437, 33.260548, 30.519968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250881, 32.710663, 30.676802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581818, 32.709671, 30.901478>,  <33.780380, 32.709076, 31.036283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581818, 32.709671, 30.901478>,  <33.250881, 32.710663, 30.676802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581818, 32.709671, 30.901478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561657, -0.015176, 0.827231,
		0.006483, -0.999882, -0.013942,
		0.827345, -0.002468, 0.561689,
		33.830021, 32.708927, 31.069984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203587, 32.195358, 31.223377>,  <33.250881, 32.710663, 30.676802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203587, 32.195358, 31.223377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495796, 32.426273, 31.369293>,  <33.671120, 32.564823, 31.456842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495796, 32.426273, 31.369293>,  <33.203587, 32.195358, 31.223377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495796, 32.426273, 31.369293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437135, -0.015085, 0.899270,
		0.524643, -0.816399, 0.241334,
		0.730522, 0.577291, 0.364790,
		33.714954, 32.599461, 31.478731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373024, 31.931490, 31.891994>,  <33.203587, 32.195358, 31.223377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373024, 31.931490, 31.891994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524673, 32.301628, 31.891483>,  <33.615662, 32.523712, 31.891176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524673, 32.301628, 31.891483>,  <33.373024, 31.931490, 31.891994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524673, 32.301628, 31.891483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342794, 0.141727, 0.928658,
		0.859512, -0.351634, 0.370935,
		0.379119, 0.925347, -0.001278,
		33.638409, 32.579231, 31.891100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770035, 32.009090, 32.499126>,  <33.373024, 31.931490, 31.891994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770035, 32.009090, 32.499126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653610, 32.377731, 32.396412>,  <33.583755, 32.598915, 32.334785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653610, 32.377731, 32.396412>,  <33.770035, 32.009090, 32.499126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653610, 32.377731, 32.396412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307631, 0.163992, 0.937267,
		0.905896, 0.351795, 0.235782,
		-0.291060, 0.921600, -0.256782,
		33.566292, 32.654213, 32.319378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778328, 32.247242, 33.089443>,  <33.770035, 32.009090, 32.499126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778328, 32.247242, 33.089443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591717, 32.532131, 32.879646>,  <33.479752, 32.703064, 32.753769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591717, 32.532131, 32.879646>,  <33.778328, 32.247242, 33.089443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591717, 32.532131, 32.879646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294190, 0.434275, 0.851386,
		0.834150, 0.551494, 0.006929,
		-0.466525, 0.712222, -0.524494,
		33.451759, 32.745796, 32.722298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928986, 32.866447, 33.375107>,  <33.778328, 32.247242, 33.089443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928986, 32.866447, 33.375107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578354, 32.895599, 33.184826>,  <33.367973, 32.913090, 33.070660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578354, 32.895599, 33.184826>,  <33.928986, 32.866447, 33.375107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578354, 32.895599, 33.184826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416572, 0.380048, 0.825852,
		0.240978, 0.922091, -0.302784,
		-0.876583, 0.072881, -0.475700,
		33.315380, 32.917465, 33.042114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678993, 33.498611, 33.641342>,  <33.928986, 32.866447, 33.375107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678993, 33.498611, 33.641342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347458, 33.375668, 33.454342>,  <33.148537, 33.301899, 33.342140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347458, 33.375668, 33.454342>,  <33.678993, 33.498611, 33.641342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347458, 33.375668, 33.454342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554967, 0.557697, 0.617240,
		0.071008, 0.771039, -0.632816,
		-0.828836, -0.307363, -0.467502,
		33.098808, 33.283459, 33.314091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319931, 34.104870, 33.490601>,  <33.678993, 33.498611, 33.641342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319931, 34.104870, 33.490601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053200, 33.806812, 33.494762>,  <32.893162, 33.627979, 33.497261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053200, 33.806812, 33.494762>,  <33.319931, 34.104870, 33.490601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053200, 33.806812, 33.494762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666073, 0.602213, 0.440098,
		-0.334201, 0.286539, -0.897889,
		-0.666826, -0.745141, 0.010404,
		32.853153, 33.583271, 33.497883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673306, 34.372749, 33.348579>,  <33.319931, 34.104870, 33.490601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673306, 34.372749, 33.348579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.595203, 34.035534, 33.549046>,  <32.548344, 33.833206, 33.669323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.595203, 34.035534, 33.549046>,  <32.673306, 34.372749, 33.348579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595203, 34.035534, 33.549046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732141, 0.465294, 0.497464,
		-0.652569, -0.269790, -0.708073,
		-0.195251, -0.843039, 0.501161,
		32.536629, 33.782623, 33.699394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219135, 34.822941, 32.993080>,  <32.673306, 34.372749, 33.348579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219135, 34.822941, 32.993080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484180, 35.001335, 33.233761>,  <32.643208, 35.108372, 33.378170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484180, 35.001335, 33.233761>,  <32.219135, 34.822941, 32.993080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484180, 35.001335, 33.233761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510601, 0.318751, -0.798552,
		-0.547937, 0.836356, -0.016515,
		0.662610, 0.445989, 0.601699,
		32.682964, 35.135132, 33.414272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381741, 35.412384, 32.778049>,  <32.219135, 34.822941, 32.993080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381741, 35.412384, 32.778049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695610, 35.387680, 33.024780>,  <32.883930, 35.372856, 33.172817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695610, 35.387680, 33.024780>,  <32.381741, 35.412384, 32.778049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695610, 35.387680, 33.024780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585297, 0.401639, -0.704354,
		-0.204238, 0.913713, 0.351305,
		0.784675, -0.061762, 0.616823,
		32.931011, 35.369152, 33.209827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678783, 35.963360, 32.642265>,  <32.381741, 35.412384, 32.778049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678783, 35.963360, 32.642265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967358, 35.747837, 32.816265>,  <33.140503, 35.618523, 32.920666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967358, 35.747837, 32.816265>,  <32.678783, 35.963360, 32.642265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967358, 35.747837, 32.816265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654999, 0.327065, -0.681179,
		0.224749, 0.776349, 0.588872,
		0.721432, -0.538805, 0.435000,
		33.183788, 35.586197, 32.946766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266724, 36.464520, 32.718052>,  <32.678783, 35.963360, 32.642265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266724, 36.464520, 32.718052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410595, 36.093727, 32.760662>,  <33.496918, 35.871254, 32.786228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410595, 36.093727, 32.760662>,  <33.266724, 36.464520, 32.718052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410595, 36.093727, 32.760662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791359, 0.242564, -0.561171,
		0.494352, 0.286142, 0.820816,
		0.359675, -0.926976, 0.106529,
		33.518497, 35.815636, 32.792622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055576, 36.505436, 32.935635>,  <33.266724, 36.464520, 32.718052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055576, 36.505436, 32.935635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979485, 36.149227, 32.770329>,  <33.933830, 35.935501, 32.671146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979485, 36.149227, 32.770329>,  <34.055576, 36.505436, 32.935635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979485, 36.149227, 32.770329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531981, 0.260285, -0.805759,
		0.825111, -0.373129, 0.424225,
		-0.190233, -0.890520, -0.413261,
		33.922413, 35.882072, 32.646351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768501, 36.225220, 32.886490>,  <34.055576, 36.505436, 32.935635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768501, 36.225220, 32.886490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523682, 36.038284, 32.631310>,  <34.376789, 35.926125, 32.478199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523682, 36.038284, 32.631310>,  <34.768501, 36.225220, 32.886490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523682, 36.038284, 32.631310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615112, 0.225672, -0.755453,
		0.497022, -0.854790, 0.149342,
		-0.612052, -0.467339, -0.637955,
		34.340065, 35.898083, 32.439922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251045, 35.817982, 32.470570>,  <34.768501, 36.225220, 32.886490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251045, 35.817982, 32.470570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901142, 35.868938, 32.283566>,  <34.691200, 35.899513, 32.171364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901142, 35.868938, 32.283566>,  <35.251045, 35.817982, 32.470570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901142, 35.868938, 32.283566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484459, 0.249632, -0.838441,
		0.009891, -0.959924, -0.280086,
		-0.874758, 0.127397, -0.467513,
		34.638714, 35.907158, 32.143311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562771, 35.590420, 31.840508>,  <35.251045, 35.817982, 32.470570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562771, 35.590420, 31.840508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198223, 35.710766, 31.728159>,  <34.979496, 35.782974, 31.660749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198223, 35.710766, 31.728159>,  <35.562771, 35.590420, 31.840508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198223, 35.710766, 31.728159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372767, 0.314016, -0.873177,
		-0.174508, -0.900486, -0.398336,
		-0.911368, 0.300862, -0.280873,
		34.924812, 35.801025, 31.643896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437908, 35.290127, 31.173901>,  <35.562771, 35.590420, 31.840508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437908, 35.290127, 31.173901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188805, 35.600994, 31.210058>,  <35.039341, 35.787514, 31.231752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188805, 35.600994, 31.210058>,  <35.437908, 35.290127, 31.173901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188805, 35.600994, 31.210058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013899, 0.126505, -0.991869,
		-0.782288, -0.616441, -0.089584,
		-0.622762, 0.777172, 0.090395,
		35.001976, 35.834145, 31.237177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927193, 35.233006, 30.677958>,  <35.437908, 35.290127, 31.173901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927193, 35.233006, 30.677958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961044, 35.620941, 30.769384>,  <34.981354, 35.853703, 30.824240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961044, 35.620941, 30.769384>,  <34.927193, 35.233006, 30.677958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961044, 35.620941, 30.769384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266287, 0.199034, -0.943120,
		-0.960172, 0.140677, -0.241413,
		0.084626, 0.969843, 0.228568,
		34.986431, 35.911896, 30.837955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536121, 35.611546, 30.094051>,  <34.927193, 35.233006, 30.677958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536121, 35.611546, 30.094051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801582, 35.823437, 30.305315>,  <34.960857, 35.950573, 30.432074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801582, 35.823437, 30.305315>,  <34.536121, 35.611546, 30.094051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801582, 35.823437, 30.305315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413395, 0.328721, -0.849145,
		-0.623436, 0.781874, -0.000833,
		0.663650, 0.529732, 0.528159,
		35.000679, 35.982357, 30.463762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596401, 36.224052, 29.693710>,  <34.536121, 35.611546, 30.094051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596401, 36.224052, 29.693710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923168, 36.212727, 29.924135>,  <35.119228, 36.205933, 30.062389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923168, 36.212727, 29.924135>,  <34.596401, 36.224052, 29.693710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923168, 36.212727, 29.924135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564728, 0.242174, -0.788945,
		-0.117171, 0.969820, 0.213825,
		0.816917, -0.028311, 0.576060,
		35.168243, 36.204231, 30.096952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865028, 36.962700, 29.680185>,  <34.596401, 36.224052, 29.693710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865028, 36.962700, 29.680185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180817, 36.744854, 29.793417>,  <35.370289, 36.614147, 29.861355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180817, 36.744854, 29.793417>,  <34.865028, 36.962700, 29.680185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180817, 36.744854, 29.793417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571392, 0.483662, -0.663010,
		0.224174, 0.685172, 0.693026,
		0.789466, -0.544619, 0.283077,
		35.417656, 36.581467, 29.878340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392418, 37.393959, 29.767317>,  <34.865028, 36.962700, 29.680185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392418, 37.393959, 29.767317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586819, 37.045620, 29.737823>,  <35.703457, 36.836617, 29.720127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586819, 37.045620, 29.737823>,  <35.392418, 37.393959, 29.767317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586819, 37.045620, 29.737823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694560, 0.436067, -0.572218,
		0.530464, 0.226886, 0.816781,
		0.485999, -0.870844, -0.073732,
		35.732620, 36.784367, 29.715704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028496, 37.474499, 29.951351>,  <35.392418, 37.393959, 29.767317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028496, 37.474499, 29.951351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034454, 37.155872, 29.709604>,  <36.038029, 36.964695, 29.564556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034454, 37.155872, 29.709604>,  <36.028496, 37.474499, 29.951351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034454, 37.155872, 29.709604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693993, 0.443376, -0.567267,
		0.719827, -0.410977, 0.559416,
		0.014898, -0.796565, -0.604369,
		36.038925, 36.916904, 29.528294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671776, 37.452435, 29.711004>,  <36.028496, 37.474499, 29.951351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671776, 37.452435, 29.711004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516674, 37.188267, 29.453793>,  <36.423611, 37.029766, 29.299465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516674, 37.188267, 29.453793>,  <36.671776, 37.452435, 29.711004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516674, 37.188267, 29.453793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668957, 0.278309, -0.689232,
		0.634146, -0.697413, 0.333878,
		-0.387758, -0.660424, -0.643027,
		36.400345, 36.990139, 29.260885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202122, 37.010147, 29.344717>,  <36.671776, 37.452435, 29.711004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202122, 37.010147, 29.344717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882259, 36.988995, 29.105469>,  <36.690342, 36.976303, 28.961920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882259, 36.988995, 29.105469>,  <37.202122, 37.010147, 29.344717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882259, 36.988995, 29.105469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569485, 0.248985, -0.783386,
		0.190348, -0.967063, -0.168989,
		-0.799659, -0.052879, -0.598121,
		36.642361, 36.973129, 28.926033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443192, 36.741879, 28.791023>,  <37.202122, 37.010147, 29.344717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443192, 36.741879, 28.791023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101128, 36.916351, 28.678993>,  <36.895889, 37.021034, 28.611776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101128, 36.916351, 28.678993>,  <37.443192, 36.741879, 28.791023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101128, 36.916351, 28.678993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448813, 0.352712, -0.821073,
		-0.259354, -0.827851, -0.497391,
		-0.855162, 0.436184, -0.280073,
		36.844578, 37.047207, 28.594971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442963, 36.555908, 28.107807>,  <37.443192, 36.741879, 28.791023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442963, 36.555908, 28.107807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171017, 36.845783, 28.152727>,  <37.007847, 37.019707, 28.179678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171017, 36.845783, 28.152727>,  <37.442963, 36.555908, 28.107807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171017, 36.845783, 28.152727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280208, 0.398229, -0.873440,
		-0.677689, -0.562358, -0.473806,
		-0.679869, 0.724684, 0.112298,
		36.967056, 37.063187, 28.186417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155487, 36.623688, 27.477057>,  <37.442963, 36.555908, 28.107807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155487, 36.623688, 27.477057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122643, 36.957386, 27.695152>,  <37.102936, 37.157604, 27.826010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122643, 36.957386, 27.695152>,  <37.155487, 36.623688, 27.477057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122643, 36.957386, 27.695152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551311, 0.493781, -0.672485,
		-0.830249, 0.245378, -0.500477,
		-0.082113, 0.834248, 0.545241,
		37.098007, 37.207661, 27.858725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894989, 37.121731, 27.011509>,  <37.155487, 36.623688, 27.477057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894989, 37.121731, 27.011509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096039, 37.317093, 27.296839>,  <37.216667, 37.434311, 27.468037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096039, 37.317093, 27.296839>,  <36.894989, 37.121731, 27.011509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096039, 37.317093, 27.296839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540738, 0.466181, -0.700198,
		-0.674518, 0.737657, -0.029785,
		0.502621, 0.488403, 0.713327,
		37.246826, 37.463615, 27.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000153, 37.701984, 26.646046>,  <36.894989, 37.121731, 27.011509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000153, 37.701984, 26.646046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232025, 37.699078, 26.971972>,  <37.371147, 37.697334, 27.167526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232025, 37.699078, 26.971972>,  <37.000153, 37.701984, 26.646046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232025, 37.699078, 26.971972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717075, 0.479481, -0.505867,
		-0.387009, 0.877522, 0.283158,
		0.579679, -0.007270, 0.814813,
		37.405930, 37.696896, 27.216415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356705, 38.397968, 26.617914>,  <37.000153, 37.701984, 26.646046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356705, 38.397968, 26.617914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579475, 38.151646, 26.840847>,  <37.713139, 38.003853, 26.974607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579475, 38.151646, 26.840847>,  <37.356705, 38.397968, 26.617914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579475, 38.151646, 26.840847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827670, 0.355545, -0.434224,
		0.069240, 0.703118, 0.707694,
		0.556927, -0.615803, 0.557332,
		37.746555, 37.966904, 27.008047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997478, 38.822071, 26.735106>,  <37.356705, 38.397968, 26.617914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997478, 38.822071, 26.735106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087532, 38.439796, 26.810982>,  <38.141563, 38.210434, 26.856508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087532, 38.439796, 26.810982>,  <37.997478, 38.822071, 26.735106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087532, 38.439796, 26.810982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918390, 0.143130, -0.368882,
		0.325384, 0.257260, 0.909914,
		0.225134, -0.955684, 0.189692,
		38.155071, 38.153091, 26.867889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592560, 38.745903, 27.163689>,  <37.997478, 38.822071, 26.735106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592560, 38.745903, 27.163689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579521, 38.376614, 27.010532>,  <38.571697, 38.155041, 26.918638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579521, 38.376614, 27.010532>,  <38.592560, 38.745903, 27.163689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579521, 38.376614, 27.010532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875934, 0.158104, -0.455787,
		0.481328, -0.350243, 0.803526,
		-0.032596, -0.923219, -0.382890,
		38.569744, 38.099648, 26.895666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280796, 38.521904, 27.230318>,  <38.592560, 38.745903, 27.163689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280796, 38.521904, 27.230318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.097828, 38.296516, 26.955139>,  <38.988049, 38.161285, 26.790031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.097828, 38.296516, 26.955139>,  <39.280796, 38.521904, 27.230318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097828, 38.296516, 26.955139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817525, 0.037926, -0.574642,
		0.349883, -0.825268, 0.443299,
		-0.457422, -0.563466, -0.687948,
		38.960602, 38.127476, 26.748755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729454, 37.943436, 27.035194>,  <39.280796, 38.521904, 27.230318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729454, 37.943436, 27.035194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.491791, 37.989750, 26.716806>,  <39.349194, 38.017540, 26.525774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.491791, 37.989750, 26.716806>,  <39.729454, 37.943436, 27.035194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491791, 37.989750, 26.716806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800049, -0.017126, -0.599691,
		-0.083070, -0.993126, -0.082461,
		-0.594156, 0.115789, -0.795972,
		39.313545, 38.024487, 26.478014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057804, 37.523701, 26.581665>,  <39.729454, 37.943436, 27.035194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057804, 37.523701, 26.581665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832397, 37.783787, 26.377836>,  <39.697151, 37.939838, 26.255539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832397, 37.783787, 26.377836>,  <40.057804, 37.523701, 26.581665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832397, 37.783787, 26.377836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711277, 0.068167, -0.699598,
		-0.420157, -0.756682, -0.500900,
		-0.563518, 0.650219, -0.509570,
		39.663342, 37.978851, 26.224964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617744, 36.984905, 26.661636>,  <40.057804, 37.523701, 26.581665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617744, 36.984905, 26.661636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976006, 36.841934, 26.767509>,  <41.190964, 36.756153, 26.831034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976006, 36.841934, 26.767509>,  <40.617744, 36.984905, 26.661636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976006, 36.841934, 26.767509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337029, -0.157124, 0.928291,
		-0.290209, -0.920629, -0.261191,
		0.895651, -0.357427, 0.264680,
		41.244701, 36.734707, 26.846914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470467, 36.320560, 26.901056>,  <40.617744, 36.984905, 26.661636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470467, 36.320560, 26.901056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.820442, 36.430367, 27.060614>,  <41.030430, 36.496250, 27.156347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.820442, 36.430367, 27.060614>,  <40.470467, 36.320560, 26.901056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820442, 36.430367, 27.060614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314726, -0.303655, 0.899300,
		0.367999, -0.912378, -0.179283,
		0.874942, 0.274517, 0.398894,
		41.082924, 36.512722, 27.180283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630211, 35.851738, 27.306726>,  <40.470467, 36.320560, 26.901056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630211, 35.851738, 27.306726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.871323, 36.134808, 27.454155>,  <41.015991, 36.304649, 27.542612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.871323, 36.134808, 27.454155>,  <40.630211, 35.851738, 27.306726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871323, 36.134808, 27.454155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278276, -0.246466, 0.928341,
		0.747807, -0.662152, 0.048364,
		0.602783, 0.707678, 0.368570,
		41.052158, 36.347111, 27.564726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909229, 35.529610, 27.899445>,  <40.630211, 35.851738, 27.306726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909229, 35.529610, 27.899445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.968204, 35.921196, 27.955854>,  <41.003590, 36.156147, 27.989700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.968204, 35.921196, 27.955854>,  <40.909229, 35.529610, 27.899445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968204, 35.921196, 27.955854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203867, -0.109443, 0.972862,
		0.967832, -0.172191, 0.183442,
		0.147442, 0.978965, 0.141027,
		41.012436, 36.214886, 27.998163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320362, 35.609154, 28.496359>,  <40.909229, 35.529610, 27.899445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320362, 35.609154, 28.496359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.115112, 35.947933, 28.440678>,  <40.991962, 36.151199, 28.407269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.115112, 35.947933, 28.440678>,  <41.320362, 35.609154, 28.496359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115112, 35.947933, 28.440678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383473, -0.081120, 0.919983,
		0.767887, 0.525447, 0.366407,
		-0.513125, 0.846950, -0.139204,
		40.961174, 36.202019, 28.398916>
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
