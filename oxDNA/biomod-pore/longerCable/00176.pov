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
	<24.312738, 34.800907, 35.382664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308010, 34.867722, 34.988312>,  <24.305174, 34.907810, 34.751701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308010, 34.867722, 34.988312>,  <24.312738, 34.800907, 35.382664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308010, 34.867722, 34.988312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275646, 0.947203, 0.163784,
		0.961186, 0.273690, 0.034845,
		-0.011821, 0.167032, -0.985880,
		24.304464, 34.917831, 34.692547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017559, 34.607079, 35.185246>,  <24.312738, 34.800907, 35.382664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017559, 34.607079, 35.185246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014215, 34.207500, 35.167160>,  <25.012209, 33.967754, 35.156307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014215, 34.207500, 35.167160>,  <25.017559, 34.607079, 35.185246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014215, 34.207500, 35.167160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855547, -0.030551, 0.516822,
		-0.517657, -0.034361, 0.854898,
		-0.008359, -0.998942, -0.045213,
		25.011707, 33.907818, 35.153595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465338, 33.980392, 35.338161>,  <25.017559, 34.607079, 35.185246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465338, 33.980392, 35.338161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156834, 34.144299, 35.532997>,  <24.971731, 34.242641, 35.649899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156834, 34.144299, 35.532997>,  <25.465338, 33.980392, 35.338161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156834, 34.144299, 35.532997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562006, 0.079104, 0.823342,
		0.298846, 0.908755, -0.291300,
		-0.771259, 0.409764, 0.487086,
		24.925455, 34.267227, 35.679123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739679, 34.637459, 35.488274>,  <25.465338, 33.980392, 35.338161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739679, 34.637459, 35.488274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490147, 34.416218, 35.709148>,  <25.340427, 34.283474, 35.841675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490147, 34.416218, 35.709148>,  <25.739679, 34.637459, 35.488274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490147, 34.416218, 35.709148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691834, -0.062109, 0.719381,
		-0.363594, 0.830796, 0.421400,
		-0.623831, -0.553101, 0.552190,
		25.302998, 34.250286, 35.874805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699026, 34.967110, 36.130074>,  <25.739679, 34.637459, 35.488274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699026, 34.967110, 36.130074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648018, 34.571922, 36.165089>,  <25.617413, 34.334812, 36.186096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648018, 34.571922, 36.165089>,  <25.699026, 34.967110, 36.130074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648018, 34.571922, 36.165089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700602, -0.027252, 0.713032,
		-0.702065, 0.152254, 0.695646,
		-0.127519, -0.987966, 0.087537,
		25.609762, 34.275532, 36.191349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827234, 34.724667, 36.780704>,  <25.699026, 34.967110, 36.130074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827234, 34.724667, 36.780704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955645, 34.426998, 36.546391>,  <26.032690, 34.248398, 36.405804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955645, 34.426998, 36.546391>,  <25.827234, 34.724667, 36.780704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955645, 34.426998, 36.546391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844324, -0.055306, 0.532971,
		-0.429021, -0.665691, 0.610571,
		0.321026, -0.744175, -0.585786,
		26.051952, 34.203747, 36.370655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163576, 34.310650, 37.195198>,  <25.827234, 34.724667, 36.780704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163576, 34.310650, 37.195198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302074, 34.262951, 36.822983>,  <26.385174, 34.234333, 36.599655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302074, 34.262951, 36.822983>,  <26.163576, 34.310650, 37.195198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302074, 34.262951, 36.822983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933326, -0.056617, 0.354538,
		-0.094962, -0.991249, 0.091693,
		0.346244, -0.119247, -0.930534,
		26.405949, 34.227177, 36.543823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668715, 33.883194, 37.278618>,  <26.163576, 34.310650, 37.195198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668715, 33.883194, 37.278618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758453, 34.068703, 36.935787>,  <26.812296, 34.180008, 36.730087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758453, 34.068703, 36.935787>,  <26.668715, 33.883194, 37.278618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758453, 34.068703, 36.935787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974509, -0.106998, 0.197187,
		-0.000256, -0.879470, -0.475954,
		0.224346, 0.463771, -0.857079,
		26.825758, 34.207832, 36.678665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143972, 33.390896, 36.951904>,  <26.668715, 33.883194, 37.278618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143972, 33.390896, 36.951904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178556, 33.759163, 36.799644>,  <27.199306, 33.980125, 36.708290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178556, 33.759163, 36.799644>,  <27.143972, 33.390896, 36.951904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178556, 33.759163, 36.799644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986378, -0.025443, 0.162513,
		0.139937, -0.389512, -0.910329,
		0.086462, 0.920670, -0.380646,
		27.204494, 34.035362, 36.685452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780672, 33.275932, 36.618973>,  <27.143972, 33.390896, 36.951904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780672, 33.275932, 36.618973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717819, 33.669792, 36.649353>,  <27.680107, 33.906109, 36.667583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717819, 33.669792, 36.649353>,  <27.780672, 33.275932, 36.618973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717819, 33.669792, 36.649353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946678, 0.128275, 0.295544,
		0.281265, 0.118343, -0.952305,
		-0.157132, 0.984653, 0.075953,
		27.670679, 33.965187, 36.672138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352673, 33.504116, 36.226578>,  <27.780672, 33.275932, 36.618973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352673, 33.504116, 36.226578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214430, 33.805332, 36.450539>,  <28.131485, 33.986061, 36.584915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214430, 33.805332, 36.450539>,  <28.352673, 33.504116, 36.226578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214430, 33.805332, 36.450539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903617, 0.106175, 0.414974,
		0.253045, 0.649352, -0.717155,
		-0.345607, 0.753040, 0.559898,
		28.110748, 34.031242, 36.618507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953339, 34.070312, 36.300362>,  <28.352673, 33.504116, 36.226578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953339, 34.070312, 36.300362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676285, 34.082024, 36.588638>,  <28.510052, 34.089050, 36.761604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676285, 34.082024, 36.588638>,  <28.953339, 34.070312, 36.300362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676285, 34.082024, 36.588638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721289, 0.028297, 0.692056,
		-0.000132, 0.999171, -0.040716,
		-0.692634, 0.029276, 0.720694,
		28.468494, 34.090805, 36.804848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232956, 33.639175, 36.888023>,  <28.953339, 34.070312, 36.300362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232956, 33.639175, 36.888023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225445, 33.699978, 37.283302>,  <29.220938, 33.736462, 37.520470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225445, 33.699978, 37.283302>,  <29.232956, 33.639175, 36.888023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225445, 33.699978, 37.283302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902288, 0.423216, -0.082247,
		-0.430725, -0.893186, 0.129209,
		-0.018778, 0.152010, 0.988201,
		29.219810, 33.745583, 37.579762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616421, 33.303654, 37.226849>,  <29.232956, 33.639175, 36.888023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616421, 33.303654, 37.226849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766277, 33.650150, 37.359074>,  <28.856192, 33.858047, 37.438408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766277, 33.650150, 37.359074>,  <28.616421, 33.303654, 37.226849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766277, 33.650150, 37.359074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823622, 0.474660, -0.310395,
		-0.425782, -0.155973, 0.891281,
		0.374643, 0.866239, 0.330564,
		28.878670, 33.910023, 37.458244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116495, 33.751461, 37.472435>,  <28.616421, 33.303654, 37.226849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116495, 33.751461, 37.472435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391733, 34.026684, 37.380260>,  <28.556877, 34.191818, 37.324955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391733, 34.026684, 37.380260>,  <28.116495, 33.751461, 37.472435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391733, 34.026684, 37.380260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724028, 0.630031, -0.280792,
		-0.048019, 0.360054, 0.931695,
		0.688097, 0.688057, -0.230435,
		28.598162, 34.233101, 37.311131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985371, 34.416416, 37.857002>,  <28.116495, 33.751461, 37.472435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985371, 34.416416, 37.857002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126957, 34.400837, 37.483223>,  <28.211908, 34.391491, 37.258957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126957, 34.400837, 37.483223>,  <27.985371, 34.416416, 37.857002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126957, 34.400837, 37.483223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911305, 0.210313, -0.353966,
		0.210313, 0.976858, 0.038949,
		0.353966, -0.038949, -0.934447,
		28.233147, 34.389153, 37.202888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764595, 34.963970, 37.471954>,  <27.985371, 34.416416, 37.857002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764595, 34.963970, 37.471954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863922, 34.683220, 37.204906>,  <27.923519, 34.514771, 37.044678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863922, 34.683220, 37.204906>,  <27.764595, 34.963970, 37.471954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863922, 34.683220, 37.204906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875655, 0.132057, -0.464530,
		0.414204, 0.699956, -0.581805,
		0.248319, -0.701871, -0.667619,
		27.938417, 34.472660, 37.004620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601187, 35.237377, 36.724293>,  <27.764595, 34.963970, 37.471954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601187, 35.237377, 36.724293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627666, 34.840019, 36.686802>,  <27.643555, 34.601604, 36.664307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627666, 34.840019, 36.686802>,  <27.601187, 35.237377, 36.724293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627666, 34.840019, 36.686802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900015, -0.018893, -0.435449,
		0.430802, 0.113182, -0.895321,
		0.066201, -0.993395, -0.093726,
		27.647526, 34.542000, 36.658684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472622, 35.082146, 35.971153>,  <27.601187, 35.237377, 36.724293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472622, 35.082146, 35.971153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380482, 34.787666, 36.225697>,  <27.325197, 34.610981, 36.378422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380482, 34.787666, 36.225697>,  <27.472622, 35.082146, 35.971153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380482, 34.787666, 36.225697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944742, 0.012447, -0.327577,
		0.233240, -0.676655, -0.698381,
		-0.230350, -0.736195, 0.636362,
		27.311377, 34.566807, 36.416607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046345, 34.647545, 35.463139>,  <27.472622, 35.082146, 35.971153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046345, 34.647545, 35.463139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981730, 34.529766, 35.839905>,  <26.942961, 34.459099, 36.065964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981730, 34.529766, 35.839905>,  <27.046345, 34.647545, 35.463139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981730, 34.529766, 35.839905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984688, -0.015299, -0.173653,
		0.065542, -0.955545, -0.287469,
		-0.161536, -0.294448, 0.941916,
		26.933270, 34.441433, 36.122478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497049, 34.033413, 35.483295>,  <27.046345, 34.647545, 35.463139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497049, 34.033413, 35.483295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518850, 34.241230, 35.824379>,  <26.531931, 34.365921, 36.029030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518850, 34.241230, 35.824379>,  <26.497049, 34.033413, 35.483295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518850, 34.241230, 35.824379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979513, 0.193620, -0.055362,
		-0.193863, -0.832218, 0.519452,
		0.054503, 0.519543, 0.852705,
		26.535202, 34.397095, 36.080189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766382, 33.291859, 35.547680>,  <26.497049, 34.033413, 35.483295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766382, 33.291859, 35.547680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436644, 33.472935, 35.411724>,  <26.238800, 33.581581, 35.330151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436644, 33.472935, 35.411724>,  <26.766382, 33.291859, 35.547680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436644, 33.472935, 35.411724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564906, -0.696617, 0.442274,
		-0.036558, 0.556591, 0.829982,
		-0.824345, 0.452693, -0.339889,
		26.189341, 33.608742, 35.309757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305243, 33.590488, 35.276772>,  <26.766382, 33.291859, 35.547680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305243, 33.590488, 35.276772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467146, 33.350021, 35.001160>,  <27.564289, 33.205742, 34.835793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467146, 33.350021, 35.001160>,  <27.305243, 33.590488, 35.276772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467146, 33.350021, 35.001160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506788, 0.479726, -0.716260,
		0.761141, 0.639105, -0.110493,
		0.404759, -0.601172, -0.689030,
		27.588573, 33.169670, 34.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454796, 34.057365, 34.846561>,  <27.305243, 33.590488, 35.276772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454796, 34.057365, 34.846561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443703, 33.699844, 34.667522>,  <27.437046, 33.485332, 34.560101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443703, 33.699844, 34.667522>,  <27.454796, 34.057365, 34.846561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443703, 33.699844, 34.667522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698363, 0.337697, -0.631070,
		0.715206, 0.295085, -0.633566,
		-0.027734, -0.893804, -0.447599,
		27.435383, 33.431702, 34.533241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402309, 34.136036, 34.092556>,  <27.454796, 34.057365, 34.846561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402309, 34.136036, 34.092556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256451, 33.768658, 34.153862>,  <27.168936, 33.548229, 34.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256451, 33.768658, 34.153862>,  <27.402309, 34.136036, 34.092556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256451, 33.768658, 34.153862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730446, 0.180066, -0.658806,
		0.577479, -0.352186, -0.736535,
		-0.364647, -0.918445, 0.153269,
		27.147057, 33.493126, 34.199844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207766, 33.740334, 33.370197>,  <27.402309, 34.136036, 34.092556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207766, 33.740334, 33.370197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998171, 33.622456, 33.689846>,  <26.872414, 33.551727, 33.881634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998171, 33.622456, 33.689846>,  <27.207766, 33.740334, 33.370197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998171, 33.622456, 33.689846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851289, 0.211234, -0.480299,
		-0.027259, -0.931952, -0.361555,
		-0.523989, -0.294696, 0.799119,
		26.840975, 33.534046, 33.929581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638445, 33.827103, 32.842373>,  <27.207766, 33.740334, 33.370197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638445, 33.827103, 32.842373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638262, 34.049244, 32.509727>,  <27.638151, 34.182529, 32.310139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638262, 34.049244, 32.509727>,  <27.638445, 33.827103, 32.842373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638262, 34.049244, 32.509727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995239, 0.080796, 0.054503,
		0.097460, 0.827682, 0.552671,
		-0.000458, 0.555351, -0.831616,
		27.638124, 34.215851, 32.260242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341074, 34.486473, 33.065308>,  <27.638445, 33.827103, 32.842373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341074, 34.486473, 33.065308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285881, 34.442322, 32.671600>,  <27.252766, 34.415833, 32.435375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285881, 34.442322, 32.671600>,  <27.341074, 34.486473, 33.065308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285881, 34.442322, 32.671600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975596, 0.186523, 0.115849,
		0.170801, 0.976230, -0.133423,
		-0.137982, -0.110379, -0.984265,
		27.244486, 34.409206, 32.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890408, 35.005974, 33.015644>,  <27.341074, 34.486473, 33.065308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890408, 35.005974, 33.015644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856339, 34.776012, 32.690136>,  <26.835897, 34.638035, 32.494831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856339, 34.776012, 32.690136>,  <26.890408, 35.005974, 33.015644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856339, 34.776012, 32.690136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978405, 0.202638, -0.040754,
		0.188331, 0.792730, -0.579750,
		-0.085173, -0.574906, -0.813775,
		26.830786, 34.603542, 32.446003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430479, 35.393192, 32.654846>,  <26.890408, 35.005974, 33.015644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430479, 35.393192, 32.654846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433031, 35.023895, 32.501179>,  <26.434563, 34.802319, 32.408978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433031, 35.023895, 32.501179>,  <26.430479, 35.393192, 32.654846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433031, 35.023895, 32.501179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996575, 0.025804, -0.078563,
		0.082446, 0.383350, -0.919916,
		0.006380, -0.923242, -0.384164,
		26.434946, 34.746922, 32.385929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976576, 35.383934, 32.051163>,  <26.430479, 35.393192, 32.654846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976576, 35.383934, 32.051163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993662, 35.010639, 32.193844>,  <26.003914, 34.786663, 32.279453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993662, 35.010639, 32.193844>,  <25.976576, 35.383934, 32.051163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993662, 35.010639, 32.193844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994991, -0.072032, -0.069313,
		0.090380, -0.351959, -0.931642,
		0.042713, -0.933239, 0.356706,
		26.006475, 34.730667, 32.300858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643118, 34.933769, 31.658300>,  <25.976576, 35.383934, 32.051163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643118, 34.933769, 31.658300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621920, 34.731083, 32.002495>,  <25.609201, 34.609470, 32.209011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621920, 34.731083, 32.002495>,  <25.643118, 34.933769, 31.658300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621920, 34.731083, 32.002495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989726, -0.087936, -0.112738,
		0.132793, -0.857619, -0.496845,
		-0.052995, -0.506712, 0.860485,
		25.606022, 34.579071, 32.260639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320084, 34.341873, 31.504223>,  <25.643118, 34.933769, 31.658300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320084, 34.341873, 31.504223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297554, 34.357674, 31.903275>,  <25.284037, 34.367153, 32.142708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297554, 34.357674, 31.903275>,  <25.320084, 34.341873, 31.504223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297554, 34.357674, 31.903275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976598, -0.209915, -0.046824,
		0.207568, -0.976921, 0.050403,
		-0.056324, 0.039504, 0.997630,
		25.280657, 34.369526, 32.202564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565643, 34.341908, 31.502434>,  <25.320084, 34.341873, 31.504223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565643, 34.341908, 31.502434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582994, 34.196686, 31.130131>,  <24.593405, 34.109550, 30.906750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582994, 34.196686, 31.130131>,  <24.565643, 34.341908, 31.502434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582994, 34.196686, 31.130131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826642, 0.536232, -0.170640,
		0.561054, -0.762000, 0.323380,
		0.043379, -0.363058, -0.930756,
		24.596008, 34.087769, 30.850904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969976, 34.801517, 31.963226>,  <24.565643, 34.341908, 31.502434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969976, 34.801517, 31.963226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009708, 34.755196, 31.567909>,  <25.033546, 34.727402, 31.330719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009708, 34.755196, 31.567909>,  <24.969976, 34.801517, 31.963226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009708, 34.755196, 31.567909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037224, -0.992077, 0.119991,
		-0.994358, -0.048706, -0.094233,
		0.099331, -0.115806, -0.988293,
		25.039507, 34.720455, 31.271421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019724, 35.373848, 32.505203>,  <24.969976, 34.801517, 31.963226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019724, 35.373848, 32.505203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.624002, 35.315617, 32.508991>,  <24.386570, 35.280678, 32.511265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.624002, 35.315617, 32.508991>,  <25.019724, 35.373848, 32.505203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.624002, 35.315617, 32.508991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133118, -0.927356, -0.349701,
		0.059688, -0.344700, 0.936813,
		-0.989301, -0.145579, 0.009467,
		24.327211, 35.271942, 32.511829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780888, 35.009956, 33.220520>,  <25.019724, 35.373848, 32.505203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780888, 35.009956, 33.220520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782103, 34.761593, 32.906967>,  <24.782831, 34.612576, 32.718838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782103, 34.761593, 32.906967>,  <24.780888, 35.009956, 33.220520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782103, 34.761593, 32.906967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999348, 0.030096, -0.019970,
		0.035991, -0.783308, 0.620591,
		0.003035, -0.620904, -0.783880,
		24.783012, 34.575321, 32.671803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121176, 34.502678, 33.464653>,  <24.780888, 35.009956, 33.220520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121176, 34.502678, 33.464653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150385, 34.466965, 33.067322>,  <25.167910, 34.445538, 32.828922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150385, 34.466965, 33.067322>,  <25.121176, 34.502678, 33.464653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150385, 34.466965, 33.067322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985508, -0.146441, 0.085610,
		-0.153107, -0.985182, 0.077291,
		0.073023, -0.089278, -0.993326,
		25.172293, 34.440182, 32.769325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516331, 33.926765, 33.369236>,  <25.121176, 34.502678, 33.464653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516331, 33.926765, 33.369236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560986, 34.150036, 33.040363>,  <25.587778, 34.283997, 32.843040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560986, 34.150036, 33.040363>,  <25.516331, 33.926765, 33.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560986, 34.150036, 33.040363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981767, -0.190042, 0.004290,
		-0.153854, -0.807667, -0.569213,
		0.111639, 0.558175, -0.822179,
		25.594477, 34.317490, 32.793709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830105, 33.590508, 32.827339>,  <25.516331, 33.926765, 33.369236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830105, 33.590508, 32.827339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907841, 33.950874, 32.672123>,  <25.954481, 34.167095, 32.578995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907841, 33.950874, 32.672123>,  <25.830105, 33.590508, 32.827339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907841, 33.950874, 32.672123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920832, -0.303890, -0.244377,
		-0.338086, -0.309828, -0.888653,
		0.194338, 0.900921, -0.388040,
		25.966143, 34.221149, 32.555710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236639, 33.446915, 32.199120>,  <25.830105, 33.590508, 32.827339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236639, 33.446915, 32.199120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298719, 33.841671, 32.216854>,  <26.335968, 34.078526, 32.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298719, 33.841671, 32.216854>,  <26.236639, 33.446915, 32.199120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298719, 33.841671, 32.216854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911219, -0.125679, -0.392282,
		-0.381566, 0.101282, -0.918776,
		0.155202, 0.986888, 0.044336,
		26.345280, 34.137737, 32.230156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312983, 33.854370, 31.495077>,  <26.236639, 33.446915, 32.199120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312983, 33.854370, 31.495077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496107, 34.073112, 31.775463>,  <26.605982, 34.204357, 31.943695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496107, 34.073112, 31.775463>,  <26.312983, 33.854370, 31.495077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496107, 34.073112, 31.775463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802538, 0.085056, -0.590506,
		-0.382545, 0.832892, -0.399937,
		0.457811, 0.546860, 0.700966,
		26.633451, 34.237171, 31.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799957, 34.254856, 31.084797>,  <26.312983, 33.854370, 31.495077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799957, 34.254856, 31.084797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941597, 34.236706, 31.458439>,  <27.026581, 34.225815, 31.682625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941597, 34.236706, 31.458439>,  <26.799957, 34.254856, 31.084797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941597, 34.236706, 31.458439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933312, -0.046435, -0.356052,
		0.059531, 0.997890, 0.025907,
		0.354098, -0.045376, 0.934107,
		27.047827, 34.223095, 31.738670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338533, 34.683743, 31.192814>,  <26.799957, 34.254856, 31.084797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338533, 34.683743, 31.192814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348110, 34.344250, 31.404125>,  <27.353855, 34.140553, 31.530912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348110, 34.344250, 31.404125>,  <27.338533, 34.683743, 31.192814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348110, 34.344250, 31.404125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776671, -0.316926, -0.544371,
		0.629451, 0.423331, 0.651600,
		0.023940, -0.848733, 0.528279,
		27.355291, 34.089630, 31.562609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005472, 34.599152, 31.687342>,  <27.338533, 34.683743, 31.192814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005472, 34.599152, 31.687342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840422, 34.275650, 31.519693>,  <27.741392, 34.081551, 31.419106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840422, 34.275650, 31.519693>,  <28.005472, 34.599152, 31.687342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840422, 34.275650, 31.519693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882437, -0.240782, -0.404140,
		0.225933, -0.536604, 0.813026,
		-0.412625, -0.808752, -0.419118,
		27.716635, 34.033024, 31.393957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633757, 34.129505, 31.784008>,  <28.005472, 34.599152, 31.687342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633757, 34.129505, 31.784008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376574, 34.006966, 31.503222>,  <28.222263, 33.933441, 31.334749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376574, 34.006966, 31.503222>,  <28.633757, 34.129505, 31.784008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376574, 34.006966, 31.503222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763947, -0.191089, -0.616336,
		0.054675, -0.932543, 0.356895,
		-0.642958, -0.306347, -0.701966,
		28.183685, 33.915062, 31.292631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203211, 34.244438, 32.370106>,  <28.633757, 34.129505, 31.784008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203211, 34.244438, 32.370106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262016, 33.995548, 32.677670>,  <28.297300, 33.846214, 32.862209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262016, 33.995548, 32.677670>,  <28.203211, 34.244438, 32.370106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262016, 33.995548, 32.677670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939001, -0.156547, -0.306218,
		0.310908, 0.767024, 0.561258,
		0.147013, -0.622228, 0.768908,
		28.306120, 33.808880, 32.908340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846327, 34.467514, 32.885712>,  <28.203211, 34.244438, 32.370106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846327, 34.467514, 32.885712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767761, 34.079685, 32.827255>,  <28.720623, 33.846989, 32.792179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767761, 34.079685, 32.827255>,  <28.846327, 34.467514, 32.885712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767761, 34.079685, 32.827255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925226, -0.133921, -0.354994,
		0.324620, -0.204941, 0.923375,
		-0.196413, -0.969569, -0.146144,
		28.708838, 33.788815, 32.783413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345778, 34.004749, 33.177269>,  <28.846327, 34.467514, 32.885712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345778, 34.004749, 33.177269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211998, 33.832417, 32.841999>,  <29.131731, 33.729015, 32.640839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211998, 33.832417, 32.841999>,  <29.345778, 34.004749, 33.177269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211998, 33.832417, 32.841999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933934, -0.032477, -0.355967,
		0.126140, -0.901848, 0.413229,
		-0.334449, -0.430830, -0.838170,
		29.111664, 33.703167, 32.590549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734852, 33.436394, 33.155697>,  <29.345778, 34.004749, 33.177269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734852, 33.436394, 33.155697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611511, 33.593010, 32.808914>,  <29.537506, 33.686981, 32.600845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611511, 33.593010, 32.808914>,  <29.734852, 33.436394, 33.155697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611511, 33.593010, 32.808914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949989, 0.079428, -0.302012,
		-0.049390, -0.916725, -0.396453,
		-0.308352, 0.391542, -0.866957,
		29.519005, 33.710472, 32.548828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045918, 33.064297, 32.563683>,  <29.734852, 33.436394, 33.155697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045918, 33.064297, 32.563683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987682, 33.443237, 32.449608>,  <29.952742, 33.670601, 32.381165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987682, 33.443237, 32.449608>,  <30.045918, 33.064297, 32.563683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987682, 33.443237, 32.449608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950102, 0.053498, -0.307318,
		-0.275881, -0.315696, -0.907869,
		-0.145589, 0.947351, -0.285185,
		29.944006, 33.727444, 32.364052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468262, 33.136677, 33.140911>,  <30.045918, 33.064297, 32.563683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468262, 33.136677, 33.140911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676695, 33.343147, 32.869019>,  <30.801754, 33.467030, 32.705883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676695, 33.343147, 32.869019>,  <30.468262, 33.136677, 33.140911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676695, 33.343147, 32.869019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841219, -0.175947, 0.511266,
		0.144306, -0.838215, -0.525900,
		0.521081, 0.516176, -0.679733,
		30.833019, 33.498001, 32.665100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919352, 32.663815, 32.626114>,  <30.468262, 33.136677, 33.140911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919352, 32.663815, 32.626114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057892, 33.025707, 32.725315>,  <31.141016, 33.242844, 32.784836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057892, 33.025707, 32.725315>,  <30.919352, 32.663815, 32.626114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057892, 33.025707, 32.725315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768204, -0.425262, 0.478555,
		0.538428, 0.024768, -0.842307,
		0.346348, 0.904731, 0.248000,
		31.161797, 33.297127, 32.799717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500906, 32.900299, 32.180611>,  <30.919352, 32.663815, 32.626114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500906, 32.900299, 32.180611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656801, 32.674473, 31.889580>,  <31.750338, 32.538975, 31.714962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656801, 32.674473, 31.889580>,  <31.500906, 32.900299, 32.180611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656801, 32.674473, 31.889580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557986, -0.773283, 0.301141,
		-0.732637, 0.288612, -0.616398,
		0.389737, -0.564568, -0.727577,
		31.773722, 32.505104, 31.671307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955492, 32.645908, 31.819853>,  <31.500906, 32.900299, 32.180611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955492, 32.645908, 31.819853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268995, 32.398064, 31.802837>,  <31.457096, 32.249355, 31.792627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268995, 32.398064, 31.802837>,  <30.955492, 32.645908, 31.819853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268995, 32.398064, 31.802837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551239, -0.725554, 0.411955,
		-0.286115, -0.299423, -0.910211,
		0.783756, -0.619610, -0.042538,
		31.504122, 32.212181, 31.790075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687954, 32.088078, 31.486292>,  <30.955492, 32.645908, 31.819853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687954, 32.088078, 31.486292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000750, 31.975332, 31.708660>,  <31.188427, 31.907684, 31.842081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000750, 31.975332, 31.708660>,  <30.687954, 32.088078, 31.486292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000750, 31.975332, 31.708660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492427, -0.826170, 0.273785,
		0.382114, -0.487847, -0.784853,
		0.781987, -0.281866, 0.555920,
		31.235346, 31.890772, 31.875437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973604, 31.317966, 31.270163>,  <30.687954, 32.088078, 31.486292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973604, 31.317966, 31.270163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043198, 31.434601, 31.646399>,  <31.084953, 31.504581, 31.872141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043198, 31.434601, 31.646399>,  <30.973604, 31.317966, 31.270163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043198, 31.434601, 31.646399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469361, -0.815128, 0.339509,
		0.865696, -0.500545, -0.004960,
		0.173983, 0.291584, 0.940589,
		31.095392, 31.522076, 31.928576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405497, 30.817274, 31.654711>,  <30.973604, 31.317966, 31.270163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405497, 30.817274, 31.654711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125330, 31.017445, 31.858274>,  <30.957230, 31.137547, 31.980412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125330, 31.017445, 31.858274>,  <31.405497, 30.817274, 31.654711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125330, 31.017445, 31.858274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446159, -0.863527, 0.235081,
		0.557097, -0.062399, 0.828100,
		-0.700418, 0.500427, 0.508908,
		30.915205, 31.167572, 32.010948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218481, 30.386272, 32.232285>,  <31.405497, 30.817274, 31.654711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218481, 30.386272, 32.232285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896608, 30.608141, 32.147594>,  <30.703484, 30.741262, 32.096783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896608, 30.608141, 32.147594>,  <31.218481, 30.386272, 32.232285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896608, 30.608141, 32.147594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569036, -0.822269, 0.008532,
		-0.169359, 0.127342, 0.977293,
		-0.804684, 0.554670, -0.211721,
		30.655203, 30.774542, 32.084080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548512, 30.341257, 32.491039>,  <31.218481, 30.386272, 32.232285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548512, 30.341257, 32.491039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665920, 30.203711, 32.134254>,  <30.736366, 30.121183, 31.920183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665920, 30.203711, 32.134254>,  <30.548512, 30.341257, 32.491039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665920, 30.203711, 32.134254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750807, 0.660479, -0.007555,
		0.591722, -0.667476, 0.452042,
		0.293521, -0.343866, -0.891965,
		30.753977, 30.100550, 31.866665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138075, 31.013453, 32.397591>,  <30.548512, 30.341257, 32.491039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138075, 31.013453, 32.397591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396246, 30.889950, 32.677044>,  <30.551149, 30.815847, 32.844715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396246, 30.889950, 32.677044>,  <30.138075, 31.013453, 32.397591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396246, 30.889950, 32.677044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675043, 0.658561, -0.332586,
		-0.357405, 0.686269, 0.633480,
		0.645429, -0.308759, 0.698634,
		30.589874, 30.797321, 32.886635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510344, 31.562056, 32.725243>,  <30.138075, 31.013453, 32.397591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510344, 31.562056, 32.725243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729858, 31.228127, 32.707779>,  <30.861568, 31.027769, 32.697300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729858, 31.228127, 32.707779>,  <30.510344, 31.562056, 32.725243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729858, 31.228127, 32.707779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788126, 0.534092, -0.305946,
		0.278726, 0.133493, 0.951048,
		0.548789, -0.834820, -0.043656,
		30.894495, 30.977680, 32.694683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063286, 31.554295, 33.174221>,  <30.510344, 31.562056, 32.725243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063286, 31.554295, 33.174221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155233, 31.360626, 32.836525>,  <31.210402, 31.244425, 32.633907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155233, 31.360626, 32.836525>,  <31.063286, 31.554295, 33.174221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155233, 31.360626, 32.836525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698303, 0.686281, -0.203450,
		0.677889, -0.542767, 0.495853,
		0.229868, -0.484173, -0.844238,
		31.224194, 31.215374, 32.583252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764307, 31.582142, 33.145241>,  <31.063286, 31.554295, 33.174221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764307, 31.582142, 33.145241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610495, 31.527407, 32.780075>,  <31.518208, 31.494566, 32.560974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610495, 31.527407, 32.780075>,  <31.764307, 31.582142, 33.145241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610495, 31.527407, 32.780075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581439, 0.732218, -0.354663,
		0.716983, -0.667182, -0.201998,
		-0.384531, -0.136837, -0.912913,
		31.495134, 31.486355, 32.506203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257408, 31.517309, 32.605312>,  <31.764307, 31.582142, 33.145241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257408, 31.517309, 32.605312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942863, 31.622496, 32.381714>,  <31.754135, 31.685608, 32.247555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942863, 31.622496, 32.381714>,  <32.257408, 31.517309, 32.605312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942863, 31.622496, 32.381714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561940, 0.680376, -0.470438,
		0.256620, -0.684059, -0.682795,
		-0.786364, 0.262966, -0.558998,
		31.706955, 31.701385, 32.214016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533020, 31.397120, 31.863153>,  <32.257408, 31.517309, 32.605312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533020, 31.397120, 31.863153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223904, 31.650984, 31.864161>,  <32.038437, 31.803303, 31.864765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223904, 31.650984, 31.864161>,  <32.533020, 31.397120, 31.863153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223904, 31.650984, 31.864161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558180, 0.681536, -0.473227,
		-0.302054, -0.364299, -0.880937,
		-0.772786, 0.634662, 0.002516,
		31.992067, 31.841383, 31.864916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573036, 31.462399, 31.016235>,  <32.533020, 31.397120, 31.863153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573036, 31.462399, 31.016235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635521, 31.748634, 31.288567>,  <32.673012, 31.920376, 31.451965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635521, 31.748634, 31.288567>,  <32.573036, 31.462399, 31.016235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635521, 31.748634, 31.288567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953945, -0.069414, 0.291841,
		0.256098, -0.695061, 0.671792,
		0.156216, 0.715592, 0.680827,
		32.682384, 31.963312, 31.492815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279465, 31.746349, 30.753763>,  <32.573036, 31.462399, 31.016235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279465, 31.746349, 30.753763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339722, 32.131439, 30.663902>,  <33.375877, 32.362492, 30.609985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339722, 32.131439, 30.663902>,  <33.279465, 31.746349, 30.753763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339722, 32.131439, 30.663902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602202, -0.269583, -0.751450,
		-0.784001, -0.022082, -0.620366,
		0.150647, 0.962724, -0.224651,
		33.384914, 32.420258, 30.596506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374874, 31.681070, 30.010077>,  <33.279465, 31.746349, 30.753763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374874, 31.681070, 30.010077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520050, 32.038086, 30.117146>,  <33.607155, 32.252296, 30.181387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520050, 32.038086, 30.117146>,  <33.374874, 31.681070, 30.010077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520050, 32.038086, 30.117146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596667, -0.001965, -0.802487,
		-0.715724, 0.450968, -0.533261,
		0.362944, 0.892538, 0.267671,
		33.628933, 32.305847, 30.197447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177536, 32.179688, 29.512310>,  <33.374874, 31.681070, 30.010077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177536, 32.179688, 29.512310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505009, 32.301556, 29.707014>,  <33.701492, 32.374676, 29.823835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505009, 32.301556, 29.707014>,  <33.177536, 32.179688, 29.512310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505009, 32.301556, 29.707014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482379, 0.095022, -0.870793,
		-0.311559, 0.947706, -0.069175,
		0.818683, 0.304672, 0.486758,
		33.750614, 32.392956, 29.853041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399643, 32.723129, 29.117670>,  <33.177536, 32.179688, 29.512310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399643, 32.723129, 29.117670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711823, 32.645275, 29.355333>,  <33.899128, 32.598564, 29.497931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711823, 32.645275, 29.355333>,  <33.399643, 32.723129, 29.117670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711823, 32.645275, 29.355333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625137, 0.258691, -0.736398,
		-0.010377, 0.946149, 0.323566,
		0.780446, -0.194632, 0.594157,
		33.945957, 32.586887, 29.533581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886616, 33.323723, 29.056805>,  <33.399643, 32.723129, 29.117670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886616, 33.323723, 29.056805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093010, 33.023853, 29.222580>,  <34.216846, 32.843933, 29.322044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093010, 33.023853, 29.222580>,  <33.886616, 33.323723, 29.056805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093010, 33.023853, 29.222580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761334, 0.179607, -0.622987,
		0.392598, 0.636975, 0.663422,
		0.515982, -0.749669, 0.414438,
		34.247803, 32.798954, 29.346910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439041, 33.664230, 29.202385>,  <33.886616, 33.323723, 29.056805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439041, 33.664230, 29.202385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522881, 33.273350, 29.188860>,  <34.573185, 33.038822, 29.180744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522881, 33.273350, 29.188860>,  <34.439041, 33.664230, 29.202385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522881, 33.273350, 29.188860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678315, 0.170224, -0.714781,
		0.704242, 0.126880, 0.698530,
		0.209598, -0.977203, -0.033815,
		34.585758, 32.980190, 29.178715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208992, 33.617851, 29.404953>,  <34.439041, 33.664230, 29.202385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208992, 33.617851, 29.404953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065422, 33.315632, 29.185745>,  <34.979279, 33.134300, 29.054220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065422, 33.315632, 29.185745>,  <35.208992, 33.617851, 29.404953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065422, 33.315632, 29.185745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617895, 0.247718, -0.746218,
		0.699556, -0.606454, 0.377936,
		-0.358925, -0.755546, -0.548018,
		34.957745, 33.088966, 29.021339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792938, 33.262241, 29.193996>,  <35.208992, 33.617851, 29.404953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792938, 33.262241, 29.193996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495663, 33.172440, 28.941877>,  <35.317299, 33.118557, 28.790606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495663, 33.172440, 28.941877>,  <35.792938, 33.262241, 29.193996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495663, 33.172440, 28.941877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611617, 0.154013, -0.776018,
		0.271297, -0.962224, 0.022853,
		-0.743184, -0.224509, -0.630296,
		35.272709, 33.105087, 28.752789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058292, 32.834915, 28.738018>,  <35.792938, 33.262241, 29.193996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058292, 32.834915, 28.738018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743092, 32.995216, 28.551062>,  <35.553970, 33.091396, 28.438889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743092, 32.995216, 28.551062>,  <36.058292, 32.834915, 28.738018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743092, 32.995216, 28.551062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571972, 0.195600, -0.796611,
		-0.227821, -0.895063, -0.383352,
		-0.788001, 0.400751, -0.467389,
		35.506691, 33.115440, 28.410845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101540, 32.544971, 28.066998>,  <36.058292, 32.834915, 28.738018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101540, 32.544971, 28.066998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875801, 32.874893, 28.053057>,  <35.740356, 33.072845, 28.044693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875801, 32.874893, 28.053057>,  <36.101540, 32.544971, 28.066998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875801, 32.874893, 28.053057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423346, 0.252903, -0.869953,
		-0.708726, -0.505708, -0.491902,
		-0.564346, 0.824803, -0.034851,
		35.706497, 33.122334, 28.042601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141365, 32.702812, 27.402338>,  <36.101540, 32.544971, 28.066998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141365, 32.702812, 27.402338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984016, 33.039066, 27.551250>,  <35.889606, 33.240818, 27.640598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984016, 33.039066, 27.551250>,  <36.141365, 32.702812, 27.402338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984016, 33.039066, 27.551250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411088, 0.523018, -0.746632,
		-0.822353, -0.140666, -0.551316,
		-0.393374, 0.840634, 0.372279,
		35.866005, 33.291256, 27.662933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998009, 33.028854, 26.836905>,  <36.141365, 32.702812, 27.402338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998009, 33.028854, 26.836905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967598, 33.316704, 27.112980>,  <35.949352, 33.489414, 27.278625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967598, 33.316704, 27.112980>,  <35.998009, 33.028854, 26.836905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967598, 33.316704, 27.112980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353670, 0.666648, -0.656124,
		-0.932275, 0.194213, -0.305196,
		-0.076031, 0.719627, 0.690186,
		35.944790, 33.532593, 27.320036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540295, 33.597103, 26.552458>,  <35.998009, 33.028854, 26.836905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540295, 33.597103, 26.552458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785561, 33.750828, 26.828526>,  <35.932720, 33.843063, 26.994167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785561, 33.750828, 26.828526>,  <35.540295, 33.597103, 26.552458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785561, 33.750828, 26.828526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334081, 0.665552, -0.667406,
		-0.715834, 0.639803, 0.279703,
		0.613165, 0.384308, 0.690171,
		35.969509, 33.866119, 27.035576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568096, 34.336384, 26.377743>,  <35.540295, 33.597103, 26.552458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568096, 34.336384, 26.377743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880741, 34.276970, 26.620071>,  <36.068329, 34.241322, 26.765469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880741, 34.276970, 26.620071>,  <35.568096, 34.336384, 26.377743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880741, 34.276970, 26.620071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527556, 0.675621, -0.514995,
		-0.332811, 0.722132, 0.606434,
		0.781615, -0.148532, 0.605819,
		36.115227, 34.232410, 26.801817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794750, 34.955662, 26.588840>,  <35.568096, 34.336384, 26.377743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794750, 34.955662, 26.588840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113914, 34.726093, 26.662550>,  <36.305412, 34.588352, 26.706776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113914, 34.726093, 26.662550>,  <35.794750, 34.955662, 26.588840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113914, 34.726093, 26.662550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540310, 0.545457, -0.640736,
		0.267220, 0.610812, 0.745320,
		0.797909, -0.573921, 0.184272,
		36.353287, 34.553917, 26.717831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360966, 35.468967, 26.711643>,  <35.794750, 34.955662, 26.588840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360966, 35.468967, 26.711643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528179, 35.118080, 26.617208>,  <36.628506, 34.907547, 26.560549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528179, 35.118080, 26.617208>,  <36.360966, 35.468967, 26.711643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528179, 35.118080, 26.617208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446703, 0.424788, -0.787408,
		0.791015, 0.223702, 0.569432,
		0.418032, -0.877219, -0.236086,
		36.653587, 34.854916, 26.546383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055870, 35.609386, 26.492077>,  <36.360966, 35.468967, 26.711643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055870, 35.609386, 26.492077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967567, 35.252056, 26.335499>,  <36.914585, 35.037659, 26.241552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967567, 35.252056, 26.335499>,  <37.055870, 35.609386, 26.492077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967567, 35.252056, 26.335499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333648, 0.307963, -0.890976,
		0.916486, -0.327292, 0.230073,
		-0.220755, -0.893330, -0.391444,
		36.901340, 34.984058, 26.218065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447033, 35.668999, 25.947979>,  <37.055870, 35.609386, 26.492077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447033, 35.668999, 25.947979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212715, 35.351158, 25.884159>,  <37.072124, 35.160454, 25.845867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212715, 35.351158, 25.884159>,  <37.447033, 35.668999, 25.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212715, 35.351158, 25.884159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117761, 0.111322, -0.986782,
		0.801861, -0.596837, 0.028361,
		-0.585791, -0.794602, -0.159549,
		37.036980, 35.112778, 25.836294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811752, 35.353504, 25.423553>,  <37.447033, 35.668999, 25.947979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811752, 35.353504, 25.423553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448551, 35.190887, 25.383070>,  <37.230629, 35.093315, 25.358780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448551, 35.190887, 25.383070>,  <37.811752, 35.353504, 25.423553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448551, 35.190887, 25.383070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112018, -0.002807, -0.993702,
		0.403702, -0.913626, 0.048089,
		-0.908007, -0.406546, -0.101209,
		37.176147, 35.068924, 25.352707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917896, 34.936470, 24.908487>,  <37.811752, 35.353504, 25.423553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917896, 34.936470, 24.908487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520454, 34.979828, 24.921108>,  <37.281990, 35.005844, 24.928680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520454, 34.979828, 24.921108>,  <37.917896, 34.936470, 24.908487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520454, 34.979828, 24.921108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011336, 0.182298, -0.983178,
		-0.112326, -0.977250, -0.179904,
		-0.993607, 0.108397, 0.031554,
		37.222374, 35.012348, 24.930574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553944, 34.486786, 24.388229>,  <37.917896, 34.936470, 24.908487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553944, 34.486786, 24.388229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314758, 34.800797, 24.452951>,  <37.171249, 34.989201, 24.491785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314758, 34.800797, 24.452951>,  <37.553944, 34.486786, 24.388229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314758, 34.800797, 24.452951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028090, 0.181225, -0.983041,
		-0.801033, -0.592365, -0.086314,
		-0.597961, 0.785023, 0.161807,
		37.135368, 35.036304, 24.501493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031013, 34.510201, 23.822882>,  <37.553944, 34.486786, 24.388229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031013, 34.510201, 23.822882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001423, 34.880100, 23.972212>,  <36.983669, 35.102039, 24.061810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001423, 34.880100, 23.972212>,  <37.031013, 34.510201, 23.822882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001423, 34.880100, 23.972212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117914, 0.363613, -0.924057,
		-0.990265, -0.112377, 0.082143,
		-0.073975, 0.924747, 0.373324,
		36.979229, 35.157524, 24.084209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555866, 34.759590, 23.492525>,  <37.031013, 34.510201, 23.822882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555866, 34.759590, 23.492525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728363, 35.088062, 23.642033>,  <36.831860, 35.285145, 23.731737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728363, 35.088062, 23.642033>,  <36.555866, 34.759590, 23.492525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728363, 35.088062, 23.642033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009009, 0.410330, -0.911893,
		-0.902193, 0.396610, 0.169552,
		0.431238, 0.821176, 0.373770,
		36.857735, 35.334415, 23.754164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287830, 35.367771, 23.180965>,  <36.555866, 34.759590, 23.492525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287830, 35.367771, 23.180965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619984, 35.553547, 23.304090>,  <36.819275, 35.665012, 23.377966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619984, 35.553547, 23.304090>,  <36.287830, 35.367771, 23.180965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619984, 35.553547, 23.304090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013823, 0.535102, -0.844674,
		-0.557016, 0.705661, 0.437921,
		0.830387, 0.464444, 0.307815,
		36.869099, 35.692879, 23.396435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140015, 36.063099, 23.042656>,  <36.287830, 35.367771, 23.180965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140015, 36.063099, 23.042656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536369, 36.010239, 23.053028>,  <36.774181, 35.978523, 23.059252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536369, 36.010239, 23.053028>,  <36.140015, 36.063099, 23.042656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536369, 36.010239, 23.053028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110315, 0.686033, -0.719158,
		0.077250, 0.715467, 0.694362,
		0.990890, -0.132154, 0.025931,
		36.833637, 35.970592, 23.060808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400963, 36.801323, 23.010563>,  <36.140015, 36.063099, 23.042656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400963, 36.801323, 23.010563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703655, 36.556519, 22.918653>,  <36.885273, 36.409637, 22.863508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703655, 36.556519, 22.918653>,  <36.400963, 36.801323, 23.010563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703655, 36.556519, 22.918653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135098, 0.490305, -0.861016,
		0.639610, 0.620519, 0.453712,
		0.756735, -0.612010, -0.229773,
		36.930676, 36.372917, 22.849722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972454, 37.190025, 22.855047>,  <36.400963, 36.801323, 23.010563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972454, 37.190025, 22.855047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047462, 36.830021, 22.697659>,  <37.092468, 36.614017, 22.603226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047462, 36.830021, 22.697659>,  <36.972454, 37.190025, 22.855047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047462, 36.830021, 22.697659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359765, 0.435673, -0.825081,
		0.914005, 0.013166, 0.405491,
		0.187524, -0.900009, -0.393470,
		37.103722, 36.560017, 22.579617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500298, 37.337727, 22.455187>,  <36.972454, 37.190025, 22.855047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500298, 37.337727, 22.455187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383869, 36.984367, 22.308281>,  <37.314011, 36.772350, 22.220139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383869, 36.984367, 22.308281>,  <37.500298, 37.337727, 22.455187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383869, 36.984367, 22.308281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356887, 0.255913, -0.898410,
		0.887643, -0.392571, 0.240785,
		-0.291069, -0.883401, -0.367263,
		37.296547, 36.719349, 22.198103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183849, 36.921459, 22.186207>,  <37.500298, 37.337727, 22.455187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183849, 36.921459, 22.186207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829590, 36.830494, 22.024267>,  <37.617035, 36.775913, 21.927103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829590, 36.830494, 22.024267>,  <38.183849, 36.921459, 22.186207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829590, 36.830494, 22.024267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284875, 0.422416, -0.860472,
		0.366696, -0.877411, -0.309330,
		-0.885653, -0.227411, -0.404851,
		37.563892, 36.762272, 21.902813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364712, 36.608025, 21.541159>,  <38.183849, 36.921459, 22.186207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364712, 36.608025, 21.541159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979191, 36.707569, 21.502882>,  <37.747879, 36.767296, 21.479916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979191, 36.707569, 21.502882>,  <38.364712, 36.608025, 21.541159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979191, 36.707569, 21.502882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208626, 0.480415, -0.851867,
		-0.166030, -0.840992, -0.514943,
		-0.963799, 0.248866, -0.095689,
		37.690052, 36.782230, 21.474174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227337, 36.431522, 20.882826>,  <38.364712, 36.608025, 21.541159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227337, 36.431522, 20.882826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940434, 36.681122, 21.006866>,  <37.768291, 36.830883, 21.081291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940434, 36.681122, 21.006866>,  <38.227337, 36.431522, 20.882826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940434, 36.681122, 21.006866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069830, 0.507161, -0.859018,
		-0.693298, -0.594484, -0.407340,
		-0.717260, 0.624000, 0.310101,
		37.725254, 36.868320, 21.099897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961391, 36.632462, 20.299467>,  <38.227337, 36.431522, 20.882826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961391, 36.632462, 20.299467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821316, 36.921158, 20.538284>,  <37.737270, 37.094376, 20.681576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821316, 36.921158, 20.538284>,  <37.961391, 36.632462, 20.299467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821316, 36.921158, 20.538284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232242, 0.684405, -0.691125,
		-0.907432, -0.103364, -0.407288,
		-0.350187, 0.721738, 0.597045,
		37.716259, 37.137680, 20.717398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512012, 37.081608, 19.946060>,  <37.961391, 36.632462, 20.299467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512012, 37.081608, 19.946060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639397, 37.300144, 20.255924>,  <37.715828, 37.431267, 20.441843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639397, 37.300144, 20.255924>,  <37.512012, 37.081608, 19.946060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639397, 37.300144, 20.255924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346509, 0.693561, -0.631590,
		-0.882335, 0.469563, 0.031562,
		0.318461, 0.546337, 0.774660,
		37.734936, 37.464046, 20.488323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293961, 37.827877, 19.765009>,  <37.512012, 37.081608, 19.946060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293961, 37.827877, 19.765009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594509, 37.825073, 20.028944>,  <37.774837, 37.823391, 20.187305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594509, 37.825073, 20.028944>,  <37.293961, 37.827877, 19.765009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594509, 37.825073, 20.028944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427605, 0.766767, -0.478773,
		-0.502585, 0.641888, 0.579128,
		0.751374, -0.007014, 0.659839,
		37.819920, 37.822968, 20.226896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376598, 38.587383, 19.726143>,  <37.293961, 37.827877, 19.765009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376598, 38.587383, 19.726143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683556, 38.455463, 19.946083>,  <37.867729, 38.376312, 20.078047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683556, 38.455463, 19.946083>,  <37.376598, 38.587383, 19.726143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683556, 38.455463, 19.946083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589867, 0.699276, -0.403818,
		-0.251320, 0.634228, 0.731158,
		0.767395, -0.329799, 0.549853,
		37.913773, 38.356525, 20.111038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636616, 39.147625, 20.181902>,  <37.376598, 38.587383, 19.726143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636616, 39.147625, 20.181902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927464, 38.883183, 20.107895>,  <38.101974, 38.724518, 20.063492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927464, 38.883183, 20.107895>,  <37.636616, 39.147625, 20.181902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927464, 38.883183, 20.107895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591330, 0.740047, -0.320406,
		0.348743, 0.123569, 0.929037,
		0.727123, -0.661106, -0.185016,
		38.145599, 38.684849, 20.052391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261845, 39.440102, 20.470203>,  <37.636616, 39.147625, 20.181902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261845, 39.440102, 20.470203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406502, 39.168186, 20.214985>,  <38.493298, 39.005035, 20.061853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406502, 39.168186, 20.214985>,  <38.261845, 39.440102, 20.470203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406502, 39.168186, 20.214985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603351, 0.692379, -0.395701,
		0.710762, -0.241862, 0.660546,
		0.361643, -0.679789, -0.638044,
		38.514996, 38.964249, 20.023571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916767, 39.763264, 20.343466>,  <38.261845, 39.440102, 20.470203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916767, 39.763264, 20.343466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871479, 39.488125, 20.056679>,  <38.844307, 39.323040, 19.884607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871479, 39.488125, 20.056679>,  <38.916767, 39.763264, 20.343466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871479, 39.488125, 20.056679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432637, 0.615473, -0.658801,
		0.894430, -0.384778, 0.227904,
		-0.113223, -0.687851, -0.716966,
		38.837513, 39.281769, 19.841589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540653, 39.707043, 20.069309>,  <38.916767, 39.763264, 20.343466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540653, 39.707043, 20.069309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280731, 39.586838, 19.790039>,  <39.124779, 39.514713, 19.622477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280731, 39.586838, 19.790039>,  <39.540653, 39.707043, 20.069309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280731, 39.586838, 19.790039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352381, 0.694756, -0.627010,
		0.673484, -0.653458, -0.345561,
		-0.649805, -0.300512, -0.698173,
		39.085789, 39.496685, 19.580587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869022, 39.762531, 19.473734>,  <39.540653, 39.707043, 20.069309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869022, 39.762531, 19.473734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485085, 39.750446, 19.362173>,  <39.254723, 39.743195, 19.295237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485085, 39.750446, 19.362173>,  <39.869022, 39.762531, 19.473734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485085, 39.750446, 19.362173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167585, 0.735534, -0.656434,
		0.224977, -0.676814, -0.700934,
		-0.959844, -0.030217, -0.278902,
		39.197132, 39.741383, 19.278503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949715, 39.679295, 18.813879>,  <39.869022, 39.762531, 19.473734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949715, 39.679295, 18.813879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581516, 39.815048, 18.891340>,  <39.360596, 39.896500, 18.937817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581516, 39.815048, 18.891340>,  <39.949715, 39.679295, 18.813879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581516, 39.815048, 18.891340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085606, 0.658713, -0.747509,
		-0.381259, -0.671501, -0.635396,
		-0.920496, 0.339389, 0.193655,
		39.305367, 39.916866, 18.949436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569820, 39.844955, 18.127995>,  <39.949715, 39.679295, 18.813879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569820, 39.844955, 18.127995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386093, 40.057491, 18.412725>,  <39.275856, 40.185013, 18.583565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386093, 40.057491, 18.412725>,  <39.569820, 39.844955, 18.127995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386093, 40.057491, 18.412725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053072, 0.816349, -0.575115,
		-0.886685, -0.226383, -0.403164,
		-0.459318, 0.531343, 0.711830,
		39.248299, 40.216896, 18.626274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958706, 40.070583, 17.769377>,  <39.569820, 39.844955, 18.127995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958706, 40.070583, 17.769377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037491, 40.311161, 18.079079>,  <39.084763, 40.455505, 18.264900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037491, 40.311161, 18.079079>,  <38.958706, 40.070583, 17.769377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037491, 40.311161, 18.079079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191401, 0.798120, -0.571288,
		-0.961546, -0.035671, 0.272316,
		0.196962, 0.601442, 0.774257,
		39.096581, 40.491592, 18.311356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332577, 40.562183, 18.026114>,  <38.958706, 40.070583, 17.769377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332577, 40.562183, 18.026114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703835, 40.706150, 18.064066>,  <38.926590, 40.792530, 18.086838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703835, 40.706150, 18.064066>,  <38.332577, 40.562183, 18.026114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703835, 40.706150, 18.064066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211901, 0.720502, -0.660284,
		-0.306011, 0.592734, 0.744999,
		0.928146, 0.359920, 0.094880,
		38.982277, 40.814125, 18.092529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283436, 41.231770, 18.282904>,  <38.332577, 40.562183, 18.026114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283436, 41.231770, 18.282904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569752, 41.124245, 18.025103>,  <38.741543, 41.059731, 17.870422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569752, 41.124245, 18.025103>,  <38.283436, 41.231770, 18.282904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569752, 41.124245, 18.025103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349532, 0.661087, -0.663921,
		0.604540, 0.700503, 0.379244,
		0.715792, -0.268810, -0.644502,
		38.784489, 41.043602, 17.831753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344467, 42.007740, 18.627586>,  <38.283436, 41.231770, 18.282904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344467, 42.007740, 18.627586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597935, 42.292320, 18.749111>,  <38.750015, 42.463066, 18.822027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597935, 42.292320, 18.749111>,  <38.344467, 42.007740, 18.627586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597935, 42.292320, 18.749111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277629, 0.157425, -0.947702,
		-0.722067, 0.684880, -0.097763,
		0.633672, 0.711447, 0.303814,
		38.788036, 42.505753, 18.840256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266739, 42.460606, 18.159655>,  <38.344467, 42.007740, 18.627586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266739, 42.460606, 18.159655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607162, 42.593468, 18.322321>,  <38.811417, 42.673183, 18.419920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607162, 42.593468, 18.322321>,  <38.266739, 42.460606, 18.159655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607162, 42.593468, 18.322321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381466, 0.141085, -0.913553,
		-0.360814, 0.932614, -0.006634,
		0.851056, 0.332153, 0.406667,
		38.862480, 42.693115, 18.444321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766544, 41.996632, 17.926966>,  <38.266739, 42.460606, 18.159655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766544, 41.996632, 17.926966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914810, 41.636600, 17.835348>,  <39.003769, 41.420582, 17.780378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914810, 41.636600, 17.835348>,  <38.766544, 41.996632, 17.926966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914810, 41.636600, 17.835348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802489, 0.434527, -0.408898,
		0.467567, -0.032239, 0.883370,
		0.370666, -0.900081, -0.229042,
		39.026009, 41.366577, 17.766636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475933, 41.935928, 18.194151>,  <38.766544, 41.996632, 17.926966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475933, 41.935928, 18.194151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441753, 41.712601, 17.864065>,  <39.421246, 41.578606, 17.666014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441753, 41.712601, 17.864065>,  <39.475933, 41.935928, 18.194151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441753, 41.712601, 17.864065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633223, 0.609026, -0.477615,
		0.769238, -0.563357, 0.301499,
		-0.085447, -0.558316, -0.825216,
		39.416119, 41.545105, 17.616501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009003, 42.140793, 17.777153>,  <39.475933, 41.935928, 18.194151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009003, 42.140793, 17.777153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800144, 41.924747, 17.513140>,  <39.674831, 41.795120, 17.354733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800144, 41.924747, 17.513140>,  <40.009003, 42.140793, 17.777153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800144, 41.924747, 17.513140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494604, 0.438702, -0.750272,
		0.694791, -0.718203, 0.038078,
		-0.522142, -0.540116, -0.660032,
		39.643501, 41.762714, 17.315130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110779, 42.463253, 18.516886>,  <40.009003, 42.140793, 17.777153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110779, 42.463253, 18.516886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784668, 42.679329, 18.433447>,  <39.589001, 42.808975, 18.383385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784668, 42.679329, 18.433447>,  <40.110779, 42.463253, 18.516886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784668, 42.679329, 18.433447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372615, -0.213651, 0.903057,
		0.443256, 0.813970, 0.375468,
		-0.815280, 0.540191, -0.208596,
		39.540085, 42.841385, 18.370869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992123, 42.982605, 18.984087>,  <40.110779, 42.463253, 18.516886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992123, 42.982605, 18.984087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640987, 42.887489, 18.817785>,  <39.430305, 42.830418, 18.718004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640987, 42.887489, 18.817785>,  <39.992123, 42.982605, 18.984087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640987, 42.887489, 18.817785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422905, -0.022651, 0.905891,
		-0.224832, 0.971052, -0.080679,
		-0.877839, -0.237793, -0.415756,
		39.377636, 42.816151, 18.693058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552238, 43.524139, 19.194641>,  <39.992123, 42.982605, 18.984087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552238, 43.524139, 19.194641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329121, 43.210144, 19.086821>,  <39.195248, 43.021748, 19.022127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329121, 43.210144, 19.086821>,  <39.552238, 43.524139, 19.194641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329121, 43.210144, 19.086821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545622, 0.102087, 0.831790,
		-0.625425, 0.611045, -0.485249,
		-0.557799, -0.784985, -0.269552,
		39.161781, 42.974648, 19.005955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880341, 43.752415, 19.305069>,  <39.552238, 43.524139, 19.194641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880341, 43.752415, 19.305069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871574, 43.352772, 19.319538>,  <38.866314, 43.112988, 19.328220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871574, 43.352772, 19.319538>,  <38.880341, 43.752415, 19.305069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871574, 43.352772, 19.319538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457786, 0.042196, 0.888061,
		-0.888792, 0.002904, -0.458301,
		-0.021918, -0.999105, 0.036174,
		38.864998, 43.053040, 19.330391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242569, 43.630131, 19.427753>,  <38.880341, 43.752415, 19.305069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242569, 43.630131, 19.427753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426544, 43.289944, 19.529869>,  <38.536930, 43.085831, 19.591139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426544, 43.289944, 19.529869>,  <38.242569, 43.630131, 19.427753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426544, 43.289944, 19.529869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589811, -0.077691, 0.803796,
		-0.663765, -0.520266, -0.537345,
		0.459934, -0.850463, 0.255290,
		38.564526, 43.034805, 19.606457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742020, 43.182724, 19.566645>,  <38.242569, 43.630131, 19.427753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742020, 43.182724, 19.566645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037086, 42.972511, 19.736191>,  <38.214127, 42.846382, 19.837919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037086, 42.972511, 19.736191>,  <37.742020, 43.182724, 19.566645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037086, 42.972511, 19.736191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646554, -0.369038, 0.667666,
		-0.194458, -0.766568, -0.612013,
		0.737668, -0.525532, 0.423865,
		38.258389, 42.814850, 19.863350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469685, 42.553062, 19.740095>,  <37.742020, 43.182724, 19.566645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469685, 42.553062, 19.740095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788254, 42.564407, 19.981722>,  <37.979397, 42.571217, 20.126698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788254, 42.564407, 19.981722>,  <37.469685, 42.553062, 19.740095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788254, 42.564407, 19.981722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508502, -0.509230, 0.694342,
		0.327306, -0.860163, -0.391140,
		0.796427, 0.028367, 0.604069,
		38.027184, 42.572918, 20.162943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432499, 41.901794, 20.157116>,  <37.469685, 42.553062, 19.740095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432499, 41.901794, 20.157116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687157, 42.145267, 20.346512>,  <37.839951, 42.291351, 20.460150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687157, 42.145267, 20.346512>,  <37.432499, 41.901794, 20.157116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687157, 42.145267, 20.346512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289148, -0.380785, 0.878292,
		0.714896, -0.696068, -0.066426,
		0.636645, 0.608680, 0.473489,
		37.878151, 42.327873, 20.488558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882504, 41.543266, 20.592657>,  <37.432499, 41.901794, 20.157116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882504, 41.543266, 20.592657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875381, 41.894703, 20.783552>,  <37.871109, 42.105564, 20.898088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875381, 41.894703, 20.783552>,  <37.882504, 41.543266, 20.592657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875381, 41.894703, 20.783552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276886, -0.462977, 0.842014,
		0.960738, -0.117152, 0.251512,
		-0.017801, 0.878594, 0.477237,
		37.870041, 42.158279, 20.926723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266518, 41.500465, 21.177917>,  <37.882504, 41.543266, 20.592657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266518, 41.500465, 21.177917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076286, 41.838058, 21.277128>,  <37.962147, 42.040615, 21.336655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076286, 41.838058, 21.277128>,  <38.266518, 41.500465, 21.177917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076286, 41.838058, 21.277128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142227, -0.352013, 0.925126,
		0.868102, 0.404690, 0.287446,
		-0.475574, 0.843986, 0.248025,
		37.933613, 42.091255, 21.351536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561802, 41.654068, 21.787449>,  <38.266518, 41.500465, 21.177917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561802, 41.654068, 21.787449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219635, 41.860706, 21.772524>,  <38.014336, 41.984688, 21.763569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219635, 41.860706, 21.772524>,  <38.561802, 41.654068, 21.787449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219635, 41.860706, 21.772524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302827, -0.440394, 0.845192,
		0.420189, 0.734290, 0.533159,
		-0.855416, 0.516595, -0.037314,
		37.963009, 42.015686, 21.761330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465088, 42.134895, 22.395967>,  <38.561802, 41.654068, 21.787449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465088, 42.134895, 22.395967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096092, 42.052029, 22.265676>,  <37.874695, 42.002308, 22.187502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096092, 42.052029, 22.265676>,  <38.465088, 42.134895, 22.395967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096092, 42.052029, 22.265676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272235, -0.249103, 0.929428,
		-0.273690, 0.946059, 0.173395,
		-0.922487, -0.207171, -0.325727,
		37.819347, 41.989876, 22.167959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006981, 42.233669, 22.942009>,  <38.465088, 42.134895, 22.395967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006981, 42.233669, 22.942009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750217, 42.037041, 22.706615>,  <37.596161, 41.919064, 22.565380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750217, 42.037041, 22.706615>,  <38.006981, 42.233669, 22.942009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750217, 42.037041, 22.706615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357073, -0.487544, 0.796743,
		-0.678571, 0.721565, 0.137428,
		-0.641904, -0.491575, -0.588484,
		37.557648, 41.889568, 22.530069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244377, 42.364998, 23.140236>,  <38.006981, 42.233669, 22.942009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244377, 42.364998, 23.140236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288284, 42.007587, 22.966080>,  <37.314629, 41.793140, 22.861586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288284, 42.007587, 22.966080>,  <37.244377, 42.364998, 23.140236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288284, 42.007587, 22.966080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359459, -0.444073, 0.820724,
		-0.926683, 0.066419, -0.369929,
		0.109764, -0.893525, -0.435390,
		37.321213, 41.739529, 22.835463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717129, 41.973705, 23.431044>,  <37.244377, 42.364998, 23.140236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717129, 41.973705, 23.431044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911625, 41.679337, 23.242584>,  <37.028324, 41.502716, 23.129509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911625, 41.679337, 23.242584>,  <36.717129, 41.973705, 23.431044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911625, 41.679337, 23.242584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223093, -0.625862, 0.747346,
		-0.844865, -0.258282, -0.468501,
		0.486244, -0.735926, -0.471148,
		37.057499, 41.458557, 23.101240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248280, 41.591942, 23.380785>,  <36.717129, 41.973705, 23.431044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248280, 41.591942, 23.380785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556751, 41.348335, 23.306604>,  <36.741833, 41.202171, 23.262096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556751, 41.348335, 23.306604>,  <36.248280, 41.591942, 23.380785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556751, 41.348335, 23.306604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409009, -0.697197, 0.588751,
		-0.487852, -0.378179, -0.786753,
		0.771176, -0.609012, -0.185450,
		36.788105, 41.165630, 23.250969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033867, 40.864189, 23.118521>,  <36.248280, 41.591942, 23.380785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033867, 40.864189, 23.118521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404938, 40.800789, 23.253748>,  <36.627579, 40.762749, 23.334885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404938, 40.800789, 23.253748>,  <36.033867, 40.864189, 23.118521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404938, 40.800789, 23.253748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298802, -0.858084, 0.417623,
		0.223899, -0.488435, -0.843386,
		0.927678, -0.158500, 0.338070,
		36.683243, 40.753239, 23.355169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155270, 40.114410, 23.039539>,  <36.033867, 40.864189, 23.118521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155270, 40.114410, 23.039539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403801, 40.264107, 23.314899>,  <36.552921, 40.353924, 23.480116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403801, 40.264107, 23.314899>,  <36.155270, 40.114410, 23.039539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403801, 40.264107, 23.314899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131613, -0.816238, 0.562525,
		0.772418, -0.440115, -0.457896,
		0.621327, 0.374239, 0.688402,
		36.590199, 40.376377, 23.521420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541340, 39.573830, 23.197340>,  <36.155270, 40.114410, 23.039539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541340, 39.573830, 23.197340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617256, 39.794525, 23.522194>,  <36.662807, 39.926941, 23.717106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617256, 39.794525, 23.522194>,  <36.541340, 39.573830, 23.197340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617256, 39.794525, 23.522194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196782, -0.789009, 0.582015,
		0.961902, -0.270275, -0.041175,
		0.189792, 0.551739, 0.812135,
		36.674194, 39.960045, 23.765835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848972, 39.148266, 23.800102>,  <36.541340, 39.573830, 23.197340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848972, 39.148266, 23.800102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724369, 39.472393, 23.998634>,  <36.649609, 39.666870, 24.117754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724369, 39.472393, 23.998634>,  <36.848972, 39.148266, 23.800102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724369, 39.472393, 23.998634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158360, -0.559285, 0.813709,
		0.936955, 0.174880, 0.302545,
		-0.311510, 0.810320, 0.496330,
		36.630917, 39.715488, 24.147533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056999, 38.990582, 24.479088>,  <36.848972, 39.148266, 23.800102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056999, 38.990582, 24.479088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796803, 39.293732, 24.499004>,  <36.640686, 39.475624, 24.510954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796803, 39.293732, 24.499004>,  <37.056999, 38.990582, 24.479088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796803, 39.293732, 24.499004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422244, -0.415349, 0.805727,
		0.631323, 0.503096, 0.590191,
		-0.650493, 0.757878, 0.049790,
		36.601654, 39.521095, 24.513941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075634, 39.162777, 25.160095>,  <37.056999, 38.990582, 24.479088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075634, 39.162777, 25.160095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727375, 39.325489, 25.049458>,  <36.518421, 39.423115, 24.983076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727375, 39.325489, 25.049458>,  <37.075634, 39.162777, 25.160095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727375, 39.325489, 25.049458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408601, -0.284966, 0.867087,
		0.273891, 0.867945, 0.414314,
		-0.870649, 0.406776, -0.276593,
		36.466179, 39.447521, 24.966480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825062, 39.568562, 25.808798>,  <37.075634, 39.162777, 25.160095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825062, 39.568562, 25.808798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550743, 39.421410, 25.557611>,  <36.386150, 39.333118, 25.406898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550743, 39.421410, 25.557611>,  <36.825062, 39.568562, 25.808798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550743, 39.421410, 25.557611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394525, -0.537148, 0.745535,
		-0.611581, 0.759035, 0.223236,
		-0.685798, -0.367883, -0.627968,
		36.345005, 39.311047, 25.369221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111683, 39.573822, 26.137009>,  <36.825062, 39.568562, 25.808798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111683, 39.573822, 26.137009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118298, 39.300491, 25.845039>,  <36.122269, 39.136494, 25.669857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118298, 39.300491, 25.845039>,  <36.111683, 39.573822, 26.137009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118298, 39.300491, 25.845039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520734, -0.629091, 0.577131,
		-0.853559, 0.370552, -0.366237,
		0.016539, -0.683327, -0.729925,
		36.123260, 39.095493, 25.626062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579517, 39.153347, 26.290340>,  <36.111683, 39.573822, 26.137009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579517, 39.153347, 26.290340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714615, 38.931744, 25.985971>,  <35.795673, 38.798782, 25.803350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714615, 38.931744, 25.985971>,  <35.579517, 39.153347, 26.290340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714615, 38.931744, 25.985971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661954, -0.714532, 0.226409,
		-0.669136, 0.427226, -0.608058,
		0.337749, -0.554005, -0.760923,
		35.815941, 38.765541, 25.757694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965027, 38.798370, 26.062881>,  <35.579517, 39.153347, 26.290340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965027, 38.798370, 26.062881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283325, 38.585884, 25.946537>,  <35.474304, 38.458393, 25.876730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283325, 38.585884, 25.946537>,  <34.965027, 38.798370, 26.062881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283325, 38.585884, 25.946537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464505, -0.843494, 0.269727,
		-0.388623, -0.079527, -0.917958,
		0.795743, -0.531218, -0.290861,
		35.522049, 38.426517, 25.859280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821301, 38.390270, 25.398211>,  <34.965027, 38.798370, 26.062881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821301, 38.390270, 25.398211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112164, 38.209694, 25.605070>,  <35.286682, 38.101349, 25.729185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112164, 38.209694, 25.605070>,  <34.821301, 38.390270, 25.398211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112164, 38.209694, 25.605070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648806, -0.698063, 0.302919,
		0.224252, -0.555799, -0.800499,
		0.727161, -0.451438, 0.517147,
		35.330311, 38.074261, 25.760214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713356, 37.653141, 25.215561>,  <34.821301, 38.390270, 25.398211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713356, 37.653141, 25.215561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950439, 37.656242, 25.537712>,  <35.092690, 37.658104, 25.731003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950439, 37.656242, 25.537712>,  <34.713356, 37.653141, 25.215561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950439, 37.656242, 25.537712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444826, -0.830461, 0.335358,
		0.671433, -0.557023, -0.488777,
		0.592713, 0.007750, 0.805377,
		35.128254, 37.658566, 25.779325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946583, 37.051128, 25.298653>,  <34.713356, 37.653141, 25.215561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946583, 37.051128, 25.298653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979832, 37.177086, 25.676846>,  <34.999783, 37.252659, 25.903761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979832, 37.177086, 25.676846>,  <34.946583, 37.051128, 25.298653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979832, 37.177086, 25.676846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324336, -0.888561, 0.324446,
		0.942283, -0.333622, 0.028270,
		0.083123, 0.314889, 0.945482,
		35.004768, 37.271553, 25.960489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156155, 36.440014, 25.696861>,  <34.946583, 37.051128, 25.298653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156155, 36.440014, 25.696861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995804, 36.695286, 25.959776>,  <34.899593, 36.848450, 26.117525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995804, 36.695286, 25.959776>,  <35.156155, 36.440014, 25.696861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995804, 36.695286, 25.959776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464337, -0.760013, 0.454722,
		0.789740, -0.122916, 0.601001,
		-0.400876, 0.638179, 0.657287,
		34.875542, 36.886738, 26.156961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169411, 36.016876, 26.387165>,  <35.156155, 36.440014, 25.696861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169411, 36.016876, 26.387165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930389, 36.324780, 26.476967>,  <34.786976, 36.509521, 26.530848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930389, 36.324780, 26.476967>,  <35.169411, 36.016876, 26.387165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930389, 36.324780, 26.476967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569919, -0.604690, 0.556365,
		0.564023, 0.204508, 0.800034,
		-0.597554, 0.769757, 0.224506,
		34.751122, 36.555706, 26.544319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135155, 36.040962, 27.076548>,  <35.169411, 36.016876, 26.387165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135155, 36.040962, 27.076548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818050, 36.235558, 26.929657>,  <34.627789, 36.352314, 26.841522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818050, 36.235558, 26.929657>,  <35.135155, 36.040962, 27.076548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818050, 36.235558, 26.929657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571501, -0.383776, 0.725329,
		0.211933, 0.784884, 0.582273,
		-0.792762, 0.486491, -0.367227,
		34.580223, 36.381504, 26.819489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821579, 36.126507, 27.761562>,  <35.135155, 36.040962, 27.076548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821579, 36.126507, 27.761562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549492, 36.211502, 27.480947>,  <34.386242, 36.262501, 27.312578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549492, 36.211502, 27.480947>,  <34.821579, 36.126507, 27.761562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549492, 36.211502, 27.480947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705067, -0.451409, 0.546910,
		-0.200467, 0.866648, 0.456875,
		-0.680216, 0.212489, -0.701537,
		34.345428, 36.275249, 27.270487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294651, 36.581032, 28.033451>,  <34.821579, 36.126507, 27.761562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294651, 36.581032, 28.033451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136654, 36.369408, 27.733030>,  <34.041855, 36.242435, 27.552778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136654, 36.369408, 27.733030>,  <34.294651, 36.581032, 28.033451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136654, 36.369408, 27.733030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610393, -0.459853, 0.644947,
		-0.686588, 0.713185, -0.141296,
		-0.394991, -0.529058, -0.751052,
		34.018158, 36.210690, 27.507715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622070, 36.695511, 28.009809>,  <34.294651, 36.581032, 28.033451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622070, 36.695511, 28.009809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669655, 36.337906, 27.837025>,  <33.698204, 36.123344, 27.733355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669655, 36.337906, 27.837025>,  <33.622070, 36.695511, 28.009809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669655, 36.337906, 27.837025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617188, -0.407371, 0.673149,
		-0.777771, 0.186524, -0.600234,
		0.118959, -0.894012, -0.431961,
		33.705341, 36.069702, 27.707436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919601, 36.347851, 28.001606>,  <33.622070, 36.695511, 28.009809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919601, 36.347851, 28.001606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158413, 36.040180, 27.910456>,  <33.301701, 35.855579, 27.855766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158413, 36.040180, 27.910456>,  <32.919601, 36.347851, 28.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158413, 36.040180, 27.910456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590804, -0.613736, 0.523716,
		-0.542684, -0.178045, -0.820850,
		0.597030, -0.769174, -0.227875,
		33.337521, 35.809429, 27.842093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510647, 35.795586, 27.982765>,  <32.919601, 36.347851, 28.001606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510647, 35.795586, 27.982765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877415, 35.640587, 28.020950>,  <33.097473, 35.547588, 28.043861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877415, 35.640587, 28.020950>,  <32.510647, 35.795586, 27.982765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877415, 35.640587, 28.020950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317879, -0.564514, 0.761759,
		-0.241287, -0.728815, -0.640788,
		0.916915, -0.387496, 0.095465,
		33.152489, 35.524338, 28.049589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352123, 35.187805, 28.102581>,  <32.510647, 35.795586, 27.982765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352123, 35.187805, 28.102581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706474, 35.262569, 28.272423>,  <32.919083, 35.307426, 28.374329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706474, 35.262569, 28.272423>,  <32.352123, 35.187805, 28.102581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706474, 35.262569, 28.272423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256646, -0.565003, 0.784159,
		0.386468, -0.803640, -0.452553,
		0.885875, 0.186907, 0.424607,
		32.972237, 35.318642, 28.399805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497654, 34.486492, 28.452387>,  <32.352123, 35.187805, 28.102581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497654, 34.486492, 28.452387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725292, 34.763554, 28.629641>,  <32.861874, 34.929790, 28.735992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725292, 34.763554, 28.629641>,  <32.497654, 34.486492, 28.452387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725292, 34.763554, 28.629641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025620, -0.553589, 0.832396,
		0.821875, -0.462357, -0.332789,
		0.569092, 0.692651, 0.443135,
		32.896019, 34.971348, 28.762581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929962, 34.089611, 28.767134>,  <32.497654, 34.486492, 28.452387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929962, 34.089611, 28.767134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963848, 34.437454, 28.961700>,  <32.984180, 34.646160, 29.078440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963848, 34.437454, 28.961700>,  <32.929962, 34.089611, 28.767134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963848, 34.437454, 28.961700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299542, -0.487815, 0.819946,
		0.950315, 0.076241, -0.301809,
		0.084713, 0.869611, 0.486415,
		32.989262, 34.698338, 29.107624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589664, 34.125603, 29.140480>,  <32.929962, 34.089611, 28.767134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589664, 34.125603, 29.140480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362701, 34.394024, 29.331364>,  <33.226524, 34.555077, 29.445894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362701, 34.394024, 29.331364>,  <33.589664, 34.125603, 29.140480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362701, 34.394024, 29.331364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349177, -0.328768, 0.877489,
		0.745736, 0.664527, -0.047771,
		-0.567410, 0.671056, 0.477211,
		33.192478, 34.595341, 29.474527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034794, 34.389851, 29.829861>,  <33.589664, 34.125603, 29.140480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034794, 34.389851, 29.829861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648148, 34.452927, 29.910639>,  <33.416161, 34.490772, 29.959106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648148, 34.452927, 29.910639>,  <34.034794, 34.389851, 29.829861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648148, 34.452927, 29.910639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167730, -0.206380, 0.963989,
		0.193692, 0.965681, 0.173041,
		-0.966618, 0.157693, 0.201948,
		33.358162, 34.500237, 29.971224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320194, 35.126244, 29.843912>,  <34.034794, 34.389851, 29.829861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320194, 35.126244, 29.843912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556217, 35.138496, 30.166624>,  <34.697830, 35.145847, 30.360250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556217, 35.138496, 30.166624>,  <34.320194, 35.126244, 29.843912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556217, 35.138496, 30.166624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449393, 0.817709, -0.359720,
		-0.670729, 0.574817, 0.468731,
		0.590059, 0.030630, 0.806779,
		34.733234, 35.147686, 30.408657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240448, 35.788486, 30.151585>,  <34.320194, 35.126244, 29.843912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240448, 35.788486, 30.151585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595806, 35.635059, 30.252480>,  <34.809021, 35.543003, 30.313017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595806, 35.635059, 30.252480>,  <34.240448, 35.788486, 30.151585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595806, 35.635059, 30.252480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456791, 0.793330, -0.402454,
		-0.045736, 0.472758, 0.880004,
		0.888398, -0.383571, 0.252236,
		34.862324, 35.519989, 30.328150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622181, 36.308918, 30.504700>,  <34.240448, 35.788486, 30.151585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622181, 36.308918, 30.504700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890953, 36.047413, 30.365503>,  <35.052216, 35.890511, 30.281986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890953, 36.047413, 30.365503>,  <34.622181, 36.308918, 30.504700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890953, 36.047413, 30.365503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576767, 0.756671, -0.307879,
		0.464595, 0.006164, 0.885502,
		0.671931, -0.653767, -0.347990,
		35.092533, 35.851284, 30.261106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248528, 36.504559, 30.765419>,  <34.622181, 36.308918, 30.504700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248528, 36.504559, 30.765419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345100, 36.273777, 30.453306>,  <35.403046, 36.135307, 30.266039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345100, 36.273777, 30.453306>,  <35.248528, 36.504559, 30.765419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345100, 36.273777, 30.453306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725325, 0.641457, -0.249872,
		0.644680, -0.505630, 0.573346,
		0.241435, -0.576950, -0.780281,
		35.417530, 36.100693, 30.219221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029972, 36.505703, 30.712822>,  <35.248528, 36.504559, 30.765419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029972, 36.505703, 30.712822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879463, 36.341633, 30.380514>,  <35.789158, 36.243191, 30.181129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879463, 36.341633, 30.380514>,  <36.029972, 36.505703, 30.712822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879463, 36.341633, 30.380514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779297, 0.344861, -0.523228,
		0.501116, -0.844289, 0.189890,
		-0.376270, -0.410178, -0.830768,
		35.766582, 36.218578, 30.131285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699802, 36.187572, 30.457394>,  <36.029972, 36.505703, 30.712822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699802, 36.187572, 30.457394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423615, 36.200825, 30.168352>,  <36.257900, 36.208775, 29.994928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423615, 36.200825, 30.168352>,  <36.699802, 36.187572, 30.457394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423615, 36.200825, 30.168352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699124, 0.286979, -0.654881,
		0.185676, -0.957364, -0.221311,
		-0.690471, 0.033128, -0.722602,
		36.216473, 36.210762, 29.951572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780804, 35.738007, 29.844603>,  <36.699802, 36.187572, 30.457394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780804, 35.738007, 29.844603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561714, 36.055527, 29.738867>,  <36.430260, 36.246040, 29.675425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561714, 36.055527, 29.738867>,  <36.780804, 35.738007, 29.844603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561714, 36.055527, 29.738867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671032, 0.228091, -0.705472,
		-0.499711, -0.563786, -0.657597,
		-0.547727, 0.793801, -0.264339,
		36.397396, 36.293667, 29.659565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029888, 35.779282, 29.242985>,  <36.780804, 35.738007, 29.844603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029888, 35.779282, 29.242985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844227, 36.125019, 29.320414>,  <36.732830, 36.332462, 29.366871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844227, 36.125019, 29.320414>,  <37.029888, 35.779282, 29.242985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844227, 36.125019, 29.320414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595522, 0.466295, -0.654158,
		-0.655679, -0.188353, -0.731169,
		-0.464153, 0.864345, 0.193572,
		36.704983, 36.384323, 29.378485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911209, 36.133354, 28.567484>,  <37.029888, 35.779282, 29.242985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911209, 36.133354, 28.567484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867584, 36.427345, 28.835190>,  <36.841412, 36.603741, 28.995813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867584, 36.427345, 28.835190>,  <36.911209, 36.133354, 28.567484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867584, 36.427345, 28.835190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465813, 0.632569, -0.618769,
		-0.878137, 0.244272, -0.411348,
		-0.109058, 0.734975, 0.669267,
		36.834866, 36.647839, 29.035971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812130, 36.765694, 28.137676>,  <36.911209, 36.133354, 28.567484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812130, 36.765694, 28.137676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904076, 36.902649, 28.502079>,  <36.959244, 36.984821, 28.720720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904076, 36.902649, 28.502079>,  <36.812130, 36.765694, 28.137676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904076, 36.902649, 28.502079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446357, 0.794724, -0.411314,
		-0.864828, 0.501181, 0.029852,
		0.229867, 0.342391, 0.911005,
		36.973034, 37.005367, 28.775381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658779, 37.478825, 28.061914>,  <36.812130, 36.765694, 28.137676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658779, 37.478825, 28.061914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884453, 37.453857, 28.391228>,  <37.019859, 37.438877, 28.588816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884453, 37.453857, 28.391228>,  <36.658779, 37.478825, 28.061914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884453, 37.453857, 28.391228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489290, 0.828458, -0.272492,
		-0.665047, 0.556561, 0.497948,
		0.564188, -0.062421, 0.823284,
		37.053711, 37.435131, 28.638212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679115, 38.162231, 28.264357>,  <36.658779, 37.478825, 28.061914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679115, 38.162231, 28.264357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977272, 37.968327, 28.447397>,  <37.156166, 37.851986, 28.557222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977272, 37.968327, 28.447397>,  <36.679115, 38.162231, 28.264357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977272, 37.968327, 28.447397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628053, 0.740789, -0.238289,
		-0.223475, 0.465018, 0.856632,
		0.745392, -0.484758, 0.457603,
		37.200890, 37.822899, 28.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991787, 38.630295, 28.609587>,  <36.679115, 38.162231, 28.264357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991787, 38.630295, 28.609587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258614, 38.335369, 28.566908>,  <37.418709, 38.158413, 28.541300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258614, 38.335369, 28.566908>,  <36.991787, 38.630295, 28.609587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258614, 38.335369, 28.566908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674064, 0.658328, -0.335025,
		0.317261, 0.151564, 0.936149,
		0.667071, -0.737314, -0.106697,
		37.458736, 38.114174, 28.534899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545650, 38.944759, 28.987696>,  <36.991787, 38.630295, 28.609587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545650, 38.944759, 28.987696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680164, 38.687458, 28.712555>,  <37.760872, 38.533077, 28.547470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680164, 38.687458, 28.712555>,  <37.545650, 38.944759, 28.987696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680164, 38.687458, 28.712555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476277, 0.746265, -0.465026,
		0.812449, -0.171227, 0.557322,
		0.336285, -0.643250, -0.687854,
		37.781048, 38.494484, 28.506199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135231, 39.285313, 28.837749>,  <37.545650, 38.944759, 28.987696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135231, 39.285313, 28.837749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109669, 39.024029, 28.535961>,  <38.094330, 38.867256, 28.354887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109669, 39.024029, 28.535961>,  <38.135231, 39.285313, 28.837749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109669, 39.024029, 28.535961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552888, 0.606211, -0.571684,
		0.830801, -0.453674, 0.322412,
		-0.063909, -0.653214, -0.754472,
		38.090496, 38.828064, 28.309620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756458, 39.260723, 28.379343>,  <38.135231, 39.285313, 28.837749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756458, 39.260723, 28.379343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506603, 39.072632, 28.129953>,  <38.356689, 38.959778, 27.980320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506603, 39.072632, 28.129953>,  <38.756458, 39.260723, 28.379343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506603, 39.072632, 28.129953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373625, 0.521127, -0.767353,
		0.685738, -0.712261, -0.149826,
		-0.624634, -0.470225, -0.623475,
		38.319214, 38.931564, 27.942911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103058, 39.108009, 27.718161>,  <38.756458, 39.260723, 28.379343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103058, 39.108009, 27.718161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709301, 39.099442, 27.648298>,  <38.473045, 39.094299, 27.606380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709301, 39.099442, 27.648298>,  <39.103058, 39.108009, 27.718161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709301, 39.099442, 27.648298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149696, 0.419784, -0.895194,
		0.092492, -0.907371, -0.410028,
		-0.984397, -0.021418, -0.174657,
		38.413982, 39.093018, 27.595901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956154, 38.741447, 27.009272>,  <39.103058, 39.108009, 27.718161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956154, 38.741447, 27.009272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642521, 38.983299, 27.065329>,  <38.454342, 39.128410, 27.098963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642521, 38.983299, 27.065329>,  <38.956154, 38.741447, 27.009272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642521, 38.983299, 27.065329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102310, 0.348621, -0.931663,
		-0.612169, -0.716161, -0.335207,
		-0.784080, 0.604630, 0.140145,
		38.407295, 39.164688, 27.107372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532356, 38.654560, 26.412348>,  <38.956154, 38.741447, 27.009272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532356, 38.654560, 26.412348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390663, 38.992783, 26.572124>,  <38.305649, 39.195717, 26.667992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390663, 38.992783, 26.572124>,  <38.532356, 38.654560, 26.412348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390663, 38.992783, 26.572124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195093, 0.484560, -0.852725,
		-0.914582, -0.224131, -0.336608,
		-0.354229, 0.845557, 0.399443,
		38.284393, 39.246449, 26.691957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115505, 38.876781, 25.897469>,  <38.532356, 38.654560, 26.412348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115505, 38.876781, 25.897469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177437, 39.217751, 26.097227>,  <38.214596, 39.422333, 26.217083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177437, 39.217751, 26.097227>,  <38.115505, 38.876781, 25.897469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177437, 39.217751, 26.097227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224667, 0.461869, -0.858022,
		-0.962056, 0.245049, -0.119999,
		0.154834, 0.852425, 0.499398,
		38.223888, 39.473476, 26.247047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712101, 39.384216, 25.579578>,  <38.115505, 38.876781, 25.897469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712101, 39.384216, 25.579578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981365, 39.605030, 25.776400>,  <38.142925, 39.737518, 25.894491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981365, 39.605030, 25.776400>,  <37.712101, 39.384216, 25.579578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981365, 39.605030, 25.776400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217826, 0.487844, -0.845317,
		-0.706687, 0.676215, 0.208149,
		0.673160, 0.552034, 0.492051,
		38.183311, 39.770641, 25.924015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560131, 40.157581, 25.372633>,  <37.712101, 39.384216, 25.579578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560131, 40.157581, 25.372633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925671, 40.128197, 25.532375>,  <38.144993, 40.110565, 25.628222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925671, 40.128197, 25.532375>,  <37.560131, 40.157581, 25.372633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925671, 40.128197, 25.532375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378354, 0.511077, -0.771783,
		-0.147408, 0.856390, 0.494840,
		0.913849, -0.073457, 0.399355,
		38.199825, 40.106159, 25.652182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825550, 40.803604, 25.221628>,  <37.560131, 40.157581, 25.372633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825550, 40.803604, 25.221628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139313, 40.569668, 25.304258>,  <38.327572, 40.429306, 25.353836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139313, 40.569668, 25.304258>,  <37.825550, 40.803604, 25.221628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139313, 40.569668, 25.304258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465469, 0.334937, -0.819241,
		0.409933, 0.738771, 0.534950,
		0.784406, -0.584837, 0.206573,
		38.374634, 40.394218, 25.366230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325123, 41.275845, 25.396824>,  <37.825550, 40.803604, 25.221628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325123, 41.275845, 25.396824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498440, 40.945320, 25.252903>,  <38.602432, 40.747005, 25.166552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498440, 40.945320, 25.252903>,  <38.325123, 41.275845, 25.396824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498440, 40.945320, 25.252903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523318, 0.555705, -0.646011,
		0.733752, 0.091625, 0.673211,
		0.433297, -0.826315, -0.359801,
		38.628429, 40.697426, 25.144962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971088, 41.562500, 25.222792>,  <38.325123, 41.275845, 25.396824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971088, 41.562500, 25.222792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967064, 41.202419, 25.048651>,  <38.964649, 40.986370, 24.944166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967064, 41.202419, 25.048651>,  <38.971088, 41.562500, 25.222792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967064, 41.202419, 25.048651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510948, 0.369618, -0.776090,
		0.859553, -0.230247, 0.456240,
		-0.010058, -0.900205, -0.435351,
		38.964046, 40.932358, 24.918045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703045, 41.498119, 25.026644>,  <38.971088, 41.562500, 25.222792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703045, 41.498119, 25.026644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482807, 41.246323, 24.807343>,  <39.350666, 41.095245, 24.675762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482807, 41.246323, 24.807343>,  <39.703045, 41.498119, 25.026644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482807, 41.246323, 24.807343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486519, 0.291709, -0.823532,
		0.678339, -0.720169, 0.145647,
		-0.550596, -0.629494, -0.548254,
		39.317627, 41.057476, 24.642866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219433, 41.177109, 24.674236>,  <39.703045, 41.498119, 25.026644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219433, 41.177109, 24.674236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869984, 41.133678, 24.484505>,  <39.660313, 41.107620, 24.370665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869984, 41.133678, 24.484505>,  <40.219433, 41.177109, 24.674236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869984, 41.133678, 24.484505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451905, 0.180441, -0.873626,
		0.180441, -0.977575, -0.108573,
		0.873626, 0.108573, 0.474330,
		39.607895, 41.101105, 24.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300327, 40.719814, 24.099195>,  <40.219433, 41.177109, 24.674236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300327, 40.719814, 24.099195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984165, 40.933460, 23.979208>,  <39.794468, 41.061649, 23.907215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984165, 40.933460, 23.979208>,  <40.300327, 40.719814, 24.099195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984165, 40.933460, 23.979208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472499, 0.219902, -0.853456,
		-0.389884, -0.816309, -0.426181,
		-0.790402, 0.534119, -0.299969,
		39.747044, 41.093697, 23.889217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139317, 40.534935, 23.400085>,  <40.300327, 40.719814, 24.099195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139317, 40.534935, 23.400085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958462, 40.889133, 23.442932>,  <39.849949, 41.101650, 23.468639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958462, 40.889133, 23.442932>,  <40.139317, 40.534935, 23.400085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958462, 40.889133, 23.442932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292470, 0.260637, -0.920071,
		-0.842634, -0.384671, -0.376824,
		-0.452139, 0.885492, 0.107117,
		39.822819, 41.154781, 23.475067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878983, 40.604755, 22.786484>,  <40.139317, 40.534935, 23.400085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878983, 40.604755, 22.786484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868950, 40.982330, 22.918148>,  <39.862930, 41.208878, 22.997147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868950, 40.982330, 22.918148>,  <39.878983, 40.604755, 22.786484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868950, 40.982330, 22.918148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493075, 0.298110, -0.817317,
		-0.869625, 0.141802, -0.472911,
		-0.025082, 0.943940, 0.329162,
		39.861423, 41.265511, 23.016897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561176, 40.976910, 22.237631>,  <39.878983, 40.604755, 22.786484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561176, 40.976910, 22.237631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771549, 41.241695, 22.451248>,  <39.897774, 41.400566, 22.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771549, 41.241695, 22.451248>,  <39.561176, 40.976910, 22.237631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771549, 41.241695, 22.451248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376744, 0.381626, -0.844053,
		-0.762538, 0.645109, -0.048682,
		0.525928, 0.661963, 0.534045,
		39.929329, 41.440285, 22.611462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472485, 41.662773, 21.880419>,  <39.561176, 40.976910, 22.237631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472485, 41.662773, 21.880419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774910, 41.710960, 22.137745>,  <39.956364, 41.739872, 22.292141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774910, 41.710960, 22.137745>,  <39.472485, 41.662773, 21.880419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774910, 41.710960, 22.137745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439601, 0.634728, -0.635508,
		-0.484891, 0.763287, 0.426935,
		0.756063, 0.120471, 0.643316,
		40.001728, 41.747101, 22.330740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591003, 42.462017, 21.914234>,  <39.472485, 41.662773, 21.880419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591003, 42.462017, 21.914234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917603, 42.266846, 22.037687>,  <40.113564, 42.149742, 22.111759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917603, 42.266846, 22.037687>,  <39.591003, 42.462017, 21.914234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917603, 42.266846, 22.037687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533579, 0.433572, -0.726161,
		0.220499, 0.757590, 0.614359,
		0.816501, -0.487927, 0.308632,
		40.162552, 42.120468, 22.130278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986240, 42.945400, 21.825878>,  <39.591003, 42.462017, 21.914234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986240, 42.945400, 21.825878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224476, 42.625572, 21.856787>,  <40.367416, 42.433678, 21.875332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224476, 42.625572, 21.856787>,  <39.986240, 42.945400, 21.825878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224476, 42.625572, 21.856787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599831, 0.378688, -0.704840,
		0.534303, 0.466144, 0.705146,
		0.595587, -0.799565, 0.077274,
		40.403152, 42.385704, 21.879969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688660, 43.174984, 21.962713>,  <39.986240, 42.945400, 21.825878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688660, 43.174984, 21.962713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726101, 42.810814, 21.801538>,  <40.748566, 42.592312, 21.704834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726101, 42.810814, 21.801538>,  <40.688660, 43.174984, 21.962713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726101, 42.810814, 21.801538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697247, 0.348839, -0.626225,
		0.710693, -0.222328, 0.667448,
		0.093604, -0.910429, -0.402935,
		40.754181, 42.537685, 21.680658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454975, 43.047894, 21.793695>,  <40.688660, 43.174984, 21.962713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454975, 43.047894, 21.793695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269108, 42.784897, 21.556450>,  <41.157585, 42.627098, 21.414103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269108, 42.784897, 21.556450>,  <41.454975, 43.047894, 21.793695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269108, 42.784897, 21.556450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724365, 0.103003, -0.681679,
		0.509290, -0.746389, 0.428400,
		-0.464671, -0.657491, -0.593116,
		41.129707, 42.587650, 21.378515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003536, 42.773518, 21.479805>,  <41.454975, 43.047894, 21.793695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003536, 42.773518, 21.479805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714928, 42.667271, 21.224037>,  <41.541763, 42.603523, 21.070576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714928, 42.667271, 21.224037>,  <42.003536, 42.773518, 21.479805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714928, 42.667271, 21.224037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656458, 0.031221, -0.753716,
		0.220161, -0.963574, 0.151838,
		-0.721520, -0.265615, -0.639420,
		41.498470, 42.587585, 21.032211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369114, 42.312637, 20.918736>,  <42.003536, 42.773518, 21.479805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369114, 42.312637, 20.918736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022953, 42.421818, 20.750652>,  <41.815258, 42.487328, 20.649801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022953, 42.421818, 20.750652>,  <42.369114, 42.312637, 20.918736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022953, 42.421818, 20.750652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489017, 0.277183, -0.827063,
		-0.109272, -0.921232, -0.373352,
		-0.865403, 0.272950, -0.420209,
		41.763332, 42.503704, 20.624590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384506, 41.675285, 21.364388>,  <42.369114, 42.312637, 20.918736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384506, 41.675285, 21.364388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720654, 41.486927, 21.257029>,  <42.922344, 41.373913, 21.192614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720654, 41.486927, 21.257029>,  <42.384506, 41.675285, 21.364388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720654, 41.486927, 21.257029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022315, -0.464709, 0.885182,
		-0.541553, -0.749870, -0.380019,
		0.840370, -0.470893, -0.268398,
		42.972763, 41.345661, 21.176510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280231, 40.871105, 21.346573>,  <42.384506, 41.675285, 21.364388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280231, 40.871105, 21.346573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663933, 40.963539, 21.411598>,  <42.894154, 41.019001, 21.450613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663933, 40.963539, 21.411598>,  <42.280231, 40.871105, 21.346573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663933, 40.963539, 21.411598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054782, -0.412318, 0.909392,
		0.277178, -0.881244, -0.382859,
		0.959256, 0.231090, 0.162562,
		42.951710, 41.032867, 21.460367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581818, 40.295151, 21.665094>,  <42.280231, 40.871105, 21.346573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581818, 40.295151, 21.665094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872513, 40.554905, 21.754662>,  <43.046932, 40.710758, 21.808401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872513, 40.554905, 21.754662>,  <42.581818, 40.295151, 21.665094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872513, 40.554905, 21.754662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013137, -0.339057, 0.940674,
		0.686785, -0.680686, -0.254938,
		0.726742, 0.649390, 0.223917,
		43.090534, 40.749722, 21.821836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952774, 39.929089, 22.107283>,  <42.581818, 40.295151, 21.665094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952774, 39.929089, 22.107283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040035, 40.315754, 22.160921>,  <43.092392, 40.547752, 22.193104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040035, 40.315754, 22.160921>,  <42.952774, 39.929089, 22.107283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040035, 40.315754, 22.160921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165994, -0.172156, 0.970983,
		0.961695, -0.189559, -0.198015,
		0.218148, 0.966659, 0.134096,
		43.105480, 40.605751, 22.201149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574688, 39.980606, 22.541916>,  <42.952774, 39.929089, 22.107283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574688, 39.980606, 22.541916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363873, 40.317001, 22.590860>,  <43.237381, 40.518837, 22.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363873, 40.317001, 22.590860>,  <43.574688, 39.980606, 22.541916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363873, 40.317001, 22.590860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162242, -0.041767, 0.985867,
		0.834209, 0.539445, -0.114430,
		-0.527041, 0.840984, 0.122363,
		43.205761, 40.569298, 22.627569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880226, 40.299091, 23.043106>,  <43.574688, 39.980606, 22.541916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880226, 40.299091, 23.043106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546825, 40.518028, 23.012943>,  <43.346783, 40.649391, 22.994846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546825, 40.518028, 23.012943>,  <43.880226, 40.299091, 23.043106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546825, 40.518028, 23.012943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001706, 0.139025, 0.990287,
		0.552508, 0.825282, -0.116812,
		-0.833506, 0.547341, -0.075405,
		43.296772, 40.682232, 22.990322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027878, 41.014786, 23.313175>,  <43.880226, 40.299091, 23.043106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027878, 41.014786, 23.313175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635853, 40.937164, 23.330265>,  <43.400639, 40.890591, 23.340519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635853, 40.937164, 23.330265>,  <44.027878, 41.014786, 23.313175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635853, 40.937164, 23.330265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012485, 0.154461, 0.987920,
		-0.198309, 0.968754, -0.148958,
		-0.980060, -0.194054, 0.042726,
		43.341835, 40.878948, 23.343082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721909, 41.259663, 23.972374>,  <44.027878, 41.014786, 23.313175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721909, 41.259663, 23.972374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401459, 41.035828, 23.887466>,  <43.209190, 40.901527, 23.836523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401459, 41.035828, 23.887466>,  <43.721909, 41.259663, 23.972374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401459, 41.035828, 23.887466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260444, 0.006632, 0.965466,
		-0.538857, 0.828743, -0.151055,
		-0.801125, -0.559590, -0.212268,
		43.161121, 40.867950, 23.823786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188736, 41.553066, 24.412672>,  <43.721909, 41.259663, 23.972374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188736, 41.553066, 24.412672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032265, 41.202469, 24.300432>,  <42.938381, 40.992111, 24.233088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032265, 41.202469, 24.300432>,  <43.188736, 41.553066, 24.412672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032265, 41.202469, 24.300432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304650, -0.164382, 0.938172,
		-0.868428, 0.452479, -0.202721,
		-0.391179, -0.876494, -0.280602,
		42.914909, 40.939522, 24.216251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556225, 41.577637, 24.654745>,  <43.188736, 41.553066, 24.412672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556225, 41.577637, 24.654745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640263, 41.190533, 24.599180>,  <42.690685, 40.958271, 24.565842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640263, 41.190533, 24.599180>,  <42.556225, 41.577637, 24.654745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640263, 41.190533, 24.599180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398358, -0.214491, 0.891799,
		-0.892845, -0.132024, -0.430579,
		0.210094, -0.967762, -0.138914,
		42.703289, 40.900204, 24.557507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937786, 41.210644, 24.731375>,  <42.556225, 41.577637, 24.654745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937786, 41.210644, 24.731375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244759, 40.958878, 24.780188>,  <42.428940, 40.807819, 24.809475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244759, 40.958878, 24.780188>,  <41.937786, 41.210644, 24.731375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244759, 40.958878, 24.780188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465494, -0.416120, 0.781127,
		-0.440871, -0.656266, -0.612330,
		0.767430, -0.629412, 0.122033,
		42.474987, 40.770054, 24.816797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610519, 40.566402, 24.986959>,  <41.937786, 41.210644, 24.731375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610519, 40.566402, 24.986959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993916, 40.538280, 25.097486>,  <42.223953, 40.521408, 25.163803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993916, 40.538280, 25.097486>,  <41.610519, 40.566402, 24.986959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993916, 40.538280, 25.097486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254875, -0.645664, 0.719832,
		0.127799, -0.760379, -0.636782,
		0.958492, -0.070306, 0.276316,
		42.281464, 40.517189, 25.180382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747852, 39.862068, 25.098780>,  <41.610519, 40.566402, 24.986959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747852, 39.862068, 25.098780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008987, 40.073357, 25.315954>,  <42.165668, 40.200130, 25.446259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008987, 40.073357, 25.315954>,  <41.747852, 39.862068, 25.098780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008987, 40.073357, 25.315954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142562, -0.618264, 0.772933,
		0.743960, -0.582003, -0.328322,
		0.652839, 0.528225, 0.542936,
		42.204838, 40.231823, 25.478834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172722, 39.351242, 25.453533>,  <41.747852, 39.862068, 25.098780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172722, 39.351242, 25.453533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212231, 39.685883, 25.669067>,  <42.235935, 39.886665, 25.798388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212231, 39.685883, 25.669067>,  <42.172722, 39.351242, 25.453533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212231, 39.685883, 25.669067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245792, -0.504196, 0.827873,
		0.964277, -0.214211, 0.155830,
		0.098771, 0.836600, 0.538836,
		42.241863, 39.936863, 25.830719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623898, 39.195774, 26.028049>,  <42.172722, 39.351242, 25.453533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623898, 39.195774, 26.028049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372547, 39.496918, 26.106384>,  <42.221737, 39.677605, 26.153385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372547, 39.496918, 26.106384>,  <42.623898, 39.195774, 26.028049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372547, 39.496918, 26.106384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277976, -0.452435, 0.847368,
		0.726552, 0.478025, 0.493574,
		-0.628373, 0.752858, 0.195838,
		42.184036, 39.722775, 26.165136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646851, 39.192905, 26.831507>,  <42.623898, 39.195774, 26.028049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646851, 39.192905, 26.831507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338993, 39.420284, 26.715216>,  <42.154278, 39.556709, 26.645441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338993, 39.420284, 26.715216>,  <42.646851, 39.192905, 26.831507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338993, 39.420284, 26.715216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519347, -0.292512, 0.802942,
		0.371386, 0.768966, 0.520349,
		-0.769644, 0.568443, -0.290725,
		42.108101, 39.590816, 26.627998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324425, 39.297546, 27.454756>,  <42.646851, 39.192905, 26.831507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324425, 39.297546, 27.454756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041294, 39.406612, 27.194098>,  <41.871418, 39.472050, 27.037703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041294, 39.406612, 27.194098>,  <42.324425, 39.297546, 27.454756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041294, 39.406612, 27.194098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705683, -0.314238, 0.635033,
		-0.031624, 0.909346, 0.414836,
		-0.707822, 0.272660, -0.651647,
		41.828949, 39.488411, 26.998604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793781, 39.703720, 27.828804>,  <42.324425, 39.297546, 27.454756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793781, 39.703720, 27.828804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609955, 39.569157, 27.500017>,  <41.499660, 39.488419, 27.302746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609955, 39.569157, 27.500017>,  <41.793781, 39.703720, 27.828804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609955, 39.569157, 27.500017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714467, -0.409724, 0.567153,
		-0.527575, 0.847912, -0.052058,
		-0.459567, -0.336409, -0.821966,
		41.472084, 39.468235, 27.253428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110111, 39.834389, 27.929941>,  <41.793781, 39.703720, 27.828804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110111, 39.834389, 27.929941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127254, 39.538654, 27.661152>,  <41.137539, 39.361214, 27.499878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127254, 39.538654, 27.661152>,  <41.110111, 39.834389, 27.929941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127254, 39.538654, 27.661152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708000, -0.497026, 0.501699,
		-0.704911, 0.454255, -0.544750,
		0.042855, -0.739336, -0.671971,
		41.140110, 39.316853, 27.459560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405148, 39.725613, 27.696501>,  <41.110111, 39.834389, 27.929941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405148, 39.725613, 27.696501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611088, 39.386410, 27.646185>,  <40.734650, 39.182888, 27.615995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611088, 39.386410, 27.646185>,  <40.405148, 39.725613, 27.696501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611088, 39.386410, 27.646185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729192, -0.510337, 0.455888,
		-0.450790, -0.142988, -0.881103,
		0.514846, -0.848004, -0.125790,
		40.765541, 39.132008, 27.608448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981361, 39.215393, 27.419781>,  <40.405148, 39.725613, 27.696501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981361, 39.215393, 27.419781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273178, 39.001820, 27.590746>,  <40.448269, 38.873676, 27.693325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273178, 39.001820, 27.590746>,  <39.981361, 39.215393, 27.419781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273178, 39.001820, 27.590746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683482, -0.546482, 0.483952,
		-0.024825, -0.645193, -0.763617,
		0.729545, -0.533932, 0.427411,
		40.492043, 38.841640, 27.718969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671024, 38.542076, 27.358929>,  <39.981361, 39.215393, 27.419781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671024, 38.542076, 27.358929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987465, 38.522381, 27.602806>,  <40.177330, 38.510563, 27.749132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987465, 38.522381, 27.602806>,  <39.671024, 38.542076, 27.358929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987465, 38.522381, 27.602806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504584, -0.615959, 0.604970,
		0.345758, -0.786237, -0.512135,
		0.791105, -0.049242, 0.609695,
		40.224796, 38.507607, 27.785715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815460, 37.819302, 27.419649>,  <39.671024, 38.542076, 27.358929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815460, 37.819302, 27.419649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951256, 38.009460, 27.744301>,  <40.032734, 38.123558, 27.939091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951256, 38.009460, 27.744301>,  <39.815460, 37.819302, 27.419649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951256, 38.009460, 27.744301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527443, -0.618234, 0.582744,
		0.778812, -0.625925, 0.040860,
		0.339494, 0.475400, 0.811628,
		40.053104, 38.152081, 27.987789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049343, 37.340275, 27.837170>,  <39.815460, 37.819302, 27.419649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049343, 37.340275, 27.837170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018398, 37.625523, 28.115873>,  <39.999832, 37.796673, 28.283096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018398, 37.625523, 28.115873>,  <40.049343, 37.340275, 27.837170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018398, 37.625523, 28.115873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467395, -0.643243, 0.606449,
		0.880657, -0.278744, 0.383073,
		-0.077365, 0.713120, 0.696760,
		39.995190, 37.839458, 28.324902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210552, 37.013458, 28.425640>,  <40.049343, 37.340275, 27.837170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210552, 37.013458, 28.425640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059212, 37.355930, 28.566380>,  <39.968407, 37.561413, 28.650824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059212, 37.355930, 28.566380>,  <40.210552, 37.013458, 28.425640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059212, 37.355930, 28.566380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305983, -0.474419, 0.825410,
		0.873626, 0.204637, 0.441476,
		-0.378354, 0.856184, 0.351849,
		39.945705, 37.612785, 28.671934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540897, 37.072845, 29.077175>,  <40.210552, 37.013458, 28.425640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540897, 37.072845, 29.077175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206734, 37.291981, 29.094913>,  <40.006237, 37.423462, 29.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206734, 37.291981, 29.094913>,  <40.540897, 37.072845, 29.077175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206734, 37.291981, 29.094913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252730, -0.454534, 0.854123,
		0.488079, 0.702334, 0.518177,
		-0.835408, 0.547838, 0.044348,
		39.956112, 37.456333, 29.108217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452637, 37.479996, 29.672779>,  <40.540897, 37.072845, 29.077175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452637, 37.479996, 29.672779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099091, 37.357071, 29.531725>,  <39.886963, 37.283318, 29.447092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099091, 37.357071, 29.531725>,  <40.452637, 37.479996, 29.672779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099091, 37.357071, 29.531725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200435, -0.432337, 0.879154,
		-0.422630, 0.847729, 0.320529,
		-0.883861, -0.307311, -0.352633,
		39.833931, 37.264877, 29.425936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092949, 37.541714, 30.252645>,  <40.452637, 37.479996, 29.672779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092949, 37.541714, 30.252645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895073, 37.290356, 30.012510>,  <39.776348, 37.139542, 29.868429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895073, 37.290356, 30.012510>,  <40.092949, 37.541714, 30.252645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895073, 37.290356, 30.012510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313265, -0.515411, 0.797632,
		-0.810646, 0.582646, 0.058115,
		-0.494690, -0.628391, -0.600338,
		39.746666, 37.101837, 29.832409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438522, 37.405613, 30.623180>,  <40.092949, 37.541714, 30.252645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438522, 37.405613, 30.623180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455009, 37.099190, 30.366602>,  <39.464901, 36.915337, 30.212654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455009, 37.099190, 30.366602>,  <39.438522, 37.405613, 30.623180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455009, 37.099190, 30.366602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314265, -0.619348, 0.719476,
		-0.948440, 0.171927, -0.266275,
		0.041219, -0.766060, -0.641445,
		39.467377, 36.869373, 30.174168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733547, 37.158413, 30.633095>,  <39.438522, 37.405613, 30.623180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733547, 37.158413, 30.633095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978046, 36.878784, 30.484673>,  <39.124744, 36.711006, 30.395620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978046, 36.878784, 30.484673>,  <38.733547, 37.158413, 30.633095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978046, 36.878784, 30.484673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378996, -0.670127, 0.638195,
		-0.694800, -0.249460, -0.674553,
		0.611240, -0.699071, -0.371060,
		39.161419, 36.669064, 30.373356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368858, 36.484921, 30.501865>,  <38.733547, 37.158413, 30.633095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368858, 36.484921, 30.501865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747345, 36.360779, 30.538420>,  <38.974438, 36.286293, 30.560352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747345, 36.360779, 30.538420>,  <38.368858, 36.484921, 30.501865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747345, 36.360779, 30.538420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298563, -0.728826, 0.616176,
		-0.124629, -0.610321, -0.782289,
		0.946218, -0.310356, 0.091386,
		39.031212, 36.267673, 30.565836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397873, 35.695320, 30.416250>,  <38.368858, 36.484921, 30.501865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397873, 35.695320, 30.416250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733315, 35.785290, 30.614706>,  <38.934578, 35.839272, 30.733780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733315, 35.785290, 30.614706>,  <38.397873, 35.695320, 30.416250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733315, 35.785290, 30.614706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168291, -0.759251, 0.628662,
		0.518096, -0.610694, -0.598857,
		0.838603, 0.224925, 0.496139,
		38.984894, 35.852768, 30.763548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719086, 35.020416, 30.557875>,  <38.397873, 35.695320, 30.416250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719086, 35.020416, 30.557875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892735, 35.285664, 30.801783>,  <38.996925, 35.444813, 30.948128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892735, 35.285664, 30.801783>,  <38.719086, 35.020416, 30.557875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892735, 35.285664, 30.801783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021526, -0.669049, 0.742907,
		0.900597, -0.335638, -0.276174,
		0.434122, 0.663114, 0.609768,
		39.022972, 35.484596, 30.984713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946606, 34.640293, 31.029169>,  <38.719086, 35.020416, 30.557875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946606, 34.640293, 31.029169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016735, 34.979740, 31.228817>,  <39.058811, 35.183407, 31.348606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016735, 34.979740, 31.228817>,  <38.946606, 34.640293, 31.029169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016735, 34.979740, 31.228817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016888, -0.504303, 0.863362,
		0.984367, -0.159793, -0.074082,
		0.175319, 0.848613, 0.499118,
		39.069332, 35.234325, 31.378551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400177, 34.454807, 31.535212>,  <38.946606, 34.640293, 31.029169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400177, 34.454807, 31.535212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300385, 34.805252, 31.700224>,  <39.240509, 35.015518, 31.799231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300385, 34.805252, 31.700224>,  <39.400177, 34.454807, 31.535212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300385, 34.805252, 31.700224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232832, -0.359234, 0.903737,
		0.939973, 0.321513, -0.114367,
		-0.249479, 0.876116, 0.412529,
		39.225540, 35.068089, 31.823982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890110, 34.655170, 31.931185>,  <39.400177, 34.454807, 31.535212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890110, 34.655170, 31.931185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574718, 34.846958, 32.085278>,  <39.385483, 34.962032, 32.177734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574718, 34.846958, 32.085278>,  <39.890110, 34.655170, 31.931185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574718, 34.846958, 32.085278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288847, -0.264312, 0.920167,
		0.543013, 0.836809, 0.069912,
		-0.788482, 0.479469, 0.385234,
		39.338173, 34.990799, 32.200848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145054, 34.934807, 32.553814>,  <39.890110, 34.655170, 31.931185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145054, 34.934807, 32.553814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748566, 34.954178, 32.603035>,  <39.510674, 34.965801, 32.632568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748566, 34.954178, 32.603035>,  <40.145054, 34.934807, 32.553814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748566, 34.954178, 32.603035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114330, -0.153766, 0.981471,
		0.066455, 0.986920, 0.146878,
		-0.991218, 0.048431, 0.123053,
		39.451199, 34.968708, 32.639950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034988, 35.182014, 33.212334>,  <40.145054, 34.934807, 32.553814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034988, 35.182014, 33.212334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693398, 34.996849, 33.117310>,  <39.488441, 34.885750, 33.060295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693398, 34.996849, 33.117310>,  <40.034988, 35.182014, 33.212334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693398, 34.996849, 33.117310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076456, -0.339972, 0.937322,
		-0.514664, 0.818614, 0.254936,
		-0.853976, -0.462915, -0.237560,
		39.437206, 34.857975, 33.046043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707047, 35.149330, 33.870010>,  <40.034988, 35.182014, 33.212334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707047, 35.149330, 33.870010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471848, 34.902237, 33.661140>,  <39.330730, 34.753983, 33.535820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471848, 34.902237, 33.661140>,  <39.707047, 35.149330, 33.870010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471848, 34.902237, 33.661140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212530, -0.504894, 0.836608,
		-0.780445, 0.602899, 0.165588,
		-0.587994, -0.617734, -0.522175,
		39.295448, 34.716915, 33.504486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006912, 35.162025, 34.168320>,  <39.707047, 35.149330, 33.870010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006912, 35.162025, 34.168320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093609, 34.810638, 33.997997>,  <39.145626, 34.599804, 33.895805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093609, 34.810638, 33.997997>,  <39.006912, 35.162025, 34.168320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093609, 34.810638, 33.997997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206094, -0.467518, 0.859623,
		-0.954226, -0.098560, -0.282379,
		0.216742, -0.878472, -0.425805,
		39.158630, 34.547096, 33.870255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481094, 34.544868, 34.309738>,  <39.006912, 35.162025, 34.168320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481094, 34.544868, 34.309738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842911, 34.400883, 34.218319>,  <39.060001, 34.314491, 34.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842911, 34.400883, 34.218319>,  <38.481094, 34.544868, 34.309738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842911, 34.400883, 34.218319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079023, -0.668246, 0.739731,
		-0.419004, -0.651055, -0.632900,
		0.904539, -0.359965, -0.228549,
		39.114273, 34.292892, 34.149754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382465, 33.785042, 34.236103>,  <38.481094, 34.544868, 34.309738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382465, 33.785042, 34.236103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766609, 33.859955, 34.318699>,  <38.997093, 33.904903, 34.368256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766609, 33.859955, 34.318699>,  <38.382465, 33.785042, 34.236103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766609, 33.859955, 34.318699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007634, -0.722779, 0.691037,
		0.278669, -0.665218, -0.692696,
		0.960357, 0.187283, 0.206494,
		39.054718, 33.916142, 34.380646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679256, 33.082912, 34.325939>,  <38.382465, 33.785042, 34.236103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679256, 33.082912, 34.325939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929630, 33.338257, 34.505135>,  <39.079857, 33.491463, 34.612652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929630, 33.338257, 34.505135>,  <38.679256, 33.082912, 34.325939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929630, 33.338257, 34.505135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073483, -0.620159, 0.781027,
		0.776404, -0.455954, -0.435089,
		0.625936, 0.638365, 0.447989,
		39.117413, 33.529766, 34.639530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039661, 32.603313, 34.704433>,  <38.679256, 33.082912, 34.325939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039661, 32.603313, 34.704433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087284, 32.963577, 34.871590>,  <39.115856, 33.179737, 34.971886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087284, 32.963577, 34.871590>,  <39.039661, 32.603313, 34.704433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087284, 32.963577, 34.871590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197798, -0.433963, 0.878949,
		0.972986, -0.021982, -0.229814,
		0.119052, 0.900662, 0.417892,
		39.123001, 33.233776, 34.996956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744457, 32.651924, 35.046513>,  <39.039661, 32.603313, 34.704433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744457, 32.651924, 35.046513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491543, 32.913044, 35.213402>,  <39.339794, 33.069714, 35.313534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491543, 32.913044, 35.213402>,  <39.744457, 32.651924, 35.046513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491543, 32.913044, 35.213402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120979, -0.448733, 0.885439,
		0.765231, 0.610326, 0.204753,
		-0.632286, 0.652795, 0.417221,
		39.301857, 33.108883, 35.338570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072674, 32.778091, 35.639889>,  <39.744457, 32.651924, 35.046513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072674, 32.778091, 35.639889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700157, 32.904060, 35.713127>,  <39.476646, 32.979641, 35.757072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700157, 32.904060, 35.713127>,  <40.072674, 32.778091, 35.639889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700157, 32.904060, 35.713127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022631, -0.551678, 0.833750,
		0.363577, 0.772319, 0.520898,
		-0.931289, 0.314921, 0.183099,
		39.420769, 32.998535, 35.768055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991955, 32.959293, 36.336185>,  <40.072674, 32.778091, 35.639889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991955, 32.959293, 36.336185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603489, 32.936958, 36.243481>,  <39.370407, 32.923557, 36.187859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603489, 32.936958, 36.243481>,  <39.991955, 32.959293, 36.336185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603489, 32.936958, 36.243481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130329, -0.689685, 0.712284,
		-0.199614, 0.721953, 0.662524,
		-0.971169, -0.055835, -0.231762,
		39.312138, 32.920208, 36.173950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623528, 33.009132, 37.009552>,  <39.991955, 32.959293, 36.336185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623528, 33.009132, 37.009552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360767, 32.843128, 36.757759>,  <39.203110, 32.743526, 36.606682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360767, 32.843128, 36.757759>,  <39.623528, 33.009132, 37.009552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360767, 32.843128, 36.757759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183882, -0.721494, 0.667558,
		-0.731212, 0.554269, 0.397637,
		-0.656900, -0.415008, -0.629485,
		39.163696, 32.718624, 36.568913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012234, 32.816025, 37.369221>,  <39.623528, 33.009132, 37.009552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012234, 32.816025, 37.369221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049610, 32.583435, 37.045948>,  <39.072037, 32.443882, 36.851986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049610, 32.583435, 37.045948>,  <39.012234, 32.816025, 37.369221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049610, 32.583435, 37.045948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392762, -0.767426, 0.506750,
		-0.914881, 0.270072, -0.300089,
		0.093437, -0.581479, -0.808178,
		39.077641, 32.408993, 36.803493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377556, 32.645267, 37.150936>,  <39.012234, 32.816025, 37.369221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377556, 32.645267, 37.150936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626060, 32.352615, 37.038685>,  <38.775166, 32.177025, 36.971336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626060, 32.352615, 37.038685>,  <38.377556, 32.645267, 37.150936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626060, 32.352615, 37.038685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487598, -0.641288, 0.592451,
		-0.613411, -0.231241, -0.755152,
		0.621269, -0.731627, -0.280620,
		38.812439, 32.133125, 36.954498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077431, 32.045570, 37.418728>,  <38.377556, 32.645267, 37.150936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077431, 32.045570, 37.418728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347492, 31.843416, 37.203789>,  <38.509529, 31.722124, 37.074825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347492, 31.843416, 37.203789>,  <38.077431, 32.045570, 37.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347492, 31.843416, 37.203789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446687, -0.859801, 0.247412,
		-0.587055, 0.072986, -0.806251,
		0.675158, -0.505386, -0.537352,
		38.550041, 31.691801, 37.042583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823833, 31.696386, 36.890675>,  <38.077431, 32.045570, 37.418728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823833, 31.696386, 36.890675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152988, 31.501596, 37.007782>,  <38.350483, 31.384724, 37.078045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152988, 31.501596, 37.007782>,  <37.823833, 31.696386, 36.890675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152988, 31.501596, 37.007782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562582, -0.770570, 0.299539,
		0.079731, -0.411193, -0.908055,
		0.822888, -0.486973, 0.292768,
		38.399857, 31.355505, 37.095612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621414, 30.965494, 36.903809>,  <37.823833, 31.696386, 36.890675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621414, 30.965494, 36.903809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983624, 30.944786, 37.072262>,  <38.200947, 30.932362, 37.173336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983624, 30.944786, 37.072262>,  <37.621414, 30.965494, 36.903809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983624, 30.944786, 37.072262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224377, -0.900823, 0.371716,
		0.360125, -0.431089, -0.827328,
		0.905519, -0.051769, 0.421136,
		38.255280, 30.929255, 37.198601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066036, 30.277592, 36.668625>,  <37.621414, 30.965494, 36.903809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066036, 30.277592, 36.668625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149883, 30.412502, 37.035732>,  <38.200191, 30.493448, 37.255997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149883, 30.412502, 37.035732>,  <38.066036, 30.277592, 36.668625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149883, 30.412502, 37.035732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226499, -0.896346, 0.381133,
		0.951188, -0.287766, -0.111498,
		0.209618, 0.337276, 0.917772,
		38.212769, 30.513685, 37.311066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365536, 29.762209, 37.061417>,  <38.066036, 30.277592, 36.668625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365536, 29.762209, 37.061417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241188, 30.007143, 37.352180>,  <38.166580, 30.154104, 37.526638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241188, 30.007143, 37.352180>,  <38.365536, 29.762209, 37.061417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241188, 30.007143, 37.352180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485053, -0.759927, 0.432708,
		0.817363, -0.218075, 0.533255,
		-0.310872, 0.612336, 0.726914,
		38.147926, 30.190844, 37.570255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512169, 29.421368, 37.666759>,  <38.365536, 29.762209, 37.061417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512169, 29.421368, 37.666759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240643, 29.704905, 37.743439>,  <38.077724, 29.875027, 37.789448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240643, 29.704905, 37.743439>,  <38.512169, 29.421368, 37.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240643, 29.704905, 37.743439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553337, -0.665406, 0.501051,
		0.482725, 0.234047, 0.843919,
		-0.678819, 0.708841, 0.191701,
		38.036999, 29.917557, 37.800949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217098, 29.193310, 38.368214>,  <38.512169, 29.421368, 37.666759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217098, 29.193310, 38.368214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932442, 29.439993, 38.233608>,  <37.761650, 29.588003, 38.152843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932442, 29.439993, 38.233608>,  <38.217098, 29.193310, 38.368214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932442, 29.439993, 38.233608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669944, -0.451474, 0.589361,
		0.211535, 0.644859, 0.734445,
		-0.711638, 0.616707, -0.336517,
		37.718952, 29.625006, 38.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879448, 29.292425, 38.982483>,  <38.217098, 29.193310, 38.368214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879448, 29.292425, 38.982483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616932, 29.376497, 38.692623>,  <37.459423, 29.426941, 38.518707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616932, 29.376497, 38.692623>,  <37.879448, 29.292425, 38.982483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616932, 29.376497, 38.692623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753454, -0.233377, 0.614689,
		-0.039921, 0.949400, 0.311523,
		-0.656287, 0.210180, -0.724646,
		37.420044, 29.439550, 38.475231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319229, 29.357828, 39.277020>,  <37.879448, 29.292425, 38.982483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319229, 29.357828, 39.277020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168915, 29.320541, 38.908218>,  <37.078724, 29.298168, 38.686935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168915, 29.320541, 38.908218>,  <37.319229, 29.357828, 39.277020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168915, 29.320541, 38.908218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704784, -0.617265, 0.349662,
		-0.601717, 0.781213, 0.166263,
		-0.375789, -0.093218, -0.922005,
		37.056179, 29.292576, 38.631618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613327, 29.359045, 39.382915>,  <37.319229, 29.357828, 39.277020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613327, 29.359045, 39.382915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703712, 29.166853, 39.043957>,  <36.757942, 29.051537, 38.840584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703712, 29.166853, 39.043957>,  <36.613327, 29.359045, 39.382915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703712, 29.166853, 39.043957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672612, -0.706203, 0.221067,
		-0.704645, 0.520002, -0.482776,
		0.225982, -0.480495, -0.847382,
		36.771500, 29.022709, 38.789738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995266, 29.321545, 38.921547>,  <36.613327, 29.359045, 39.382915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995266, 29.321545, 38.921547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256897, 29.019108, 38.930595>,  <36.413876, 28.837646, 38.936024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256897, 29.019108, 38.930595>,  <35.995266, 29.321545, 38.921547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256897, 29.019108, 38.930595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646521, -0.543264, 0.535607,
		-0.392675, -0.364957, -0.844164,
		0.654077, -0.756089, 0.022626,
		36.453121, 28.792280, 38.937382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622753, 28.681767, 38.609035>,  <35.995266, 29.321545, 38.921547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622753, 28.681767, 38.609035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936062, 28.568924, 38.830631>,  <36.124046, 28.501219, 38.963589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936062, 28.568924, 38.830631>,  <35.622753, 28.681767, 38.609035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936062, 28.568924, 38.830631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606253, -0.543892, 0.580206,
		0.137628, -0.790315, -0.597044,
		0.783273, -0.282107, 0.553985,
		36.171043, 28.484291, 38.996826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924519, 27.850710, 38.608356>,  <35.622753, 28.681767, 38.609035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924519, 27.850710, 38.608356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978760, 28.044996, 38.953770>,  <36.011303, 28.161568, 39.161018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978760, 28.044996, 38.953770>,  <35.924519, 27.850710, 38.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978760, 28.044996, 38.953770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370834, -0.783349, 0.498845,
		0.918747, -0.387870, 0.073899,
		0.135599, 0.485716, 0.863535,
		36.019440, 28.190712, 39.212830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654045, 27.868927, 38.820530>,  <35.924519, 27.850710, 38.608356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654045, 27.868927, 38.820530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938923, 27.595110, 38.758327>,  <37.109848, 27.430819, 38.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938923, 27.595110, 38.758327>,  <36.654045, 27.868927, 38.820530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938923, 27.595110, 38.758327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691309, -0.722422, 0.014055,
		-0.121963, 0.097493, -0.987735,
		0.712191, -0.684544, -0.155507,
		37.152580, 27.389746, 38.711674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076855, 28.234650, 38.324387>,  <36.654045, 27.868927, 38.820530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076855, 28.234650, 38.324387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726311, 28.426992, 38.335442>,  <36.515984, 28.542398, 38.342075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726311, 28.426992, 38.335442>,  <37.076855, 28.234650, 38.324387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726311, 28.426992, 38.335442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443946, 0.828688, -0.340863,
		-0.186807, -0.286451, -0.939707,
		-0.876364, 0.480855, 0.027636,
		36.463402, 28.571249, 38.343731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942280, 28.484583, 37.686573>,  <37.076855, 28.234650, 38.324387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942280, 28.484583, 37.686573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781857, 28.694273, 37.987064>,  <36.685604, 28.820087, 38.167358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781857, 28.694273, 37.987064>,  <36.942280, 28.484583, 37.686573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781857, 28.694273, 37.987064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368543, 0.843110, -0.391589,
		-0.838647, 0.119808, -0.531336,
		-0.401059, 0.524225, 0.751226,
		36.661537, 28.851540, 38.212433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600719, 29.138281, 37.443573>,  <36.942280, 28.484583, 37.686573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600719, 29.138281, 37.443573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727661, 29.193104, 37.818913>,  <36.803825, 29.225998, 38.044117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727661, 29.193104, 37.818913>,  <36.600719, 29.138281, 37.443573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727661, 29.193104, 37.818913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448532, 0.850127, -0.275868,
		-0.835526, 0.508429, 0.208319,
		0.317357, 0.137057, 0.938349,
		36.822868, 29.234221, 38.100418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580299, 29.799795, 37.444984>,  <36.600719, 29.138281, 37.443573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580299, 29.799795, 37.444984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834061, 29.688122, 37.733315>,  <36.986317, 29.621117, 37.906311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834061, 29.688122, 37.733315>,  <36.580299, 29.799795, 37.444984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834061, 29.688122, 37.733315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619399, 0.741490, -0.257948,
		-0.462470, 0.610122, 0.643330,
		0.634402, -0.279185, 0.720826,
		37.024380, 29.604366, 37.949562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823689, 30.409872, 37.617596>,  <36.580299, 29.799795, 37.444984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823689, 30.409872, 37.617596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112244, 30.173252, 37.761635>,  <37.285378, 30.031281, 37.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112244, 30.173252, 37.761635>,  <36.823689, 30.409872, 37.617596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112244, 30.173252, 37.761635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656748, 0.749340, -0.084689,
		-0.219737, 0.297586, 0.929063,
		0.721386, -0.591551, 0.360096,
		37.328659, 29.995787, 37.869663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171555, 30.814640, 38.171085>,  <36.823689, 30.409872, 37.617596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171555, 30.814640, 38.171085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392467, 30.518932, 38.016956>,  <37.525013, 30.341509, 37.924480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392467, 30.518932, 38.016956>,  <37.171555, 30.814640, 38.171085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392467, 30.518932, 38.016956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747750, 0.643633, -0.163113,
		0.368589, -0.198039, 0.908253,
		0.552279, -0.739268, -0.385320,
		37.558151, 30.297152, 37.901360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796104, 31.029188, 38.512829>,  <37.171555, 30.814640, 38.171085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796104, 31.029188, 38.512829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919380, 30.771616, 38.232723>,  <37.993347, 30.617073, 38.064659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919380, 30.771616, 38.232723>,  <37.796104, 31.029188, 38.512829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919380, 30.771616, 38.232723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701505, 0.651028, -0.289918,
		0.642581, -0.401892, 0.652359,
		0.308188, -0.643929, -0.700268,
		38.011837, 30.578438, 38.022644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516888, 31.008308, 38.505939>,  <37.796104, 31.029188, 38.512829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516888, 31.008308, 38.505939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436474, 30.870312, 38.139210>,  <38.388226, 30.787514, 37.919170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436474, 30.870312, 38.139210>,  <38.516888, 31.008308, 38.505939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436474, 30.870312, 38.139210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672231, 0.632187, -0.385285,
		0.712524, -0.693773, 0.104823,
		-0.201033, -0.344990, -0.916825,
		38.376163, 30.766815, 37.864162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156887, 30.748169, 38.078148>,  <38.516888, 31.008308, 38.505939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156887, 30.748169, 38.078148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861721, 30.842262, 37.825119>,  <38.684620, 30.898718, 37.673302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861721, 30.842262, 37.825119>,  <39.156887, 30.748169, 38.078148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861721, 30.842262, 37.825119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670090, 0.367003, -0.645204,
		0.080380, -0.899985, -0.428447,
		-0.737915, 0.235236, -0.632571,
		38.640347, 30.912832, 37.635349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532860, 30.763277, 37.530994>,  <39.156887, 30.748169, 38.078148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532860, 30.763277, 37.530994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197914, 30.951385, 37.419518>,  <38.996948, 31.064251, 37.352631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197914, 30.951385, 37.419518>,  <39.532860, 30.763277, 37.530994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197914, 30.951385, 37.419518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473489, 0.369163, -0.799704,
		-0.273195, -0.801600, -0.531792,
		-0.837361, 0.470273, -0.278695,
		38.946705, 31.092466, 37.335911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656689, 31.136688, 36.930683>,  <39.532860, 30.763277, 37.530994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656689, 31.136688, 36.930683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301777, 31.316582, 36.971630>,  <39.088829, 31.424519, 36.996201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301777, 31.316582, 36.971630>,  <39.656689, 31.136688, 36.930683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301777, 31.316582, 36.971630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203468, 0.580828, -0.788187,
		-0.413935, -0.678510, -0.606862,
		-0.887276, 0.449736, 0.102370,
		39.035595, 31.451502, 37.002342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290943, 31.146238, 36.283051>,  <39.656689, 31.136688, 36.930683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290943, 31.146238, 36.283051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140099, 31.454582, 36.488403>,  <39.049591, 31.639589, 36.611614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140099, 31.454582, 36.488403>,  <39.290943, 31.146238, 36.283051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140099, 31.454582, 36.488403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297399, 0.625741, -0.721111,
		-0.877120, -0.119261, -0.465229,
		-0.377114, 0.770859, 0.513382,
		39.026966, 31.685841, 36.642418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042263, 31.653376, 35.744709>,  <39.290943, 31.146238, 36.283051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042263, 31.653376, 35.744709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055126, 31.886171, 36.069733>,  <39.062843, 32.025848, 36.264748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055126, 31.886171, 36.069733>,  <39.042263, 31.653376, 35.744709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055126, 31.886171, 36.069733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080248, 0.811858, -0.578313,
		-0.996256, -0.046609, 0.072810,
		0.032157, 0.581991, 0.812559,
		39.064774, 32.060768, 36.313499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539326, 31.732889, 36.292503>,  <39.042263, 31.653376, 35.744709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539326, 31.732889, 36.292503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579277, 32.084385, 36.479198>,  <38.603249, 32.295280, 36.591217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579277, 32.084385, 36.479198>,  <38.539326, 31.732889, 36.292503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579277, 32.084385, 36.479198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187722, 0.444017, -0.876133,
		-0.977131, 0.175125, -0.120610,
		0.099880, 0.878738, 0.466737,
		38.609241, 32.348007, 36.619221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175892, 32.296158, 35.973595>,  <38.539326, 31.732889, 36.292503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175892, 32.296158, 35.973595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473015, 32.467796, 36.179161>,  <38.651291, 32.570778, 36.302502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473015, 32.467796, 36.179161>,  <38.175892, 32.296158, 35.973595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473015, 32.467796, 36.179161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190442, 0.600482, -0.776629,
		-0.641846, 0.674759, 0.364326,
		0.742809, 0.429094, 0.513920,
		38.695858, 32.596523, 36.333336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025669, 32.927212, 35.920555>,  <38.175892, 32.296158, 35.973595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025669, 32.927212, 35.920555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408733, 32.955956, 36.032066>,  <38.638573, 32.973202, 36.098972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408733, 32.955956, 36.032066>,  <38.025669, 32.927212, 35.920555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408733, 32.955956, 36.032066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137321, 0.737078, -0.661709,
		-0.253031, 0.671977, 0.696005,
		0.957663, 0.071857, 0.278780,
		38.696033, 32.977512, 36.115700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182209, 33.669971, 36.058044>,  <38.025669, 32.927212, 35.920555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182209, 33.669971, 36.058044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521706, 33.478962, 35.967178>,  <38.725403, 33.364357, 35.912659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521706, 33.478962, 35.967178>,  <38.182209, 33.669971, 36.058044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521706, 33.478962, 35.967178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168818, 0.651786, -0.739375,
		0.501136, 0.589189, 0.633813,
		0.848742, -0.477526, -0.227168,
		38.776329, 33.335705, 35.899029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700100, 34.138592, 35.844868>,  <38.182209, 33.669971, 36.058044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700100, 34.138592, 35.844868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869007, 33.813313, 35.684666>,  <38.970352, 33.618145, 35.588543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869007, 33.813313, 35.684666>,  <38.700100, 34.138592, 35.844868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869007, 33.813313, 35.684666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293642, 0.540718, -0.788288,
		0.857594, 0.215260, 0.467114,
		0.422264, -0.813196, -0.400507,
		38.995686, 33.569355, 35.564514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366882, 34.385948, 35.629253>,  <38.700100, 34.138592, 35.844868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366882, 34.385948, 35.629253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277744, 34.059402, 35.416130>,  <39.224262, 33.863476, 35.288258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277744, 34.059402, 35.416130>,  <39.366882, 34.385948, 35.629253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277744, 34.059402, 35.416130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384409, 0.428680, -0.817596,
		0.895863, -0.387011, 0.218291,
		-0.222842, -0.816368, -0.532809,
		39.210892, 33.814491, 35.256287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993076, 34.337116, 35.225033>,  <39.366882, 34.385948, 35.629253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993076, 34.337116, 35.225033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728725, 34.094215, 35.048630>,  <39.570114, 33.948475, 34.942787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728725, 34.094215, 35.048630>,  <39.993076, 34.337116, 35.225033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728725, 34.094215, 35.048630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205622, 0.418623, -0.884576,
		0.721780, -0.675272, -0.151791,
		-0.660873, -0.607257, -0.441005,
		39.530464, 33.912037, 34.916328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283802, 33.961899, 34.703194>,  <39.993076, 34.337116, 35.225033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283802, 33.961899, 34.703194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898380, 33.984016, 34.598503>,  <39.667126, 33.997288, 34.535686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898380, 33.984016, 34.598503>,  <40.283802, 33.961899, 34.703194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898380, 33.984016, 34.598503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266713, 0.273932, -0.924027,
		0.020604, -0.960158, -0.278696,
		-0.963556, 0.055293, -0.261731,
		39.609314, 34.000603, 34.519985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287781, 33.738255, 34.064953>,  <40.283802, 33.961899, 34.703194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287781, 33.738255, 34.064953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943420, 33.939499, 34.095261>,  <39.736805, 34.060246, 34.113445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943420, 33.939499, 34.095261>,  <40.287781, 33.738255, 34.064953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943420, 33.939499, 34.095261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064598, 0.255796, -0.964570,
		-0.504663, -0.825500, -0.252714,
		-0.860896, 0.503107, 0.075765,
		39.685150, 34.090431, 34.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807083, 33.197105, 34.064880>,  <40.287781, 33.738255, 34.064953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807083, 33.197105, 34.064880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027058, 33.519585, 34.152161>,  <41.159042, 33.713074, 34.204529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027058, 33.519585, 34.152161>,  <40.807083, 33.197105, 34.064880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027058, 33.519585, 34.152161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638636, -0.574265, 0.512214,
		0.538253, -0.142333, -0.830677,
		0.549934, 0.806202, 0.218201,
		41.192039, 33.761444, 34.217621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488091, 32.800560, 34.286415>,  <40.807083, 33.197105, 34.064880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488091, 32.800560, 34.286415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127430, 32.833542, 34.456226>,  <40.911034, 32.853333, 34.558113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127430, 32.833542, 34.456226>,  <41.488091, 32.800560, 34.286415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127430, 32.833542, 34.456226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317677, -0.792370, -0.520799,
		0.293443, -0.604442, 0.740636,
		-0.901650, 0.082458, 0.424532,
		40.856934, 32.858280, 34.583588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939369, 32.713978, 34.854912>,  <41.488091, 32.800560, 34.286415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939369, 32.713978, 34.854912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305283, 32.563831, 34.795227>,  <42.524830, 32.473743, 34.759415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305283, 32.563831, 34.795227>,  <41.939369, 32.713978, 34.854912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305283, 32.563831, 34.795227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367021, 0.926675, -0.081046,
		0.168697, 0.019374, 0.985478,
		0.914788, -0.375363, -0.149216,
		42.579720, 32.451221, 34.750462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400410, 33.143696, 35.277344>,  <41.939369, 32.713978, 34.854912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400410, 33.143696, 35.277344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599510, 32.993385, 34.964668>,  <42.718971, 32.903198, 34.777061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599510, 32.993385, 34.964668>,  <42.400410, 33.143696, 35.277344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599510, 32.993385, 34.964668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420080, 0.892952, -0.161770,
		0.758798, -0.247849, 0.602326,
		0.497754, -0.375775, -0.781687,
		42.748837, 32.880653, 34.730164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152447, 33.190681, 35.334728>,  <42.400410, 33.143696, 35.277344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152447, 33.190681, 35.334728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059860, 33.244938, 34.949390>,  <43.004307, 33.277493, 34.718189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059860, 33.244938, 34.949390>,  <43.152447, 33.190681, 35.334728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059860, 33.244938, 34.949390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389964, 0.920132, 0.035855,
		0.891264, -0.367369, -0.265873,
		-0.231467, 0.135637, -0.963341,
		42.990421, 33.285629, 34.660389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693596, 33.305782, 34.837181>,  <43.152447, 33.190681, 35.334728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693596, 33.305782, 34.837181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364044, 33.516933, 34.754662>,  <43.166313, 33.643623, 34.705151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364044, 33.516933, 34.754662>,  <43.693596, 33.305782, 34.837181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364044, 33.516933, 34.754662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476911, 0.842382, 0.250895,
		0.306225, 0.108322, -0.945776,
		-0.823883, 0.527881, -0.206299,
		43.116879, 33.675297, 34.692772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793781, 33.815292, 34.254395>,  <43.693596, 33.305782, 34.837181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793781, 33.815292, 34.254395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500614, 33.936539, 34.498016>,  <43.324715, 34.009285, 34.644192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500614, 33.936539, 34.498016>,  <43.793781, 33.815292, 34.254395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500614, 33.936539, 34.498016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501539, 0.845626, 0.182687,
		-0.459661, 0.439361, -0.771799,
		-0.732919, 0.303113, 0.609058,
		43.280739, 34.027473, 34.680733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427299, 34.440193, 34.067284>,  <43.793781, 33.815292, 34.254395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427299, 34.440193, 34.067284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457859, 34.377773, 34.461201>,  <43.476192, 34.340321, 34.697552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457859, 34.377773, 34.461201>,  <43.427299, 34.440193, 34.067284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457859, 34.377773, 34.461201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668737, 0.740610, 0.065479,
		-0.739564, 0.653564, 0.160933,
		0.076394, -0.156048, 0.984791,
		43.480778, 34.330959, 34.756638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520508, 35.117279, 34.208801>,  <43.427299, 34.440193, 34.067284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520508, 35.117279, 34.208801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645107, 34.907963, 34.526077>,  <43.719868, 34.782375, 34.716442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645107, 34.907963, 34.526077>,  <43.520508, 35.117279, 34.208801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645107, 34.907963, 34.526077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666952, 0.714965, 0.209761,
		-0.676865, 0.463677, 0.571714,
		0.311494, -0.523286, 0.793185,
		43.738556, 34.750977, 34.764034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478157, 35.502533, 34.679367>,  <43.520508, 35.117279, 34.208801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478157, 35.502533, 34.679367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751137, 35.234066, 34.795166>,  <43.914925, 35.072987, 34.864643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751137, 35.234066, 34.795166>,  <43.478157, 35.502533, 34.679367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751137, 35.234066, 34.795166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611019, 0.741197, 0.277997,
		-0.401155, -0.012831, 0.915921,
		0.682445, -0.671164, 0.289495,
		43.955872, 35.032715, 34.882015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664291, 35.557163, 35.430611>,  <43.478157, 35.502533, 34.679367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664291, 35.557163, 35.430611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977409, 35.447124, 35.207344>,  <44.165279, 35.381100, 35.073383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977409, 35.447124, 35.207344>,  <43.664291, 35.557163, 35.430611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977409, 35.447124, 35.207344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492998, 0.821500, 0.286515,
		0.379713, -0.499457, 0.778691,
		0.782797, -0.275100, -0.558166,
		44.212250, 35.364594, 35.039894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267952, 35.723606, 35.781765>,  <43.664291, 35.557163, 35.430611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267952, 35.723606, 35.781765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348660, 35.687908, 35.391621>,  <44.397083, 35.666489, 35.157536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348660, 35.687908, 35.391621>,  <44.267952, 35.723606, 35.781765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348660, 35.687908, 35.391621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621683, 0.781183, 0.057126,
		0.756835, -0.617890, 0.213104,
		0.201771, -0.089249, -0.975358,
		44.409191, 35.661133, 35.099014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911480, 35.923637, 35.688522>,  <44.267952, 35.723606, 35.781765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911480, 35.923637, 35.688522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752907, 35.955116, 35.322651>,  <44.657761, 35.974003, 35.103127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752907, 35.955116, 35.322651>,  <44.911480, 35.923637, 35.688522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752907, 35.955116, 35.322651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555495, 0.813802, -0.170741,
		0.730934, -0.575789, -0.366337,
		-0.396437, 0.078698, -0.914683,
		44.633976, 35.978725, 35.048244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426903, 35.970432, 35.091652>,  <44.911480, 35.923637, 35.688522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426903, 35.970432, 35.091652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097717, 36.164509, 34.973457>,  <44.900204, 36.280956, 34.902538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097717, 36.164509, 34.973457>,  <45.426903, 35.970432, 35.091652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097717, 36.164509, 34.973457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524949, 0.848325, -0.069086,
		0.217152, -0.211973, -0.952844,
		-0.822966, 0.485192, -0.295491,
		44.850826, 36.310066, 34.884811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805515, 35.296566, 34.989956>,  <45.426903, 35.970432, 35.091652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805515, 35.296566, 34.989956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445057, 35.334114, 35.159248>,  <45.228783, 35.356644, 35.260822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445057, 35.334114, 35.159248>,  <45.805515, 35.296566, 34.989956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445057, 35.334114, 35.159248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018660, -0.983770, 0.178461,
		0.433116, 0.152921, 0.888271,
		-0.901145, 0.093870, 0.423233,
		45.174713, 35.362274, 35.286217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771435, 34.694626, 34.535614>,  <45.805515, 35.296566, 34.989956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771435, 34.694626, 34.535614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913433, 34.476330, 34.231998>,  <45.998631, 34.345352, 34.049828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913433, 34.476330, 34.231998>,  <45.771435, 34.694626, 34.535614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913433, 34.476330, 34.231998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836539, 0.547901, -0.002697,
		0.417351, -0.634009, 0.651038,
		0.354995, -0.545744, -0.759040,
		46.019932, 34.312607, 34.004288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352230, 34.151909, 34.661583>,  <45.771435, 34.694626, 34.535614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352230, 34.151909, 34.661583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393517, 34.318054, 34.300072>,  <46.418289, 34.417744, 34.083164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393517, 34.318054, 34.300072>,  <46.352230, 34.151909, 34.661583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393517, 34.318054, 34.300072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875563, 0.393187, 0.280700,
		0.471948, -0.820289, -0.323096,
		0.103218, 0.415367, -0.903779,
		46.424480, 34.442665, 34.028938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960686, 33.953274, 34.339828>,  <46.352230, 34.151909, 34.661583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960686, 33.953274, 34.339828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821861, 34.325256, 34.291271>,  <46.738567, 34.548447, 34.262138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821861, 34.325256, 34.291271>,  <46.960686, 33.953274, 34.339828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821861, 34.325256, 34.291271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730991, 0.349328, 0.586193,
		0.587536, 0.114712, -0.801025,
		-0.347064, 0.929952, -0.121390,
		46.717743, 34.604240, 34.254856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546989, 34.422886, 34.285065>,  <46.960686, 33.953274, 34.339828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546989, 34.422886, 34.285065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.267757, 34.629501, 34.483406>,  <47.100216, 34.753471, 34.602409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.267757, 34.629501, 34.483406>,  <47.546989, 34.422886, 34.285065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.267757, 34.629501, 34.483406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689373, 0.297708, 0.660405,
		0.193504, 0.802845, -0.563911,
		-0.698084, 0.516536, 0.495852,
		47.058331, 34.784462, 34.632160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875660, 34.813969, 34.630684>,  <47.546989, 34.422886, 34.285065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875660, 34.813969, 34.630684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523247, 34.886009, 34.805656>,  <47.311798, 34.929234, 34.910641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523247, 34.886009, 34.805656>,  <47.875660, 34.813969, 34.630684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523247, 34.886009, 34.805656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473027, 0.325192, 0.818838,
		0.005225, 0.928339, -0.371698,
		-0.881032, 0.180102, 0.437430,
		47.258938, 34.940041, 34.936886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896072, 35.570522, 35.021851>,  <47.875660, 34.813969, 34.630684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896072, 35.570522, 35.021851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668743, 35.257023, 35.122044>,  <47.532345, 35.068924, 35.182159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668743, 35.257023, 35.122044>,  <47.896072, 35.570522, 35.021851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668743, 35.257023, 35.122044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518754, -0.105007, 0.848450,
		-0.638670, 0.612136, 0.466252,
		-0.568327, -0.783749, 0.250483,
		47.498245, 35.021896, 35.197189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.085640, 35.106838, 24.824522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.701519, 35.147434, 24.720587>,  <40.471046, 35.171791, 24.658226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.701519, 35.147434, 24.720587>,  <41.085640, 35.106838, 24.824522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701519, 35.147434, 24.720587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277430, -0.444778, 0.851590,
		-0.029144, 0.889872, 0.455278,
		-0.960304, 0.101489, -0.259840,
		40.413429, 35.177879, 24.642635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792309, 35.317509, 25.355427>,  <41.085640, 35.106838, 24.824522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792309, 35.317509, 25.355427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.480762, 35.177269, 25.147409>,  <40.293835, 35.093124, 25.022598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.480762, 35.177269, 25.147409>,  <40.792309, 35.317509, 25.355427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480762, 35.177269, 25.147409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493845, -0.168318, 0.853104,
		-0.386629, 0.921276, -0.042044,
		-0.778867, -0.350598, -0.520045,
		40.247101, 35.072090, 24.991396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158463, 35.593983, 25.765057>,  <40.792309, 35.317509, 25.355427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158463, 35.593983, 25.765057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041405, 35.289902, 25.533039>,  <39.971172, 35.107452, 25.393827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041405, 35.289902, 25.533039>,  <40.158463, 35.593983, 25.765057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041405, 35.289902, 25.533039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618563, -0.312088, 0.721096,
		-0.729205, 0.569818, -0.378903,
		-0.292643, -0.760202, -0.580045,
		39.953613, 35.061840, 25.359026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457867, 35.625851, 25.737219>,  <40.158463, 35.593983, 25.765057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457867, 35.625851, 25.737219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.521427, 35.241665, 25.645775>,  <39.559563, 35.011154, 25.590908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.521427, 35.241665, 25.645775>,  <39.457867, 35.625851, 25.737219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521427, 35.241665, 25.645775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607636, -0.277642, 0.744105,
		-0.778156, 0.020668, -0.627731,
		0.158906, -0.960462, -0.228608,
		39.569099, 34.953526, 25.577192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741238, 35.301304, 25.758116>,  <39.457867, 35.625851, 25.737219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741238, 35.301304, 25.758116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007664, 35.005260, 25.795195>,  <39.167519, 34.827633, 25.817442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007664, 35.005260, 25.795195>,  <38.741238, 35.301304, 25.758116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007664, 35.005260, 25.795195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560469, -0.414606, 0.716922,
		-0.492169, -0.529471, -0.690964,
		0.666066, -0.740110, 0.092696,
		39.207485, 34.783226, 25.823004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380325, 34.748024, 25.770081>,  <38.741238, 35.301304, 25.758116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380325, 34.748024, 25.770081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727711, 34.615906, 25.917957>,  <38.936142, 34.536633, 26.006683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727711, 34.615906, 25.917957>,  <38.380325, 34.748024, 25.770081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727711, 34.615906, 25.917957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477261, -0.355293, 0.803734,
		-0.134122, -0.874455, -0.466198,
		0.868466, -0.330297, 0.369691,
		38.988251, 34.516815, 26.028864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294525, 34.038212, 25.788929>,  <38.380325, 34.748024, 25.770081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294525, 34.038212, 25.788929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568085, 34.120113, 26.069033>,  <38.732220, 34.169254, 26.237095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568085, 34.120113, 26.069033>,  <38.294525, 34.038212, 25.788929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568085, 34.120113, 26.069033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452570, -0.633769, 0.627310,
		0.572248, -0.745930, -0.340764,
		0.683895, 0.204757, 0.700259,
		38.773254, 34.181541, 26.279110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359493, 33.369930, 26.215065>,  <38.294525, 34.038212, 25.788929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359493, 33.369930, 26.215065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511639, 33.671936, 26.428709>,  <38.602924, 33.853138, 26.556896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511639, 33.671936, 26.428709>,  <38.359493, 33.369930, 26.215065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511639, 33.671936, 26.428709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223602, -0.485311, 0.845266,
		0.897399, -0.440937, -0.015771,
		0.380363, 0.755015, 0.534112,
		38.625748, 33.898441, 26.588943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736923, 33.047310, 26.679607>,  <38.359493, 33.369930, 26.215065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736923, 33.047310, 26.679607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643757, 33.408440, 26.824196>,  <38.587856, 33.625118, 26.910950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643757, 33.408440, 26.824196>,  <38.736923, 33.047310, 26.679607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643757, 33.408440, 26.824196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013420, -0.374641, 0.927073,
		0.972405, 0.211077, 0.099375,
		-0.232914, 0.902823, 0.361470,
		38.573883, 33.679287, 26.932636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128632, 33.100227, 27.292637>,  <38.736923, 33.047310, 26.679607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128632, 33.100227, 27.292637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819118, 33.349361, 27.338837>,  <38.633411, 33.498840, 27.366556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819118, 33.349361, 27.338837>,  <39.128632, 33.100227, 27.292637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819118, 33.349361, 27.338837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198492, -0.411552, 0.889509,
		0.601551, 0.665359, 0.442079,
		-0.773781, 0.622834, 0.115501,
		38.586983, 33.536213, 27.373487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050766, 33.646061, 27.881735>,  <39.128632, 33.100227, 27.292637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050766, 33.646061, 27.881735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686661, 33.529961, 27.763636>,  <38.468197, 33.460300, 27.692776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686661, 33.529961, 27.763636>,  <39.050766, 33.646061, 27.881735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686661, 33.529961, 27.763636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242255, -0.204913, 0.948326,
		-0.335754, 0.934753, 0.116210,
		-0.910265, -0.290252, -0.295249,
		38.413582, 33.442886, 27.675060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664829, 33.899513, 28.412796>,  <39.050766, 33.646061, 27.881735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664829, 33.899513, 28.412796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465218, 33.597141, 28.243313>,  <38.345451, 33.415718, 28.141623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465218, 33.597141, 28.243313>,  <38.664829, 33.899513, 28.412796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465218, 33.597141, 28.243313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212688, -0.367148, 0.905520,
		-0.840077, 0.542003, 0.022441,
		-0.499033, -0.755934, -0.423710,
		38.315506, 33.370361, 28.116199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076725, 33.840908, 28.834835>,  <38.664829, 33.899513, 28.412796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076725, 33.840908, 28.834835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008789, 33.510891, 28.619257>,  <37.968029, 33.312881, 28.489910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008789, 33.510891, 28.619257>,  <38.076725, 33.840908, 28.834835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008789, 33.510891, 28.619257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294629, -0.479367, 0.826681,
		-0.940399, 0.299189, -0.161667,
		-0.169836, -0.825042, -0.538945,
		37.957840, 33.263378, 28.457573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418564, 33.645729, 28.954941>,  <38.076725, 33.840908, 28.834835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418564, 33.645729, 28.954941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610619, 33.317162, 28.831823>,  <37.725853, 33.120022, 28.757952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610619, 33.317162, 28.831823>,  <37.418564, 33.645729, 28.954941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610619, 33.317162, 28.831823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470153, -0.537212, 0.700257,
		-0.740555, -0.191511, -0.644129,
		0.480141, -0.821418, -0.307795,
		37.754662, 33.070736, 28.739485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882198, 33.072067, 28.666222>,  <37.418564, 33.645729, 28.954941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882198, 33.072067, 28.666222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220684, 32.906200, 28.800077>,  <37.423775, 32.806683, 28.880390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220684, 32.906200, 28.800077>,  <36.882198, 33.072067, 28.666222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220684, 32.906200, 28.800077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515799, -0.479844, 0.709720,
		-0.133719, -0.773179, -0.619931,
		0.846210, -0.414662, 0.334641,
		37.474548, 32.781803, 28.900469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740757, 32.454464, 29.140139>,  <36.882198, 33.072067, 28.666222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740757, 32.454464, 29.140139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134743, 32.494793, 29.196247>,  <37.371136, 32.518990, 29.229912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134743, 32.494793, 29.196247>,  <36.740757, 32.454464, 29.140139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134743, 32.494793, 29.196247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082122, -0.441082, 0.893702,
		0.151980, -0.891785, -0.426170,
		0.984966, 0.100827, 0.140271,
		37.430233, 32.525040, 29.238329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024246, 31.781935, 29.173925>,  <36.740757, 32.454464, 29.140139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024246, 31.781935, 29.173925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259075, 32.032227, 29.379374>,  <37.399975, 32.182400, 29.502642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259075, 32.032227, 29.379374>,  <37.024246, 31.781935, 29.173925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259075, 32.032227, 29.379374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061841, -0.597948, 0.799146,
		0.807166, -0.500922, -0.312345,
		0.587076, 0.625728, 0.513621,
		37.435200, 32.219944, 29.533461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396816, 31.288803, 29.579559>,  <37.024246, 31.781935, 29.173925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396816, 31.288803, 29.579559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422405, 31.645313, 29.759130>,  <37.437759, 31.859219, 29.866873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422405, 31.645313, 29.759130>,  <37.396816, 31.288803, 29.579559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422405, 31.645313, 29.759130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004299, -0.449601, 0.893219,
		0.997942, -0.059072, -0.024931,
		0.063973, 0.891274, 0.448930,
		37.441597, 31.912695, 29.893810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996731, 31.128508, 30.159115>,  <37.396816, 31.288803, 29.579559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996731, 31.128508, 30.159115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768806, 31.443895, 30.251743>,  <37.632050, 31.633129, 30.307320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768806, 31.443895, 30.251743>,  <37.996731, 31.128508, 30.159115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768806, 31.443895, 30.251743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063917, -0.238417, 0.969057,
		0.819285, 0.566983, 0.085456,
		-0.569813, 0.788472, 0.231571,
		37.597862, 31.680437, 30.321215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347008, 31.376238, 30.702530>,  <37.996731, 31.128508, 30.159115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347008, 31.376238, 30.702530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979492, 31.530689, 30.735352>,  <37.758984, 31.623360, 30.755045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979492, 31.530689, 30.735352>,  <38.347008, 31.376238, 30.702530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979492, 31.530689, 30.735352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007127, -0.191598, 0.981448,
		0.394687, 0.902327, 0.173286,
		-0.918788, 0.386130, 0.082052,
		37.703857, 31.646528, 30.759968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283428, 31.997692, 31.251402>,  <38.347008, 31.376238, 30.702530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283428, 31.997692, 31.251402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922085, 31.831070, 31.210567>,  <37.705276, 31.731096, 31.186066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922085, 31.831070, 31.210567>,  <38.283428, 31.997692, 31.251402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922085, 31.831070, 31.210567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008436, -0.220728, 0.975299,
		-0.428799, 0.881908, 0.195883,
		-0.903360, -0.416555, -0.102088,
		37.651077, 31.706104, 31.179941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022125, 31.867910, 31.490383>,  <38.283428, 31.997692, 31.251402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022125, 31.867910, 31.490383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223000, 32.146080, 31.695982>,  <39.343525, 32.312981, 31.819342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223000, 32.146080, 31.695982>,  <39.022125, 31.867910, 31.490383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223000, 32.146080, 31.695982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296118, 0.420161, -0.857775,
		-0.812481, 0.582965, 0.005069,
		0.502183, 0.695426, 0.514000,
		39.373653, 32.354706, 31.850182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849617, 32.477219, 31.263412>,  <39.022125, 31.867910, 31.490383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849617, 32.477219, 31.263412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215298, 32.526760, 31.417763>,  <39.434704, 32.556484, 31.510372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215298, 32.526760, 31.417763>,  <38.849617, 32.477219, 31.263412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215298, 32.526760, 31.417763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324739, 0.345765, -0.880336,
		-0.242456, 0.930111, 0.275878,
		0.914199, 0.123854, 0.385876,
		39.489559, 32.563915, 31.533525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059044, 33.246349, 31.022581>,  <38.849617, 32.477219, 31.263412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059044, 33.246349, 31.022581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.364044, 33.002048, 31.107973>,  <39.547043, 32.855469, 31.159208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.364044, 33.002048, 31.107973>,  <39.059044, 33.246349, 31.022581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364044, 33.002048, 31.107973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533942, 0.407683, -0.740743,
		0.365379, 0.678802, 0.636966,
		0.762498, -0.610755, 0.213482,
		39.592793, 32.818821, 31.172018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688637, 33.680248, 31.128403>,  <39.059044, 33.246349, 31.022581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688637, 33.680248, 31.128403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851128, 33.325451, 31.040565>,  <39.948620, 33.112572, 30.987864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851128, 33.325451, 31.040565>,  <39.688637, 33.680248, 31.128403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851128, 33.325451, 31.040565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662135, 0.451346, -0.598217,
		0.629729, 0.097610, 0.770658,
		0.406226, -0.886994, -0.219595,
		39.972996, 33.059353, 30.974688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367245, 33.806499, 30.979490>,  <39.688637, 33.680248, 31.128403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367245, 33.806499, 30.979490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353916, 33.426319, 30.855860>,  <40.345917, 33.198212, 30.781681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353916, 33.426319, 30.855860>,  <40.367245, 33.806499, 30.979490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353916, 33.426319, 30.855860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787802, 0.165320, -0.593327,
		0.615026, -0.263262, 0.743261,
		-0.033325, -0.950454, -0.309074,
		40.343918, 33.141182, 30.763138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054180, 33.476986, 30.957710>,  <40.367245, 33.806499, 30.979490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054180, 33.476986, 30.957710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847195, 33.277721, 30.679409>,  <40.723003, 33.158165, 30.512428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847195, 33.277721, 30.679409>,  <41.054180, 33.476986, 30.957710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847195, 33.277721, 30.679409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727092, 0.172742, -0.664453,
		0.451188, -0.849705, 0.272821,
		-0.517461, -0.498159, -0.695753,
		40.691956, 33.128273, 30.470684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643990, 33.178448, 30.711605>,  <41.054180, 33.476986, 30.957710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643990, 33.178448, 30.711605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.339153, 33.108395, 30.462269>,  <41.156254, 33.066364, 30.312668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.339153, 33.108395, 30.462269>,  <41.643990, 33.178448, 30.711605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339153, 33.108395, 30.462269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646457, -0.151866, -0.747683,
		0.036281, -0.972761, 0.228951,
		-0.762087, -0.175134, -0.623339,
		41.110527, 33.055855, 30.275267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817513, 32.593315, 30.362400>,  <41.643990, 33.178448, 30.711605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817513, 32.593315, 30.362400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.538395, 32.791119, 30.155113>,  <41.370926, 32.909801, 30.030741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.538395, 32.791119, 30.155113>,  <41.817513, 32.593315, 30.362400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538395, 32.791119, 30.155113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633561, 0.088549, -0.768609,
		-0.334193, -0.864653, -0.375088,
		-0.697793, 0.494505, -0.518218,
		41.329056, 32.939468, 29.999647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882355, 32.430096, 29.656811>,  <41.817513, 32.593315, 30.362400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882355, 32.430096, 29.656811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.693199, 32.782185, 29.640873>,  <41.579708, 32.993439, 29.631310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.693199, 32.782185, 29.640873>,  <41.882355, 32.430096, 29.656811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693199, 32.782185, 29.640873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664945, 0.326829, -0.671588,
		-0.578124, -0.344079, -0.739852,
		-0.472885, 0.880223, -0.039846,
		41.551334, 33.046253, 29.628920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737198, 32.602146, 29.039484>,  <41.882355, 32.430096, 29.656811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737198, 32.602146, 29.039484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692715, 32.976971, 29.171875>,  <41.666023, 33.201866, 29.251310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692715, 32.976971, 29.171875>,  <41.737198, 32.602146, 29.039484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692715, 32.976971, 29.171875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427459, 0.345763, -0.835300,
		-0.897169, 0.048589, -0.439007,
		-0.111206, 0.937063, 0.330978,
		41.659351, 33.258091, 29.271168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480061, 32.968246, 28.538120>,  <41.737198, 32.602146, 29.039484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480061, 32.968246, 28.538120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637188, 33.257320, 28.765602>,  <41.731464, 33.430763, 28.902092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637188, 33.257320, 28.765602>,  <41.480061, 32.968246, 28.538120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637188, 33.257320, 28.765602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435082, 0.398779, -0.807266,
		-0.810185, 0.564541, -0.157779,
		0.392816, 0.722681, 0.568707,
		41.755032, 33.474125, 28.936214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432747, 33.620617, 28.102917>,  <41.480061, 32.968246, 28.538120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432747, 33.620617, 28.102917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.708595, 33.704044, 28.380310>,  <41.874104, 33.754101, 28.546747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.708595, 33.704044, 28.380310>,  <41.432747, 33.620617, 28.102917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708595, 33.704044, 28.380310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528572, 0.509617, -0.678897,
		-0.495010, 0.834739, 0.241198,
		0.689621, 0.208570, 0.693485,
		41.915482, 33.766617, 28.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603516, 34.423153, 28.069750>,  <41.432747, 33.620617, 28.102917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603516, 34.423153, 28.069750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.910595, 34.222137, 28.228796>,  <42.094841, 34.101528, 28.324223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.910595, 34.222137, 28.228796>,  <41.603516, 34.423153, 28.069750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910595, 34.222137, 28.228796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609855, 0.382440, -0.694130,
		0.196761, 0.775370, 0.600072,
		0.767699, -0.502535, 0.397615,
		42.140903, 34.071377, 28.348080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122395, 35.000595, 28.044355>,  <41.603516, 34.423153, 28.069750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122395, 35.000595, 28.044355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.331009, 34.666458, 28.113871>,  <42.456177, 34.465977, 28.155581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.331009, 34.666458, 28.113871>,  <42.122395, 35.000595, 28.044355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331009, 34.666458, 28.113871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624063, 0.234563, -0.745336,
		0.581846, 0.497174, 0.643640,
		0.521536, -0.835343, 0.173789,
		42.487469, 34.415855, 28.166008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827969, 35.178947, 28.156540>,  <42.122395, 35.000595, 28.044355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827969, 35.178947, 28.156540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.844845, 34.801552, 28.025055>,  <42.854969, 34.575115, 27.946165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.844845, 34.801552, 28.025055>,  <42.827969, 35.178947, 28.156540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844845, 34.801552, 28.025055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660357, 0.273226, -0.699483,
		0.749766, -0.187558, 0.634565,
		0.042186, -0.943488, -0.328710,
		42.857502, 34.518505, 27.926441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528988, 35.143353, 27.953434>,  <42.827969, 35.178947, 28.156540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528988, 35.143353, 27.953434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.316360, 34.863232, 27.762852>,  <43.188782, 34.695160, 27.648502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.316360, 34.863232, 27.762852>,  <43.528988, 35.143353, 27.953434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316360, 34.863232, 27.762852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451597, 0.241571, -0.858897,
		0.716583, -0.671733, 0.187841,
		-0.531572, -0.700299, -0.476458,
		43.156887, 34.653141, 27.619915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938000, 34.813103, 27.378014>,  <43.528988, 35.143353, 27.953434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938000, 34.813103, 27.378014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.553406, 34.747673, 27.289652>,  <43.322651, 34.708416, 27.236635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.553406, 34.747673, 27.289652>,  <43.938000, 34.813103, 27.378014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553406, 34.747673, 27.289652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180517, 0.230307, -0.956228,
		0.207281, -0.959273, -0.191910,
		-0.961482, -0.163565, -0.220903,
		43.264961, 34.698601, 27.223381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959782, 34.503872, 26.703918>,  <43.938000, 34.813103, 27.378014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959782, 34.503872, 26.703918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.583302, 34.620693, 26.771847>,  <43.357414, 34.690788, 26.812605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.583302, 34.620693, 26.771847>,  <43.959782, 34.503872, 26.703918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583302, 34.620693, 26.771847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045253, 0.389152, -0.920061,
		-0.334798, -0.873649, -0.353054,
		-0.941203, 0.292058, 0.169823,
		43.300941, 34.708309, 26.822794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617550, 34.317368, 26.065544>,  <43.959782, 34.503872, 26.703918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617550, 34.317368, 26.065544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.418613, 34.614815, 26.244287>,  <43.299252, 34.793282, 26.351534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.418613, 34.614815, 26.244287>,  <43.617550, 34.317368, 26.065544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418613, 34.614815, 26.244287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071073, 0.478426, -0.875247,
		-0.864637, -0.467058, -0.185092,
		-0.497343, 0.743616, 0.446860,
		43.269409, 34.837898, 26.378345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.911327, 34.118088, 25.693533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.898144, 34.486141, 25.849623>,  <42.890232, 34.706974, 25.943275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.898144, 34.486141, 25.849623>,  <42.911327, 34.118088, 25.693533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898144, 34.486141, 25.849623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012236, 0.390034, -0.920719,
		-0.999382, -0.035122, -0.001597,
		-0.032960, 0.920131, 0.390222,
		42.888256, 34.762180, 25.966690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372734, 34.437645, 25.324234>,  <42.911327, 34.118088, 25.693533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372734, 34.437645, 25.324234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599583, 34.741447, 25.451683>,  <42.735691, 34.923729, 25.528152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599583, 34.741447, 25.451683>,  <42.372734, 34.437645, 25.324234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599583, 34.741447, 25.451683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077389, 0.434275, -0.897450,
		-0.819991, 0.484305, 0.305064,
		0.567121, 0.759509, 0.318622,
		42.769718, 34.969299, 25.547270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058636, 35.069004, 25.066736>,  <42.372734, 34.437645, 25.324234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058636, 35.069004, 25.066736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.432671, 35.177280, 25.158249>,  <42.657093, 35.242245, 25.213156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.432671, 35.177280, 25.158249>,  <42.058636, 35.069004, 25.066736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432671, 35.177280, 25.158249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000972, 0.643552, -0.765402,
		-0.354417, 0.715940, 0.601513,
		0.935087, 0.270687, 0.228782,
		42.713196, 35.258488, 25.226883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031345, 35.773933, 24.982079>,  <42.058636, 35.069004, 25.066736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031345, 35.773933, 24.982079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.414471, 35.659210, 24.974659>,  <42.644344, 35.590378, 24.970207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.414471, 35.659210, 24.974659>,  <42.031345, 35.773933, 24.982079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414471, 35.659210, 24.974659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128318, 0.484490, -0.865335,
		0.257167, 0.826446, 0.500851,
		0.957810, -0.286804, -0.018547,
		42.701813, 35.573170, 24.969095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303875, 36.339695, 24.938736>,  <42.031345, 35.773933, 24.982079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303875, 36.339695, 24.938736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.581879, 36.088268, 24.799101>,  <42.748680, 35.937412, 24.715319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.581879, 36.088268, 24.799101>,  <42.303875, 36.339695, 24.938736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581879, 36.088268, 24.799101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159250, 0.608038, -0.777772,
		0.701142, 0.484968, 0.522692,
		0.695011, -0.628567, -0.349089,
		42.790382, 35.899696, 24.694374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872017, 36.680244, 24.716396>,  <42.303875, 36.339695, 24.938736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872017, 36.680244, 24.716396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918392, 36.345085, 24.503046>,  <42.946217, 36.143990, 24.375036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918392, 36.345085, 24.503046>,  <42.872017, 36.680244, 24.716396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918392, 36.345085, 24.503046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232210, 0.544980, -0.805652,
		0.965731, -0.030446, 0.257754,
		0.115942, -0.837896, -0.533374,
		42.953175, 36.093716, 24.343035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468910, 36.828453, 24.220253>,  <42.872017, 36.680244, 24.716396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468910, 36.828453, 24.220253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.272335, 36.512486, 24.073545>,  <43.154392, 36.322906, 23.985521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.272335, 36.512486, 24.073545>,  <43.468910, 36.828453, 24.220253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272335, 36.512486, 24.073545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199943, 0.307555, -0.930287,
		0.847653, -0.530507, 0.006796,
		-0.491433, -0.789919, -0.366771,
		43.124905, 36.275509, 23.963514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830227, 36.578087, 23.640699>,  <43.468910, 36.828453, 24.220253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830227, 36.578087, 23.640699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.454979, 36.455788, 23.575653>,  <43.229828, 36.382408, 23.536625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.454979, 36.455788, 23.575653>,  <43.830227, 36.578087, 23.640699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454979, 36.455788, 23.575653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038278, 0.375145, -0.926176,
		0.344173, -0.875094, -0.340230,
		-0.938125, -0.305741, -0.162611,
		43.173542, 36.364063, 23.526869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875244, 36.384998, 22.968519>,  <43.830227, 36.578087, 23.640699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875244, 36.384998, 22.968519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.481735, 36.405281, 23.037367>,  <43.245632, 36.417450, 23.078674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.481735, 36.405281, 23.037367>,  <43.875244, 36.384998, 22.968519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481735, 36.405281, 23.037367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138826, 0.392621, -0.909162,
		-0.113682, -0.918301, -0.379209,
		-0.983770, 0.050712, 0.172118,
		43.186604, 36.420494, 23.089003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572075, 36.165539, 22.346453>,  <43.875244, 36.384998, 22.968519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572075, 36.165539, 22.346453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299938, 36.391674, 22.533014>,  <43.136658, 36.527355, 22.644951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299938, 36.391674, 22.533014>,  <43.572075, 36.165539, 22.346453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299938, 36.391674, 22.533014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142220, 0.522447, -0.840727,
		-0.718967, -0.638311, -0.275038,
		-0.680338, 0.565340, 0.466403,
		43.095837, 36.561275, 22.672935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963444, 36.113842, 21.926943>,  <43.572075, 36.165539, 22.346453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963444, 36.113842, 21.926943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.931244, 36.424583, 22.176750>,  <42.911922, 36.611027, 22.326635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.931244, 36.424583, 22.176750>,  <42.963444, 36.113842, 21.926943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931244, 36.424583, 22.176750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003261, 0.626755, -0.779209,
		-0.996749, -0.060691, -0.052989,
		-0.080502, 0.776849, 0.624520,
		42.907093, 36.657639, 22.364105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473633, 36.420864, 21.606855>,  <42.963444, 36.113842, 21.926943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473633, 36.420864, 21.606855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.639717, 36.695210, 21.845917>,  <42.739368, 36.859818, 21.989353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.639717, 36.695210, 21.845917>,  <42.473633, 36.420864, 21.606855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639717, 36.695210, 21.845917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151982, 0.700026, -0.697757,
		-0.896940, 0.198884, 0.394897,
		0.415211, 0.685864, 0.597655,
		42.764282, 36.900970, 22.025213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045918, 36.971611, 21.507475>,  <42.473633, 36.420864, 21.606855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045918, 36.971611, 21.507475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.370655, 37.136608, 21.672766>,  <42.565498, 37.235607, 21.771940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.370655, 37.136608, 21.672766>,  <42.045918, 36.971611, 21.507475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370655, 37.136608, 21.672766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015245, 0.722471, -0.691233,
		-0.583673, 0.554875, 0.592823,
		0.811846, 0.412492, 0.413228,
		42.614208, 37.260357, 21.796734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916771, 37.693195, 21.824739>,  <42.045918, 36.971611, 21.507475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916771, 37.693195, 21.824739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.303932, 37.682228, 21.724804>,  <42.536228, 37.675648, 21.664843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.303932, 37.682228, 21.724804>,  <41.916771, 37.693195, 21.824739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303932, 37.682228, 21.724804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091230, 0.887911, -0.450879,
		0.234197, 0.459198, 0.856907,
		0.967899, -0.027419, -0.249839,
		42.594303, 37.674004, 21.649853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098404, 38.348869, 21.981157>,  <41.916771, 37.693195, 21.824739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098404, 38.348869, 21.981157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.404003, 38.245888, 21.744507>,  <42.587364, 38.184101, 21.602516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.404003, 38.245888, 21.744507>,  <42.098404, 38.348869, 21.981157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404003, 38.245888, 21.744507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086389, 0.867871, -0.489222,
		0.639406, 0.424876, 0.640813,
		0.764001, -0.257452, -0.591626,
		42.633202, 38.168652, 21.567019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495174, 38.903294, 22.035633>,  <42.098404, 38.348869, 21.981157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495174, 38.903294, 22.035633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.592518, 38.714390, 21.696753>,  <42.650925, 38.601048, 21.493425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.592518, 38.714390, 21.696753>,  <42.495174, 38.903294, 22.035633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592518, 38.714390, 21.696753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145191, 0.845879, -0.513232,
		0.959009, 0.247903, 0.137280,
		0.243354, -0.472263, -0.847199,
		42.665524, 38.572712, 21.442593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991894, 39.302509, 21.619345>,  <42.495174, 38.903294, 22.035633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991894, 39.302509, 21.619345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.819080, 39.055920, 21.356041>,  <42.715393, 38.907967, 21.198059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.819080, 39.055920, 21.356041>,  <42.991894, 39.302509, 21.619345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819080, 39.055920, 21.356041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074419, 0.751773, -0.655209,
		0.898781, -0.234087, -0.370671,
		-0.432037, -0.616474, -0.658259,
		42.689468, 38.870979, 21.158564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362236, 39.396511, 20.993799>,  <42.991894, 39.302509, 21.619345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362236, 39.396511, 20.993799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.026180, 39.223763, 20.862558>,  <42.824547, 39.120113, 20.783813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.026180, 39.223763, 20.862558>,  <43.362236, 39.396511, 20.993799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026180, 39.223763, 20.862558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004894, 0.610952, -0.791652,
		0.542348, -0.663493, -0.515399,
		-0.840139, -0.431874, -0.328101,
		42.774139, 39.094200, 20.764128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393299, 39.147045, 20.186899>,  <43.362236, 39.396511, 20.993799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393299, 39.147045, 20.186899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.002945, 39.177921, 20.268572>,  <42.768734, 39.196449, 20.317575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.002945, 39.177921, 20.268572>,  <43.393299, 39.147045, 20.186899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002945, 39.177921, 20.268572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145254, 0.468592, -0.871392,
		-0.162944, -0.880036, -0.446079,
		-0.975884, 0.077193, 0.204183,
		42.710178, 39.201080, 20.329826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113476, 39.052734, 19.514755>,  <43.393299, 39.147045, 20.186899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113476, 39.052734, 19.514755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.811317, 39.203785, 19.728962>,  <42.630024, 39.294415, 19.857487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.811317, 39.203785, 19.728962>,  <43.113476, 39.052734, 19.514755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811317, 39.203785, 19.728962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354007, 0.452539, -0.818466,
		-0.551414, -0.807843, -0.208165,
		-0.755395, 0.377622, 0.535519,
		42.584698, 39.317070, 19.889618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581223, 38.990219, 19.060566>,  <43.113476, 39.052734, 19.514755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581223, 38.990219, 19.060566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.438686, 39.238350, 19.340057>,  <42.353165, 39.387226, 19.507751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.438686, 39.238350, 19.340057>,  <42.581223, 38.990219, 19.060566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438686, 39.238350, 19.340057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260395, 0.652257, -0.711867,
		-0.897338, -0.435612, -0.070896,
		-0.356340, 0.620325, 0.698727,
		42.331783, 39.424446, 19.549675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925285, 39.099125, 18.840561>,  <42.581223, 38.990219, 19.060566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925285, 39.099125, 18.840561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.032463, 39.405487, 19.074343>,  <42.096771, 39.589306, 19.214613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.032463, 39.405487, 19.074343>,  <41.925285, 39.099125, 18.840561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032463, 39.405487, 19.074343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406149, 0.639897, -0.652361,
		-0.873641, -0.062579, 0.482530,
		0.267945, 0.765908, 0.584457,
		42.112846, 39.635262, 19.249680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984051, 39.533535, 18.337944>,  <41.925285, 39.099125, 18.840561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984051, 39.533535, 18.337944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.214729, 39.718140, 18.607588>,  <42.353138, 39.828903, 18.769375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.214729, 39.718140, 18.607588>,  <41.984051, 39.533535, 18.337944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214729, 39.718140, 18.607588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591457, -0.805070, 0.045185,
		0.563559, 0.372648, -0.737248,
		0.576698, 0.461515, 0.674109,
		42.387737, 39.856594, 18.809820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558510, 39.846863, 17.811083>,  <41.984051, 39.533535, 18.337944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558510, 39.846863, 17.811083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448910, 39.541397, 18.044918>,  <41.383148, 39.358116, 18.185219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448910, 39.541397, 18.044918>,  <41.558510, 39.846863, 17.811083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448910, 39.541397, 18.044918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601360, -0.610407, -0.515529,
		0.750526, 0.210291, 0.626489,
		-0.274002, -0.763663, 0.584587,
		41.366711, 39.312298, 18.220295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398952, 39.199871, 17.341969>,  <41.558510, 39.846863, 17.811083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398952, 39.199871, 17.341969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.165066, 38.914124, 17.188196>,  <41.024734, 38.742676, 17.095934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.165066, 38.914124, 17.188196>,  <41.398952, 39.199871, 17.341969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165066, 38.914124, 17.188196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288273, -0.259984, 0.921578,
		-0.758292, 0.649681, -0.053917,
		-0.584715, -0.714369, -0.384429,
		40.989651, 38.699814, 17.072866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828625, 39.294529, 17.736000>,  <41.398952, 39.199871, 17.341969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828625, 39.294529, 17.736000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793938, 38.926289, 17.583694>,  <40.773125, 38.705345, 17.492311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793938, 38.926289, 17.583694>,  <40.828625, 39.294529, 17.736000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793938, 38.926289, 17.583694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319055, -0.336408, 0.886021,
		-0.943761, 0.198315, -0.264550,
		-0.086715, -0.920598, -0.380762,
		40.767921, 38.650108, 17.469465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194290, 39.066235, 17.993937>,  <40.828625, 39.294529, 17.736000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194290, 39.066235, 17.993937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394905, 38.736065, 17.890289>,  <40.515274, 38.537964, 17.828100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394905, 38.736065, 17.890289>,  <40.194290, 39.066235, 17.993937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394905, 38.736065, 17.890289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188222, -0.396444, 0.898557,
		-0.844415, -0.401883, -0.354193,
		0.501532, -0.825422, -0.259120,
		40.545364, 38.488438, 17.812553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827454, 38.524002, 18.200071>,  <40.194290, 39.066235, 17.993937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827454, 38.524002, 18.200071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.189762, 38.357311, 18.169312>,  <40.407146, 38.257298, 18.150856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.189762, 38.357311, 18.169312>,  <39.827454, 38.524002, 18.200071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189762, 38.357311, 18.169312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172927, -0.529164, 0.830711,
		-0.386868, -0.739140, -0.551367,
		0.905776, -0.416721, -0.076899,
		40.461494, 38.232296, 18.146242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690605, 37.882328, 18.254095>,  <39.827454, 38.524002, 18.200071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690605, 37.882328, 18.254095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.079102, 37.908100, 18.345783>,  <40.312199, 37.923565, 18.400797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.079102, 37.908100, 18.345783>,  <39.690605, 37.882328, 18.254095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079102, 37.908100, 18.345783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157656, -0.547410, 0.821880,
		0.178435, -0.834381, -0.521507,
		0.971240, 0.064433, 0.229222,
		40.370472, 37.927429, 18.414549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907394, 37.245239, 18.530960>,  <39.690605, 37.882328, 18.254095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907394, 37.245239, 18.530960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190010, 37.496712, 18.660923>,  <40.359577, 37.647594, 18.738901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190010, 37.496712, 18.660923>,  <39.907394, 37.245239, 18.530960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190010, 37.496712, 18.660923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026174, -0.435587, 0.899766,
		0.707194, -0.644220, -0.291302,
		0.706535, 0.628685, 0.324906,
		40.401970, 37.685318, 18.758394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336048, 36.839901, 18.856852>,  <39.907394, 37.245239, 18.530960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336048, 36.839901, 18.856852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422142, 37.199959, 19.008337>,  <40.473797, 37.415993, 19.099228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422142, 37.199959, 19.008337>,  <40.336048, 36.839901, 18.856852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422142, 37.199959, 19.008337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228759, -0.423484, 0.876545,
		0.949392, -0.102026, -0.297062,
		0.215231, 0.900140, 0.378713,
		40.486710, 37.470001, 19.121950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798691, 36.651352, 19.341936>,  <40.336048, 36.839901, 18.856852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798691, 36.651352, 19.341936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.692398, 37.017616, 19.462568>,  <40.628624, 37.237373, 19.534948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.692398, 37.017616, 19.462568>,  <40.798691, 36.651352, 19.341936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692398, 37.017616, 19.462568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294940, -0.220611, 0.929699,
		0.917822, 0.335997, -0.211443,
		-0.265729, 0.915662, 0.301581,
		40.612679, 37.292316, 19.553043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361404, 36.900749, 19.802191>,  <40.798691, 36.651352, 19.341936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361404, 36.900749, 19.802191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.029018, 37.103664, 19.893538>,  <40.829586, 37.225414, 19.948345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.029018, 37.103664, 19.893538>,  <41.361404, 36.900749, 19.802191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029018, 37.103664, 19.893538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126754, -0.227060, 0.965597,
		0.541686, 0.831328, 0.124380,
		-0.830969, 0.507284, 0.228369,
		40.779728, 37.255848, 19.962048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532856, 37.264221, 20.474453>,  <41.361404, 36.900749, 19.802191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532856, 37.264221, 20.474453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133347, 37.251732, 20.459127>,  <40.893639, 37.244240, 20.449932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133347, 37.251732, 20.459127>,  <41.532856, 37.264221, 20.474453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133347, 37.251732, 20.459127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033278, -0.148264, 0.988388,
		-0.036540, 0.988455, 0.147044,
		-0.998778, -0.031222, -0.038312,
		40.833714, 37.242367, 20.447634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423576, 37.501263, 21.091103>,  <41.532856, 37.264221, 20.474453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423576, 37.501263, 21.091103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069168, 37.346844, 20.988394>,  <40.856522, 37.254192, 20.926769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069168, 37.346844, 20.988394>,  <41.423576, 37.501263, 21.091103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069168, 37.346844, 20.988394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157783, -0.269696, 0.949931,
		-0.435968, 0.882174, 0.178045,
		-0.886023, -0.386047, -0.256771,
		40.803360, 37.231030, 20.911362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048702, 37.650135, 21.579334>,  <41.423576, 37.501263, 21.091103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048702, 37.650135, 21.579334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818130, 37.356998, 21.434742>,  <40.679787, 37.181114, 21.347986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818130, 37.356998, 21.434742>,  <41.048702, 37.650135, 21.579334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818130, 37.356998, 21.434742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119907, -0.361723, 0.924542,
		-0.808300, 0.576279, 0.120635,
		-0.576431, -0.732843, -0.361481,
		40.645203, 37.137146, 21.326298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363564, 37.603573, 21.960255>,  <41.048702, 37.650135, 21.579334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363564, 37.603573, 21.960255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433079, 37.237949, 21.813667>,  <40.474789, 37.018574, 21.725716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433079, 37.237949, 21.813667>,  <40.363564, 37.603573, 21.960255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433079, 37.237949, 21.813667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376199, -0.405526, 0.833080,
		-0.910095, -0.006912, -0.414342,
		0.173785, -0.914057, -0.366467,
		40.485214, 36.963734, 21.703728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841267, 37.161480, 22.270132>,  <40.363564, 37.603573, 21.960255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841267, 37.161480, 22.270132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086388, 36.871208, 22.145002>,  <40.233459, 36.697044, 22.069925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086388, 36.871208, 22.145002>,  <39.841267, 37.161480, 22.270132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086388, 36.871208, 22.145002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137038, -0.487450, 0.862330,
		-0.778264, -0.485568, -0.398156,
		0.612801, -0.725683, -0.312824,
		40.270229, 36.653503, 22.051155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617455, 36.555664, 22.555059>,  <39.841267, 37.161480, 22.270132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617455, 36.555664, 22.555059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.990376, 36.438278, 22.470503>,  <40.214130, 36.367847, 22.419769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.990376, 36.438278, 22.470503>,  <39.617455, 36.555664, 22.555059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990376, 36.438278, 22.470503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022886, -0.631184, 0.775296,
		-0.360944, -0.717975, -0.595173,
		0.932306, -0.293459, -0.211391,
		40.270069, 36.350239, 22.407085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570324, 35.899372, 22.611095>,  <39.617455, 36.555664, 22.555059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570324, 35.899372, 22.611095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960190, 35.973381, 22.661358>,  <40.194111, 36.017784, 22.691515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960190, 35.973381, 22.661358>,  <39.570324, 35.899372, 22.611095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960190, 35.973381, 22.661358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014042, -0.510099, 0.860001,
		0.223214, -0.839980, -0.494579,
		0.974668, 0.185020, 0.125656,
		40.252590, 36.028889, 22.699055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737534, 35.329399, 22.914133>,  <39.570324, 35.899372, 22.611095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737534, 35.329399, 22.914133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.056416, 35.559212, 22.988287>,  <40.247746, 35.697102, 23.032780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.056416, 35.559212, 22.988287>,  <39.737534, 35.329399, 22.914133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056416, 35.559212, 22.988287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209702, -0.551494, 0.807391,
		0.566112, -0.604784, -0.560137,
		0.797209, 0.574536, 0.185383,
		40.295578, 35.731571, 23.043901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299065, 34.848564, 22.872440>,  <39.737534, 35.329399, 22.914133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299065, 34.848564, 22.872440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344784, 35.166660, 23.110611>,  <40.372215, 35.357517, 23.253513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344784, 35.166660, 23.110611>,  <40.299065, 34.848564, 22.872440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344784, 35.166660, 23.110611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026211, -0.596731, 0.802013,
		0.993101, -0.107274, -0.047360,
		0.114296, 0.795238, 0.595426,
		40.379074, 35.405231, 23.289238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572594, 34.598953, 23.460684>,  <40.299065, 34.848564, 22.872440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572594, 34.598953, 23.460684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480633, 34.959965, 23.606335>,  <40.425457, 35.176571, 23.693726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480633, 34.959965, 23.606335>,  <40.572594, 34.598953, 23.460684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480633, 34.959965, 23.606335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020736, -0.369524, 0.928990,
		0.972993, 0.221126, 0.066239,
		-0.229900, 0.902527, 0.364129,
		40.411663, 35.230724, 23.715574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056442, 34.721672, 24.098860>,  <40.572594, 34.598953, 23.460684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056442, 34.721672, 24.098860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727997, 34.949940, 24.102989>,  <40.530930, 35.086903, 24.105467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727997, 34.949940, 24.102989>,  <41.056442, 34.721672, 24.098860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727997, 34.949940, 24.102989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128990, -0.203152, 0.970614,
		0.555999, 0.795652, 0.240421,
		-0.821113, 0.570672, 0.010321,
		40.481663, 35.121140, 24.106085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.133278, 33.587807, 29.049706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834652, 33.729652, 28.824535>,  <42.655476, 33.814758, 28.689434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834652, 33.729652, 28.824535>,  <43.133278, 33.587807, 29.049706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834652, 33.729652, 28.824535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619149, -0.060645, 0.782929,
		0.243500, 0.933044, 0.264835,
		-0.746567, 0.354615, -0.562926,
		42.610683, 33.836037, 28.655657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847134, 34.035923, 29.443197>,  <43.133278, 33.587807, 29.049706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847134, 34.035923, 29.443197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559570, 33.950417, 29.178631>,  <42.387032, 33.899113, 29.019890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559570, 33.950417, 29.178631>,  <42.847134, 34.035923, 29.443197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559570, 33.950417, 29.178631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651842, -0.123121, 0.748294,
		-0.241396, 0.969095, -0.050831,
		-0.718909, -0.213768, -0.661417,
		42.343899, 33.886288, 28.980206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256760, 34.335461, 29.782547>,  <42.847134, 34.035923, 29.443197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256760, 34.335461, 29.782547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126675, 34.072582, 29.510569>,  <42.048622, 33.914856, 29.347382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126675, 34.072582, 29.510569>,  <42.256760, 34.335461, 29.782547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126675, 34.072582, 29.510569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712514, -0.302453, 0.633125,
		-0.621741, 0.690370, -0.369902,
		-0.325212, -0.657200, -0.679945,
		42.029110, 33.875423, 29.306585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573402, 34.396725, 29.779547>,  <42.256760, 34.335461, 29.782547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573402, 34.396725, 29.779547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603352, 34.035793, 29.609745>,  <41.621319, 33.819237, 29.507864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603352, 34.035793, 29.609745>,  <41.573402, 34.396725, 29.779547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603352, 34.035793, 29.609745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781870, -0.317338, 0.536634,
		-0.618930, 0.291728, -0.729260,
		0.074871, -0.902326, -0.424503,
		41.625813, 33.765095, 29.482393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879169, 34.110146, 29.548279>,  <41.573402, 34.396725, 29.779547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879169, 34.110146, 29.548279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091743, 33.771580, 29.561916>,  <41.219288, 33.568439, 29.570099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091743, 33.771580, 29.561916>,  <40.879169, 34.110146, 29.548279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091743, 33.771580, 29.561916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733731, -0.439824, 0.517874,
		-0.423342, -0.300228, -0.854777,
		0.531432, -0.846415, 0.034091,
		41.251175, 33.517654, 29.572144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448452, 33.573494, 29.255289>,  <40.879169, 34.110146, 29.548279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448452, 33.573494, 29.255289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729443, 33.376266, 29.460583>,  <40.898037, 33.257931, 29.583759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729443, 33.376266, 29.460583>,  <40.448452, 33.573494, 29.255289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729443, 33.376266, 29.460583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703971, -0.375369, 0.602929,
		-0.104633, -0.784845, -0.610794,
		0.702479, -0.493068, 0.513232,
		40.940186, 33.228348, 29.614552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204967, 32.908047, 29.331230>,  <40.448452, 33.573494, 29.255289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204967, 32.908047, 29.331230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470600, 32.963333, 29.625141>,  <40.629978, 32.996506, 29.801487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470600, 32.963333, 29.625141>,  <40.204967, 32.908047, 29.331230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470600, 32.963333, 29.625141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655496, -0.365066, 0.661099,
		0.359615, -0.920665, -0.151833,
		0.664080, 0.138215, 0.734776,
		40.669823, 33.004799, 29.845573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125061, 32.244789, 29.722925>,  <40.204967, 32.908047, 29.331230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125061, 32.244789, 29.722925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296627, 32.512260, 29.965872>,  <40.399567, 32.672745, 30.111641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296627, 32.512260, 29.965872>,  <40.125061, 32.244789, 29.722925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296627, 32.512260, 29.965872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625918, -0.264807, 0.733556,
		0.651350, -0.694798, 0.304959,
		0.428918, 0.668680, 0.607368,
		40.425301, 32.712864, 30.148083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358345, 31.920012, 30.301691>,  <40.125061, 32.244789, 29.722925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358345, 31.920012, 30.301691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.340813, 32.296040, 30.436953>,  <40.330296, 32.521656, 30.518110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.340813, 32.296040, 30.436953>,  <40.358345, 31.920012, 30.301691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340813, 32.296040, 30.436953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438379, -0.322248, 0.839035,
		0.897721, -0.111468, 0.426230,
		-0.043827, 0.940069, 0.338154,
		40.327663, 32.578060, 30.538399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377144, 31.818121, 30.934217>,  <40.358345, 31.920012, 30.301691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377144, 31.818121, 30.934217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276699, 32.205296, 30.936888>,  <40.216431, 32.437599, 30.938490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276699, 32.205296, 30.936888>,  <40.377144, 31.818121, 30.934217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276699, 32.205296, 30.936888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528420, -0.142861, 0.836877,
		0.810996, 0.206623, 0.547350,
		-0.251113, 0.967935, 0.006676,
		40.201366, 32.495674, 30.938890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631687, 32.142162, 31.583523>,  <40.377144, 31.818121, 30.934217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631687, 32.142162, 31.583523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316383, 32.357353, 31.464037>,  <40.127201, 32.486465, 31.392345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316383, 32.357353, 31.464037>,  <40.631687, 32.142162, 31.583523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316383, 32.357353, 31.464037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404406, -0.087024, 0.910430,
		0.463793, 0.838457, 0.286157,
		-0.788259, 0.537975, -0.298716,
		40.079906, 32.518745, 31.374422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596104, 32.749386, 32.152523>,  <40.631687, 32.142162, 31.583523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596104, 32.749386, 32.152523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.246841, 32.744522, 31.957609>,  <40.037285, 32.741604, 31.840660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.246841, 32.744522, 31.957609>,  <40.596104, 32.749386, 32.152523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246841, 32.744522, 31.957609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484732, -0.083501, 0.870668,
		-0.051275, 0.996433, 0.067016,
		-0.873158, -0.012159, -0.487285,
		39.984894, 32.740875, 31.811424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152611, 33.252354, 32.516212>,  <40.596104, 32.749386, 32.152523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152611, 33.252354, 32.516212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931896, 32.997334, 32.301155>,  <39.799469, 32.844322, 32.172119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931896, 32.997334, 32.301155>,  <40.152611, 33.252354, 32.516212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931896, 32.997334, 32.301155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517283, -0.244049, 0.820280,
		-0.654183, 0.730731, -0.195133,
		-0.551782, -0.637552, -0.537647,
		39.766361, 32.806068, 32.139862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409386, 33.398602, 32.525272>,  <40.152611, 33.252354, 32.516212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409386, 33.398602, 32.525272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496609, 33.009117, 32.498940>,  <39.548943, 32.775425, 32.483139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496609, 33.009117, 32.498940>,  <39.409386, 33.398602, 32.525272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496609, 33.009117, 32.498940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624973, -0.191135, 0.756886,
		-0.749572, -0.123902, -0.650223,
		0.218060, -0.973712, -0.065834,
		39.562027, 32.717003, 32.479191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408119, 33.413342, 33.242706>,  <39.409386, 33.398602, 32.525272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408119, 33.413342, 33.242706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307014, 33.752644, 33.428856>,  <39.246349, 33.956226, 33.540546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307014, 33.752644, 33.428856>,  <39.408119, 33.413342, 33.242706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307014, 33.752644, 33.428856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036409, 0.488990, -0.871529,
		-0.966842, -0.203349, -0.154484,
		-0.252766, 0.848256, 0.465373,
		39.231186, 34.007122, 33.568466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825108, 33.687912, 32.943882>,  <39.408119, 33.413342, 33.242706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825108, 33.687912, 32.943882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970196, 34.014969, 33.122723>,  <39.057251, 34.211201, 33.230026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970196, 34.014969, 33.122723>,  <38.825108, 33.687912, 32.943882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970196, 34.014969, 33.122723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076406, 0.504252, -0.860170,
		-0.928759, 0.277843, 0.245376,
		0.362723, 0.817639, 0.447099,
		39.079014, 34.260262, 33.256851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406567, 34.153316, 32.773727>,  <38.825108, 33.687912, 32.943882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406567, 34.153316, 32.773727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.725128, 34.376183, 32.867794>,  <38.916267, 34.509903, 32.924232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.725128, 34.376183, 32.867794>,  <38.406567, 34.153316, 32.773727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725128, 34.376183, 32.867794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126490, 0.533716, -0.836150,
		-0.591384, 0.636171, 0.495532,
		0.796407, 0.557166, 0.235162,
		38.964050, 34.543331, 32.938343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128960, 34.727554, 32.700581>,  <38.406567, 34.153316, 32.773727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128960, 34.727554, 32.700581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523178, 34.794991, 32.693962>,  <38.759708, 34.835453, 32.689991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523178, 34.794991, 32.693962>,  <38.128960, 34.727554, 32.700581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523178, 34.794991, 32.693962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123977, 0.651301, -0.748623,
		-0.115436, 0.739855, 0.662789,
		0.985548, 0.168589, -0.016542,
		38.818844, 34.845566, 32.688999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268524, 35.508583, 32.679062>,  <38.128960, 34.727554, 32.700581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268524, 35.508583, 32.679062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600197, 35.343136, 32.528664>,  <38.799202, 35.243870, 32.438423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600197, 35.343136, 32.528664>,  <38.268524, 35.508583, 32.679062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600197, 35.343136, 32.528664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133072, 0.507256, -0.851460,
		0.542904, 0.756052, 0.365568,
		0.829185, -0.413614, -0.376000,
		38.848953, 35.219051, 32.415863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393112, 35.994095, 32.161034>,  <38.268524, 35.508583, 32.679062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393112, 35.994095, 32.161034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696259, 35.747810, 32.074738>,  <38.878147, 35.600040, 32.022961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696259, 35.747810, 32.074738>,  <38.393112, 35.994095, 32.161034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696259, 35.747810, 32.074738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263765, 0.591607, -0.761859,
		0.596716, 0.520481, 0.610761,
		0.757864, -0.615711, -0.215737,
		38.923618, 35.563099, 32.010017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125832, 36.342548, 32.126968>,  <38.393112, 35.994095, 32.161034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125832, 36.342548, 32.126968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111298, 36.015629, 31.896942>,  <39.102577, 35.819477, 31.758924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111298, 36.015629, 31.896942>,  <39.125832, 36.342548, 32.126968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111298, 36.015629, 31.896942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399645, 0.515547, -0.757955,
		0.915950, -0.257367, 0.307894,
		-0.036338, -0.817297, -0.575070,
		39.100395, 35.770439, 31.724421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618034, 36.432034, 31.680914>,  <39.125832, 36.342548, 32.126968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618034, 36.432034, 31.680914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.439602, 36.135979, 31.479631>,  <39.332542, 35.958347, 31.358862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.439602, 36.135979, 31.479631>,  <39.618034, 36.432034, 31.680914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439602, 36.135979, 31.479631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311160, 0.398919, -0.862579,
		0.839163, -0.541355, 0.052351,
		-0.446077, -0.740134, -0.503206,
		39.305779, 35.913937, 31.328671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078800, 36.123516, 31.324625>,  <39.618034, 36.432034, 31.680914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078800, 36.123516, 31.324625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730438, 36.045700, 31.144098>,  <39.521423, 35.999012, 31.035782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730438, 36.045700, 31.144098>,  <40.078800, 36.123516, 31.324625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730438, 36.045700, 31.144098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365545, 0.357394, -0.859445,
		0.328487, -0.913470, -0.240145,
		-0.870904, -0.194532, -0.451313,
		39.469170, 35.987339, 31.008703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238495, 35.813622, 30.667234>,  <40.078800, 36.123516, 31.324625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238495, 35.813622, 30.667234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872894, 35.973972, 30.642237>,  <39.653534, 36.070183, 30.627237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872894, 35.973972, 30.642237>,  <40.238495, 35.813622, 30.667234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872894, 35.973972, 30.642237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257155, 0.453252, -0.853484,
		-0.313817, -0.796153, -0.517359,
		-0.913997, 0.400879, -0.062496,
		39.598694, 36.094234, 30.623487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008907, 35.672844, 30.019753>,  <40.238495, 35.813622, 30.667234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008907, 35.672844, 30.019753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.771633, 35.974937, 30.131292>,  <39.629269, 36.156193, 30.198215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.771633, 35.974937, 30.131292>,  <40.008907, 35.672844, 30.019753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771633, 35.974937, 30.131292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124761, 0.428418, -0.894926,
		-0.795343, -0.496064, -0.348353,
		-0.593182, 0.755234, 0.278850,
		39.593678, 36.201508, 30.214947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533092, 35.813091, 29.456036>,  <40.008907, 35.672844, 30.019753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533092, 35.813091, 29.456036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524311, 36.144447, 29.679924>,  <39.519043, 36.343262, 29.814257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524311, 36.144447, 29.679924>,  <39.533092, 35.813091, 29.456036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524311, 36.144447, 29.679924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076978, 0.559595, -0.825184,
		-0.996791, 0.024970, -0.076053,
		-0.021954, 0.828390, 0.559721,
		39.517723, 36.392963, 29.847839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001606, 36.231079, 29.191055>,  <39.533092, 35.813091, 29.456036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001606, 36.231079, 29.191055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237217, 36.497959, 29.373436>,  <39.378582, 36.658089, 29.482864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237217, 36.497959, 29.373436>,  <39.001606, 36.231079, 29.191055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237217, 36.497959, 29.373436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146869, 0.643205, -0.751477,
		-0.794655, 0.375675, 0.476856,
		0.589027, 0.667200, 0.455951,
		39.413925, 36.698120, 29.510221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676132, 36.779140, 29.197922>,  <39.001606, 36.231079, 29.191055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676132, 36.779140, 29.197922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048008, 36.918987, 29.244299>,  <39.271133, 37.002895, 29.272125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048008, 36.918987, 29.244299>,  <38.676132, 36.779140, 29.197922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048008, 36.918987, 29.244299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157100, 0.661062, -0.733701,
		-0.333161, 0.663900, 0.669508,
		0.929690, 0.349620, 0.115941,
		39.326916, 37.023872, 29.279081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279148, 37.186287, 29.042986>,  <38.676132, 36.779140, 29.197922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279148, 37.186287, 29.042986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956699, 37.383770, 28.912500>,  <37.763229, 37.502258, 28.834209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956699, 37.383770, 28.912500>,  <38.279148, 37.186287, 29.042986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956699, 37.383770, 28.912500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567269, -0.487844, 0.663486,
		0.168427, 0.719904, 0.673328,
		-0.806125, 0.493707, -0.326213,
		37.714863, 37.531883, 28.814636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931374, 37.340042, 29.630558>,  <38.279148, 37.186287, 29.042986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931374, 37.340042, 29.630558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659439, 37.377777, 29.339649>,  <37.496277, 37.400417, 29.165104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659439, 37.377777, 29.339649>,  <37.931374, 37.340042, 29.630558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659439, 37.377777, 29.339649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606604, -0.629644, 0.485365,
		-0.412135, 0.771135, 0.485280,
		-0.679836, 0.094337, -0.727272,
		37.455490, 37.406078, 29.121468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327927, 37.381214, 29.965525>,  <37.931374, 37.340042, 29.630558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327927, 37.381214, 29.965525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207054, 37.292423, 29.594706>,  <37.134529, 37.239151, 29.372215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207054, 37.292423, 29.594706>,  <37.327927, 37.381214, 29.965525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207054, 37.292423, 29.594706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686482, -0.624072, 0.373197,
		-0.661384, 0.749174, 0.036201,
		-0.302181, -0.221975, -0.927045,
		37.116398, 37.225830, 29.316591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646923, 37.646103, 29.863045>,  <37.327927, 37.381214, 29.965525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646923, 37.646103, 29.863045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691898, 37.341312, 29.607937>,  <36.718884, 37.158440, 29.454872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691898, 37.341312, 29.607937>,  <36.646923, 37.646103, 29.863045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691898, 37.341312, 29.607937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585612, -0.569343, 0.576982,
		-0.802756, 0.308612, -0.510237,
		0.112436, -0.761976, -0.637770,
		36.725628, 37.112720, 29.416605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963863, 37.425285, 29.740467>,  <36.646923, 37.646103, 29.863045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963863, 37.425285, 29.740467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197014, 37.119095, 29.631433>,  <36.336903, 36.935383, 29.566013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197014, 37.119095, 29.631433>,  <35.963863, 37.425285, 29.740467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197014, 37.119095, 29.631433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641435, -0.639395, 0.423951,
		-0.498813, -0.072266, -0.863691,
		0.582878, -0.765475, -0.272585,
		36.371876, 36.889454, 29.549658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467316, 37.138084, 29.356764>,  <35.963863, 37.425285, 29.740467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467316, 37.138084, 29.356764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.773823, 36.892719, 29.433245>,  <35.957726, 36.745499, 29.479134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.773823, 36.892719, 29.433245>,  <35.467316, 37.138084, 29.356764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773823, 36.892719, 29.433245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642516, -0.732628, 0.224565,
		0.002331, -0.294929, -0.955516,
		0.766269, -0.613411, 0.191205,
		36.003704, 36.708694, 29.490606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334072, 36.529182, 29.018078>,  <35.467316, 37.138084, 29.356764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334072, 36.529182, 29.018078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.587864, 36.427982, 29.310221>,  <35.740139, 36.367264, 29.485506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.587864, 36.427982, 29.310221>,  <35.334072, 36.529182, 29.018078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587864, 36.427982, 29.310221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695572, -0.598951, 0.396783,
		0.337065, -0.759769, -0.556002,
		0.634482, -0.252997, 0.730359,
		35.778210, 36.352081, 29.529329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375561, 35.781059, 28.940468>,  <35.334072, 36.529182, 29.018078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375561, 35.781059, 28.940468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516838, 35.893967, 29.297249>,  <35.601604, 35.961712, 29.511318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516838, 35.893967, 29.297249>,  <35.375561, 35.781059, 28.940468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516838, 35.893967, 29.297249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419550, -0.804366, 0.420682,
		0.836203, -0.522800, -0.165667,
		0.353189, 0.282270, 0.891953,
		35.622795, 35.978649, 29.564835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639889, 35.161133, 29.300888>,  <35.375561, 35.781059, 28.940468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639889, 35.161133, 29.300888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.578094, 35.444317, 29.576548>,  <35.541019, 35.614227, 29.741943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.578094, 35.444317, 29.576548>,  <35.639889, 35.161133, 29.300888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578094, 35.444317, 29.576548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357396, -0.690330, 0.629057,
		0.921087, -0.149118, 0.359669,
		-0.154486, 0.707961, 0.689149,
		35.531750, 35.656704, 29.783293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885929, 34.862885, 29.959267>,  <35.639889, 35.161133, 29.300888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885929, 34.862885, 29.959267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.677208, 35.183262, 30.076715>,  <35.551975, 35.375488, 30.147184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.677208, 35.183262, 30.076715>,  <35.885929, 34.862885, 29.959267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677208, 35.183262, 30.076715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473998, -0.558389, 0.680829,
		0.709262, 0.216079, 0.671012,
		-0.521799, 0.800945, 0.293623,
		35.520668, 35.423546, 30.164803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014812, 35.025646, 30.698591>,  <35.885929, 34.862885, 29.959267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014812, 35.025646, 30.698591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659657, 35.176777, 30.593601>,  <35.446564, 35.267456, 30.530607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659657, 35.176777, 30.593601>,  <36.014812, 35.025646, 30.698591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659657, 35.176777, 30.593601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444469, -0.557269, 0.701355,
		0.118724, 0.739389, 0.662728,
		-0.887892, 0.377830, -0.262474,
		35.393288, 35.290127, 30.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611622, 35.142815, 31.334383>,  <36.014812, 35.025646, 30.698591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611622, 35.142815, 31.334383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.343925, 35.140816, 31.037172>,  <35.183308, 35.139618, 30.858847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.343925, 35.140816, 31.037172>,  <35.611622, 35.142815, 31.334383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343925, 35.140816, 31.037172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414897, -0.827057, 0.379258,
		-0.616418, 0.562095, 0.551432,
		-0.669245, -0.004994, -0.743025,
		35.143150, 35.139317, 30.814264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.081097, 40.459415, 26.569778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806599, 40.238659, 26.380262>,  <38.641899, 40.106205, 26.266552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806599, 40.238659, 26.380262>,  <39.081097, 40.459415, 26.569778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806599, 40.238659, 26.380262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344156, -0.327484, 0.879949,
		-0.640799, 0.766920, 0.034797,
		-0.686246, -0.551895, -0.473791,
		38.600723, 40.073090, 26.238125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635761, 40.367767, 27.081573>,  <39.081097, 40.459415, 26.569778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635761, 40.367767, 27.081573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468151, 40.113701, 26.822042>,  <38.367584, 39.961262, 26.666323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468151, 40.113701, 26.822042>,  <38.635761, 40.367767, 27.081573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468151, 40.113701, 26.822042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395241, -0.515737, 0.760131,
		-0.817436, 0.574959, -0.034936,
		-0.419026, -0.635167, -0.648829,
		38.342442, 39.923149, 26.627394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869675, 40.413113, 27.108362>,  <38.635761, 40.367767, 27.081573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869675, 40.413113, 27.108362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992168, 40.047543, 27.001812>,  <38.065666, 39.828201, 26.937881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992168, 40.047543, 27.001812>,  <37.869675, 40.413113, 27.108362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992168, 40.047543, 27.001812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435088, -0.383258, 0.814746,
		-0.846710, -0.133608, -0.515006,
		0.306237, -0.913927, -0.266377,
		38.084038, 39.773365, 26.921900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351032, 39.913448, 27.194466>,  <37.869675, 40.413113, 27.108362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351032, 39.913448, 27.194466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663097, 39.664810, 27.166286>,  <37.850338, 39.515629, 27.149378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663097, 39.664810, 27.166286>,  <37.351032, 39.913448, 27.194466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663097, 39.664810, 27.166286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319290, -0.492502, 0.809627,
		-0.537958, -0.609146, -0.582702,
		0.780163, -0.621596, -0.070451,
		37.897148, 39.478333, 27.145151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127121, 39.172043, 27.306206>,  <37.351032, 39.913448, 27.194466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127121, 39.172043, 27.306206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521343, 39.145638, 27.368584>,  <37.757877, 39.129795, 27.406012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521343, 39.145638, 27.368584>,  <37.127121, 39.172043, 27.306206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521343, 39.145638, 27.368584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159773, -0.667705, 0.727078,
		0.056127, -0.741493, -0.668609,
		0.985557, -0.066017, 0.155947,
		37.817009, 39.125832, 27.415367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308270, 38.508488, 27.204355>,  <37.127121, 39.172043, 27.306206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308270, 38.508488, 27.204355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623096, 38.644405, 27.410292>,  <37.811993, 38.725956, 27.533854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623096, 38.644405, 27.410292>,  <37.308270, 38.508488, 27.204355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623096, 38.644405, 27.410292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182644, -0.668823, 0.720636,
		0.589203, -0.661224, -0.464351,
		0.787071, 0.339790, 0.514842,
		37.859219, 38.746342, 27.564745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660313, 38.017353, 27.402994>,  <37.308270, 38.508488, 27.204355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660313, 38.017353, 27.402994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822395, 38.281296, 27.656101>,  <37.919643, 38.439663, 27.807964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822395, 38.281296, 27.656101>,  <37.660313, 38.017353, 27.402994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822395, 38.281296, 27.656101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161213, -0.629714, 0.759915,
		0.899899, -0.409932, -0.148786,
		0.405206, 0.659861, 0.632766,
		37.943958, 38.479256, 27.845930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191891, 37.639210, 27.703115>,  <37.660313, 38.017353, 27.402994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191891, 37.639210, 27.703115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080833, 37.908401, 27.977345>,  <38.014198, 38.069916, 28.141882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080833, 37.908401, 27.977345>,  <38.191891, 37.639210, 27.703115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080833, 37.908401, 27.977345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089031, -0.728585, 0.679145,
		0.956550, 0.127523, 0.262203,
		-0.277643, 0.672980, 0.685574,
		37.997540, 38.110294, 28.183018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556637, 37.504745, 28.383892>,  <38.191891, 37.639210, 27.703115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556637, 37.504745, 28.383892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196182, 37.668289, 28.441566>,  <37.979912, 37.766415, 28.476171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196182, 37.668289, 28.441566>,  <38.556637, 37.504745, 28.383892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196182, 37.668289, 28.441566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206623, -0.697411, 0.686240,
		0.381134, 0.588602, 0.712941,
		-0.901135, 0.408859, 0.144188,
		37.925842, 37.790947, 28.484823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867973, 38.062305, 28.778826>,  <38.556637, 37.504745, 28.383892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867973, 38.062305, 28.778826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216259, 37.891319, 28.876087>,  <39.425232, 37.788727, 28.934444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216259, 37.891319, 28.876087>,  <38.867973, 38.062305, 28.778826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216259, 37.891319, 28.876087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488362, 0.809798, -0.325162,
		-0.057909, 0.401871, 0.913863,
		0.870718, -0.427466, 0.243154,
		39.477474, 37.763081, 28.949034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264542, 38.546429, 29.246796>,  <38.867973, 38.062305, 28.778826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264542, 38.546429, 29.246796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508614, 38.277954, 29.078419>,  <39.655056, 38.116871, 28.977392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508614, 38.277954, 29.078419>,  <39.264542, 38.546429, 29.246796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508614, 38.277954, 29.078419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509637, 0.739321, -0.440085,
		0.606588, 0.054005, 0.793180,
		0.610181, -0.671184, -0.420941,
		39.691669, 38.076599, 28.952137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934532, 38.795315, 29.261656>,  <39.264542, 38.546429, 29.246796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934532, 38.795315, 29.261656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937931, 38.524166, 28.967604>,  <39.939972, 38.361477, 28.791172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937931, 38.524166, 28.967604>,  <39.934532, 38.795315, 29.261656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937931, 38.524166, 28.967604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741374, 0.497608, -0.450278,
		0.671038, -0.541181, 0.506785,
		0.008498, -0.677871, -0.735132,
		39.940479, 38.320805, 28.747065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633503, 38.647537, 29.074158>,  <39.934532, 38.795315, 29.261656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633503, 38.647537, 29.074158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442410, 38.502651, 28.754017>,  <40.327751, 38.415718, 28.561932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442410, 38.502651, 28.754017>,  <40.633503, 38.647537, 29.074158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442410, 38.502651, 28.754017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793188, 0.213792, -0.570215,
		0.377650, -0.907244, 0.185169,
		-0.477737, -0.362216, -0.800355,
		40.299088, 38.393986, 28.513910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123993, 38.250423, 28.691736>,  <40.633503, 38.647537, 29.074158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123993, 38.250423, 28.691736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859646, 38.353634, 28.409834>,  <40.701038, 38.415562, 28.240692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859646, 38.353634, 28.409834>,  <41.123993, 38.250423, 28.691736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859646, 38.353634, 28.409834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737937, 0.394528, -0.547536,
		0.136767, -0.881912, -0.451137,
		-0.660866, 0.258026, -0.704754,
		40.661385, 38.431042, 28.198408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502537, 38.147900, 28.100220>,  <41.123993, 38.250423, 28.691736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502537, 38.147900, 28.100220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193855, 38.366627, 27.970320>,  <41.008648, 38.497864, 27.892380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193855, 38.366627, 27.970320>,  <41.502537, 38.147900, 28.100220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193855, 38.366627, 27.970320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611733, 0.498553, -0.614189,
		-0.173945, -0.672632, -0.719242,
		-0.771704, 0.546819, -0.324750,
		40.962345, 38.530674, 27.872894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433765, 38.099388, 27.348434>,  <41.502537, 38.147900, 28.100220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433765, 38.099388, 27.348434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207760, 38.417400, 27.436699>,  <41.072159, 38.608208, 27.489656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207760, 38.417400, 27.436699>,  <41.433765, 38.099388, 27.348434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207760, 38.417400, 27.436699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542833, 0.559596, -0.626246,
		-0.621364, -0.234055, -0.747746,
		-0.565012, 0.795029, 0.220660,
		41.038258, 38.655910, 27.502897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166939, 38.271507, 26.715097>,  <41.433765, 38.099388, 27.348434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166939, 38.271507, 26.715097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168983, 38.589680, 26.957506>,  <41.170208, 38.780582, 27.102951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168983, 38.589680, 26.957506>,  <41.166939, 38.271507, 26.715097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168983, 38.589680, 26.957506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482955, 0.528701, -0.698018,
		-0.875630, 0.296248, -0.381457,
		0.005110, 0.795432, 0.606021,
		41.170517, 38.828308, 27.139313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008240, 38.812477, 26.188261>,  <41.166939, 38.271507, 26.715097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008240, 38.812477, 26.188261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111698, 39.016472, 26.516409>,  <41.173775, 39.138870, 26.713299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111698, 39.016472, 26.516409>,  <41.008240, 38.812477, 26.188261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111698, 39.016472, 26.516409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490267, 0.662450, -0.566390,
		-0.832310, 0.548697, -0.078691,
		0.258648, 0.509991, 0.820372,
		41.189293, 39.169468, 26.762520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902157, 39.615124, 26.091108>,  <41.008240, 38.812477, 26.188261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902157, 39.615124, 26.091108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176270, 39.595142, 26.381735>,  <41.340736, 39.583153, 26.556110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176270, 39.595142, 26.381735>,  <40.902157, 39.615124, 26.091108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176270, 39.595142, 26.381735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560902, 0.672533, -0.482793,
		-0.464522, 0.738379, 0.488892,
		0.685280, -0.049952, 0.726565,
		41.381855, 39.580158, 26.599705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010704, 40.268494, 26.271894>,  <40.902157, 39.615124, 26.091108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010704, 40.268494, 26.271894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323406, 40.032143, 26.351620>,  <41.511028, 39.890331, 26.399454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323406, 40.032143, 26.351620>,  <41.010704, 40.268494, 26.271894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323406, 40.032143, 26.351620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570281, 0.548126, -0.611831,
		0.252270, 0.591965, 0.765466,
		0.781754, -0.590877, 0.199311,
		41.557934, 39.854881, 26.411413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582729, 40.857944, 26.453825>,  <41.010704, 40.268494, 26.271894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582729, 40.857944, 26.453825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749390, 40.503159, 26.374136>,  <41.849388, 40.290287, 26.326323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749390, 40.503159, 26.374136>,  <41.582729, 40.857944, 26.453825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749390, 40.503159, 26.374136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633982, 0.440571, -0.635581,
		0.651511, 0.138514, 0.745887,
		0.416654, -0.886967, -0.199222,
		41.874386, 40.237068, 26.314369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261574, 41.000549, 26.512249>,  <41.582729, 40.857944, 26.453825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261574, 41.000549, 26.512249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258793, 40.663288, 26.297199>,  <42.257126, 40.460930, 26.168169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258793, 40.663288, 26.297199>,  <42.261574, 41.000549, 26.512249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258793, 40.663288, 26.297199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371660, 0.496944, -0.784165,
		0.928343, -0.205264, 0.309913,
		-0.006951, -0.843157, -0.537623,
		42.256706, 40.410339, 26.135912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919537, 40.932907, 26.250275>,  <42.261574, 41.000549, 26.512249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919537, 40.932907, 26.250275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710087, 40.703899, 25.997911>,  <42.584419, 40.566494, 25.846495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710087, 40.703899, 25.997911>,  <42.919537, 40.932907, 26.250275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710087, 40.703899, 25.997911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479570, 0.413999, -0.773704,
		0.704155, -0.707691, 0.057785,
		-0.523620, -0.572520, -0.630907,
		42.553001, 40.532143, 25.808640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.692749, 35.690708, 21.728792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.892288, 35.997227, 21.890753>,  <37.012012, 36.181137, 21.987928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.892288, 35.997227, 21.890753>,  <36.692749, 35.690708, 21.728792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892288, 35.997227, 21.890753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018071, -0.457881, 0.888830,
		0.866503, -0.450704, -0.214564,
		0.498844, 0.766297, 0.404900,
		37.041943, 36.227116, 22.012222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179768, 35.333706, 22.073997>,  <36.692749, 35.690708, 21.728792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179768, 35.333706, 22.073997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153461, 35.708847, 22.210299>,  <37.137676, 35.933929, 22.292080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153461, 35.708847, 22.210299>,  <37.179768, 35.333706, 22.073997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153461, 35.708847, 22.210299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208641, -0.321018, 0.923805,
		0.975778, 0.131853, -0.174561,
		-0.065770, 0.937850, 0.340752,
		37.133732, 35.990204, 22.312525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856804, 35.508614, 22.462255>,  <37.179768, 35.333706, 22.073997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856804, 35.508614, 22.462255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575981, 35.764145, 22.588123>,  <37.407486, 35.917465, 22.663645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575981, 35.764145, 22.588123>,  <37.856804, 35.508614, 22.462255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575981, 35.764145, 22.588123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200418, -0.246767, 0.948124,
		0.683337, 0.728702, 0.045212,
		-0.702056, 0.638827, 0.314670,
		37.365364, 35.955791, 22.682524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154015, 35.901222, 23.080576>,  <37.856804, 35.508614, 22.462255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154015, 35.901222, 23.080576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754269, 35.915131, 23.077629>,  <37.514420, 35.923473, 23.075861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754269, 35.915131, 23.077629>,  <38.154015, 35.901222, 23.080576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754269, 35.915131, 23.077629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018089, -0.319183, 0.947520,
		0.030593, 0.947055, 0.319610,
		-0.999368, 0.034769, -0.007367,
		37.454456, 35.925560, 23.075418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911720, 36.305279, 23.755732>,  <38.154015, 35.901222, 23.080576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911720, 36.305279, 23.755732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.601448, 36.087444, 23.628139>,  <37.415287, 35.956745, 23.551584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.601448, 36.087444, 23.628139>,  <37.911720, 36.305279, 23.755732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601448, 36.087444, 23.628139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219786, -0.240690, 0.945390,
		-0.591623, 0.803426, 0.067006,
		-0.775678, -0.544587, -0.318979,
		37.368744, 35.924068, 23.532446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390987, 36.389015, 24.178272>,  <37.911720, 36.305279, 23.755732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390987, 36.389015, 24.178272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221405, 36.054180, 24.039967>,  <37.119656, 35.853279, 23.956984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221405, 36.054180, 24.039967>,  <37.390987, 36.389015, 24.178272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221405, 36.054180, 24.039967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328469, -0.213668, 0.920030,
		-0.844021, 0.503623, -0.184371,
		-0.423954, -0.837084, -0.345765,
		37.094219, 35.803055, 23.936237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835121, 36.316631, 24.603148>,  <37.390987, 36.389015, 24.178272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835121, 36.316631, 24.603148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.866177, 35.955666, 24.433619>,  <36.884811, 35.739086, 24.331902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.866177, 35.955666, 24.433619>,  <36.835121, 36.316631, 24.603148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866177, 35.955666, 24.433619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320495, -0.425134, 0.846489,
		-0.944063, 0.070113, -0.322226,
		0.077639, -0.902411, -0.423824,
		36.889469, 35.684944, 24.306471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203930, 35.902847, 24.717705>,  <36.835121, 36.316631, 24.603148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203930, 35.902847, 24.717705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495178, 35.638817, 24.643793>,  <36.669926, 35.480400, 24.599447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495178, 35.638817, 24.643793>,  <36.203930, 35.902847, 24.717705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495178, 35.638817, 24.643793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236503, -0.494945, 0.836120,
		-0.643356, -0.565095, -0.516489,
		0.728120, -0.660074, -0.184779,
		36.713615, 35.440796, 24.588360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949127, 35.288204, 24.847162>,  <36.203930, 35.902847, 24.717705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949127, 35.288204, 24.847162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341156, 35.223267, 24.892954>,  <36.576374, 35.184303, 24.920429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341156, 35.223267, 24.892954>,  <35.949127, 35.288204, 24.847162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341156, 35.223267, 24.892954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174274, -0.426106, 0.887729,
		-0.095339, -0.889987, -0.445907,
		0.980071, -0.162345, 0.114477,
		36.635178, 35.174564, 24.927298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988049, 34.678516, 25.132818>,  <35.949127, 35.288204, 24.847162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988049, 34.678516, 25.132818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353397, 34.818573, 25.215912>,  <36.572605, 34.902607, 25.265768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353397, 34.818573, 25.215912>,  <35.988049, 34.678516, 25.132818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353397, 34.818573, 25.215912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010645, -0.530608, 0.847551,
		0.406992, -0.771916, -0.488368,
		0.913370, 0.350145, 0.207736,
		36.627407, 34.923618, 25.278233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272385, 34.139408, 25.558039>,  <35.988049, 34.678516, 25.132818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272385, 34.139408, 25.558039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535721, 34.432716, 25.626032>,  <36.693722, 34.608704, 25.666828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535721, 34.432716, 25.626032>,  <36.272385, 34.139408, 25.558039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535721, 34.432716, 25.626032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172195, -0.366550, 0.914325,
		0.732757, -0.572670, -0.367582,
		0.658344, 0.733274, 0.169981,
		36.733223, 34.652699, 25.677027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834129, 33.810940, 25.735865>,  <36.272385, 34.139408, 25.558039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834129, 33.810940, 25.735865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832626, 34.177456, 25.896063>,  <36.831722, 34.397366, 25.992182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832626, 34.177456, 25.896063>,  <36.834129, 33.810940, 25.735865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832626, 34.177456, 25.896063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086090, -0.399306, 0.912767,
		0.996280, -0.031047, 0.080385,
		-0.003759, 0.916292, 0.400494,
		36.831497, 34.452343, 26.016211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164986, 33.648460, 26.330225>,  <36.834129, 33.810940, 25.735865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164986, 33.648460, 26.330225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.018116, 34.015274, 26.392492>,  <36.929993, 34.235363, 26.429853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.018116, 34.015274, 26.392492>,  <37.164986, 33.648460, 26.330225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018116, 34.015274, 26.392492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123052, -0.213778, 0.969101,
		0.921977, 0.336675, 0.191337,
		-0.367175, 0.917033, 0.155669,
		36.907963, 34.290382, 26.439194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459774, 33.901661, 26.932289>,  <37.164986, 33.648460, 26.330225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459774, 33.901661, 26.932289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117638, 34.097286, 26.863916>,  <36.912357, 34.214661, 26.822893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117638, 34.097286, 26.863916>,  <37.459774, 33.901661, 26.932289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117638, 34.097286, 26.863916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299366, -0.197300, 0.933516,
		0.422822, 0.849642, 0.315166,
		-0.855337, 0.489061, -0.170931,
		36.861038, 34.244003, 26.812637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691952, 34.473850, 27.328680>,  <37.459774, 33.901661, 26.932289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691952, 34.473850, 27.328680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.961838, 34.179199, 27.347158>,  <38.123768, 34.002407, 27.358246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.961838, 34.179199, 27.347158>,  <37.691952, 34.473850, 27.328680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961838, 34.179199, 27.347158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494051, 0.404252, -0.769736,
		0.548337, 0.542176, 0.636688,
		0.674715, -0.736631, 0.046197,
		38.164253, 33.958210, 27.361017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411629, 34.841396, 27.416645>,  <37.691952, 34.473850, 27.328680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411629, 34.841396, 27.416645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462849, 34.476929, 27.259991>,  <38.493580, 34.258247, 27.165998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462849, 34.476929, 27.259991>,  <38.411629, 34.841396, 27.416645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462849, 34.476929, 27.259991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683223, 0.367284, -0.631117,
		0.718895, -0.186759, 0.669561,
		0.128052, -0.911166, -0.391637,
		38.501263, 34.203579, 27.142500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096836, 34.803703, 27.358103>,  <38.411629, 34.841396, 27.416645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096836, 34.803703, 27.358103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951664, 34.521320, 27.114820>,  <38.864563, 34.351891, 26.968851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951664, 34.521320, 27.114820>,  <39.096836, 34.803703, 27.358103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951664, 34.521320, 27.114820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728308, 0.192240, -0.657732,
		0.581250, -0.681668, 0.444384,
		-0.362926, -0.705955, -0.608204,
		38.842785, 34.309532, 26.932360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622177, 34.417953, 27.187746>,  <39.096836, 34.803703, 27.358103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622177, 34.417953, 27.187746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367962, 34.355289, 26.885344>,  <39.215431, 34.317692, 26.703901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367962, 34.355289, 26.885344>,  <39.622177, 34.417953, 27.187746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367962, 34.355289, 26.885344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728044, 0.204323, -0.654373,
		0.256985, -0.966286, -0.015799,
		-0.635540, -0.156662, -0.756007,
		39.177299, 34.308292, 26.658541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057323, 34.102741, 26.622368>,  <39.622177, 34.417953, 27.187746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057323, 34.102741, 26.622368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729481, 34.228897, 26.431049>,  <39.532776, 34.304592, 26.316259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729481, 34.228897, 26.431049>,  <40.057323, 34.102741, 26.622368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729481, 34.228897, 26.431049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537091, 0.132379, -0.833072,
		-0.199429, -0.939683, -0.277894,
		-0.819611, 0.315393, -0.478295,
		39.483597, 34.323513, 26.287561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191162, 33.892097, 25.950459>,  <40.057323, 34.102741, 26.622368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191162, 33.892097, 25.950459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886429, 34.146278, 25.900162>,  <39.703590, 34.298786, 25.869984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886429, 34.146278, 25.900162>,  <40.191162, 33.892097, 25.950459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886429, 34.146278, 25.900162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330747, 0.214681, -0.918977,
		-0.556972, -0.741696, -0.373725,
		-0.761833, 0.635452, -0.125742,
		39.657879, 34.336914, 25.862438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902348, 33.748177, 25.292318>,  <40.191162, 33.892097, 25.950459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902348, 33.748177, 25.292318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783772, 34.121880, 25.371601>,  <39.712627, 34.346100, 25.419170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783772, 34.121880, 25.371601>,  <39.902348, 33.748177, 25.292318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783772, 34.121880, 25.371601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393071, 0.308490, -0.866215,
		-0.870414, -0.178870, -0.458678,
		-0.296438, 0.934259, 0.198205,
		39.694839, 34.402157, 25.431063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601532, 34.041836, 24.643442>,  <39.902348, 33.748177, 25.292318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601532, 34.041836, 24.643442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696350, 34.356838, 24.870998>,  <39.753242, 34.545841, 25.007532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696350, 34.356838, 24.870998>,  <39.601532, 34.041836, 24.643442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696350, 34.356838, 24.870998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207279, 0.531097, -0.821566,
		-0.949127, 0.312671, -0.037338,
		0.237050, 0.787511, 0.568889,
		39.767464, 34.593090, 25.041664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244862, 34.645107, 24.334425>,  <39.601532, 34.041836, 24.643442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244862, 34.645107, 24.334425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546329, 34.792694, 24.551991>,  <39.727211, 34.881245, 24.682529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546329, 34.792694, 24.551991>,  <39.244862, 34.645107, 24.334425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546329, 34.792694, 24.551991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306883, 0.534260, -0.787648,
		-0.581205, 0.760547, 0.289428,
		0.753673, 0.368965, 0.543914,
		39.772430, 34.903385, 24.715164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200592, 35.382595, 24.241421>,  <39.244862, 34.645107, 24.334425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200592, 35.382595, 24.241421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572113, 35.310787, 24.371101>,  <39.795025, 35.267704, 24.448910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572113, 35.310787, 24.371101>,  <39.200592, 35.382595, 24.241421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572113, 35.310787, 24.371101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370116, 0.493327, -0.787174,
		-0.018627, 0.851118, 0.524643,
		0.928799, -0.179516, 0.324202,
		39.850754, 35.256931, 24.468363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507729, 36.030888, 24.268690>,  <39.200592, 35.382595, 24.241421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507729, 36.030888, 24.268690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811069, 35.772022, 24.237471>,  <39.993073, 35.616703, 24.218739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811069, 35.772022, 24.237471>,  <39.507729, 36.030888, 24.268690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811069, 35.772022, 24.237471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385685, 0.541995, -0.746652,
		0.525504, 0.536121, 0.660621,
		0.758349, -0.647160, -0.078046,
		40.038574, 35.577873, 24.214056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059288, 36.437744, 24.002848>,  <39.507729, 36.030888, 24.268690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059288, 36.437744, 24.002848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174484, 36.062393, 23.926416>,  <40.243603, 35.837181, 23.880558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174484, 36.062393, 23.926416>,  <40.059288, 36.437744, 24.002848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174484, 36.062393, 23.926416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592801, 0.331396, -0.734005,
		0.752095, 0.098118, 0.651711,
		0.287993, -0.938376, -0.191077,
		40.260883, 35.780880, 23.869093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808239, 36.367115, 24.079042>,  <40.059288, 36.437744, 24.002848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808239, 36.367115, 24.079042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.661808, 36.102234, 23.817514>,  <40.573948, 35.943306, 23.660599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.661808, 36.102234, 23.817514>,  <40.808239, 36.367115, 24.079042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661808, 36.102234, 23.817514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589289, 0.378808, -0.713613,
		0.720225, -0.646526, 0.251553,
		-0.366079, -0.662200, -0.653818,
		40.551983, 35.903576, 23.621368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295670, 36.330715, 23.559433>,  <40.808239, 36.367115, 24.079042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295670, 36.330715, 23.559433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972118, 36.167061, 23.390518>,  <40.777988, 36.068867, 23.289169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972118, 36.167061, 23.390518>,  <41.295670, 36.330715, 23.559433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972118, 36.167061, 23.390518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332456, 0.274129, -0.902400,
		0.484968, -0.870321, -0.085716,
		-0.808875, -0.409138, -0.422287,
		40.729454, 36.044319, 23.263832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971287, 35.903053, 23.460325>,  <41.295670, 36.330715, 23.559433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971287, 35.903053, 23.460325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.348839, 36.035046, 23.466040>,  <42.575371, 36.114239, 23.469469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.348839, 36.035046, 23.466040>,  <41.971287, 35.903053, 23.460325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348839, 36.035046, 23.466040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239153, -0.712641, 0.659506,
		0.227805, -0.619078, -0.751563,
		0.943881, 0.329977, 0.014288,
		42.632004, 36.134037, 23.470325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385803, 35.281025, 23.552143>,  <41.971287, 35.903053, 23.460325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385803, 35.281025, 23.552143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.626949, 35.579071, 23.666229>,  <42.771637, 35.757900, 23.734682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.626949, 35.579071, 23.666229>,  <42.385803, 35.281025, 23.552143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626949, 35.579071, 23.666229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171769, -0.470319, 0.865618,
		0.779131, -0.472863, -0.411528,
		0.602869, 0.745118, 0.285217,
		42.807812, 35.802605, 23.751795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068478, 34.971432, 23.675856>,  <42.385803, 35.281025, 23.552143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068478, 34.971432, 23.675856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024185, 35.317265, 23.871912>,  <42.997612, 35.524765, 23.989546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024185, 35.317265, 23.871912>,  <43.068478, 34.971432, 23.675856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024185, 35.317265, 23.871912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287372, -0.444256, 0.848560,
		0.951397, 0.234813, -0.199264,
		-0.110729, 0.864581, 0.490142,
		42.990967, 35.576637, 24.018955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587257, 34.919716, 24.270193>,  <43.068478, 34.971432, 23.675856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587257, 34.919716, 24.270193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.374020, 35.230385, 24.404409>,  <43.246078, 35.416786, 24.484940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.374020, 35.230385, 24.404409>,  <43.587257, 34.919716, 24.270193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374020, 35.230385, 24.404409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102471, -0.334404, 0.936842,
		0.839827, 0.533809, 0.098683,
		-0.533095, 0.776674, 0.335542,
		43.214092, 35.463387, 24.505072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978516, 35.205456, 24.884323>,  <43.587257, 34.919716, 24.270193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978516, 35.205456, 24.884323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.596050, 35.313614, 24.929285>,  <43.366570, 35.378510, 24.956263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.596050, 35.313614, 24.929285>,  <43.978516, 35.205456, 24.884323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596050, 35.313614, 24.929285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052239, -0.220199, 0.974055,
		0.288129, 0.937230, 0.196422,
		-0.956166, 0.270392, 0.112405,
		43.309200, 35.394733, 24.963007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916149, 35.606918, 25.495220>,  <43.978516, 35.205456, 24.884323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916149, 35.606918, 25.495220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.541393, 35.494450, 25.412094>,  <43.316540, 35.426968, 25.362219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.541393, 35.494450, 25.412094>,  <43.916149, 35.606918, 25.495220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541393, 35.494450, 25.412094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200234, -0.055761, 0.978160,
		-0.286617, 0.958037, -0.004059,
		-0.936887, -0.281170, -0.207814,
		43.260326, 35.410099, 25.349751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474525, 35.924877, 26.021200>,  <43.916149, 35.606918, 25.495220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474525, 35.924877, 26.021200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.267063, 35.618565, 25.869104>,  <43.142586, 35.434776, 25.777847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.267063, 35.618565, 25.869104>,  <43.474525, 35.924877, 26.021200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267063, 35.618565, 25.869104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270198, -0.275131, 0.922657,
		-0.811168, 0.581277, -0.064215,
		-0.518652, -0.765780, -0.380238,
		43.111469, 35.388832, 25.755033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935436, 36.020489, 26.442896>,  <43.474525, 35.924877, 26.021200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935436, 36.020489, 26.442896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.941681, 35.649513, 26.293438>,  <42.945427, 35.426929, 26.203762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.941681, 35.649513, 26.293438>,  <42.935436, 36.020489, 26.442896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941681, 35.649513, 26.293438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197723, -0.369177, 0.908083,
		-0.980134, 0.059700, -0.189140,
		0.015614, -0.927440, -0.373647,
		42.946365, 35.371281, 26.181343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398403, 35.631611, 26.774054>,  <42.935436, 36.020489, 26.442896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398403, 35.631611, 26.774054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.657887, 35.360764, 26.635094>,  <42.813576, 35.198254, 26.551718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.657887, 35.360764, 26.635094>,  <42.398403, 35.631611, 26.774054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657887, 35.360764, 26.635094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201281, -0.592881, 0.779729,
		-0.733935, -0.435894, -0.520899,
		0.648710, -0.677118, -0.347399,
		42.852501, 35.157627, 26.530874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073921, 35.065895, 26.953547>,  <42.398403, 35.631611, 26.774054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073921, 35.065895, 26.953547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.447727, 34.938831, 26.889324>,  <42.672009, 34.862595, 26.850790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.447727, 34.938831, 26.889324>,  <42.073921, 35.065895, 26.953547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447727, 34.938831, 26.889324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158030, -0.774495, 0.612523,
		-0.318925, -0.547037, -0.773975,
		0.934513, -0.317660, -0.160557,
		42.728081, 34.843533, 26.841156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063709, 34.385284, 26.888439>,  <42.073921, 35.065895, 26.953547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063709, 34.385284, 26.888439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.441933, 34.475178, 26.982609>,  <42.668865, 34.529114, 27.039110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.441933, 34.475178, 26.982609>,  <42.063709, 34.385284, 26.888439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441933, 34.475178, 26.982609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045312, -0.625403, 0.778985,
		0.322295, -0.747240, -0.581170,
		0.945554, 0.224729, 0.235423,
		42.725597, 34.542595, 27.053236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410877, 33.715321, 27.103729>,  <42.063709, 34.385284, 26.888439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410877, 33.715321, 27.103729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.606049, 34.027882, 27.259335>,  <42.723152, 34.215420, 27.352697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.606049, 34.027882, 27.259335>,  <42.410877, 33.715321, 27.103729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606049, 34.027882, 27.259335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048766, -0.469372, 0.881653,
		0.871518, -0.411216, -0.267127,
		0.487932, 0.781403, 0.389013,
		42.752430, 34.262302, 27.376038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937740, 33.337799, 27.504431>,  <42.410877, 33.715321, 27.103729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937740, 33.337799, 27.504431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.934593, 33.704185, 27.664902>,  <42.932705, 33.924019, 27.761185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.934593, 33.704185, 27.664902>,  <42.937740, 33.337799, 27.504431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934593, 33.704185, 27.664902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227468, -0.392314, 0.891262,
		0.973754, -0.084244, 0.211439,
		-0.007867, 0.915966, 0.401180,
		42.932232, 33.978973, 27.785255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244377, 33.388889, 28.206551>,  <42.937740, 33.337799, 27.504431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244377, 33.388889, 28.206551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.998730, 33.703926, 28.226788>,  <42.851341, 33.892948, 28.238930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.998730, 33.703926, 28.226788>,  <43.244377, 33.388889, 28.206551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998730, 33.703926, 28.226788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451526, -0.403207, 0.795958,
		0.647289, 0.465968, 0.603234,
		-0.614119, 0.787590, 0.050594,
		42.814495, 33.940205, 28.241966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.469479, 40.367626, 25.607210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101288, 40.390388, 25.452560>,  <42.880371, 40.404045, 25.359770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101288, 40.390388, 25.452560>,  <43.469479, 40.367626, 25.607210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101288, 40.390388, 25.452560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383608, 0.320364, -0.866147,
		0.074572, -0.945584, -0.316718,
		-0.920480, 0.056905, -0.386624,
		42.825142, 40.407459, 25.336573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546425, 40.039387, 25.047173>,  <43.469479, 40.367626, 25.607210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546425, 40.039387, 25.047173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.215092, 40.255417, 24.987595>,  <43.016293, 40.385036, 24.951847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.215092, 40.255417, 24.987595>,  <43.546425, 40.039387, 25.047173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215092, 40.255417, 24.987595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234832, 0.093335, -0.967544,
		-0.508649, -0.836423, -0.204140,
		-0.828330, 0.540079, -0.148944,
		42.966591, 40.417442, 24.942911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160461, 39.695053, 24.498180>,  <43.546425, 40.039387, 25.047173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160461, 39.695053, 24.498180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.985573, 40.054699, 24.506451>,  <42.880638, 40.270485, 24.511414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.985573, 40.054699, 24.506451>,  <43.160461, 39.695053, 24.498180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985573, 40.054699, 24.506451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002408, 0.024161, -0.999705,
		-0.899350, -0.437045, -0.012728,
		-0.437224, 0.899115, 0.020677,
		42.854404, 40.324432, 24.512653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641193, 39.738037, 23.923075>,  <43.160461, 39.695053, 24.498180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641193, 39.738037, 23.923075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.706268, 40.121849, 24.015022>,  <42.745312, 40.352135, 24.070190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.706268, 40.121849, 24.015022>,  <42.641193, 39.738037, 23.923075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706268, 40.121849, 24.015022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126777, 0.210712, -0.969292,
		-0.978499, 0.186833, -0.087366,
		0.162686, 0.959528, 0.229868,
		42.755074, 40.409706, 24.083982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166862, 40.090305, 23.500137>,  <42.641193, 39.738037, 23.923075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166862, 40.090305, 23.500137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.476143, 40.321560, 23.604385>,  <42.661713, 40.460312, 23.666935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.476143, 40.321560, 23.604385>,  <42.166862, 40.090305, 23.500137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476143, 40.321560, 23.604385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002133, 0.408597, -0.912712,
		-0.634159, 0.706265, 0.314694,
		0.773200, 0.578134, 0.260622,
		42.708103, 40.494999, 23.682571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007774, 40.664436, 23.270153>,  <42.166862, 40.090305, 23.500137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007774, 40.664436, 23.270153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.400158, 40.716156, 23.328121>,  <42.635590, 40.747189, 23.362902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.400158, 40.716156, 23.328121>,  <42.007774, 40.664436, 23.270153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400158, 40.716156, 23.328121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108223, 0.255673, -0.960687,
		-0.161270, 0.958078, 0.236811,
		0.980959, 0.129302, 0.144918,
		42.694447, 40.754948, 23.371597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189117, 41.335258, 23.050880>,  <42.007774, 40.664436, 23.270153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189117, 41.335258, 23.050880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544430, 41.151539, 23.051298>,  <42.757618, 41.041306, 23.051548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544430, 41.151539, 23.051298>,  <42.189117, 41.335258, 23.050880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544430, 41.151539, 23.051298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170823, 0.328253, -0.929015,
		0.426356, 0.825404, 0.370040,
		0.888279, -0.459302, 0.001045,
		42.810913, 41.013748, 23.051611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747601, 41.760086, 22.755621>,  <42.189117, 41.335258, 23.050880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747601, 41.760086, 22.755621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882854, 41.383781, 22.745518>,  <42.964008, 41.158001, 22.739456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882854, 41.383781, 22.745518>,  <42.747601, 41.760086, 22.755621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882854, 41.383781, 22.745518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349269, 0.150370, -0.924878,
		0.873885, 0.303913, 0.379423,
		0.338136, -0.940758, -0.025259,
		42.984295, 41.101555, 22.737940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455555, 41.802929, 22.470299>,  <42.747601, 41.760086, 22.755621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455555, 41.802929, 22.470299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.348351, 41.426685, 22.386944>,  <43.284027, 41.200939, 22.336931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.348351, 41.426685, 22.386944>,  <43.455555, 41.802929, 22.470299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348351, 41.426685, 22.386944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197010, 0.158222, -0.967550,
		0.943056, -0.300373, 0.142903,
		-0.268015, -0.940607, -0.208389,
		43.267944, 41.144505, 22.324427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016235, 41.570290, 22.080975>,  <43.455555, 41.802929, 22.470299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016235, 41.570290, 22.080975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.714890, 41.322117, 21.993793>,  <43.534081, 41.173214, 21.941484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.714890, 41.322117, 21.993793>,  <44.016235, 41.570290, 22.080975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714890, 41.322117, 21.993793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251350, 0.034590, -0.967278,
		0.607668, -0.783498, 0.129887,
		-0.753367, -0.620431, -0.217951,
		43.488880, 41.135986, 21.928408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256893, 41.250420, 21.556898>,  <44.016235, 41.570290, 22.080975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256893, 41.250420, 21.556898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.861847, 41.194427, 21.528555>,  <43.624821, 41.160831, 21.511549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.861847, 41.194427, 21.528555>,  <44.256893, 41.250420, 21.556898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861847, 41.194427, 21.528555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049767, 0.148794, -0.987615,
		0.148794, -0.978910, -0.139985,
		0.987615, 0.139985, 0.070857,
		43.565563, 41.152431, 21.507298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206009, 40.996357, 20.920540>,  <44.256893, 41.250420, 21.556898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206009, 40.996357, 20.920540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.831219, 41.101677, 21.012415>,  <43.606346, 41.164871, 21.067539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.831219, 41.101677, 21.012415>,  <44.206009, 40.996357, 20.920540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831219, 41.101677, 21.012415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145055, 0.304911, -0.941270,
		-0.317874, -0.915260, -0.247499,
		-0.936972, 0.263304, 0.229686,
		43.550129, 41.180668, 21.081322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760681, 40.966820, 20.352587>,  <44.206009, 40.996357, 20.920540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760681, 40.966820, 20.352587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.518188, 41.220451, 20.544596>,  <43.372692, 41.372631, 20.659801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.518188, 41.220451, 20.544596>,  <43.760681, 40.966820, 20.352587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518188, 41.220451, 20.544596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278722, 0.395902, -0.874972,
		-0.744844, -0.664231, -0.063278,
		-0.606235, 0.634080, 0.480021,
		43.336319, 41.410675, 20.688602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047901, 40.891846, 20.119160>,  <43.760681, 40.966820, 20.352587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047901, 40.891846, 20.119160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.184441, 41.244736, 20.248873>,  <43.266365, 41.456470, 20.326700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.184441, 41.244736, 20.248873>,  <43.047901, 40.891846, 20.119160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184441, 41.244736, 20.248873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023985, 0.353067, -0.935291,
		-0.939630, 0.311483, 0.141679,
		0.341349, 0.882226, 0.324281,
		43.286846, 41.509403, 20.346157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415306, 40.690670, 19.923922>,  <43.047901, 40.891846, 20.119160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415306, 40.690670, 19.923922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.327538, 40.359104, 19.718102>,  <42.274876, 40.160164, 19.594610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.327538, 40.359104, 19.718102>,  <42.415306, 40.690670, 19.923922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327538, 40.359104, 19.718102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047681, -0.535883, 0.842945,
		-0.974464, 0.160427, 0.157108,
		-0.219423, -0.828910, -0.514550,
		42.261711, 40.110432, 19.563736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028183, 40.365017, 20.396549>,  <42.415306, 40.690670, 19.923922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028183, 40.365017, 20.396549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.110680, 40.080219, 20.128063>,  <42.160179, 39.909340, 19.966972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.110680, 40.080219, 20.128063>,  <42.028183, 40.365017, 20.396549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110680, 40.080219, 20.128063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061893, -0.675096, 0.735129,
		-0.976541, -0.193159, -0.095167,
		0.206243, -0.711994, -0.671214,
		42.172554, 39.866623, 19.926699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614487, 39.850552, 20.534376>,  <42.028183, 40.365017, 20.396549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614487, 39.850552, 20.534376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.908566, 39.672295, 20.330070>,  <42.085014, 39.565338, 20.207487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.908566, 39.672295, 20.330070>,  <41.614487, 39.850552, 20.534376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908566, 39.672295, 20.330070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084217, -0.687618, 0.721172,
		-0.672590, -0.573226, -0.468011,
		0.735208, -0.445639, -0.510760,
		42.129128, 39.538601, 20.176842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412994, 39.254261, 20.535917>,  <41.614487, 39.850552, 20.534376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412994, 39.254261, 20.535917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.808353, 39.240196, 20.476816>,  <42.045570, 39.231758, 20.441355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.808353, 39.240196, 20.476816>,  <41.412994, 39.254261, 20.535917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808353, 39.240196, 20.476816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076782, -0.723680, 0.685851,
		-0.131044, -0.689239, -0.712585,
		0.988399, -0.035163, -0.147755,
		42.104874, 39.229649, 20.432489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626148, 38.516586, 20.553993>,  <41.412994, 39.254261, 20.535917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626148, 38.516586, 20.553993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975216, 38.699135, 20.623480>,  <42.184654, 38.808666, 20.665173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975216, 38.699135, 20.623480>,  <41.626148, 38.516586, 20.553993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975216, 38.699135, 20.623480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289789, -0.770328, 0.567994,
		0.393037, -0.445327, -0.804491,
		0.872665, 0.456375, 0.173717,
		42.237015, 38.836048, 20.675594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131519, 38.050701, 20.379292>,  <41.626148, 38.516586, 20.553993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131519, 38.050701, 20.379292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.337055, 38.310413, 20.603579>,  <42.460377, 38.466240, 20.738152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.337055, 38.310413, 20.603579>,  <42.131519, 38.050701, 20.379292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337055, 38.310413, 20.603579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436900, -0.760546, 0.480300,
		0.738303, -0.001817, -0.674467,
		0.513836, 0.649281, 0.560720,
		42.491207, 38.505199, 20.771795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858379, 37.890957, 20.367001>,  <42.131519, 38.050701, 20.379292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858379, 37.890957, 20.367001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832687, 38.116634, 20.696257>,  <42.817272, 38.252041, 20.893810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832687, 38.116634, 20.696257>,  <42.858379, 37.890957, 20.367001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832687, 38.116634, 20.696257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393562, -0.743671, 0.540428,
		0.917052, 0.358667, -0.174281,
		-0.064226, 0.564191, 0.823142,
		42.813419, 38.285892, 20.943199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497032, 37.746338, 20.706038>,  <42.858379, 37.890957, 20.367001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497032, 37.746338, 20.706038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213902, 37.861557, 20.964033>,  <43.044022, 37.930691, 21.118830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213902, 37.861557, 20.964033>,  <43.497032, 37.746338, 20.706038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213902, 37.861557, 20.964033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322581, -0.680504, 0.657918,
		0.628431, 0.673752, 0.388759,
		-0.707825, 0.288050, 0.644989,
		43.001553, 37.947971, 21.157530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818886, 37.674301, 21.399826>,  <43.497032, 37.746338, 20.706038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818886, 37.674301, 21.399826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.433815, 37.700066, 21.504972>,  <43.202770, 37.715527, 21.568060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.433815, 37.700066, 21.504972>,  <43.818886, 37.674301, 21.399826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433815, 37.700066, 21.504972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190685, -0.527810, 0.827681,
		0.192056, 0.846916, 0.495830,
		-0.962680, 0.064414, 0.262864,
		43.145012, 37.719391, 21.583832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792702, 37.726292, 22.154417>,  <43.818886, 37.674301, 21.399826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792702, 37.726292, 22.154417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.425018, 37.601837, 22.057882>,  <43.204407, 37.527164, 21.999962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.425018, 37.601837, 22.057882>,  <43.792702, 37.726292, 22.154417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425018, 37.601837, 22.057882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050617, -0.514445, 0.856028,
		-0.390499, 0.799086, 0.457134,
		-0.919211, -0.311139, -0.241337,
		43.149254, 37.508495, 21.985481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408928, 37.753754, 22.793636>,  <43.792702, 37.726292, 22.154417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408928, 37.753754, 22.793636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213863, 37.494350, 22.559843>,  <43.096825, 37.338707, 22.419567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213863, 37.494350, 22.559843>,  <43.408928, 37.753754, 22.793636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213863, 37.494350, 22.559843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214454, -0.559991, 0.800262,
		-0.846281, 0.515605, 0.134013,
		-0.487665, -0.648508, -0.584483,
		43.067562, 37.299797, 22.384499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824810, 37.688999, 23.154671>,  <43.408928, 37.753754, 22.793636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824810, 37.688999, 23.154671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.862629, 37.370613, 22.915506>,  <42.885319, 37.179581, 22.772007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.862629, 37.370613, 22.915506>,  <42.824810, 37.688999, 23.154671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862629, 37.370613, 22.915506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270015, -0.598589, 0.754177,
		-0.958203, 0.090143, -0.271516,
		0.094543, -0.795968, -0.597910,
		42.890991, 37.131824, 22.736134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176895, 37.309555, 23.255762>,  <42.824810, 37.688999, 23.154671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176895, 37.309555, 23.255762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.471069, 37.089291, 23.097822>,  <42.647575, 36.957134, 23.003057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.471069, 37.089291, 23.097822>,  <42.176895, 37.309555, 23.255762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471069, 37.089291, 23.097822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213608, -0.741425, 0.636130,
		-0.643041, -0.383491, -0.662897,
		0.735439, -0.550658, -0.394850,
		42.691700, 36.924091, 22.979366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919247, 36.592251, 23.292860>,  <42.176895, 37.309555, 23.255762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919247, 36.592251, 23.292860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.306301, 36.528015, 23.215000>,  <42.538536, 36.489475, 23.168283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.306301, 36.528015, 23.215000>,  <41.919247, 36.592251, 23.292860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306301, 36.528015, 23.215000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010676, -0.796734, 0.604236,
		-0.252116, -0.582604, -0.772664,
		0.967638, -0.160587, -0.194649,
		42.596592, 36.479839, 23.156605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502895, 36.161533, 22.876875>,  <41.919247, 36.592251, 23.292860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502895, 36.161533, 22.876875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111958, 36.104687, 22.814140>,  <40.877396, 36.070580, 22.776499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111958, 36.104687, 22.814140>,  <41.502895, 36.161533, 22.876875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111958, 36.104687, 22.814140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105948, 0.312984, -0.943831,
		0.183219, -0.939066, -0.290837,
		-0.977347, -0.142114, -0.156836,
		40.818752, 36.062054, 22.767090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466961, 35.987152, 22.155462>,  <41.502895, 36.161533, 22.876875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466961, 35.987152, 22.155462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076424, 36.059223, 22.203278>,  <40.842102, 36.102467, 22.231966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076424, 36.059223, 22.203278>,  <41.466961, 35.987152, 22.155462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076424, 36.059223, 22.203278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055001, 0.327706, -0.943178,
		-0.209113, -0.927440, -0.310043,
		-0.976343, 0.180178, 0.119538,
		40.783520, 36.113277, 22.239140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056911, 35.779152, 21.605503>,  <41.466961, 35.987152, 22.155462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056911, 35.779152, 21.605503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835560, 36.076370, 21.756052>,  <40.702751, 36.254700, 21.846382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835560, 36.076370, 21.756052>,  <41.056911, 35.779152, 21.605503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835560, 36.076370, 21.756052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151415, 0.354596, -0.922678,
		-0.819053, -0.567577, -0.083717,
		-0.553377, 0.743047, 0.376372,
		40.669548, 36.299286, 21.868963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532276, 35.767521, 21.243893>,  <41.056911, 35.779152, 21.605503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532276, 35.767521, 21.243893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525337, 36.144806, 21.376587>,  <40.521175, 36.371178, 21.456203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525337, 36.144806, 21.376587>,  <40.532276, 35.767521, 21.243893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525337, 36.144806, 21.376587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124955, 0.327138, -0.936678,
		-0.992011, -0.057697, 0.112186,
		-0.017343, 0.943213, 0.331734,
		40.520134, 36.427769, 21.476107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049179, 36.119652, 20.829952>,  <40.532276, 35.767521, 21.243893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049179, 36.119652, 20.829952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256851, 36.424606, 20.984470>,  <40.381454, 36.607578, 21.077181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256851, 36.424606, 20.984470>,  <40.049179, 36.119652, 20.829952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256851, 36.424606, 20.984470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076613, 0.491679, -0.867400,
		-0.851225, 0.420739, 0.313677,
		0.519178, 0.762384, 0.386296,
		40.412605, 36.653320, 21.100359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678516, 36.677509, 20.478584>,  <40.049179, 36.119652, 20.829952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678516, 36.677509, 20.478584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.021568, 36.835743, 20.610027>,  <40.227402, 36.930683, 20.688892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.021568, 36.835743, 20.610027>,  <39.678516, 36.677509, 20.478584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021568, 36.835743, 20.610027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128797, 0.453396, -0.881955,
		-0.497875, 0.798716, 0.337896,
		0.857632, 0.395583, 0.328607,
		40.278858, 36.954418, 20.708609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596539, 37.367432, 20.626263>,  <39.678516, 36.677509, 20.478584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596539, 37.367432, 20.626263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.989285, 37.334576, 20.557917>,  <40.224934, 37.314861, 20.516909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.989285, 37.334576, 20.557917>,  <39.596539, 37.367432, 20.626263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989285, 37.334576, 20.557917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095747, 0.563026, -0.820874,
		0.163631, 0.822347, 0.544950,
		0.981864, -0.082143, -0.170866,
		40.283844, 37.309933, 20.506657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063019, 37.825058, 20.605690>,  <39.596539, 37.367432, 20.626263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063019, 37.825058, 20.605690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723019, 37.966850, 20.449827>,  <38.519016, 38.051926, 20.356310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723019, 37.966850, 20.449827>,  <39.063019, 37.825058, 20.605690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723019, 37.966850, 20.449827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526770, -0.568998, 0.631470,
		0.002132, 0.742013, 0.670382,
		-0.850005, 0.354484, -0.389657,
		38.468018, 38.073196, 20.332930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669346, 38.112846, 21.113569>,  <39.063019, 37.825058, 20.605690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669346, 38.112846, 21.113569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415028, 38.002575, 20.825190>,  <38.262436, 37.936413, 20.652163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415028, 38.002575, 20.825190>,  <38.669346, 38.112846, 21.113569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415028, 38.002575, 20.825190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646562, -0.319937, 0.692530,
		-0.421574, 0.906445, 0.025170,
		-0.635793, -0.275679, -0.720949,
		38.224289, 37.919872, 20.608904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077450, 38.169643, 21.544573>,  <38.669346, 38.112846, 21.113569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077450, 38.169643, 21.544573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.950329, 37.969685, 21.222303>,  <37.874058, 37.849709, 21.028942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.950329, 37.969685, 21.222303>,  <38.077450, 38.169643, 21.544573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950329, 37.969685, 21.222303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623902, -0.529595, 0.574695,
		-0.713968, 0.685299, -0.143581,
		-0.317799, -0.499894, -0.805673,
		37.854988, 37.819717, 20.980602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363155, 37.984215, 21.612658>,  <38.077450, 38.169643, 21.544573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363155, 37.984215, 21.612658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499512, 37.716553, 21.348530>,  <37.581326, 37.555954, 21.190054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499512, 37.716553, 21.348530>,  <37.363155, 37.984215, 21.612658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499512, 37.716553, 21.348530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569350, -0.705879, 0.421398,
		-0.748087, 0.232302, -0.621613,
		0.340892, -0.669157, -0.660319,
		37.601780, 37.515804, 21.150434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790798, 37.749653, 21.258898>,  <37.363155, 37.984215, 21.612658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790798, 37.749653, 21.258898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092766, 37.487465, 21.267454>,  <37.273945, 37.330151, 21.272589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092766, 37.487465, 21.267454>,  <36.790798, 37.749653, 21.258898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092766, 37.487465, 21.267454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625850, -0.710283, 0.322195,
		-0.195996, -0.256617, -0.946432,
		0.754915, -0.655473, 0.021391,
		37.319241, 37.290821, 21.273870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449356, 37.083672, 21.353052>,  <36.790798, 37.749653, 21.258898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449356, 37.083672, 21.353052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838833, 37.005341, 21.399649>,  <37.072521, 36.958344, 21.427607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838833, 37.005341, 21.399649>,  <36.449356, 37.083672, 21.353052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838833, 37.005341, 21.399649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225065, -0.746832, 0.625770,
		-0.035544, -0.635527, -0.771260,
		0.973695, -0.195826, 0.116489,
		37.130943, 36.946594, 21.434595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498619, 36.309002, 21.276751>,  <36.449356, 37.083672, 21.353052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498619, 36.309002, 21.276751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823341, 36.438869, 21.470890>,  <37.018173, 36.516788, 21.587374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823341, 36.438869, 21.470890>,  <36.498619, 36.309002, 21.276751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823341, 36.438869, 21.470890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112341, -0.728816, 0.675431,
		0.573021, -0.602843, -0.555182,
		0.811804, 0.324667, 0.485351,
		37.066883, 36.536270, 21.616495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.678093, 42.907478, 20.067356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009045, 42.757114, 20.234274>,  <41.207615, 42.666897, 20.334425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009045, 42.757114, 20.234274>,  <40.678093, 42.907478, 20.067356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009045, 42.757114, 20.234274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526812, -0.261851, 0.808643,
		-0.194704, -0.888892, -0.414683,
		0.827381, -0.375906, 0.417295,
		41.257259, 42.644341, 20.359461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560097, 42.170605, 20.280125>,  <40.678093, 42.907478, 20.067356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560097, 42.170605, 20.280125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.854866, 42.295525, 20.519928>,  <41.031727, 42.370476, 20.663811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.854866, 42.295525, 20.519928>,  <40.560097, 42.170605, 20.280125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854866, 42.295525, 20.519928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451770, -0.432188, 0.780460,
		0.502838, -0.845980, -0.177402,
		0.736925, 0.312300, 0.599509,
		41.075943, 42.389214, 20.699781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581314, 41.611881, 20.679594>,  <40.560097, 42.170605, 20.280125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581314, 41.611881, 20.679594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.749634, 41.911270, 20.884619>,  <40.850624, 42.090904, 21.007633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.749634, 41.911270, 20.884619>,  <40.581314, 41.611881, 20.679594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749634, 41.911270, 20.884619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451482, -0.317278, 0.833966,
		0.786823, -0.582345, 0.204410,
		0.420801, 0.748471, 0.512560,
		40.875874, 42.135811, 21.038387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819050, 41.319881, 21.265112>,  <40.581314, 41.611881, 20.679594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819050, 41.319881, 21.265112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740463, 41.696411, 21.374884>,  <40.693310, 41.922329, 21.440746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740463, 41.696411, 21.374884>,  <40.819050, 41.319881, 21.265112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740463, 41.696411, 21.374884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149421, -0.305357, 0.940441,
		0.969058, 0.143764, 0.200648,
		-0.196471, 0.941323, 0.274427,
		40.681522, 41.978809, 21.457212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247692, 41.333126, 21.824722>,  <40.819050, 41.319881, 21.265112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247692, 41.333126, 21.824722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.002350, 41.647923, 21.851385>,  <40.855145, 41.836800, 21.867384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.002350, 41.647923, 21.851385>,  <41.247692, 41.333126, 21.824722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002350, 41.647923, 21.851385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363784, -0.356417, 0.860598,
		0.701039, 0.503604, 0.504904,
		-0.613356, 0.786988, 0.066659,
		40.818344, 41.884018, 21.871384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164661, 41.432297, 22.496832>,  <41.247692, 41.333126, 21.824722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164661, 41.432297, 22.496832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873497, 41.682182, 22.383787>,  <40.698799, 41.832115, 22.315960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873497, 41.682182, 22.383787>,  <41.164661, 41.432297, 22.496832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873497, 41.682182, 22.383787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502329, -0.205333, 0.839943,
		0.466696, 0.753372, 0.463277,
		-0.727915, 0.624716, -0.282612,
		40.655121, 41.869598, 22.299004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078888, 41.838638, 23.056587>,  <41.164661, 41.432297, 22.496832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078888, 41.838638, 23.056587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740067, 41.817238, 22.845062>,  <40.536774, 41.804398, 22.718147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740067, 41.817238, 22.845062>,  <41.078888, 41.838638, 23.056587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740067, 41.817238, 22.845062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506350, -0.221250, 0.833461,
		-0.161592, 0.973748, 0.160319,
		-0.847052, -0.053504, -0.528810,
		40.485950, 41.801186, 22.686419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483898, 42.284126, 23.446117>,  <41.078888, 41.838638, 23.056587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483898, 42.284126, 23.446117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.309002, 42.033840, 23.187723>,  <40.204063, 41.883667, 23.032686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.309002, 42.033840, 23.187723>,  <40.483898, 42.284126, 23.446117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309002, 42.033840, 23.187723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579287, -0.353485, 0.734490,
		-0.687929, 0.695361, -0.207911,
		-0.437242, -0.625716, -0.645986,
		40.177830, 41.846127, 22.993927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777912, 42.436680, 23.500891>,  <40.483898, 42.284126, 23.446117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777912, 42.436680, 23.500891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807232, 42.065933, 23.353624>,  <39.824825, 41.843487, 23.265265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807232, 42.065933, 23.353624>,  <39.777912, 42.436680, 23.500891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807232, 42.065933, 23.353624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615218, -0.332573, 0.714773,
		-0.784942, 0.174112, -0.594602,
		0.073298, -0.926865, -0.368168,
		39.829220, 41.787872, 23.243174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204609, 42.206738, 23.780024>,  <39.777912, 42.436680, 23.500891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204609, 42.206738, 23.780024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359451, 41.867813, 23.634577>,  <39.452358, 41.664459, 23.547308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359451, 41.867813, 23.634577>,  <39.204609, 42.206738, 23.780024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359451, 41.867813, 23.634577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588433, -0.530640, 0.610056,
		-0.709855, -0.022192, -0.703998,
		0.387108, -0.847307, -0.363618,
		39.475582, 41.613621, 23.525492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659958, 41.787518, 23.690193>,  <39.204609, 42.206738, 23.780024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659958, 41.787518, 23.690193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979767, 41.550026, 23.726532>,  <39.171650, 41.407532, 23.748335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979767, 41.550026, 23.726532>,  <38.659958, 41.787518, 23.690193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979767, 41.550026, 23.726532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517024, -0.603312, 0.607207,
		-0.305709, -0.532444, -0.789333,
		0.799518, -0.593732, 0.090848,
		39.219624, 41.371906, 23.753786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445946, 40.944946, 23.672918>,  <38.659958, 41.787518, 23.690193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445946, 40.944946, 23.672918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794571, 40.993587, 23.862904>,  <39.003746, 41.022774, 23.976894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794571, 40.993587, 23.862904>,  <38.445946, 40.944946, 23.672918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794571, 40.993587, 23.862904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378442, -0.449033, 0.809414,
		0.311704, -0.885201, -0.345339,
		0.871563, 0.121607, 0.474963,
		39.056042, 41.030071, 24.005392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980259, 40.517231, 23.163593>,  <38.445946, 40.944946, 23.672918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980259, 40.517231, 23.163593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606258, 40.658985, 23.158096>,  <37.381859, 40.744038, 23.154799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606258, 40.658985, 23.158096>,  <37.980259, 40.517231, 23.163593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606258, 40.658985, 23.158096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271459, 0.690182, -0.670790,
		-0.228235, -0.630917, -0.741521,
		-0.934997, 0.354390, -0.013744,
		37.325760, 40.765301, 23.153973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799858, 40.610405, 22.473673>,  <37.980259, 40.517231, 23.163593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799858, 40.610405, 22.473673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.552582, 40.856758, 22.669033>,  <37.404217, 41.004570, 22.786249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.552582, 40.856758, 22.669033>,  <37.799858, 40.610405, 22.473673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552582, 40.856758, 22.669033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105047, 0.680509, -0.725171,
		-0.778978, -0.396988, -0.485380,
		-0.618190, 0.615880, 0.488399,
		37.367126, 41.041523, 22.815554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270412, 40.731621, 22.035461>,  <37.799858, 40.610405, 22.473673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270412, 40.731621, 22.035461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.285114, 41.037743, 22.292507>,  <37.293934, 41.221416, 22.446735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.285114, 41.037743, 22.292507>,  <37.270412, 40.731621, 22.035461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285114, 41.037743, 22.292507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058833, 0.643590, -0.763106,
		-0.997591, -0.009761, 0.068678,
		0.036752, 0.765308, 0.642614,
		37.296139, 41.267334, 22.485291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791897, 41.191883, 21.739388>,  <37.270412, 40.731621, 22.035461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791897, 41.191883, 21.739388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040768, 41.381882, 21.988314>,  <37.190090, 41.495880, 22.137669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040768, 41.381882, 21.988314>,  <36.791897, 41.191883, 21.739388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040768, 41.381882, 21.988314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132099, 0.719813, -0.681482,
		-0.771653, 0.506209, 0.385103,
		0.622175, 0.474996, 0.622316,
		37.227421, 41.524380, 22.175009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621731, 41.829151, 21.764446>,  <36.791897, 41.191883, 21.739388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621731, 41.829151, 21.764446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004238, 41.852844, 21.879021>,  <37.233742, 41.867062, 21.947765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004238, 41.852844, 21.879021>,  <36.621731, 41.829151, 21.764446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004238, 41.852844, 21.879021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151263, 0.738010, -0.657617,
		-0.250348, 0.672184, 0.696774,
		0.956266, 0.059237, 0.286435,
		37.291119, 41.870617, 21.964951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744286, 42.532597, 21.695639>,  <36.621731, 41.829151, 21.764446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744286, 42.532597, 21.695639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117706, 42.391800, 21.722706>,  <37.341759, 42.307320, 21.738947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117706, 42.391800, 21.722706>,  <36.744286, 42.532597, 21.695639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117706, 42.391800, 21.722706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297335, 0.655048, -0.694625,
		0.200177, 0.668590, 0.716182,
		0.933553, -0.351994, 0.067670,
		37.397774, 42.286201, 21.743006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223660, 43.139568, 21.557089>,  <36.744286, 42.532597, 21.695639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223660, 43.139568, 21.557089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435600, 42.807899, 21.485844>,  <37.562763, 42.608898, 21.443096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435600, 42.807899, 21.485844>,  <37.223660, 43.139568, 21.557089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435600, 42.807899, 21.485844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476346, 0.464725, -0.746408,
		0.701679, 0.310640, 0.641210,
		0.529851, -0.829176, -0.178115,
		37.594555, 42.559147, 21.432409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851776, 43.340843, 21.372530>,  <37.223660, 43.139568, 21.557089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851776, 43.340843, 21.372530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.840897, 42.963539, 21.240160>,  <37.834370, 42.737156, 21.160738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.840897, 42.963539, 21.240160>,  <37.851776, 43.340843, 21.372530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840897, 42.963539, 21.240160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705047, 0.216578, -0.675279,
		0.708638, -0.251688, 0.659155,
		-0.027201, -0.943264, -0.330927,
		37.832737, 42.680561, 21.140882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507385, 43.194180, 21.200184>,  <37.851776, 43.340843, 21.372530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507385, 43.194180, 21.200184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308228, 42.933044, 20.971832>,  <38.188732, 42.776363, 20.834822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308228, 42.933044, 20.971832>,  <38.507385, 43.194180, 21.200184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308228, 42.933044, 20.971832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783422, -0.056256, -0.618938,
		0.371951, -0.755406, 0.539457,
		-0.497897, -0.652838, -0.570877,
		38.158859, 42.737194, 20.800570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968239, 42.623024, 21.003561>,  <38.507385, 43.194180, 21.200184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968239, 42.623024, 21.003561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689060, 42.631245, 20.717220>,  <38.521553, 42.636177, 20.545416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689060, 42.631245, 20.717220>,  <38.968239, 42.623024, 21.003561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689060, 42.631245, 20.717220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707929, -0.131207, -0.693990,
		-0.108189, -0.991142, 0.077025,
		-0.697948, 0.020554, -0.715853,
		38.479675, 42.637409, 20.502464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131977, 42.118092, 20.464779>,  <38.968239, 42.623024, 21.003561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131977, 42.118092, 20.464779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.854805, 42.328659, 20.267710>,  <38.688499, 42.454998, 20.149469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.854805, 42.328659, 20.267710>,  <39.131977, 42.118092, 20.464779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854805, 42.328659, 20.267710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514872, -0.117060, -0.849237,
		-0.504726, -0.842129, -0.189923,
		-0.692935, 0.526418, -0.492672,
		38.646923, 42.486584, 20.119907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077919, 41.848507, 19.877542>,  <39.131977, 42.118092, 20.464779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077919, 41.848507, 19.877542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918522, 42.205635, 19.793562>,  <38.822884, 42.419910, 19.743174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918522, 42.205635, 19.793562>,  <39.077919, 41.848507, 19.877542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918522, 42.205635, 19.793562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328243, -0.074920, -0.941617,
		-0.856423, -0.444141, -0.263206,
		-0.398492, 0.892819, -0.209949,
		38.798973, 42.473480, 19.730577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573875, 41.724537, 19.319506>,  <39.077919, 41.848507, 19.877542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573875, 41.724537, 19.319506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679054, 42.110451, 19.316643>,  <38.742161, 42.341999, 19.314926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679054, 42.110451, 19.316643>,  <38.573875, 41.724537, 19.319506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679054, 42.110451, 19.316643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240689, -0.072777, -0.967870,
		-0.934307, 0.252774, -0.251349,
		0.262944, 0.964785, -0.007156,
		38.757938, 42.399887, 19.314495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272175, 41.344769, 19.225595>,  <38.573875, 41.724537, 19.319506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272175, 41.344769, 19.225595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.215111, 41.077179, 18.933809>,  <39.180870, 40.916626, 18.758738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.215111, 41.077179, 18.933809>,  <39.272175, 41.344769, 19.225595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215111, 41.077179, 18.933809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238267, -0.692117, 0.681324,
		-0.960665, 0.271007, -0.060655,
		-0.142663, -0.668976, -0.729464,
		39.172314, 40.876488, 18.714970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641361, 40.911621, 19.470516>,  <39.272175, 41.344769, 19.225595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641361, 40.911621, 19.470516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.847488, 40.694027, 19.205631>,  <38.971165, 40.563469, 19.046700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.847488, 40.694027, 19.205631>,  <38.641361, 40.911621, 19.470516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847488, 40.694027, 19.205631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282318, -0.837335, 0.468153,
		-0.809164, -0.054292, -0.585070,
		0.515316, -0.543988, -0.662214,
		39.002083, 40.530830, 19.006968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128887, 40.387859, 19.265144>,  <38.641361, 40.911621, 19.470516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128887, 40.387859, 19.265144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497822, 40.264183, 19.172461>,  <38.719185, 40.189976, 19.116850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497822, 40.264183, 19.172461>,  <38.128887, 40.387859, 19.265144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497822, 40.264183, 19.172461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229204, -0.920618, 0.316115,
		-0.311055, -0.238457, -0.919991,
		0.922340, -0.309195, -0.231707,
		38.774525, 40.171425, 19.102949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967606, 39.769981, 19.002254>,  <38.128887, 40.387859, 19.265144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967606, 39.769981, 19.002254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363087, 39.738110, 19.053026>,  <38.600376, 39.718987, 19.083488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363087, 39.738110, 19.053026>,  <37.967606, 39.769981, 19.002254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363087, 39.738110, 19.053026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124817, -0.906576, 0.403163,
		0.082949, -0.414452, -0.906283,
		0.988706, -0.079677, 0.126930,
		38.659698, 39.714207, 19.091105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219616, 39.118820, 18.723324>,  <37.967606, 39.769981, 19.002254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219616, 39.118820, 18.723324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509632, 39.213699, 18.981953>,  <38.683643, 39.270626, 19.137131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509632, 39.213699, 18.981953>,  <38.219616, 39.118820, 18.723324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509632, 39.213699, 18.981953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144275, -0.865679, 0.479359,
		0.673425, -0.440839, -0.593431,
		0.725041, 0.237195, 0.646571,
		38.727146, 39.284859, 19.175924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651321, 38.473644, 18.811264>,  <38.219616, 39.118820, 18.723324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651321, 38.473644, 18.811264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715923, 38.696632, 19.136997>,  <38.754684, 38.830425, 19.332438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715923, 38.696632, 19.136997>,  <38.651321, 38.473644, 18.811264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715923, 38.696632, 19.136997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173416, -0.796294, 0.579519,
		0.971516, -0.234813, -0.031930,
		0.161505, 0.557475, 0.814333,
		38.764374, 38.863876, 19.381296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044220, 38.058441, 19.236317>,  <38.651321, 38.473644, 18.811264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044220, 38.058441, 19.236317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882496, 38.338348, 19.471893>,  <38.785461, 38.506294, 19.613239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882496, 38.338348, 19.471893>,  <39.044220, 38.058441, 19.236317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882496, 38.338348, 19.471893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329956, -0.712154, 0.619650,
		0.853030, 0.056208, 0.518826,
		-0.404313, 0.699770, 0.588943,
		38.761204, 38.548279, 19.648577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103256, 37.816296, 19.859900>,  <39.044220, 38.058441, 19.236317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103256, 37.816296, 19.859900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.830914, 38.094505, 19.951710>,  <38.667507, 38.261429, 20.006796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.830914, 38.094505, 19.951710>,  <39.103256, 37.816296, 19.859900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830914, 38.094505, 19.951710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446260, -0.642441, 0.622993,
		0.580762, 0.321742, 0.747795,
		-0.680858, 0.695522, 0.229525,
		38.626656, 38.303162, 20.020567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766270, 38.020870, 20.286463>,  <39.103256, 37.816296, 19.859900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766270, 38.020870, 20.286463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085014, 37.797523, 20.194176>,  <40.276260, 37.663513, 20.138803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085014, 37.797523, 20.194176>,  <39.766270, 38.020870, 20.286463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085014, 37.797523, 20.194176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146532, 0.549103, -0.822809,
		0.586118, 0.621860, 0.519380,
		0.796865, -0.558369, -0.230717,
		40.324074, 37.630013, 20.124960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275627, 38.483444, 20.003918>,  <39.766270, 38.020870, 20.286463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275627, 38.483444, 20.003918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.407326, 38.132866, 19.863382>,  <40.486343, 37.922520, 19.779060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.407326, 38.132866, 19.863382>,  <40.275627, 38.483444, 20.003918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407326, 38.132866, 19.863382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162447, 0.419113, -0.893283,
		0.930165, 0.237036, 0.280368,
		0.329246, -0.876446, -0.351339,
		40.506100, 37.869930, 19.757980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927937, 38.547482, 19.623587>,  <40.275627, 38.483444, 20.003918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927937, 38.547482, 19.623587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.780128, 38.207035, 19.474422>,  <40.691444, 38.002769, 19.384924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.780128, 38.207035, 19.474422>,  <40.927937, 38.547482, 19.623587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780128, 38.207035, 19.474422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198803, 0.319609, -0.926460,
		0.907707, -0.416481, 0.051103,
		-0.369520, -0.851114, -0.372909,
		40.669273, 37.951702, 19.362551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369045, 38.446980, 19.151699>,  <40.927937, 38.547482, 19.623587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369045, 38.446980, 19.151699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066204, 38.210526, 19.040447>,  <40.884499, 38.068653, 18.973696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066204, 38.210526, 19.040447>,  <41.369045, 38.446980, 19.151699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066204, 38.210526, 19.040447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165514, 0.238279, -0.956989,
		0.631986, -0.770569, -0.082559,
		-0.757099, -0.591139, -0.278129,
		40.839073, 38.033184, 18.957008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661446, 37.943985, 18.679657>,  <41.369045, 38.446980, 19.151699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661446, 37.943985, 18.679657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266232, 37.939499, 18.618134>,  <41.029102, 37.936806, 18.581219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266232, 37.939499, 18.618134>,  <41.661446, 37.943985, 18.679657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266232, 37.939499, 18.618134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152160, 0.091470, -0.984114,
		0.025105, -0.995745, -0.088670,
		-0.988037, -0.011214, -0.153809,
		40.969822, 37.936134, 18.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532761, 37.546741, 18.118509>,  <41.661446, 37.943985, 18.679657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532761, 37.546741, 18.118509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.185272, 37.744862, 18.119312>,  <40.976780, 37.863731, 18.119795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.185272, 37.744862, 18.119312>,  <41.532761, 37.546741, 18.118509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185272, 37.744862, 18.119312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034607, 0.064745, -0.997301,
		-0.494092, -0.866307, -0.073387,
		-0.868721, 0.495298, 0.002009,
		40.924656, 37.893452, 18.119915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084591, 37.314079, 17.566591>,  <41.532761, 37.546741, 18.118509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084591, 37.314079, 17.566591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931137, 37.679573, 17.620132>,  <40.839066, 37.898869, 17.652258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931137, 37.679573, 17.620132>,  <41.084591, 37.314079, 17.566591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931137, 37.679573, 17.620132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031200, 0.132037, -0.990754,
		-0.922959, -0.384262, -0.022145,
		-0.383632, 0.913734, 0.133854,
		40.816048, 37.953693, 17.660288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651073, 37.447113, 16.983423>,  <41.084591, 37.314079, 17.566591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651073, 37.447113, 16.983423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681999, 37.817429, 17.131443>,  <40.700554, 38.039619, 17.220255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681999, 37.817429, 17.131443>,  <40.651073, 37.447113, 16.983423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681999, 37.817429, 17.131443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126523, 0.359050, -0.924703,
		-0.988946, 0.118312, -0.089374,
		0.077313, 0.925789, 0.370050,
		40.705193, 38.095165, 17.242458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196110, 37.876400, 16.527786>,  <40.651073, 37.447113, 16.983423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196110, 37.876400, 16.527786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465000, 38.118275, 16.698648>,  <40.626335, 38.263401, 16.801165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465000, 38.118275, 16.698648>,  <40.196110, 37.876400, 16.527786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465000, 38.118275, 16.698648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309038, 0.295107, -0.904106,
		-0.672757, 0.739774, 0.011509,
		0.672231, 0.604686, 0.427154,
		40.666668, 38.299679, 16.826794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.991505, 30.850323, 31.105684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107933, 31.178280, 31.302885>,  <37.177792, 31.375055, 31.421206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107933, 31.178280, 31.302885>,  <36.991505, 30.850323, 31.105684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107933, 31.178280, 31.302885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196944, 0.555628, -0.807769,
		-0.936210, 0.138027, 0.323202,
		0.291074, 0.819894, 0.493001,
		37.195255, 31.424248, 31.450785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428596, 31.319040, 31.058346>,  <36.991505, 30.850323, 31.105684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428596, 31.319040, 31.058346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809410, 31.438568, 31.084717>,  <37.037899, 31.510284, 31.100540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809410, 31.438568, 31.084717>,  <36.428596, 31.319040, 31.058346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809410, 31.438568, 31.084717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070050, 0.422549, -0.903629,
		-0.297879, 0.855664, 0.423211,
		0.952030, 0.298818, 0.065929,
		37.095020, 31.528214, 31.104496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440876, 32.069489, 30.888231>,  <36.428596, 31.319040, 31.058346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440876, 32.069489, 30.888231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815128, 31.935329, 30.844217>,  <37.039680, 31.854834, 30.817808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815128, 31.935329, 30.844217>,  <36.440876, 32.069489, 30.888231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815128, 31.935329, 30.844217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084551, 0.515595, -0.852650,
		0.342715, 0.788459, 0.510764,
		0.935627, -0.335402, -0.110037,
		37.095818, 31.834709, 30.811207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937000, 32.689922, 30.778688>,  <36.440876, 32.069489, 30.888231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937000, 32.689922, 30.778688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138775, 32.378277, 30.629810>,  <37.259838, 32.191292, 30.540483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138775, 32.378277, 30.629810>,  <36.937000, 32.689922, 30.778688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138775, 32.378277, 30.629810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162737, 0.509116, -0.845173,
		0.847974, 0.365768, 0.383607,
		0.504438, -0.779112, -0.372193,
		37.290108, 32.144543, 30.518152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585701, 33.013092, 30.520374>,  <36.937000, 32.689922, 30.778688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585701, 33.013092, 30.520374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541016, 32.663712, 30.330803>,  <37.514206, 32.454082, 30.217060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541016, 32.663712, 30.330803>,  <37.585701, 33.013092, 30.520374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541016, 32.663712, 30.330803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380973, 0.402829, -0.832219,
		0.917812, -0.273523, 0.287760,
		-0.111713, -0.873450, -0.473927,
		37.507504, 32.401676, 30.188625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349369, 32.853668, 30.166298>,  <37.585701, 33.013092, 30.520374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349369, 32.853668, 30.166298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052166, 32.674629, 29.967262>,  <37.873844, 32.567207, 29.847841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052166, 32.674629, 29.967262>,  <38.349369, 32.853668, 30.166298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052166, 32.674629, 29.967262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365133, 0.351991, -0.861847,
		0.560905, -0.822047, -0.098102,
		-0.743010, -0.447594, -0.497590,
		37.829262, 32.540352, 29.817986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706036, 32.481701, 29.618359>,  <38.349369, 32.853668, 30.166298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706036, 32.481701, 29.618359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321560, 32.542278, 29.526119>,  <38.090874, 32.578625, 29.470776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321560, 32.542278, 29.526119>,  <38.706036, 32.481701, 29.618359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321560, 32.542278, 29.526119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267718, 0.310226, -0.912188,
		-0.066608, -0.938523, -0.338731,
		-0.961192, 0.151444, -0.230596,
		38.033203, 32.587711, 29.456940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608940, 32.199215, 28.992414>,  <38.706036, 32.481701, 29.618359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608940, 32.199215, 28.992414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281845, 32.429188, 29.003471>,  <38.085590, 32.567169, 29.010105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281845, 32.429188, 29.003471>,  <38.608940, 32.199215, 28.992414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281845, 32.429188, 29.003471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235650, 0.378210, -0.895224,
		-0.525145, -0.725543, -0.444758,
		-0.817736, 0.574930, 0.027641,
		38.036526, 32.601665, 29.011765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396484, 32.032814, 28.344839>,  <38.608940, 32.199215, 28.992414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396484, 32.032814, 28.344839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.185707, 32.351894, 28.462141>,  <38.059242, 32.543343, 28.532522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.185707, 32.351894, 28.462141>,  <38.396484, 32.032814, 28.344839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185707, 32.351894, 28.462141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189483, 0.226097, -0.955498,
		-0.828509, -0.559060, 0.032011,
		-0.526943, 0.797704, 0.293255,
		38.027626, 32.591206, 28.550117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895657, 32.095676, 27.849854>,  <38.396484, 32.032814, 28.344839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895657, 32.095676, 27.849854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.926533, 32.452084, 28.028793>,  <37.945057, 32.665928, 28.136158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.926533, 32.452084, 28.028793>,  <37.895657, 32.095676, 27.849854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926533, 32.452084, 28.028793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051233, 0.444552, -0.894287,
		-0.995699, 0.091947, -0.011336,
		0.077187, 0.891022, 0.447351,
		37.949688, 32.719391, 28.162998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532650, 32.554337, 27.473173>,  <37.895657, 32.095676, 27.849854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532650, 32.554337, 27.473173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777058, 32.786976, 27.687984>,  <37.923702, 32.926559, 27.816872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777058, 32.786976, 27.687984>,  <37.532650, 32.554337, 27.473173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777058, 32.786976, 27.687984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125628, 0.598557, -0.791168,
		-0.781587, 0.550881, 0.292662,
		0.611015, 0.581601, 0.537030,
		37.960361, 32.961456, 27.849094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238396, 33.212593, 27.304220>,  <37.532650, 32.554337, 27.473173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238396, 33.212593, 27.304220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623821, 33.234276, 27.408987>,  <37.855076, 33.247284, 27.471848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623821, 33.234276, 27.408987>,  <37.238396, 33.212593, 27.304220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623821, 33.234276, 27.408987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184986, 0.572213, -0.798970,
		-0.193182, 0.818312, 0.541338,
		0.963567, 0.054207, 0.261918,
		37.912891, 33.250538, 27.487562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158215, 34.004467, 27.594770>,  <37.238396, 33.212593, 27.304220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158215, 34.004467, 27.594770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838200, 34.090557, 27.370766>,  <36.646191, 34.142212, 27.236362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838200, 34.090557, 27.370766>,  <37.158215, 34.004467, 27.594770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838200, 34.090557, 27.370766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596546, -0.384607, 0.704422,
		-0.063774, 0.897639, 0.436094,
		-0.800041, 0.215226, -0.560011,
		36.598186, 34.155125, 27.202763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644451, 34.442509, 27.953779>,  <37.158215, 34.004467, 27.594770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644451, 34.442509, 27.953779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447250, 34.249222, 27.664379>,  <36.328930, 34.133251, 27.490740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447250, 34.249222, 27.664379>,  <36.644451, 34.442509, 27.953779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447250, 34.249222, 27.664379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535425, -0.486951, 0.690072,
		-0.685764, 0.727585, -0.018661,
		-0.492999, -0.483218, -0.723500,
		36.299351, 34.104256, 27.447329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931992, 34.550102, 28.160025>,  <36.644451, 34.442509, 27.953779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931992, 34.550102, 28.160025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925877, 34.239037, 27.908625>,  <35.922207, 34.052399, 27.757784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925877, 34.239037, 27.908625>,  <35.931992, 34.550102, 28.160025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925877, 34.239037, 27.908625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667384, -0.460125, 0.585563,
		-0.744557, 0.428405, -0.511961,
		-0.015292, -0.777660, -0.628500,
		35.921288, 34.005737, 27.720076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263569, 34.301804, 28.132900>,  <35.931992, 34.550102, 28.160025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263569, 34.301804, 28.132900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430149, 34.003166, 27.925375>,  <35.530098, 33.823982, 27.800859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430149, 34.003166, 27.925375>,  <35.263569, 34.301804, 28.132900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430149, 34.003166, 27.925375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608009, -0.652971, 0.451612,
		-0.675942, 0.127371, -0.725864,
		0.416446, -0.746596, -0.518813,
		35.555084, 33.779186, 27.769732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797451, 33.971260, 27.614639>,  <35.263569, 34.301804, 28.132900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797451, 33.971260, 27.614639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070129, 33.708878, 27.744259>,  <35.233738, 33.551449, 27.822031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070129, 33.708878, 27.744259>,  <34.797451, 33.971260, 27.614639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070129, 33.708878, 27.744259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717352, -0.512168, 0.472323,
		-0.143857, -0.554439, -0.819697,
		0.681697, -0.655958, 0.324049,
		35.274639, 33.512089, 27.841473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419178, 33.337582, 27.703289>,  <34.797451, 33.971260, 27.614639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419178, 33.337582, 27.703289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748302, 33.262215, 27.917759>,  <34.945778, 33.216995, 28.046440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748302, 33.262215, 27.917759>,  <34.419178, 33.337582, 27.703289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748302, 33.262215, 27.917759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543077, -0.538727, 0.644082,
		0.167494, -0.821140, -0.545596,
		0.822809, -0.188421, 0.536176,
		34.995144, 33.205688, 28.078611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392632, 32.675610, 27.914307>,  <34.419178, 33.337582, 27.703289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392632, 32.675610, 27.914307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657204, 32.816490, 28.179174>,  <34.815945, 32.901020, 28.338095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657204, 32.816490, 28.179174>,  <34.392632, 32.675610, 27.914307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657204, 32.816490, 28.179174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477613, -0.482927, 0.733940,
		0.578274, -0.801708, -0.151205,
		0.661427, 0.352201, 0.662170,
		34.855633, 32.922150, 28.377825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481762, 32.067852, 28.400869>,  <34.392632, 32.675610, 27.914307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481762, 32.067852, 28.400869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654705, 32.382225, 28.577675>,  <34.758472, 32.570850, 28.683758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654705, 32.382225, 28.577675>,  <34.481762, 32.067852, 28.400869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654705, 32.382225, 28.577675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328678, -0.319112, 0.888897,
		0.839666, -0.529601, 0.120348,
		0.432357, 0.785933, 0.442016,
		34.784412, 32.618004, 28.710279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930229, 31.727280, 29.011179>,  <34.481762, 32.067852, 28.400869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930229, 31.727280, 29.011179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864182, 32.115803, 29.079639>,  <34.824551, 32.348915, 29.120716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864182, 32.115803, 29.079639>,  <34.930229, 31.727280, 29.011179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864182, 32.115803, 29.079639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258186, -0.210053, 0.942984,
		0.951880, 0.111519, 0.285462,
		-0.165123, 0.971309, 0.171153,
		34.814644, 32.407196, 29.130985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028904, 31.899208, 29.774712>,  <34.930229, 31.727280, 29.011179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028904, 31.899208, 29.774712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794746, 32.193645, 29.638786>,  <34.654251, 32.370308, 29.557232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794746, 32.193645, 29.638786>,  <35.028904, 31.899208, 29.774712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794746, 32.193645, 29.638786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545197, -0.047196, 0.836978,
		0.600058, 0.675230, 0.428945,
		-0.585398, 0.736096, -0.339813,
		34.619125, 32.414474, 29.536842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968941, 32.450535, 30.250599>,  <35.028904, 31.899208, 29.774712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968941, 32.450535, 30.250599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652023, 32.516525, 30.015635>,  <34.461872, 32.556122, 29.874657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652023, 32.516525, 30.015635>,  <34.968941, 32.450535, 30.250599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652023, 32.516525, 30.015635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584376, 0.071623, 0.808316,
		0.175429, 0.983693, 0.039664,
		-0.792294, 0.164980, -0.587411,
		34.414333, 32.566021, 29.839411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621727, 32.867680, 30.678982>,  <34.968941, 32.450535, 30.250599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621727, 32.867680, 30.678982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368492, 32.748524, 30.393194>,  <34.216553, 32.677029, 30.221722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368492, 32.748524, 30.393194>,  <34.621727, 32.867680, 30.678982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368492, 32.748524, 30.393194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773646, 0.212540, 0.596908,
		-0.025961, 0.930639, -0.365018,
		-0.633086, -0.297891, -0.714467,
		34.178566, 32.659157, 30.178854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171207, 33.427547, 30.455780>,  <34.621727, 32.867680, 30.678982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171207, 33.427547, 30.455780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990360, 33.082253, 30.365973>,  <33.881851, 32.875076, 30.312088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990360, 33.082253, 30.365973>,  <34.171207, 33.427547, 30.455780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990360, 33.082253, 30.365973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834197, 0.320107, 0.449052,
		-0.315769, 0.390317, -0.864837,
		-0.452113, -0.863240, -0.224521,
		33.854725, 32.823280, 30.298616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555546, 33.668316, 30.127304>,  <34.171207, 33.427547, 30.455780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555546, 33.668316, 30.127304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524342, 33.305252, 30.292265>,  <33.505619, 33.087414, 30.391241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524342, 33.305252, 30.292265>,  <33.555546, 33.668316, 30.127304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524342, 33.305252, 30.292265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729103, 0.334071, 0.597332,
		-0.679944, -0.254084, -0.687836,
		-0.078014, -0.907655, 0.412403,
		33.500938, 33.032955, 30.415985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781429, 33.551079, 30.337500>,  <33.555546, 33.668316, 30.127304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781429, 33.551079, 30.337500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017799, 33.295071, 30.533941>,  <33.159622, 33.141464, 30.651806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017799, 33.295071, 30.533941>,  <32.781429, 33.551079, 30.337500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017799, 33.295071, 30.533941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650845, -0.018536, 0.758984,
		-0.476662, -0.768135, -0.427507,
		0.590927, -0.640019, 0.491102,
		33.195076, 33.103065, 30.681273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244160, 34.056141, 30.261600>,  <32.781429, 33.551079, 30.337500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244160, 34.056141, 30.261600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575615, 34.261246, 30.351435>,  <32.774487, 34.384308, 30.405336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575615, 34.261246, 30.351435>,  <32.244160, 34.056141, 30.261600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575615, 34.261246, 30.351435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054182, 0.325849, -0.943868,
		-0.557162, 0.794290, 0.242228,
		0.828634, 0.512763, 0.224587,
		32.824203, 34.415073, 30.418810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116600, 34.800900, 30.146019>,  <32.244160, 34.056141, 30.261600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116600, 34.800900, 30.146019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504555, 34.710201, 30.110470>,  <32.737328, 34.655781, 30.089140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504555, 34.710201, 30.110470>,  <32.116600, 34.800900, 30.146019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504555, 34.710201, 30.110470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038991, 0.504781, -0.862366,
		0.240401, 0.832936, 0.498423,
		0.969890, -0.226748, -0.088872,
		32.795521, 34.642178, 30.083809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403030, 35.445450, 30.021748>,  <32.116600, 34.800900, 30.146019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403030, 35.445450, 30.021748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677799, 35.188522, 29.885765>,  <32.842659, 35.034367, 29.804174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677799, 35.188522, 29.885765>,  <32.403030, 35.445450, 30.021748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677799, 35.188522, 29.885765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081718, 0.533090, -0.842103,
		0.722124, 0.550676, 0.418679,
		0.686920, -0.642316, -0.339957,
		32.883877, 34.995827, 29.783777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980309, 35.806423, 29.760292>,  <32.403030, 35.445450, 30.021748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980309, 35.806423, 29.760292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999016, 35.462242, 29.557343>,  <33.010239, 35.255733, 29.435572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999016, 35.462242, 29.557343>,  <32.980309, 35.806423, 29.760292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999016, 35.462242, 29.557343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136669, 0.508666, -0.850047,
		0.989512, -0.029589, 0.141387,
		0.046767, -0.860455, -0.507375,
		33.013046, 35.204105, 29.405130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642605, 35.830257, 29.393202>,  <32.980309, 35.806423, 29.760292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642605, 35.830257, 29.393202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413872, 35.576786, 29.184793>,  <33.276630, 35.424706, 29.059750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413872, 35.576786, 29.184793>,  <33.642605, 35.830257, 29.393202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413872, 35.576786, 29.184793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289642, 0.438255, -0.850906,
		0.767538, -0.637485, -0.067069,
		-0.571833, -0.633676, -0.521019,
		33.242321, 35.386684, 29.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127010, 35.354420, 28.967239>,  <33.642605, 35.830257, 29.393202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127010, 35.354420, 28.967239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762135, 35.381485, 28.805582>,  <33.543209, 35.397724, 28.708588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762135, 35.381485, 28.805582>,  <34.127010, 35.354420, 28.967239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762135, 35.381485, 28.805582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408012, 0.241237, -0.880529,
		0.037914, -0.968104, -0.247661,
		-0.912189, 0.067664, -0.404145,
		33.488480, 35.401783, 28.684338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303703, 35.027386, 28.266302>,  <34.127010, 35.354420, 28.967239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303703, 35.027386, 28.266302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944839, 35.189594, 28.196255>,  <33.729523, 35.286919, 28.154226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944839, 35.189594, 28.196255>,  <34.303703, 35.027386, 28.266302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944839, 35.189594, 28.196255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303008, 0.276536, -0.911983,
		-0.321398, -0.871254, -0.370971,
		-0.897156, 0.405517, -0.175119,
		33.675694, 35.311249, 28.143719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062538, 34.789341, 27.596409>,  <34.303703, 35.027386, 28.266302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062538, 34.789341, 27.596409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866146, 35.127602, 27.680128>,  <33.748310, 35.330559, 27.730360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866146, 35.127602, 27.680128>,  <34.062538, 34.789341, 27.596409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866146, 35.127602, 27.680128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231293, 0.358164, -0.904557,
		-0.839908, -0.395707, -0.371445,
		-0.490978, 0.845656, 0.209300,
		33.718853, 35.381298, 27.742918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816833, 34.979069, 26.995852>,  <34.062538, 34.789341, 27.596409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816833, 34.979069, 26.995852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787838, 35.319847, 27.203285>,  <33.770439, 35.524315, 27.327745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787838, 35.319847, 27.203285>,  <33.816833, 34.979069, 26.995852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787838, 35.319847, 27.203285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115005, 0.523622, -0.844153,
		-0.990717, -0.001552, -0.135935,
		-0.072489, 0.851949, 0.518583,
		33.766090, 35.575432, 27.358860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719231, 35.553711, 26.480358>,  <33.816833, 34.979069, 26.995852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719231, 35.553711, 26.480358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763161, 35.775940, 26.810030>,  <33.789516, 35.909279, 27.007833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763161, 35.775940, 26.810030>,  <33.719231, 35.553711, 26.480358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763161, 35.775940, 26.810030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398329, 0.735098, -0.548603,
		-0.910644, 0.388543, -0.140573,
		0.109821, 0.555577, 0.824181,
		33.796108, 35.942612, 27.057283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452759, 36.232910, 26.344898>,  <33.719231, 35.553711, 26.480358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452759, 36.232910, 26.344898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731274, 36.260136, 26.630711>,  <33.898380, 36.276470, 26.802198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731274, 36.260136, 26.630711>,  <33.452759, 36.232910, 26.344898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731274, 36.260136, 26.630711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466079, 0.714190, -0.522209,
		-0.545856, 0.696634, 0.465555,
		0.696284, 0.068065, 0.714532,
		33.940159, 36.280556, 26.845070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527279, 37.038483, 26.505562>,  <33.452759, 36.232910, 26.344898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527279, 37.038483, 26.505562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855011, 36.832024, 26.605400>,  <34.051651, 36.708149, 26.665302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855011, 36.832024, 26.605400>,  <33.527279, 37.038483, 26.505562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855011, 36.832024, 26.605400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569612, 0.683352, -0.456697,
		0.065161, 0.516356, 0.853891,
		0.819327, -0.516146, 0.249594,
		34.100807, 36.677181, 26.680279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896481, 37.547203, 26.760344>,  <33.527279, 37.038483, 26.505562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896481, 37.547203, 26.760344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163555, 37.257198, 26.692759>,  <34.323799, 37.083195, 26.652208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163555, 37.257198, 26.692759>,  <33.896481, 37.547203, 26.760344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163555, 37.257198, 26.692759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645570, 0.676924, -0.353573,
		0.370720, 0.126999, 0.920021,
		0.667687, -0.725014, -0.168963,
		34.363861, 37.039696, 26.642069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509544, 37.783550, 27.062469>,  <33.896481, 37.547203, 26.760344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509544, 37.783550, 27.062469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616688, 37.498276, 26.803360>,  <34.680973, 37.327110, 26.647894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616688, 37.498276, 26.803360>,  <34.509544, 37.783550, 27.062469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616688, 37.498276, 26.803360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651222, 0.629522, -0.423806,
		0.710042, -0.308322, 0.633070,
		0.267863, -0.713190, -0.647773,
		34.697048, 37.284317, 26.609028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225582, 37.775200, 27.131996>,  <34.509544, 37.783550, 27.062469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225582, 37.775200, 27.131996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175446, 37.600418, 26.775715>,  <35.145363, 37.495548, 26.561945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175446, 37.600418, 26.775715>,  <35.225582, 37.775200, 27.131996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175446, 37.600418, 26.775715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615163, 0.670136, -0.415322,
		0.778372, -0.599987, 0.184803,
		-0.125345, -0.436959, -0.890705,
		35.137840, 37.469330, 26.508503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920906, 37.505871, 26.789896>,  <35.225582, 37.775200, 27.131996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920906, 37.505871, 26.789896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666245, 37.568134, 26.487785>,  <35.513447, 37.605492, 26.306519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666245, 37.568134, 26.487785>,  <35.920906, 37.505871, 26.789896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666245, 37.568134, 26.487785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611893, 0.698040, -0.371923,
		0.469319, -0.698935, -0.539657,
		-0.636652, 0.155662, -0.755277,
		35.475250, 37.614834, 26.261202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336292, 37.439781, 26.127739>,  <35.920906, 37.505871, 26.789896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336292, 37.439781, 26.127739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011536, 37.649536, 26.025093>,  <35.816681, 37.775387, 25.963507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011536, 37.649536, 26.025093>,  <36.336292, 37.439781, 26.127739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011536, 37.649536, 26.025093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581870, 0.691074, -0.428771,
		-0.047501, -0.497432, -0.866201,
		-0.811894, 0.524383, -0.256614,
		35.767967, 37.806850, 25.948109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444084, 37.594131, 25.384676>,  <36.336292, 37.439781, 26.127739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444084, 37.594131, 25.384676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174728, 37.846149, 25.539381>,  <36.013115, 37.997360, 25.632204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174728, 37.846149, 25.539381>,  <36.444084, 37.594131, 25.384676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174728, 37.846149, 25.539381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471838, 0.769021, -0.431249,
		-0.569136, -0.107910, -0.815131,
		-0.673389, 0.630049, 0.386761,
		35.972710, 38.035164, 25.655409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306332, 38.012821, 24.798410>,  <36.444084, 37.594131, 25.384676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306332, 38.012821, 24.798410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148964, 38.243153, 25.085085>,  <36.054543, 38.381351, 25.257090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148964, 38.243153, 25.085085>,  <36.306332, 38.012821, 24.798410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148964, 38.243153, 25.085085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302896, 0.817210, -0.490329,
		-0.868031, 0.024177, -0.495922,
		-0.393417, 0.575833, 0.716686,
		36.030937, 38.415901, 25.300091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909878, 38.485222, 24.491299>,  <36.306332, 38.012821, 24.798410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909878, 38.485222, 24.491299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967049, 38.661514, 24.845774>,  <36.001350, 38.767288, 25.058458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967049, 38.661514, 24.845774>,  <35.909878, 38.485222, 24.491299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967049, 38.661514, 24.845774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099860, 0.884390, -0.455941,
		-0.984683, 0.153661, 0.082391,
		0.142926, 0.440730, 0.886188,
		36.009926, 38.793732, 25.111629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357712, 39.021381, 24.572241>,  <35.909878, 38.485222, 24.491299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357712, 39.021381, 24.572241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677208, 39.092113, 24.802282>,  <35.868904, 39.134552, 24.940308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677208, 39.092113, 24.802282>,  <35.357712, 39.021381, 24.572241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677208, 39.092113, 24.802282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179636, 0.842159, -0.508428,
		-0.574235, 0.509411, 0.640901,
		0.798740, 0.176828, 0.575106,
		35.916828, 39.145161, 24.974813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270542, 39.700214, 24.566643>,  <35.357712, 39.021381, 24.572241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270542, 39.700214, 24.566643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646675, 39.620449, 24.676926>,  <35.872353, 39.572590, 24.743095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646675, 39.620449, 24.676926>,  <35.270542, 39.700214, 24.566643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646675, 39.620449, 24.676926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339137, 0.615235, -0.711669,
		-0.027706, 0.762705, 0.646153,
		0.940329, -0.199417, 0.275707,
		35.928772, 39.560623, 24.759638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548214, 40.359089, 24.544998>,  <35.270542, 39.700214, 24.566643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548214, 40.359089, 24.544998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869453, 40.121651, 24.565647>,  <36.062199, 39.979187, 24.578037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869453, 40.121651, 24.565647>,  <35.548214, 40.359089, 24.544998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869453, 40.121651, 24.565647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535505, 0.681077, -0.499369,
		0.261266, 0.428689, 0.864850,
		0.803103, -0.593599, 0.051623,
		36.110386, 39.943569, 24.581135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181992, 40.738232, 24.715282>,  <35.548214, 40.359089, 24.544998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181992, 40.738232, 24.715282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333263, 40.409969, 24.543932>,  <36.424026, 40.213013, 24.441122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333263, 40.409969, 24.543932>,  <36.181992, 40.738232, 24.715282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333263, 40.409969, 24.543932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479594, 0.569488, -0.667588,
		0.791813, 0.047024, 0.608951,
		0.378182, -0.820654, -0.428375,
		36.446716, 40.163773, 24.415419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914036, 40.746773, 24.793423>,  <36.181992, 40.738232, 24.715282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914036, 40.746773, 24.793423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835400, 40.511078, 24.479952>,  <36.788216, 40.369659, 24.291868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835400, 40.511078, 24.479952>,  <36.914036, 40.746773, 24.793423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835400, 40.511078, 24.479952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527421, 0.610234, -0.591136,
		0.826545, -0.529543, 0.190807,
		-0.196595, -0.589236, -0.783678,
		36.776421, 40.334309, 24.244848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470608, 40.791351, 24.451649>,  <36.914036, 40.746773, 24.793423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470608, 40.791351, 24.451649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213032, 40.675472, 24.168406>,  <37.058487, 40.605946, 23.998459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213032, 40.675472, 24.168406>,  <37.470608, 40.791351, 24.451649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213032, 40.675472, 24.168406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500948, 0.539900, -0.676432,
		0.578271, -0.790305, -0.202537,
		-0.643937, -0.289700, -0.708110,
		37.019852, 40.588562, 23.955973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875294, 40.575256, 23.876167>,  <37.470608, 40.791351, 24.451649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875294, 40.575256, 23.876167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514938, 40.633518, 23.712618>,  <37.298725, 40.668476, 23.614489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514938, 40.633518, 23.712618>,  <37.875294, 40.575256, 23.876167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514938, 40.633518, 23.712618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412180, 0.582295, -0.700743,
		0.136014, -0.799822, -0.584623,
		-0.900893, 0.145659, -0.408871,
		37.244671, 40.677216, 23.589956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563213, 40.263897, 23.907881>,  <37.875294, 40.575256, 23.876167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563213, 40.263897, 23.907881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812065, 40.486347, 24.128309>,  <38.961376, 40.619816, 24.260567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812065, 40.486347, 24.128309>,  <38.563213, 40.263897, 23.907881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812065, 40.486347, 24.128309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362887, -0.418862, 0.832387,
		0.693731, -0.717832, -0.058779,
		0.622134, 0.556123, 0.551069,
		38.998707, 40.653183, 24.293631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934429, 39.802063, 24.293690>,  <38.563213, 40.263897, 23.907881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934429, 39.802063, 24.293690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960861, 40.146030, 24.496143>,  <38.976719, 40.352413, 24.617615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960861, 40.146030, 24.496143>,  <38.934429, 39.802063, 24.293690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960861, 40.146030, 24.496143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224728, -0.481384, 0.847211,
		0.972179, -0.169722, 0.161441,
		0.066075, 0.859921, 0.506132,
		38.980682, 40.404007, 24.647984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277622, 39.557278, 24.879930>,  <38.934429, 39.802063, 24.293690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277622, 39.557278, 24.879930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099598, 39.910313, 24.940527>,  <38.992783, 40.122135, 24.976885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099598, 39.910313, 24.940527>,  <39.277622, 39.557278, 24.879930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099598, 39.910313, 24.940527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305800, -0.308792, 0.900630,
		0.841667, 0.354513, 0.407329,
		-0.445065, 0.882591, 0.151490,
		38.966080, 40.175091, 24.985973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371719, 39.536793, 25.536657>,  <39.277622, 39.557278, 24.879930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371719, 39.536793, 25.536657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.090687, 39.816555, 25.484171>,  <38.922070, 39.984413, 25.452679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.090687, 39.816555, 25.484171>,  <39.371719, 39.536793, 25.536657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090687, 39.816555, 25.484171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297085, -0.120730, 0.947188,
		0.646626, 0.704455, 0.292605,
		-0.702578, 0.699405, -0.131216,
		38.879913, 40.026375, 25.444807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492573, 39.981003, 26.073751>,  <39.371719, 39.536793, 25.536657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492573, 39.981003, 26.073751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115414, 39.995159, 25.941269>,  <38.889118, 40.003651, 25.861780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115414, 39.995159, 25.941269>,  <39.492573, 39.981003, 26.073751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115414, 39.995159, 25.941269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325935, -0.303018, 0.895514,
		-0.068670, 0.952327, 0.297248,
		-0.942895, 0.035389, -0.331205,
		38.832546, 40.005775, 25.841908>
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
